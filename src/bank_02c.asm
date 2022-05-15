; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

    inc l                                         ; $4000: $2c
    nop                                           ; $4001: $00
    and a                                         ; $4002: $a7
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    or l                                          ; $4005: $b5
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    jp nz, $0024                                  ; $4008: $c2 $24 $00

    db $dd                                        ; $400b: $dd
    inc h                                         ; $400c: $24
    nop                                           ; $400d: $00
    pop hl                                        ; $400e: $e1
    inc h                                         ; $400f: $24
    nop                                           ; $4010: $00
    push hl                                       ; $4011: $e5
    inc h                                         ; $4012: $24
    nop                                           ; $4013: $00
    ld [$0024], a                                 ; $4014: $ea $24 $00
    xor $24                                       ; $4017: $ee $24
    nop                                           ; $4019: $00
    ld a, [$0024]                                 ; $401a: $fa $24 $00
    ld b, $25                                     ; $401d: $06 $25
    nop                                           ; $401f: $00
    rrca                                          ; $4020: $0f
    dec h                                         ; $4021: $25
    nop                                           ; $4022: $00
    jr jr_02c_404a                                ; $4023: $18 $25

    nop                                           ; $4025: $00
    ld [hl+], a                                   ; $4026: $22
    dec h                                         ; $4027: $25
    nop                                           ; $4028: $00
    dec l                                         ; $4029: $2d
    dec h                                         ; $402a: $25
    nop                                           ; $402b: $00
    jr c, jr_02c_4053                             ; $402c: $38 $25

    nop                                           ; $402e: $00
    ld b, e                                       ; $402f: $43
    dec h                                         ; $4030: $25
    nop                                           ; $4031: $00
    ld c, a                                       ; $4032: $4f
    dec h                                         ; $4033: $25
    nop                                           ; $4034: $00
    ld e, e                                       ; $4035: $5b
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld h, a                                       ; $4038: $67
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    ld [hl], b                                    ; $403b: $70
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    ld a, c                                       ; $403e: $79
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    add e                                         ; $4041: $83
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    sub b                                         ; $4044: $90
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    sbc l                                         ; $4047: $9d
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00

jr_02c_404a:
    xor c                                         ; $404a: $a9
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    or l                                          ; $404d: $b5
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00
    pop bc                                        ; $4050: $c1
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00

jr_02c_4053:
    sub $25                                       ; $4053: $d6 $25
    nop                                           ; $4055: $00
    rst $30                                       ; $4056: $f7
    dec h                                         ; $4057: $25
    nop                                           ; $4058: $00
    ld [$0026], sp                                ; $4059: $08 $26 $00
    ld [hl+], a                                   ; $405c: $22
    ld h, $00                                     ; $405d: $26 $00
    add hl, sp                                    ; $405f: $39
    ld h, $00                                     ; $4060: $26 $00
    xor d                                         ; $4062: $aa
    ld h, $00                                     ; $4063: $26 $00
    ld a, [c]                                     ; $4065: $f2
    ld h, $00                                     ; $4066: $26 $00
    dec c                                         ; $4068: $0d
    daa                                           ; $4069: $27
    nop                                           ; $406a: $00
    inc hl                                        ; $406b: $23
    daa                                           ; $406c: $27
    nop                                           ; $406d: $00
    ld a, $27                                     ; $406e: $3e $27
    nop                                           ; $4070: $00
    ld e, c                                       ; $4071: $59
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    ld l, a                                       ; $4074: $6f
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    and e                                         ; $4077: $a3
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    jp nz, Jump_000_0027                          ; $407a: $c2 $27 $00

    db $eb                                        ; $407d: $eb
    daa                                           ; $407e: $27
    nop                                           ; $407f: $00
    ld [$0028], sp                                ; $4080: $08 $28 $00
    ld hl, $0028                                  ; $4083: $21 $28 $00
    dec l                                         ; $4086: $2d
    jr z, jr_02c_4089                             ; $4087: $28 $00

jr_02c_4089:
    ld c, c                                       ; $4089: $49
    jr z, jr_02c_408c                             ; $408a: $28 $00

jr_02c_408c:
    ld l, h                                       ; $408c: $6c
    jr z, jr_02c_408f                             ; $408d: $28 $00

jr_02c_408f:
    ld a, a                                       ; $408f: $7f
    jr z, jr_02c_4092                             ; $4090: $28 $00

jr_02c_4092:
    and a                                         ; $4092: $a7
    jr z, jr_02c_4095                             ; $4093: $28 $00

jr_02c_4095:
    jp RST_28                                     ; $4095: $c3 $28 $00


    reti                                          ; $4098: $d9


    jr z, jr_02c_409b                             ; $4099: $28 $00

jr_02c_409b:
    db $e3                                        ; $409b: $e3
    jr z, jr_02c_409e                             ; $409c: $28 $00

jr_02c_409e:
    push af                                       ; $409e: $f5
    jr z, jr_02c_40a1                             ; $409f: $28 $00

jr_02c_40a1:
    add hl, bc                                    ; $40a1: $09
    add hl, hl                                    ; $40a2: $29
    nop                                           ; $40a3: $00
    dec l                                         ; $40a4: $2d
    add hl, hl                                    ; $40a5: $29
    nop                                           ; $40a6: $00
    ld l, l                                       ; $40a7: $6d
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    sub d                                         ; $40aa: $92
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    xor a                                         ; $40ad: $af
    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    call nc, Call_000_0029                        ; $40b0: $d4 $29 $00
    push af                                       ; $40b3: $f5
    add hl, hl                                    ; $40b4: $29
    nop                                           ; $40b5: $00
    ld e, $2a                                     ; $40b6: $1e $2a
    nop                                           ; $40b8: $00
    dec a                                         ; $40b9: $3d
    ld a, [hl+]                                   ; $40ba: $2a
    nop                                           ; $40bb: $00
    ld c, [hl]                                    ; $40bc: $4e
    ld a, [hl+]                                   ; $40bd: $2a
    nop                                           ; $40be: $00
    ld a, [hl]                                    ; $40bf: $7e
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    sub e                                         ; $40c2: $93
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    jp nc, $002a                                  ; $40c5: $d2 $2a $00

    pop af                                        ; $40c8: $f1
    ld a, [hl+]                                   ; $40c9: $2a
    nop                                           ; $40ca: $00
    ld h, h                                       ; $40cb: $64
    dec hl                                        ; $40cc: $2b
    nop                                           ; $40cd: $00
    ld a, d                                       ; $40ce: $7a
    dec hl                                        ; $40cf: $2b
    nop                                           ; $40d0: $00
    xor l                                         ; $40d1: $ad
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    cp d                                          ; $40d4: $ba
    dec hl                                        ; $40d5: $2b
    nop                                           ; $40d6: $00
    sra e                                         ; $40d7: $cb $2b
    nop                                           ; $40d9: $00
    db $dd                                        ; $40da: $dd
    dec hl                                        ; $40db: $2b
    nop                                           ; $40dc: $00
    inc d                                         ; $40dd: $14
    inc l                                         ; $40de: $2c
    nop                                           ; $40df: $00
    dec hl                                        ; $40e0: $2b
    inc l                                         ; $40e1: $2c
    nop                                           ; $40e2: $00
    inc sp                                        ; $40e3: $33
    inc l                                         ; $40e4: $2c
    nop                                           ; $40e5: $00
    ld a, [hl-]                                   ; $40e6: $3a
    inc l                                         ; $40e7: $2c
    nop                                           ; $40e8: $00
    ccf                                           ; $40e9: $3f
    inc l                                         ; $40ea: $2c
    nop                                           ; $40eb: $00
    ld l, e                                       ; $40ec: $6b
    inc l                                         ; $40ed: $2c
    nop                                           ; $40ee: $00
    sbc l                                         ; $40ef: $9d
    inc l                                         ; $40f0: $2c
    nop                                           ; $40f1: $00
    cp d                                          ; $40f2: $ba
    inc l                                         ; $40f3: $2c
    nop                                           ; $40f4: $00
    ld de, $002d                                  ; $40f5: $11 $2d $00
    dec a                                         ; $40f8: $3d
    dec l                                         ; $40f9: $2d
    nop                                           ; $40fa: $00
    ld [hl], d                                    ; $40fb: $72
    dec l                                         ; $40fc: $2d
    nop                                           ; $40fd: $00
    sbc [hl]                                      ; $40fe: $9e
    dec l                                         ; $40ff: $2d
    nop                                           ; $4100: $00
    jp nz, $002d                                  ; $4101: $c2 $2d $00

    inc c                                         ; $4104: $0c
    ld l, $00                                     ; $4105: $2e $00
    rla                                           ; $4107: $17
    ld l, $00                                     ; $4108: $2e $00
    dec [hl]                                      ; $410a: $35
    ld l, $00                                     ; $410b: $2e $00
    ld c, e                                       ; $410d: $4b
    ld l, $00                                     ; $410e: $2e $00
    ld l, l                                       ; $4110: $6d
    ld l, $00                                     ; $4111: $2e $00
    add c                                         ; $4113: $81
    ld l, $00                                     ; $4114: $2e $00
    or [hl]                                       ; $4116: $b6
    ld l, $00                                     ; $4117: $2e $00
    cp $2e                                        ; $4119: $fe $2e
    nop                                           ; $411b: $00
    ld hl, $002f                                  ; $411c: $21 $2f $00
    ld e, [hl]                                    ; $411f: $5e
    cpl                                           ; $4120: $2f
    nop                                           ; $4121: $00
    call nz, $002f                                ; $4122: $c4 $2f $00
    push de                                       ; $4125: $d5
    cpl                                           ; $4126: $2f
    nop                                           ; $4127: $00
    jr nc, jr_02c_415a                            ; $4128: $30 $30

    nop                                           ; $412a: $00
    ld b, h                                       ; $412b: $44
    jr nc, jr_02c_412e                            ; $412c: $30 $00

jr_02c_412e:
    ld l, e                                       ; $412e: $6b
    jr nc, jr_02c_4131                            ; $412f: $30 $00

jr_02c_4131:
    adc h                                         ; $4131: $8c
    jr nc, jr_02c_4134                            ; $4132: $30 $00

jr_02c_4134:
    sub e                                         ; $4134: $93
    jr nc, jr_02c_4137                            ; $4135: $30 $00

jr_02c_4137:
    call nz, RST_30                               ; $4137: $c4 $30 $00
    ld hl, sp+$30                                 ; $413a: $f8 $30
    nop                                           ; $413c: $00
    ei                                            ; $413d: $fb
    jr nc, jr_02c_4140                            ; $413e: $30 $00

jr_02c_4140:
    inc e                                         ; $4140: $1c
    ld sp, $4600                                  ; $4141: $31 $00 $46
    ld sp, $5500                                  ; $4144: $31 $00 $55
    ld sp, $6c00                                  ; $4147: $31 $00 $6c
    ld sp, $8300                                  ; $414a: $31 $00 $83
    ld sp, $ac00                                  ; $414d: $31 $00 $ac
    ld sp, $c300                                  ; $4150: $31 $00 $c3
    ld sp, $2600                                  ; $4153: $31 $00 $26
    ld [hl-], a                                   ; $4156: $32
    nop                                           ; $4157: $00
    ld c, h                                       ; $4158: $4c
    ld [hl-], a                                   ; $4159: $32

jr_02c_415a:
    nop                                           ; $415a: $00
    ld e, c                                       ; $415b: $59
    ld [hl-], a                                   ; $415c: $32

Jump_02c_415d:
    nop                                           ; $415d: $00
    add a                                         ; $415e: $87
    ld [hl-], a                                   ; $415f: $32
    nop                                           ; $4160: $00
    sub h                                         ; $4161: $94
    ld [hl-], a                                   ; $4162: $32
    nop                                           ; $4163: $00
    rst $18                                       ; $4164: $df
    ld [hl-], a                                   ; $4165: $32
    nop                                           ; $4166: $00
    dec b                                         ; $4167: $05
    inc sp                                        ; $4168: $33
    nop                                           ; $4169: $00
    inc e                                         ; $416a: $1c
    inc sp                                        ; $416b: $33
    nop                                           ; $416c: $00
    ld b, b                                       ; $416d: $40
    inc sp                                        ; $416e: $33
    nop                                           ; $416f: $00
    ld h, b                                       ; $4170: $60
    inc sp                                        ; $4171: $33
    nop                                           ; $4172: $00
    add a                                         ; $4173: $87
    inc sp                                        ; $4174: $33
    nop                                           ; $4175: $00
    and c                                         ; $4176: $a1
    inc sp                                        ; $4177: $33
    nop                                           ; $4178: $00
    ret z                                         ; $4179: $c8

    inc sp                                        ; $417a: $33
    nop                                           ; $417b: $00
    call nc, $0033                                ; $417c: $d4 $33 $00
    add sp, $33                                   ; $417f: $e8 $33
    nop                                           ; $4181: $00
    xor $33                                       ; $4182: $ee $33
    nop                                           ; $4184: $00
    ld hl, sp+$33                                 ; $4185: $f8 $33
    nop                                           ; $4187: $00
    inc bc                                        ; $4188: $03
    inc [hl]                                      ; $4189: $34
    nop                                           ; $418a: $00
    dec c                                         ; $418b: $0d
    inc [hl]                                      ; $418c: $34
    nop                                           ; $418d: $00
    dec de                                        ; $418e: $1b
    inc [hl]                                      ; $418f: $34
    nop                                           ; $4190: $00
    jr z, jr_02c_41c7                             ; $4191: $28 $34

    nop                                           ; $4193: $00
    ld [hl], $34                                  ; $4194: $36 $34
    nop                                           ; $4196: $00
    ld a, $34                                     ; $4197: $3e $34
    nop                                           ; $4199: $00
    ld c, d                                       ; $419a: $4a
    inc [hl]                                      ; $419b: $34
    nop                                           ; $419c: $00
    ld l, [hl]                                    ; $419d: $6e
    inc [hl]                                      ; $419e: $34
    nop                                           ; $419f: $00
    or d                                          ; $41a0: $b2
    inc [hl]                                      ; $41a1: $34
    nop                                           ; $41a2: $00
    jp c, Jump_000_0034                           ; $41a3: $da $34 $00

    pop af                                        ; $41a6: $f1
    inc [hl]                                      ; $41a7: $34
    nop                                           ; $41a8: $00
    ld b, $35                                     ; $41a9: $06 $35
    nop                                           ; $41ab: $00
    ld a, [de]                                    ; $41ac: $1a
    dec [hl]                                      ; $41ad: $35
    nop                                           ; $41ae: $00
    ld [hl], $35                                  ; $41af: $36 $35
    nop                                           ; $41b1: $00
    ld e, l                                       ; $41b2: $5d
    dec [hl]                                      ; $41b3: $35
    nop                                           ; $41b4: $00
    ld a, h                                       ; $41b5: $7c
    dec [hl]                                      ; $41b6: $35
    nop                                           ; $41b7: $00
    cp b                                          ; $41b8: $b8
    dec [hl]                                      ; $41b9: $35
    nop                                           ; $41ba: $00
    cp [hl]                                       ; $41bb: $be
    dec [hl]                                      ; $41bc: $35
    nop                                           ; $41bd: $00
    db $d3                                        ; $41be: $d3
    dec [hl]                                      ; $41bf: $35
    nop                                           ; $41c0: $00
    inc c                                         ; $41c1: $0c
    ld [hl], $00                                  ; $41c2: $36 $00
    dec hl                                        ; $41c4: $2b
    ld [hl], $00                                  ; $41c5: $36 $00

jr_02c_41c7:
    ld d, a                                       ; $41c7: $57
    ld [hl], $00                                  ; $41c8: $36 $00
    ld [hl], b                                    ; $41ca: $70
    ld [hl], $00                                  ; $41cb: $36 $00
    adc c                                         ; $41cd: $89
    ld [hl], $00                                  ; $41ce: $36 $00
    sbc l                                         ; $41d0: $9d
    ld [hl], $00                                  ; $41d1: $36 $00
    cp d                                          ; $41d3: $ba
    ld [hl], $00                                  ; $41d4: $36 $00
    jp $0036                                      ; $41d6: $c3 $36 $00


    db $e4                                        ; $41d9: $e4
    ld [hl], $00                                  ; $41da: $36 $00
    db $fd                                        ; $41dc: $fd
    ld [hl], $00                                  ; $41dd: $36 $00
    ld b, $37                                     ; $41df: $06 $37
    nop                                           ; $41e1: $00
    jr nz, jr_02c_421b                            ; $41e2: $20 $37

    nop                                           ; $41e4: $00
    inc a                                         ; $41e5: $3c
    scf                                           ; $41e6: $37
    nop                                           ; $41e7: $00
    ld d, l                                       ; $41e8: $55
    scf                                           ; $41e9: $37
    nop                                           ; $41ea: $00
    adc a                                         ; $41eb: $8f
    scf                                           ; $41ec: $37
    nop                                           ; $41ed: $00
    cp [hl]                                       ; $41ee: $be
    scf                                           ; $41ef: $37
    nop                                           ; $41f0: $00
    db $eb                                        ; $41f1: $eb
    scf                                           ; $41f2: $37
    nop                                           ; $41f3: $00
    ld [de], a                                    ; $41f4: $12
    jr c, jr_02c_41f7                             ; $41f5: $38 $00

jr_02c_41f7:
    inc l                                         ; $41f7: $2c
    jr c, jr_02c_41fa                             ; $41f8: $38 $00

jr_02c_41fa:
    ld c, d                                       ; $41fa: $4a
    jr c, jr_02c_41fd                             ; $41fb: $38 $00

jr_02c_41fd:
    ld e, [hl]                                    ; $41fd: $5e
    jr c, jr_02c_4200                             ; $41fe: $38 $00

jr_02c_4200:
    ld [hl], l                                    ; $4200: $75
    jr c, jr_02c_4203                             ; $4201: $38 $00

jr_02c_4203:
    adc l                                         ; $4203: $8d
    jr c, jr_02c_4206                             ; $4204: $38 $00

jr_02c_4206:
    or b                                          ; $4206: $b0
    jr c, jr_02c_4209                             ; $4207: $38 $00

jr_02c_4209:
    call nz, $0038                                ; $4209: $c4 $38 $00
    rst $20                                       ; $420c: $e7
    jr c, jr_02c_420f                             ; $420d: $38 $00

jr_02c_420f:
    di                                            ; $420f: $f3
    jr c, jr_02c_4212                             ; $4210: $38 $00

jr_02c_4212:
    dec bc                                        ; $4212: $0b
    add hl, sp                                    ; $4213: $39
    nop                                           ; $4214: $00
    daa                                           ; $4215: $27
    add hl, sp                                    ; $4216: $39
    nop                                           ; $4217: $00
    ld [hl], $39                                  ; $4218: $36 $39
    nop                                           ; $421a: $00

jr_02c_421b:
    ld c, c                                       ; $421b: $49
    add hl, sp                                    ; $421c: $39
    nop                                           ; $421d: $00
    ld e, c                                       ; $421e: $59
    add hl, sp                                    ; $421f: $39
    nop                                           ; $4220: $00
    ld a, d                                       ; $4221: $7a
    add hl, sp                                    ; $4222: $39
    nop                                           ; $4223: $00
    or [hl]                                       ; $4224: $b6
    add hl, sp                                    ; $4225: $39
    nop                                           ; $4226: $00
    rst $08                                       ; $4227: $cf
    add hl, sp                                    ; $4228: $39
    nop                                           ; $4229: $00
    push af                                       ; $422a: $f5
    add hl, sp                                    ; $422b: $39
    nop                                           ; $422c: $00
    rlca                                          ; $422d: $07
    ld a, [hl-]                                   ; $422e: $3a
    nop                                           ; $422f: $00
    jr nz, jr_02c_426c                            ; $4230: $20 $3a

    nop                                           ; $4232: $00
    ld [hl-], a                                   ; $4233: $32
    ld a, [hl-]                                   ; $4234: $3a
    nop                                           ; $4235: $00
    ld c, a                                       ; $4236: $4f
    ld a, [hl-]                                   ; $4237: $3a
    nop                                           ; $4238: $00
    ld h, e                                       ; $4239: $63
    ld a, [hl-]                                   ; $423a: $3a
    nop                                           ; $423b: $00
    ld a, h                                       ; $423c: $7c
    ld a, [hl-]                                   ; $423d: $3a
    nop                                           ; $423e: $00
    adc h                                         ; $423f: $8c
    ld a, [hl-]                                   ; $4240: $3a
    nop                                           ; $4241: $00
    cp e                                          ; $4242: $bb
    ld a, [hl-]                                   ; $4243: $3a
    nop                                           ; $4244: $00
    call Call_000_003a                            ; $4245: $cd $3a $00
    rst $20                                       ; $4248: $e7
    ld a, [hl-]                                   ; $4249: $3a
    nop                                           ; $424a: $00
    ld a, [hl+]                                   ; $424b: $2a
    dec sp                                        ; $424c: $3b
    nop                                           ; $424d: $00
    ld a, $3b                                     ; $424e: $3e $3b
    nop                                           ; $4250: $00
    ld e, e                                       ; $4251: $5b
    dec sp                                        ; $4252: $3b
    nop                                           ; $4253: $00
    ld l, l                                       ; $4254: $6d
    dec sp                                        ; $4255: $3b
    nop                                           ; $4256: $00
    ld [hl], a                                    ; $4257: $77
    dec sp                                        ; $4258: $3b
    nop                                           ; $4259: $00
    sbc e                                         ; $425a: $9b
    dec sp                                        ; $425b: $3b
    nop                                           ; $425c: $00
    jp c, Jump_000_003b                           ; $425d: $da $3b $00

    jp hl                                         ; $4260: $e9


    dec sp                                        ; $4261: $3b
    nop                                           ; $4262: $00
    ld h, $3c                                     ; $4263: $26 $3c
    nop                                           ; $4265: $00
    dec a                                         ; $4266: $3d
    inc a                                         ; $4267: $3c
    nop                                           ; $4268: $00
    add b                                         ; $4269: $80
    inc a                                         ; $426a: $3c
    nop                                           ; $426b: $00

jr_02c_426c:
    and a                                         ; $426c: $a7
    inc a                                         ; $426d: $3c
    nop                                           ; $426e: $00
    or d                                          ; $426f: $b2
    inc a                                         ; $4270: $3c
    nop                                           ; $4271: $00
    jp c, Jump_000_003c                           ; $4272: $da $3c $00

    ld b, $3d                                     ; $4275: $06 $3d
    nop                                           ; $4277: $00
    ld a, [bc]                                    ; $4278: $0a
    dec a                                         ; $4279: $3d
    nop                                           ; $427a: $00
    ld a, [hl+]                                   ; $427b: $2a
    dec a                                         ; $427c: $3d
    nop                                           ; $427d: $00
    ld [hl], $3d                                  ; $427e: $36 $3d
    nop                                           ; $4280: $00
    ld d, b                                       ; $4281: $50
    dec a                                         ; $4282: $3d
    nop                                           ; $4283: $00
    ld e, c                                       ; $4284: $59
    dec a                                         ; $4285: $3d
    nop                                           ; $4286: $00
    ld h, e                                       ; $4287: $63
    dec a                                         ; $4288: $3d
    nop                                           ; $4289: $00
    cp $3d                                        ; $428a: $fe $3d
    nop                                           ; $428c: $00
    inc sp                                        ; $428d: $33
    ld a, $00                                     ; $428e: $3e $00
    ld [hl], d                                    ; $4290: $72
    ld a, $00                                     ; $4291: $3e $00
    adc d                                         ; $4293: $8a
    ld a, $00                                     ; $4294: $3e $00
    or a                                          ; $4296: $b7
    ld a, $00                                     ; $4297: $3e $00
    rst $28                                       ; $4299: $ef
    ld a, $00                                     ; $429a: $3e $00
    ld c, $3f                                     ; $429c: $0e $3f
    nop                                           ; $429e: $00
    sub b                                         ; $429f: $90
    ccf                                           ; $42a0: $3f
    nop                                           ; $42a1: $00
    call $013f                                    ; $42a2: $cd $3f $01
    ld bc, $0100                                  ; $42a5: $01 $00 $01
    ld [hl+], a                                   ; $42a8: $22
    nop                                           ; $42a9: $00
    ld bc, $006e                                  ; $42aa: $01 $6e $00
    ld bc, $0098                                  ; $42ad: $01 $98 $00
    ld bc, $00e7                                  ; $42b0: $01 $e7 $00
    ld bc, $00fc                                  ; $42b3: $01 $fc $00
    ld bc, $0114                                  ; $42b6: $01 $14 $01
    ld bc, $0133                                  ; $42b9: $01 $33 $01
    ld bc, $0153                                  ; $42bc: $01 $53 $01
    ld bc, $017e                                  ; $42bf: $01 $7e $01
    ld bc, $01a8                                  ; $42c2: $01 $a8 $01
    ld bc, $01c1                                  ; $42c5: $01 $c1 $01
    ld bc, $01c5                                  ; $42c8: $01 $c5 $01
    ld bc, $01e9                                  ; $42cb: $01 $e9 $01
    ld bc, $01f1                                  ; $42ce: $01 $f1 $01
    ld bc, $01fa                                  ; $42d1: $01 $fa $01
    ld bc, $0237                                  ; $42d4: $01 $37 $02
    ld bc, $024c                                  ; $42d7: $01 $4c $02
    ld bc, $0278                                  ; $42da: $01 $78 $02
    ld bc, $0287                                  ; $42dd: $01 $87 $02
    ld bc, $02b5                                  ; $42e0: $01 $b5 $02
    ld bc, $02bd                                  ; $42e3: $01 $bd $02
    ld bc, $02dc                                  ; $42e6: $01 $dc $02
    ld bc, $02ed                                  ; $42e9: $01 $ed $02
    ld bc, $0328                                  ; $42ec: $01 $28 $03
    ld bc, $0362                                  ; $42ef: $01 $62 $03
    ld bc, $037f                                  ; $42f2: $01 $7f $03
    ld bc, $038c                                  ; $42f5: $01 $8c $03
    ld bc, $03a0                                  ; $42f8: $01 $a0 $03
    ld bc, $03bb                                  ; $42fb: $01 $bb $03
    ld bc, $03d3                                  ; $42fe: $01 $d3 $03
    ld bc, $03f0                                  ; $4301: $01 $f0 $03
    ld bc, $041b                                  ; $4304: $01 $1b $04
    ld bc, $0427                                  ; $4307: $01 $27 $04
    ld bc, $04ad                                  ; $430a: $01 $ad $04
    ld bc, $04b7                                  ; $430d: $01 $b7 $04
    ld bc, $04d0                                  ; $4310: $01 $d0 $04
    ld bc, $04e4                                  ; $4313: $01 $e4 $04
    ld bc, $04ff                                  ; $4316: $01 $ff $04
    ld bc, $0512                                  ; $4319: $01 $12 $05
    ld bc, $053a                                  ; $431c: $01 $3a $05
    ld bc, $054f                                  ; $431f: $01 $4f $05
    ld bc, $0563                                  ; $4322: $01 $63 $05
    ld bc, $05d3                                  ; $4325: $01 $d3 $05
    ld bc, $05ea                                  ; $4328: $01 $ea $05
    ld bc, $0609                                  ; $432b: $01 $09 $06
    ld bc, $0635                                  ; $432e: $01 $35 $06
    ld bc, $064e                                  ; $4331: $01 $4e $06
    ld bc, $067c                                  ; $4334: $01 $7c $06
    ld bc, $068e                                  ; $4337: $01 $8e $06
    ld bc, $06b7                                  ; $433a: $01 $b7 $06
    ld bc, $06d4                                  ; $433d: $01 $d4 $06
    ld bc, $06f8                                  ; $4340: $01 $f8 $06
    ld bc, $0712                                  ; $4343: $01 $12 $07
    ld bc, $0737                                  ; $4346: $01 $37 $07
    ld bc, $07f1                                  ; $4349: $01 $f1 $07
    ld bc, $0805                                  ; $434c: $01 $05 $08
    ld bc, $0862                                  ; $434f: $01 $62 $08
    ld bc, $087d                                  ; $4352: $01 $7d $08
    ld bc, $0897                                  ; $4355: $01 $97 $08
    ld bc, $08ab                                  ; $4358: $01 $ab $08
    ld bc, $0905                                  ; $435b: $01 $05 $09
    ld bc, $0964                                  ; $435e: $01 $64 $09
    ld bc, $0988                                  ; $4361: $01 $88 $09
    ld bc, $099d                                  ; $4364: $01 $9d $09
    ld bc, $09b1                                  ; $4367: $01 $b1 $09
    ld bc, $09c4                                  ; $436a: $01 $c4 $09
    ld bc, $09db                                  ; $436d: $01 $db $09
    ld bc, $09ee                                  ; $4370: $01 $ee $09
    ld bc, $0a01                                  ; $4373: $01 $01 $0a
    ld bc, $0a14                                  ; $4376: $01 $14 $0a
    ld bc, $0a22                                  ; $4379: $01 $22 $0a
    ld bc, $0a2d                                  ; $437c: $01 $2d $0a
    ld bc, $0a39                                  ; $437f: $01 $39 $0a
    ld bc, $0a4e                                  ; $4382: $01 $4e $0a
    ld bc, $0a6f                                  ; $4385: $01 $6f $0a
    ld bc, $0aa2                                  ; $4388: $01 $a2 $0a
    ld bc, $0acd                                  ; $438b: $01 $cd $0a
    ld bc, $0adb                                  ; $438e: $01 $db $0a
    ld bc, $0afd                                  ; $4391: $01 $fd $0a
    ld bc, $0b2c                                  ; $4394: $01 $2c $0b
    ld bc, $0b4b                                  ; $4397: $01 $4b $0b
    ld bc, $0b62                                  ; $439a: $01 $62 $0b
    ld bc, $0b75                                  ; $439d: $01 $75 $0b
    ld bc, $0b88                                  ; $43a0: $01 $88 $0b
    ld bc, $0b9d                                  ; $43a3: $01 $9d $0b
    ld bc, $0bad                                  ; $43a6: $01 $ad $0b
    ld bc, $0bcf                                  ; $43a9: $01 $cf $0b
    ld bc, $0bdf                                  ; $43ac: $01 $df $0b
    ld bc, $0bee                                  ; $43af: $01 $ee $0b
    ld bc, $0c02                                  ; $43b2: $01 $02 $0c
    ld bc, $0c28                                  ; $43b5: $01 $28 $0c
    ld bc, $0c64                                  ; $43b8: $01 $64 $0c
    ld bc, $0c7e                                  ; $43bb: $01 $7e $0c
    ld bc, $0c81                                  ; $43be: $01 $81 $0c
    ld bc, $0caa                                  ; $43c1: $01 $aa $0c
    ld bc, $0cc3                                  ; $43c4: $01 $c3 $0c
    ld bc, $0ce6                                  ; $43c7: $01 $e6 $0c
    ld bc, $0cf4                                  ; $43ca: $01 $f4 $0c
    ld bc, $0d10                                  ; $43cd: $01 $10 $0d
    ld bc, $0d39                                  ; $43d0: $01 $39 $0d
    ld bc, $0dae                                  ; $43d3: $01 $ae $0d
    ld bc, $0dc6                                  ; $43d6: $01 $c6 $0d
    ld bc, $0dd3                                  ; $43d9: $01 $d3 $0d
    ld bc, $0de0                                  ; $43dc: $01 $e0 $0d
    ld bc, $0df6                                  ; $43df: $01 $f6 $0d
    ld bc, $0e37                                  ; $43e2: $01 $37 $0e
    ld bc, $0e67                                  ; $43e5: $01 $67 $0e
    ld bc, $0e82                                  ; $43e8: $01 $82 $0e
    ld bc, $0eb2                                  ; $43eb: $01 $b2 $0e
    ld bc, $0ee9                                  ; $43ee: $01 $e9 $0e
    ld bc, $0f33                                  ; $43f1: $01 $33 $0f
    ld bc, $0f66                                  ; $43f4: $01 $66 $0f
    ld bc, $0f99                                  ; $43f7: $01 $99 $0f
    ld bc, $0fcf                                  ; $43fa: $01 $cf $0f
    ld bc, $100f                                  ; $43fd: $01 $0f $10
    ld bc, $1050                                  ; $4400: $01 $50 $10
    ld bc, $1086                                  ; $4403: $01 $86 $10
    ld bc, $10c4                                  ; $4406: $01 $c4 $10
    ld bc, $110c                                  ; $4409: $01 $0c $11
    ld bc, $1134                                  ; $440c: $01 $34 $11
    ld bc, $115f                                  ; $440f: $01 $5f $11
    ld bc, $118f                                  ; $4412: $01 $8f $11
    ld bc, $11d5                                  ; $4415: $01 $d5 $11
    ld bc, $1210                                  ; $4418: $01 $10 $12
    ld bc, $1251                                  ; $441b: $01 $51 $12
    ld bc, $128e                                  ; $441e: $01 $8e $12
    ld bc, $12bc                                  ; $4421: $01 $bc $12
    ld bc, $12f4                                  ; $4424: $01 $f4 $12
    ld bc, $1331                                  ; $4427: $01 $31 $13
    ld bc, $1358                                  ; $442a: $01 $58 $13
    ld bc, $1393                                  ; $442d: $01 $93 $13
    ld bc, $13c1                                  ; $4430: $01 $c1 $13
    ld bc, $13f0                                  ; $4433: $01 $f0 $13
    ld bc, $1420                                  ; $4436: $01 $20 $14
    ld bc, $1457                                  ; $4439: $01 $57 $14
    ld bc, $149c                                  ; $443c: $01 $9c $14
    ld bc, $14e3                                  ; $443f: $01 $e3 $14
    ld bc, $1528                                  ; $4442: $01 $28 $15
    ld bc, $155f                                  ; $4445: $01 $5f $15
    ld bc, $1595                                  ; $4448: $01 $95 $15
    ld bc, $15ce                                  ; $444b: $01 $ce $15
    ld bc, $1617                                  ; $444e: $01 $17 $16
    ld bc, $1662                                  ; $4451: $01 $62 $16
    ld bc, $16b4                                  ; $4454: $01 $b4 $16
    ld bc, $16ea                                  ; $4457: $01 $ea $16
    ld bc, $1724                                  ; $445a: $01 $24 $17
    ld bc, $1761                                  ; $445d: $01 $61 $17
    ld bc, $179a                                  ; $4460: $01 $9a $17
    ld bc, $17c2                                  ; $4463: $01 $c2 $17
    ld bc, $17fa                                  ; $4466: $01 $fa $17
    ld bc, $182a                                  ; $4469: $01 $2a $18
    ld bc, $183a                                  ; $446c: $01 $3a $18
    ld bc, $1851                                  ; $446f: $01 $51 $18
    ld bc, $1862                                  ; $4472: $01 $62 $18
    ld bc, $1882                                  ; $4475: $01 $82 $18
    ld bc, $18a9                                  ; $4478: $01 $a9 $18
    ld bc, $18b3                                  ; $447b: $01 $b3 $18
    ld bc, $18c4                                  ; $447e: $01 $c4 $18
    ld bc, $18ca                                  ; $4481: $01 $ca $18
    ld bc, $18f5                                  ; $4484: $01 $f5 $18
    ld bc, $1911                                  ; $4487: $01 $11 $19
    ld bc, $192d                                  ; $448a: $01 $2d $19
    ld bc, $195c                                  ; $448d: $01 $5c $19
    ld bc, $1971                                  ; $4490: $01 $71 $19
    ld bc, $197c                                  ; $4493: $01 $7c $19
    ld bc, $19c5                                  ; $4496: $01 $c5 $19
    ld bc, $19eb                                  ; $4499: $01 $eb $19
    ld bc, $1a0d                                  ; $449c: $01 $0d $1a
    ld bc, $1a1e                                  ; $449f: $01 $1e $1a
    ld bc, $1a39                                  ; $44a2: $01 $39 $1a
    ld bc, $1a4f                                  ; $44a5: $01 $4f $1a
    ld bc, $1a61                                  ; $44a8: $01 $61 $1a
    ld bc, $1a70                                  ; $44ab: $01 $70 $1a
    ld bc, $1a86                                  ; $44ae: $01 $86 $1a
    ld bc, $1a9d                                  ; $44b1: $01 $9d $1a
    ld bc, $1ab9                                  ; $44b4: $01 $b9 $1a
    ld bc, $1aca                                  ; $44b7: $01 $ca $1a
    ld bc, $1ae1                                  ; $44ba: $01 $e1 $1a
    ld bc, $1af8                                  ; $44bd: $01 $f8 $1a
    ld bc, $1b28                                  ; $44c0: $01 $28 $1b
    ld bc, $1b43                                  ; $44c3: $01 $43 $1b
    ld bc, $1b5a                                  ; $44c6: $01 $5a $1b
    ld bc, $1b6d                                  ; $44c9: $01 $6d $1b
    ld bc, $1b91                                  ; $44cc: $01 $91 $1b
    ld bc, $1bb9                                  ; $44cf: $01 $b9 $1b
    ld bc, $1bc4                                  ; $44d2: $01 $c4 $1b
    ld bc, $1be7                                  ; $44d5: $01 $e7 $1b
    ld bc, $1bf6                                  ; $44d8: $01 $f6 $1b
    ld bc, $1c2e                                  ; $44db: $01 $2e $1c
    ld bc, $1c51                                  ; $44de: $01 $51 $1c
    ld bc, $1c5b                                  ; $44e1: $01 $5b $1c
    ld bc, $1c70                                  ; $44e4: $01 $70 $1c
    ld bc, $1c7c                                  ; $44e7: $01 $7c $1c
    ld bc, $1cc0                                  ; $44ea: $01 $c0 $1c
    ld bc, $1cdb                                  ; $44ed: $01 $db $1c
    ld bc, $1cf8                                  ; $44f0: $01 $f8 $1c
    ld bc, $1d12                                  ; $44f3: $01 $12 $1d
    ld bc, $1d1f                                  ; $44f6: $01 $1f $1d
    ld bc, $1d76                                  ; $44f9: $01 $76 $1d
    ld bc, $1d8a                                  ; $44fc: $01 $8a $1d
    ld bc, $1d9d                                  ; $44ff: $01 $9d $1d
    ld bc, $1da7                                  ; $4502: $01 $a7 $1d
    ld bc, $1db5                                  ; $4505: $01 $b5 $1d
    ld bc, $1dd7                                  ; $4508: $01 $d7 $1d
    ld bc, $1de8                                  ; $450b: $01 $e8 $1d
    ld bc, $1df3                                  ; $450e: $01 $f3 $1d
    ld bc, $1dff                                  ; $4511: $01 $ff $1d
    ld bc, $1e19                                  ; $4514: $01 $19 $1e
    ld bc, $1e20                                  ; $4517: $01 $20 $1e
    ld bc, $1e41                                  ; $451a: $01 $41 $1e
    ld bc, $1e62                                  ; $451d: $01 $62 $1e
    ld bc, $1e72                                  ; $4520: $01 $72 $1e
    ld bc, $1e99                                  ; $4523: $01 $99 $1e
    ld bc, $1eb2                                  ; $4526: $01 $b2 $1e
    ld bc, $1eec                                  ; $4529: $01 $ec $1e
    ld bc, $1f09                                  ; $452c: $01 $09 $1f
    ld bc, $1f41                                  ; $452f: $01 $41 $1f
    ld bc, $1f86                                  ; $4532: $01 $86 $1f
    ld bc, $1fb6                                  ; $4535: $01 $b6 $1f
    ld bc, $2001                                  ; $4538: $01 $01 $20
    ld bc, $2037                                  ; $453b: $01 $37 $20
    ld bc, $2065                                  ; $453e: $01 $65 $20
    ld bc, $20c1                                  ; $4541: $01 $c1 $20
    ld bc, $20dd                                  ; $4544: $01 $dd $20
    ld bc, $212a                                  ; $4547: $01 $2a $21
    ld bc, $213f                                  ; $454a: $01 $3f $21
    ld bc, $216d                                  ; $454d: $01 $6d $21
    ld bc, $2245                                  ; $4550: $01 $45 $22
    ld bc, $2272                                  ; $4553: $01 $72 $22
    ld bc, $2285                                  ; $4556: $01 $85 $22
    ld bc, $22ac                                  ; $4559: $01 $ac $22
    ld bc, $22d7                                  ; $455c: $01 $d7 $22
    ld bc, $22ed                                  ; $455f: $01 $ed $22
    ld bc, $22fa                                  ; $4562: $01 $fa $22
    ld bc, $232e                                  ; $4565: $01 $2e $23
    ld bc, $2337                                  ; $4568: $01 $37 $23
    ld bc, $2349                                  ; $456b: $01 $49 $23
    ld bc, $238c                                  ; $456e: $01 $8c $23
    ld bc, $23b9                                  ; $4571: $01 $b9 $23
    ld bc, $23da                                  ; $4574: $01 $da $23
    ld bc, $23f3                                  ; $4577: $01 $f3 $23
    ld bc, $2419                                  ; $457a: $01 $19 $24
    ld bc, $244a                                  ; $457d: $01 $4a $24
    ld bc, $2461                                  ; $4580: $01 $61 $24
    ld bc, $248f                                  ; $4583: $01 $8f $24
    ld bc, $24ad                                  ; $4586: $01 $ad $24
    ld bc, $24c7                                  ; $4589: $01 $c7 $24
    ld bc, $24de                                  ; $458c: $01 $de $24
    ld bc, $2508                                  ; $458f: $01 $08 $25
    ld bc, $2517                                  ; $4592: $01 $17 $25
    ld bc, $2544                                  ; $4595: $01 $44 $25
    ld bc, $2570                                  ; $4598: $01 $70 $25
    ld bc, $257c                                  ; $459b: $01 $7c $25
    ld bc, $25b8                                  ; $459e: $01 $b8 $25
    ld bc, $25d5                                  ; $45a1: $01 $d5 $25
    ld bc, $25e5                                  ; $45a4: $01 $e5 $25
    ld bc, $2631                                  ; $45a7: $01 $31 $26
    ld bc, $2637                                  ; $45aa: $01 $37 $26
    ld bc, $26f1                                  ; $45ad: $01 $f1 $26
    ld bc, $2702                                  ; $45b0: $01 $02 $27
    ld bc, $2711                                  ; $45b3: $01 $11 $27
    ld bc, $273a                                  ; $45b6: $01 $3a $27
    ld bc, $275f                                  ; $45b9: $01 $5f $27
    ld bc, $2794                                  ; $45bc: $01 $94 $27
    ld bc, $27cd                                  ; $45bf: $01 $cd $27
    ld bc, $2809                                  ; $45c2: $01 $09 $28
    ld bc, $2830                                  ; $45c5: $01 $30 $28
    ld bc, $2886                                  ; $45c8: $01 $86 $28
    ld bc, $28f6                                  ; $45cb: $01 $f6 $28
    ld bc, $2924                                  ; $45ce: $01 $24 $29
    ld bc, $2957                                  ; $45d1: $01 $57 $29
    ld bc, $2970                                  ; $45d4: $01 $70 $29
    ld bc, $2991                                  ; $45d7: $01 $91 $29
    ld bc, $29a3                                  ; $45da: $01 $a3 $29
    ld bc, $29cf                                  ; $45dd: $01 $cf $29
    ld bc, $29f1                                  ; $45e0: $01 $f1 $29
    ld bc, $2a1c                                  ; $45e3: $01 $1c $2a
    ld bc, $2a59                                  ; $45e6: $01 $59 $2a
    ld bc, $2a87                                  ; $45e9: $01 $87 $2a
    ld bc, $2aaa                                  ; $45ec: $01 $aa $2a
    ld bc, $2b04                                  ; $45ef: $01 $04 $2b
    ld bc, $2b2f                                  ; $45f2: $01 $2f $2b
    ld bc, $2bc4                                  ; $45f5: $01 $c4 $2b
    ld bc, $2bf4                                  ; $45f8: $01 $f4 $2b
    ld bc, $2c28                                  ; $45fb: $01 $28 $2c
    ld bc, $2c54                                  ; $45fe: $01 $54 $2c
    ld bc, $2c88                                  ; $4601: $01 $88 $2c
    ld bc, $2cab                                  ; $4604: $01 $ab $2c
    ld bc, $2cc3                                  ; $4607: $01 $c3 $2c
    ld bc, $2ce6                                  ; $460a: $01 $e6 $2c
    ld bc, $2d19                                  ; $460d: $01 $19 $2d
    ld bc, $2d2d                                  ; $4610: $01 $2d $2d
    ld bc, $2d4e                                  ; $4613: $01 $4e $2d
    ld bc, $2d60                                  ; $4616: $01 $60 $2d
    ld bc, $2d97                                  ; $4619: $01 $97 $2d
    ld bc, $2dd9                                  ; $461c: $01 $d9 $2d
    ld bc, $2df0                                  ; $461f: $01 $f0 $2d
    ld bc, $2e0d                                  ; $4622: $01 $0d $2e
    ld bc, $2e35                                  ; $4625: $01 $35 $2e
    ld bc, $2e58                                  ; $4628: $01 $58 $2e
    ld bc, $2ea8                                  ; $462b: $01 $a8 $2e
    ld bc, $2ec3                                  ; $462e: $01 $c3 $2e
    ld bc, $2f02                                  ; $4631: $01 $02 $2f
    ld bc, $2f26                                  ; $4634: $01 $26 $2f
    ld bc, $2f52                                  ; $4637: $01 $52 $2f
    ld bc, $2f84                                  ; $463a: $01 $84 $2f
    ld bc, $2f9e                                  ; $463d: $01 $9e $2f
    ld bc, $2fdb                                  ; $4640: $01 $db $2f
    ld bc, $2ff6                                  ; $4643: $01 $f6 $2f
    ld bc, $302a                                  ; $4646: $01 $2a $30
    ld bc, $303f                                  ; $4649: $01 $3f $30
    ld bc, $306c                                  ; $464c: $01 $6c $30
    ld bc, $30a0                                  ; $464f: $01 $a0 $30
    ld bc, $30b6                                  ; $4652: $01 $b6 $30
    ld bc, $30e1                                  ; $4655: $01 $e1 $30
    ld bc, $3108                                  ; $4658: $01 $08 $31
    ld bc, $312c                                  ; $465b: $01 $2c $31
    ld bc, $3163                                  ; $465e: $01 $63 $31
    ld bc, $3198                                  ; $4661: $01 $98 $31
    ld bc, $31c8                                  ; $4664: $01 $c8 $31
    ld bc, $31ed                                  ; $4667: $01 $ed $31
    ld bc, $322c                                  ; $466a: $01 $2c $32
    ld bc, $327f                                  ; $466d: $01 $7f $32
    ld bc, $32c9                                  ; $4670: $01 $c9 $32
    ld bc, $32f8                                  ; $4673: $01 $f8 $32
    ld bc, $3329                                  ; $4676: $01 $29 $33
    ld bc, $3343                                  ; $4679: $01 $43 $33
    ld bc, $3364                                  ; $467c: $01 $64 $33
    ld bc, $3394                                  ; $467f: $01 $94 $33
    ld bc, $33bb                                  ; $4682: $01 $bb $33
    ld bc, $33f2                                  ; $4685: $01 $f2 $33
    ld bc, $3412                                  ; $4688: $01 $12 $34
    ld bc, $3434                                  ; $468b: $01 $34 $34
    ld bc, $3463                                  ; $468e: $01 $63 $34
    ld bc, $3486                                  ; $4691: $01 $86 $34
    ld bc, $348f                                  ; $4694: $01 $8f $34
    ld bc, $34b7                                  ; $4697: $01 $b7 $34
    ld bc, $34c5                                  ; $469a: $01 $c5 $34
    ld bc, $34ed                                  ; $469d: $01 $ed $34
    ld bc, $34fe                                  ; $46a0: $01 $fe $34
    ld bc, $3508                                  ; $46a3: $01 $08 $35
    ld bc, $3518                                  ; $46a6: $01 $18 $35
    ld bc, $3534                                  ; $46a9: $01 $34 $35
    ld bc, $355e                                  ; $46ac: $01 $5e $35
    ld bc, $35aa                                  ; $46af: $01 $aa $35
    ld bc, $35b0                                  ; $46b2: $01 $b0 $35
    ld bc, $3608                                  ; $46b5: $01 $08 $36
    ld bc, $3618                                  ; $46b8: $01 $18 $36
    ld bc, $3677                                  ; $46bb: $01 $77 $36
    ld bc, $369e                                  ; $46be: $01 $9e $36
    ld bc, $36b5                                  ; $46c1: $01 $b5 $36
    ld bc, $36e1                                  ; $46c4: $01 $e1 $36
    ld bc, $3736                                  ; $46c7: $01 $36 $37
    ld bc, $3767                                  ; $46ca: $01 $67 $37
    ld bc, $3777                                  ; $46cd: $01 $77 $37
    ld bc, $378a                                  ; $46d0: $01 $8a $37
    ld bc, $37a8                                  ; $46d3: $01 $a8 $37
    ld bc, $37d7                                  ; $46d6: $01 $d7 $37
    ld bc, $37ef                                  ; $46d9: $01 $ef $37
    ld bc, $3805                                  ; $46dc: $01 $05 $38
    ld bc, $380d                                  ; $46df: $01 $0d $38
    ld bc, $384a                                  ; $46e2: $01 $4a $38
    ld bc, $3887                                  ; $46e5: $01 $87 $38
    ld bc, $38a2                                  ; $46e8: $01 $a2 $38
    ld bc, $38de                                  ; $46eb: $01 $de $38
    ld bc, $3918                                  ; $46ee: $01 $18 $39
    ld bc, $3934                                  ; $46f1: $01 $34 $39
    ld bc, $3959                                  ; $46f4: $01 $59 $39
    ld bc, $396a                                  ; $46f7: $01 $6a $39
    ld bc, $398f                                  ; $46fa: $01 $8f $39
    ld bc, $399f                                  ; $46fd: $01 $9f $39
    ld bc, $39b7                                  ; $4700: $01 $b7 $39
    ld bc, $39d9                                  ; $4703: $01 $d9 $39
    ld bc, $39f5                                  ; $4706: $01 $f5 $39
    ld bc, $3a4c                                  ; $4709: $01 $4c $3a
    ld bc, $3a5f                                  ; $470c: $01 $5f $3a
    ld bc, $3ab8                                  ; $470f: $01 $b8 $3a
    ld bc, $3af5                                  ; $4712: $01 $f5 $3a
    ld bc, $3b1a                                  ; $4715: $01 $1a $3b
    ld bc, $3b4c                                  ; $4718: $01 $4c $3b
    ld bc, $3b8f                                  ; $471b: $01 $8f $3b
    ld bc, $3be4                                  ; $471e: $01 $e4 $3b
    ld bc, $3c21                                  ; $4721: $01 $21 $3c
    ld bc, $3c32                                  ; $4724: $01 $32 $3c
    ld bc, $3c43                                  ; $4727: $01 $43 $3c
    ld bc, $3c63                                  ; $472a: $01 $63 $3c
    ld bc, $3c81                                  ; $472d: $01 $81 $3c
    ld bc, $3c8b                                  ; $4730: $01 $8b $3c
    ld bc, $3c98                                  ; $4733: $01 $98 $3c
    ld bc, $3caf                                  ; $4736: $01 $af $3c
    ld bc, $3cc6                                  ; $4739: $01 $c6 $3c
    ld bc, $3cea                                  ; $473c: $01 $ea $3c
    ld bc, $3d00                                  ; $473f: $01 $00 $3d
    ld bc, $3d08                                  ; $4742: $01 $08 $3d
    ld bc, $3d29                                  ; $4745: $01 $29 $3d
    ld bc, $3da6                                  ; $4748: $01 $a6 $3d
    ld bc, $3db7                                  ; $474b: $01 $b7 $3d
    ld bc, $3dd2                                  ; $474e: $01 $d2 $3d
    ld bc, $3dfa                                  ; $4751: $01 $fa $3d
    ld bc, $3e17                                  ; $4754: $01 $17 $3e
    ld bc, $3e4b                                  ; $4757: $01 $4b $3e
    ld bc, $3e89                                  ; $475a: $01 $89 $3e
    ld bc, $3ea9                                  ; $475d: $01 $a9 $3e
    ld bc, $3f0a                                  ; $4760: $01 $0a $3f
    ld bc, $3f10                                  ; $4763: $01 $10 $3f
    ld bc, $3f27                                  ; $4766: $01 $27 $3f
    ld bc, $3f33                                  ; $4769: $01 $33 $3f
    ld bc, $3f49                                  ; $476c: $01 $49 $3f
    ld bc, $3f69                                  ; $476f: $01 $69 $3f
    ld bc, $3fa6                                  ; $4772: $01 $a6 $3f
    ld [bc], a                                    ; $4775: $02
    ld bc, $0200                                  ; $4776: $01 $00 $02
    ld h, $00                                     ; $4779: $26 $00
    ld [bc], a                                    ; $477b: $02
    ld h, b                                       ; $477c: $60
    nop                                           ; $477d: $00
    ld [bc], a                                    ; $477e: $02
    ld l, a                                       ; $477f: $6f
    nop                                           ; $4780: $00
    ld [bc], a                                    ; $4781: $02
    ld a, a                                       ; $4782: $7f
    nop                                           ; $4783: $00
    ld [bc], a                                    ; $4784: $02
    sub e                                         ; $4785: $93
    nop                                           ; $4786: $00
    ld [bc], a                                    ; $4787: $02
    and a                                         ; $4788: $a7
    nop                                           ; $4789: $00
    ld [bc], a                                    ; $478a: $02
    push de                                       ; $478b: $d5
    nop                                           ; $478c: $00
    ld [bc], a                                    ; $478d: $02
    cpl                                           ; $478e: $2f
    ld bc, $6702                                  ; $478f: $01 $02 $67
    ld bc, $9902                                  ; $4792: $01 $02 $99
    ld bc, $ce02                                  ; $4795: $01 $02 $ce
    ld bc, $0502                                  ; $4798: $01 $02 $05
    ld [bc], a                                    ; $479b: $02
    ld [bc], a                                    ; $479c: $02
    ld a, [hl+]                                   ; $479d: $2a
    ld [bc], a                                    ; $479e: $02
    ld [bc], a                                    ; $479f: $02
    ld b, [hl]                                    ; $47a0: $46
    ld [bc], a                                    ; $47a1: $02
    ld [bc], a                                    ; $47a2: $02
    ld [hl], h                                    ; $47a3: $74
    ld [bc], a                                    ; $47a4: $02
    ld [bc], a                                    ; $47a5: $02
    add h                                         ; $47a6: $84
    ld [bc], a                                    ; $47a7: $02
    ld [bc], a                                    ; $47a8: $02
    adc l                                         ; $47a9: $8d
    ld [bc], a                                    ; $47aa: $02
    ld [bc], a                                    ; $47ab: $02
    and l                                         ; $47ac: $a5
    ld [bc], a                                    ; $47ad: $02
    ld [bc], a                                    ; $47ae: $02
    cp a                                          ; $47af: $bf
    ld [bc], a                                    ; $47b0: $02
    ld [bc], a                                    ; $47b1: $02
    sbc $02                                       ; $47b2: $de $02
    ld [bc], a                                    ; $47b4: $02
    db $fd                                        ; $47b5: $fd
    ld [bc], a                                    ; $47b6: $02
    ld [bc], a                                    ; $47b7: $02
    dec bc                                        ; $47b8: $0b
    inc bc                                        ; $47b9: $03
    ld [bc], a                                    ; $47ba: $02
    ld hl, $0203                                  ; $47bb: $21 $03 $02
    ld b, h                                       ; $47be: $44
    inc bc                                        ; $47bf: $03
    ld [bc], a                                    ; $47c0: $02
    ld l, [hl]                                    ; $47c1: $6e
    inc bc                                        ; $47c2: $03
    ld [bc], a                                    ; $47c3: $02
    add h                                         ; $47c4: $84
    inc bc                                        ; $47c5: $03
    ld [bc], a                                    ; $47c6: $02
    xor b                                         ; $47c7: $a8
    inc bc                                        ; $47c8: $03
    ld [bc], a                                    ; $47c9: $02
    cp l                                          ; $47ca: $bd
    inc bc                                        ; $47cb: $03
    ld [bc], a                                    ; $47cc: $02
    push de                                       ; $47cd: $d5
    inc bc                                        ; $47ce: $03
    ld [bc], a                                    ; $47cf: $02
    rst $28                                       ; $47d0: $ef
    inc bc                                        ; $47d1: $03
    ld [bc], a                                    ; $47d2: $02
    db $fc                                        ; $47d3: $fc
    inc bc                                        ; $47d4: $03
    ld [bc], a                                    ; $47d5: $02
    ld d, $04                                     ; $47d6: $16 $04
    ld [bc], a                                    ; $47d8: $02
    jr c, jr_02c_47df                             ; $47d9: $38 $04

    ld [bc], a                                    ; $47db: $02
    ld d, [hl]                                    ; $47dc: $56
    inc b                                         ; $47dd: $04
    ld [bc], a                                    ; $47de: $02

jr_02c_47df:
    ld a, e                                       ; $47df: $7b
    inc b                                         ; $47e0: $04
    ld [bc], a                                    ; $47e1: $02
    xor d                                         ; $47e2: $aa
    inc b                                         ; $47e3: $04
    ld [bc], a                                    ; $47e4: $02
    jp nc, $0204                                  ; $47e5: $d2 $04 $02

    rst $30                                       ; $47e8: $f7
    inc b                                         ; $47e9: $04
    ld [bc], a                                    ; $47ea: $02
    inc sp                                        ; $47eb: $33
    dec b                                         ; $47ec: $05
    ld [bc], a                                    ; $47ed: $02
    ld c, c                                       ; $47ee: $49
    dec b                                         ; $47ef: $05
    ld [bc], a                                    ; $47f0: $02
    ld [hl], d                                    ; $47f1: $72
    dec b                                         ; $47f2: $05
    ld [bc], a                                    ; $47f3: $02
    adc a                                         ; $47f4: $8f
    dec b                                         ; $47f5: $05
    ld [bc], a                                    ; $47f6: $02
    and l                                         ; $47f7: $a5
    dec b                                         ; $47f8: $05
    ld [bc], a                                    ; $47f9: $02
    jp z, $0205                                   ; $47fa: $ca $05 $02

    ld [c], a                                     ; $47fd: $e2
    dec b                                         ; $47fe: $05
    ld [bc], a                                    ; $47ff: $02
    ld b, $06                                     ; $4800: $06 $06
    ld [bc], a                                    ; $4802: $02
    dec c                                         ; $4803: $0d
    ld b, $02                                     ; $4804: $06 $02
    inc d                                         ; $4806: $14
    ld b, $02                                     ; $4807: $06 $02
    dec de                                        ; $4809: $1b
    ld b, $02                                     ; $480a: $06 $02
    dec l                                         ; $480c: $2d
    ld b, $02                                     ; $480d: $06 $02
    dec [hl]                                      ; $480f: $35
    ld b, $02                                     ; $4810: $06 $02
    ld [hl], c                                    ; $4812: $71
    ld b, $02                                     ; $4813: $06 $02
    sub d                                         ; $4815: $92
    ld b, $02                                     ; $4816: $06 $02
    and c                                         ; $4818: $a1
    ld b, $02                                     ; $4819: $06 $02
    or b                                          ; $481b: $b0
    ld b, $02                                     ; $481c: $06 $02
    db $d3                                        ; $481e: $d3
    ld b, $02                                     ; $481f: $06 $02
    rst $28                                       ; $4821: $ef
    ld b, $02                                     ; $4822: $06 $02
    ld bc, $0207                                  ; $4824: $01 $07 $02
    dec c                                         ; $4827: $0d
    rlca                                          ; $4828: $07
    ld [bc], a                                    ; $4829: $02
    inc l                                         ; $482a: $2c
    rlca                                          ; $482b: $07
    ld [bc], a                                    ; $482c: $02
    dec a                                         ; $482d: $3d
    rlca                                          ; $482e: $07
    ld [bc], a                                    ; $482f: $02
    ld e, c                                       ; $4830: $59
    rlca                                          ; $4831: $07
    ld [bc], a                                    ; $4832: $02
    ld l, [hl]                                    ; $4833: $6e
    rlca                                          ; $4834: $07
    ld [bc], a                                    ; $4835: $02
    add e                                         ; $4836: $83
    rlca                                          ; $4837: $07
    ld [bc], a                                    ; $4838: $02
    xor c                                         ; $4839: $a9
    rlca                                          ; $483a: $07
    ld [bc], a                                    ; $483b: $02
    or d                                          ; $483c: $b2
    rlca                                          ; $483d: $07
    ld [bc], a                                    ; $483e: $02
    rst $18                                       ; $483f: $df
    rlca                                          ; $4840: $07
    ld [bc], a                                    ; $4841: $02
    db $ec                                        ; $4842: $ec
    rlca                                          ; $4843: $07
    ld [bc], a                                    ; $4844: $02
    inc d                                         ; $4845: $14
    ld [$2102], sp                                ; $4846: $08 $02 $21
    ld [$2f02], sp                                ; $4849: $08 $02 $2f
    ld [$9902], sp                                ; $484c: $08 $02 $99
    ld [$a802], sp                                ; $484f: $08 $02 $a8
    ld [$ad02], sp                                ; $4852: $08 $02 $ad
    ld [$bb02], sp                                ; $4855: $08 $02 $bb
    ld [$0a02], sp                                ; $4858: $08 $02 $0a
    add hl, bc                                    ; $485b: $09
    ld [bc], a                                    ; $485c: $02
    ld hl, sp+$09                                 ; $485d: $f8 $09
    ld [bc], a                                    ; $485f: $02
    daa                                           ; $4860: $27
    ld a, [bc]                                    ; $4861: $0a
    ld [bc], a                                    ; $4862: $02
    ld b, d                                       ; $4863: $42
    ld a, [bc]                                    ; $4864: $0a
    ld [bc], a                                    ; $4865: $02
    ld d, e                                       ; $4866: $53
    ld a, [bc]                                    ; $4867: $0a
    ld [bc], a                                    ; $4868: $02
    ld h, b                                       ; $4869: $60
    ld a, [bc]                                    ; $486a: $0a
    ld [bc], a                                    ; $486b: $02
    ld [hl], c                                    ; $486c: $71
    ld a, [bc]                                    ; $486d: $0a
    ld [bc], a                                    ; $486e: $02
    adc b                                         ; $486f: $88
    ld a, [bc]                                    ; $4870: $0a
    ld [bc], a                                    ; $4871: $02
    sbc [hl]                                      ; $4872: $9e
    ld a, [bc]                                    ; $4873: $0a
    ld [bc], a                                    ; $4874: $02
    or h                                          ; $4875: $b4
    ld a, [bc]                                    ; $4876: $0a
    ld [bc], a                                    ; $4877: $02
    db $d3                                        ; $4878: $d3
    ld a, [bc]                                    ; $4879: $0a
    ld [bc], a                                    ; $487a: $02
    inc d                                         ; $487b: $14
    dec bc                                        ; $487c: $0b
    ld [bc], a                                    ; $487d: $02
    ld d, [hl]                                    ; $487e: $56
    dec bc                                        ; $487f: $0b
    ld [bc], a                                    ; $4880: $02
    ld a, d                                       ; $4881: $7a
    dec bc                                        ; $4882: $0b
    ld [bc], a                                    ; $4883: $02
    ld hl, sp+$0b                                 ; $4884: $f8 $0b
    ld [bc], a                                    ; $4886: $02
    ld [bc], a                                    ; $4887: $02
    inc c                                         ; $4888: $0c
    ld [bc], a                                    ; $4889: $02
    ld e, b                                       ; $488a: $58
    inc c                                         ; $488b: $0c
    ld [bc], a                                    ; $488c: $02
    ld [hl], h                                    ; $488d: $74
    inc c                                         ; $488e: $0c
    ld [bc], a                                    ; $488f: $02
    sbc c                                         ; $4890: $99
    inc c                                         ; $4891: $0c
    ld [bc], a                                    ; $4892: $02
    rst $00                                       ; $4893: $c7
    inc c                                         ; $4894: $0c
    ld [bc], a                                    ; $4895: $02
    sub $0c                                       ; $4896: $d6 $0c
    ld [bc], a                                    ; $4898: $02
    db $eb                                        ; $4899: $eb
    inc c                                         ; $489a: $0c
    ld [bc], a                                    ; $489b: $02
    dec bc                                        ; $489c: $0b
    dec c                                         ; $489d: $0d
    ld [bc], a                                    ; $489e: $02
    ld a, [de]                                    ; $489f: $1a
    dec c                                         ; $48a0: $0d
    ld [bc], a                                    ; $48a1: $02
    dec h                                         ; $48a2: $25
    dec c                                         ; $48a3: $0d
    ld [bc], a                                    ; $48a4: $02
    inc a                                         ; $48a5: $3c
    dec c                                         ; $48a6: $0d
    ld [bc], a                                    ; $48a7: $02
    ld c, b                                       ; $48a8: $48
    dec c                                         ; $48a9: $0d
    ld [bc], a                                    ; $48aa: $02
    ld a, c                                       ; $48ab: $79
    dec c                                         ; $48ac: $0d
    ld [bc], a                                    ; $48ad: $02
    sub a                                         ; $48ae: $97
    dec c                                         ; $48af: $0d
    ld [bc], a                                    ; $48b0: $02
    or e                                          ; $48b1: $b3
    dec c                                         ; $48b2: $0d
    ld [bc], a                                    ; $48b3: $02
    jp z, Jump_000_020d                           ; $48b4: $ca $0d $02

    db $db                                        ; $48b7: $db
    dec c                                         ; $48b8: $0d

Jump_02c_48b9:
    ld [bc], a                                    ; $48b9: $02
    jp hl                                         ; $48ba: $e9


    dec c                                         ; $48bb: $0d
    ld [bc], a                                    ; $48bc: $02
    inc bc                                        ; $48bd: $03
    ld c, $02                                     ; $48be: $0e $02
    dec h                                         ; $48c0: $25
    ld c, $02                                     ; $48c1: $0e $02
    ld c, d                                       ; $48c3: $4a
    ld c, $02                                     ; $48c4: $0e $02
    rst $00                                       ; $48c6: $c7
    ld c, $02                                     ; $48c7: $0e $02
    ld a, $0f                                     ; $48c9: $3e $0f
    ld [bc], a                                    ; $48cb: $02
    ld c, [hl]                                    ; $48cc: $4e
    rrca                                          ; $48cd: $0f
    ld [bc], a                                    ; $48ce: $02
    sub e                                         ; $48cf: $93
    rrca                                          ; $48d0: $0f
    ld [bc], a                                    ; $48d1: $02
    xor e                                         ; $48d2: $ab
    rrca                                          ; $48d3: $0f
    ld [bc], a                                    ; $48d4: $02
    rst $30                                       ; $48d5: $f7
    rrca                                          ; $48d6: $0f
    ld [bc], a                                    ; $48d7: $02
    inc hl                                        ; $48d8: $23
    db $10                                        ; $48d9: $10
    ld [bc], a                                    ; $48da: $02
    ld b, e                                       ; $48db: $43
    db $10                                        ; $48dc: $10
    ld [bc], a                                    ; $48dd: $02
    ld l, a                                       ; $48de: $6f
    db $10                                        ; $48df: $10
    ld [bc], a                                    ; $48e0: $02
    adc [hl]                                      ; $48e1: $8e
    db $10                                        ; $48e2: $10
    ld [bc], a                                    ; $48e3: $02
    cp e                                          ; $48e4: $bb
    db $10                                        ; $48e5: $10
    ld [bc], a                                    ; $48e6: $02
    inc bc                                        ; $48e7: $03
    ld de, $0902                                  ; $48e8: $11 $02 $09
    ld de, $1902                                  ; $48eb: $11 $02 $19
    ld de, $3802                                  ; $48ee: $11 $02 $38
    ld de, $6202                                  ; $48f1: $11 $02 $62
    ld de, $7902                                  ; $48f4: $11 $02 $79
    ld de, $b502                                  ; $48f7: $11 $02 $b5
    ld de, $d202                                  ; $48fa: $11 $02 $d2
    ld de, $dd02                                  ; $48fd: $11 $02 $dd
    ld de, $e902                                  ; $4900: $11 $02 $e9
    ld de, $0002                                  ; $4903: $11 $02 $00
    ld [de], a                                    ; $4906: $12
    ld [bc], a                                    ; $4907: $02
    ld d, $12                                     ; $4908: $16 $12
    ld [bc], a                                    ; $490a: $02
    inc hl                                        ; $490b: $23
    ld [de], a                                    ; $490c: $12
    ld [bc], a                                    ; $490d: $02
    ld a, [hl-]                                   ; $490e: $3a
    ld [de], a                                    ; $490f: $12
    ld [bc], a                                    ; $4910: $02
    ld a, c                                       ; $4911: $79
    ld [de], a                                    ; $4912: $12
    ld [bc], a                                    ; $4913: $02
    pop hl                                        ; $4914: $e1
    ld [de], a                                    ; $4915: $12
    ld [bc], a                                    ; $4916: $02
    ld a, [c]                                     ; $4917: $f2
    ld [de], a                                    ; $4918: $12
    ld [bc], a                                    ; $4919: $02
    ld h, h                                       ; $491a: $64
    inc de                                        ; $491b: $13
    ld [bc], a                                    ; $491c: $02
    sbc e                                         ; $491d: $9b
    inc de                                        ; $491e: $13
    ld [bc], a                                    ; $491f: $02
    call z, $0213                                 ; $4920: $cc $13 $02
    db $e3                                        ; $4923: $e3
    inc de                                        ; $4924: $13
    ld [bc], a                                    ; $4925: $02
    ld d, h                                       ; $4926: $54
    inc d                                         ; $4927: $14
    ld [bc], a                                    ; $4928: $02
    ld e, [hl]                                    ; $4929: $5e
    inc d                                         ; $492a: $14
    ld [bc], a                                    ; $492b: $02
    add l                                         ; $492c: $85
    inc d                                         ; $492d: $14
    ld [bc], a                                    ; $492e: $02
    and b                                         ; $492f: $a0
    inc d                                         ; $4930: $14
    ld [bc], a                                    ; $4931: $02
    ret c                                         ; $4932: $d8

    inc d                                         ; $4933: $14
    ld [bc], a                                    ; $4934: $02
    ld c, a                                       ; $4935: $4f
    dec d                                         ; $4936: $15
    ld [bc], a                                    ; $4937: $02
    ld [hl], h                                    ; $4938: $74
    dec d                                         ; $4939: $15
    ld [bc], a                                    ; $493a: $02
    and c                                         ; $493b: $a1
    dec d                                         ; $493c: $15
    ld [bc], a                                    ; $493d: $02
    rst $08                                       ; $493e: $cf
    dec d                                         ; $493f: $15
    ld [bc], a                                    ; $4940: $02
    db $ed                                        ; $4941: $ed
    dec d                                         ; $4942: $15
    ld [bc], a                                    ; $4943: $02
    pop af                                        ; $4944: $f1
    dec d                                         ; $4945: $15
    ld [bc], a                                    ; $4946: $02
    nop                                           ; $4947: $00
    ld d, $02                                     ; $4948: $16 $02
    jr nc, jr_02c_4962                            ; $494a: $30 $16

    ld [bc], a                                    ; $494c: $02
    ld c, d                                       ; $494d: $4a
    ld d, $02                                     ; $494e: $16 $02
    ld h, c                                       ; $4950: $61
    ld d, $02                                     ; $4951: $16 $02
    ld a, l                                       ; $4953: $7d
    ld d, $02                                     ; $4954: $16 $02
    dec b                                         ; $4956: $05
    rla                                           ; $4957: $17
    ld [bc], a                                    ; $4958: $02
    dec c                                         ; $4959: $0d
    rla                                           ; $495a: $17
    ld [bc], a                                    ; $495b: $02
    ld b, b                                       ; $495c: $40
    rla                                           ; $495d: $17
    ld [bc], a                                    ; $495e: $02
    ld d, [hl]                                    ; $495f: $56
    rla                                           ; $4960: $17
    ld [bc], a                                    ; $4961: $02

jr_02c_4962:
    ld a, d                                       ; $4962: $7a
    rla                                           ; $4963: $17
    ld [bc], a                                    ; $4964: $02
    or c                                          ; $4965: $b1
    rla                                           ; $4966: $17
    ld [bc], a                                    ; $4967: $02
    or a                                          ; $4968: $b7
    rla                                           ; $4969: $17
    ld [bc], a                                    ; $496a: $02
    jp z, $0217                                   ; $496b: $ca $17 $02

    inc de                                        ; $496e: $13
    jr @+$04                                      ; $496f: $18 $02

    ld a, [hl+]                                   ; $4971: $2a
    jr @+$04                                      ; $4972: $18 $02

    ld d, c                                       ; $4974: $51
    jr @+$04                                      ; $4975: $18 $02

    add h                                         ; $4977: $84
    jr @+$04                                      ; $4978: $18 $02

    pop hl                                        ; $497a: $e1
    jr jr_02c_497f                                ; $497b: $18 $02

    nop                                           ; $497d: $00
    add hl, de                                    ; $497e: $19

jr_02c_497f:
    ld [bc], a                                    ; $497f: $02
    inc de                                        ; $4980: $13
    add hl, de                                    ; $4981: $19
    ld [bc], a                                    ; $4982: $02
    inc h                                         ; $4983: $24
    add hl, de                                    ; $4984: $19
    ld [bc], a                                    ; $4985: $02
    scf                                           ; $4986: $37
    add hl, de                                    ; $4987: $19
    ld [bc], a                                    ; $4988: $02
    ld d, h                                       ; $4989: $54
    add hl, de                                    ; $498a: $19
    ld [bc], a                                    ; $498b: $02
    ld a, d                                       ; $498c: $7a
    add hl, de                                    ; $498d: $19
    ld [bc], a                                    ; $498e: $02
    add l                                         ; $498f: $85
    add hl, de                                    ; $4990: $19
    ld [bc], a                                    ; $4991: $02
    adc c                                         ; $4992: $89
    add hl, de                                    ; $4993: $19
    ld [bc], a                                    ; $4994: $02
    or b                                          ; $4995: $b0
    add hl, de                                    ; $4996: $19
    ld [bc], a                                    ; $4997: $02
    ret nc                                        ; $4998: $d0

    add hl, de                                    ; $4999: $19
    ld [bc], a                                    ; $499a: $02
    pop af                                        ; $499b: $f1
    add hl, de                                    ; $499c: $19
    ld [bc], a                                    ; $499d: $02
    inc c                                         ; $499e: $0c
    ld a, [de]                                    ; $499f: $1a
    ld [bc], a                                    ; $49a0: $02
    ld a, [hl+]                                   ; $49a1: $2a
    ld a, [de]                                    ; $49a2: $1a
    ld [bc], a                                    ; $49a3: $02
    ld d, [hl]                                    ; $49a4: $56
    ld a, [de]                                    ; $49a5: $1a
    ld [bc], a                                    ; $49a6: $02
    adc b                                         ; $49a7: $88
    ld a, [de]                                    ; $49a8: $1a
    ld [bc], a                                    ; $49a9: $02
    sbc d                                         ; $49aa: $9a
    ld a, [de]                                    ; $49ab: $1a
    ld [bc], a                                    ; $49ac: $02
    jp $021a                                      ; $49ad: $c3 $1a $02


    rst $10                                       ; $49b0: $d7
    ld a, [de]                                    ; $49b1: $1a
    ld [bc], a                                    ; $49b2: $02
    or $1a                                        ; $49b3: $f6 $1a
    ld [bc], a                                    ; $49b5: $02
    ld c, $1b                                     ; $49b6: $0e $1b
    ld [bc], a                                    ; $49b8: $02
    cpl                                           ; $49b9: $2f
    dec de                                        ; $49ba: $1b
    ld [bc], a                                    ; $49bb: $02
    ld c, h                                       ; $49bc: $4c
    dec de                                        ; $49bd: $1b
    ld [bc], a                                    ; $49be: $02
    ld e, e                                       ; $49bf: $5b
    dec de                                        ; $49c0: $1b
    ld [bc], a                                    ; $49c1: $02
    adc a                                         ; $49c2: $8f
    dec de                                        ; $49c3: $1b
    ld [bc], a                                    ; $49c4: $02
    call c, $021b                                 ; $49c5: $dc $1b $02
    xor $1b                                       ; $49c8: $ee $1b
    ld [bc], a                                    ; $49ca: $02
    rrca                                          ; $49cb: $0f
    inc e                                         ; $49cc: $1c
    ld [bc], a                                    ; $49cd: $02
    inc a                                         ; $49ce: $3c
    inc e                                         ; $49cf: $1c
    ld [bc], a                                    ; $49d0: $02
    ld d, e                                       ; $49d1: $53
    inc e                                         ; $49d2: $1c
    ld [bc], a                                    ; $49d3: $02
    adc [hl]                                      ; $49d4: $8e
    inc e                                         ; $49d5: $1c
    ld [bc], a                                    ; $49d6: $02
    call nz, Call_000_021c                        ; $49d7: $c4 $1c $02
    ld a, [$021c]                                 ; $49da: $fa $1c $02
    scf                                           ; $49dd: $37
    dec e                                         ; $49de: $1d
    ld [bc], a                                    ; $49df: $02
    ld h, l                                       ; $49e0: $65
    dec e                                         ; $49e1: $1d
    ld [bc], a                                    ; $49e2: $02
    add e                                         ; $49e3: $83
    dec e                                         ; $49e4: $1d
    ld [bc], a                                    ; $49e5: $02
    sbc c                                         ; $49e6: $99
    dec e                                         ; $49e7: $1d
    ld [bc], a                                    ; $49e8: $02
    and [hl]                                      ; $49e9: $a6
    dec e                                         ; $49ea: $1d
    ld [bc], a                                    ; $49eb: $02
    and $1d                                       ; $49ec: $e6 $1d
    ld [bc], a                                    ; $49ee: $02
    dec c                                         ; $49ef: $0d
    ld e, $02                                     ; $49f0: $1e $02
    ld c, c                                       ; $49f2: $49
    ld e, $02                                     ; $49f3: $1e $02
    ld e, d                                       ; $49f5: $5a
    ld e, $02                                     ; $49f6: $1e $02
    ld [hl], b                                    ; $49f8: $70
    ld e, $02                                     ; $49f9: $1e $02
    ld a, b                                       ; $49fb: $78
    ld e, $02                                     ; $49fc: $1e $02
    sub e                                         ; $49fe: $93
    ld e, $02                                     ; $49ff: $1e $02
    or l                                          ; $4a01: $b5
    ld e, $02                                     ; $4a02: $1e $02
    jp z, $021e                                   ; $4a04: $ca $1e $02

    ld e, $1f                                     ; $4a07: $1e $1f
    ld [bc], a                                    ; $4a09: $02
    ld b, l                                       ; $4a0a: $45
    rra                                           ; $4a0b: $1f
    ld [bc], a                                    ; $4a0c: $02
    ld [hl], e                                    ; $4a0d: $73
    rra                                           ; $4a0e: $1f
    ld [bc], a                                    ; $4a0f: $02
    sub e                                         ; $4a10: $93
    rra                                           ; $4a11: $1f
    ld [bc], a                                    ; $4a12: $02
    reti                                          ; $4a13: $d9


    rra                                           ; $4a14: $1f
    ld [bc], a                                    ; $4a15: $02
    add hl, bc                                    ; $4a16: $09
    jr nz, @+$04                                  ; $4a17: $20 $02

    ld sp, $0220                                  ; $4a19: $31 $20 $02
    ld [hl], b                                    ; $4a1c: $70
    jr nz, @+$04                                  ; $4a1d: $20 $02

    sub l                                         ; $4a1f: $95
    jr nz, @+$04                                  ; $4a20: $20 $02

    or b                                          ; $4a22: $b0
    jr nz, jr_02c_4a27                            ; $4a23: $20 $02

    jr nz, jr_02c_4a48                            ; $4a25: $20 $21

jr_02c_4a27:
    ld [bc], a                                    ; $4a27: $02
    ld d, d                                       ; $4a28: $52
    ld hl, $6b02                                  ; $4a29: $21 $02 $6b
    ld hl, $9902                                  ; $4a2c: $21 $02 $99
    ld hl, $bc02                                  ; $4a2f: $21 $02 $bc
    ld hl, $f102                                  ; $4a32: $21 $02 $f1
    ld hl, $1002                                  ; $4a35: $21 $02 $10
    ld [hl+], a                                   ; $4a38: $22
    ld [bc], a                                    ; $4a39: $02
    inc hl                                        ; $4a3a: $23
    ld [hl+], a                                   ; $4a3b: $22
    ld [bc], a                                    ; $4a3c: $02
    ld b, e                                       ; $4a3d: $43
    ld [hl+], a                                   ; $4a3e: $22
    ld [bc], a                                    ; $4a3f: $02
    ld h, a                                       ; $4a40: $67
    ld [hl+], a                                   ; $4a41: $22
    ld [bc], a                                    ; $4a42: $02
    ld a, l                                       ; $4a43: $7d
    ld [hl+], a                                   ; $4a44: $22
    ld [bc], a                                    ; $4a45: $02
    ret nc                                        ; $4a46: $d0

    ld [hl+], a                                   ; $4a47: $22

jr_02c_4a48:
    ld [bc], a                                    ; $4a48: $02
    jp hl                                         ; $4a49: $e9


    ld [hl+], a                                   ; $4a4a: $22
    ld [bc], a                                    ; $4a4b: $02
    jr c, jr_02c_4a71                             ; $4a4c: $38 $23

    ld [bc], a                                    ; $4a4e: $02
    ld c, e                                       ; $4a4f: $4b
    inc hl                                        ; $4a50: $23
    ld [bc], a                                    ; $4a51: $02
    ld l, l                                       ; $4a52: $6d
    inc hl                                        ; $4a53: $23
    ld [bc], a                                    ; $4a54: $02
    sub [hl]                                      ; $4a55: $96
    inc hl                                        ; $4a56: $23
    ld [bc], a                                    ; $4a57: $02
    and a                                         ; $4a58: $a7
    inc hl                                        ; $4a59: $23
    ld [bc], a                                    ; $4a5a: $02
    ret nz                                        ; $4a5b: $c0

    inc hl                                        ; $4a5c: $23
    ld [bc], a                                    ; $4a5d: $02
    ld a, [$0223]                                 ; $4a5e: $fa $23 $02
    rra                                           ; $4a61: $1f
    inc h                                         ; $4a62: $24
    ld [bc], a                                    ; $4a63: $02
    jr c, jr_02c_4a8a                             ; $4a64: $38 $24

    ld [bc], a                                    ; $4a66: $02
    ld h, b                                       ; $4a67: $60
    inc h                                         ; $4a68: $24
    ld [bc], a                                    ; $4a69: $02
    adc b                                         ; $4a6a: $88
    inc h                                         ; $4a6b: $24
    ld [bc], a                                    ; $4a6c: $02
    and e                                         ; $4a6d: $a3
    inc h                                         ; $4a6e: $24
    ld [bc], a                                    ; $4a6f: $02
    cp b                                          ; $4a70: $b8

jr_02c_4a71:
    inc h                                         ; $4a71: $24
    ld [bc], a                                    ; $4a72: $02
    pop de                                        ; $4a73: $d1
    inc h                                         ; $4a74: $24
    ld [bc], a                                    ; $4a75: $02
    db $db                                        ; $4a76: $db
    inc h                                         ; $4a77: $24
    ld [bc], a                                    ; $4a78: $02
    ld [$0224], a                                 ; $4a79: $ea $24 $02
    ld hl, sp+$24                                 ; $4a7c: $f8 $24
    ld [bc], a                                    ; $4a7e: $02
    rlca                                          ; $4a7f: $07
    dec h                                         ; $4a80: $25
    ld [bc], a                                    ; $4a81: $02
    dec e                                         ; $4a82: $1d
    dec h                                         ; $4a83: $25
    ld [bc], a                                    ; $4a84: $02
    dec [hl]                                      ; $4a85: $35
    dec h                                         ; $4a86: $25
    ld [bc], a                                    ; $4a87: $02
    inc a                                         ; $4a88: $3c
    dec h                                         ; $4a89: $25

jr_02c_4a8a:
    ld [bc], a                                    ; $4a8a: $02
    ld d, e                                       ; $4a8b: $53
    dec h                                         ; $4a8c: $25
    ld [bc], a                                    ; $4a8d: $02
    halt                                          ; $4a8e: $76
    dec h                                         ; $4a8f: $25
    ld [bc], a                                    ; $4a90: $02
    or e                                          ; $4a91: $b3
    dec h                                         ; $4a92: $25
    ld [bc], a                                    ; $4a93: $02
    ld [$0226], sp                                ; $4a94: $08 $26 $02
    add hl, sp                                    ; $4a97: $39
    ld h, $02                                     ; $4a98: $26 $02
    ld d, l                                       ; $4a9a: $55
    ld h, $02                                     ; $4a9b: $26 $02
    ld h, d                                       ; $4a9d: $62
    ld h, $02                                     ; $4a9e: $26 $02
    add a                                         ; $4aa0: $87
    ld h, $02                                     ; $4aa1: $26 $02
    cp l                                          ; $4aa3: $bd
    ld h, $02                                     ; $4aa4: $26 $02
    pop af                                        ; $4aa6: $f1
    ld h, $02                                     ; $4aa7: $26 $02
    ld [hl+], a                                   ; $4aa9: $22
    daa                                           ; $4aaa: $27
    ld [bc], a                                    ; $4aab: $02
    ld e, h                                       ; $4aac: $5c
    daa                                           ; $4aad: $27
    ld [bc], a                                    ; $4aae: $02

Jump_02c_4aaf:
    ld l, d                                       ; $4aaf: $6a
    daa                                           ; $4ab0: $27
    ld [bc], a                                    ; $4ab1: $02
    ld a, [hl]                                    ; $4ab2: $7e
    daa                                           ; $4ab3: $27
    ld [bc], a                                    ; $4ab4: $02
    sbc d                                         ; $4ab5: $9a
    daa                                           ; $4ab6: $27
    ld [bc], a                                    ; $4ab7: $02
    ld [c], a                                     ; $4ab8: $e2
    daa                                           ; $4ab9: $27
    ld [bc], a                                    ; $4aba: $02
    push af                                       ; $4abb: $f5
    daa                                           ; $4abc: $27
    ld [bc], a                                    ; $4abd: $02
    ld [bc], a                                    ; $4abe: $02
    jr z, jr_02c_4ac3                             ; $4abf: $28 $02

    jr z, jr_02c_4aeb                             ; $4ac1: $28 $28

jr_02c_4ac3:
    ld [bc], a                                    ; $4ac3: $02
    ld b, d                                       ; $4ac4: $42
    jr z, @+$04                                   ; $4ac5: $28 $02

    ld d, c                                       ; $4ac7: $51
    jr z, @+$04                                   ; $4ac8: $28 $02

    ld a, a                                       ; $4aca: $7f
    jr z, @+$04                                   ; $4acb: $28 $02

    and e                                         ; $4acd: $a3
    jr z, @+$04                                   ; $4ace: $28 $02

    pop af                                        ; $4ad0: $f1
    jr z, jr_02c_4ad5                             ; $4ad1: $28 $02

    inc [hl]                                      ; $4ad3: $34
    add hl, hl                                    ; $4ad4: $29

jr_02c_4ad5:
    ld [bc], a                                    ; $4ad5: $02
    add b                                         ; $4ad6: $80
    add hl, hl                                    ; $4ad7: $29
    ld [bc], a                                    ; $4ad8: $02
    or a                                          ; $4ad9: $b7
    add hl, hl                                    ; $4ada: $29
    ld [bc], a                                    ; $4adb: $02
    jp nc, Jump_000_0229                          ; $4adc: $d2 $29 $02

    ei                                            ; $4adf: $fb
    add hl, hl                                    ; $4ae0: $29
    ld [bc], a                                    ; $4ae1: $02
    inc hl                                        ; $4ae2: $23
    ld a, [hl+]                                   ; $4ae3: $2a
    ld [bc], a                                    ; $4ae4: $02
    ld c, a                                       ; $4ae5: $4f
    ld a, [hl+]                                   ; $4ae6: $2a
    ld [bc], a                                    ; $4ae7: $02
    ld h, h                                       ; $4ae8: $64
    ld a, [hl+]                                   ; $4ae9: $2a
    ld [bc], a                                    ; $4aea: $02

jr_02c_4aeb:
    add [hl]                                      ; $4aeb: $86
    ld a, [hl+]                                   ; $4aec: $2a
    ld [bc], a                                    ; $4aed: $02
    sbc c                                         ; $4aee: $99
    ld a, [hl+]                                   ; $4aef: $2a
    ld [bc], a                                    ; $4af0: $02
    xor d                                         ; $4af1: $aa

Jump_02c_4af2:
    ld a, [hl+]                                   ; $4af2: $2a
    ld [bc], a                                    ; $4af3: $02
    ret nc                                        ; $4af4: $d0

    ld a, [hl+]                                   ; $4af5: $2a
    ld [bc], a                                    ; $4af6: $02
    db $f4                                        ; $4af7: $f4
    ld a, [hl+]                                   ; $4af8: $2a
    ld [bc], a                                    ; $4af9: $02
    dec h                                         ; $4afa: $25
    dec hl                                        ; $4afb: $2b
    ld [bc], a                                    ; $4afc: $02
    inc sp                                        ; $4afd: $33
    dec hl                                        ; $4afe: $2b
    ld [bc], a                                    ; $4aff: $02
    ld d, h                                       ; $4b00: $54
    dec hl                                        ; $4b01: $2b
    ld [bc], a                                    ; $4b02: $02
    ld h, e                                       ; $4b03: $63
    dec hl                                        ; $4b04: $2b
    ld [bc], a                                    ; $4b05: $02
    ld a, [hl]                                    ; $4b06: $7e
    dec hl                                        ; $4b07: $2b
    ld [bc], a                                    ; $4b08: $02
    adc l                                         ; $4b09: $8d
    dec hl                                        ; $4b0a: $2b
    ld [bc], a                                    ; $4b0b: $02
    cp d                                          ; $4b0c: $ba
    dec hl                                        ; $4b0d: $2b
    ld [bc], a                                    ; $4b0e: $02
    db $dd                                        ; $4b0f: $dd
    dec hl                                        ; $4b10: $2b
    ld [bc], a                                    ; $4b11: $02
    di                                            ; $4b12: $f3
    dec hl                                        ; $4b13: $2b
    ld [bc], a                                    ; $4b14: $02
    rra                                           ; $4b15: $1f
    inc l                                         ; $4b16: $2c
    ld [bc], a                                    ; $4b17: $02
    dec hl                                        ; $4b18: $2b
    inc l                                         ; $4b19: $2c
    ld [bc], a                                    ; $4b1a: $02
    ld b, l                                       ; $4b1b: $45
    inc l                                         ; $4b1c: $2c
    ld [bc], a                                    ; $4b1d: $02
    ld l, e                                       ; $4b1e: $6b
    inc l                                         ; $4b1f: $2c
    ld [bc], a                                    ; $4b20: $02
    sub l                                         ; $4b21: $95
    inc l                                         ; $4b22: $2c
    ld [bc], a                                    ; $4b23: $02
    ret z                                         ; $4b24: $c8

    inc l                                         ; $4b25: $2c
    ld [bc], a                                    ; $4b26: $02
    sbc $2c                                       ; $4b27: $de $2c
    ld [bc], a                                    ; $4b29: $02
    nop                                           ; $4b2a: $00
    dec l                                         ; $4b2b: $2d
    ld [bc], a                                    ; $4b2c: $02
    inc hl                                        ; $4b2d: $23
    dec l                                         ; $4b2e: $2d
    ld [bc], a                                    ; $4b2f: $02
    ld [hl], $2d                                  ; $4b30: $36 $2d
    ld [bc], a                                    ; $4b32: $02
    ld e, d                                       ; $4b33: $5a
    dec l                                         ; $4b34: $2d
    ld [bc], a                                    ; $4b35: $02
    ld a, b                                       ; $4b36: $78
    dec l                                         ; $4b37: $2d
    ld [bc], a                                    ; $4b38: $02
    sub h                                         ; $4b39: $94
    dec l                                         ; $4b3a: $2d
    ld [bc], a                                    ; $4b3b: $02
    or a                                          ; $4b3c: $b7
    dec l                                         ; $4b3d: $2d
    ld [bc], a                                    ; $4b3e: $02
    sub $2d                                       ; $4b3f: $d6 $2d
    ld [bc], a                                    ; $4b41: $02
    ld a, [c]                                     ; $4b42: $f2
    dec l                                         ; $4b43: $2d
    ld [bc], a                                    ; $4b44: $02
    dec c                                         ; $4b45: $0d
    ld l, $02                                     ; $4b46: $2e $02
    dec l                                         ; $4b48: $2d
    ld l, $02                                     ; $4b49: $2e $02
    ld l, b                                       ; $4b4b: $68
    ld l, $02                                     ; $4b4c: $2e $02
    sbc b                                         ; $4b4e: $98
    ld l, $02                                     ; $4b4f: $2e $02
    cp l                                          ; $4b51: $bd
    ld l, $02                                     ; $4b52: $2e $02
    ld bc, $022f                                  ; $4b54: $01 $2f $02
    add hl, bc                                    ; $4b57: $09
    cpl                                           ; $4b58: $2f
    ld [bc], a                                    ; $4b59: $02
    jr nz, jr_02c_4b8b                            ; $4b5a: $20 $2f

    ld [bc], a                                    ; $4b5c: $02
    ld c, l                                       ; $4b5d: $4d
    cpl                                           ; $4b5e: $2f
    ld [bc], a                                    ; $4b5f: $02
    ld l, e                                       ; $4b60: $6b
    cpl                                           ; $4b61: $2f
    ld [bc], a                                    ; $4b62: $02
    cp a                                          ; $4b63: $bf
    cpl                                           ; $4b64: $2f
    ld [bc], a                                    ; $4b65: $02
    and $2f                                       ; $4b66: $e6 $2f
    ld [bc], a                                    ; $4b68: $02
    ld [$0230], sp                                ; $4b69: $08 $30 $02
    inc h                                         ; $4b6c: $24
    jr nc, @+$04                                  ; $4b6d: $30 $02

    ld c, l                                       ; $4b6f: $4d
    jr nc, @+$04                                  ; $4b70: $30 $02

    ld e, [hl]                                    ; $4b72: $5e
    jr nc, @+$04                                  ; $4b73: $30 $02

    halt                                          ; $4b75: $76
    jr nc, @+$04                                  ; $4b76: $30 $02

    ld a, [hl]                                    ; $4b78: $7e
    jr nc, @+$04                                  ; $4b79: $30 $02

    sub [hl]                                      ; $4b7b: $96
    jr nc, @+$04                                  ; $4b7c: $30 $02

    call nc, $0230                                ; $4b7e: $d4 $30 $02
    db $dd                                        ; $4b81: $dd
    jr nc, @+$04                                  ; $4b82: $30 $02

    push af                                       ; $4b84: $f5
    jr nc, jr_02c_4b89                            ; $4b85: $30 $02

    ld e, $31                                     ; $4b87: $1e $31

jr_02c_4b89:
    ld [bc], a                                    ; $4b89: $02
    ld c, e                                       ; $4b8a: $4b

jr_02c_4b8b:
    ld sp, $5d02                                  ; $4b8b: $31 $02 $5d
    ld sp, $6702                                  ; $4b8e: $31 $02 $67
    ld sp, $8c02                                  ; $4b91: $31 $02 $8c
    ld sp, $aa02                                  ; $4b94: $31 $02 $aa
    ld sp, $d502                                  ; $4b97: $31 $02 $d5
    ld sp, $dd02                                  ; $4b9a: $31 $02 $dd
    ld sp, $f202                                  ; $4b9d: $31 $02 $f2
    ld sp, $1502                                  ; $4ba0: $31 $02 $15
    ld [hl-], a                                   ; $4ba3: $32
    ld [bc], a                                    ; $4ba4: $02
    dec l                                         ; $4ba5: $2d
    ld [hl-], a                                   ; $4ba6: $32
    ld [bc], a                                    ; $4ba7: $02
    and [hl]                                      ; $4ba8: $a6
    ld [hl-], a                                   ; $4ba9: $32
    ld [bc], a                                    ; $4baa: $02
    cp c                                          ; $4bab: $b9
    ld [hl-], a                                   ; $4bac: $32
    ld [bc], a                                    ; $4bad: $02
    ret nz                                        ; $4bae: $c0

    ld [hl-], a                                   ; $4baf: $32
    ld [bc], a                                    ; $4bb0: $02
    jp c, Jump_000_0232                           ; $4bb1: $da $32 $02

    ld [hl+], a                                   ; $4bb4: $22
    inc sp                                        ; $4bb5: $33
    ld [bc], a                                    ; $4bb6: $02
    ld c, a                                       ; $4bb7: $4f
    inc sp                                        ; $4bb8: $33
    ld [bc], a                                    ; $4bb9: $02
    ld h, [hl]                                    ; $4bba: $66
    inc sp                                        ; $4bbb: $33
    ld [bc], a                                    ; $4bbc: $02
    add e                                         ; $4bbd: $83
    inc sp                                        ; $4bbe: $33
    ld [bc], a                                    ; $4bbf: $02
    sbc h                                         ; $4bc0: $9c
    inc sp                                        ; $4bc1: $33
    ld [bc], a                                    ; $4bc2: $02
    add $33                                       ; $4bc3: $c6 $33
    ld [bc], a                                    ; $4bc5: $02
    sbc $33                                       ; $4bc6: $de $33
    ld [bc], a                                    ; $4bc8: $02
    or $33                                        ; $4bc9: $f6 $33
    ld [bc], a                                    ; $4bcb: $02
    ld de, $0234                                  ; $4bcc: $11 $34 $02
    dec h                                         ; $4bcf: $25
    inc [hl]                                      ; $4bd0: $34
    ld [bc], a                                    ; $4bd1: $02
    inc [hl]                                      ; $4bd2: $34
    inc [hl]                                      ; $4bd3: $34
    ld [bc], a                                    ; $4bd4: $02
    ld b, [hl]                                    ; $4bd5: $46
    inc [hl]                                      ; $4bd6: $34
    ld [bc], a                                    ; $4bd7: $02
    ld e, l                                       ; $4bd8: $5d
    inc [hl]                                      ; $4bd9: $34
    ld [bc], a                                    ; $4bda: $02
    ld l, d                                       ; $4bdb: $6a
    inc [hl]                                      ; $4bdc: $34
    ld [bc], a                                    ; $4bdd: $02
    adc b                                         ; $4bde: $88
    inc [hl]                                      ; $4bdf: $34
    ld [bc], a                                    ; $4be0: $02
    or d                                          ; $4be1: $b2
    inc [hl]                                      ; $4be2: $34
    ld [bc], a                                    ; $4be3: $02
    db $e3                                        ; $4be4: $e3
    inc [hl]                                      ; $4be5: $34
    ld [bc], a                                    ; $4be6: $02
    db $fd                                        ; $4be7: $fd
    inc [hl]                                      ; $4be8: $34
    ld [bc], a                                    ; $4be9: $02
    scf                                           ; $4bea: $37
    dec [hl]                                      ; $4beb: $35
    ld [bc], a                                    ; $4bec: $02
    ld c, h                                       ; $4bed: $4c
    dec [hl]                                      ; $4bee: $35
    ld [bc], a                                    ; $4bef: $02
    ld h, l                                       ; $4bf0: $65
    dec [hl]                                      ; $4bf1: $35
    ld [bc], a                                    ; $4bf2: $02
    and d                                         ; $4bf3: $a2
    dec [hl]                                      ; $4bf4: $35
    ld [bc], a                                    ; $4bf5: $02
    cp l                                          ; $4bf6: $bd
    dec [hl]                                      ; $4bf7: $35
    ld [bc], a                                    ; $4bf8: $02
    rst $10                                       ; $4bf9: $d7
    dec [hl]                                      ; $4bfa: $35
    ld [bc], a                                    ; $4bfb: $02
    dec e                                         ; $4bfc: $1d
    ld [hl], $02                                  ; $4bfd: $36 $02
    ccf                                           ; $4bff: $3f
    ld [hl], $02                                  ; $4c00: $36 $02
    add h                                         ; $4c02: $84
    ld [hl], $02                                  ; $4c03: $36 $02
    jp nz, Jump_000_0236                          ; $4c05: $c2 $36 $02

    adc $36                                       ; $4c08: $ce $36
    ld [bc], a                                    ; $4c0a: $02
    di                                            ; $4c0b: $f3
    ld [hl], $02                                  ; $4c0c: $36 $02
    rra                                           ; $4c0e: $1f
    scf                                           ; $4c0f: $37
    ld [bc], a                                    ; $4c10: $02
    jr c, jr_02c_4c4a                             ; $4c11: $38 $37

    ld [bc], a                                    ; $4c13: $02
    ld b, c                                       ; $4c14: $41
    scf                                           ; $4c15: $37
    ld [bc], a                                    ; $4c16: $02
    ld h, e                                       ; $4c17: $63
    scf                                           ; $4c18: $37
    ld [bc], a                                    ; $4c19: $02
    ld [hl], h                                    ; $4c1a: $74
    scf                                           ; $4c1b: $37
    ld [bc], a                                    ; $4c1c: $02
    sub l                                         ; $4c1d: $95
    scf                                           ; $4c1e: $37
    ld [bc], a                                    ; $4c1f: $02
    cp h                                          ; $4c20: $bc
    scf                                           ; $4c21: $37
    ld [bc], a                                    ; $4c22: $02
    rst $10                                       ; $4c23: $d7
    scf                                           ; $4c24: $37
    ld [bc], a                                    ; $4c25: $02
    ld [$0237], a                                 ; $4c26: $ea $37 $02
    inc d                                         ; $4c29: $14
    jr c, @+$04                                   ; $4c2a: $38 $02

    inc h                                         ; $4c2c: $24
    jr c, @+$04                                   ; $4c2d: $38 $02

    ld l, [hl]                                    ; $4c2f: $6e
    jr c, @+$04                                   ; $4c30: $38 $02

    and b                                         ; $4c32: $a0
    jr c, @+$04                                   ; $4c33: $38 $02

    db $ed                                        ; $4c35: $ed
    jr c, @+$04                                   ; $4c36: $38 $02

    ld a, [$0238]                                 ; $4c38: $fa $38 $02
    rrca                                          ; $4c3b: $0f
    add hl, sp                                    ; $4c3c: $39
    ld [bc], a                                    ; $4c3d: $02
    dec [hl]                                      ; $4c3e: $35
    add hl, sp                                    ; $4c3f: $39
    ld [bc], a                                    ; $4c40: $02
    ld l, h                                       ; $4c41: $6c
    add hl, sp                                    ; $4c42: $39
    ld [bc], a                                    ; $4c43: $02
    adc a                                         ; $4c44: $8f
    add hl, sp                                    ; $4c45: $39
    ld [bc], a                                    ; $4c46: $02
    call z, $0239                                 ; $4c47: $cc $39 $02

jr_02c_4c4a:
    db $db                                        ; $4c4a: $db
    add hl, sp                                    ; $4c4b: $39
    ld [bc], a                                    ; $4c4c: $02
    jr jr_02c_4c89                                ; $4c4d: $18 $3a

    ld [bc], a                                    ; $4c4f: $02
    ld b, h                                       ; $4c50: $44
    ld a, [hl-]                                   ; $4c51: $3a
    ld [bc], a                                    ; $4c52: $02
    ld e, a                                       ; $4c53: $5f
    ld a, [hl-]                                   ; $4c54: $3a
    ld [bc], a                                    ; $4c55: $02
    adc e                                         ; $4c56: $8b
    ld a, [hl-]                                   ; $4c57: $3a
    ld [bc], a                                    ; $4c58: $02
    or [hl]                                       ; $4c59: $b6
    ld a, [hl-]                                   ; $4c5a: $3a
    ld [bc], a                                    ; $4c5b: $02
    di                                            ; $4c5c: $f3
    ld a, [hl-]                                   ; $4c5d: $3a
    ld [bc], a                                    ; $4c5e: $02
    add hl, de                                    ; $4c5f: $19
    dec sp                                        ; $4c60: $3b
    ld [bc], a                                    ; $4c61: $02
    cpl                                           ; $4c62: $2f
    dec sp                                        ; $4c63: $3b
    ld [bc], a                                    ; $4c64: $02
    ld [hl], e                                    ; $4c65: $73
    dec sp                                        ; $4c66: $3b
    ld [bc], a                                    ; $4c67: $02
    sub d                                         ; $4c68: $92
    dec sp                                        ; $4c69: $3b
    ld [bc], a                                    ; $4c6a: $02
    xor c                                         ; $4c6b: $a9
    dec sp                                        ; $4c6c: $3b
    ld [bc], a                                    ; $4c6d: $02
    xor l                                         ; $4c6e: $ad
    dec sp                                        ; $4c6f: $3b
    ld [bc], a                                    ; $4c70: $02
    pop hl                                        ; $4c71: $e1
    dec sp                                        ; $4c72: $3b
    ld [bc], a                                    ; $4c73: $02
    ld sp, hl                                     ; $4c74: $f9
    dec sp                                        ; $4c75: $3b
    ld [bc], a                                    ; $4c76: $02
    ld a, [bc]                                    ; $4c77: $0a
    inc a                                         ; $4c78: $3c
    ld [bc], a                                    ; $4c79: $02
    rra                                           ; $4c7a: $1f
    inc a                                         ; $4c7b: $3c
    ld [bc], a                                    ; $4c7c: $02
    ld b, d                                       ; $4c7d: $42
    inc a                                         ; $4c7e: $3c
    ld [bc], a                                    ; $4c7f: $02
    ld e, e                                       ; $4c80: $5b
    inc a                                         ; $4c81: $3c
    ld [bc], a                                    ; $4c82: $02
    ld a, e                                       ; $4c83: $7b
    inc a                                         ; $4c84: $3c
    ld [bc], a                                    ; $4c85: $02
    add [hl]                                      ; $4c86: $86
    inc a                                         ; $4c87: $3c
    ld [bc], a                                    ; $4c88: $02

jr_02c_4c89:
    and c                                         ; $4c89: $a1
    inc a                                         ; $4c8a: $3c
    ld [bc], a                                    ; $4c8b: $02
    call nz, $023c                                ; $4c8c: $c4 $3c $02
    jr nz, jr_02c_4cce                            ; $4c8f: $20 $3d

    ld [bc], a                                    ; $4c91: $02
    ld [hl], $3d                                  ; $4c92: $36 $3d
    ld [bc], a                                    ; $4c94: $02
    adc a                                         ; $4c95: $8f
    dec a                                         ; $4c96: $3d
    ld [bc], a                                    ; $4c97: $02
    cp d                                          ; $4c98: $ba
    dec a                                         ; $4c99: $3d
    ld [bc], a                                    ; $4c9a: $02
    push hl                                       ; $4c9b: $e5
    dec a                                         ; $4c9c: $3d
    ld [bc], a                                    ; $4c9d: $02
    ldh a, [$3d]                                  ; $4c9e: $f0 $3d
    ld [bc], a                                    ; $4ca0: $02
    inc de                                        ; $4ca1: $13
    ld a, $02                                     ; $4ca2: $3e $02
    ld e, $3e                                     ; $4ca4: $1e $3e
    ld [bc], a                                    ; $4ca6: $02
    ld b, c                                       ; $4ca7: $41
    ld a, $02                                     ; $4ca8: $3e $02
    ld d, d                                       ; $4caa: $52
    ld a, $02                                     ; $4cab: $3e $02
    ld l, e                                       ; $4cad: $6b
    ld a, $02                                     ; $4cae: $3e $02
    xor [hl]                                      ; $4cb0: $ae
    ld a, $02                                     ; $4cb1: $3e $02
    jp nc, $023e                                  ; $4cb3: $d2 $3e $02

    db $ec                                        ; $4cb6: $ec
    ld a, $02                                     ; $4cb7: $3e $02
    rst $38                                       ; $4cb9: $ff
    ld a, $02                                     ; $4cba: $3e $02
    ld a, [de]                                    ; $4cbc: $1a
    ccf                                           ; $4cbd: $3f
    ld [bc], a                                    ; $4cbe: $02
    inc h                                         ; $4cbf: $24
    ccf                                           ; $4cc0: $3f
    ld [bc], a                                    ; $4cc1: $02
    jr nc, jr_02c_4d03                            ; $4cc2: $30 $3f

    ld [bc], a                                    ; $4cc4: $02
    add b                                         ; $4cc5: $80
    ccf                                           ; $4cc6: $3f
    ld [bc], a                                    ; $4cc7: $02
    sub c                                         ; $4cc8: $91
    ccf                                           ; $4cc9: $3f
    ld [bc], a                                    ; $4cca: $02
    and c                                         ; $4ccb: $a1
    ccf                                           ; $4ccc: $3f
    ld [bc], a                                    ; $4ccd: $02

jr_02c_4cce:
    xor d                                         ; $4cce: $aa
    ccf                                           ; $4ccf: $3f
    inc bc                                        ; $4cd0: $03
    ld bc, $0300                                  ; $4cd1: $01 $00 $03
    ld c, a                                       ; $4cd4: $4f
    nop                                           ; $4cd5: $00
    inc bc                                        ; $4cd6: $03
    ld [hl], b                                    ; $4cd7: $70
    nop                                           ; $4cd8: $00
    inc bc                                        ; $4cd9: $03
    add e                                         ; $4cda: $83
    nop                                           ; $4cdb: $00
    inc bc                                        ; $4cdc: $03
    adc h                                         ; $4cdd: $8c
    nop                                           ; $4cde: $00
    inc bc                                        ; $4cdf: $03
    rlc b                                         ; $4ce0: $cb $00
    inc bc                                        ; $4ce2: $03
    push hl                                       ; $4ce3: $e5
    nop                                           ; $4ce4: $00
    inc bc                                        ; $4ce5: $03
    or $00                                        ; $4ce6: $f6 $00
    inc bc                                        ; $4ce8: $03
    inc bc                                        ; $4ce9: $03
    ld bc, $2e03                                  ; $4cea: $01 $03 $2e
    ld bc, $4103                                  ; $4ced: $01 $03 $41
    ld bc, $6b03                                  ; $4cf0: $01 $03 $6b
    ld bc, $9a03                                  ; $4cf3: $01 $03 $9a
    ld bc, $b003                                  ; $4cf6: $01 $03 $b0
    ld bc, $fb03                                  ; $4cf9: $01 $03 $fb
    ld bc, $2103                                  ; $4cfc: $01 $03 $21
    ld [bc], a                                    ; $4cff: $02
    inc bc                                        ; $4d00: $03
    ld d, l                                       ; $4d01: $55
    ld [bc], a                                    ; $4d02: $02

jr_02c_4d03:
    inc bc                                        ; $4d03: $03
    ld a, b                                       ; $4d04: $78
    ld [bc], a                                    ; $4d05: $02
    inc bc                                        ; $4d06: $03
    sbc b                                         ; $4d07: $98
    ld [bc], a                                    ; $4d08: $02
    inc bc                                        ; $4d09: $03
    push de                                       ; $4d0a: $d5
    ld [bc], a                                    ; $4d0b: $02
    inc bc                                        ; $4d0c: $03
    rst $18                                       ; $4d0d: $df
    ld [bc], a                                    ; $4d0e: $02
    inc bc                                        ; $4d0f: $03
    ld l, e                                       ; $4d10: $6b
    inc bc                                        ; $4d11: $03
    inc bc                                        ; $4d12: $03
    ld [hl], l                                    ; $4d13: $75
    inc bc                                        ; $4d14: $03
    inc bc                                        ; $4d15: $03
    adc h                                         ; $4d16: $8c
    inc bc                                        ; $4d17: $03
    inc bc                                        ; $4d18: $03
    and h                                         ; $4d19: $a4
    inc bc                                        ; $4d1a: $03
    inc bc                                        ; $4d1b: $03
    or l                                          ; $4d1c: $b5
    inc bc                                        ; $4d1d: $03
    inc bc                                        ; $4d1e: $03
    pop af                                        ; $4d1f: $f1
    inc bc                                        ; $4d20: $03
    inc bc                                        ; $4d21: $03
    cpl                                           ; $4d22: $2f
    inc b                                         ; $4d23: $04
    inc bc                                        ; $4d24: $03
    ld c, d                                       ; $4d25: $4a
    inc b                                         ; $4d26: $04
    inc bc                                        ; $4d27: $03
    sub d                                         ; $4d28: $92
    inc b                                         ; $4d29: $04
    inc bc                                        ; $4d2a: $03
    cp l                                          ; $4d2b: $bd
    inc b                                         ; $4d2c: $04
    inc bc                                        ; $4d2d: $03
    rst $08                                       ; $4d2e: $cf
    inc b                                         ; $4d2f: $04
    inc bc                                        ; $4d30: $03
    db $ed                                        ; $4d31: $ed
    inc b                                         ; $4d32: $04
    inc bc                                        ; $4d33: $03
    inc de                                        ; $4d34: $13
    dec b                                         ; $4d35: $05
    inc bc                                        ; $4d36: $03
    ld c, d                                       ; $4d37: $4a
    dec b                                         ; $4d38: $05
    inc bc                                        ; $4d39: $03
    ld [hl], b                                    ; $4d3a: $70
    dec b                                         ; $4d3b: $05
    inc bc                                        ; $4d3c: $03
    sub b                                         ; $4d3d: $90
    dec b                                         ; $4d3e: $05
    inc bc                                        ; $4d3f: $03
    sub [hl]                                      ; $4d40: $96
    dec b                                         ; $4d41: $05
    inc bc                                        ; $4d42: $03
    ei                                            ; $4d43: $fb
    dec b                                         ; $4d44: $05
    inc bc                                        ; $4d45: $03
    ld [bc], a                                    ; $4d46: $02
    ld b, $03                                     ; $4d47: $06 $03
    inc sp                                        ; $4d49: $33
    ld b, $03                                     ; $4d4a: $06 $03
    ld h, b                                       ; $4d4c: $60
    ld b, $03                                     ; $4d4d: $06 $03
    ld [hl], l                                    ; $4d4f: $75
    ld b, $03                                     ; $4d50: $06 $03
    adc a                                         ; $4d52: $8f
    ld b, $03                                     ; $4d53: $06 $03
    sbc h                                         ; $4d55: $9c
    ld b, $03                                     ; $4d56: $06 $03
    add $06                                       ; $4d58: $c6 $06
    inc bc                                        ; $4d5a: $03
    dec h                                         ; $4d5b: $25
    rlca                                          ; $4d5c: $07
    inc bc                                        ; $4d5d: $03
    jr c, jr_02c_4d67                             ; $4d5e: $38 $07

    inc bc                                        ; $4d60: $03
    ld c, c                                       ; $4d61: $49
    rlca                                          ; $4d62: $07
    inc bc                                        ; $4d63: $03
    ld d, c                                       ; $4d64: $51
    rlca                                          ; $4d65: $07
    inc bc                                        ; $4d66: $03

jr_02c_4d67:
    add b                                         ; $4d67: $80
    rlca                                          ; $4d68: $07
    inc bc                                        ; $4d69: $03
    and a                                         ; $4d6a: $a7
    rlca                                          ; $4d6b: $07
    inc bc                                        ; $4d6c: $03
    call $0307                                    ; $4d6d: $cd $07 $03
    dec h                                         ; $4d70: $25
    ld [$4c03], sp                                ; $4d71: $08 $03 $4c
    ld [$5e03], sp                                ; $4d74: $08 $03 $5e
    ld [$8403], sp                                ; $4d77: $08 $03 $84
    ld [$e903], sp                                ; $4d7a: $08 $03 $e9
    ld [$1c03], sp                                ; $4d7d: $08 $03 $1c
    add hl, bc                                    ; $4d80: $09
    inc bc                                        ; $4d81: $03
    ld c, a                                       ; $4d82: $4f
    add hl, bc                                    ; $4d83: $09
    inc bc                                        ; $4d84: $03
    ld a, e                                       ; $4d85: $7b
    add hl, bc                                    ; $4d86: $09
    inc bc                                        ; $4d87: $03
    sub a                                         ; $4d88: $97
    add hl, bc                                    ; $4d89: $09
    inc bc                                        ; $4d8a: $03
    or d                                          ; $4d8b: $b2
    add hl, bc                                    ; $4d8c: $09
    inc bc                                        ; $4d8d: $03
    cp d                                          ; $4d8e: $ba
    add hl, bc                                    ; $4d8f: $09
    inc bc                                        ; $4d90: $03
    db $ed                                        ; $4d91: $ed
    add hl, bc                                    ; $4d92: $09
    inc bc                                        ; $4d93: $03
    inc bc                                        ; $4d94: $03
    ld a, [bc]                                    ; $4d95: $0a
    inc bc                                        ; $4d96: $03
    ld sp, $030a                                  ; $4d97: $31 $0a $03
    ld c, c                                       ; $4d9a: $49
    ld a, [bc]                                    ; $4d9b: $0a
    inc bc                                        ; $4d9c: $03
    add h                                         ; $4d9d: $84
    ld a, [bc]                                    ; $4d9e: $0a
    inc bc                                        ; $4d9f: $03
    sbc c                                         ; $4da0: $99
    ld a, [bc]                                    ; $4da1: $0a
    inc bc                                        ; $4da2: $03
    or h                                          ; $4da3: $b4
    ld a, [bc]                                    ; $4da4: $0a
    inc bc                                        ; $4da5: $03
    cp h                                          ; $4da6: $bc
    ld a, [bc]                                    ; $4da7: $0a
    inc bc                                        ; $4da8: $03
    adc [hl]                                      ; $4da9: $8e
    dec bc                                        ; $4daa: $0b
    inc bc                                        ; $4dab: $03
    sbc c                                         ; $4dac: $99
    dec bc                                        ; $4dad: $0b
    inc bc                                        ; $4dae: $03
    dec d                                         ; $4daf: $15
    inc c                                         ; $4db0: $0c
    inc bc                                        ; $4db1: $03
    add hl, sp                                    ; $4db2: $39
    inc c                                         ; $4db3: $0c
    inc bc                                        ; $4db4: $03
    ld h, a                                       ; $4db5: $67
    inc c                                         ; $4db6: $0c
    inc bc                                        ; $4db7: $03
    add h                                         ; $4db8: $84
    inc c                                         ; $4db9: $0c
    inc bc                                        ; $4dba: $03
    rst $00                                       ; $4dbb: $c7
    inc c                                         ; $4dbc: $0c
    inc bc                                        ; $4dbd: $03
    ldh [$0c], a                                  ; $4dbe: $e0 $0c
    inc bc                                        ; $4dc0: $03
    db $ec                                        ; $4dc1: $ec
    inc c                                         ; $4dc2: $0c
    inc bc                                        ; $4dc3: $03
    db $f4                                        ; $4dc4: $f4
    inc c                                         ; $4dc5: $0c
    inc bc                                        ; $4dc6: $03
    ld d, $0d                                     ; $4dc7: $16 $0d
    inc bc                                        ; $4dc9: $03
    daa                                           ; $4dca: $27
    dec c                                         ; $4dcb: $0d
    inc bc                                        ; $4dcc: $03
    ld c, l                                       ; $4dcd: $4d
    dec c                                         ; $4dce: $0d
    inc bc                                        ; $4dcf: $03
    ld [hl], e                                    ; $4dd0: $73
    dec c                                         ; $4dd1: $0d
    inc bc                                        ; $4dd2: $03
    adc b                                         ; $4dd3: $88
    dec c                                         ; $4dd4: $0d
    inc bc                                        ; $4dd5: $03
    sbc b                                         ; $4dd6: $98
    dec c                                         ; $4dd7: $0d
    inc bc                                        ; $4dd8: $03
    reti                                          ; $4dd9: $d9


    dec c                                         ; $4dda: $0d
    inc bc                                        ; $4ddb: $03
    pop af                                        ; $4ddc: $f1
    dec c                                         ; $4ddd: $0d
    inc bc                                        ; $4dde: $03
    inc e                                         ; $4ddf: $1c
    ld c, $03                                     ; $4de0: $0e $03
    dec sp                                        ; $4de2: $3b
    ld c, $03                                     ; $4de3: $0e $03
    ld l, c                                       ; $4de5: $69
    ld c, $03                                     ; $4de6: $0e $03
    sub [hl]                                      ; $4de8: $96
    ld c, $03                                     ; $4de9: $0e $03
    ret z                                         ; $4deb: $c8

    ld c, $03                                     ; $4dec: $0e $03
    ret c                                         ; $4dee: $d8

    ld c, $03                                     ; $4def: $0e $03
    pop hl                                        ; $4df1: $e1
    ld c, $03                                     ; $4df2: $0e $03
    ld sp, hl                                     ; $4df4: $f9
    ld c, $03                                     ; $4df5: $0e $03
    ld e, $0f                                     ; $4df7: $1e $0f
    inc bc                                        ; $4df9: $03
    ld b, h                                       ; $4dfa: $44
    rrca                                          ; $4dfb: $0f
    inc bc                                        ; $4dfc: $03
    ld d, l                                       ; $4dfd: $55
    rrca                                          ; $4dfe: $0f
    inc bc                                        ; $4dff: $03
    ld a, h                                       ; $4e00: $7c
    rrca                                          ; $4e01: $0f
    inc bc                                        ; $4e02: $03
    xor e                                         ; $4e03: $ab
    rrca                                          ; $4e04: $0f
    inc bc                                        ; $4e05: $03
    ret c                                         ; $4e06: $d8

    rrca                                          ; $4e07: $0f
    inc bc                                        ; $4e08: $03
    dec b                                         ; $4e09: $05
    db $10                                        ; $4e0a: $10
    inc bc                                        ; $4e0b: $03
    ld l, $10                                     ; $4e0c: $2e $10
    inc bc                                        ; $4e0e: $03
    ld e, l                                       ; $4e0f: $5d
    db $10                                        ; $4e10: $10
    inc bc                                        ; $4e11: $03
    jp nz, Jump_000_0310                          ; $4e12: $c2 $10 $03

    di                                            ; $4e15: $f3
    db $10                                        ; $4e16: $10
    inc bc                                        ; $4e17: $03
    db $10                                        ; $4e18: $10
    ld de, $4003                                  ; $4e19: $11 $03 $40
    ld de, $5603                                  ; $4e1c: $11 $03 $56
    ld de, $6d03                                  ; $4e1f: $11 $03 $6d
    ld de, $9103                                  ; $4e22: $11 $03 $91
    ld de, $b903                                  ; $4e25: $11 $03 $b9
    ld de, $e303                                  ; $4e28: $11 $03 $e3
    ld de, $0703                                  ; $4e2b: $11 $03 $07
    ld [de], a                                    ; $4e2e: $12
    inc bc                                        ; $4e2f: $03
    ld a, [hl+]                                   ; $4e30: $2a
    ld [de], a                                    ; $4e31: $12
    inc bc                                        ; $4e32: $03
    ld d, d                                       ; $4e33: $52
    ld [de], a                                    ; $4e34: $12
    inc bc                                        ; $4e35: $03
    sbc h                                         ; $4e36: $9c
    ld [de], a                                    ; $4e37: $12
    inc bc                                        ; $4e38: $03
    or a                                          ; $4e39: $b7
    ld [de], a                                    ; $4e3a: $12
    inc bc                                        ; $4e3b: $03
    ret                                           ; $4e3c: $c9


    ld [de], a                                    ; $4e3d: $12
    inc bc                                        ; $4e3e: $03
    xor $12                                       ; $4e3f: $ee $12
    inc bc                                        ; $4e41: $03
    daa                                           ; $4e42: $27
    inc de                                        ; $4e43: $13
    inc bc                                        ; $4e44: $03
    ld e, [hl]                                    ; $4e45: $5e
    inc de                                        ; $4e46: $13
    inc bc                                        ; $4e47: $03
    halt                                          ; $4e48: $76
    inc de                                        ; $4e49: $13
    inc bc                                        ; $4e4a: $03
    add c                                         ; $4e4b: $81
    inc de                                        ; $4e4c: $13
    inc bc                                        ; $4e4d: $03
    adc c                                         ; $4e4e: $89
    inc de                                        ; $4e4f: $13
    inc bc                                        ; $4e50: $03
    and [hl]                                      ; $4e51: $a6
    inc de                                        ; $4e52: $13
    inc bc                                        ; $4e53: $03
    add $13                                       ; $4e54: $c6 $13
    inc bc                                        ; $4e56: $03
    call nc, Call_000_0313                        ; $4e57: $d4 $13 $03
    jp hl                                         ; $4e5a: $e9


    inc de                                        ; $4e5b: $13
    inc bc                                        ; $4e5c: $03
    nop                                           ; $4e5d: $00
    inc d                                         ; $4e5e: $14
    inc bc                                        ; $4e5f: $03
    add hl, sp                                    ; $4e60: $39
    inc d                                         ; $4e61: $14
    inc bc                                        ; $4e62: $03
    ld d, [hl]                                    ; $4e63: $56
    inc d                                         ; $4e64: $14
    inc bc                                        ; $4e65: $03
    adc [hl]                                      ; $4e66: $8e
    inc d                                         ; $4e67: $14
    inc bc                                        ; $4e68: $03
    cp [hl]                                       ; $4e69: $be
    inc d                                         ; $4e6a: $14
    inc bc                                        ; $4e6b: $03
    db $d3                                        ; $4e6c: $d3
    inc d                                         ; $4e6d: $14
    inc bc                                        ; $4e6e: $03
    rst $28                                       ; $4e6f: $ef
    inc d                                         ; $4e70: $14
    inc bc                                        ; $4e71: $03
    dec b                                         ; $4e72: $05
    dec d                                         ; $4e73: $15
    inc bc                                        ; $4e74: $03
    add hl, de                                    ; $4e75: $19
    dec d                                         ; $4e76: $15
    inc bc                                        ; $4e77: $03
    jr c, @+$17                                   ; $4e78: $38 $15

    inc bc                                        ; $4e7a: $03
    ld b, [hl]                                    ; $4e7b: $46
    dec d                                         ; $4e7c: $15
    inc bc                                        ; $4e7d: $03
    ld l, d                                       ; $4e7e: $6a
    dec d                                         ; $4e7f: $15
    inc bc                                        ; $4e80: $03
    add b                                         ; $4e81: $80
    dec d                                         ; $4e82: $15
    inc bc                                        ; $4e83: $03
    sub a                                         ; $4e84: $97
    dec d                                         ; $4e85: $15
    inc bc                                        ; $4e86: $03
    xor e                                         ; $4e87: $ab
    dec d                                         ; $4e88: $15
    inc bc                                        ; $4e89: $03
    ret                                           ; $4e8a: $c9


    dec d                                         ; $4e8b: $15
    inc bc                                        ; $4e8c: $03
    call c, $0315                                 ; $4e8d: $dc $15 $03
    db $fc                                        ; $4e90: $fc
    dec d                                         ; $4e91: $15
    inc bc                                        ; $4e92: $03
    inc e                                         ; $4e93: $1c
    ld d, $03                                     ; $4e94: $16 $03
    cpl                                           ; $4e96: $2f
    ld d, $03                                     ; $4e97: $16 $03
    ld d, l                                       ; $4e99: $55
    ld d, $03                                     ; $4e9a: $16 $03
    ld [hl], e                                    ; $4e9c: $73
    ld d, $03                                     ; $4e9d: $16 $03
    sub [hl]                                      ; $4e9f: $96
    ld d, $03                                     ; $4ea0: $16 $03
    xor a                                         ; $4ea2: $af
    ld d, $03                                     ; $4ea3: $16 $03
    pop de                                        ; $4ea5: $d1
    ld d, $03                                     ; $4ea6: $16 $03
    ld a, [c]                                     ; $4ea8: $f2
    ld d, $03                                     ; $4ea9: $16 $03
    jr jr_02c_4ec4                                ; $4eab: $18 $17

    inc bc                                        ; $4ead: $03
    cpl                                           ; $4eae: $2f
    rla                                           ; $4eaf: $17
    inc bc                                        ; $4eb0: $03
    ld c, l                                       ; $4eb1: $4d
    rla                                           ; $4eb2: $17
    inc bc                                        ; $4eb3: $03
    ld a, [hl]                                    ; $4eb4: $7e
    rla                                           ; $4eb5: $17
    inc bc                                        ; $4eb6: $03
    sbc l                                         ; $4eb7: $9d
    rla                                           ; $4eb8: $17
    inc bc                                        ; $4eb9: $03
    rst $08                                       ; $4eba: $cf
    rla                                           ; $4ebb: $17
    inc bc                                        ; $4ebc: $03
    ld [$0317], a                                 ; $4ebd: $ea $17 $03
    cp $17                                        ; $4ec0: $fe $17
    inc bc                                        ; $4ec2: $03
    inc e                                         ; $4ec3: $1c

jr_02c_4ec4:
    jr jr_02c_4ec9                                ; $4ec4: $18 $03

    ld b, d                                       ; $4ec6: $42
    jr jr_02c_4ecc                                ; $4ec7: $18 $03

jr_02c_4ec9:
    ld e, d                                       ; $4ec9: $5a
    jr jr_02c_4ecf                                ; $4eca: $18 $03

jr_02c_4ecc:
    add l                                         ; $4ecc: $85
    jr jr_02c_4ed2                                ; $4ecd: $18 $03

jr_02c_4ecf:
    xor l                                         ; $4ecf: $ad
    jr jr_02c_4ed5                                ; $4ed0: $18 $03

jr_02c_4ed2:
    adc $18                                       ; $4ed2: $ce $18
    inc bc                                        ; $4ed4: $03

jr_02c_4ed5:
    ld [bc], a                                    ; $4ed5: $02
    add hl, de                                    ; $4ed6: $19
    inc bc                                        ; $4ed7: $03
    ld c, $19                                     ; $4ed8: $0e $19
    inc bc                                        ; $4eda: $03
    ld sp, $0319                                  ; $4edb: $31 $19 $03
    ld b, h                                       ; $4ede: $44
    add hl, de                                    ; $4edf: $19
    inc bc                                        ; $4ee0: $03
    ld e, b                                       ; $4ee1: $58
    add hl, de                                    ; $4ee2: $19
    inc bc                                        ; $4ee3: $03
    ld e, [hl]                                    ; $4ee4: $5e
    add hl, de                                    ; $4ee5: $19
    inc bc                                        ; $4ee6: $03
    ld l, d                                       ; $4ee7: $6a
    add hl, de                                    ; $4ee8: $19
    inc bc                                        ; $4ee9: $03
    ld a, d                                       ; $4eea: $7a
    add hl, de                                    ; $4eeb: $19
    inc bc                                        ; $4eec: $03
    db $e4                                        ; $4eed: $e4
    add hl, de                                    ; $4eee: $19
    inc bc                                        ; $4eef: $03
    dec b                                         ; $4ef0: $05
    ld a, [de]                                    ; $4ef1: $1a
    inc bc                                        ; $4ef2: $03
    ld [hl+], a                                   ; $4ef3: $22
    ld a, [de]                                    ; $4ef4: $1a
    inc bc                                        ; $4ef5: $03
    ld b, d                                       ; $4ef6: $42
    ld a, [de]                                    ; $4ef7: $1a
    inc bc                                        ; $4ef8: $03
    ld a, e                                       ; $4ef9: $7b
    ld a, [de]                                    ; $4efa: $1a
    inc bc                                        ; $4efb: $03
    sbc e                                         ; $4efc: $9b
    ld a, [de]                                    ; $4efd: $1a
    inc bc                                        ; $4efe: $03
    cp c                                          ; $4eff: $b9
    ld a, [de]                                    ; $4f00: $1a
    inc bc                                        ; $4f01: $03
    rst $00                                       ; $4f02: $c7
    ld a, [de]                                    ; $4f03: $1a
    inc bc                                        ; $4f04: $03
    push hl                                       ; $4f05: $e5
    ld a, [de]                                    ; $4f06: $1a
    inc bc                                        ; $4f07: $03
    dec c                                         ; $4f08: $0d
    dec de                                        ; $4f09: $1b
    inc bc                                        ; $4f0a: $03
    ld a, [hl+]                                   ; $4f0b: $2a
    dec de                                        ; $4f0c: $1b
    inc bc                                        ; $4f0d: $03
    ld d, [hl]                                    ; $4f0e: $56
    dec de                                        ; $4f0f: $1b
    inc bc                                        ; $4f10: $03
    ld l, d                                       ; $4f11: $6a
    dec de                                        ; $4f12: $1b
    inc bc                                        ; $4f13: $03
    sub b                                         ; $4f14: $90
    dec de                                        ; $4f15: $1b
    inc bc                                        ; $4f16: $03
    and l                                         ; $4f17: $a5
    dec de                                        ; $4f18: $1b
    inc bc                                        ; $4f19: $03
    rst $00                                       ; $4f1a: $c7
    dec de                                        ; $4f1b: $1b
    inc bc                                        ; $4f1c: $03
    rst $28                                       ; $4f1d: $ef
    dec de                                        ; $4f1e: $1b
    inc bc                                        ; $4f1f: $03
    jr jr_02c_4f3e                                ; $4f20: $18 $1c

    inc bc                                        ; $4f22: $03
    ld c, [hl]                                    ; $4f23: $4e
    inc e                                         ; $4f24: $1c
    inc bc                                        ; $4f25: $03
    ld d, a                                       ; $4f26: $57
    inc e                                         ; $4f27: $1c
    inc bc                                        ; $4f28: $03
    ld h, d                                       ; $4f29: $62
    inc e                                         ; $4f2a: $1c
    inc bc                                        ; $4f2b: $03
    add d                                         ; $4f2c: $82
    inc e                                         ; $4f2d: $1c
    inc bc                                        ; $4f2e: $03
    sub b                                         ; $4f2f: $90
    inc e                                         ; $4f30: $1c
    inc bc                                        ; $4f31: $03
    sbc l                                         ; $4f32: $9d
    inc e                                         ; $4f33: $1c
    inc bc                                        ; $4f34: $03
    pop bc                                        ; $4f35: $c1
    inc e                                         ; $4f36: $1c
    inc bc                                        ; $4f37: $03
    ld hl, sp+$1c                                 ; $4f38: $f8 $1c
    inc bc                                        ; $4f3a: $03
    ld c, $1d                                     ; $4f3b: $0e $1d
    inc bc                                        ; $4f3d: $03

jr_02c_4f3e:
    inc a                                         ; $4f3e: $3c
    dec e                                         ; $4f3f: $1d
    inc bc                                        ; $4f40: $03
    ld d, h                                       ; $4f41: $54
    dec e                                         ; $4f42: $1d
    inc bc                                        ; $4f43: $03
    ld a, [hl]                                    ; $4f44: $7e
    dec e                                         ; $4f45: $1d
    inc bc                                        ; $4f46: $03
    sub h                                         ; $4f47: $94
    dec e                                         ; $4f48: $1d
    inc bc                                        ; $4f49: $03
    ld b, d                                       ; $4f4a: $42
    ld e, $03                                     ; $4f4b: $1e $03
    ld e, e                                       ; $4f4d: $5b
    ld e, $03                                     ; $4f4e: $1e $03
    adc e                                         ; $4f50: $8b
    ld e, $03                                     ; $4f51: $1e $03
    db $e4                                        ; $4f53: $e4
    ld e, $03                                     ; $4f54: $1e $03
    db $10                                        ; $4f56: $10
    rra                                           ; $4f57: $1f
    inc bc                                        ; $4f58: $03
    cpl                                           ; $4f59: $2f
    rra                                           ; $4f5a: $1f
    inc bc                                        ; $4f5b: $03
    ld d, b                                       ; $4f5c: $50
    rra                                           ; $4f5d: $1f
    inc bc                                        ; $4f5e: $03
    add d                                         ; $4f5f: $82
    rra                                           ; $4f60: $1f
    inc bc                                        ; $4f61: $03
    or h                                          ; $4f62: $b4
    rra                                           ; $4f63: $1f
    inc bc                                        ; $4f64: $03
    db $f4                                        ; $4f65: $f4
    rra                                           ; $4f66: $1f
    inc bc                                        ; $4f67: $03
    rla                                           ; $4f68: $17
    jr nz, jr_02c_4f6e                            ; $4f69: $20 $03

    ld d, c                                       ; $4f6b: $51
    jr nz, jr_02c_4f71                            ; $4f6c: $20 $03

jr_02c_4f6e:
    ld l, e                                       ; $4f6e: $6b
    jr nz, jr_02c_4f74                            ; $4f6f: $20 $03

jr_02c_4f71:
    adc c                                         ; $4f71: $89
    jr nz, jr_02c_4f77                            ; $4f72: $20 $03

jr_02c_4f74:
    ret c                                         ; $4f74: $d8

    jr nz, @+$05                                  ; $4f75: $20 $03

jr_02c_4f77:
    ld [hl+], a                                   ; $4f77: $22
    ld hl, $3803                                  ; $4f78: $21 $03 $38
    ld hl, $5903                                  ; $4f7b: $21 $03 $59
    ld hl, $7203                                  ; $4f7e: $21 $03 $72
    ld hl, $7903                                  ; $4f81: $21 $03 $79
    ld hl, $9303                                  ; $4f84: $21 $03 $93
    ld hl, $ba03                                  ; $4f87: $21 $03 $ba
    ld hl, $f103                                  ; $4f8a: $21 $03 $f1
    ld [hl+], a                                   ; $4f8d: $22
    inc bc                                        ; $4f8e: $03
    ld hl, sp+$22                                 ; $4f8f: $f8 $22
    inc bc                                        ; $4f91: $03
    inc b                                         ; $4f92: $04
    inc hl                                        ; $4f93: $23
    inc bc                                        ; $4f94: $03
    inc e                                         ; $4f95: $1c
    inc hl                                        ; $4f96: $23
    inc bc                                        ; $4f97: $03
    ld d, h                                       ; $4f98: $54
    inc hl                                        ; $4f99: $23
    inc bc                                        ; $4f9a: $03
    add c                                         ; $4f9b: $81
    inc hl                                        ; $4f9c: $23
    inc bc                                        ; $4f9d: $03
    cp d                                          ; $4f9e: $ba
    inc hl                                        ; $4f9f: $23
    inc bc                                        ; $4fa0: $03
    rst $18                                       ; $4fa1: $df
    inc hl                                        ; $4fa2: $23
    inc bc                                        ; $4fa3: $03
    ld b, $24                                     ; $4fa4: $06 $24
    inc bc                                        ; $4fa6: $03
    rla                                           ; $4fa7: $17
    inc h                                         ; $4fa8: $24
    inc bc                                        ; $4fa9: $03
    dec e                                         ; $4faa: $1d
    inc h                                         ; $4fab: $24
    inc bc                                        ; $4fac: $03
    ccf                                           ; $4fad: $3f
    inc h                                         ; $4fae: $24
    inc bc                                        ; $4faf: $03
    sbc e                                         ; $4fb0: $9b
    inc h                                         ; $4fb1: $24
    inc bc                                        ; $4fb2: $03
    cp a                                          ; $4fb3: $bf
    inc h                                         ; $4fb4: $24
    inc bc                                        ; $4fb5: $03
    dec a                                         ; $4fb6: $3d
    dec h                                         ; $4fb7: $25
    inc bc                                        ; $4fb8: $03
    xor e                                         ; $4fb9: $ab
    dec h                                         ; $4fba: $25
    inc bc                                        ; $4fbb: $03
    inc sp                                        ; $4fbc: $33
    ld h, $03                                     ; $4fbd: $26 $03
    xor b                                         ; $4fbf: $a8
    ld h, $03                                     ; $4fc0: $26 $03
    rla                                           ; $4fc2: $17
    daa                                           ; $4fc3: $27
    inc bc                                        ; $4fc4: $03
    ld d, b                                       ; $4fc5: $50
    daa                                           ; $4fc6: $27
    inc bc                                        ; $4fc7: $03
    and e                                         ; $4fc8: $a3
    daa                                           ; $4fc9: $27
    inc bc                                        ; $4fca: $03
    db $dd                                        ; $4fcb: $dd
    daa                                           ; $4fcc: $27
    inc bc                                        ; $4fcd: $03
    jr nc, jr_02c_4ff8                            ; $4fce: $30 $28

    inc bc                                        ; $4fd0: $03
    ld b, b                                       ; $4fd1: $40
    jr z, jr_02c_4fd7                             ; $4fd2: $28 $03

    ld c, [hl]                                    ; $4fd4: $4e
    jr z, jr_02c_4fda                             ; $4fd5: $28 $03

jr_02c_4fd7:
    ld e, l                                       ; $4fd7: $5d
    jr z, jr_02c_4fdd                             ; $4fd8: $28 $03

jr_02c_4fda:
    ld a, c                                       ; $4fda: $79
    jr z, jr_02c_4fe0                             ; $4fdb: $28 $03

jr_02c_4fdd:
    adc h                                         ; $4fdd: $8c
    jr z, jr_02c_4fe3                             ; $4fde: $28 $03

jr_02c_4fe0:
    and h                                         ; $4fe0: $a4
    jr z, jr_02c_4fe6                             ; $4fe1: $28 $03

jr_02c_4fe3:
    or d                                          ; $4fe3: $b2
    jr z, jr_02c_4fe9                             ; $4fe4: $28 $03

jr_02c_4fe6:
    sra b                                         ; $4fe6: $cb $28
    inc bc                                        ; $4fe8: $03

jr_02c_4fe9:
    call c, $0328                                 ; $4fe9: $dc $28 $03
    ldh a, [$28]                                  ; $4fec: $f0 $28
    inc bc                                        ; $4fee: $03
    ld h, $29                                     ; $4fef: $26 $29
    inc bc                                        ; $4ff1: $03
    dec sp                                        ; $4ff2: $3b
    add hl, hl                                    ; $4ff3: $29
    inc bc                                        ; $4ff4: $03
    ld e, b                                       ; $4ff5: $58
    add hl, hl                                    ; $4ff6: $29
    inc bc                                        ; $4ff7: $03

jr_02c_4ff8:
    ld h, e                                       ; $4ff8: $63
    add hl, hl                                    ; $4ff9: $29
    inc bc                                        ; $4ffa: $03
    add [hl]                                      ; $4ffb: $86
    add hl, hl                                    ; $4ffc: $29
    inc bc                                        ; $4ffd: $03
    cp d                                          ; $4ffe: $ba
    add hl, hl                                    ; $4fff: $29
    inc bc                                        ; $5000: $03
    ret c                                         ; $5001: $d8

    add hl, hl                                    ; $5002: $29
    inc bc                                        ; $5003: $03
    nop                                           ; $5004: $00
    ld a, [hl+]                                   ; $5005: $2a
    inc bc                                        ; $5006: $03
    dec de                                        ; $5007: $1b
    ld a, [hl+]                                   ; $5008: $2a
    inc bc                                        ; $5009: $03
    add [hl]                                      ; $500a: $86
    ld a, [hl+]                                   ; $500b: $2a
    inc bc                                        ; $500c: $03
    xor b                                         ; $500d: $a8
    ld a, [hl+]                                   ; $500e: $2a
    inc bc                                        ; $500f: $03
    db $d3                                        ; $5010: $d3
    ld a, [hl+]                                   ; $5011: $2a
    inc bc                                        ; $5012: $03
    or $2a                                        ; $5013: $f6 $2a
    inc bc                                        ; $5015: $03
    ld a, [hl+]                                   ; $5016: $2a
    dec hl                                        ; $5017: $2b
    inc bc                                        ; $5018: $03
    ld b, a                                       ; $5019: $47
    dec hl                                        ; $501a: $2b
    inc bc                                        ; $501b: $03
    ld d, d                                       ; $501c: $52
    dec hl                                        ; $501d: $2b
    inc bc                                        ; $501e: $03
    ld [hl], c                                    ; $501f: $71
    dec hl                                        ; $5020: $2b
    inc bc                                        ; $5021: $03
    ld a, l                                       ; $5022: $7d
    dec hl                                        ; $5023: $2b
    inc bc                                        ; $5024: $03
    sub c                                         ; $5025: $91
    dec hl                                        ; $5026: $2b
    inc bc                                        ; $5027: $03
    and c                                         ; $5028: $a1
    dec hl                                        ; $5029: $2b
    inc bc                                        ; $502a: $03
    cp l                                          ; $502b: $bd
    dec hl                                        ; $502c: $2b
    inc bc                                        ; $502d: $03
    call Call_000_032b                            ; $502e: $cd $2b $03
    call c, Call_000_032b                         ; $5031: $dc $2b $03
    db $e4                                        ; $5034: $e4
    dec hl                                        ; $5035: $2b
    inc bc                                        ; $5036: $03
    db $f4                                        ; $5037: $f4
    dec hl                                        ; $5038: $2b
    inc bc                                        ; $5039: $03
    ld bc, $032c                                  ; $503a: $01 $2c $03
    ld b, $2c                                     ; $503d: $06 $2c
    inc bc                                        ; $503f: $03
    add hl, de                                    ; $5040: $19
    inc l                                         ; $5041: $2c
    inc bc                                        ; $5042: $03
    ld hl, $032c                                  ; $5043: $21 $2c $03
    inc l                                         ; $5046: $2c
    inc l                                         ; $5047: $2c
    inc bc                                        ; $5048: $03
    scf                                           ; $5049: $37
    inc l                                         ; $504a: $2c
    inc bc                                        ; $504b: $03
    inc a                                         ; $504c: $3c
    inc l                                         ; $504d: $2c
    inc bc                                        ; $504e: $03
    ld b, h                                       ; $504f: $44
    inc l                                         ; $5050: $2c
    inc bc                                        ; $5051: $03
    ld c, l                                       ; $5052: $4d
    inc l                                         ; $5053: $2c
    inc bc                                        ; $5054: $03
    ld d, h                                       ; $5055: $54
    inc l                                         ; $5056: $2c
    inc bc                                        ; $5057: $03
    ld e, d                                       ; $5058: $5a
    inc l                                         ; $5059: $2c
    inc bc                                        ; $505a: $03
    ld e, a                                       ; $505b: $5f
    inc l                                         ; $505c: $2c
    inc bc                                        ; $505d: $03
    ld h, h                                       ; $505e: $64
    inc l                                         ; $505f: $2c
    inc bc                                        ; $5060: $03
    ld l, d                                       ; $5061: $6a
    inc l                                         ; $5062: $2c
    inc bc                                        ; $5063: $03
    ld [hl], b                                    ; $5064: $70
    inc l                                         ; $5065: $2c
    inc bc                                        ; $5066: $03
    ld a, b                                       ; $5067: $78
    inc l                                         ; $5068: $2c
    inc bc                                        ; $5069: $03
    add c                                         ; $506a: $81
    inc l                                         ; $506b: $2c
    inc bc                                        ; $506c: $03
    adc c                                         ; $506d: $89
    inc l                                         ; $506e: $2c
    inc bc                                        ; $506f: $03
    sub h                                         ; $5070: $94
    inc l                                         ; $5071: $2c
    inc bc                                        ; $5072: $03
    and d                                         ; $5073: $a2
    inc l                                         ; $5074: $2c
    inc bc                                        ; $5075: $03
    xor d                                         ; $5076: $aa
    inc l                                         ; $5077: $2c
    inc bc                                        ; $5078: $03
    cp c                                          ; $5079: $b9
    inc l                                         ; $507a: $2c
    inc bc                                        ; $507b: $03
    call nz, $032c                                ; $507c: $c4 $2c $03
    ret nc                                        ; $507f: $d0

    inc l                                         ; $5080: $2c
    inc bc                                        ; $5081: $03
    reti                                          ; $5082: $d9


    inc l                                         ; $5083: $2c
    inc bc                                        ; $5084: $03
    and $2c                                       ; $5085: $e6 $2c
    inc bc                                        ; $5087: $03
    ldh a, [$2c]                                  ; $5088: $f0 $2c
    inc bc                                        ; $508a: $03
    db $fd                                        ; $508b: $fd
    inc l                                         ; $508c: $2c
    inc bc                                        ; $508d: $03
    ld [$032d], sp                                ; $508e: $08 $2d $03
    ld [de], a                                    ; $5091: $12
    dec l                                         ; $5092: $2d
    inc bc                                        ; $5093: $03
    jr nz, @+$2f                                  ; $5094: $20 $2d

    inc bc                                        ; $5096: $03
    dec l                                         ; $5097: $2d
    dec l                                         ; $5098: $2d
    inc bc                                        ; $5099: $03
    inc [hl]                                      ; $509a: $34
    dec l                                         ; $509b: $2d
    inc bc                                        ; $509c: $03
    ld a, $2d                                     ; $509d: $3e $2d
    inc bc                                        ; $509f: $03
    ld b, a                                       ; $50a0: $47
    dec l                                         ; $50a1: $2d
    inc bc                                        ; $50a2: $03
    ld d, h                                       ; $50a3: $54
    dec l                                         ; $50a4: $2d
    inc bc                                        ; $50a5: $03
    ld h, b                                       ; $50a6: $60
    dec l                                         ; $50a7: $2d
    inc bc                                        ; $50a8: $03
    ld l, e                                       ; $50a9: $6b
    dec l                                         ; $50aa: $2d
    inc bc                                        ; $50ab: $03
    ld [hl], l                                    ; $50ac: $75
    dec l                                         ; $50ad: $2d
    inc bc                                        ; $50ae: $03
    ld a, [hl]                                    ; $50af: $7e
    dec l                                         ; $50b0: $2d
    inc bc                                        ; $50b1: $03
    adc b                                         ; $50b2: $88
    dec l                                         ; $50b3: $2d
    inc bc                                        ; $50b4: $03
    sub h                                         ; $50b5: $94
    dec l                                         ; $50b6: $2d
    inc bc                                        ; $50b7: $03
    and c                                         ; $50b8: $a1
    dec l                                         ; $50b9: $2d
    inc bc                                        ; $50ba: $03
    xor e                                         ; $50bb: $ab
    dec l                                         ; $50bc: $2d
    inc bc                                        ; $50bd: $03
    cp b                                          ; $50be: $b8
    dec l                                         ; $50bf: $2d
    inc bc                                        ; $50c0: $03
    jp $032d                                      ; $50c1: $c3 $2d $03


    adc $2d                                       ; $50c4: $ce $2d
    inc bc                                        ; $50c6: $03
    db $d3                                        ; $50c7: $d3
    dec l                                         ; $50c8: $2d
    inc bc                                        ; $50c9: $03
    db $db                                        ; $50ca: $db
    dec l                                         ; $50cb: $2d
    inc bc                                        ; $50cc: $03
    and $2d                                       ; $50cd: $e6 $2d
    inc bc                                        ; $50cf: $03
    ldh a, [$2d]                                  ; $50d0: $f0 $2d
    inc bc                                        ; $50d2: $03
    db $fc                                        ; $50d3: $fc
    dec l                                         ; $50d4: $2d
    inc bc                                        ; $50d5: $03
    ld [$032e], sp                                ; $50d6: $08 $2e $03
    dec d                                         ; $50d9: $15
    ld l, $03                                     ; $50da: $2e $03
    ld e, $2e                                     ; $50dc: $1e $2e
    inc bc                                        ; $50de: $03
    jr z, jr_02c_510f                             ; $50df: $28 $2e

    inc bc                                        ; $50e1: $03
    inc [hl]                                      ; $50e2: $34
    ld l, $03                                     ; $50e3: $2e $03
    ld b, b                                       ; $50e5: $40
    ld l, $03                                     ; $50e6: $2e $03
    ld c, b                                       ; $50e8: $48
    ld l, $03                                     ; $50e9: $2e $03
    ld c, a                                       ; $50eb: $4f
    ld l, $03                                     ; $50ec: $2e $03
    ld d, l                                       ; $50ee: $55
    ld l, $03                                     ; $50ef: $2e $03
    ld h, d                                       ; $50f1: $62
    ld l, $03                                     ; $50f2: $2e $03
    ld [hl], d                                    ; $50f4: $72
    ld l, $03                                     ; $50f5: $2e $03
    ld a, l                                       ; $50f7: $7d
    ld l, $03                                     ; $50f8: $2e $03
    add a                                         ; $50fa: $87
    ld l, $03                                     ; $50fb: $2e $03
    adc [hl]                                      ; $50fd: $8e
    ld l, $03                                     ; $50fe: $2e $03
    sbc b                                         ; $5100: $98
    ld l, $03                                     ; $5101: $2e $03
    and h                                         ; $5103: $a4
    ld l, $03                                     ; $5104: $2e $03
    xor a                                         ; $5106: $af
    ld l, $03                                     ; $5107: $2e $03
    cp e                                          ; $5109: $bb
    ld l, $03                                     ; $510a: $2e $03
    rst $00                                       ; $510c: $c7
    ld l, $03                                     ; $510d: $2e $03

jr_02c_510f:
    db $d3                                        ; $510f: $d3
    ld l, $03                                     ; $5110: $2e $03
    ldh [$2e], a                                  ; $5112: $e0 $2e
    inc bc                                        ; $5114: $03
    and $2e                                       ; $5115: $e6 $2e
    inc bc                                        ; $5117: $03
    ldh a, [$2e]                                  ; $5118: $f0 $2e
    inc bc                                        ; $511a: $03
    ei                                            ; $511b: $fb
    ld l, $03                                     ; $511c: $2e $03
    inc bc                                        ; $511e: $03
    cpl                                           ; $511f: $2f
    inc bc                                        ; $5120: $03
    ld [$032f], sp                                ; $5121: $08 $2f $03
    inc d                                         ; $5124: $14
    cpl                                           ; $5125: $2f
    inc bc                                        ; $5126: $03
    jr nz, jr_02c_5158                            ; $5127: $20 $2f

    inc bc                                        ; $5129: $03
    add hl, hl                                    ; $512a: $29
    cpl                                           ; $512b: $2f
    inc bc                                        ; $512c: $03
    inc sp                                        ; $512d: $33
    cpl                                           ; $512e: $2f
    inc bc                                        ; $512f: $03
    dec a                                         ; $5130: $3d
    cpl                                           ; $5131: $2f
    inc bc                                        ; $5132: $03
    ld c, b                                       ; $5133: $48
    cpl                                           ; $5134: $2f
    inc bc                                        ; $5135: $03
    ld d, l                                       ; $5136: $55
    cpl                                           ; $5137: $2f
    inc bc                                        ; $5138: $03
    ld e, d                                       ; $5139: $5a
    cpl                                           ; $513a: $2f
    inc bc                                        ; $513b: $03
    ld h, h                                       ; $513c: $64
    cpl                                           ; $513d: $2f
    inc bc                                        ; $513e: $03
    ld l, d                                       ; $513f: $6a
    cpl                                           ; $5140: $2f
    inc bc                                        ; $5141: $03
    ld [hl], b                                    ; $5142: $70
    cpl                                           ; $5143: $2f
    inc bc                                        ; $5144: $03
    ld a, l                                       ; $5145: $7d
    cpl                                           ; $5146: $2f
    inc bc                                        ; $5147: $03
    add a                                         ; $5148: $87
    cpl                                           ; $5149: $2f
    inc bc                                        ; $514a: $03
    sub l                                         ; $514b: $95
    cpl                                           ; $514c: $2f
    inc bc                                        ; $514d: $03
    sbc a                                         ; $514e: $9f
    cpl                                           ; $514f: $2f
    inc bc                                        ; $5150: $03
    xor d                                         ; $5151: $aa
    cpl                                           ; $5152: $2f
    inc bc                                        ; $5153: $03
    or h                                          ; $5154: $b4
    cpl                                           ; $5155: $2f
    inc bc                                        ; $5156: $03
    ret nz                                        ; $5157: $c0

jr_02c_5158:
    cpl                                           ; $5158: $2f
    inc bc                                        ; $5159: $03
    rst $00                                       ; $515a: $c7
    cpl                                           ; $515b: $2f
    inc bc                                        ; $515c: $03
    sub $2f                                       ; $515d: $d6 $2f
    inc bc                                        ; $515f: $03
    db $dd                                        ; $5160: $dd
    cpl                                           ; $5161: $2f
    inc bc                                        ; $5162: $03
    ld [c], a                                     ; $5163: $e2
    cpl                                           ; $5164: $2f
    inc bc                                        ; $5165: $03
    db $ed                                        ; $5166: $ed
    cpl                                           ; $5167: $2f
    inc bc                                        ; $5168: $03
    ld hl, sp+$2f                                 ; $5169: $f8 $2f
    inc bc                                        ; $516b: $03
    ld bc, $0330                                  ; $516c: $01 $30 $03
    dec bc                                        ; $516f: $0b
    jr nc, jr_02c_5175                            ; $5170: $30 $03

    jr jr_02c_51a4                                ; $5172: $18 $30

    inc bc                                        ; $5174: $03

jr_02c_5175:
    inc h                                         ; $5175: $24
    jr nc, jr_02c_517b                            ; $5176: $30 $03

    ld [hl-], a                                   ; $5178: $32
    jr nc, jr_02c_517e                            ; $5179: $30 $03

jr_02c_517b:
    ld b, c                                       ; $517b: $41
    jr nc, jr_02c_5181                            ; $517c: $30 $03

jr_02c_517e:
    ld c, d                                       ; $517e: $4a
    jr nc, jr_02c_5184                            ; $517f: $30 $03

jr_02c_5181:
    ld c, [hl]                                    ; $5181: $4e
    jr nc, jr_02c_5187                            ; $5182: $30 $03

jr_02c_5184:
    ld d, h                                       ; $5184: $54
    jr nc, jr_02c_518a                            ; $5185: $30 $03

jr_02c_5187:
    ld e, c                                       ; $5187: $59
    jr nc, jr_02c_518d                            ; $5188: $30 $03

jr_02c_518a:
    ld h, h                                       ; $518a: $64
    jr nc, jr_02c_5190                            ; $518b: $30 $03

jr_02c_518d:
    ld [hl], b                                    ; $518d: $70
    jr nc, jr_02c_5193                            ; $518e: $30 $03

jr_02c_5190:
    ld a, [hl]                                    ; $5190: $7e
    jr nc, jr_02c_5196                            ; $5191: $30 $03

jr_02c_5193:
    adc d                                         ; $5193: $8a
    jr nc, jr_02c_5199                            ; $5194: $30 $03

jr_02c_5196:
    sub [hl]                                      ; $5196: $96
    jr nc, jr_02c_519c                            ; $5197: $30 $03

jr_02c_5199:
    and e                                         ; $5199: $a3
    jr nc, jr_02c_519f                            ; $519a: $30 $03

jr_02c_519c:
    xor [hl]                                      ; $519c: $ae
    jr nc, jr_02c_51a2                            ; $519d: $30 $03

jr_02c_519f:
    cp c                                          ; $519f: $b9
    jr nc, jr_02c_51a5                            ; $51a0: $30 $03

jr_02c_51a2:
    add $30                                       ; $51a2: $c6 $30

jr_02c_51a4:
    inc bc                                        ; $51a4: $03

jr_02c_51a5:
    db $d3                                        ; $51a5: $d3
    jr nc, jr_02c_51ab                            ; $51a6: $30 $03

    jp c, $0330                                   ; $51a8: $da $30 $03

jr_02c_51ab:
    db $ed                                        ; $51ab: $ed
    jr nc, jr_02c_51b1                            ; $51ac: $30 $03

    ld a, [c]                                     ; $51ae: $f2
    jr nc, jr_02c_51b4                            ; $51af: $30 $03

jr_02c_51b1:
    ld a, [$0330]                                 ; $51b1: $fa $30 $03

jr_02c_51b4:
    ld bc, $0331                                  ; $51b4: $01 $31 $03
    rrca                                          ; $51b7: $0f
    ld sp, $1c03                                  ; $51b8: $31 $03 $1c
    ld sp, $2903                                  ; $51bb: $31 $03 $29
    ld sp, $3803                                  ; $51be: $31 $03 $38
    ld sp, $4f03                                  ; $51c1: $31 $03 $4f
    ld sp, $5d03                                  ; $51c4: $31 $03 $5d
    ld sp, $6203                                  ; $51c7: $31 $03 $62
    ld sp, $6f03                                  ; $51ca: $31 $03 $6f
    ld sp, $8603                                  ; $51cd: $31 $03 $86
    ld sp, $9c03                                  ; $51d0: $31 $03 $9c
    ld sp, $b803                                  ; $51d3: $31 $03 $b8
    ld sp, $d103                                  ; $51d6: $31 $03 $d1
    ld sp, $fd03                                  ; $51d9: $31 $03 $fd
    ld sp, $2903                                  ; $51dc: $31 $03 $29
    ld [hl-], a                                   ; $51df: $32
    inc bc                                        ; $51e0: $03
    ld d, [hl]                                    ; $51e1: $56
    ld [hl-], a                                   ; $51e2: $32
    inc bc                                        ; $51e3: $03
    add b                                         ; $51e4: $80
    ld [hl-], a                                   ; $51e5: $32
    inc bc                                        ; $51e6: $03
    sub e                                         ; $51e7: $93
    ld [hl-], a                                   ; $51e8: $32
    inc bc                                        ; $51e9: $03
    and [hl]                                      ; $51ea: $a6
    ld [hl-], a                                   ; $51eb: $32
    inc bc                                        ; $51ec: $03
    xor c                                         ; $51ed: $a9
    ld [hl-], a                                   ; $51ee: $32
    inc bc                                        ; $51ef: $03
    xor l                                         ; $51f0: $ad
    ld [hl-], a                                   ; $51f1: $32
    inc bc                                        ; $51f2: $03
    or l                                          ; $51f3: $b5
    ld [hl-], a                                   ; $51f4: $32
    inc bc                                        ; $51f5: $03
    cp c                                          ; $51f6: $b9
    ld [hl-], a                                   ; $51f7: $32
    inc bc                                        ; $51f8: $03
    cp a                                          ; $51f9: $bf
    ld [hl-], a                                   ; $51fa: $32
    inc bc                                        ; $51fb: $03
    call nz, $0332                                ; $51fc: $c4 $32 $03
    ret                                           ; $51ff: $c9


    ld [hl-], a                                   ; $5200: $32
    inc bc                                        ; $5201: $03
    call nc, $0332                                ; $5202: $d4 $32 $03
    and $32                                       ; $5205: $e6 $32
    inc bc                                        ; $5207: $03
    rst $38                                       ; $5208: $ff
    ld [hl-], a                                   ; $5209: $32
    inc bc                                        ; $520a: $03
    ld de, $0333                                  ; $520b: $11 $33 $03
    add hl, hl                                    ; $520e: $29
    inc sp                                        ; $520f: $33
    inc bc                                        ; $5210: $03
    inc a                                         ; $5211: $3c
    inc sp                                        ; $5212: $33
    inc bc                                        ; $5213: $03
    ld c, [hl]                                    ; $5214: $4e
    inc sp                                        ; $5215: $33
    inc bc                                        ; $5216: $03
    ld h, h                                       ; $5217: $64
    inc sp                                        ; $5218: $33
    inc bc                                        ; $5219: $03
    ld l, l                                       ; $521a: $6d
    inc sp                                        ; $521b: $33
    inc bc                                        ; $521c: $03
    ld a, [hl]                                    ; $521d: $7e
    inc sp                                        ; $521e: $33
    inc bc                                        ; $521f: $03
    add [hl]                                      ; $5220: $86
    inc sp                                        ; $5221: $33
    inc bc                                        ; $5222: $03
    sbc [hl]                                      ; $5223: $9e
    inc sp                                        ; $5224: $33
    inc bc                                        ; $5225: $03
    xor a                                         ; $5226: $af
    inc sp                                        ; $5227: $33
    inc bc                                        ; $5228: $03
    rst $00                                       ; $5229: $c7
    inc sp                                        ; $522a: $33
    inc bc                                        ; $522b: $03
    and $33                                       ; $522c: $e6 $33
    inc bc                                        ; $522e: $03
    ei                                            ; $522f: $fb
    inc sp                                        ; $5230: $33
    inc bc                                        ; $5231: $03
    rrca                                          ; $5232: $0f
    inc [hl]                                      ; $5233: $34
    inc bc                                        ; $5234: $03
    ld [hl+], a                                   ; $5235: $22
    inc [hl]                                      ; $5236: $34
    inc bc                                        ; $5237: $03
    cpl                                           ; $5238: $2f
    inc [hl]                                      ; $5239: $34
    inc bc                                        ; $523a: $03
    ld b, d                                       ; $523b: $42
    inc [hl]                                      ; $523c: $34
    inc bc                                        ; $523d: $03
    ld d, e                                       ; $523e: $53
    inc [hl]                                      ; $523f: $34
    inc bc                                        ; $5240: $03
    ld [hl], l                                    ; $5241: $75
    inc [hl]                                      ; $5242: $34
    inc bc                                        ; $5243: $03
    sbc b                                         ; $5244: $98
    inc [hl]                                      ; $5245: $34
    inc bc                                        ; $5246: $03
    xor b                                         ; $5247: $a8
    inc [hl]                                      ; $5248: $34
    inc bc                                        ; $5249: $03
    ret nz                                        ; $524a: $c0

    inc [hl]                                      ; $524b: $34
    inc bc                                        ; $524c: $03
    jp nc, Jump_000_0334                          ; $524d: $d2 $34 $03

    rst $18                                       ; $5250: $df
    inc [hl]                                      ; $5251: $34
    inc bc                                        ; $5252: $03
    pop af                                        ; $5253: $f1
    inc [hl]                                      ; $5254: $34
    inc bc                                        ; $5255: $03
    inc bc                                        ; $5256: $03
    dec [hl]                                      ; $5257: $35
    inc bc                                        ; $5258: $03
    ld h, $35                                     ; $5259: $26 $35
    inc bc                                        ; $525b: $03
    jr nc, @+$37                                  ; $525c: $30 $35

    inc bc                                        ; $525e: $03
    ld d, d                                       ; $525f: $52
    dec [hl]                                      ; $5260: $35
    inc bc                                        ; $5261: $03
    ld [hl], e                                    ; $5262: $73
    dec [hl]                                      ; $5263: $35
    inc bc                                        ; $5264: $03
    sub d                                         ; $5265: $92
    dec [hl]                                      ; $5266: $35
    inc bc                                        ; $5267: $03
    xor c                                         ; $5268: $a9
    dec [hl]                                      ; $5269: $35
    inc bc                                        ; $526a: $03
    cp e                                          ; $526b: $bb
    dec [hl]                                      ; $526c: $35
    inc bc                                        ; $526d: $03
    rst $00                                       ; $526e: $c7
    dec [hl]                                      ; $526f: $35
    inc bc                                        ; $5270: $03
    jp c, Jump_000_0335                           ; $5271: $da $35 $03

    and $35                                       ; $5274: $e6 $35
    inc bc                                        ; $5276: $03
    rrca                                          ; $5277: $0f
    ld [hl], $03                                  ; $5278: $36 $03
    inc e                                         ; $527a: $1c
    ld [hl], $03                                  ; $527b: $36 $03
    ccf                                           ; $527d: $3f
    ld [hl], $03                                  ; $527e: $36 $03
    ld d, c                                       ; $5280: $51
    ld [hl], $03                                  ; $5281: $36 $03
    ld l, h                                       ; $5283: $6c
    ld [hl], $03                                  ; $5284: $36 $03
    add [hl]                                      ; $5286: $86
    ld [hl], $03                                  ; $5287: $36 $03
    sbc d                                         ; $5289: $9a
    ld [hl], $03                                  ; $528a: $36 $03
    xor a                                         ; $528c: $af
    ld [hl], $03                                  ; $528d: $36 $03
    pop bc                                        ; $528f: $c1
    ld [hl], $03                                  ; $5290: $36 $03
    jp nc, Jump_000_0336                          ; $5292: $d2 $36 $03

    jp hl                                         ; $5295: $e9


    ld [hl], $03                                  ; $5296: $36 $03
    ld hl, sp+$36                                 ; $5298: $f8 $36
    inc bc                                        ; $529a: $03
    ld d, $37                                     ; $529b: $16 $37
    inc bc                                        ; $529d: $03
    daa                                           ; $529e: $27
    scf                                           ; $529f: $37
    inc bc                                        ; $52a0: $03
    add hl, sp                                    ; $52a1: $39
    scf                                           ; $52a2: $37
    inc bc                                        ; $52a3: $03
    ld e, [hl]                                    ; $52a4: $5e
    scf                                           ; $52a5: $37
    inc bc                                        ; $52a6: $03
    add e                                         ; $52a7: $83
    scf                                           ; $52a8: $37
    inc bc                                        ; $52a9: $03
    sub e                                         ; $52aa: $93
    scf                                           ; $52ab: $37
    inc bc                                        ; $52ac: $03
    or c                                          ; $52ad: $b1
    scf                                           ; $52ae: $37
    inc bc                                        ; $52af: $03
    cp d                                          ; $52b0: $ba
    scf                                           ; $52b1: $37
    inc bc                                        ; $52b2: $03
    rst $08                                       ; $52b3: $cf
    scf                                           ; $52b4: $37
    inc bc                                        ; $52b5: $03
    call c, $0337                                 ; $52b6: $dc $37 $03
    ld hl, sp+$37                                 ; $52b9: $f8 $37
    inc bc                                        ; $52bb: $03
    add hl, bc                                    ; $52bc: $09
    jr c, jr_02c_52c2                             ; $52bd: $38 $03

    dec de                                        ; $52bf: $1b
    jr c, jr_02c_52c5                             ; $52c0: $38 $03

jr_02c_52c2:
    inc a                                         ; $52c2: $3c
    jr c, jr_02c_52c8                             ; $52c3: $38 $03

jr_02c_52c5:
    ld d, d                                       ; $52c5: $52
    jr c, jr_02c_52cb                             ; $52c6: $38 $03

jr_02c_52c8:
    ld h, d                                       ; $52c8: $62
    jr c, jr_02c_52ce                             ; $52c9: $38 $03

jr_02c_52cb:
    add b                                         ; $52cb: $80
    jr c, jr_02c_52d1                             ; $52cc: $38 $03

jr_02c_52ce:
    adc c                                         ; $52ce: $89
    jr c, jr_02c_52d4                             ; $52cf: $38 $03

jr_02c_52d1:
    or l                                          ; $52d1: $b5
    jr c, jr_02c_52d7                             ; $52d2: $38 $03

jr_02c_52d4:
    ld hl, sp+$38                                 ; $52d4: $f8 $38
    inc bc                                        ; $52d6: $03

Jump_02c_52d7:
jr_02c_52d7:
    inc l                                         ; $52d7: $2c
    add hl, sp                                    ; $52d8: $39
    inc bc                                        ; $52d9: $03
    ld d, [hl]                                    ; $52da: $56
    add hl, sp                                    ; $52db: $39
    inc bc                                        ; $52dc: $03
    sub e                                         ; $52dd: $93
    add hl, sp                                    ; $52de: $39
    inc bc                                        ; $52df: $03
    or c                                          ; $52e0: $b1
    add hl, sp                                    ; $52e1: $39
    inc bc                                        ; $52e2: $03
    db $db                                        ; $52e3: $db
    add hl, sp                                    ; $52e4: $39
    inc bc                                        ; $52e5: $03
    inc h                                         ; $52e6: $24
    ld a, [hl-]                                   ; $52e7: $3a
    inc bc                                        ; $52e8: $03
    ld l, a                                       ; $52e9: $6f
    ld a, [hl-]                                   ; $52ea: $3a
    inc bc                                        ; $52eb: $03
    sbc e                                         ; $52ec: $9b
    ld a, [hl-]                                   ; $52ed: $3a
    inc bc                                        ; $52ee: $03
    ret                                           ; $52ef: $c9


    ld a, [hl-]                                   ; $52f0: $3a
    inc bc                                        ; $52f1: $03
    inc c                                         ; $52f2: $0c
    dec sp                                        ; $52f3: $3b
    inc bc                                        ; $52f4: $03
    ld b, b                                       ; $52f5: $40
    dec sp                                        ; $52f6: $3b
    inc bc                                        ; $52f7: $03
    add e                                         ; $52f8: $83
    dec sp                                        ; $52f9: $3b
    inc bc                                        ; $52fa: $03
    cp d                                          ; $52fb: $ba
    dec sp                                        ; $52fc: $3b
    inc bc                                        ; $52fd: $03
    ldh a, [$3b]                                  ; $52fe: $f0 $3b
    inc bc                                        ; $5300: $03
    inc a                                         ; $5301: $3c
    inc a                                         ; $5302: $3c
    inc bc                                        ; $5303: $03
    ld b, a                                       ; $5304: $47
    inc a                                         ; $5305: $3c
    inc bc                                        ; $5306: $03
    ld c, [hl]                                    ; $5307: $4e
    inc a                                         ; $5308: $3c
    inc bc                                        ; $5309: $03
    ld e, e                                       ; $530a: $5b
    inc a                                         ; $530b: $3c
    inc bc                                        ; $530c: $03
    ld l, b                                       ; $530d: $68
    inc a                                         ; $530e: $3c
    inc bc                                        ; $530f: $03
    ld [hl], l                                    ; $5310: $75
    inc a                                         ; $5311: $3c
    inc bc                                        ; $5312: $03
    add c                                         ; $5313: $81
    inc a                                         ; $5314: $3c
    inc bc                                        ; $5315: $03
    adc [hl]                                      ; $5316: $8e
    inc a                                         ; $5317: $3c
    inc bc                                        ; $5318: $03
    sbc l                                         ; $5319: $9d
    inc a                                         ; $531a: $3c
    inc bc                                        ; $531b: $03
    xor c                                         ; $531c: $a9
    inc a                                         ; $531d: $3c
    inc bc                                        ; $531e: $03
    or a                                          ; $531f: $b7
    inc a                                         ; $5320: $3c
    inc bc                                        ; $5321: $03
    jp nz, $033c                                  ; $5322: $c2 $3c $03

    call z, $033c                                 ; $5325: $cc $3c $03
    rst $10                                       ; $5328: $d7
    inc a                                         ; $5329: $3c
    inc bc                                        ; $532a: $03
    ld [c], a                                     ; $532b: $e2
    inc a                                         ; $532c: $3c
    inc bc                                        ; $532d: $03
    xor $3c                                       ; $532e: $ee $3c
    inc bc                                        ; $5330: $03
    ld a, [$033c]                                 ; $5331: $fa $3c $03
    dec b                                         ; $5334: $05
    dec a                                         ; $5335: $3d
    inc bc                                        ; $5336: $03
    inc c                                         ; $5337: $0c
    dec a                                         ; $5338: $3d
    inc bc                                        ; $5339: $03
    rla                                           ; $533a: $17
    dec a                                         ; $533b: $3d
    inc bc                                        ; $533c: $03
    dec h                                         ; $533d: $25
    dec a                                         ; $533e: $3d
    inc bc                                        ; $533f: $03
    jr nc, jr_02c_537f                            ; $5340: $30 $3d

    inc bc                                        ; $5342: $03
    ld a, [hl-]                                   ; $5343: $3a
    dec a                                         ; $5344: $3d
    inc bc                                        ; $5345: $03
    ld c, c                                       ; $5346: $49
    dec a                                         ; $5347: $3d
    inc bc                                        ; $5348: $03
    ld d, l                                       ; $5349: $55
    dec a                                         ; $534a: $3d
    inc bc                                        ; $534b: $03
    ld h, c                                       ; $534c: $61
    dec a                                         ; $534d: $3d
    inc bc                                        ; $534e: $03
    ld l, h                                       ; $534f: $6c
    dec a                                         ; $5350: $3d
    inc bc                                        ; $5351: $03
    halt                                          ; $5352: $76
    dec a                                         ; $5353: $3d
    inc bc                                        ; $5354: $03
    add d                                         ; $5355: $82
    dec a                                         ; $5356: $3d
    inc bc                                        ; $5357: $03
    adc [hl]                                      ; $5358: $8e
    dec a                                         ; $5359: $3d
    inc bc                                        ; $535a: $03
    sbc [hl]                                      ; $535b: $9e
    dec a                                         ; $535c: $3d
    inc bc                                        ; $535d: $03
    and a                                         ; $535e: $a7
    dec a                                         ; $535f: $3d
    inc bc                                        ; $5360: $03
    or e                                          ; $5361: $b3
    dec a                                         ; $5362: $3d
    inc bc                                        ; $5363: $03
    cp [hl]                                       ; $5364: $be
    dec a                                         ; $5365: $3d
    inc bc                                        ; $5366: $03
    srl l                                         ; $5367: $cb $3d
    inc bc                                        ; $5369: $03
    push de                                       ; $536a: $d5
    dec a                                         ; $536b: $3d
    inc bc                                        ; $536c: $03
    ld [c], a                                     ; $536d: $e2
    dec a                                         ; $536e: $3d
    inc bc                                        ; $536f: $03
    db $ed                                        ; $5370: $ed
    dec a                                         ; $5371: $3d
    inc bc                                        ; $5372: $03
    ld hl, sp+$3d                                 ; $5373: $f8 $3d
    inc bc                                        ; $5375: $03
    inc b                                         ; $5376: $04
    ld a, $03                                     ; $5377: $3e $03
    db $10                                        ; $5379: $10
    ld a, $03                                     ; $537a: $3e $03
    dec e                                         ; $537c: $1d
    ld a, $03                                     ; $537d: $3e $03

jr_02c_537f:
    add hl, hl                                    ; $537f: $29
    ld a, $03                                     ; $5380: $3e $03
    ld [hl], $3e                                  ; $5382: $36 $3e
    inc bc                                        ; $5384: $03
    ld b, d                                       ; $5385: $42
    ld a, $03                                     ; $5386: $3e $03
    ld d, b                                       ; $5388: $50
    ld a, $03                                     ; $5389: $3e $03
    ld d, l                                       ; $538b: $55
    ld a, $03                                     ; $538c: $3e $03
    ld h, b                                       ; $538e: $60
    ld a, $03                                     ; $538f: $3e $03
    ld l, h                                       ; $5391: $6c
    ld a, $03                                     ; $5392: $3e $03
    ld [hl], c                                    ; $5394: $71
    ld a, $03                                     ; $5395: $3e $03
    ld a, e                                       ; $5397: $7b
    ld a, $03                                     ; $5398: $3e $03
    add l                                         ; $539a: $85
    ld a, $03                                     ; $539b: $3e $03
    sub c                                         ; $539d: $91
    ld a, $03                                     ; $539e: $3e $03
    sbc a                                         ; $53a0: $9f
    ld a, $03                                     ; $53a1: $3e $03
    xor e                                         ; $53a3: $ab
    ld a, $03                                     ; $53a4: $3e $03
    cp b                                          ; $53a6: $b8
    ld a, $03                                     ; $53a7: $3e $03
    push bc                                       ; $53a9: $c5
    ld a, $03                                     ; $53aa: $3e $03
    adc $3e                                       ; $53ac: $ce $3e
    inc bc                                        ; $53ae: $03
    db $db                                        ; $53af: $db
    ld a, $03                                     ; $53b0: $3e $03
    jp hl                                         ; $53b2: $e9


    ld a, $03                                     ; $53b3: $3e $03
    rst $28                                       ; $53b5: $ef
    ld a, $03                                     ; $53b6: $3e $03
    cp $3e                                        ; $53b8: $fe $3e
    inc bc                                        ; $53ba: $03
    dec bc                                        ; $53bb: $0b
    ccf                                           ; $53bc: $3f
    inc bc                                        ; $53bd: $03
    dec d                                         ; $53be: $15
    ccf                                           ; $53bf: $3f
    inc bc                                        ; $53c0: $03
    ld hl, $033f                                  ; $53c1: $21 $3f $03
    dec l                                         ; $53c4: $2d
    ccf                                           ; $53c5: $3f
    inc bc                                        ; $53c6: $03
    ld a, [hl-]                                   ; $53c7: $3a
    ccf                                           ; $53c8: $3f
    inc bc                                        ; $53c9: $03
    ld b, a                                       ; $53ca: $47
    ccf                                           ; $53cb: $3f
    inc bc                                        ; $53cc: $03
    ld d, h                                       ; $53cd: $54
    ccf                                           ; $53ce: $3f
    inc bc                                        ; $53cf: $03
    ld e, l                                       ; $53d0: $5d
    ccf                                           ; $53d1: $3f
    inc bc                                        ; $53d2: $03
    ld l, d                                       ; $53d3: $6a
    ccf                                           ; $53d4: $3f
    inc bc                                        ; $53d5: $03
    halt                                          ; $53d6: $76
    ccf                                           ; $53d7: $3f
    inc bc                                        ; $53d8: $03
    add h                                         ; $53d9: $84
    ccf                                           ; $53da: $3f
    inc bc                                        ; $53db: $03
    sub d                                         ; $53dc: $92
    ccf                                           ; $53dd: $3f
    inc bc                                        ; $53de: $03
    sbc [hl]                                      ; $53df: $9e
    ccf                                           ; $53e0: $3f
    inc bc                                        ; $53e1: $03
    xor d                                         ; $53e2: $aa
    ccf                                           ; $53e3: $3f
    inc bc                                        ; $53e4: $03
    or a                                          ; $53e5: $b7
    ccf                                           ; $53e6: $3f
    inc bc                                        ; $53e7: $03
    pop bc                                        ; $53e8: $c1
    ccf                                           ; $53e9: $3f
    inc bc                                        ; $53ea: $03
    adc $3f                                       ; $53eb: $ce $3f
    inc bc                                        ; $53ed: $03
    rst $10                                       ; $53ee: $d7
    ccf                                           ; $53ef: $3f
    inc bc                                        ; $53f0: $03
    pop hl                                        ; $53f1: $e1
    ccf                                           ; $53f2: $3f
    inc bc                                        ; $53f3: $03
    db $ec                                        ; $53f4: $ec
    ccf                                           ; $53f5: $3f
    inc b                                         ; $53f6: $04
    ld bc, $0400                                  ; $53f7: $01 $00 $04
    dec c                                         ; $53fa: $0d
    nop                                           ; $53fb: $00
    inc b                                         ; $53fc: $04
    ld d, $00                                     ; $53fd: $16 $00
    inc b                                         ; $53ff: $04
    ld hl, $0400                                  ; $5400: $21 $00 $04
    dec l                                         ; $5403: $2d
    nop                                           ; $5404: $00
    inc b                                         ; $5405: $04
    scf                                           ; $5406: $37
    nop                                           ; $5407: $00
    inc b                                         ; $5408: $04
    ld b, c                                       ; $5409: $41
    nop                                           ; $540a: $00
    inc b                                         ; $540b: $04
    ld c, [hl]                                    ; $540c: $4e
    nop                                           ; $540d: $00
    inc b                                         ; $540e: $04
    ld e, e                                       ; $540f: $5b
    nop                                           ; $5410: $00
    inc b                                         ; $5411: $04
    ld l, e                                       ; $5412: $6b
    nop                                           ; $5413: $00
    inc b                                         ; $5414: $04

Call_02c_5415:
    ld [hl], a                                    ; $5415: $77
    nop                                           ; $5416: $00
    inc b                                         ; $5417: $04
    add c                                         ; $5418: $81
    nop                                           ; $5419: $00
    inc b                                         ; $541a: $04
    adc d                                         ; $541b: $8a
    nop                                           ; $541c: $00
    inc b                                         ; $541d: $04
    sbc b                                         ; $541e: $98
    nop                                           ; $541f: $00
    inc b                                         ; $5420: $04
    and l                                         ; $5421: $a5
    nop                                           ; $5422: $00
    inc b                                         ; $5423: $04
    or h                                          ; $5424: $b4
    nop                                           ; $5425: $00
    inc b                                         ; $5426: $04
    cp c                                          ; $5427: $b9
    nop                                           ; $5428: $00
    inc b                                         ; $5429: $04
    add $00                                       ; $542a: $c6 $00
    inc b                                         ; $542c: $04
    ret nc                                        ; $542d: $d0

    nop                                           ; $542e: $00
    inc b                                         ; $542f: $04
    call c, Call_000_0400                         ; $5430: $dc $00 $04
    ld [c], a                                     ; $5433: $e2
    nop                                           ; $5434: $00
    inc b                                         ; $5435: $04
    db $e4                                        ; $5436: $e4
    nop                                           ; $5437: $00
    inc b                                         ; $5438: $04
    rst $28                                       ; $5439: $ef
    nop                                           ; $543a: $00
    inc b                                         ; $543b: $04
    inc e                                         ; $543c: $1c
    ld bc, $3904                                  ; $543d: $01 $04 $39
    ld bc, $6904                                  ; $5440: $01 $04 $69
    ld bc, $9e04                                  ; $5443: $01 $04 $9e
    ld bc, $c104                                  ; $5446: $01 $04 $c1
    ld bc, $dd04                                  ; $5449: $01 $04 $dd
    ld bc, $ff04                                  ; $544c: $01 $04 $ff
    ld bc, $1804                                  ; $544f: $01 $04 $18
    ld [bc], a                                    ; $5452: $02
    inc b                                         ; $5453: $04
    jr c, jr_02c_5458                             ; $5454: $38 $02

    inc b                                         ; $5456: $04
    ld h, h                                       ; $5457: $64

jr_02c_5458:
    ld [bc], a                                    ; $5458: $02
    inc b                                         ; $5459: $04
    add h                                         ; $545a: $84
    ld [bc], a                                    ; $545b: $02
    inc b                                         ; $545c: $04
    and h                                         ; $545d: $a4
    ld [bc], a                                    ; $545e: $02
    inc b                                         ; $545f: $04
    ret nz                                        ; $5460: $c0

    ld [bc], a                                    ; $5461: $02
    inc b                                         ; $5462: $04
    db $dd                                        ; $5463: $dd
    ld [bc], a                                    ; $5464: $02
    inc b                                         ; $5465: $04
    dec b                                         ; $5466: $05
    inc bc                                        ; $5467: $03
    inc b                                         ; $5468: $04
    dec [hl]                                      ; $5469: $35
    inc bc                                        ; $546a: $03
    inc b                                         ; $546b: $04
    ld e, b                                       ; $546c: $58
    inc bc                                        ; $546d: $03
    inc b                                         ; $546e: $04
    add l                                         ; $546f: $85
    inc bc                                        ; $5470: $03
    inc b                                         ; $5471: $04
    and h                                         ; $5472: $a4
    inc bc                                        ; $5473: $03
    inc b                                         ; $5474: $04
    call z, $0403                                 ; $5475: $cc $03 $04
    ld sp, hl                                     ; $5478: $f9
    inc bc                                        ; $5479: $03
    inc b                                         ; $547a: $04
    add hl, hl                                    ; $547b: $29
    inc b                                         ; $547c: $04
    inc b                                         ; $547d: $04
    ld d, h                                       ; $547e: $54
    inc b                                         ; $547f: $04
    inc b                                         ; $5480: $04
    sbc b                                         ; $5481: $98
    inc b                                         ; $5482: $04
    inc b                                         ; $5483: $04
    jp nz, Jump_000_0404                          ; $5484: $c2 $04 $04

    rst $28                                       ; $5487: $ef
    inc b                                         ; $5488: $04
    inc b                                         ; $5489: $04
    ld bc, $0405                                  ; $548a: $01 $05 $04
    ld [hl], $05                                  ; $548d: $36 $05
    inc b                                         ; $548f: $04
    add c                                         ; $5490: $81
    dec b                                         ; $5491: $05
    inc b                                         ; $5492: $04
    or h                                          ; $5493: $b4
    dec b                                         ; $5494: $05
    inc b                                         ; $5495: $04
    ldh a, [rTIMA]                                ; $5496: $f0 $05
    inc b                                         ; $5498: $04
    dec hl                                        ; $5499: $2b
    ld b, $04                                     ; $549a: $06 $04
    dec a                                         ; $549c: $3d
    ld b, $04                                     ; $549d: $06 $04
    ld l, h                                       ; $549f: $6c
    ld b, $04                                     ; $54a0: $06 $04
    adc a                                         ; $54a2: $8f
    ld b, $04                                     ; $54a3: $06 $04
    or c                                          ; $54a5: $b1
    ld b, $04                                     ; $54a6: $06 $04
    sub $06                                       ; $54a8: $d6 $06
    inc b                                         ; $54aa: $04
    di                                            ; $54ab: $f3
    ld b, $04                                     ; $54ac: $06 $04
    dec e                                         ; $54ae: $1d
    rlca                                          ; $54af: $07
    inc b                                         ; $54b0: $04
    ld c, a                                       ; $54b1: $4f
    rlca                                          ; $54b2: $07
    inc b                                         ; $54b3: $04
    ld [hl], h                                    ; $54b4: $74
    rlca                                          ; $54b5: $07
    inc b                                         ; $54b6: $04
    xor e                                         ; $54b7: $ab
    rlca                                          ; $54b8: $07
    inc b                                         ; $54b9: $04
    pop bc                                        ; $54ba: $c1
    rlca                                          ; $54bb: $07
    inc b                                         ; $54bc: $04
    jp c, Jump_000_0407                           ; $54bd: $da $07 $04

    db $fd                                        ; $54c0: $fd
    rlca                                          ; $54c1: $07
    inc b                                         ; $54c2: $04
    ld l, $08                                     ; $54c3: $2e $08
    inc b                                         ; $54c5: $04
    ld h, e                                       ; $54c6: $63
    ld [$7704], sp                                ; $54c7: $08 $04 $77
    ld [$aa04], sp                                ; $54ca: $08 $04 $aa
    ld [$d104], sp                                ; $54cd: $08 $04 $d1
    ld [$f404], sp                                ; $54d0: $08 $04 $f4
    ld [$1604], sp                                ; $54d3: $08 $04 $16
    add hl, bc                                    ; $54d6: $09
    inc b                                         ; $54d7: $04
    ld c, l                                       ; $54d8: $4d
    add hl, bc                                    ; $54d9: $09
    inc b                                         ; $54da: $04
    ld l, l                                       ; $54db: $6d
    add hl, bc                                    ; $54dc: $09
    inc b                                         ; $54dd: $04
    sbc h                                         ; $54de: $9c
    add hl, bc                                    ; $54df: $09
    inc b                                         ; $54e0: $04
    cp [hl]                                       ; $54e1: $be
    add hl, bc                                    ; $54e2: $09
    inc b                                         ; $54e3: $04
    ret nc                                        ; $54e4: $d0

    add hl, bc                                    ; $54e5: $09
    inc b                                         ; $54e6: $04
    ld a, [$0409]                                 ; $54e7: $fa $09 $04
    ld a, [hl+]                                   ; $54ea: $2a
    ld a, [bc]                                    ; $54eb: $0a
    inc b                                         ; $54ec: $04
    ld d, l                                       ; $54ed: $55
    ld a, [bc]                                    ; $54ee: $0a
    inc b                                         ; $54ef: $04
    add b                                         ; $54f0: $80
    ld a, [bc]                                    ; $54f1: $0a
    inc b                                         ; $54f2: $04
    sbc a                                         ; $54f3: $9f
    ld a, [bc]                                    ; $54f4: $0a
    inc b                                         ; $54f5: $04
    adc $0a                                       ; $54f6: $ce $0a
    inc b                                         ; $54f8: $04
    ld hl, sp+$0a                                 ; $54f9: $f8 $0a
    inc b                                         ; $54fb: $04
    ld h, $0b                                     ; $54fc: $26 $0b
    inc b                                         ; $54fe: $04
    ld d, d                                       ; $54ff: $52
    dec bc                                        ; $5500: $0b
    inc b                                         ; $5501: $04
    ld l, l                                       ; $5502: $6d
    dec bc                                        ; $5503: $0b
    inc b                                         ; $5504: $04
    sbc c                                         ; $5505: $99
    dec bc                                        ; $5506: $0b
    inc b                                         ; $5507: $04
    ret nz                                        ; $5508: $c0

    dec bc                                        ; $5509: $0b
    inc b                                         ; $550a: $04
    db $ed                                        ; $550b: $ed
    dec bc                                        ; $550c: $0b
    inc b                                         ; $550d: $04
    add hl, de                                    ; $550e: $19
    inc c                                         ; $550f: $0c
    inc b                                         ; $5510: $04
    ld [hl-], a                                   ; $5511: $32
    inc c                                         ; $5512: $0c
    inc b                                         ; $5513: $04
    ld c, [hl]                                    ; $5514: $4e
    inc c                                         ; $5515: $0c
    inc b                                         ; $5516: $04
    add c                                         ; $5517: $81
    inc c                                         ; $5518: $0c
    inc b                                         ; $5519: $04
    and l                                         ; $551a: $a5
    inc c                                         ; $551b: $0c
    inc b                                         ; $551c: $04
    rst $10                                       ; $551d: $d7
    inc c                                         ; $551e: $0c
    inc b                                         ; $551f: $04
    db $fc                                        ; $5520: $fc
    inc c                                         ; $5521: $0c
    inc b                                         ; $5522: $04
    jr nz, jr_02c_5532                            ; $5523: $20 $0d

    inc b                                         ; $5525: $04
    ld b, l                                       ; $5526: $45
    dec c                                         ; $5527: $0d
    inc b                                         ; $5528: $04
    ld h, [hl]                                    ; $5529: $66
    dec c                                         ; $552a: $0d
    inc b                                         ; $552b: $04
    adc e                                         ; $552c: $8b
    dec c                                         ; $552d: $0d
    inc b                                         ; $552e: $04
    and d                                         ; $552f: $a2
    dec c                                         ; $5530: $0d

Call_02c_5531:
    inc b                                         ; $5531: $04

jr_02c_5532:
    add $0d                                       ; $5532: $c6 $0d
    inc b                                         ; $5534: $04
    db $eb                                        ; $5535: $eb
    dec c                                         ; $5536: $0d
    inc b                                         ; $5537: $04
    ld [$040e], sp                                ; $5538: $08 $0e $04
    jr z, jr_02c_554b                             ; $553b: $28 $0e

    inc b                                         ; $553d: $04
    ld e, d                                       ; $553e: $5a
    ld c, $04                                     ; $553f: $0e $04
    add h                                         ; $5541: $84
    ld c, $04                                     ; $5542: $0e $04
    and h                                         ; $5544: $a4
    ld c, $04                                     ; $5545: $0e $04
    ret                                           ; $5547: $c9


    ld c, $04                                     ; $5548: $0e $04
    db $eb                                        ; $554a: $eb

jr_02c_554b:
    ld c, $04                                     ; $554b: $0e $04
    dec de                                        ; $554d: $1b
    rrca                                          ; $554e: $0f
    inc b                                         ; $554f: $04
    ld b, e                                       ; $5550: $43
    rrca                                          ; $5551: $0f
    inc b                                         ; $5552: $04
    ld e, d                                       ; $5553: $5a
    rrca                                          ; $5554: $0f
    inc b                                         ; $5555: $04
    add a                                         ; $5556: $87
    rrca                                          ; $5557: $0f
    inc b                                         ; $5558: $04
    or [hl]                                       ; $5559: $b6
    rrca                                          ; $555a: $0f
    inc b                                         ; $555b: $04
    ret z                                         ; $555c: $c8

    rrca                                          ; $555d: $0f
    inc b                                         ; $555e: $04
    inc bc                                        ; $555f: $03
    db $10                                        ; $5560: $10
    inc b                                         ; $5561: $04
    ld sp, $0410                                  ; $5562: $31 $10 $04
    ld d, d                                       ; $5565: $52
    db $10                                        ; $5566: $10
    inc b                                         ; $5567: $04
    ld [hl], e                                    ; $5568: $73
    db $10                                        ; $5569: $10
    inc b                                         ; $556a: $04
    adc e                                         ; $556b: $8b
    db $10                                        ; $556c: $10
    inc b                                         ; $556d: $04
    sbc b                                         ; $556e: $98
    db $10                                        ; $556f: $10
    inc b                                         ; $5570: $04
    xor l                                         ; $5571: $ad
    db $10                                        ; $5572: $10
    inc b                                         ; $5573: $04
    or h                                          ; $5574: $b4
    db $10                                        ; $5575: $10
    inc b                                         ; $5576: $04
    cp l                                          ; $5577: $bd
    db $10                                        ; $5578: $10
    inc b                                         ; $5579: $04
    push bc                                       ; $557a: $c5
    db $10                                        ; $557b: $10
    inc b                                         ; $557c: $04
    call z, Call_000_0410                         ; $557d: $cc $10 $04
    call nc, Call_000_0410                        ; $5580: $d4 $10 $04
    call c, Call_000_0410                         ; $5583: $dc $10 $04
    db $e3                                        ; $5586: $e3
    db $10                                        ; $5587: $10
    inc b                                         ; $5588: $04
    jp hl                                         ; $5589: $e9


    db $10                                        ; $558a: $10
    inc b                                         ; $558b: $04
    rst $28                                       ; $558c: $ef
    db $10                                        ; $558d: $10
    inc b                                         ; $558e: $04
    or $10                                        ; $558f: $f6 $10
    inc b                                         ; $5591: $04
    rst $38                                       ; $5592: $ff
    db $10                                        ; $5593: $10
    inc b                                         ; $5594: $04
    inc b                                         ; $5595: $04
    ld de, $0b04                                  ; $5596: $11 $04 $0b
    ld de, $1704                                  ; $5599: $11 $04 $17
    ld de, $2304                                  ; $559c: $11 $04 $23
    ld de, $2804                                  ; $559f: $11 $04 $28
    ld de, $2d04                                  ; $55a2: $11 $04 $2d
    ld de, $4104                                  ; $55a5: $11 $04 $41
    ld de, $6204                                  ; $55a8: $11 $04 $62
    ld de, $8e04                                  ; $55ab: $11 $04 $8e
    ld de, $9e04                                  ; $55ae: $11 $04 $9e
    ld de, $bd04                                  ; $55b1: $11 $04 $bd
    ld de, $da04                                  ; $55b4: $11 $04 $da
    ld de, $e904                                  ; $55b7: $11 $04 $e9
    ld de, $1704                                  ; $55ba: $11 $04 $17
    ld [de], a                                    ; $55bd: $12
    inc b                                         ; $55be: $04
    inc l                                         ; $55bf: $2c
    ld [de], a                                    ; $55c0: $12
    inc b                                         ; $55c1: $04
    ld c, c                                       ; $55c2: $49
    ld [de], a                                    ; $55c3: $12
    inc b                                         ; $55c4: $04
    ld h, l                                       ; $55c5: $65
    ld [de], a                                    ; $55c6: $12
    inc b                                         ; $55c7: $04
    adc e                                         ; $55c8: $8b
    ld [de], a                                    ; $55c9: $12
    inc b                                         ; $55ca: $04
    and [hl]                                      ; $55cb: $a6
    ld [de], a                                    ; $55cc: $12
    inc b                                         ; $55cd: $04
    ret z                                         ; $55ce: $c8

    ld [de], a                                    ; $55cf: $12

Jump_02c_55d0:
    inc b                                         ; $55d0: $04
    db $ed                                        ; $55d1: $ed
    ld [de], a                                    ; $55d2: $12
    inc b                                         ; $55d3: $04
    ld [de], a                                    ; $55d4: $12
    inc de                                        ; $55d5: $13
    inc b                                         ; $55d6: $04
    dec hl                                        ; $55d7: $2b
    inc de                                        ; $55d8: $13
    inc b                                         ; $55d9: $04
    ccf                                           ; $55da: $3f
    inc de                                        ; $55db: $13
    inc b                                         ; $55dc: $04
    ld d, e                                       ; $55dd: $53
    inc de                                        ; $55de: $13
    inc b                                         ; $55df: $04
    ld l, l                                       ; $55e0: $6d
    inc de                                        ; $55e1: $13
    inc b                                         ; $55e2: $04
    ld l, a                                       ; $55e3: $6f
    inc de                                        ; $55e4: $13
    inc b                                         ; $55e5: $04
    ld [hl], c                                    ; $55e6: $71
    inc de                                        ; $55e7: $13
    inc b                                         ; $55e8: $04
    adc l                                         ; $55e9: $8d
    inc de                                        ; $55ea: $13
    inc b                                         ; $55eb: $04
    sbc h                                         ; $55ec: $9c
    inc de                                        ; $55ed: $13
    inc b                                         ; $55ee: $04
    and [hl]                                      ; $55ef: $a6
    inc de                                        ; $55f0: $13
    inc b                                         ; $55f1: $04
    xor a                                         ; $55f2: $af
    inc de                                        ; $55f3: $13
    inc b                                         ; $55f4: $04
    cp b                                          ; $55f5: $b8
    inc de                                        ; $55f6: $13
    inc b                                         ; $55f7: $04
    pop bc                                        ; $55f8: $c1
    inc de                                        ; $55f9: $13
    inc b                                         ; $55fa: $04
    ld [$0413], a                                 ; $55fb: $ea $13 $04
    ld [bc], a                                    ; $55fe: $02
    inc d                                         ; $55ff: $14
    inc b                                         ; $5600: $04
    jr nz, jr_02c_5617                            ; $5601: $20 $14

    inc b                                         ; $5603: $04
    dec [hl]                                      ; $5604: $35
    inc d                                         ; $5605: $14
    inc b                                         ; $5606: $04
    ld c, h                                       ; $5607: $4c
    inc d                                         ; $5608: $14
    inc b                                         ; $5609: $04
    ld l, h                                       ; $560a: $6c
    inc d                                         ; $560b: $14
    inc b                                         ; $560c: $04
    sbc a                                         ; $560d: $9f
    inc d                                         ; $560e: $14
    inc b                                         ; $560f: $04
    call z, Call_000_0414                         ; $5610: $cc $14 $04
    ld bc, $0415                                  ; $5613: $01 $15 $04
    inc h                                         ; $5616: $24

jr_02c_5617:
    dec d                                         ; $5617: $15
    inc b                                         ; $5618: $04
    ld h, d                                       ; $5619: $62
    dec d                                         ; $561a: $15
    inc b                                         ; $561b: $04
    add b                                         ; $561c: $80
    dec d                                         ; $561d: $15
    inc b                                         ; $561e: $04
    and [hl]                                      ; $561f: $a6
    dec d                                         ; $5620: $15
    inc b                                         ; $5621: $04
    or e                                          ; $5622: $b3
    dec d                                         ; $5623: $15
    inc b                                         ; $5624: $04
    pop de                                        ; $5625: $d1
    dec d                                         ; $5626: $15
    inc b                                         ; $5627: $04
    ld b, $16                                     ; $5628: $06 $16
    inc b                                         ; $562a: $04
    daa                                           ; $562b: $27
    ld d, $04                                     ; $562c: $16 $04
    ld h, d                                       ; $562e: $62
    ld d, $04                                     ; $562f: $16 $04
    ld a, e                                       ; $5631: $7b
    ld d, $04                                     ; $5632: $16 $04
    sub d                                         ; $5634: $92
    ld d, $04                                     ; $5635: $16 $04
    cp [hl]                                       ; $5637: $be
    ld d, $04                                     ; $5638: $16 $04
    jp hl                                         ; $563a: $e9


    ld d, $04                                     ; $563b: $16 $04
    dec d                                         ; $563d: $15
    rla                                           ; $563e: $17
    inc b                                         ; $563f: $04
    dec [hl]                                      ; $5640: $35
    rla                                           ; $5641: $17
    inc b                                         ; $5642: $04
    ld c, e                                       ; $5643: $4b
    rla                                           ; $5644: $17
    inc b                                         ; $5645: $04
    ld l, c                                       ; $5646: $69
    rla                                           ; $5647: $17
    inc b                                         ; $5648: $04
    sub h                                         ; $5649: $94
    rla                                           ; $564a: $17
    inc b                                         ; $564b: $04
    xor a                                         ; $564c: $af
    rla                                           ; $564d: $17
    inc b                                         ; $564e: $04
    push de                                       ; $564f: $d5
    rla                                           ; $5650: $17
    inc b                                         ; $5651: $04
    ldh [rNR22], a                                ; $5652: $e0 $17
    inc b                                         ; $5654: $04
    dec e                                         ; $5655: $1d
    jr jr_02c_565c                                ; $5656: $18 $04

    add hl, hl                                    ; $5658: $29
    jr jr_02c_565f                                ; $5659: $18 $04

    inc [hl]                                      ; $565b: $34

jr_02c_565c:
    jr jr_02c_5662                                ; $565c: $18 $04

    inc a                                         ; $565e: $3c

jr_02c_565f:
    jr jr_02c_5665                                ; $565f: $18 $04

    ld c, l                                       ; $5661: $4d

jr_02c_5662:
    jr jr_02c_5668                                ; $5662: $18 $04

    ld h, h                                       ; $5664: $64

jr_02c_5665:
    jr jr_02c_566b                                ; $5665: $18 $04

    ld [hl], l                                    ; $5667: $75

jr_02c_5668:
    jr @+$06                                      ; $5668: $18 $04

    cp a                                          ; $566a: $bf

jr_02c_566b:
    jr jr_02c_5671                                ; $566b: $18 $04

    cp $18                                        ; $566d: $fe $18
    inc b                                         ; $566f: $04
    db $10                                        ; $5670: $10

jr_02c_5671:
    add hl, de                                    ; $5671: $19
    inc b                                         ; $5672: $04
    jr nz, jr_02c_568e                            ; $5673: $20 $19

    inc b                                         ; $5675: $04
    ld c, d                                       ; $5676: $4a
    add hl, de                                    ; $5677: $19
    inc b                                         ; $5678: $04
    add e                                         ; $5679: $83
    add hl, de                                    ; $567a: $19
    inc b                                         ; $567b: $04
    ld [$0419], a                                 ; $567c: $ea $19 $04
    inc hl                                        ; $567f: $23
    ld a, [de]                                    ; $5680: $1a
    inc b                                         ; $5681: $04
    sub d                                         ; $5682: $92
    ld a, [de]                                    ; $5683: $1a
    inc b                                         ; $5684: $04
    or d                                          ; $5685: $b2
    ld a, [de]                                    ; $5686: $1a
    inc b                                         ; $5687: $04
    jp c, Jump_000_041a                           ; $5688: $da $1a $04

    inc d                                         ; $568b: $14
    dec de                                        ; $568c: $1b
    inc b                                         ; $568d: $04

jr_02c_568e:
    dec e                                         ; $568e: $1d
    dec de                                        ; $568f: $1b
    inc b                                         ; $5690: $04
    ld a, $1b                                     ; $5691: $3e $1b
    inc b                                         ; $5693: $04
    and b                                         ; $5694: $a0
    dec de                                        ; $5695: $1b
    inc b                                         ; $5696: $04
    rst $08                                       ; $5697: $cf
    dec de                                        ; $5698: $1b
    inc b                                         ; $5699: $04
    dec bc                                        ; $569a: $0b
    inc e                                         ; $569b: $1c
    inc b                                         ; $569c: $04
    daa                                           ; $569d: $27
    inc e                                         ; $569e: $1c
    inc b                                         ; $569f: $04
    ld [hl], e                                    ; $56a0: $73
    inc e                                         ; $56a1: $1c
    inc b                                         ; $56a2: $04
    ldh [rNR32], a                                ; $56a3: $e0 $1c
    inc b                                         ; $56a5: $04
    cp $1c                                        ; $56a6: $fe $1c
    inc b                                         ; $56a8: $04
    ld d, c                                       ; $56a9: $51
    dec e                                         ; $56aa: $1d
    inc b                                         ; $56ab: $04
    cp c                                          ; $56ac: $b9
    dec e                                         ; $56ad: $1d
    inc b                                         ; $56ae: $04
    push bc                                       ; $56af: $c5
    dec e                                         ; $56b0: $1d
    inc b                                         ; $56b1: $04
    ld [hl+], a                                   ; $56b2: $22
    ld e, $04                                     ; $56b3: $1e $04
    ld b, e                                       ; $56b5: $43
    ld e, $04                                     ; $56b6: $1e $04

Call_02c_56b8:
    ld d, c                                       ; $56b8: $51
    ld e, $04                                     ; $56b9: $1e $04
    sub c                                         ; $56bb: $91
    ld e, $04                                     ; $56bc: $1e $04
    or c                                          ; $56be: $b1
    ld e, $04                                     ; $56bf: $1e $04
    db $dd                                        ; $56c1: $dd
    ld e, $04                                     ; $56c2: $1e $04
    db $e3                                        ; $56c4: $e3
    ld e, $04                                     ; $56c5: $1e $04
    ld b, a                                       ; $56c7: $47
    rra                                           ; $56c8: $1f
    inc b                                         ; $56c9: $04
    ld c, l                                       ; $56ca: $4d
    rra                                           ; $56cb: $1f
    inc b                                         ; $56cc: $04
    adc d                                         ; $56cd: $8a
    rra                                           ; $56ce: $1f
    inc b                                         ; $56cf: $04
    sub h                                         ; $56d0: $94
    rra                                           ; $56d1: $1f
    inc b                                         ; $56d2: $04
    ld b, $20                                     ; $56d3: $06 $20
    inc b                                         ; $56d5: $04
    ld b, c                                       ; $56d6: $41
    jr nz, jr_02c_56dd                            ; $56d7: $20 $04

    xor h                                         ; $56d9: $ac
    jr nz, @+$06                                  ; $56da: $20 $04

    ret nz                                        ; $56dc: $c0

jr_02c_56dd:
    jr nz, jr_02c_56e3                            ; $56dd: $20 $04

    call $0420                                    ; $56df: $cd $20 $04
    rst $10                                       ; $56e2: $d7

jr_02c_56e3:
    jr nz, jr_02c_56e9                            ; $56e3: $20 $04

    db $f4                                        ; $56e5: $f4
    jr nz, jr_02c_56ec                            ; $56e6: $20 $04

    inc l                                         ; $56e8: $2c

jr_02c_56e9:
    ld hl, $4104                                  ; $56e9: $21 $04 $41

jr_02c_56ec:
    ld hl, $6704                                  ; $56ec: $21 $04 $67
    ld hl, $9204                                  ; $56ef: $21 $04 $92
    ld hl, $d004                                  ; $56f2: $21 $04 $d0
    ld hl, $0e04                                  ; $56f5: $21 $04 $0e
    ld [hl+], a                                   ; $56f8: $22
    inc b                                         ; $56f9: $04
    ld c, d                                       ; $56fa: $4a
    ld [hl+], a                                   ; $56fb: $22
    inc b                                         ; $56fc: $04
    sbc d                                         ; $56fd: $9a
    ld [hl+], a                                   ; $56fe: $22
    inc b                                         ; $56ff: $04
    cp h                                          ; $5700: $bc
    ld [hl+], a                                   ; $5701: $22
    inc b                                         ; $5702: $04
    db $d3                                        ; $5703: $d3
    ld [hl+], a                                   ; $5704: $22
    inc b                                         ; $5705: $04
    ld b, d                                       ; $5706: $42
    inc hl                                        ; $5707: $23
    inc b                                         ; $5708: $04
    ld l, a                                       ; $5709: $6f
    inc hl                                        ; $570a: $23
    inc b                                         ; $570b: $04
    ret                                           ; $570c: $c9


    inc hl                                        ; $570d: $23
    inc b                                         ; $570e: $04
    rst $20                                       ; $570f: $e7
    inc hl                                        ; $5710: $23
    inc b                                         ; $5711: $04
    ld e, e                                       ; $5712: $5b
    inc h                                         ; $5713: $24
    inc b                                         ; $5714: $04
    add d                                         ; $5715: $82
    inc h                                         ; $5716: $24
    inc b                                         ; $5717: $04
    sub l                                         ; $5718: $95
    inc h                                         ; $5719: $24
    inc b                                         ; $571a: $04
    and e                                         ; $571b: $a3
    inc h                                         ; $571c: $24
    inc b                                         ; $571d: $04
    ld [c], a                                     ; $571e: $e2
    inc h                                         ; $571f: $24
    inc b                                         ; $5720: $04
    xor $24                                       ; $5721: $ee $24
    inc b                                         ; $5723: $04
    add hl, de                                    ; $5724: $19
    dec h                                         ; $5725: $25
    inc b                                         ; $5726: $04
    dec [hl]                                      ; $5727: $35
    dec h                                         ; $5728: $25
    inc b                                         ; $5729: $04
    ld d, l                                       ; $572a: $55
    dec h                                         ; $572b: $25
    inc b                                         ; $572c: $04
    ld l, d                                       ; $572d: $6a
    dec h                                         ; $572e: $25
    inc b                                         ; $572f: $04
    ld a, c                                       ; $5730: $79
    dec h                                         ; $5731: $25
    inc b                                         ; $5732: $04
    add h                                         ; $5733: $84
    dec h                                         ; $5734: $25
    inc b                                         ; $5735: $04
    cp [hl]                                       ; $5736: $be
    dec h                                         ; $5737: $25
    inc b                                         ; $5738: $04
    jp c, $0425                                   ; $5739: $da $25 $04

    dec hl                                        ; $573c: $2b
    ld h, $04                                     ; $573d: $26 $04
    ld c, l                                       ; $573f: $4d
    ld h, $04                                     ; $5740: $26 $04
    ld l, [hl]                                    ; $5742: $6e
    ld h, $04                                     ; $5743: $26 $04
    sub a                                         ; $5745: $97
    ld h, $04                                     ; $5746: $26 $04
    cp l                                          ; $5748: $bd
    ld h, $04                                     ; $5749: $26 $04
    call c, Call_000_0426                         ; $574b: $dc $26 $04
    ldh a, [rNR52]                                ; $574e: $f0 $26
    inc b                                         ; $5750: $04
    ld d, $27                                     ; $5751: $16 $27
    inc b                                         ; $5753: $04
    ld h, $27                                     ; $5754: $26 $27
    inc b                                         ; $5756: $04
    ccf                                           ; $5757: $3f
    daa                                           ; $5758: $27
    inc b                                         ; $5759: $04
    ld d, b                                       ; $575a: $50
    daa                                           ; $575b: $27
    inc b                                         ; $575c: $04
    ld h, e                                       ; $575d: $63
    daa                                           ; $575e: $27
    inc b                                         ; $575f: $04
    adc [hl]                                      ; $5760: $8e
    daa                                           ; $5761: $27
    inc b                                         ; $5762: $04
    db $e4                                        ; $5763: $e4
    daa                                           ; $5764: $27
    inc b                                         ; $5765: $04
    cp $27                                        ; $5766: $fe $27
    inc b                                         ; $5768: $04
    ld a, [bc]                                    ; $5769: $0a
    jr z, @+$06                                   ; $576a: $28 $04

    ld e, $28                                     ; $576c: $1e $28
    inc b                                         ; $576e: $04
    ld sp, $0428                                  ; $576f: $31 $28 $04
    ld e, l                                       ; $5772: $5d
    jr z, jr_02c_5779                             ; $5773: $28 $04

    ld [hl], a                                    ; $5775: $77
    jr z, jr_02c_577c                             ; $5776: $28 $04

    db $dd                                        ; $5778: $dd

jr_02c_5779:
    jr z, jr_02c_577f                             ; $5779: $28 $04

    dec de                                        ; $577b: $1b

jr_02c_577c:
    add hl, hl                                    ; $577c: $29
    inc b                                         ; $577d: $04
    ld [hl], c                                    ; $577e: $71

jr_02c_577f:
    add hl, hl                                    ; $577f: $29
    inc b                                         ; $5780: $04
    ld a, d                                       ; $5781: $7a
    add hl, hl                                    ; $5782: $29
    inc b                                         ; $5783: $04
    adc e                                         ; $5784: $8b
    add hl, hl                                    ; $5785: $29
    inc b                                         ; $5786: $04
    and e                                         ; $5787: $a3
    add hl, hl                                    ; $5788: $29
    inc b                                         ; $5789: $04
    jp c, Jump_000_0429                           ; $578a: $da $29 $04

    ld a, [$0429]                                 ; $578d: $fa $29 $04
    ld l, $2a                                     ; $5790: $2e $2a
    inc b                                         ; $5792: $04
    ld b, l                                       ; $5793: $45
    ld a, [hl+]                                   ; $5794: $2a
    inc b                                         ; $5795: $04
    ld l, e                                       ; $5796: $6b
    ld a, [hl+]                                   ; $5797: $2a
    inc b                                         ; $5798: $04
    ld [hl], h                                    ; $5799: $74
    ld a, [hl+]                                   ; $579a: $2a
    inc b                                         ; $579b: $04
    adc l                                         ; $579c: $8d
    ld a, [hl+]                                   ; $579d: $2a
    inc b                                         ; $579e: $04
    call c, Call_000_042a                         ; $579f: $dc $2a $04
    db $ed                                        ; $57a2: $ed
    ld a, [hl+]                                   ; $57a3: $2a
    inc b                                         ; $57a4: $04
    ld a, [hl+]                                   ; $57a5: $2a
    dec hl                                        ; $57a6: $2b
    inc b                                         ; $57a7: $04
    ld c, d                                       ; $57a8: $4a
    dec hl                                        ; $57a9: $2b
    inc b                                         ; $57aa: $04
    sbc [hl]                                      ; $57ab: $9e
    dec hl                                        ; $57ac: $2b
    inc b                                         ; $57ad: $04
    jp nz, $042b                                  ; $57ae: $c2 $2b $04

    jp z, $042b                                   ; $57b1: $ca $2b $04

    add sp, $2b                                   ; $57b4: $e8 $2b
    inc b                                         ; $57b6: $04
    rst $30                                       ; $57b7: $f7
    dec hl                                        ; $57b8: $2b
    inc b                                         ; $57b9: $04
    inc bc                                        ; $57ba: $03
    inc l                                         ; $57bb: $2c
    inc b                                         ; $57bc: $04
    inc de                                        ; $57bd: $13
    inc l                                         ; $57be: $2c
    inc b                                         ; $57bf: $04
    dec e                                         ; $57c0: $1d
    inc l                                         ; $57c1: $2c
    inc b                                         ; $57c2: $04
    jr z, @+$2e                                   ; $57c3: $28 $2c

    inc b                                         ; $57c5: $04
    scf                                           ; $57c6: $37
    inc l                                         ; $57c7: $2c
    inc b                                         ; $57c8: $04
    ld b, d                                       ; $57c9: $42
    inc l                                         ; $57ca: $2c
    inc b                                         ; $57cb: $04
    ld d, b                                       ; $57cc: $50
    inc l                                         ; $57cd: $2c
    inc b                                         ; $57ce: $04
    ld h, l                                       ; $57cf: $65
    inc l                                         ; $57d0: $2c
    inc b                                         ; $57d1: $04
    ld h, a                                       ; $57d2: $67
    inc l                                         ; $57d3: $2c
    inc b                                         ; $57d4: $04
    halt                                          ; $57d5: $76
    inc l                                         ; $57d6: $2c
    inc b                                         ; $57d7: $04
    adc [hl]                                      ; $57d8: $8e
    inc l                                         ; $57d9: $2c
    inc b                                         ; $57da: $04
    and [hl]                                      ; $57db: $a6
    inc l                                         ; $57dc: $2c
    inc b                                         ; $57dd: $04
    xor b                                         ; $57de: $a8
    inc l                                         ; $57df: $2c
    inc b                                         ; $57e0: $04
    xor d                                         ; $57e1: $aa
    inc l                                         ; $57e2: $2c
    inc b                                         ; $57e3: $04
    ret z                                         ; $57e4: $c8

    inc l                                         ; $57e5: $2c
    inc b                                         ; $57e6: $04
    rst $10                                       ; $57e7: $d7
    inc l                                         ; $57e8: $2c
    inc b                                         ; $57e9: $04
    reti                                          ; $57ea: $d9


    inc l                                         ; $57eb: $2c
    inc b                                         ; $57ec: $04
    add sp, $2c                                   ; $57ed: $e8 $2c
    inc b                                         ; $57ef: $04
    ld [$042c], a                                 ; $57f0: $ea $2c $04
    db $ec                                        ; $57f3: $ec
    inc l                                         ; $57f4: $2c
    inc b                                         ; $57f5: $04
    cp $2c                                        ; $57f6: $fe $2c
    inc b                                         ; $57f8: $04
    ld c, $2d                                     ; $57f9: $0e $2d
    inc b                                         ; $57fb: $04
    ld e, $2d                                     ; $57fc: $1e $2d
    inc b                                         ; $57fe: $04
    jr nz, jr_02c_582e                            ; $57ff: $20 $2d

    inc b                                         ; $5801: $04
    ld [hl+], a                                   ; $5802: $22
    dec l                                         ; $5803: $2d
    inc b                                         ; $5804: $04
    inc h                                         ; $5805: $24
    dec l                                         ; $5806: $2d
    inc b                                         ; $5807: $04
    ld [hl], $2d                                  ; $5808: $36 $2d
    inc b                                         ; $580a: $04
    jr c, jr_02c_583a                             ; $580b: $38 $2d

    inc b                                         ; $580d: $04
    ld a, [hl-]                                   ; $580e: $3a
    dec l                                         ; $580f: $2d
    inc b                                         ; $5810: $04
    inc a                                         ; $5811: $3c
    dec l                                         ; $5812: $2d
    inc b                                         ; $5813: $04
    ld a, $2d                                     ; $5814: $3e $2d
    inc b                                         ; $5816: $04
    ld b, b                                       ; $5817: $40
    dec l                                         ; $5818: $2d
    inc b                                         ; $5819: $04
    ld b, d                                       ; $581a: $42
    dec l                                         ; $581b: $2d
    inc b                                         ; $581c: $04
    ld b, h                                       ; $581d: $44
    dec l                                         ; $581e: $2d
    inc b                                         ; $581f: $04
    ld b, [hl]                                    ; $5820: $46
    dec l                                         ; $5821: $2d
    inc b                                         ; $5822: $04
    ld d, d                                       ; $5823: $52
    dec l                                         ; $5824: $2d
    inc b                                         ; $5825: $04
    ld h, h                                       ; $5826: $64
    dec l                                         ; $5827: $2d
    inc b                                         ; $5828: $04
    ld [hl], h                                    ; $5829: $74
    dec l                                         ; $582a: $2d
    inc b                                         ; $582b: $04
    halt                                          ; $582c: $76
    dec l                                         ; $582d: $2d

jr_02c_582e:
    inc b                                         ; $582e: $04
    ld a, b                                       ; $582f: $78
    dec l                                         ; $5830: $2d
    inc b                                         ; $5831: $04
    ld a, d                                       ; $5832: $7a
    dec l                                         ; $5833: $2d
    inc b                                         ; $5834: $04
    ld a, h                                       ; $5835: $7c
    dec l                                         ; $5836: $2d
    inc b                                         ; $5837: $04
    ld a, [hl]                                    ; $5838: $7e
    dec l                                         ; $5839: $2d

jr_02c_583a:
    inc b                                         ; $583a: $04
    add b                                         ; $583b: $80
    dec l                                         ; $583c: $2d
    inc b                                         ; $583d: $04
    add d                                         ; $583e: $82
    dec l                                         ; $583f: $2d
    inc b                                         ; $5840: $04
    add h                                         ; $5841: $84
    dec l                                         ; $5842: $2d
    inc b                                         ; $5843: $04
    add [hl]                                      ; $5844: $86
    dec l                                         ; $5845: $2d
    inc b                                         ; $5846: $04
    adc b                                         ; $5847: $88
    dec l                                         ; $5848: $2d
    inc b                                         ; $5849: $04
    sub d                                         ; $584a: $92
    dec l                                         ; $584b: $2d
    inc b                                         ; $584c: $04
    and c                                         ; $584d: $a1
    dec l                                         ; $584e: $2d
    inc b                                         ; $584f: $04
    or d                                          ; $5850: $b2
    dec l                                         ; $5851: $2d
    inc b                                         ; $5852: $04
    cp a                                          ; $5853: $bf
    dec l                                         ; $5854: $2d
    inc b                                         ; $5855: $04
    jp nc, Jump_000_042d                          ; $5856: $d2 $2d $04

    db $e4                                        ; $5859: $e4
    dec l                                         ; $585a: $2d
    inc b                                         ; $585b: $04
    and $2d                                       ; $585c: $e6 $2d
    inc b                                         ; $585e: $04
    ei                                            ; $585f: $fb
    dec l                                         ; $5860: $2d
    inc b                                         ; $5861: $04
    db $fd                                        ; $5862: $fd
    dec l                                         ; $5863: $2d
    inc b                                         ; $5864: $04
    ld c, $2e                                     ; $5865: $0e $2e
    inc b                                         ; $5867: $04
    db $10                                        ; $5868: $10
    ld l, $04                                     ; $5869: $2e $04
    inc h                                         ; $586b: $24
    ld l, $04                                     ; $586c: $2e $04
    ld h, $2e                                     ; $586e: $26 $2e
    inc b                                         ; $5870: $04
    ld a, [hl-]                                   ; $5871: $3a
    ld l, $04                                     ; $5872: $2e $04
    ld b, l                                       ; $5874: $45
    ld l, $04                                     ; $5875: $2e $04
    ld e, [hl]                                    ; $5877: $5e
    ld l, $04                                     ; $5878: $2e $04
    ld [hl], b                                    ; $587a: $70
    ld l, $04                                     ; $587b: $2e $04
    add b                                         ; $587d: $80
    ld l, $04                                     ; $587e: $2e $04
    add d                                         ; $5880: $82
    ld l, $04                                     ; $5881: $2e $04

Call_02c_5883:
    add h                                         ; $5883: $84
    ld l, $04                                     ; $5884: $2e $04
    add [hl]                                      ; $5886: $86
    ld l, $04                                     ; $5887: $2e $04
    adc b                                         ; $5889: $88
    ld l, $04                                     ; $588a: $2e $04
    sbc c                                         ; $588c: $99
    ld l, $04                                     ; $588d: $2e $04
    xor h                                         ; $588f: $ac
    ld l, $04                                     ; $5890: $2e $04
    cp d                                          ; $5892: $ba
    ld l, $04                                     ; $5893: $2e $04
    rst $08                                       ; $5895: $cf
    ld l, $04                                     ; $5896: $2e $04
    ld [$042e], a                                 ; $5898: $ea $2e $04
    dec b                                         ; $589b: $05
    cpl                                           ; $589c: $2f
    inc b                                         ; $589d: $04
    jr jr_02c_58cf                                ; $589e: $18 $2f

    inc b                                         ; $58a0: $04
    jr z, jr_02c_58d2                             ; $58a1: $28 $2f

    inc b                                         ; $58a3: $04
    dec a                                         ; $58a4: $3d
    cpl                                           ; $58a5: $2f
    inc b                                         ; $58a6: $04
    ld d, h                                       ; $58a7: $54
    cpl                                           ; $58a8: $2f
    inc b                                         ; $58a9: $04
    ld l, e                                       ; $58aa: $6b
    cpl                                           ; $58ab: $2f
    inc b                                         ; $58ac: $04
    ld a, d                                       ; $58ad: $7a
    cpl                                           ; $58ae: $2f
    inc b                                         ; $58af: $04
    adc a                                         ; $58b0: $8f
    cpl                                           ; $58b1: $2f
    inc b                                         ; $58b2: $04
    sub c                                         ; $58b3: $91
    cpl                                           ; $58b4: $2f
    inc b                                         ; $58b5: $04
    xor l                                         ; $58b6: $ad
    cpl                                           ; $58b7: $2f
    inc b                                         ; $58b8: $04
    cp a                                          ; $58b9: $bf
    cpl                                           ; $58ba: $2f
    inc b                                         ; $58bb: $04
    adc $2f                                       ; $58bc: $ce $2f
    inc b                                         ; $58be: $04
    ldh [$2f], a                                  ; $58bf: $e0 $2f
    inc b                                         ; $58c1: $04
    ldh a, [$2f]                                  ; $58c2: $f0 $2f
    inc b                                         ; $58c4: $04
    ld a, [$042f]                                 ; $58c5: $fa $2f $04
    ld [$0430], sp                                ; $58c8: $08 $30 $04
    dec e                                         ; $58cb: $1d
    jr nc, jr_02c_58d2                            ; $58cc: $30 $04

    dec l                                         ; $58ce: $2d

jr_02c_58cf:
    jr nc, jr_02c_58d5                            ; $58cf: $30 $04

    add hl, sp                                    ; $58d1: $39

jr_02c_58d2:
    jr nc, jr_02c_58d8                            ; $58d2: $30 $04

    ld b, a                                       ; $58d4: $47

jr_02c_58d5:
    jr nc, jr_02c_58db                            ; $58d5: $30 $04

    ld d, a                                       ; $58d7: $57

jr_02c_58d8:
    jr nc, jr_02c_58de                            ; $58d8: $30 $04

    ld h, h                                       ; $58da: $64

jr_02c_58db:
    jr nc, jr_02c_58e1                            ; $58db: $30 $04

    halt                                          ; $58dd: $76

jr_02c_58de:
    jr nc, jr_02c_58e4                            ; $58de: $30 $04

    ld a, l                                       ; $58e0: $7d

jr_02c_58e1:
    jr nc, jr_02c_58e7                            ; $58e1: $30 $04

    adc b                                         ; $58e3: $88

jr_02c_58e4:
    jr nc, jr_02c_58ea                            ; $58e4: $30 $04

    sub [hl]                                      ; $58e6: $96

jr_02c_58e7:
    jr nc, jr_02c_58ed                            ; $58e7: $30 $04

    and e                                         ; $58e9: $a3

jr_02c_58ea:
    jr nc, jr_02c_58f0                            ; $58ea: $30 $04

    or e                                          ; $58ec: $b3

jr_02c_58ed:
    jr nc, @+$06                                  ; $58ed: $30 $04

    cp [hl]                                       ; $58ef: $be

jr_02c_58f0:
    jr nc, @+$06                                  ; $58f0: $30 $04

    call z, Call_000_0430                         ; $58f2: $cc $30 $04
    jp c, Jump_000_0430                           ; $58f5: $da $30 $04

    add sp, $30                                   ; $58f8: $e8 $30
    inc b                                         ; $58fa: $04
    db $f4                                        ; $58fb: $f4
    jr nc, jr_02c_5902                            ; $58fc: $30 $04

    cp $30                                        ; $58fe: $fe $30
    inc b                                         ; $5900: $04
    dec bc                                        ; $5901: $0b

jr_02c_5902:
    ld sp, $1604                                  ; $5902: $31 $04 $16
    ld sp, $2204                                  ; $5905: $31 $04 $22
    ld sp, $3204                                  ; $5908: $31 $04 $32
    ld sp, $3e04                                  ; $590b: $31 $04 $3e
    ld sp, $4c04                                  ; $590e: $31 $04 $4c
    ld sp, $6404                                  ; $5911: $31 $04 $64
    ld sp, $6f04                                  ; $5914: $31 $04 $6f
    ld sp, $7b04                                  ; $5917: $31 $04 $7b
    ld sp, $8704                                  ; $591a: $31 $04 $87
    ld sp, $9304                                  ; $591d: $31 $04 $93
    ld sp, $9f04                                  ; $5920: $31 $04 $9f
    ld sp, $ab04                                  ; $5923: $31 $04 $ab
    ld sp, $b704                                  ; $5926: $31 $04 $b7
    ld sp, $c204                                  ; $5929: $31 $04 $c2
    ld sp, $cd04                                  ; $592c: $31 $04 $cd
    ld sp, $d804                                  ; $592f: $31 $04 $d8
    ld sp, $e304                                  ; $5932: $31 $04 $e3
    ld sp, $ee04                                  ; $5935: $31 $04 $ee
    ld sp, $f904                                  ; $5938: $31 $04 $f9
    ld sp, $0604                                  ; $593b: $31 $04 $06
    ld [hl-], a                                   ; $593e: $32
    inc b                                         ; $593f: $04
    dec c                                         ; $5940: $0d
    ld [hl-], a                                   ; $5941: $32
    inc b                                         ; $5942: $04
    inc d                                         ; $5943: $14
    ld [hl-], a                                   ; $5944: $32
    inc b                                         ; $5945: $04
    ld e, $32                                     ; $5946: $1e $32
    inc b                                         ; $5948: $04
    ld [hl+], a                                   ; $5949: $22
    ld [hl-], a                                   ; $594a: $32
    inc b                                         ; $594b: $04
    ld l, $32                                     ; $594c: $2e $32
    inc b                                         ; $594e: $04
    inc a                                         ; $594f: $3c
    ld [hl-], a                                   ; $5950: $32
    inc b                                         ; $5951: $04
    ld d, b                                       ; $5952: $50
    ld [hl-], a                                   ; $5953: $32
    inc b                                         ; $5954: $04
    ld e, e                                       ; $5955: $5b
    ld [hl-], a                                   ; $5956: $32
    inc b                                         ; $5957: $04
    ld h, [hl]                                    ; $5958: $66
    ld [hl-], a                                   ; $5959: $32
    inc b                                         ; $595a: $04
    ld [hl], c                                    ; $595b: $71
    ld [hl-], a                                   ; $595c: $32
    inc b                                         ; $595d: $04
    ld a, h                                       ; $595e: $7c
    ld [hl-], a                                   ; $595f: $32
    inc b                                         ; $5960: $04
    add a                                         ; $5961: $87
    ld [hl-], a                                   ; $5962: $32
    inc b                                         ; $5963: $04
    sub d                                         ; $5964: $92
    ld [hl-], a                                   ; $5965: $32
    inc b                                         ; $5966: $04
    sbc l                                         ; $5967: $9d
    ld [hl-], a                                   ; $5968: $32
    inc b                                         ; $5969: $04
    xor e                                         ; $596a: $ab
    ld [hl-], a                                   ; $596b: $32
    inc b                                         ; $596c: $04
    cp h                                          ; $596d: $bc
    ld [hl-], a                                   ; $596e: $32
    inc b                                         ; $596f: $04
    ret                                           ; $5970: $c9


    ld [hl-], a                                   ; $5971: $32
    inc b                                         ; $5972: $04
    call nc, $0432                                ; $5973: $d4 $32 $04
    rst $18                                       ; $5976: $df
    ld [hl-], a                                   ; $5977: $32
    inc b                                         ; $5978: $04
    db $ed                                        ; $5979: $ed
    ld [hl-], a                                   ; $597a: $32
    inc b                                         ; $597b: $04
    db $fd                                        ; $597c: $fd
    ld [hl-], a                                   ; $597d: $32
    inc b                                         ; $597e: $04
    add hl, bc                                    ; $597f: $09
    inc sp                                        ; $5980: $33
    inc b                                         ; $5981: $04
    inc de                                        ; $5982: $13
    inc sp                                        ; $5983: $33
    inc b                                         ; $5984: $04
    ld e, $33                                     ; $5985: $1e $33
    inc b                                         ; $5987: $04
    jr z, jr_02c_59bd                             ; $5988: $28 $33

    inc b                                         ; $598a: $04
    inc [hl]                                      ; $598b: $34
    inc sp                                        ; $598c: $33
    inc b                                         ; $598d: $04
    dec sp                                        ; $598e: $3b
    inc sp                                        ; $598f: $33
    inc b                                         ; $5990: $04
    ld c, c                                       ; $5991: $49
    inc sp                                        ; $5992: $33
    inc b                                         ; $5993: $04
    ld d, l                                       ; $5994: $55
    inc sp                                        ; $5995: $33
    inc b                                         ; $5996: $04
    ld h, l                                       ; $5997: $65
    inc sp                                        ; $5998: $33
    inc b                                         ; $5999: $04
    ld l, a                                       ; $599a: $6f
    inc sp                                        ; $599b: $33
    inc b                                         ; $599c: $04
    ld [hl], a                                    ; $599d: $77
    inc sp                                        ; $599e: $33
    inc b                                         ; $599f: $04
    add a                                         ; $59a0: $87
    inc sp                                        ; $59a1: $33
    inc b                                         ; $59a2: $04
    sbc h                                         ; $59a3: $9c
    inc sp                                        ; $59a4: $33
    inc b                                         ; $59a5: $04
    xor a                                         ; $59a6: $af
    inc sp                                        ; $59a7: $33
    inc b                                         ; $59a8: $04
    cp d                                          ; $59a9: $ba
    inc sp                                        ; $59aa: $33
    inc b                                         ; $59ab: $04
    call nz, Call_000_0433                        ; $59ac: $c4 $33 $04
    call nc, Call_000_0433                        ; $59af: $d4 $33 $04
    pop hl                                        ; $59b2: $e1
    inc sp                                        ; $59b3: $33
    inc b                                         ; $59b4: $04
    db $ed                                        ; $59b5: $ed
    inc sp                                        ; $59b6: $33
    inc b                                         ; $59b7: $04
    ld hl, sp+$33                                 ; $59b8: $f8 $33
    inc b                                         ; $59ba: $04
    rst $38                                       ; $59bb: $ff
    inc sp                                        ; $59bc: $33

jr_02c_59bd:
    inc b                                         ; $59bd: $04
    ld [de], a                                    ; $59be: $12
    inc [hl]                                      ; $59bf: $34
    inc b                                         ; $59c0: $04
    rra                                           ; $59c1: $1f
    inc [hl]                                      ; $59c2: $34
    inc b                                         ; $59c3: $04
    dec l                                         ; $59c4: $2d
    inc [hl]                                      ; $59c5: $34
    inc b                                         ; $59c6: $04
    dec sp                                        ; $59c7: $3b
    inc [hl]                                      ; $59c8: $34
    inc b                                         ; $59c9: $04
    ld c, c                                       ; $59ca: $49
    inc [hl]                                      ; $59cb: $34
    inc b                                         ; $59cc: $04
    ld e, l                                       ; $59cd: $5d
    inc [hl]                                      ; $59ce: $34
    inc b                                         ; $59cf: $04
    ld [hl], b                                    ; $59d0: $70
    inc [hl]                                      ; $59d1: $34
    inc b                                         ; $59d2: $04
    ld a, l                                       ; $59d3: $7d
    inc [hl]                                      ; $59d4: $34
    inc b                                         ; $59d5: $04
    adc h                                         ; $59d6: $8c
    inc [hl]                                      ; $59d7: $34
    inc b                                         ; $59d8: $04
    sub d                                         ; $59d9: $92
    inc [hl]                                      ; $59da: $34
    inc b                                         ; $59db: $04
    sbc a                                         ; $59dc: $9f
    inc [hl]                                      ; $59dd: $34
    inc b                                         ; $59de: $04
    xor l                                         ; $59df: $ad
    inc [hl]                                      ; $59e0: $34
    inc b                                         ; $59e1: $04
    cp b                                          ; $59e2: $b8
    inc [hl]                                      ; $59e3: $34
    inc b                                         ; $59e4: $04
    rst $00                                       ; $59e5: $c7
    inc [hl]                                      ; $59e6: $34
    inc b                                         ; $59e7: $04
    reti                                          ; $59e8: $d9


    inc [hl]                                      ; $59e9: $34
    inc b                                         ; $59ea: $04
    db $e3                                        ; $59eb: $e3
    inc [hl]                                      ; $59ec: $34
    inc b                                         ; $59ed: $04
    ld [$0434], a                                 ; $59ee: $ea $34 $04
    push af                                       ; $59f1: $f5
    inc [hl]                                      ; $59f2: $34
    inc b                                         ; $59f3: $04
    ld [$0435], sp                                ; $59f4: $08 $35 $04
    ld d, $35                                     ; $59f7: $16 $35
    inc b                                         ; $59f9: $04
    add hl, hl                                    ; $59fa: $29
    dec [hl]                                      ; $59fb: $35
    inc b                                         ; $59fc: $04
    ld b, d                                       ; $59fd: $42
    dec [hl]                                      ; $59fe: $35
    inc b                                         ; $59ff: $04
    ld e, d                                       ; $5a00: $5a
    dec [hl]                                      ; $5a01: $35
    inc b                                         ; $5a02: $04
    ld l, e                                       ; $5a03: $6b
    dec [hl]                                      ; $5a04: $35
    inc b                                         ; $5a05: $04
    adc h                                         ; $5a06: $8c
    dec [hl]                                      ; $5a07: $35
    inc b                                         ; $5a08: $04
    and e                                         ; $5a09: $a3
    dec [hl]                                      ; $5a0a: $35
    inc b                                         ; $5a0b: $04
    cp a                                          ; $5a0c: $bf
    dec [hl]                                      ; $5a0d: $35
    inc b                                         ; $5a0e: $04
    rst $18                                       ; $5a0f: $df
    dec [hl]                                      ; $5a10: $35
    inc b                                         ; $5a11: $04
    ei                                            ; $5a12: $fb
    dec [hl]                                      ; $5a13: $35
    inc b                                         ; $5a14: $04
    ld de, $0436                                  ; $5a15: $11 $36 $04
    dec e                                         ; $5a18: $1d
    ld [hl], $04                                  ; $5a19: $36 $04
    ld a, [hl+]                                   ; $5a1b: $2a
    ld [hl], $04                                  ; $5a1c: $36 $04
    scf                                           ; $5a1e: $37
    ld [hl], $04                                  ; $5a1f: $36 $04
    ld b, h                                       ; $5a21: $44
    ld [hl], $04                                  ; $5a22: $36 $04
    ld e, b                                       ; $5a24: $58
    ld [hl], $04                                  ; $5a25: $36 $04
    ld l, c                                       ; $5a27: $69
    ld [hl], $04                                  ; $5a28: $36 $04
    ld a, l                                       ; $5a2a: $7d
    ld [hl], $04                                  ; $5a2b: $36 $04
    sub b                                         ; $5a2d: $90
    ld [hl], $04                                  ; $5a2e: $36 $04
    and e                                         ; $5a30: $a3
    ld [hl], $04                                  ; $5a31: $36 $04
    cp d                                          ; $5a33: $ba
    ld [hl], $04                                  ; $5a34: $36 $04
    call $0436                                    ; $5a36: $cd $36 $04
    ld [c], a                                     ; $5a39: $e2
    ld [hl], $04                                  ; $5a3a: $36 $04
    ld [bc], a                                    ; $5a3c: $02
    scf                                           ; $5a3d: $37
    inc b                                         ; $5a3e: $04
    ld d, $37                                     ; $5a3f: $16 $37
    inc b                                         ; $5a41: $04
    ld [hl-], a                                   ; $5a42: $32
    scf                                           ; $5a43: $37
    inc b                                         ; $5a44: $04
    ld c, a                                       ; $5a45: $4f
    scf                                           ; $5a46: $37
    inc b                                         ; $5a47: $04
    ld l, h                                       ; $5a48: $6c
    scf                                           ; $5a49: $37
    inc b                                         ; $5a4a: $04
    adc c                                         ; $5a4b: $89
    scf                                           ; $5a4c: $37
    inc b                                         ; $5a4d: $04
    and [hl]                                      ; $5a4e: $a6
    scf                                           ; $5a4f: $37
    inc b                                         ; $5a50: $04
    jp Jump_000_0437                              ; $5a51: $c3 $37 $04


    ret nc                                        ; $5a54: $d0

    scf                                           ; $5a55: $37
    inc b                                         ; $5a56: $04
    db $dd                                        ; $5a57: $dd
    scf                                           ; $5a58: $37
    inc b                                         ; $5a59: $04
    ld [$0437], a                                 ; $5a5a: $ea $37 $04
    rst $30                                       ; $5a5d: $f7
    scf                                           ; $5a5e: $37
    inc b                                         ; $5a5f: $04
    inc b                                         ; $5a60: $04
    jr c, jr_02c_5a67                             ; $5a61: $38 $04

    ld de, $0438                                  ; $5a63: $11 $38 $04
    inc l                                         ; $5a66: $2c

jr_02c_5a67:
    jr c, jr_02c_5a6d                             ; $5a67: $38 $04

    inc a                                         ; $5a69: $3c
    jr c, jr_02c_5a70                             ; $5a6a: $38 $04

    ld c, h                                       ; $5a6c: $4c

jr_02c_5a6d:
    jr c, jr_02c_5a73                             ; $5a6d: $38 $04

    ld e, [hl]                                    ; $5a6f: $5e

jr_02c_5a70:
    jr c, jr_02c_5a76                             ; $5a70: $38 $04

    ld l, d                                       ; $5a72: $6a

jr_02c_5a73:
    jr c, jr_02c_5a79                             ; $5a73: $38 $04

    ld a, [hl]                                    ; $5a75: $7e

jr_02c_5a76:
    jr c, jr_02c_5a7c                             ; $5a76: $38 $04

    sub d                                         ; $5a78: $92

jr_02c_5a79:
    jr c, jr_02c_5a7f                             ; $5a79: $38 $04

    and l                                         ; $5a7b: $a5

jr_02c_5a7c:
    jr c, jr_02c_5a82                             ; $5a7c: $38 $04

    cp d                                          ; $5a7e: $ba

jr_02c_5a7f:
    jr c, @+$06                                   ; $5a7f: $38 $04

    ret nc                                        ; $5a81: $d0

jr_02c_5a82:
    jr c, jr_02c_5a88                             ; $5a82: $38 $04

    and $38                                       ; $5a84: $e6 $38
    inc b                                         ; $5a86: $04
    db $fc                                        ; $5a87: $fc

jr_02c_5a88:
    jr c, @+$06                                   ; $5a88: $38 $04

    ld [de], a                                    ; $5a8a: $12
    add hl, sp                                    ; $5a8b: $39
    inc b                                         ; $5a8c: $04
    jr z, jr_02c_5ac8                             ; $5a8d: $28 $39

    inc b                                         ; $5a8f: $04
    ld a, $39                                     ; $5a90: $3e $39
    inc b                                         ; $5a92: $04
    ld d, h                                       ; $5a93: $54
    add hl, sp                                    ; $5a94: $39
    inc b                                         ; $5a95: $04
    ld l, h                                       ; $5a96: $6c
    add hl, sp                                    ; $5a97: $39
    inc b                                         ; $5a98: $04
    add e                                         ; $5a99: $83
    add hl, sp                                    ; $5a9a: $39
    inc b                                         ; $5a9b: $04
    sub l                                         ; $5a9c: $95
    add hl, sp                                    ; $5a9d: $39
    inc b                                         ; $5a9e: $04
    and a                                         ; $5a9f: $a7
    add hl, sp                                    ; $5aa0: $39
    inc b                                         ; $5aa1: $04
    jp Jump_000_0439                              ; $5aa2: $c3 $39 $04


    jp c, Jump_000_0439                           ; $5aa5: $da $39 $04

    ld a, [c]                                     ; $5aa8: $f2
    add hl, sp                                    ; $5aa9: $39
    inc b                                         ; $5aaa: $04
    inc b                                         ; $5aab: $04
    ld a, [hl-]                                   ; $5aac: $3a
    inc b                                         ; $5aad: $04
    dec e                                         ; $5aae: $1d
    ld a, [hl-]                                   ; $5aaf: $3a
    inc b                                         ; $5ab0: $04
    dec [hl]                                      ; $5ab1: $35
    ld a, [hl-]                                   ; $5ab2: $3a
    inc b                                         ; $5ab3: $04
    ld c, [hl]                                    ; $5ab4: $4e
    ld a, [hl-]                                   ; $5ab5: $3a
    inc b                                         ; $5ab6: $04
    ld e, h                                       ; $5ab7: $5c
    ld a, [hl-]                                   ; $5ab8: $3a
    inc b                                         ; $5ab9: $04
    ld [hl], c                                    ; $5aba: $71
    ld a, [hl-]                                   ; $5abb: $3a
    inc b                                         ; $5abc: $04
    add h                                         ; $5abd: $84
    ld a, [hl-]                                   ; $5abe: $3a
    inc b                                         ; $5abf: $04
    sbc d                                         ; $5ac0: $9a
    ld a, [hl-]                                   ; $5ac1: $3a
    inc b                                         ; $5ac2: $04
    xor [hl]                                      ; $5ac3: $ae
    ld a, [hl-]                                   ; $5ac4: $3a
    inc b                                         ; $5ac5: $04
    cp h                                          ; $5ac6: $bc
    ld a, [hl-]                                   ; $5ac7: $3a

jr_02c_5ac8:
    inc b                                         ; $5ac8: $04
    call nc, $043a                                ; $5ac9: $d4 $3a $04
    pop af                                        ; $5acc: $f1
    ld a, [hl-]                                   ; $5acd: $3a
    inc b                                         ; $5ace: $04
    dec bc                                        ; $5acf: $0b
    dec sp                                        ; $5ad0: $3b
    inc b                                         ; $5ad1: $04
    ld e, $3b                                     ; $5ad2: $1e $3b
    inc b                                         ; $5ad4: $04
    jr nc, jr_02c_5b12                            ; $5ad5: $30 $3b

    inc b                                         ; $5ad7: $04
    ld b, c                                       ; $5ad8: $41
    dec sp                                        ; $5ad9: $3b
    inc b                                         ; $5ada: $04
    ld d, l                                       ; $5adb: $55
    dec sp                                        ; $5adc: $3b
    inc b                                         ; $5add: $04
    ld l, b                                       ; $5ade: $68
    dec sp                                        ; $5adf: $3b
    inc b                                         ; $5ae0: $04
    halt                                          ; $5ae1: $76
    dec sp                                        ; $5ae2: $3b
    inc b                                         ; $5ae3: $04
    adc [hl]                                      ; $5ae4: $8e
    dec sp                                        ; $5ae5: $3b
    inc b                                         ; $5ae6: $04
    and l                                         ; $5ae7: $a5
    dec sp                                        ; $5ae8: $3b
    inc b                                         ; $5ae9: $04
    cp d                                          ; $5aea: $ba
    dec sp                                        ; $5aeb: $3b
    inc b                                         ; $5aec: $04
    adc $3b                                       ; $5aed: $ce $3b
    inc b                                         ; $5aef: $04
    ld [c], a                                     ; $5af0: $e2
    dec sp                                        ; $5af1: $3b
    inc b                                         ; $5af2: $04
    or $3b                                        ; $5af3: $f6 $3b
    inc b                                         ; $5af5: $04
    db $10                                        ; $5af6: $10
    inc a                                         ; $5af7: $3c
    inc b                                         ; $5af8: $04
    jr nc, @+$3e                                  ; $5af9: $30 $3c

    inc b                                         ; $5afb: $04
    ld b, c                                       ; $5afc: $41
    inc a                                         ; $5afd: $3c
    inc b                                         ; $5afe: $04
    ld e, b                                       ; $5aff: $58
    inc a                                         ; $5b00: $3c
    inc b                                         ; $5b01: $04
    ld l, d                                       ; $5b02: $6a
    inc a                                         ; $5b03: $3c
    inc b                                         ; $5b04: $04
    ld a, a                                       ; $5b05: $7f
    inc a                                         ; $5b06: $3c
    inc b                                         ; $5b07: $04
    sub l                                         ; $5b08: $95
    inc a                                         ; $5b09: $3c
    inc b                                         ; $5b0a: $04
    xor b                                         ; $5b0b: $a8
    inc a                                         ; $5b0c: $3c
    inc b                                         ; $5b0d: $04
    cp a                                          ; $5b0e: $bf
    inc a                                         ; $5b0f: $3c
    inc b                                         ; $5b10: $04
    pop de                                        ; $5b11: $d1

jr_02c_5b12:
    inc a                                         ; $5b12: $3c
    inc b                                         ; $5b13: $04
    jp hl                                         ; $5b14: $e9


    inc a                                         ; $5b15: $3c
    inc b                                         ; $5b16: $04
    ld sp, hl                                     ; $5b17: $f9
    inc a                                         ; $5b18: $3c
    inc b                                         ; $5b19: $04
    rrca                                          ; $5b1a: $0f
    dec a                                         ; $5b1b: $3d
    inc b                                         ; $5b1c: $04
    jr nz, jr_02c_5b5c                            ; $5b1d: $20 $3d

    inc b                                         ; $5b1f: $04
    and $3d                                       ; $5b20: $e6 $3d
    inc b                                         ; $5b22: $04
    add hl, bc                                    ; $5b23: $09
    ld a, $04                                     ; $5b24: $3e $04
    inc d                                         ; $5b26: $14
    ld a, $04                                     ; $5b27: $3e $04
    dec e                                         ; $5b29: $1d
    ld a, $04                                     ; $5b2a: $3e $04
    ld l, $3e                                     ; $5b2c: $2e $3e
    inc b                                         ; $5b2e: $04
    dec sp                                        ; $5b2f: $3b
    ld a, $04                                     ; $5b30: $3e $04
    ld c, [hl]                                    ; $5b32: $4e
    ld a, $04                                     ; $5b33: $3e $04
    ld e, d                                       ; $5b35: $5a
    ld a, $04                                     ; $5b36: $3e $04
    ld l, e                                       ; $5b38: $6b
    ld a, $04                                     ; $5b39: $3e $04
    ld [hl], d                                    ; $5b3b: $72
    ld a, $04                                     ; $5b3c: $3e $04
    ld a, c                                       ; $5b3e: $79
    ld a, $04                                     ; $5b3f: $3e $04
    add b                                         ; $5b41: $80
    ld a, $04                                     ; $5b42: $3e $04
    add a                                         ; $5b44: $87
    ld a, $04                                     ; $5b45: $3e $04
    adc [hl]                                      ; $5b47: $8e
    ld a, $04                                     ; $5b48: $3e $04
    sub a                                         ; $5b4a: $97
    ld a, $04                                     ; $5b4b: $3e $04
    xor a                                         ; $5b4d: $af
    ld a, $04                                     ; $5b4e: $3e $04
    cp d                                          ; $5b50: $ba
    ld a, $04                                     ; $5b51: $3e $04
    add $3e                                       ; $5b53: $c6 $3e
    inc b                                         ; $5b55: $04
    jp nc, $043e                                  ; $5b56: $d2 $3e $04

    sbc $3e                                       ; $5b59: $de $3e
    inc b                                         ; $5b5b: $04

jr_02c_5b5c:
    ld a, [c]                                     ; $5b5c: $f2
    ld a, $04                                     ; $5b5d: $3e $04
    rst $38                                       ; $5b5f: $ff
    ld a, $04                                     ; $5b60: $3e $04
    inc b                                         ; $5b62: $04
    ccf                                           ; $5b63: $3f
    inc b                                         ; $5b64: $04
    ld c, $3f                                     ; $5b65: $0e $3f
    inc b                                         ; $5b67: $04
    inc d                                         ; $5b68: $14
    ccf                                           ; $5b69: $3f
    inc b                                         ; $5b6a: $04
    ld a, [de]                                    ; $5b6b: $1a
    ccf                                           ; $5b6c: $3f
    inc b                                         ; $5b6d: $04
    daa                                           ; $5b6e: $27
    ccf                                           ; $5b6f: $3f
    inc b                                         ; $5b70: $04
    ld sp, $043f                                  ; $5b71: $31 $3f $04
    ccf                                           ; $5b74: $3f
    ccf                                           ; $5b75: $3f
    inc b                                         ; $5b76: $04
    ld c, c                                       ; $5b77: $49
    ccf                                           ; $5b78: $3f
    inc b                                         ; $5b79: $04
    ld d, h                                       ; $5b7a: $54
    ccf                                           ; $5b7b: $3f
    inc b                                         ; $5b7c: $04
    ld e, [hl]                                    ; $5b7d: $5e
    ccf                                           ; $5b7e: $3f
    inc b                                         ; $5b7f: $04
    ld l, d                                       ; $5b80: $6a
    ccf                                           ; $5b81: $3f
    inc b                                         ; $5b82: $04
    ld [hl], c                                    ; $5b83: $71
    ccf                                           ; $5b84: $3f
    inc b                                         ; $5b85: $04
    add b                                         ; $5b86: $80
    ccf                                           ; $5b87: $3f
    inc b                                         ; $5b88: $04
    add a                                         ; $5b89: $87
    ccf                                           ; $5b8a: $3f
    inc b                                         ; $5b8b: $04
    adc h                                         ; $5b8c: $8c
    ccf                                           ; $5b8d: $3f
    inc b                                         ; $5b8e: $04
    sub d                                         ; $5b8f: $92
    ccf                                           ; $5b90: $3f
    inc b                                         ; $5b91: $04
    sbc a                                         ; $5b92: $9f
    ccf                                           ; $5b93: $3f
    inc b                                         ; $5b94: $04
    xor a                                         ; $5b95: $af
    ccf                                           ; $5b96: $3f
    inc b                                         ; $5b97: $04
    cp d                                          ; $5b98: $ba
    ccf                                           ; $5b99: $3f
    inc b                                         ; $5b9a: $04
    push bc                                       ; $5b9b: $c5
    ccf                                           ; $5b9c: $3f
    inc b                                         ; $5b9d: $04
    call z, Call_000_043f                         ; $5b9e: $cc $3f $04
    sub $3f                                       ; $5ba1: $d6 $3f
    inc b                                         ; $5ba3: $04
    db $dd                                        ; $5ba4: $dd
    ccf                                           ; $5ba5: $3f
    inc b                                         ; $5ba6: $04
    jp hl                                         ; $5ba7: $e9


    ccf                                           ; $5ba8: $3f
    inc b                                         ; $5ba9: $04
    ld a, [c]                                     ; $5baa: $f2
    ccf                                           ; $5bab: $3f
    inc b                                         ; $5bac: $04
    ld sp, hl                                     ; $5bad: $f9
    ccf                                           ; $5bae: $3f
    dec b                                         ; $5baf: $05
    ld bc, $0500                                  ; $5bb0: $01 $00 $05
    rrca                                          ; $5bb3: $0f
    nop                                           ; $5bb4: $00
    dec b                                         ; $5bb5: $05
    inc a                                         ; $5bb6: $3c
    nop                                           ; $5bb7: $00
    dec b                                         ; $5bb8: $05
    ld c, d                                       ; $5bb9: $4a
    nop                                           ; $5bba: $00
    dec b                                         ; $5bbb: $05
    ld e, d                                       ; $5bbc: $5a
    nop                                           ; $5bbd: $00
    dec b                                         ; $5bbe: $05
    add d                                         ; $5bbf: $82
    nop                                           ; $5bc0: $00
    dec b                                         ; $5bc1: $05
    sbc h                                         ; $5bc2: $9c
    nop                                           ; $5bc3: $00
    dec b                                         ; $5bc4: $05
    or e                                          ; $5bc5: $b3
    nop                                           ; $5bc6: $00
    dec b                                         ; $5bc7: $05
    jp z, Jump_000_0500                           ; $5bc8: $ca $00 $05

    rst $18                                       ; $5bcb: $df
    nop                                           ; $5bcc: $00
    dec b                                         ; $5bcd: $05
    db $f4                                        ; $5bce: $f4
    nop                                           ; $5bcf: $00
    dec b                                         ; $5bd0: $05
    db $10                                        ; $5bd1: $10
    ld bc, $3505                                  ; $5bd2: $01 $05 $35
    ld bc, $5505                                  ; $5bd5: $01 $05 $55
    ld bc, $6f05                                  ; $5bd8: $01 $05 $6f
    ld bc, $8105                                  ; $5bdb: $01 $05 $81
    ld bc, $9405                                  ; $5bde: $01 $05 $94
    ld bc, $a605                                  ; $5be1: $01 $05 $a6
    ld bc, $ca05                                  ; $5be4: $01 $05 $ca
    ld bc, $da05                                  ; $5be7: $01 $05 $da
    ld bc, $ef05                                  ; $5bea: $01 $05 $ef
    ld bc, $f805                                  ; $5bed: $01 $05 $f8
    ld bc, $0305                                  ; $5bf0: $01 $05 $03
    ld [bc], a                                    ; $5bf3: $02
    dec b                                         ; $5bf4: $05
    rrca                                          ; $5bf5: $0f
    ld [bc], a                                    ; $5bf6: $02
    dec b                                         ; $5bf7: $05
    inc e                                         ; $5bf8: $1c
    ld [bc], a                                    ; $5bf9: $02
    dec b                                         ; $5bfa: $05
    daa                                           ; $5bfb: $27
    ld [bc], a                                    ; $5bfc: $02
    dec b                                         ; $5bfd: $05
    inc sp                                        ; $5bfe: $33
    ld [bc], a                                    ; $5bff: $02
    dec b                                         ; $5c00: $05
    ld d, c                                       ; $5c01: $51
    ld [bc], a                                    ; $5c02: $02
    dec b                                         ; $5c03: $05
    ld l, c                                       ; $5c04: $69
    ld [bc], a                                    ; $5c05: $02
    dec b                                         ; $5c06: $05
    add e                                         ; $5c07: $83
    ld [bc], a                                    ; $5c08: $02
    dec b                                         ; $5c09: $05
    and a                                         ; $5c0a: $a7
    ld [bc], a                                    ; $5c0b: $02
    dec b                                         ; $5c0c: $05
    jp c, Jump_000_0502                           ; $5c0d: $da $02 $05

    push af                                       ; $5c10: $f5
    ld [bc], a                                    ; $5c11: $02
    dec b                                         ; $5c12: $05
    ld b, $03                                     ; $5c13: $06 $03
    dec b                                         ; $5c15: $05
    dec d                                         ; $5c16: $15
    inc bc                                        ; $5c17: $03
    dec b                                         ; $5c18: $05
    jr nz, jr_02c_5c1e                            ; $5c19: $20 $03

    dec b                                         ; $5c1b: $05
    ld a, [hl+]                                   ; $5c1c: $2a
    inc bc                                        ; $5c1d: $03

jr_02c_5c1e:
    dec b                                         ; $5c1e: $05
    scf                                           ; $5c1f: $37
    inc bc                                        ; $5c20: $03
    dec b                                         ; $5c21: $05
    ld b, l                                       ; $5c22: $45
    inc bc                                        ; $5c23: $03
    dec b                                         ; $5c24: $05
    ld d, [hl]                                    ; $5c25: $56
    inc bc                                        ; $5c26: $03
    dec b                                         ; $5c27: $05
    ld a, a                                       ; $5c28: $7f
    inc bc                                        ; $5c29: $03
    dec b                                         ; $5c2a: $05
    xor b                                         ; $5c2b: $a8
    inc bc                                        ; $5c2c: $03
    dec b                                         ; $5c2d: $05
    call nc, $0503                                ; $5c2e: $d4 $03 $05
    inc b                                         ; $5c31: $04
    inc b                                         ; $5c32: $04
    dec b                                         ; $5c33: $05
    dec l                                         ; $5c34: $2d
    inc b                                         ; $5c35: $04
    dec b                                         ; $5c36: $05
    ld h, e                                       ; $5c37: $63
    inc b                                         ; $5c38: $04
    dec b                                         ; $5c39: $05
    sub [hl]                                      ; $5c3a: $96
    inc b                                         ; $5c3b: $04
    dec b                                         ; $5c3c: $05
    ret                                           ; $5c3d: $c9


    inc b                                         ; $5c3e: $04
    dec b                                         ; $5c3f: $05
    ld hl, sp+$04                                 ; $5c40: $f8 $04
    dec b                                         ; $5c42: $05
    ld c, l                                       ; $5c43: $4d
    dec b                                         ; $5c44: $05
    dec b                                         ; $5c45: $05
    adc l                                         ; $5c46: $8d
    dec b                                         ; $5c47: $05
    dec b                                         ; $5c48: $05
    push bc                                       ; $5c49: $c5
    dec b                                         ; $5c4a: $05
    dec b                                         ; $5c4b: $05
    rlca                                          ; $5c4c: $07
    ld b, $05                                     ; $5c4d: $06 $05
    ld e, $07                                     ; $5c4f: $1e $07
    dec b                                         ; $5c51: $05
    ld h, $07                                     ; $5c52: $26 $07
    dec b                                         ; $5c54: $05
    ld sp, $0507                                  ; $5c55: $31 $07 $05
    ld [hl], $07                                  ; $5c58: $36 $07
    dec b                                         ; $5c5a: $05
    ld b, b                                       ; $5c5b: $40
    rlca                                          ; $5c5c: $07
    dec b                                         ; $5c5d: $05
    ld c, e                                       ; $5c5e: $4b
    rlca                                          ; $5c5f: $07
    dec b                                         ; $5c60: $05
    ld d, e                                       ; $5c61: $53
    rlca                                          ; $5c62: $07
    dec b                                         ; $5c63: $05
    ld e, e                                       ; $5c64: $5b
    rlca                                          ; $5c65: $07
    dec b                                         ; $5c66: $05
    ld h, a                                       ; $5c67: $67
    rlca                                          ; $5c68: $07
    dec b                                         ; $5c69: $05
    ld [hl], l                                    ; $5c6a: $75
    rlca                                          ; $5c6b: $07

Call_02c_5c6c:
    dec b                                         ; $5c6c: $05

Jump_02c_5c6d:
    ld a, [hl]                                    ; $5c6d: $7e
    rlca                                          ; $5c6e: $07
    dec b                                         ; $5c6f: $05
    add [hl]                                      ; $5c70: $86
    rlca                                          ; $5c71: $07
    dec b                                         ; $5c72: $05
    adc l                                         ; $5c73: $8d
    rlca                                          ; $5c74: $07
    dec b                                         ; $5c75: $05
    sub d                                         ; $5c76: $92
    rlca                                          ; $5c77: $07
    dec b                                         ; $5c78: $05
    sub a                                         ; $5c79: $97
    rlca                                          ; $5c7a: $07
    dec b                                         ; $5c7b: $05
    and c                                         ; $5c7c: $a1
    rlca                                          ; $5c7d: $07
    dec b                                         ; $5c7e: $05
    xor e                                         ; $5c7f: $ab
    rlca                                          ; $5c80: $07
    dec b                                         ; $5c81: $05
    or c                                          ; $5c82: $b1
    rlca                                          ; $5c83: $07
    dec b                                         ; $5c84: $05
    cp [hl]                                       ; $5c85: $be
    rlca                                          ; $5c86: $07
    dec b                                         ; $5c87: $05
    ret                                           ; $5c88: $c9


    rlca                                          ; $5c89: $07
    dec b                                         ; $5c8a: $05
    call nc, $0507                                ; $5c8b: $d4 $07 $05
    reti                                          ; $5c8e: $d9


    rlca                                          ; $5c8f: $07
    dec b                                         ; $5c90: $05
    pop hl                                        ; $5c91: $e1
    rlca                                          ; $5c92: $07
    dec b                                         ; $5c93: $05
    rst $20                                       ; $5c94: $e7
    rlca                                          ; $5c95: $07
    dec b                                         ; $5c96: $05
    ldh a, [rTAC]                                 ; $5c97: $f0 $07
    dec b                                         ; $5c99: $05
    db $f4                                        ; $5c9a: $f4
    rlca                                          ; $5c9b: $07
    dec b                                         ; $5c9c: $05
    ld a, [$0507]                                 ; $5c9d: $fa $07 $05
    nop                                           ; $5ca0: $00
    ld [$0a05], sp                                ; $5ca1: $08 $05 $0a
    ld [$1205], sp                                ; $5ca4: $08 $05 $12
    ld [$1a05], sp                                ; $5ca7: $08 $05 $1a
    ld [$2705], sp                                ; $5caa: $08 $05 $27
    ld [$2e05], sp                                ; $5cad: $08 $05 $2e
    ld [$3605], sp                                ; $5cb0: $08 $05 $36
    ld [$3f05], sp                                ; $5cb3: $08 $05 $3f
    ld [$4905], sp                                ; $5cb6: $08 $05 $49
    ld [$5405], sp                                ; $5cb9: $08 $05 $54
    ld [$6005], sp                                ; $5cbc: $08 $05 $60
    ld [$6c05], sp                                ; $5cbf: $08 $05 $6c
    ld [$7505], sp                                ; $5cc2: $08 $05 $75
    ld [$7e05], sp                                ; $5cc5: $08 $05 $7e
    ld [$8505], sp                                ; $5cc8: $08 $05 $85
    ld [$8c05], sp                                ; $5ccb: $08 $05 $8c
    ld [$9305], sp                                ; $5cce: $08 $05 $93
    ld [$9c05], sp                                ; $5cd1: $08 $05 $9c
    ld [$a705], sp                                ; $5cd4: $08 $05 $a7
    ld [$b305], sp                                ; $5cd7: $08 $05 $b3
    ld [$ba05], sp                                ; $5cda: $08 $05 $ba
    ld [$c005], sp                                ; $5cdd: $08 $05 $c0
    ld [$c905], sp                                ; $5ce0: $08 $05 $c9
    ld [$d405], sp                                ; $5ce3: $08 $05 $d4
    ld [$e205], sp                                ; $5ce6: $08 $05 $e2
    ld [$fc05], sp                                ; $5ce9: $08 $05 $fc
    ld [$1905], sp                                ; $5cec: $08 $05 $19
    add hl, bc                                    ; $5cef: $09
    dec b                                         ; $5cf0: $05
    ld e, e                                       ; $5cf1: $5b
    add hl, bc                                    ; $5cf2: $09
    dec b                                         ; $5cf3: $05
    sub d                                         ; $5cf4: $92
    add hl, bc                                    ; $5cf5: $09
    dec b                                         ; $5cf6: $05
    cp e                                          ; $5cf7: $bb
    add hl, bc                                    ; $5cf8: $09
    dec b                                         ; $5cf9: $05
    call c, $0509                                 ; $5cfa: $dc $09 $05
    ld c, $0a                                     ; $5cfd: $0e $0a
    dec b                                         ; $5cff: $05
    ld [hl+], a                                   ; $5d00: $22
    ld a, [bc]                                    ; $5d01: $0a
    dec b                                         ; $5d02: $05
    ld d, [hl]                                    ; $5d03: $56
    ld a, [bc]                                    ; $5d04: $0a
    dec b                                         ; $5d05: $05
    adc b                                         ; $5d06: $88
    ld a, [bc]                                    ; $5d07: $0a
    dec b                                         ; $5d08: $05
    and l                                         ; $5d09: $a5
    ld a, [bc]                                    ; $5d0a: $0a
    dec b                                         ; $5d0b: $05
    jp nz, Jump_000_050a                          ; $5d0c: $c2 $0a $05

    ld hl, sp+$0a                                 ; $5d0f: $f8 $0a
    dec b                                         ; $5d11: $05
    daa                                           ; $5d12: $27
    dec bc                                        ; $5d13: $0b
    dec b                                         ; $5d14: $05
    ld h, d                                       ; $5d15: $62
    dec bc                                        ; $5d16: $0b
    dec b                                         ; $5d17: $05
    sub d                                         ; $5d18: $92
    dec bc                                        ; $5d19: $0b
    dec b                                         ; $5d1a: $05
    rst $00                                       ; $5d1b: $c7
    dec bc                                        ; $5d1c: $0b
    dec b                                         ; $5d1d: $05
    push af                                       ; $5d1e: $f5
    dec bc                                        ; $5d1f: $0b
    dec b                                         ; $5d20: $05
    jr nz, jr_02c_5d2f                            ; $5d21: $20 $0c

    dec b                                         ; $5d23: $05
    ld c, d                                       ; $5d24: $4a
    inc c                                         ; $5d25: $0c
    dec b                                         ; $5d26: $05
    ld [hl], h                                    ; $5d27: $74
    inc c                                         ; $5d28: $0c
    dec b                                         ; $5d29: $05
    sbc l                                         ; $5d2a: $9d
    inc c                                         ; $5d2b: $0c
    dec b                                         ; $5d2c: $05
    cp l                                          ; $5d2d: $bd
    inc c                                         ; $5d2e: $0c

jr_02c_5d2f:
    dec b                                         ; $5d2f: $05
    add hl, bc                                    ; $5d30: $09
    dec c                                         ; $5d31: $0d
    dec b                                         ; $5d32: $05
    ld h, $0d                                     ; $5d33: $26 $0d
    dec b                                         ; $5d35: $05
    ld c, l                                       ; $5d36: $4d
    dec c                                         ; $5d37: $0d
    dec b                                         ; $5d38: $05
    ld l, a                                       ; $5d39: $6f
    dec c                                         ; $5d3a: $0d
    dec b                                         ; $5d3b: $05
    sub h                                         ; $5d3c: $94
    dec c                                         ; $5d3d: $0d
    dec b                                         ; $5d3e: $05
    or l                                          ; $5d3f: $b5
    dec c                                         ; $5d40: $0d
    dec b                                         ; $5d41: $05
    sbc $0d                                       ; $5d42: $de $0d
    dec b                                         ; $5d44: $05
    inc b                                         ; $5d45: $04
    ld c, $05                                     ; $5d46: $0e $05
    inc a                                         ; $5d48: $3c
    ld c, $05                                     ; $5d49: $0e $05
    ld [hl], l                                    ; $5d4b: $75
    ld c, $05                                     ; $5d4c: $0e $05
    xor d                                         ; $5d4e: $aa
    ld c, $05                                     ; $5d4f: $0e $05
    jp Jump_000_050e                              ; $5d51: $c3 $0e $05


    pop af                                        ; $5d54: $f1
    ld c, $05                                     ; $5d55: $0e $05
    jr jr_02c_5d68                                ; $5d57: $18 $0f

    dec b                                         ; $5d59: $05
    ld [hl-], a                                   ; $5d5a: $32
    rrca                                          ; $5d5b: $0f
    dec b                                         ; $5d5c: $05
    ld [hl], e                                    ; $5d5d: $73
    rrca                                          ; $5d5e: $0f
    dec b                                         ; $5d5f: $05
    sbc h                                         ; $5d60: $9c
    rrca                                          ; $5d61: $0f
    dec b                                         ; $5d62: $05
    jp nz, Jump_000_050f                          ; $5d63: $c2 $0f $05

    db $f4                                        ; $5d66: $f4
    rrca                                          ; $5d67: $0f

jr_02c_5d68:
    dec b                                         ; $5d68: $05
    ld h, $10                                     ; $5d69: $26 $10
    dec b                                         ; $5d6b: $05
    ld c, e                                       ; $5d6c: $4b
    db $10                                        ; $5d6d: $10
    dec b                                         ; $5d6e: $05
    ld [hl], h                                    ; $5d6f: $74
    db $10                                        ; $5d70: $10
    dec b                                         ; $5d71: $05
    sbc [hl]                                      ; $5d72: $9e
    db $10                                        ; $5d73: $10
    dec b                                         ; $5d74: $05
    sub $10                                       ; $5d75: $d6 $10
    dec b                                         ; $5d77: $05
    dec b                                         ; $5d78: $05
    ld de, $3b05                                  ; $5d79: $11 $05 $3b
    ld de, $6305                                  ; $5d7c: $11 $05 $63
    ld de, $c505                                  ; $5d7f: $11 $05 $c5
    ld de, $a705                                  ; $5d82: $11 $05 $a7
    ld [de], a                                    ; $5d85: $12
    dec b                                         ; $5d86: $05
    daa                                           ; $5d87: $27
    inc de                                        ; $5d88: $13
    dec b                                         ; $5d89: $05
    and h                                         ; $5d8a: $a4
    inc de                                        ; $5d8b: $13
    dec b                                         ; $5d8c: $05
    inc [hl]                                      ; $5d8d: $34
    inc d                                         ; $5d8e: $14
    dec b                                         ; $5d8f: $05
    adc h                                         ; $5d90: $8c
    inc d                                         ; $5d91: $14
    dec b                                         ; $5d92: $05
    ld h, e                                       ; $5d93: $63
    dec d                                         ; $5d94: $15
    dec b                                         ; $5d95: $05
    jp hl                                         ; $5d96: $e9


    dec d                                         ; $5d97: $15
    dec b                                         ; $5d98: $05
    dec [hl]                                      ; $5d99: $35
    rla                                           ; $5d9a: $17
    dec b                                         ; $5d9b: $05
    pop hl                                        ; $5d9c: $e1
    rla                                           ; $5d9d: $17
    dec b                                         ; $5d9e: $05
    rla                                           ; $5d9f: $17
    jr @+$07                                      ; $5da0: $18 $05

    ld [hl], b                                    ; $5da2: $70
    jr @+$07                                      ; $5da3: $18 $05

    and d                                         ; $5da5: $a2
    jr jr_02c_5dad                                ; $5da6: $18 $05

    pop hl                                        ; $5da8: $e1
    jr jr_02c_5db0                                ; $5da9: $18 $05

    add hl, bc                                    ; $5dab: $09
    add hl, de                                    ; $5dac: $19

jr_02c_5dad:
    dec b                                         ; $5dad: $05
    ld b, c                                       ; $5dae: $41
    add hl, de                                    ; $5daf: $19

jr_02c_5db0:
    dec b                                         ; $5db0: $05
    ld h, e                                       ; $5db1: $63
    add hl, de                                    ; $5db2: $19
    dec b                                         ; $5db3: $05
    sbc l                                         ; $5db4: $9d
    add hl, de                                    ; $5db5: $19
    dec b                                         ; $5db6: $05
    call z, $0519                                 ; $5db7: $cc $19 $05
    ld [$0519], a                                 ; $5dba: $ea $19 $05
    ld [de], a                                    ; $5dbd: $12
    ld a, [de]                                    ; $5dbe: $1a
    dec b                                         ; $5dbf: $05
    ld a, $1a                                     ; $5dc0: $3e $1a
    dec b                                         ; $5dc2: $05
    ld e, l                                       ; $5dc3: $5d
    ld a, [de]                                    ; $5dc4: $1a
    dec b                                         ; $5dc5: $05
    adc d                                         ; $5dc6: $8a
    ld a, [de]                                    ; $5dc7: $1a
    dec b                                         ; $5dc8: $05
    cp [hl]                                       ; $5dc9: $be
    ld a, [de]                                    ; $5dca: $1a
    dec b                                         ; $5dcb: $05
    db $ec                                        ; $5dcc: $ec
    ld a, [de]                                    ; $5dcd: $1a
    dec b                                         ; $5dce: $05
    dec l                                         ; $5dcf: $2d
    dec de                                        ; $5dd0: $1b
    dec b                                         ; $5dd1: $05
    ld d, l                                       ; $5dd2: $55
    dec de                                        ; $5dd3: $1b
    dec b                                         ; $5dd4: $05
    add e                                         ; $5dd5: $83
    dec de                                        ; $5dd6: $1b
    dec b                                         ; $5dd7: $05
    or a                                          ; $5dd8: $b7
    dec de                                        ; $5dd9: $1b
    dec b                                         ; $5dda: $05
    rst $28                                       ; $5ddb: $ef
    dec de                                        ; $5ddc: $1b
    dec b                                         ; $5ddd: $05
    jr jr_02c_5dfc                                ; $5dde: $18 $1c

    dec b                                         ; $5de0: $05
    ld b, [hl]                                    ; $5de1: $46
    inc e                                         ; $5de2: $1c
    dec b                                         ; $5de3: $05
    ld a, c                                       ; $5de4: $79
    inc e                                         ; $5de5: $1c
    dec b                                         ; $5de6: $05
    sbc [hl]                                      ; $5de7: $9e
    inc e                                         ; $5de8: $1c
    dec b                                         ; $5de9: $05
    cp [hl]                                       ; $5dea: $be
    inc e                                         ; $5deb: $1c
    dec b                                         ; $5dec: $05
    db $eb                                        ; $5ded: $eb
    inc e                                         ; $5dee: $1c
    dec b                                         ; $5def: $05
    rlca                                          ; $5df0: $07
    dec e                                         ; $5df1: $1d
    dec b                                         ; $5df2: $05
    dec l                                         ; $5df3: $2d
    dec e                                         ; $5df4: $1d
    dec b                                         ; $5df5: $05
    ld c, l                                       ; $5df6: $4d
    dec e                                         ; $5df7: $1d
    dec b                                         ; $5df8: $05
    add d                                         ; $5df9: $82
    dec e                                         ; $5dfa: $1d
    dec b                                         ; $5dfb: $05

jr_02c_5dfc:
    cp h                                          ; $5dfc: $bc
    dec e                                         ; $5dfd: $1d
    dec b                                         ; $5dfe: $05
    db $ed                                        ; $5dff: $ed
    dec e                                         ; $5e00: $1d
    dec b                                         ; $5e01: $05
    dec e                                         ; $5e02: $1d
    ld e, $05                                     ; $5e03: $1e $05
    ld d, e                                       ; $5e05: $53
    ld e, $05                                     ; $5e06: $1e $05
    ld [hl], l                                    ; $5e08: $75
    ld e, $05                                     ; $5e09: $1e $05
    add h                                         ; $5e0b: $84
    ld e, $05                                     ; $5e0c: $1e $05
    or a                                          ; $5e0e: $b7
    ld e, $05                                     ; $5e0f: $1e $05
    sbc $1e                                       ; $5e11: $de $1e
    dec b                                         ; $5e13: $05
    ld [bc], a                                    ; $5e14: $02
    rra                                           ; $5e15: $1f
    dec b                                         ; $5e16: $05
    jr nc, @+$21                                  ; $5e17: $30 $1f

    dec b                                         ; $5e19: $05
    ld l, d                                       ; $5e1a: $6a
    rra                                           ; $5e1b: $1f
    dec b                                         ; $5e1c: $05
    ld a, a                                       ; $5e1d: $7f
    rra                                           ; $5e1e: $1f
    dec b                                         ; $5e1f: $05
    and l                                         ; $5e20: $a5
    rra                                           ; $5e21: $1f
    dec b                                         ; $5e22: $05
    ret nz                                        ; $5e23: $c0

    rra                                           ; $5e24: $1f
    dec b                                         ; $5e25: $05
    ld h, $20                                     ; $5e26: $26 $20
    dec b                                         ; $5e28: $05
    ld d, e                                       ; $5e29: $53
    jr nz, @+$07                                  ; $5e2a: $20 $05

    sbc d                                         ; $5e2c: $9a
    jr nz, @+$07                                  ; $5e2d: $20 $05

    db $d3                                        ; $5e2f: $d3
    jr nz, @+$07                                  ; $5e30: $20 $05

    inc c                                         ; $5e32: $0c
    ld hl, $4c05                                  ; $5e33: $21 $05 $4c
    ld hl, $7105                                  ; $5e36: $21 $05 $71
    ld hl, $c305                                  ; $5e39: $21 $05 $c3
    ld hl, $ee05                                  ; $5e3c: $21 $05 $ee
    ld hl, $2305                                  ; $5e3f: $21 $05 $23
    ld [hl+], a                                   ; $5e42: $22
    dec b                                         ; $5e43: $05
    ld c, b                                       ; $5e44: $48
    ld [hl+], a                                   ; $5e45: $22
    dec b                                         ; $5e46: $05
    adc h                                         ; $5e47: $8c
    ld [hl+], a                                   ; $5e48: $22
    dec b                                         ; $5e49: $05
    cp a                                          ; $5e4a: $bf
    ld [hl+], a                                   ; $5e4b: $22
    dec b                                         ; $5e4c: $05
    dec d                                         ; $5e4d: $15
    inc hl                                        ; $5e4e: $23
    dec b                                         ; $5e4f: $05
    ld b, l                                       ; $5e50: $45
    inc hl                                        ; $5e51: $23
    dec b                                         ; $5e52: $05
    add a                                         ; $5e53: $87
    inc hl                                        ; $5e54: $23
    dec b                                         ; $5e55: $05
    add $23                                       ; $5e56: $c6 $23
    dec b                                         ; $5e58: $05
    jp c, Jump_000_0523                           ; $5e59: $da $23 $05

    call c, Call_000_0523                         ; $5e5c: $dc $23 $05
    jp hl                                         ; $5e5f: $e9


    inc hl                                        ; $5e60: $23
    dec b                                         ; $5e61: $05
    di                                            ; $5e62: $f3
    inc hl                                        ; $5e63: $23
    dec b                                         ; $5e64: $05
    push af                                       ; $5e65: $f5
    inc hl                                        ; $5e66: $23
    dec b                                         ; $5e67: $05
    ld b, $24                                     ; $5e68: $06 $24
    dec b                                         ; $5e6a: $05
    ld de, $0524                                  ; $5e6b: $11 $24 $05
    inc de                                        ; $5e6e: $13
    inc h                                         ; $5e6f: $24
    dec b                                         ; $5e70: $05
    jr nz, jr_02c_5e97                            ; $5e71: $20 $24

    dec b                                         ; $5e73: $05
    ld a, [hl+]                                   ; $5e74: $2a
    inc h                                         ; $5e75: $24
    dec b                                         ; $5e76: $05
    inc l                                         ; $5e77: $2c
    inc h                                         ; $5e78: $24
    dec b                                         ; $5e79: $05
    dec [hl]                                      ; $5e7a: $35
    inc h                                         ; $5e7b: $24
    dec b                                         ; $5e7c: $05
    ld a, $24                                     ; $5e7d: $3e $24
    dec b                                         ; $5e7f: $05
    ld b, a                                       ; $5e80: $47
    inc h                                         ; $5e81: $24
    dec b                                         ; $5e82: $05
    ld d, d                                       ; $5e83: $52
    inc h                                         ; $5e84: $24
    dec b                                         ; $5e85: $05
    ld e, h                                       ; $5e86: $5c
    inc h                                         ; $5e87: $24
    dec b                                         ; $5e88: $05
    ld e, [hl]                                    ; $5e89: $5e
    inc h                                         ; $5e8a: $24
    dec b                                         ; $5e8b: $05
    ld l, h                                       ; $5e8c: $6c
    inc h                                         ; $5e8d: $24
    dec b                                         ; $5e8e: $05
    ld [hl], l                                    ; $5e8f: $75
    inc h                                         ; $5e90: $24
    dec b                                         ; $5e91: $05
    ld a, l                                       ; $5e92: $7d
    inc h                                         ; $5e93: $24
    dec b                                         ; $5e94: $05
    add a                                         ; $5e95: $87
    inc h                                         ; $5e96: $24

jr_02c_5e97:
    dec b                                         ; $5e97: $05
    adc c                                         ; $5e98: $89
    inc h                                         ; $5e99: $24
    dec b                                         ; $5e9a: $05
    sbc a                                         ; $5e9b: $9f
    inc h                                         ; $5e9c: $24
    dec b                                         ; $5e9d: $05
    xor c                                         ; $5e9e: $a9
    inc h                                         ; $5e9f: $24
    dec b                                         ; $5ea0: $05
    xor e                                         ; $5ea1: $ab
    inc h                                         ; $5ea2: $24
    dec b                                         ; $5ea3: $05
    or a                                          ; $5ea4: $b7
    inc h                                         ; $5ea5: $24
    dec b                                         ; $5ea6: $05
    cp a                                          ; $5ea7: $bf
    inc h                                         ; $5ea8: $24
    dec b                                         ; $5ea9: $05
    pop bc                                        ; $5eaa: $c1
    inc h                                         ; $5eab: $24
    dec b                                         ; $5eac: $05
    ret nc                                        ; $5ead: $d0

    inc h                                         ; $5eae: $24
    dec b                                         ; $5eaf: $05
    ret c                                         ; $5eb0: $d8

    inc h                                         ; $5eb1: $24
    dec b                                         ; $5eb2: $05
    ldh [rNR50], a                                ; $5eb3: $e0 $24
    dec b                                         ; $5eb5: $05
    rst $20                                       ; $5eb6: $e7
    inc h                                         ; $5eb7: $24
    dec b                                         ; $5eb8: $05
    jp hl                                         ; $5eb9: $e9


    inc h                                         ; $5eba: $24

Jump_02c_5ebb:
    dec b                                         ; $5ebb: $05
    db $ed                                        ; $5ebc: $ed
    inc h                                         ; $5ebd: $24
    dec b                                         ; $5ebe: $05
    rst $30                                       ; $5ebf: $f7
    inc h                                         ; $5ec0: $24
    dec b                                         ; $5ec1: $05
    ld bc, $0525                                  ; $5ec2: $01 $25 $05
    inc c                                         ; $5ec5: $0c
    dec h                                         ; $5ec6: $25
    dec b                                         ; $5ec7: $05
    inc d                                         ; $5ec8: $14
    dec h                                         ; $5ec9: $25
    dec b                                         ; $5eca: $05
    ld d, $25                                     ; $5ecb: $16 $25
    dec b                                         ; $5ecd: $05
    jr jr_02c_5ef5                                ; $5ece: $18 $25

    dec b                                         ; $5ed0: $05
    cpl                                           ; $5ed1: $2f
    dec h                                         ; $5ed2: $25
    dec b                                         ; $5ed3: $05
    ld sp, $0525                                  ; $5ed4: $31 $25 $05
    ccf                                           ; $5ed7: $3f
    dec h                                         ; $5ed8: $25
    dec b                                         ; $5ed9: $05
    ld c, b                                       ; $5eda: $48
    dec h                                         ; $5edb: $25
    dec b                                         ; $5edc: $05
    ld d, b                                       ; $5edd: $50
    dec h                                         ; $5ede: $25
    dec b                                         ; $5edf: $05
    ld d, d                                       ; $5ee0: $52
    dec h                                         ; $5ee1: $25
    dec b                                         ; $5ee2: $05
    ld e, l                                       ; $5ee3: $5d
    dec h                                         ; $5ee4: $25
    dec b                                         ; $5ee5: $05
    ld h, a                                       ; $5ee6: $67
    dec h                                         ; $5ee7: $25
    dec b                                         ; $5ee8: $05
    ld l, c                                       ; $5ee9: $69
    dec h                                         ; $5eea: $25
    dec b                                         ; $5eeb: $05
    ld [hl], l                                    ; $5eec: $75
    dec h                                         ; $5eed: $25
    dec b                                         ; $5eee: $05
    ld a, [hl]                                    ; $5eef: $7e
    dec h                                         ; $5ef0: $25
    dec b                                         ; $5ef1: $05
    add b                                         ; $5ef2: $80
    dec h                                         ; $5ef3: $25
    dec b                                         ; $5ef4: $05

jr_02c_5ef5:
    sub l                                         ; $5ef5: $95
    dec h                                         ; $5ef6: $25
    dec b                                         ; $5ef7: $05
    and c                                         ; $5ef8: $a1
    dec h                                         ; $5ef9: $25
    dec b                                         ; $5efa: $05
    xor e                                         ; $5efb: $ab
    dec h                                         ; $5efc: $25
    dec b                                         ; $5efd: $05
    or e                                          ; $5efe: $b3
    dec h                                         ; $5eff: $25
    dec b                                         ; $5f00: $05
    cp e                                          ; $5f01: $bb
    dec h                                         ; $5f02: $25
    dec b                                         ; $5f03: $05
    push bc                                       ; $5f04: $c5
    dec h                                         ; $5f05: $25
    dec b                                         ; $5f06: $05
    adc $25                                       ; $5f07: $ce $25
    dec b                                         ; $5f09: $05
    ret nc                                        ; $5f0a: $d0

    dec h                                         ; $5f0b: $25
    dec b                                         ; $5f0c: $05
    jp nc, $0525                                  ; $5f0d: $d2 $25 $05

    call nc, $0525                                ; $5f10: $d4 $25 $05
    and $25                                       ; $5f13: $e6 $25
    dec b                                         ; $5f15: $05
    add sp, $25                                   ; $5f16: $e8 $25
    dec b                                         ; $5f18: $05
    ldh a, [rNR51]                                ; $5f19: $f0 $25
    dec b                                         ; $5f1b: $05
    ld hl, sp+$25                                 ; $5f1c: $f8 $25
    dec b                                         ; $5f1e: $05
    inc bc                                        ; $5f1f: $03
    ld h, $05                                     ; $5f20: $26 $05
    inc c                                         ; $5f22: $0c
    ld h, $05                                     ; $5f23: $26 $05
    ld d, $26                                     ; $5f25: $16 $26
    dec b                                         ; $5f27: $05
    ld hl, $0526                                  ; $5f28: $21 $26 $05
    ld a, [hl+]                                   ; $5f2b: $2a
    ld h, $05                                     ; $5f2c: $26 $05
    inc sp                                        ; $5f2e: $33
    ld h, $05                                     ; $5f2f: $26 $05
    dec [hl]                                      ; $5f31: $35
    ld h, $05                                     ; $5f32: $26 $05
    ld b, a                                       ; $5f34: $47
    ld h, $05                                     ; $5f35: $26 $05
    ld c, [hl]                                    ; $5f37: $4e
    ld h, $05                                     ; $5f38: $26 $05
    ld d, b                                       ; $5f3a: $50
    ld h, $05                                     ; $5f3b: $26 $05
    ld e, h                                       ; $5f3d: $5c
    ld h, $05                                     ; $5f3e: $26 $05
    ld h, h                                       ; $5f40: $64
    ld h, $05                                     ; $5f41: $26 $05

Call_02c_5f43:
    ld h, [hl]                                    ; $5f43: $66
    ld h, $05                                     ; $5f44: $26 $05
    ld l, a                                       ; $5f46: $6f
    ld h, $05                                     ; $5f47: $26 $05
    ld a, b                                       ; $5f49: $78
    ld h, $05                                     ; $5f4a: $26 $05
    add b                                         ; $5f4c: $80
    ld h, $05                                     ; $5f4d: $26 $05
    adc c                                         ; $5f4f: $89
    ld h, $05                                     ; $5f50: $26 $05
    sub e                                         ; $5f52: $93
    ld h, $05                                     ; $5f53: $26 $05
    sub l                                         ; $5f55: $95
    ld h, $05                                     ; $5f56: $26 $05
    and b                                         ; $5f58: $a0
    ld h, $05                                     ; $5f59: $26 $05
    xor c                                         ; $5f5b: $a9
    ld h, $05                                     ; $5f5c: $26 $05
    or e                                          ; $5f5e: $b3
    ld h, $05                                     ; $5f5f: $26 $05
    cp d                                          ; $5f61: $ba
    ld h, $05                                     ; $5f62: $26 $05
    call nz, Call_000_0526                        ; $5f64: $c4 $26 $05
    call z, Call_000_0526                         ; $5f67: $cc $26 $05
    call nc, Call_000_0526                        ; $5f6a: $d4 $26 $05
    rst $18                                       ; $5f6d: $df
    ld h, $05                                     ; $5f6e: $26 $05
    db $ec                                        ; $5f70: $ec
    ld h, $05                                     ; $5f71: $26 $05
    push af                                       ; $5f73: $f5
    ld h, $05                                     ; $5f74: $26 $05
    cp $26                                        ; $5f76: $fe $26
    dec b                                         ; $5f78: $05
    nop                                           ; $5f79: $00
    daa                                           ; $5f7a: $27
    dec b                                         ; $5f7b: $05
    add hl, bc                                    ; $5f7c: $09
    daa                                           ; $5f7d: $27
    dec b                                         ; $5f7e: $05
    db $10                                        ; $5f7f: $10
    daa                                           ; $5f80: $27
    dec b                                         ; $5f81: $05
    add hl, de                                    ; $5f82: $19
    daa                                           ; $5f83: $27
    dec b                                         ; $5f84: $05
    ld [hl+], a                                   ; $5f85: $22
    daa                                           ; $5f86: $27
    dec b                                         ; $5f87: $05
    dec hl                                        ; $5f88: $2b
    daa                                           ; $5f89: $27
    dec b                                         ; $5f8a: $05
    dec l                                         ; $5f8b: $2d
    daa                                           ; $5f8c: $27
    dec b                                         ; $5f8d: $05
    ld b, a                                       ; $5f8e: $47
    daa                                           ; $5f8f: $27
    dec b                                         ; $5f90: $05
    ld d, d                                       ; $5f91: $52
    daa                                           ; $5f92: $27
    dec b                                         ; $5f93: $05
    ld e, h                                       ; $5f94: $5c
    daa                                           ; $5f95: $27
    dec b                                         ; $5f96: $05
    ld h, [hl]                                    ; $5f97: $66
    daa                                           ; $5f98: $27
    dec b                                         ; $5f99: $05
    ld l, a                                       ; $5f9a: $6f
    daa                                           ; $5f9b: $27
    dec b                                         ; $5f9c: $05
    ld [hl], a                                    ; $5f9d: $77
    daa                                           ; $5f9e: $27
    dec b                                         ; $5f9f: $05
    ld a, a                                       ; $5fa0: $7f
    daa                                           ; $5fa1: $27
    dec b                                         ; $5fa2: $05
    adc c                                         ; $5fa3: $89
    daa                                           ; $5fa4: $27
    dec b                                         ; $5fa5: $05
    sub d                                         ; $5fa6: $92
    daa                                           ; $5fa7: $27
    dec b                                         ; $5fa8: $05
    sbc c                                         ; $5fa9: $99
    daa                                           ; $5faa: $27
    dec b                                         ; $5fab: $05
    and c                                         ; $5fac: $a1
    daa                                           ; $5fad: $27
    dec b                                         ; $5fae: $05
    xor d                                         ; $5faf: $aa
    daa                                           ; $5fb0: $27
    dec b                                         ; $5fb1: $05
    or h                                          ; $5fb2: $b4
    daa                                           ; $5fb3: $27
    dec b                                         ; $5fb4: $05
    or [hl]                                       ; $5fb5: $b6
    daa                                           ; $5fb6: $27
    dec b                                         ; $5fb7: $05
    cp b                                          ; $5fb8: $b8
    daa                                           ; $5fb9: $27
    dec b                                         ; $5fba: $05
    cp d                                          ; $5fbb: $ba
    daa                                           ; $5fbc: $27
    dec b                                         ; $5fbd: $05
    cp h                                          ; $5fbe: $bc
    daa                                           ; $5fbf: $27
    dec b                                         ; $5fc0: $05
    cp [hl]                                       ; $5fc1: $be
    daa                                           ; $5fc2: $27
    dec b                                         ; $5fc3: $05
    ret nz                                        ; $5fc4: $c0

    daa                                           ; $5fc5: $27
    dec b                                         ; $5fc6: $05
    jp nz, Jump_000_0527                          ; $5fc7: $c2 $27 $05

    call nz, Call_000_0527                        ; $5fca: $c4 $27 $05
    add $27                                       ; $5fcd: $c6 $27
    dec b                                         ; $5fcf: $05
    ret z                                         ; $5fd0: $c8

    daa                                           ; $5fd1: $27
    dec b                                         ; $5fd2: $05
    jp z, Jump_000_0527                           ; $5fd3: $ca $27 $05

    call z, Call_000_0527                         ; $5fd6: $cc $27 $05
    adc $27                                       ; $5fd9: $ce $27
    dec b                                         ; $5fdb: $05
    ret nc                                        ; $5fdc: $d0

    daa                                           ; $5fdd: $27
    dec b                                         ; $5fde: $05
    jp nc, Jump_000_0527                          ; $5fdf: $d2 $27 $05

    call nc, Call_000_0527                        ; $5fe2: $d4 $27 $05
    sub $27                                       ; $5fe5: $d6 $27
    dec b                                         ; $5fe7: $05
    ret c                                         ; $5fe8: $d8

    daa                                           ; $5fe9: $27
    dec b                                         ; $5fea: $05
    jp c, Jump_000_0527                           ; $5feb: $da $27 $05

    call c, Call_000_0527                         ; $5fee: $dc $27 $05
    sbc $27                                       ; $5ff1: $de $27
    dec b                                         ; $5ff3: $05
    ldh [$27], a                                  ; $5ff4: $e0 $27
    dec b                                         ; $5ff6: $05
    ld [c], a                                     ; $5ff7: $e2
    daa                                           ; $5ff8: $27
    dec b                                         ; $5ff9: $05
    db $e4                                        ; $5ffa: $e4
    daa                                           ; $5ffb: $27
    dec b                                         ; $5ffc: $05
    and $27                                       ; $5ffd: $e6 $27
    dec b                                         ; $5fff: $05
    add sp, $27                                   ; $6000: $e8 $27
    dec b                                         ; $6002: $05
    ld [$0527], a                                 ; $6003: $ea $27 $05
    db $ec                                        ; $6006: $ec
    daa                                           ; $6007: $27
    dec b                                         ; $6008: $05
    xor $27                                       ; $6009: $ee $27
    dec b                                         ; $600b: $05
    ldh a, [$27]                                  ; $600c: $f0 $27
    dec b                                         ; $600e: $05
    ld a, [c]                                     ; $600f: $f2
    daa                                           ; $6010: $27
    dec b                                         ; $6011: $05
    db $f4                                        ; $6012: $f4
    daa                                           ; $6013: $27
    dec b                                         ; $6014: $05
    or $27                                        ; $6015: $f6 $27
    dec b                                         ; $6017: $05
    ld hl, sp+$27                                 ; $6018: $f8 $27
    dec b                                         ; $601a: $05
    ld c, $28                                     ; $601b: $0e $28
    dec b                                         ; $601d: $05
    ld d, $28                                     ; $601e: $16 $28
    dec b                                         ; $6020: $05
    ccf                                           ; $6021: $3f
    jr z, @+$07                                   ; $6022: $28 $05

    ld e, c                                       ; $6024: $59
    jr z, @+$07                                   ; $6025: $28 $05

    or d                                          ; $6027: $b2
    jr z, jr_02c_602f                             ; $6028: $28 $05

    jp z, $0528                                   ; $602a: $ca $28 $05

    scf                                           ; $602d: $37
    add hl, hl                                    ; $602e: $29

jr_02c_602f:
    dec b                                         ; $602f: $05
    halt                                          ; $6030: $76
    add hl, hl                                    ; $6031: $29
    dec b                                         ; $6032: $05
    ld a, [c]                                     ; $6033: $f2
    add hl, hl                                    ; $6034: $29
    dec b                                         ; $6035: $05
    inc b                                         ; $6036: $04
    ld a, [hl+]                                   ; $6037: $2a
    dec b                                         ; $6038: $05
    ld b, l                                       ; $6039: $45
    ld a, [hl+]                                   ; $603a: $2a
    dec b                                         ; $603b: $05
    sub d                                         ; $603c: $92
    ld a, [hl+]                                   ; $603d: $2a
    dec b                                         ; $603e: $05
    xor h                                         ; $603f: $ac
    ld a, [hl+]                                   ; $6040: $2a
    dec b                                         ; $6041: $05
    db $eb                                        ; $6042: $eb
    ld a, [hl+]                                   ; $6043: $2a
    dec b                                         ; $6044: $05
    jr jr_02c_6072                                ; $6045: $18 $2b

    dec b                                         ; $6047: $05
    ld b, d                                       ; $6048: $42
    dec hl                                        ; $6049: $2b
    dec b                                         ; $604a: $05
    sbc [hl]                                      ; $604b: $9e
    dec hl                                        ; $604c: $2b
    dec b                                         ; $604d: $05
    xor c                                         ; $604e: $a9
    dec hl                                        ; $604f: $2b
    dec b                                         ; $6050: $05
    cp h                                          ; $6051: $bc
    dec hl                                        ; $6052: $2b
    dec b                                         ; $6053: $05
    adc $2b                                       ; $6054: $ce $2b
    dec b                                         ; $6056: $05
    pop hl                                        ; $6057: $e1
    dec hl                                        ; $6058: $2b
    dec b                                         ; $6059: $05
    db $f4                                        ; $605a: $f4
    dec hl                                        ; $605b: $2b
    dec b                                         ; $605c: $05
    dec e                                         ; $605d: $1d
    inc l                                         ; $605e: $2c
    dec b                                         ; $605f: $05
    add b                                         ; $6060: $80
    inc l                                         ; $6061: $2c
    dec b                                         ; $6062: $05
    adc e                                         ; $6063: $8b
    inc l                                         ; $6064: $2c
    dec b                                         ; $6065: $05
    push hl                                       ; $6066: $e5
    inc l                                         ; $6067: $2c
    dec b                                         ; $6068: $05
    ld hl, sp+$2c                                 ; $6069: $f8 $2c
    dec b                                         ; $606b: $05
    ld a, [de]                                    ; $606c: $1a
    dec l                                         ; $606d: $2d
    dec b                                         ; $606e: $05
    ld h, c                                       ; $606f: $61
    dec l                                         ; $6070: $2d
    dec b                                         ; $6071: $05

jr_02c_6072:
    adc e                                         ; $6072: $8b
    dec l                                         ; $6073: $2d
    dec b                                         ; $6074: $05
    xor c                                         ; $6075: $a9
    dec l                                         ; $6076: $2d
    dec b                                         ; $6077: $05
    ret nz                                        ; $6078: $c0

    dec l                                         ; $6079: $2d
    dec b                                         ; $607a: $05
    db $fc                                        ; $607b: $fc
    dec l                                         ; $607c: $2d
    dec b                                         ; $607d: $05
    rra                                           ; $607e: $1f
    ld l, $05                                     ; $607f: $2e $05
    ld a, [hl+]                                   ; $6081: $2a
    ld l, $05                                     ; $6082: $2e $05
    add hl, sp                                    ; $6084: $39
    ld l, $05                                     ; $6085: $2e $05
    ld c, h                                       ; $6087: $4c
    ld l, $05                                     ; $6088: $2e $05
    ld h, c                                       ; $608a: $61
    ld l, $05                                     ; $608b: $2e $05
    ld l, l                                       ; $608d: $6d
    ld l, $05                                     ; $608e: $2e $05
    add d                                         ; $6090: $82
    ld l, $05                                     ; $6091: $2e $05
    sbc e                                         ; $6093: $9b
    ld l, $05                                     ; $6094: $2e $05
    cp d                                          ; $6096: $ba
    ld l, $05                                     ; $6097: $2e $05
    adc $2e                                       ; $6099: $ce $2e
    dec b                                         ; $609b: $05
    push hl                                       ; $609c: $e5
    ld l, $05                                     ; $609d: $2e $05
    db $fc                                        ; $609f: $fc
    ld l, $05                                     ; $60a0: $2e $05
    rra                                           ; $60a2: $1f
    cpl                                           ; $60a3: $2f
    dec b                                         ; $60a4: $05
    ld l, $2f                                     ; $60a5: $2e $2f
    dec b                                         ; $60a7: $05
    ld c, d                                       ; $60a8: $4a
    cpl                                           ; $60a9: $2f
    dec b                                         ; $60aa: $05
    ld h, c                                       ; $60ab: $61
    cpl                                           ; $60ac: $2f
    dec b                                         ; $60ad: $05
    ld a, l                                       ; $60ae: $7d
    cpl                                           ; $60af: $2f
    dec b                                         ; $60b0: $05
    and c                                         ; $60b1: $a1
    cpl                                           ; $60b2: $2f
    dec b                                         ; $60b3: $05
    ret nz                                        ; $60b4: $c0

    cpl                                           ; $60b5: $2f
    dec b                                         ; $60b6: $05
    pop de                                        ; $60b7: $d1
    cpl                                           ; $60b8: $2f
    dec b                                         ; $60b9: $05
    push hl                                       ; $60ba: $e5
    cpl                                           ; $60bb: $2f
    dec b                                         ; $60bc: $05
    ld l, $30                                     ; $60bd: $2e $30
    dec b                                         ; $60bf: $05
    ld b, a                                       ; $60c0: $47
    jr nc, @+$07                                  ; $60c1: $30 $05

    ld h, c                                       ; $60c3: $61
    jr nc, @+$07                                  ; $60c4: $30 $05

    add h                                         ; $60c6: $84
    jr nc, jr_02c_60ce                            ; $60c7: $30 $05

    xor e                                         ; $60c9: $ab
    jr nc, jr_02c_60d1                            ; $60ca: $30 $05

    sbc $30                                       ; $60cc: $de $30

jr_02c_60ce:
    dec b                                         ; $60ce: $05
    ld hl, sp+$30                                 ; $60cf: $f8 $30

jr_02c_60d1:
    dec b                                         ; $60d1: $05
    ld sp, $0531                                  ; $60d2: $31 $31 $05
    ld d, d                                       ; $60d5: $52
    ld sp, $6405                                  ; $60d6: $31 $05 $64
    ld sp, $8805                                  ; $60d9: $31 $05 $88
    ld sp, $b305                                  ; $60dc: $31 $05 $b3
    ld sp, $d505                                  ; $60df: $31 $05 $d5
    ld sp, $ec05                                  ; $60e2: $31 $05 $ec
    ld sp, $0505                                  ; $60e5: $31 $05 $05
    ld [hl-], a                                   ; $60e8: $32
    dec b                                         ; $60e9: $05
    dec hl                                        ; $60ea: $2b
    ld [hl-], a                                   ; $60eb: $32
    dec b                                         ; $60ec: $05
    ld a, $32                                     ; $60ed: $3e $32
    dec b                                         ; $60ef: $05
    ld d, h                                       ; $60f0: $54
    ld [hl-], a                                   ; $60f1: $32
    dec b                                         ; $60f2: $05
    ld [hl], d                                    ; $60f3: $72
    ld [hl-], a                                   ; $60f4: $32
    dec b                                         ; $60f5: $05
    adc [hl]                                      ; $60f6: $8e
    ld [hl-], a                                   ; $60f7: $32
    dec b                                         ; $60f8: $05
    cp c                                          ; $60f9: $b9
    ld [hl-], a                                   ; $60fa: $32
    dec b                                         ; $60fb: $05
    call Call_000_0532                            ; $60fc: $cd $32 $05
    and $32                                       ; $60ff: $e6 $32
    dec b                                         ; $6101: $05
    db $fc                                        ; $6102: $fc
    ld [hl-], a                                   ; $6103: $32
    dec b                                         ; $6104: $05
    ld [hl-], a                                   ; $6105: $32
    inc sp                                        ; $6106: $33
    dec b                                         ; $6107: $05
    ld c, l                                       ; $6108: $4d
    inc sp                                        ; $6109: $33
    dec b                                         ; $610a: $05
    ld l, a                                       ; $610b: $6f
    inc sp                                        ; $610c: $33
    dec b                                         ; $610d: $05
    sub c                                         ; $610e: $91
    inc sp                                        ; $610f: $33
    dec b                                         ; $6110: $05
    xor a                                         ; $6111: $af
    inc sp                                        ; $6112: $33
    dec b                                         ; $6113: $05
    inc d                                         ; $6114: $14
    inc [hl]                                      ; $6115: $34
    dec b                                         ; $6116: $05
    add c                                         ; $6117: $81
    inc [hl]                                      ; $6118: $34
    dec b                                         ; $6119: $05
    sbc [hl]                                      ; $611a: $9e
    inc [hl]                                      ; $611b: $34
    dec b                                         ; $611c: $05
    call nc, $0534                                ; $611d: $d4 $34 $05
    ld [bc], a                                    ; $6120: $02
    dec [hl]                                      ; $6121: $35
    dec b                                         ; $6122: $05
    ld b, h                                       ; $6123: $44
    dec [hl]                                      ; $6124: $35
    dec b                                         ; $6125: $05
    ld [hl], c                                    ; $6126: $71
    dec [hl]                                      ; $6127: $35
    dec b                                         ; $6128: $05
    and c                                         ; $6129: $a1
    dec [hl]                                      ; $612a: $35
    dec b                                         ; $612b: $05
    ret nc                                        ; $612c: $d0

    dec [hl]                                      ; $612d: $35
    dec b                                         ; $612e: $05
    rst $38                                       ; $612f: $ff
    dec [hl]                                      ; $6130: $35
    dec b                                         ; $6131: $05
    ld l, $36                                     ; $6132: $2e $36
    dec b                                         ; $6134: $05
    ld h, e                                       ; $6135: $63
    ld [hl], $05                                  ; $6136: $36 $05
    sub c                                         ; $6138: $91
    ld [hl], $05                                  ; $6139: $36 $05
    xor l                                         ; $613b: $ad
    ld [hl], $05                                  ; $613c: $36 $05
    call $0536                                    ; $613e: $cd $36 $05
    inc b                                         ; $6141: $04
    scf                                           ; $6142: $37
    dec b                                         ; $6143: $05
    ld b, l                                       ; $6144: $45
    scf                                           ; $6145: $37
    dec b                                         ; $6146: $05
    and l                                         ; $6147: $a5
    scf                                           ; $6148: $37
    dec b                                         ; $6149: $05
    xor $37                                       ; $614a: $ee $37
    dec b                                         ; $614c: $05
    ld sp, $0538                                  ; $614d: $31 $38 $05
    ld a, a                                       ; $6150: $7f
    jr c, jr_02c_6158                             ; $6151: $38 $05

    or c                                          ; $6153: $b1
    jr c, jr_02c_615b                             ; $6154: $38 $05

    ld c, $39                                     ; $6156: $0e $39

jr_02c_6158:
    dec b                                         ; $6158: $05
    ld [hl], e                                    ; $6159: $73
    add hl, sp                                    ; $615a: $39

jr_02c_615b:
    dec b                                         ; $615b: $05
    ld sp, hl                                     ; $615c: $f9
    add hl, sp                                    ; $615d: $39
    dec b                                         ; $615e: $05
    ld h, h                                       ; $615f: $64
    ld a, [hl-]                                   ; $6160: $3a
    dec b                                         ; $6161: $05
    db $d3                                        ; $6162: $d3
    ld a, [hl-]                                   ; $6163: $3a
    dec b                                         ; $6164: $05
    jr c, jr_02c_61a2                             ; $6165: $38 $3b

    dec b                                         ; $6167: $05
    sbc c                                         ; $6168: $99
    dec sp                                        ; $6169: $3b
    dec b                                         ; $616a: $05
    ld [$053c], sp                                ; $616b: $08 $3c $05
    ld [hl], d                                    ; $616e: $72
    inc a                                         ; $616f: $3c
    dec b                                         ; $6170: $05
    db $e3                                        ; $6171: $e3
    inc a                                         ; $6172: $3c
    dec b                                         ; $6173: $05
    ld l, $3d                                     ; $6174: $2e $3d
    dec b                                         ; $6176: $05
    adc c                                         ; $6177: $89
    dec a                                         ; $6178: $3d
    dec b                                         ; $6179: $05
    rst $28                                       ; $617a: $ef
    dec a                                         ; $617b: $3d
    dec b                                         ; $617c: $05
    ld e, a                                       ; $617d: $5f
    ld a, $05                                     ; $617e: $3e $05
    sub $3e                                       ; $6180: $d6 $3e
    dec b                                         ; $6182: $05
    add hl, sp                                    ; $6183: $39
    ccf                                           ; $6184: $3f
    dec b                                         ; $6185: $05
    adc l                                         ; $6186: $8d
    ccf                                           ; $6187: $3f
    ld b, $01                                     ; $6188: $06 $01
    nop                                           ; $618a: $00
    ld b, $6c                                     ; $618b: $06 $6c
    nop                                           ; $618d: $00
    ld b, $b5                                     ; $618e: $06 $b5
    nop                                           ; $6190: $00
    ld b, $ca                                     ; $6191: $06 $ca
    nop                                           ; $6193: $00
    ld b, $cf                                     ; $6194: $06 $cf
    nop                                           ; $6196: $00
    ld b, $d4                                     ; $6197: $06 $d4
    nop                                           ; $6199: $00
    ld b, $dd                                     ; $619a: $06 $dd
    nop                                           ; $619c: $00
    ld b, $eb                                     ; $619d: $06 $eb
    nop                                           ; $619f: $00
    ld b, $fa                                     ; $61a0: $06 $fa

jr_02c_61a2:
    nop                                           ; $61a2: $00
    ld b, $39                                     ; $61a3: $06 $39
    ld bc, $7106                                  ; $61a5: $01 $06 $71
    ld bc, $e606                                  ; $61a8: $01 $06 $e6
    ld bc, $4406                                  ; $61ab: $01 $06 $44
    ld [bc], a                                    ; $61ae: $02
    ld b, $a0                                     ; $61af: $06 $a0
    ld [bc], a                                    ; $61b1: $02
    ld b, $d2                                     ; $61b2: $06 $d2
    ld [bc], a                                    ; $61b4: $02
    ld b, $46                                     ; $61b5: $06 $46
    inc bc                                        ; $61b7: $03
    ld b, $94                                     ; $61b8: $06 $94
    inc bc                                        ; $61ba: $03
    ld b, $f1                                     ; $61bb: $06 $f1
    inc bc                                        ; $61bd: $03
    ld b, $1c                                     ; $61be: $06 $1c
    inc b                                         ; $61c0: $04
    ld b, $48                                     ; $61c1: $06 $48
    inc b                                         ; $61c3: $04
    ld b, $76                                     ; $61c4: $06 $76

Call_02c_61c6:
    inc b                                         ; $61c6: $04
    ld b, $ad                                     ; $61c7: $06 $ad
    inc b                                         ; $61c9: $04
    ld b, $cc                                     ; $61ca: $06 $cc
    inc b                                         ; $61cc: $04
    ld b, $f2                                     ; $61cd: $06 $f2
    inc b                                         ; $61cf: $04
    ld b, $11                                     ; $61d0: $06 $11
    dec b                                         ; $61d2: $05
    ld b, $49                                     ; $61d3: $06 $49
    dec b                                         ; $61d5: $05
    ld b, $5f                                     ; $61d6: $06 $5f
    dec b                                         ; $61d8: $05
    ld b, $74                                     ; $61d9: $06 $74
    dec b                                         ; $61db: $05
    ld b, $8f                                     ; $61dc: $06 $8f
    dec b                                         ; $61de: $05
    ld b, $b2                                     ; $61df: $06 $b2
    dec b                                         ; $61e1: $05
    ld b, $f2                                     ; $61e2: $06 $f2
    dec b                                         ; $61e4: $05
    ld b, $1f                                     ; $61e5: $06 $1f
    ld b, $06                                     ; $61e7: $06 $06
    ld c, d                                       ; $61e9: $4a
    ld b, $06                                     ; $61ea: $06 $06
    add [hl]                                      ; $61ec: $86
    ld b, $06                                     ; $61ed: $06 $06
    xor b                                         ; $61ef: $a8
    ld b, $06                                     ; $61f0: $06 $06
    pop af                                        ; $61f2: $f1
    ld b, $06                                     ; $61f3: $06 $06
    ld sp, $0607                                  ; $61f5: $31 $07 $06
    ld d, h                                       ; $61f8: $54
    rlca                                          ; $61f9: $07
    ld b, $65                                     ; $61fa: $06 $65
    rlca                                          ; $61fc: $07
    ld b, $7c                                     ; $61fd: $06 $7c
    rlca                                          ; $61ff: $07
    ld b, $98                                     ; $6200: $06 $98
    rlca                                          ; $6202: $07
    ld b, $b8                                     ; $6203: $06 $b8
    rlca                                          ; $6205: $07
    ld b, $1e                                     ; $6206: $06 $1e
    ld [$3d06], sp                                ; $6208: $08 $06 $3d
    ld [$6506], sp                                ; $620b: $08 $06 $65
    ld [$7206], sp                                ; $620e: $08 $06 $72
    ld [$7c06], sp                                ; $6211: $08 $06 $7c
    ld [$8206], sp                                ; $6214: $08 $06 $82
    ld [$8806], sp                                ; $6217: $08 $06 $88
    ld [$9506], sp                                ; $621a: $08 $06 $95
    ld [$9a06], sp                                ; $621d: $08 $06 $9a
    ld [$a606], sp                                ; $6220: $08 $06 $a6
    ld [$b506], sp                                ; $6223: $08 $06 $b5
    ld [$c506], sp                                ; $6226: $08 $06 $c5
    ld [$cd06], sp                                ; $6229: $08 $06 $cd
    ld [$d706], sp                                ; $622c: $08 $06 $d7
    ld [$e506], sp                                ; $622f: $08 $06 $e5
    ld [$f306], sp                                ; $6232: $08 $06 $f3
    ld [$1006], sp                                ; $6235: $08 $06 $10
    add hl, bc                                    ; $6238: $09
    ld b, $25                                     ; $6239: $06 $25
    add hl, bc                                    ; $623b: $09
    ld b, $57                                     ; $623c: $06 $57
    add hl, bc                                    ; $623e: $09
    ld b, $66                                     ; $623f: $06 $66
    add hl, bc                                    ; $6241: $09
    ld b, $7e                                     ; $6242: $06 $7e
    add hl, bc                                    ; $6244: $09
    ld b, $8d                                     ; $6245: $06 $8d
    add hl, bc                                    ; $6247: $09
    ld b, $a2                                     ; $6248: $06 $a2
    add hl, bc                                    ; $624a: $09
    ld b, $d1                                     ; $624b: $06 $d1
    add hl, bc                                    ; $624d: $09
    ld b, $f8                                     ; $624e: $06 $f8
    add hl, bc                                    ; $6250: $09
    ld b, $2e                                     ; $6251: $06 $2e
    ld a, [bc]                                    ; $6253: $0a
    ld b, $40                                     ; $6254: $06 $40
    ld a, [bc]                                    ; $6256: $0a
    ld b, $75                                     ; $6257: $06 $75
    ld a, [bc]                                    ; $6259: $0a
    ld b, $82                                     ; $625a: $06 $82
    ld a, [bc]                                    ; $625c: $0a
    ld b, $8e                                     ; $625d: $06 $8e
    ld a, [bc]                                    ; $625f: $0a
    ld b, $9c                                     ; $6260: $06 $9c
    ld a, [bc]                                    ; $6262: $0a
    ld b, $a6                                     ; $6263: $06 $a6
    ld a, [bc]                                    ; $6265: $0a
    ld b, $b3                                     ; $6266: $06 $b3
    ld a, [bc]                                    ; $6268: $0a
    ld b, $ee                                     ; $6269: $06 $ee
    ld a, [bc]                                    ; $626b: $0a
    ld b, $28                                     ; $626c: $06 $28
    dec bc                                        ; $626e: $0b
    ld b, $9e                                     ; $626f: $06 $9e
    dec bc                                        ; $6271: $0b
    ld b, $b2                                     ; $6272: $06 $b2
    dec bc                                        ; $6274: $0b
    ld b, $bd                                     ; $6275: $06 $bd
    dec bc                                        ; $6277: $0b
    ld b, $f0                                     ; $6278: $06 $f0
    dec bc                                        ; $627a: $0b
    ld b, $02                                     ; $627b: $06 $02
    inc c                                         ; $627d: $0c
    ld b, $0e                                     ; $627e: $06 $0e

Call_02c_6280:
    inc c                                         ; $6280: $0c
    ld b, $14                                     ; $6281: $06 $14
    inc c                                         ; $6283: $0c
    ld b, $23                                     ; $6284: $06 $23
    inc c                                         ; $6286: $0c
    ld b, $36                                     ; $6287: $06 $36
    inc c                                         ; $6289: $0c
    ld b, $42                                     ; $628a: $06 $42
    inc c                                         ; $628c: $0c
    ld b, $49                                     ; $628d: $06 $49
    inc c                                         ; $628f: $0c
    ld b, $51                                     ; $6290: $06 $51
    inc c                                         ; $6292: $0c
    ld b, $5a                                     ; $6293: $06 $5a
    inc c                                         ; $6295: $0c
    ld b, $61                                     ; $6296: $06 $61
    inc c                                         ; $6298: $0c
    ld b, $63                                     ; $6299: $06 $63
    inc c                                         ; $629b: $0c
    ld b, $65                                     ; $629c: $06 $65
    inc c                                         ; $629e: $0c
    ld b, $67                                     ; $629f: $06 $67
    inc c                                         ; $62a1: $0c
    ld b, $69                                     ; $62a2: $06 $69
    inc c                                         ; $62a4: $0c
    ld b, $6b                                     ; $62a5: $06 $6b
    inc c                                         ; $62a7: $0c
    ld b, $6d                                     ; $62a8: $06 $6d
    inc c                                         ; $62aa: $0c
    ld b, $6f                                     ; $62ab: $06 $6f
    inc c                                         ; $62ad: $0c
    ld b, $71                                     ; $62ae: $06 $71
    inc c                                         ; $62b0: $0c
    ld b, $73                                     ; $62b1: $06 $73
    inc c                                         ; $62b3: $0c
    ld b, $75                                     ; $62b4: $06 $75
    inc c                                         ; $62b6: $0c
    ld b, $77                                     ; $62b7: $06 $77
    inc c                                         ; $62b9: $0c
    ld b, $79                                     ; $62ba: $06 $79
    inc c                                         ; $62bc: $0c
    ld b, $7b                                     ; $62bd: $06 $7b
    inc c                                         ; $62bf: $0c
    ld b, $7d                                     ; $62c0: $06 $7d
    inc c                                         ; $62c2: $0c
    ld b, $7f                                     ; $62c3: $06 $7f
    inc c                                         ; $62c5: $0c
    ld b, $81                                     ; $62c6: $06 $81
    inc c                                         ; $62c8: $0c
    ld b, $83                                     ; $62c9: $06 $83
    inc c                                         ; $62cb: $0c
    ld b, $85                                     ; $62cc: $06 $85
    inc c                                         ; $62ce: $0c
    ld b, $87                                     ; $62cf: $06 $87
    inc c                                         ; $62d1: $0c
    ld b, $89                                     ; $62d2: $06 $89
    inc c                                         ; $62d4: $0c
    ld b, $8b                                     ; $62d5: $06 $8b
    inc c                                         ; $62d7: $0c
    ld b, $8d                                     ; $62d8: $06 $8d
    inc c                                         ; $62da: $0c
    ld b, $8f                                     ; $62db: $06 $8f
    inc c                                         ; $62dd: $0c
    ld b, $91                                     ; $62de: $06 $91
    inc c                                         ; $62e0: $0c
    ld b, $93                                     ; $62e1: $06 $93
    inc c                                         ; $62e3: $0c
    ld b, $95                                     ; $62e4: $06 $95
    inc c                                         ; $62e6: $0c
    ld b, $97                                     ; $62e7: $06 $97
    inc c                                         ; $62e9: $0c
    ld b, $99                                     ; $62ea: $06 $99
    inc c                                         ; $62ec: $0c
    ld b, $9b                                     ; $62ed: $06 $9b
    inc c                                         ; $62ef: $0c
    ld b, $9d                                     ; $62f0: $06 $9d
    inc c                                         ; $62f2: $0c
    ld b, $9f                                     ; $62f3: $06 $9f
    inc c                                         ; $62f5: $0c
    ld b, $a1                                     ; $62f6: $06 $a1
    inc c                                         ; $62f8: $0c
    ld b, $a3                                     ; $62f9: $06 $a3
    inc c                                         ; $62fb: $0c
    ld b, $a5                                     ; $62fc: $06 $a5
    inc c                                         ; $62fe: $0c
    ld b, $a7                                     ; $62ff: $06 $a7
    inc c                                         ; $6301: $0c
    ld b, $a9                                     ; $6302: $06 $a9
    inc c                                         ; $6304: $0c
    ld b, $ab                                     ; $6305: $06 $ab
    inc c                                         ; $6307: $0c
    ld b, $ad                                     ; $6308: $06 $ad
    inc c                                         ; $630a: $0c
    ld b, $af                                     ; $630b: $06 $af
    inc c                                         ; $630d: $0c
    ld b, $b1                                     ; $630e: $06 $b1
    inc c                                         ; $6310: $0c
    ld b, $b3                                     ; $6311: $06 $b3
    inc c                                         ; $6313: $0c
    ld b, $b5                                     ; $6314: $06 $b5
    inc c                                         ; $6316: $0c
    ld b, $bb                                     ; $6317: $06 $bb
    inc c                                         ; $6319: $0c
    ld b, $c8                                     ; $631a: $06 $c8
    inc c                                         ; $631c: $0c
    ld b, $d5                                     ; $631d: $06 $d5
    inc c                                         ; $631f: $0c
    ld b, $e0                                     ; $6320: $06 $e0
    inc c                                         ; $6322: $0c
    ld b, $ea                                     ; $6323: $06 $ea
    inc c                                         ; $6325: $0c
    ld b, $f1                                     ; $6326: $06 $f1
    inc c                                         ; $6328: $0c
    ld b, $fb                                     ; $6329: $06 $fb
    inc c                                         ; $632b: $0c
    ld b, $fd                                     ; $632c: $06 $fd
    inc c                                         ; $632e: $0c
    ld b, $ff                                     ; $632f: $06 $ff
    inc c                                         ; $6331: $0c
    ld b, $01                                     ; $6332: $06 $01
    dec c                                         ; $6334: $0d
    ld b, $03                                     ; $6335: $06 $03
    dec c                                         ; $6337: $0d
    ld b, $05                                     ; $6338: $06 $05
    dec c                                         ; $633a: $0d
    ld b, $07                                     ; $633b: $06 $07
    dec c                                         ; $633d: $0d
    ld b, $09                                     ; $633e: $06 $09
    dec c                                         ; $6340: $0d
    ld b, $0b                                     ; $6341: $06 $0b
    dec c                                         ; $6343: $0d
    ld b, $0d                                     ; $6344: $06 $0d
    dec c                                         ; $6346: $0d
    ld b, $0f                                     ; $6347: $06 $0f
    dec c                                         ; $6349: $0d
    ld b, $11                                     ; $634a: $06 $11
    dec c                                         ; $634c: $0d
    ld b, $1d                                     ; $634d: $06 $1d
    dec c                                         ; $634f: $0d
    ld b, $1f                                     ; $6350: $06 $1f
    dec c                                         ; $6352: $0d
    ld b, $21                                     ; $6353: $06 $21
    dec c                                         ; $6355: $0d
    ld b, $23                                     ; $6356: $06 $23

Jump_02c_6358:
    dec c                                         ; $6358: $0d
    ld b, $25                                     ; $6359: $06 $25
    dec c                                         ; $635b: $0d
    ld b, $27                                     ; $635c: $06 $27
    dec c                                         ; $635e: $0d
    ld b, $29                                     ; $635f: $06 $29
    dec c                                         ; $6361: $0d
    ld b, $2b                                     ; $6362: $06 $2b
    dec c                                         ; $6364: $0d
    ld b, $2d                                     ; $6365: $06 $2d
    dec c                                         ; $6367: $0d
    ld b, $2f                                     ; $6368: $06 $2f
    dec c                                         ; $636a: $0d
    ld b, $31                                     ; $636b: $06 $31
    dec c                                         ; $636d: $0d
    ld b, $33                                     ; $636e: $06 $33
    dec c                                         ; $6370: $0d
    ld b, $35                                     ; $6371: $06 $35
    dec c                                         ; $6373: $0d
    ld b, $37                                     ; $6374: $06 $37
    dec c                                         ; $6376: $0d
    ld b, $39                                     ; $6377: $06 $39
    dec c                                         ; $6379: $0d
    ld b, $3b                                     ; $637a: $06 $3b
    dec c                                         ; $637c: $0d
    ld b, $3d                                     ; $637d: $06 $3d
    dec c                                         ; $637f: $0d
    ld b, $3f                                     ; $6380: $06 $3f
    dec c                                         ; $6382: $0d
    ld b, $41                                     ; $6383: $06 $41
    dec c                                         ; $6385: $0d
    ld b, $43                                     ; $6386: $06 $43
    dec c                                         ; $6388: $0d
    ld b, $45                                     ; $6389: $06 $45
    dec c                                         ; $638b: $0d
    ld b, $47                                     ; $638c: $06 $47
    dec c                                         ; $638e: $0d
    ld b, $52                                     ; $638f: $06 $52
    dec c                                         ; $6391: $0d
    ld b, $54                                     ; $6392: $06 $54
    dec c                                         ; $6394: $0d
    ld b, $5d                                     ; $6395: $06 $5d
    dec c                                         ; $6397: $0d
    ld b, $67                                     ; $6398: $06 $67
    dec c                                         ; $639a: $0d
    ld b, $74                                     ; $639b: $06 $74
    dec c                                         ; $639d: $0d
    ld b, $80                                     ; $639e: $06 $80
    dec c                                         ; $63a0: $0d
    ld b, $82                                     ; $63a1: $06 $82
    dec c                                         ; $63a3: $0d
    ld b, $84                                     ; $63a4: $06 $84
    dec c                                         ; $63a6: $0d
    ld b, $86                                     ; $63a7: $06 $86
    dec c                                         ; $63a9: $0d
    ld b, $88                                     ; $63aa: $06 $88
    dec c                                         ; $63ac: $0d
    ld b, $8a                                     ; $63ad: $06 $8a
    dec c                                         ; $63af: $0d
    ld b, $8c                                     ; $63b0: $06 $8c
    dec c                                         ; $63b2: $0d
    ld b, $8e                                     ; $63b3: $06 $8e
    dec c                                         ; $63b5: $0d
    ld b, $90                                     ; $63b6: $06 $90
    dec c                                         ; $63b8: $0d
    ld b, $92                                     ; $63b9: $06 $92
    dec c                                         ; $63bb: $0d
    ld b, $94                                     ; $63bc: $06 $94
    dec c                                         ; $63be: $0d
    ld b, $96                                     ; $63bf: $06 $96
    dec c                                         ; $63c1: $0d
    ld b, $98                                     ; $63c2: $06 $98
    dec c                                         ; $63c4: $0d
    ld b, $9a                                     ; $63c5: $06 $9a
    dec c                                         ; $63c7: $0d
    ld b, $9c                                     ; $63c8: $06 $9c
    dec c                                         ; $63ca: $0d
    ld b, $9e                                     ; $63cb: $06 $9e
    dec c                                         ; $63cd: $0d
    ld b, $a0                                     ; $63ce: $06 $a0
    dec c                                         ; $63d0: $0d
    ld b, $a2                                     ; $63d1: $06 $a2
    dec c                                         ; $63d3: $0d
    ld b, $a4                                     ; $63d4: $06 $a4
    dec c                                         ; $63d6: $0d
    ld b, $a9                                     ; $63d7: $06 $a9
    dec c                                         ; $63d9: $0d
    ld b, $ab                                     ; $63da: $06 $ab
    dec c                                         ; $63dc: $0d
    ld b, $ad                                     ; $63dd: $06 $ad
    dec c                                         ; $63df: $0d
    ld b, $af                                     ; $63e0: $06 $af
    dec c                                         ; $63e2: $0d
    ld b, $b1                                     ; $63e3: $06 $b1
    dec c                                         ; $63e5: $0d
    ld h, b                                       ; $63e6: $60
    ld e, [hl]                                    ; $63e7: $5e
    ld e, a                                       ; $63e8: $5f
    add [hl]                                      ; $63e9: $86
    adc e                                         ; $63ea: $8b
    adc [hl]                                      ; $63eb: $8e
    adc a                                         ; $63ec: $8f
    sub d                                         ; $63ed: $92
    sub e                                         ; $63ee: $93
    sbc b                                         ; $63ef: $98
    sbc d                                         ; $63f0: $9a
    sbc h                                         ; $63f1: $9c
    sbc l                                         ; $63f2: $9d
    sbc [hl]                                      ; $63f3: $9e
    and d                                         ; $63f4: $a2
    xor b                                         ; $63f5: $a8
    xor c                                         ; $63f6: $a9
    xor d                                         ; $63f7: $aa
    xor e                                         ; $63f8: $ab
    xor a                                         ; $63f9: $af
    or b                                          ; $63fa: $b0
    or c                                          ; $63fb: $b1
    or d                                          ; $63fc: $b2
    or e                                          ; $63fd: $b3
    or h                                          ; $63fe: $b4
    or l                                          ; $63ff: $b5
    or [hl]                                       ; $6400: $b6
    or a                                          ; $6401: $b7
    cp b                                          ; $6402: $b8
    cp c                                          ; $6403: $b9
    cp d                                          ; $6404: $ba
    cp e                                          ; $6405: $bb
    cp a                                          ; $6406: $bf
    ret nz                                        ; $6407: $c0

    pop bc                                        ; $6408: $c1
    jp nz, $c5c4                                  ; $6409: $c2 $c4 $c5

    add $c7                                       ; $640c: $c6 $c7
    ret z                                         ; $640e: $c8

    ret                                           ; $640f: $c9


    set 1, h                                      ; $6410: $cb $cc
    adc $cf                                       ; $6412: $ce $cf
    pop de                                        ; $6414: $d1
    jp nc, $d5d3                                  ; $6415: $d2 $d3 $d5

    sub $d7                                       ; $6418: $d6 $d7
    ret c                                         ; $641a: $d8

    reti                                          ; $641b: $d9


    jp c, $ebdf                                   ; $641c: $da $df $eb

    rst $30                                       ; $641f: $f7
    ld a, [$00fe]                                 ; $6420: $fa $fe $00
    adc b                                         ; $6423: $88
    adc l                                         ; $6424: $8d
    xor l                                         ; $6425: $ad
    jp z, $d0cd                                   ; $6426: $ca $cd $d0

    call nc, $01f8                                ; $6429: $d4 $f8 $01
    ld [bc], a                                    ; $642c: $02
    inc bc                                        ; $642d: $03
    inc b                                         ; $642e: $04
    dec b                                         ; $642f: $05
    ld b, $07                                     ; $6430: $06 $07
    ld [$0a09], sp                                ; $6432: $08 $09 $0a
    dec bc                                        ; $6435: $0b
    inc c                                         ; $6436: $0c
    dec c                                         ; $6437: $0d
    ld c, $0f                                     ; $6438: $0e $0f
    db $10                                        ; $643a: $10
    ld de, $1312                                  ; $643b: $11 $12 $13
    inc d                                         ; $643e: $14
    dec d                                         ; $643f: $15
    ld d, $17                                     ; $6440: $16 $17
    jr jr_02c_645d                                ; $6442: $18 $19

    ld a, [de]                                    ; $6444: $1a
    dec de                                        ; $6445: $1b
    inc e                                         ; $6446: $1c
    dec e                                         ; $6447: $1d
    and c                                         ; $6448: $a1
    jp $f9ea                                      ; $6449: $c3 $ea $f9


    sbc a                                         ; $644c: $9f
    ld e, $1f                                     ; $644d: $1e $1f
    jr nz, jr_02c_6472                            ; $644f: $20 $21

    ld [hl+], a                                   ; $6451: $22
    inc hl                                        ; $6452: $23
    inc h                                         ; $6453: $24
    dec h                                         ; $6454: $25
    ld h, $27                                     ; $6455: $26 $27
    jr z, jr_02c_6482                             ; $6457: $28 $29

    ld a, [hl+]                                   ; $6459: $2a
    dec hl                                        ; $645a: $2b
    inc l                                         ; $645b: $2c
    dec l                                         ; $645c: $2d

jr_02c_645d:
    ld l, $2f                                     ; $645d: $2e $2f
    rst $20                                       ; $645f: $e7
    add sp, $30                                   ; $6460: $e8 $30
    xor h                                         ; $6462: $ac
    ld [c], a                                     ; $6463: $e2
    and $f1                                       ; $6464: $e6 $f1
    ld sp, $3332                                  ; $6466: $31 $32 $33
    inc [hl]                                      ; $6469: $34
    dec [hl]                                      ; $646a: $35
    ld [hl], $37                                  ; $646b: $36 $37
    jr c, jr_02c_64a8                             ; $646d: $38 $39

    ld a, [hl-]                                   ; $646f: $3a
    dec sp                                        ; $6470: $3b
    adc h                                         ; $6471: $8c

jr_02c_6472:
    and a                                         ; $6472: $a7
    or $3c                                        ; $6473: $f6 $3c
    dec a                                         ; $6475: $3d
    ld a, $3f                                     ; $6476: $3e $3f
    xor [hl]                                      ; $6478: $ae
    db $ed                                        ; $6479: $ed
    ld b, b                                       ; $647a: $40
    ldh a, [rIE]                                  ; $647b: $f0 $ff
    ld b, c                                       ; $647d: $41
    ld b, d                                       ; $647e: $42
    ld b, e                                       ; $647f: $43
    ld b, h                                       ; $6480: $44
    db $e3                                        ; $6481: $e3

jr_02c_6482:
    ld b, l                                       ; $6482: $45
    ld b, [hl]                                    ; $6483: $46
    db $e4                                        ; $6484: $e4
    ld b, a                                       ; $6485: $47
    ld c, b                                       ; $6486: $48
    db $ec                                        ; $6487: $ec
    ld c, c                                       ; $6488: $49
    ld c, d                                       ; $6489: $4a
    ld c, e                                       ; $648a: $4b
    ld c, h                                       ; $648b: $4c
    ld c, l                                       ; $648c: $4d
    rst $28                                       ; $648d: $ef
    xor $f5                                       ; $648e: $ee $f5
    jp hl                                         ; $6490: $e9


    db $f4                                        ; $6491: $f4
    ld c, [hl]                                    ; $6492: $4e
    pop hl                                        ; $6493: $e1
    ld a, [c]                                     ; $6494: $f2
    di                                            ; $6495: $f3
    ld c, a                                       ; $6496: $4f
    ld d, b                                       ; $6497: $50
    ld d, c                                       ; $6498: $51
    ld d, d                                       ; $6499: $52
    ld d, e                                       ; $649a: $53
    ld d, h                                       ; $649b: $54
    ld d, l                                       ; $649c: $55
    push hl                                       ; $649d: $e5
    ld d, [hl]                                    ; $649e: $56
    ld d, a                                       ; $649f: $57
    ld e, b                                       ; $64a0: $58
    and b                                         ; $64a1: $a0
    ld e, c                                       ; $64a2: $59
    ld e, d                                       ; $64a3: $5a
    ld e, e                                       ; $64a4: $5b
    ld e, h                                       ; $64a5: $5c
    ld e, l                                       ; $64a6: $5d
    ld a, l                                       ; $64a7: $7d

jr_02c_64a8:
    ld e, $d8                                     ; $64a8: $1e $d8
    ld b, a                                       ; $64aa: $47
    rst $18                                       ; $64ab: $df
    rlca                                          ; $64ac: $07
    or $d1                                        ; $64ad: $f6 $d1
    ld [hl], a                                    ; $64af: $77
    sbc a                                         ; $64b0: $9f
    ld a, l                                       ; $64b1: $7d
    or $d5                                        ; $64b2: $f6 $d5
    ld [bc], a                                    ; $64b4: $02
    ld b, a                                       ; $64b5: $47
    cp e                                          ; $64b6: $bb
    cp $c5                                        ; $64b7: $fe $c5
    ld e, [hl]                                    ; $64b9: $5e
    cp l                                          ; $64ba: $bd
    dec e                                         ; $64bb: $1d
    db $ed                                        ; $64bc: $ed
    or $7b                                        ; $64bd: $f6 $7b
    inc [hl]                                      ; $64bf: $34
    adc h                                         ; $64c0: $8c
    ld d, $27                                     ; $64c1: $16 $27
    jr jr_02c_64ee                                ; $64c3: $18 $29

    ld l, b                                       ; $64c5: $68
    sbc l                                         ; $64c6: $9d
    call nc, Call_02c_7699                        ; $64c7: $d4 $99 $76
    ld e, d                                       ; $64ca: $5a
    jp Jump_02c_748d                              ; $64cb: $c3 $8d $74


    ldh a, [$fa]                                  ; $64ce: $f0 $fa
    inc a                                         ; $64d0: $3c
    or b                                          ; $64d1: $b0
    adc a                                         ; $64d2: $8f
    cp [hl]                                       ; $64d3: $be
    ei                                            ; $64d4: $fb
    rst $28                                       ; $64d5: $ef
    and e                                         ; $64d6: $a3
    rst $28                                       ; $64d7: $ef
    ld a, $fb                                     ; $64d8: $3e $fb
    db $ec                                        ; $64da: $ec
    xor e                                         ; $64db: $ab
    dec b                                         ; $64dc: $05
    and a                                         ; $64dd: $a7
    ld a, $a7                                     ; $64de: $3e $a7
    ld d, $59                                     ; $64e0: $16 $59
    and $a4                                       ; $64e2: $e6 $a4
    ld d, $27                                     ; $64e4: $16 $27
    and l                                         ; $64e6: $a5
    or d                                          ; $64e7: $b2
    ld b, l                                       ; $64e8: $45
    dec l                                         ; $64e9: $2d
    ld b, a                                       ; $64ea: $47
    inc bc                                        ; $64eb: $03
    sub d                                         ; $64ec: $92
    ld e, d                                       ; $64ed: $5a

jr_02c_64ee:
    dec e                                         ; $64ee: $1d
    ld c, a                                       ; $64ef: $4f
    reti                                          ; $64f0: $d9


    pop bc                                        ; $64f1: $c1
    dec sp                                        ; $64f2: $3b
    xor h                                         ; $64f3: $ac
    xor a                                         ; $64f4: $af
    ld a, $0e                                     ; $64f5: $3e $0e
    db $eb                                        ; $64f7: $eb
    ld a, e                                       ; $64f8: $7b
    dec l                                         ; $64f9: $2d
    dec e                                         ; $64fa: $1d
    dec sp                                        ; $64fb: $3b
    db $ec                                        ; $64fc: $ec
    ldh [rNR33], a                                ; $64fd: $e0 $1d
    sub $57                                       ; $64ff: $d6 $57
    rra                                           ; $6501: $1f
    add a                                         ; $6502: $87
    push af                                       ; $6503: $f5
    cp l                                          ; $6504: $bd
    ld d, $47                                     ; $6505: $16 $47
    rla                                           ; $6507: $17
    ld l, h                                       ; $6508: $6c
    db $f4                                        ; $6509: $f4
    ld sp, hl                                     ; $650a: $f9
    db $db                                        ; $650b: $db
    ld l, c                                       ; $650c: $69
    rst $38                                       ; $650d: $ff
    or l                                          ; $650e: $b5
    ld b, a                                       ; $650f: $47
    rla                                           ; $6510: $17
    ld l, h                                       ; $6511: $6c
    db $f4                                        ; $6512: $f4
    ld sp, hl                                     ; $6513: $f9
    db $db                                        ; $6514: $db
    sub c                                         ; $6515: $91
    ldh a, [$5a]                                  ; $6516: $f0 $5a
    ld b, a                                       ; $6518: $47
    rla                                           ; $6519: $17
    ld l, h                                       ; $651a: $6c
    db $f4                                        ; $651b: $f4
    ld sp, hl                                     ; $651c: $f9
    ld e, e                                       ; $651d: $5b
    daa                                           ; $651e: $27
    ld b, a                                       ; $651f: $47
    ld l, e                                       ; $6520: $6b
    ld bc, $cba7                                  ; $6521: $01 $a7 $cb
    dec hl                                        ; $6524: $2b
    inc l                                         ; $6525: $2c
    dec b                                         ; $6526: $05
    rra                                           ; $6527: $1f
    call nz, $fb4e                                ; $6528: $c4 $4e $fb
    xor a                                         ; $652b: $af
    dec b                                         ; $652c: $05
    and a                                         ; $652d: $a7
    sra e                                         ; $652e: $cb $2b
    inc l                                         ; $6530: $2c
    dec b                                         ; $6531: $05
    rra                                           ; $6532: $1f
    call nz, $848e                                ; $6533: $c4 $8e $84
    rst $10                                       ; $6536: $d7
    ld [bc], a                                    ; $6537: $02
    and a                                         ; $6538: $a7
    sra e                                         ; $6539: $cb $2b
    inc l                                         ; $653b: $2c
    dec b                                         ; $653c: $05
    rra                                           ; $653d: $1f
    call nz, Call_000_393a                        ; $653e: $c4 $3a $39
    ld e, d                                       ; $6541: $5a
    dec bc                                        ; $6542: $0b
    and a                                         ; $6543: $a7
    srl c                                         ; $6544: $cb $39
    ld d, [hl]                                    ; $6546: $56
    ld e, b                                       ; $6547: $58
    ld a, [bc]                                    ; $6548: $0a
    ld a, $88                                     ; $6549: $3e $88
    sbc l                                         ; $654b: $9d
    or $5f                                        ; $654c: $f6 $5f
    dec bc                                        ; $654e: $0b
    and a                                         ; $654f: $a7
    srl c                                         ; $6550: $cb $39
    ld d, [hl]                                    ; $6552: $56
    ld e, b                                       ; $6553: $58
    ld a, [bc]                                    ; $6554: $0a
    ld a, $88                                     ; $6555: $3e $88
    dec e                                         ; $6557: $1d
    add hl, bc                                    ; $6558: $09
    xor a                                         ; $6559: $af
    dec b                                         ; $655a: $05
    and a                                         ; $655b: $a7
    srl c                                         ; $655c: $cb $39
    ld d, [hl]                                    ; $655e: $56
    ld e, b                                       ; $655f: $58
    ld a, [bc]                                    ; $6560: $0a
    ld a, $88                                     ; $6561: $3e $88
    ld [hl], l                                    ; $6563: $75
    ld [hl], d                                    ; $6564: $72
    or h                                          ; $6565: $b4
    ld d, $c7                                     ; $6566: $16 $c7
    db $fd                                        ; $6568: $fd
    ld c, e                                       ; $6569: $4b
    sbc a                                         ; $656a: $9f
    db $e3                                        ; $656b: $e3
    db $db                                        ; $656c: $db
    ld l, c                                       ; $656d: $69
    rst $38                                       ; $656e: $ff
    or l                                          ; $656f: $b5
    rst $00                                       ; $6570: $c7
    db $fd                                        ; $6571: $fd
    ld c, e                                       ; $6572: $4b
    sbc a                                         ; $6573: $9f
    db $e3                                        ; $6574: $e3
    db $db                                        ; $6575: $db
    sub c                                         ; $6576: $91
    ldh a, [$5a]                                  ; $6577: $f0 $5a
    rst $00                                       ; $6579: $c7
    db $fd                                        ; $657a: $fd
    ld c, e                                       ; $657b: $4b
    sbc a                                         ; $657c: $9f
    db $e3                                        ; $657d: $e3
    ld e, e                                       ; $657e: $5b
    daa                                           ; $657f: $27
    ld b, a                                       ; $6580: $47
    ld l, e                                       ; $6581: $6b
    ld bc, $e067                                  ; $6582: $01 $67 $e0
    ld h, a                                       ; $6585: $67

jr_02c_6586:
    sbc c                                         ; $6586: $99
    ld [hl], e                                    ; $6587: $73
    add h                                         ; $6588: $84
    ld l, d                                       ; $6589: $6a
    daa                                           ; $658a: $27
    adc b                                         ; $658b: $88
    pop bc                                        ; $658c: $c1
    rla                                           ; $658d: $17
    sub $02                                       ; $658e: $d6 $02
    daa                                           ; $6590: $27
    cp h                                          ; $6591: $bc
    db $eb                                        ; $6592: $eb
    ld d, l                                       ; $6593: $55
    adc a                                         ; $6594: $8f
    sbc [hl]                                      ; $6595: $9e
    rst $28                                       ; $6596: $ef
    inc c                                         ; $6597: $0c
    ld c, h                                       ; $6598: $4c
    and l                                         ; $6599: $a5
    ld c, d                                       ; $659a: $4a
    ld c, l                                       ; $659b: $4d
    dec bc                                        ; $659c: $0b
    daa                                           ; $659d: $27
    cp h                                          ; $659e: $bc
    db $eb                                        ; $659f: $eb
    ld d, l                                       ; $65a0: $55
    adc a                                         ; $65a1: $8f
    sbc [hl]                                      ; $65a2: $9e
    xor a                                         ; $65a3: $af
    jp $c273                                      ; $65a4: $c3 $73 $c2


    ld l, b                                       ; $65a7: $68
    ld bc, $451d                                  ; $65a8: $01 $1d $45
    adc [hl]                                      ; $65ab: $8e
    ld l, c                                       ; $65ac: $69
    cp h                                          ; $65ad: $bc
    jr nz, jr_02c_6586                            ; $65ae: $20 $d6

    jp hl                                         ; $65b0: $e9


    sub c                                         ; $65b1: $91
    dec d                                         ; $65b2: $15
    adc b                                         ; $65b3: $88
    ld d, $1d                                     ; $65b4: $16 $1d
    ldh [$82], a                                  ; $65b6: $e0 $82
    ret c                                         ; $65b8: $d8

    pop hl                                        ; $65b9: $e1
    ld a, h                                       ; $65ba: $7c
    daa                                           ; $65bb: $27
    ld a, [de]                                    ; $65bc: $1a
    add h                                         ; $65bd: $84

jr_02c_65be:
    xor h                                         ; $65be: $ac
    ld l, d                                       ; $65bf: $6a
    ld bc, $609d                                  ; $65c0: $01 $9d $60
    rst $38                                       ; $65c3: $ff
    ld l, [hl]                                    ; $65c4: $6e
    or c                                          ; $65c5: $b1
    add $62                                       ; $65c6: $c6 $62
    ld a, [$73d7]                                 ; $65c8: $fa $d7 $73
    call $c69a                                    ; $65cb: $cd $9a $c6
    ld sp, $b5c6                                  ; $65ce: $31 $c6 $b5
    ld a, b                                       ; $65d1: $78
    ld c, [hl]                                    ; $65d2: $4e
    or l                                          ; $65d3: $b5
    adc c                                         ; $65d4: $89
    dec l                                         ; $65d5: $2d
    sbc l                                         ; $65d6: $9d
    ld h, b                                       ; $65d7: $60
    rst $38                                       ; $65d8: $ff
    ld l, [hl]                                    ; $65d9: $6e
    or c                                          ; $65da: $b1
    add $62                                       ; $65db: $c6 $62
    ld d, $a1                                     ; $65dd: $16 $a1
    di                                            ; $65df: $f3
    rst $00                                       ; $65e0: $c7
    or l                                          ; $65e1: $b5
    and $e1                                       ; $65e2: $e6 $e1
    and a                                         ; $65e4: $a7
    jr jr_02c_65be                                ; $65e5: $18 $d7

    ld a, [hl+]                                   ; $65e7: $2a
    ld h, e                                       ; $65e8: $63
    and c                                         ; $65e9: $a1
    sub $3c                                       ; $65ea: $d6 $3c
    ldh a, [$65]                                  ; $65ec: $f0 $65
    adc e                                         ; $65ee: $8b
    db $e4                                        ; $65ef: $e4
    cp e                                          ; $65f0: $bb
    or h                                          ; $65f1: $b4
    ld a, b                                       ; $65f2: $78
    ld c, [hl]                                    ; $65f3: $4e
    or l                                          ; $65f4: $b5
    adc c                                         ; $65f5: $89
    dec l                                         ; $65f6: $2d
    sbc l                                         ; $65f7: $9d
    ld h, b                                       ; $65f8: $60
    ld e, a                                       ; $65f9: $5f
    ld l, e                                       ; $65fa: $6b
    inc b                                         ; $65fb: $04
    sbc l                                         ; $65fc: $9d
    rst $10                                       ; $65fd: $d7
    ld e, b                                       ; $65fe: $58
    adc h                                         ; $65ff: $8c
    xor $b7                                       ; $6600: $ee $b7
    adc e                                         ; $6602: $8b
    ld l, l                                       ; $6603: $6d
    ld c, l                                       ; $6604: $4d
    inc hl                                        ; $6605: $23
    rst $08                                       ; $6606: $cf
    ld e, e                                       ; $6607: $5b
    ld b, a                                       ; $6608: $47
    and b                                         ; $6609: $a0
    ld a, $a3                                     ; $660a: $3e $a3
    rrca                                          ; $660c: $0f
    ld e, d                                       ; $660d: $5a
    add b                                         ; $660e: $80
    xor a                                         ; $660f: $af
    ld l, b                                       ; $6610: $68
    ld e, c                                       ; $6611: $59
    ld l, h                                       ; $6612: $6c
    ld d, l                                       ; $6613: $55
    ld hl, sp-$39                                 ; $6614: $f8 $c7
    or l                                          ; $6616: $b5
    ld c, [hl]                                    ; $6617: $4e
    ld l, [hl]                                    ; $6618: $6e
    adc h                                         ; $6619: $8c
    inc a                                         ; $661a: $3c
    sub h                                         ; $661b: $94
    call c, $e6b1                                 ; $661c: $dc $b1 $e6
    ld e, [hl]                                    ; $661f: $5e
    sub e                                         ; $6620: $93
    or a                                          ; $6621: $b7
    push af                                       ; $6622: $f5
    or l                                          ; $6623: $b5
    ld a, a                                       ; $6624: $7f
    scf                                           ; $6625: $37
    ld e, h                                       ; $6626: $5c
    or [hl]                                       ; $6627: $b6
    ld d, l                                       ; $6628: $55
    add [hl]                                      ; $6629: $86
    ld sp, $0606                                  ; $662a: $31 $06 $06
    ld a, a                                       ; $662d: $7f
    ld a, [$1fdc]                                 ; $662e: $fa $dc $1f
    jp nc, Jump_02c_731a                          ; $6631: $d2 $1a $73

    ld h, c                                       ; $6634: $61
    xor c                                         ; $6635: $a9
    ld c, l                                       ; $6636: $4d
    ld l, h                                       ; $6637: $6c
    ld bc, $7759                                  ; $6638: $01 $59 $77
    dec b                                         ; $663b: $05
    xor l                                         ; $663c: $ad
    ld sp, $b4bf                                  ; $663d: $31 $bf $b4
    inc c                                         ; $6640: $0c
    call c, $ecb1                                 ; $6641: $dc $b1 $ec
    rst $18                                       ; $6644: $df
    ld l, e                                       ; $6645: $6b
    and [hl]                                      ; $6646: $a6
    ccf                                           ; $6647: $3f
    ld e, e                                       ; $6648: $5b
    ld h, e                                       ; $6649: $63
    ld sp, $e82e                                  ; $664a: $31 $2e $e8
    cp h                                          ; $664d: $bc
    db $eb                                        ; $664e: $eb
    ld d, l                                       ; $664f: $55
    sub l                                         ; $6650: $95
    sub $a3                                       ; $6651: $d6 $a3
    push hl                                       ; $6653: $e5
    dec sp                                        ; $6654: $3b
    db $fd                                        ; $6655: $fd
    pop hl                                        ; $6656: $e1
    add l                                         ; $6657: $85
    dec hl                                        ; $6658: $2b
    or [hl]                                       ; $6659: $b6
    call nc, $c203                                ; $665a: $d4 $03 $c2
    inc c                                         ; $665d: $0c
    ld l, b                                       ; $665e: $68
    ld e, h                                       ; $665f: $5c
    ld c, e                                       ; $6660: $4b
    add hl, de                                    ; $6661: $19
    dec bc                                        ; $6662: $0b
    ld b, h                                       ; $6663: $44
    and h                                         ; $6664: $a4
    ld e, b                                       ; $6665: $58
    ld h, l                                       ; $6666: $65
    inc l                                         ; $6667: $2c
    call z, Call_02c_6280                         ; $6668: $cc $80 $62
    ld e, c                                       ; $666b: $59
    ld l, h                                       ; $666c: $6c
    sbc l                                         ; $666d: $9d
    cp a                                          ; $666e: $bf
    sub e                                         ; $666f: $93
    ld c, d                                       ; $6670: $4a
    ld b, c                                       ; $6671: $41
    add $3e                                       ; $6672: $c6 $3e
    sub a                                         ; $6674: $97
    rst $20                                       ; $6675: $e7
    xor e                                         ; $6676: $ab
    xor a                                         ; $6677: $af
    ld sp, $3186                                  ; $6678: $31 $86 $31
    jp nc, Jump_02c_7f1a                          ; $667b: $d2 $1a $7f

    rla                                           ; $667e: $17
    cp b                                          ; $667f: $b8
    ld a, h                                       ; $6680: $7c
    ldh a, [$b5]                                  ; $6681: $f0 $b5
    sub h                                         ; $6683: $94
    or c                                          ; $6684: $b1
    ld b, b                                       ; $6685: $40
    ld b, h                                       ; $6686: $44
    ld e, d                                       ; $6687: $5a
    ld h, l                                       ; $6688: $65
    inc l                                         ; $6689: $2c
    call z, $f280                                 ; $668a: $cc $80 $f2
    ld [hl], l                                    ; $668d: $75
    add d                                         ; $668e: $82
    dec [hl]                                      ; $668f: $35
    add d                                         ; $6690: $82
    adc $23                                       ; $6691: $ce $23
    xor l                                         ; $6693: $ad
    pop af                                        ; $6694: $f1
    ld d, a                                       ; $6695: $57
    jp hl                                         ; $6696: $e9


    rlc a                                         ; $6697: $cb $07
    ld a, a                                       ; $6699: $7f
    adc l                                         ; $669a: $8d
    ld h, b                                       ; $669b: $60
    and d                                         ; $669c: $a2
    ld d, l                                       ; $669d: $55
    sbc d                                         ; $669e: $9a
    dec hl                                        ; $669f: $2b
    ei                                            ; $66a0: $fb
    pop hl                                        ; $66a1: $e1
    rst $20                                       ; $66a2: $e7
    xor [hl]                                      ; $66a3: $ae
    ld e, c                                       ; $66a4: $59
    db $e3                                        ; $66a5: $e3
    ld [hl], l                                    ; $66a6: $75
    inc hl                                        ; $66a7: $23
    ld l, a                                       ; $66a8: $6f
    ld bc, $bc47                                  ; $66a9: $01 $47 $bc
    sbc a                                         ; $66ac: $9f
    db $fd                                        ; $66ad: $fd
    ret nz                                        ; $66ae: $c0

    ld [hl], a                                    ; $66af: $77
    xor h                                         ; $66b0: $ac
    cp c                                          ; $66b1: $b9
    rst $10                                       ; $66b2: $d7
    db $e4                                        ; $66b3: $e4
    dec sp                                        ; $66b4: $3b
    db $fd                                        ; $66b5: $fd
    pop hl                                        ; $66b6: $e1
    add l                                         ; $66b7: $85
    db $eb                                        ; $66b8: $eb
    sub b                                         ; $66b9: $90
    rst $28                                       ; $66ba: $ef
    and h                                         ; $66bb: $a4
    ld d, d                                       ; $66bc: $52
    sub b                                         ; $66bd: $90
    or c                                          ; $66be: $b1
    rst $08                                       ; $66bf: $cf
    push hl                                       ; $66c0: $e5
    ld sp, hl                                     ; $66c1: $f9
    adc [hl]                                      ; $66c2: $8e
    dec hl                                        ; $66c3: $2b
    ld h, e                                       ; $66c4: $63
    ld l, h                                       ; $66c5: $6c
    and h                                         ; $66c6: $a4
    and l                                         ; $66c7: $a5
    rra                                           ; $66c8: $1f
    ld hl, sp+$47                                 ; $66c9: $f8 $47
    rra                                           ; $66cb: $1f
    ld a, h                                       ; $66cc: $7c
    dec l                                         ; $66cd: $2d
    ld h, l                                       ; $66ce: $65
    inc l                                         ; $66cf: $2c
    db $10                                        ; $66d0: $10
    sub c                                         ; $66d1: $91
    ld d, [hl]                                    ; $66d2: $56
    add hl, de                                    ; $66d3: $19
    dec bc                                        ; $66d4: $0b
    inc sp                                        ; $66d5: $33
    and b                                         ; $66d6: $a0
    ld a, h                                       ; $66d7: $7c
    sbc l                                         ; $66d8: $9d
    ld h, b                                       ; $66d9: $60
    sub l                                         ; $66da: $95
    and $22                                       ; $66db: $e6 $22
    ld a, a                                       ; $66dd: $7f
    ret nz                                        ; $66de: $c0

    ret z                                         ; $66df: $c8

    dec l                                         ; $66e0: $2d
    sub $14                                       ; $66e1: $d6 $14
    adc b                                         ; $66e3: $88
    sub c                                         ; $66e4: $91
    add hl, sp                                    ; $66e5: $39
    rst $18                                       ; $66e6: $df
    push bc                                       ; $66e7: $c5
    sub $f9                                       ; $66e8: $d6 $f9
    dec sp                                        ; $66ea: $3b
    add $f1                                       ; $66eb: $c6 $f1
    or e                                          ; $66ed: $b3
    ld e, $51                                     ; $66ee: $1e $51
    db $e4                                        ; $66f0: $e4
    dec l                                         ; $66f1: $2d
    rst $00                                       ; $66f2: $c7
    sub l                                         ; $66f3: $95
    push de                                       ; $66f4: $d5
    call z, $0196                                 ; $66f5: $cc $96 $01
    sub l                                         ; $66f8: $95
    inc c                                         ; $66f9: $0c
    ld l, b                                       ; $66fa: $68
    rla                                           ; $66fb: $17
    ei                                            ; $66fc: $fb
    add l                                         ; $66fd: $85
    add $ef                                       ; $66fe: $c6 $ef
    or a                                          ; $6700: $b7
    res 2, c                                      ; $6701: $cb $91
    ld d, $e0                                     ; $6703: $16 $e0
    dec hl                                        ; $6705: $2b
    or [hl]                                       ; $6706: $b6
    and $39                                       ; $6707: $e6 $39
    add hl, hl                                    ; $6709: $29
    rst $08                                       ; $670a: $cf
    di                                            ; $670b: $f3
    ld d, $47                                     ; $670c: $16 $47
    ld a, l                                       ; $670e: $7d
    ld [hl], d                                    ; $670f: $72
    dec c                                         ; $6710: $0d
    cpl                                           ; $6711: $2f
    call c, $dc8d                                 ; $6712: $dc $8d $dc
    ld a, $4b                                     ; $6715: $3e $4b
    cp [hl]                                       ; $6717: $be
    ret nz                                        ; $6718: $c0

    sub c                                         ; $6719: $91
    jp z, $3414                                   ; $671a: $ca $14 $34

    ld a, d                                       ; $671d: $7a
    ld a, a                                       ; $671e: $7f
    db $fc                                        ; $671f: $fc
    ld d, $e8                                     ; $6720: $16 $e8
    dec l                                         ; $6722: $2d
    dec e                                         ; $6723: $1d
    inc c                                         ; $6724: $0c
    ld h, e                                       ; $6725: $63
    ld [hl], l                                    ; $6726: $75
    ld d, [hl]                                    ; $6727: $56
    xor $d6                                       ; $6728: $ee $d6
    inc [hl]                                      ; $672a: $34
    ld e, l                                       ; $672b: $5d
    jp nc, $8c38                                  ; $672c: $d2 $38 $8c

    ld h, l                                       ; $672f: $65
    ld hl, sp-$6d                                 ; $6730: $f8 $93
    ld [hl], e                                    ; $6732: $73
    db $fd                                        ; $6733: $fd
    rst $30                                       ; $6734: $f7
    cpl                                           ; $6735: $2f
    xor l                                         ; $6736: $ad
    adc $5e                                       ; $6737: $ce $5e
    ld [$9e86], a                                 ; $6739: $ea $86 $9e
    ld l, h                                       ; $673c: $6c
    ld bc, $e659                                  ; $673d: $01 $59 $e6
    cp e                                          ; $6740: $bb
    ld d, h                                       ; $6741: $54
    nop                                           ; $6742: $00
    sub a                                         ; $6743: $97
    ld bc, $231c                                  ; $6744: $01 $1c $23
    and b                                         ; $6747: $a0
    dec [hl]                                      ; $6748: $35
    xor [hl]                                      ; $6749: $ae
    rst $08                                       ; $674a: $cf
    ld e, l                                       ; $674b: $5d
    inc de                                        ; $674c: $13
    db $ed                                        ; $674d: $ed
    ld l, e                                       ; $674e: $6b
    adc h                                         ; $674f: $8c
    add b                                         ; $6750: $80
    sub $58                                       ; $6751: $d6 $58
    adc h                                         ; $6753: $8c
    ld h, l                                       ; $6754: $65
    xor h                                         ; $6755: $ac
    cpl                                           ; $6756: $2f
    ld l, a                                       ; $6757: $6f
    ld bc, $6a47                                  ; $6758: $01 $47 $6a
    ld h, c                                       ; $675b: $61
    cp e                                          ; $675c: $bb
    and b                                         ; $675d: $a0
    ld b, c                                       ; $675e: $41
    adc [hl]                                      ; $675f: $8e
    ld [hl], h                                    ; $6760: $74
    ld c, e                                       ; $6761: $4b
    xor [hl]                                      ; $6762: $ae
    ld l, b                                       ; $6763: $68
    adc l                                         ; $6764: $8d
    ld h, e                                       ; $6765: $63
    rst $20                                       ; $6766: $e7
    ld [hl], c                                    ; $6767: $71
    ld sp, $6b6e                                  ; $6768: $31 $6e $6b
    xor h                                         ; $676b: $ac
    ld b, [hl]                                    ; $676c: $46
    sbc [hl]                                      ; $676d: $9e
    or a                                          ; $676e: $b7
    and a                                         ; $676f: $a7
    ccf                                           ; $6770: $3f
    adc b                                         ; $6771: $88
    ld a, l                                       ; $6772: $7d
    xor l                                         ; $6773: $ad
    ld a, c                                       ; $6774: $79
    ret nz                                        ; $6775: $c0

    add sp, -$04                                  ; $6776: $e8 $fc
    dec [hl]                                      ; $6778: $35
    ld d, $6b                                     ; $6779: $16 $6b
    ld l, [hl]                                    ; $677b: $6e
    rst $38                                       ; $677c: $ff
    ld b, [hl]                                    ; $677d: $46
    ld l, $1f                                     ; $677e: $2e $1f
    or a                                          ; $6780: $b7
    rra                                           ; $6781: $1f
    dec hl                                        ; $6782: $2b
    or [hl]                                       ; $6783: $b6
    or b                                          ; $6784: $b0
    ld d, d                                       ; $6785: $52
    or h                                          ; $6786: $b4
    ret nz                                        ; $6787: $c0

    ld sp, $620f                                  ; $6788: $31 $0f $62
    rst $38                                       ; $678b: $ff
    ld l, [hl]                                    ; $678c: $6e
    adc h                                         ; $678d: $8c
    adc $5f                                       ; $678e: $ce $5f
    ld h, e                                       ; $6790: $63
    or c                                          ; $6791: $b1
    ld h, d                                       ; $6792: $62
    cp e                                          ; $6793: $bb
    jp z, Jump_02c_5c6d                           ; $6794: $ca $6d $5c

    dec hl                                        ; $6797: $2b
    or [hl]                                       ; $6798: $b6
    adc e                                         ; $6799: $8b
    ld l, l                                       ; $679a: $6d
    ld d, l                                       ; $679b: $55
    jp z, $f4b5                                   ; $679c: $ca $b5 $f4

    ld [hl], e                                    ; $679f: $73
    ld d, d                                       ; $67a0: $52
    sbc $02                                       ; $67a1: $de $02
    dec e                                         ; $67a3: $1d
    ld a, [c]                                     ; $67a4: $f2
    ld [hl], l                                    ; $67a5: $75
    ld a, h                                       ; $67a6: $7c
    ld b, h                                       ; $67a7: $44
    ld a, [c]                                     ; $67a8: $f2
    jp c, Jump_02c_7743                           ; $67a9: $da $43 $77

    ld a, [$d723]                                 ; $67ac: $fa $23 $d7
    xor h                                         ; $67af: $ac
    jp nz, Jump_000_0f31                          ; $67b0: $c2 $31 $0f

    ld h, d                                       ; $67b3: $62
    ld b, [hl]                                    ; $67b4: $46
    and h                                         ; $67b5: $a4
    rst $08                                       ; $67b6: $cf
    ld h, a                                       ; $67b7: $67
    or b                                          ; $67b8: $b0
    call nc, Call_000_1a03                        ; $67b9: $d4 $03 $1a
    add a                                         ; $67bc: $87
    or c                                          ; $67bd: $b1
    xor l                                         ; $67be: $ad
    sub h                                         ; $67bf: $94
    cp h                                          ; $67c0: $bc
    dec b                                         ; $67c1: $05
    and a                                         ; $67c2: $a7
    ld [c], a                                     ; $67c3: $e2
    sbc b                                         ; $67c4: $98
    rlca                                          ; $67c5: $07
    or c                                          ; $67c6: $b1
    adc e                                         ; $67c7: $8b
    dec l                                         ; $67c8: $2d
    cp a                                          ; $67c9: $bf
    ret c                                         ; $67ca: $d8

    ld a, [hl-]                                   ; $67cb: $3a
    ld a, a                                       ; $67cc: $7f
    dec e                                         ; $67cd: $1d
    ld a, [c]                                     ; $67ce: $f2
    dec e                                         ; $67cf: $1d
    ld l, e                                       ; $67d0: $6b
    inc l                                         ; $67d1: $2c
    ld b, a                                       ; $67d2: $47
    sbc [hl]                                      ; $67d3: $9e
    inc e                                         ; $67d4: $1c
    sub [hl]                                      ; $67d5: $96
    add l                                         ; $67d6: $85
    ld b, [hl]                                    ; $67d7: $46
    cp $80                                        ; $67d8: $fe $80
    pop de                                        ; $67da: $d1
    ld a, [de]                                    ; $67db: $1a
    xor a                                         ; $67dc: $af
    dec de                                        ; $67dd: $1b
    db $e3                                        ; $67de: $e3
    adc d                                         ; $67df: $8a
    ld e, l                                       ; $67e0: $5d
    ld l, h                                       ; $67e1: $6c
    xor e                                         ; $67e2: $ab
    ld d, d                                       ; $67e3: $52
    xor [hl]                                      ; $67e4: $ae
    ld e, b                                       ; $67e5: $58
    ld a, [$2939]                                 ; $67e6: $fa $39 $29
    ld a, [c]                                     ; $67e9: $f2
    ld d, $1d                                     ; $67ea: $16 $1d
    ld a, [c]                                     ; $67ec: $f2
    dec e                                         ; $67ed: $1d
    ld l, e                                       ; $67ee: $6b
    inc l                                         ; $67ef: $2c
    ld b, a                                       ; $67f0: $47
    ld a, $e6                                     ; $67f1: $3e $e6
    ld b, c                                       ; $67f3: $41

Call_02c_67f4:
    call z, $f488                                 ; $67f4: $cc $88 $f4
    ld sp, hl                                     ; $67f7: $f9
    add sp, $01                                   ; $67f8: $e8 $01
    call $a960                                    ; $67fa: $cd $60 $a9
    rlca                                          ; $67fd: $07
    inc [hl]                                      ; $67fe: $34
    ld c, $4b                                     ; $67ff: $0e $4b
    ld [hl], l                                    ; $6801: $75
    ld c, c                                       ; $6802: $49
    ld e, b                                       ; $6803: $58
    jp hl                                         ; $6804: $e9


    ld d, e                                       ; $6805: $53
    sbc $02                                       ; $6806: $de $02
    dec e                                         ; $6808: $1d
    ld a, [c]                                     ; $6809: $f2
    dec e                                         ; $680a: $1d
    ld l, e                                       ; $680b: $6b

jr_02c_680c:
    inc l                                         ; $680c: $2c
    ld b, a                                       ; $680d: $47
    ld a, $d1                                     ; $680e: $3e $d1
    ld a, [hl-]                                   ; $6810: $3a
    db $e4                                        ; $6811: $e4
    dec sp                                        ; $6812: $3b
    add $b1                                       ; $6813: $c6 $b1
    add hl, bc                                    ; $6815: $09
    ld e, l                                       ; $6816: $5d
    ld h, e                                       ; $6817: $63
    ld e, $c4                                     ; $6818: $1e $c4
    adc h                                         ; $681a: $8c
    ld c, b                                       ; $681b: $48
    sbc a                                         ; $681c: $9f
    db $eb                                        ; $681d: $eb
    ld d, e                                       ; $681e: $53
    sbc $02                                       ; $681f: $de $02
    ld b, a                                       ; $6821: $47
    cp h                                          ; $6822: $bc
    sbc a                                         ; $6823: $9f
    db $fd                                        ; $6824: $fd
    ret nz                                        ; $6825: $c0

    ld [hl], a                                    ; $6826: $77
    xor h                                         ; $6827: $ac
    cp c                                          ; $6828: $b9
    rst $10                                       ; $6829: $d7
    call nc, $b626                                ; $682a: $d4 $26 $b6
    ld b, a                                       ; $682d: $47
    cp h                                          ; $682e: $bc
    sbc a                                         ; $682f: $9f
    db $fd                                        ; $6830: $fd
    ret nz                                        ; $6831: $c0

    sub e                                         ; $6832: $93
    db $eb                                        ; $6833: $eb
    sub b                                         ; $6834: $90
    xor a                                         ; $6835: $af
    db $e3                                        ; $6836: $e3
    inc hl                                        ; $6837: $23
    sub d                                         ; $6838: $92
    rst $20                                       ; $6839: $e7
    ld e, e                                       ; $683a: $5b
    ld a, l                                       ; $683b: $7d
    xor l                                         ; $683c: $ad
    cp d                                          ; $683d: $ba
    ld e, e                                       ; $683e: $5b
    db $d3                                        ; $683f: $d3
    xor b                                         ; $6840: $a8
    inc d                                         ; $6841: $14
    db $ed                                        ; $6842: $ed
    jr jr_02c_680c                                ; $6843: $18 $c7

    ld h, $74                                     ; $6845: $26 $74
    push hl                                       ; $6847: $e5
    dec l                                         ; $6848: $2d
    daa                                           ; $6849: $27
    db $fd                                        ; $684a: $fd
    add hl, de                                    ; $684b: $19
    ld d, [hl]                                    ; $684c: $56
    ld [hl], d                                    ; $684d: $72
    ld b, e                                       ; $684e: $43
    sbc d                                         ; $684f: $9a
    sub l                                         ; $6850: $95
    ld [hl+], a                                   ; $6851: $22
    ld e, a                                       ; $6852: $5f
    sbc l                                         ; $6853: $9d
    dec d                                         ; $6854: $15
    db $db                                        ; $6855: $db
    push bc                                       ; $6856: $c5
    or [hl]                                       ; $6857: $b6
    ld a, [hl+]                                   ; $6858: $2a
    push hl                                       ; $6859: $e5
    ld e, d                                       ; $685a: $5a
    ld a, [$6939]                                 ; $685b: $fa $39 $69
    ld e, h                                       ; $685e: $5c
    dec sp                                        ; $685f: $3b
    sub $dc                                       ; $6860: $d6 $dc
    ld l, e                                       ; $6862: $6b
    sub d                                         ; $6863: $92
    xor e                                         ; $6864: $ab
    inc c                                         ; $6865: $0c
    ccf                                           ; $6866: $3f
    jp hl                                         ; $6867: $e9


    db $db                                        ; $6868: $db
    and a                                         ; $6869: $a7
    cp h                                          ; $686a: $bc
    dec b                                         ; $686b: $05

jr_02c_686c:
    and a                                         ; $686c: $a7
    ccf                                           ; $686d: $3f
    adc b                                         ; $686e: $88
    add hl, de                                    ; $686f: $19
    and e                                         ; $6870: $a3
    di                                            ; $6871: $f3
    ld d, a                                       ; $6872: $57
    ld l, h                                       ; $6873: $6c
    ld d, a                                       ; $6874: $57
    cp c                                          ; $6875: $b9
    dec h                                         ; $6876: $25
    ld d, a                                       ; $6877: $57
    cp l                                          ; $6878: $bd
    rra                                           ; $6879: $1f
    jr z, jr_02c_686c                             ; $687a: $28 $f0

    jp c, $5b43                                   ; $687c: $da $43 $5b

    daa                                           ; $687f: $27
    ret c                                         ; $6880: $d8

    sbc b                                         ; $6881: $98
    add a                                         ; $6882: $87
    and l                                         ; $6883: $a5
    ld c, [hl]                                    ; $6884: $4e
    cp [hl]                                       ; $6885: $be
    and e                                         ; $6886: $a3
    ld l, b                                       ; $6887: $68
    reti                                          ; $6888: $d9


    ld a, [de]                                    ; $6889: $1a
    di                                            ; $688a: $f3
    add b                                         ; $688b: $80
    cp e                                          ; $688c: $bb
    ld h, c                                       ; $688d: $61
    call z, $0220                                 ; $688e: $cc $20 $02
    rst $00                                       ; $6891: $c7
    inc a                                         ; $6892: $3c
    adc b                                         ; $6893: $88
    dec [hl]                                      ; $6894: $35
    and $45                                       ; $6895: $e6 $45
    ld a, $ae                                     ; $6897: $3e $ae
    sbc l                                         ; $6899: $9d
    cp $20                                        ; $689a: $fe $20
    ld [$6a9d], a                                 ; $689c: $ea $9d $6a
    adc h                                         ; $689f: $8c
    adc $af                                       ; $68a0: $ce $af
    ld [hl], a                                    ; $68a2: $77
    ld [hl-], a                                   ; $68a3: $32
    inc a                                         ; $68a4: $3c
    call z, $9d5b                                 ; $68a5: $cc $5b $9d
    ld e, $d0                                     ; $68a8: $1e $d0
    ld b, d                                       ; $68aa: $42
    ld d, l                                       ; $68ab: $55
    xor d                                         ; $68ac: $aa
    ld l, b                                       ; $68ad: $68
    ld e, l                                       ; $68ae: $5d
    sub e                                         ; $68af: $93
    ld l, e                                       ; $68b0: $6b
    ld a, [$ce7b]                                 ; $68b1: $fa $7b $ce
    ld e, l                                       ; $68b4: $5d
    ld sp, hl                                     ; $68b5: $f9
    halt                                          ; $68b6: $76
    cp d                                          ; $68b7: $ba
    nop                                           ; $68b8: $00
    ld c, e                                       ; $68b9: $4b
    pop de                                        ; $68ba: $d1
    ld sp, hl                                     ; $68bb: $f9
    xor e                                         ; $68bc: $ab
    or h                                          ; $68bd: $b4
    nop                                           ; $68be: $00
    ld h, h                                       ; $68bf: $64
    ld e, h                                       ; $68c0: $5c
    ld a, c                                       ; $68c1: $79
    dec bc                                        ; $68c2: $0b
    and a                                         ; $68c3: $a7
    jr z, jr_02c_690e                             ; $68c4: $28 $48

    rst $20                                       ; $68c6: $e7
    ld c, a                                       ; $68c7: $4f
    ccf                                           ; $68c8: $3f
    ld d, h                                       ; $68c9: $54
    and l                                         ; $68ca: $a5
    adc d                                         ; $68cb: $8a
    sub d                                         ; $68cc: $92
    adc e                                         ; $68cd: $8b
    dec sp                                        ; $68ce: $3b
    sub [hl]                                      ; $68cf: $96
    ld sp, $620f                                  ; $68d0: $31 $0f $62
    ld c, l                                       ; $68d3: $4d
    or c                                          ; $68d4: $b1
    ld l, [hl]                                    ; $68d5: $6e
    add hl, hl                                    ; $68d6: $29
    ld l, a                                       ; $68d7: $6f
    ld bc, $a3a7                                  ; $68d8: $01 $a7 $a3
    ld a, [hl]                                    ; $68db: $7e
    inc h                                         ; $68dc: $24
    ld [hl], a                                    ; $68dd: $77
    xor h                                         ; $68de: $ac
    cp c                                          ; $68df: $b9
    rst $10                                       ; $68e0: $d7
    db $e4                                        ; $68e1: $e4
    dec l                                         ; $68e2: $2d
    rst $00                                       ; $68e3: $c7
    ld a, [de]                                    ; $68e4: $1a
    res 2, c                                      ; $68e5: $cb $91
    rst $10                                       ; $68e7: $d7
    ld h, $6e                                     ; $68e8: $26 $6e
    add a                                         ; $68ea: $87
    inc de                                        ; $68eb: $13
    jp hl                                         ; $68ec: $e9


    di                                            ; $68ed: $f3
    xor b                                         ; $68ee: $a8
    ld d, a                                       ; $68ef: $57
    dec a                                         ; $68f0: $3d
    xor h                                         ; $68f1: $ac
    ld c, l                                       ; $68f2: $4d
    ld l, h                                       ; $68f3: $6c
    ld bc, $de47                                  ; $68f4: $01 $47 $de
    ld [c], a                                     ; $68f7: $e2
    sub l                                         ; $68f8: $95
    ld e, e                                       ; $68f9: $5b
    cp [hl]                                       ; $68fa: $be
    ld h, l                                       ; $68fb: $65
    ld l, c                                       ; $68fc: $69
    inc l                                         ; $68fd: $2c
    ret nz                                        ; $68fe: $c0

    adc e                                         ; $68ff: $8b
    dec l                                         ; $6900: $2d
    sbc d                                         ; $6901: $9a
    add d                                         ; $6902: $82
    sub [hl]                                      ; $6903: $96
    sub [hl]                                      ; $6904: $96
    ld d, a                                       ; $6905: $57
    or a                                          ; $6906: $b7
    cp h                                          ; $6907: $bc
    dec b                                         ; $6908: $05
    ld b, a                                       ; $6909: $47
    sbc $e2                                       ; $690a: $de $e2
    sub l                                         ; $690c: $95
    ld e, e                                       ; $690d: $5b

jr_02c_690e:
    ld [hl], d                                    ; $690e: $72
    sub a                                         ; $690f: $97
    add $02                                       ; $6910: $c6 $02
    cp h                                          ; $6912: $bc
    ret c                                         ; $6913: $d8

    and d                                         ; $6914: $a2
    add hl, hl                                    ; $6915: $29
    ld l, b                                       ; $6916: $68
    ld a, [hl]                                    ; $6917: $7e
    dec bc                                        ; $6918: $0b
    add hl, sp                                    ; $6919: $39
    ld [hl], e                                    ; $691a: $73
    sbc e                                         ; $691b: $9b
    ld b, c                                       ; $691c: $41
    rst $20                                       ; $691d: $e7
    cp c                                          ; $691e: $b9
    xor d                                         ; $691f: $aa
    call nc, Call_000_0f03                        ; $6920: $d4 $03 $0f
    ld d, l                                       ; $6923: $55
    ld a, [$e314]                                 ; $6924: $fa $14 $e3
    ld e, d                                       ; $6927: $5a
    db $e3                                        ; $6928: $e3
    ld e, l                                       ; $6929: $5d
    ld d, e                                       ; $692a: $53
    db $e4                                        ; $692b: $e4
    dec l                                         ; $692c: $2d
    rlca                                          ; $692d: $07
    push af                                       ; $692e: $f5
    sbc e                                         ; $692f: $9b
    call c, $fd41                                 ; $6930: $dc $41 $fd
    dec h                                         ; $6933: $25
    ld [hl], a                                    ; $6934: $77
    ld d, b                                       ; $6935: $50
    rst $38                                       ; $6936: $ff
    ld a, c                                       ; $6937: $79
    sbc [hl]                                      ; $6938: $9e
    xor a                                         ; $6939: $af
    cp [hl]                                       ; $693a: $be
    ld d, [hl]                                    ; $693b: $56
    db $dd                                        ; $693c: $dd
    rst $18                                       ; $693d: $df
    ld [hl], l                                    ; $693e: $75
    ld b, c                                       ; $693f: $41
    and e                                         ; $6940: $a3
    ld [hl], c                                    ; $6941: $71
    adc l                                         ; $6942: $8d
    ld a, c                                       ; $6943: $79
    db $10                                        ; $6944: $10
    db $e3                                        ; $6945: $e3
    ld [hl], l                                    ; $6946: $75
    ld h, e                                       ; $6947: $63
    add hl, de                                    ; $6948: $19
    ret nc                                        ; $6949: $d0

    or d                                          ; $694a: $b2
    rst $28                                       ; $694b: $ef
    ld b, $6e                                     ; $694c: $06 $6e
    cp b                                          ; $694e: $b8
    db $eb                                        ; $694f: $eb
    ld d, l                                       ; $6950: $55
    dec c                                         ; $6951: $0d
    db $dd                                        ; $6952: $dd
    halt                                          ; $6953: $76
    add hl, hl                                    ; $6954: $29
    ld d, [hl]                                    ; $6955: $56
    ld h, c                                       ; $6956: $61
    add hl, hl                                    ; $6957: $29
    jr z, @-$6f                                   ; $6958: $28 $8f

    ld [hl], c                                    ; $695a: $71
    call $8521                                    ; $695b: $cd $21 $85
    sub c                                         ; $695e: $91
    call c, $0741                                 ; $695f: $dc $41 $07
    inc h                                         ; $6962: $24
    ld [hl], a                                    ; $6963: $77
    ret nc                                        ; $6964: $d0

    add c                                         ; $6965: $81
    ret                                           ; $6966: $c9


    dec e                                         ; $6967: $1d
    ld [hl], h                                    ; $6968: $74
    ld d, b                                       ; $6969: $50
    sbc [hl]                                      ; $696a: $9e
    rst $20                                       ; $696b: $e7
    dec l                                         ; $696c: $2d
    ld b, a                                       ; $696d: $47
    pop de                                        ; $696e: $d1
    sbc b                                         ; $696f: $98

Call_02c_6970:
    add a                                         ; $6970: $87
    and l                                         ; $6971: $a5
    ld c, [hl]                                    ; $6972: $4e
    ld [hl], d                                    ; $6973: $72
    reti                                          ; $6974: $d9


    ld e, d                                       ; $6975: $5a
    and l                                         ; $6976: $a5
    dec b                                         ; $6977: $05
    ld h, b                                       ; $6978: $60
    adc h                                         ; $6979: $8c
    db $fc                                        ; $697a: $fc
    ld d, l                                       ; $697b: $55
    call Call_000_36ad                            ; $697c: $cd $ad $36
    ld [hl], c                                    ; $697f: $71
    dec sp                                        ; $6980: $3b
    ld b, l                                       ; $6981: $45
    adc h                                         ; $6982: $8c
    cp [hl]                                       ; $6983: $be
    adc $5f                                       ; $6984: $ce $5f
    ld b, $ec                                     ; $6986: $06 $ec
    di                                            ; $6988: $f3
    ld h, l                                       ; $6989: $65
    rst $18                                       ; $698a: $df
    dec c                                         ; $698b: $0d
    call c, Call_02c_6970                         ; $698c: $dc $70 $69
    db $fc                                        ; $698f: $fc
    sbc b                                         ; $6990: $98
    or a                                          ; $6991: $b7
    ld b, a                                       ; $6992: $47
    sbc $e2                                       ; $6993: $de $e2
    sub l                                         ; $6995: $95
    ld e, e                                       ; $6996: $5b
    ld [hl], d                                    ; $6997: $72
    rst $10                                       ; $6998: $d7
    ld e, l                                       ; $6999: $5d
    ld b, c                                       ; $699a: $41
    dec hl                                        ; $699b: $2b
    ld [hl], a                                    ; $699c: $77
    or [hl]                                       ; $699d: $b6
    ret nz                                        ; $699e: $c0

    dec [hl]                                      ; $699f: $35
    xor [hl]                                      ; $69a0: $ae
    ld d, l                                       ; $69a1: $55
    or [hl]                                       ; $69a2: $b6
    add $20                                       ; $69a3: $c6 $20
    inc [hl]                                      ; $69a5: $34
    ld h, d                                       ; $69a6: $62
    rst $18                                       ; $69a7: $df
    add $b5                                       ; $69a8: $c6 $b5
    sub b                                         ; $69aa: $90
    scf                                           ; $69ab: $37
    ld a, [$b794]                                 ; $69ac: $fa $94 $b7
    push af                                       ; $69af: $f5
    or l                                          ; $69b0: $b5
    nop                                           ; $69b1: $00
    adc h                                         ; $69b2: $8c
    cp l                                          ; $69b3: $bd
    db $eb                                        ; $69b4: $eb
    add d                                         ; $69b5: $82
    and $96                                       ; $69b6: $e6 $96
    inc e                                         ; $69b8: $1c
    db $fc                                        ; $69b9: $fc
    or c                                          ; $69ba: $b1
    ld sp, $60f5                                  ; $69bb: $31 $f5 $60
    db $fc                                        ; $69be: $fc
    ld hl, $baad                                  ; $69bf: $21 $ad $ba
    ld e, e                                       ; $69c2: $5b
    db $d3                                        ; $69c3: $d3
    inc a                                         ; $69c4: $3c
    daa                                           ; $69c5: $27
    ld sp, hl                                     ; $69c6: $f9
    ldh [$ef], a                                  ; $69c7: $e0 $ef
    ld a, d                                       ; $69c9: $7a
    ldh [$8e], a                                  ; $69ca: $e0 $8e
    ld a, [c]                                     ; $69cc: $f2
    ld h, c                                       ; $69cd: $61
    push de                                       ; $69ce: $d5
    inc a                                         ; $69cf: $3c
    daa                                           ; $69d0: $27
    ei                                            ; $69d1: $fb
    sub h                                         ; $69d2: $94
    or a                                          ; $69d3: $b7
    rst $00                                       ; $69d4: $c7
    sub l                                         ; $69d5: $95
    ld a, l                                       ; $69d6: $7d
    dec l                                         ; $69d7: $2d
    ld l, l                                       ; $69d8: $6d
    ld b, b                                       ; $69d9: $40
    ld l, e                                       ; $69da: $6b
    inc l                                         ; $69db: $2c
    ld d, $5a                                     ; $69dc: $16 $5a
    db $e3                                        ; $69de: $e3
    xor a                                         ; $69df: $af
    jp nc, $8f97                                  ; $69e0: $d2 $97 $8f

    ld e, $d0                                     ; $69e3: $1e $d0
    ld b, d                                       ; $69e5: $42
    ld d, b                                       ; $69e6: $50
    ld l, d                                       ; $69e7: $6a
    inc de                                        ; $69e8: $13
    sub a                                         ; $69e9: $97
    ld [hl], l                                    ; $69ea: $75
    ld d, a                                       ; $69eb: $57
    ret nc                                        ; $69ec: $d0

    cp b                                          ; $69ed: $b8
    ld a, l                                       ; $69ee: $7d
    sub [hl]                                      ; $69ef: $96
    ld e, h                                       ; $69f0: $5c
    ret nc                                        ; $69f1: $d0

    add hl, sp                                    ; $69f2: $39
    ld l, a                                       ; $69f3: $6f
    ld bc, $b5f5                                  ; $69f4: $01 $f5 $b5
    bit 3, a                                      ; $69f7: $cb $5f
    adc l                                         ; $69f9: $8d
    ld h, c                                       ; $69fa: $61
    inc l                                         ; $69fb: $2c
    inc bc                                        ; $69fc: $03
    jp c, $8e31                                   ; $69fd: $da $31 $8e

    ld c, l                                       ; $6a00: $4d
    add sp, $1a                                   ; $6a01: $e8 $1a
    di                                            ; $6a03: $f3
    jr nz, @+$68                                  ; $6a04: $20 $66

    ret z                                         ; $6a06: $c8

    dec c                                         ; $6a07: $0d
    add hl, hl                                    ; $6a08: $29
    rst $18                                       ; $6a09: $df
    ld [$cc6b], a                                 ; $6a0a: $ea $6b $cc
    add e                                         ; $6a0d: $83
    ret c                                         ; $6a0e: $d8

    push af                                       ; $6a0f: $f5
    ld a, [hl]                                    ; $6a10: $7e
    ld [$d14b], sp                                ; $6a11: $08 $4b $d1
    ld hl, sp-$23                                 ; $6a14: $f8 $dd
    ld c, d                                       ; $6a16: $4a
    sub c                                         ; $6a17: $91
    xor a                                         ; $6a18: $af
    ld l, b                                       ; $6a19: $68
    call z, $cf43                                 ; $6a1a: $cc $43 $cf
    ld e, e                                       ; $6a1d: $5b
    add a                                         ; $6a1e: $87
    or e                                          ; $6a1f: $b3
    ld b, a                                       ; $6a20: $47

Jump_02c_6a21:
    ld a, [de]                                    ; $6a21: $1a
    di                                            ; $6a22: $f3
    or b                                          ; $6a23: $b0
    call nc, $b7c9                                ; $6a24: $d4 $c9 $b7
    ld c, [hl]                                    ; $6a27: $4e
    or b                                          ; $6a28: $b0
    ld a, a                                       ; $6a29: $7f
    scf                                           ; $6a2a: $37
    ld [hl], b                                    ; $6a2b: $70
    jp Jump_02c_6358                              ; $6a2c: $c3 $58 $63


    ld sp, $c3de                                  ; $6a2f: $31 $de $c3
    ret z                                         ; $6a32: $c8

    xor l                                         ; $6a33: $ad
    db $db                                        ; $6a34: $db
    cpl                                           ; $6a35: $2f
    rra                                           ; $6a36: $1f
    sub a                                         ; $6a37: $97
    dec sp                                        ; $6a38: $3b
    sub $75                                       ; $6a39: $d6 $75
    push hl                                       ; $6a3b: $e5
    dec l                                         ; $6a3c: $2d
    push af                                       ; $6a3d: $f5
    dec [hl]                                      ; $6a3e: $35
    cp d                                          ; $6a3f: $ba
    dec de                                        ; $6a40: $1b
    xor $62                                       ; $6a41: $ee $62
    sra a                                         ; $6a43: $cb $2f
    or $6d                                        ; $6a45: $f6 $6d
    adc l                                         ; $6a47: $8d

jr_02c_6a48:
    add hl, sp                                    ; $6a48: $39
    dec a                                         ; $6a49: $3d

jr_02c_6a4a:
    and b                                         ; $6a4a: $a0
    jp c, $16c4                                   ; $6a4b: $da $c4 $16

    dec e                                         ; $6a4e: $1d
    inc c                                         ; $6a4f: $0c
    ld h, e                                       ; $6a50: $63
    reti                                          ; $6a51: $d9


    jp c, $02d7                                   ; $6a52: $da $d7 $02

    jr nc, @-$28                                  ; $6a55: $30 $d6

    ld e, b                                       ; $6a57: $58
    call z, $b94a                                 ; $6a58: $cc $4a $b9
    xor l                                         ; $6a5b: $ad
    ld sp, $07a7                                  ; $6a5c: $31 $a7 $07
    sub h                                         ; $6a5f: $94
    ld l, a                                       ; $6a60: $6f
    push af                                       ; $6a61: $f5
    rst $28                                       ; $6a62: $ef
    scf                                           ; $6a63: $37
    ld [hl-], a                                   ; $6a64: $32
    adc h                                         ; $6a65: $8c
    ld h, l                                       ; $6a66: $65
    ld b, e                                       ; $6a67: $43
    sub b                                         ; $6a68: $90
    ld d, [hl]                                    ; $6a69: $56
    ld [$d724], a                                 ; $6a6a: $ea $24 $d7
    ld a, b                                       ; $6a6d: $78
    db $dd                                        ; $6a6e: $dd
    jr jr_02c_6a48                                ; $6a6f: $18 $d7

    ret z                                         ; $6a71: $c8

    halt                                          ; $6a72: $76
    or c                                          ; $6a73: $b1
    xor l                                         ; $6a74: $ad
    ld c, d                                       ; $6a75: $4a
    cp c                                          ; $6a76: $b9
    sub [hl]                                      ; $6a77: $96
    ld a, [hl]                                    ; $6a78: $7e
    ld c, [hl]                                    ; $6a79: $4e
    jp z, $bcf3                                   ; $6a7a: $ca $f3 $bc

    dec b                                         ; $6a7d: $05
    sbc l                                         ; $6a7e: $9d
    ld e, $50                                     ; $6a7f: $1e $50
    sbc [hl]                                      ; $6a81: $9e
    rst $20                                       ; $6a82: $e7
    and e                                         ; $6a83: $a3
    rlca                                          ; $6a84: $07
    or h                                          ; $6a85: $b4
    ld e, $2d                                     ; $6a86: $1e $2d
    cp c                                          ; $6a88: $b9
    db $eb                                        ; $6a89: $eb
    xor [hl]                                      ; $6a8a: $ae
    and b                                         ; $6a8b: $a0
    push de                                       ; $6a8c: $d5
    ld e, c                                       ; $6a8d: $59
    push af                                       ; $6a8e: $f5
    or b                                          ; $6a8f: $b0
    or $d0                                        ; $6a90: $f6 $d0
    ld d, $47                                     ; $6a92: $16 $47
    or c                                          ; $6a94: $b1
    rst $30                                       ; $6a95: $f7
    nop                                           ; $6a96: $00
    di                                            ; $6a97: $f3
    db $ed                                        ; $6a98: $ed
    and h                                         ; $6a99: $a4
    cp a                                          ; $6a9a: $bf
    add $f5                                       ; $6a9b: $c6 $f5
    cp c                                          ; $6a9d: $b9
    db $db                                        ; $6a9e: $db
    inc l                                         ; $6a9f: $2c
    ld b, d                                       ; $6aa0: $42
    rst $20                                       ; $6aa1: $e7
    adc a                                         ; $6aa2: $8f
    ld l, e                                       ; $6aa3: $6b
    dec e                                         ; $6aa4: $1d
    sbc [hl]                                      ; $6aa5: $9e

jr_02c_6aa6:
    ld a, a                                       ; $6aa6: $7f
    inc l                                         ; $6aa7: $2c
    ld b, l                                       ; $6aa8: $45
    sub c                                         ; $6aa9: $91
    rst $20                                       ; $6aaa: $e7
    ld sp, hl                                     ; $6aab: $f9
    xor [hl]                                      ; $6aac: $ae
    cp e                                          ; $6aad: $bb
    add d                                         ; $6aae: $82
    ld d, [hl]                                    ; $6aaf: $56
    xor $e6                                       ; $6ab0: $ee $e6
    inc l                                         ; $6ab2: $2c
    ld a, l                                       ; $6ab3: $7d
    ld a, [de]                                    ; $6ab4: $1a
    ld d, a                                       ; $6ab5: $57
    inc l                                         ; $6ab6: $2c
    sbc [hl]                                      ; $6ab7: $9e
    ld e, a                                       ; $6ab8: $5f
    jr z, jr_02c_6a4a                             ; $6ab9: $28 $8f

    inc a                                         ; $6abb: $3c
    rst $08                                       ; $6abc: $cf
    rst $10                                       ; $6abd: $d7
    inc a                                         ; $6abe: $3c
    ldh a, [$d9]                                  ; $6abf: $f0 $d9
    push bc                                       ; $6ac1: $c5
    ld d, $c9                                     ; $6ac2: $16 $c9
    ld b, a                                       ; $6ac4: $47
    adc d                                         ; $6ac5: $8a
    ld e, c                                       ; $6ac6: $59
    ld a, [hl-]                                   ; $6ac7: $3a
    ld l, l                                       ; $6ac8: $6d
    add sp, -$76                                  ; $6ac9: $e8 $8a
    pop af                                        ; $6acb: $f1
    ei                                            ; $6acc: $fb
    db $ed                                        ; $6acd: $ed
    ld a, d                                       ; $6ace: $7a
    ld b, l                                       ; $6acf: $45
    ld a, c                                       ; $6ad0: $79
    dec bc                                        ; $6ad1: $0b
    add a                                         ; $6ad2: $87
    sub a                                         ; $6ad3: $97
    ld a, [c]                                     ; $6ad4: $f2
    ld a, [hl]                                    ; $6ad5: $7e
    call nc, $0ffb                                ; $6ad6: $d4 $fb $0f
    ld h, d                                       ; $6ad9: $62
    ld [hl], l                                    ; $6ada: $75
    ld d, [hl]                                    ; $6adb: $56
    xor $06                                       ; $6adc: $ee $06
    db $e4                                        ; $6ade: $e4
    jp c, $b6c5                                   ; $6adf: $da $c5 $b6

    ld a, [hl+]                                   ; $6ae2: $2a
    push hl                                       ; $6ae3: $e5
    ld e, d                                       ; $6ae4: $5a
    ld a, [$2939]                                 ; $6ae5: $fa $39 $29
    cp c                                          ; $6ae8: $b9
    ld [$40fd], a                                 ; $6ae9: $ea $fd $40
    add c                                         ; $6aec: $81
    rst $10                                       ; $6aed: $d7
    ld e, $da                                     ; $6aee: $1e $da
    ld [bc], a                                    ; $6af0: $02
    daa                                           ; $6af1: $27
    ld bc, $2726                                  ; $6af2: $01 $26 $27
    ld a, [de]                                    ; $6af5: $1a
    sub [hl]                                      ; $6af6: $96
    and l                                         ; $6af7: $a5
    dec c                                         ; $6af8: $0d
    ld l, b                                       ; $6af9: $68
    and c                                         ; $6afa: $a1
    pop af                                        ; $6afb: $f1
    ld e, e                                       ; $6afc: $5b
    db $d3                                        ; $6afd: $d3
    push af                                       ; $6afe: $f5
    push bc                                       ; $6aff: $c5
    sub [hl]                                      ; $6b00: $96
    rst $20                                       ; $6b01: $e7
    db $db                                        ; $6b02: $db
    jp hl                                         ; $6b03: $e9


    rrca                                          ; $6b04: $0f
    ld c, e                                       ; $6b05: $4b
    sbc l                                         ; $6b06: $9d
    pop de                                        ; $6b07: $d1
    ei                                            ; $6b08: $fb
    inc sp                                        ; $6b09: $33
    ld h, a                                       ; $6b0a: $67
    jp hl                                         ; $6b0b: $e9


    ld d, e                                       ; $6b0c: $53
    ld [hl], d                                    ; $6b0d: $72
    rst $00                                       ; $6b0e: $c7
    sbc d                                         ; $6b0f: $9a
    ld a, e                                       ; $6b10: $7b
    ld c, l                                       ; $6b11: $4d
    ld [hl], d                                    ; $6b12: $72
    and d                                         ; $6b13: $a2
    dec d                                         ; $6b14: $15
    ld e, e                                       ; $6b15: $5b
    pop bc                                        ; $6b16: $c1
    jr nz, jr_02c_6aa6                            ; $6b17: $20 $8d

    ld l, e                                       ; $6b19: $6b
    sub a                                         ; $6b1a: $97
    sub [hl]                                      ; $6b1b: $96
    add c                                         ; $6b1c: $81
    dec sp                                        ; $6b1d: $3b
    sub [hl]                                      ; $6b1e: $96
    sub c                                         ; $6b1f: $91
    sub [hl]                                      ; $6b20: $96
    ld [hl], $a0                                  ; $6b21: $36 $a0
    ld a, h                                       ; $6b23: $7c
    dec sp                                        ; $6b24: $3b
    db $fc                                        ; $6b25: $fc
    ld h, d                                       ; $6b26: $62
    rst $10                                       ; $6b27: $d7
    dec h                                         ; $6b28: $25
    adc l                                         ; $6b29: $8d
    ld e, $d0                                     ; $6b2a: $1e $d0
    ld l, $2d                                     ; $6b2c: $2e $2d
    inc bc                                        ; $6b2e: $03
    ld [hl], a                                    ; $6b2f: $77
    inc l                                         ; $6b30: $2c
    xor e                                         ; $6b31: $ab
    sbc c                                         ; $6b32: $99
    dec l                                         ; $6b33: $2d
    ret nz                                        ; $6b34: $c0

    ld d, a                                       ; $6b35: $57
    ld l, h                                       ; $6b36: $6c
    dec b                                         ; $6b37: $05
    add e                                         ; $6b38: $83
    sub h                                         ; $6b39: $94
    xor a                                         ; $6b3a: $af
    cp [hl]                                       ; $6b3b: $be
    add $18                                       ; $6b3c: $c6 $18
    add $2e                                       ; $6b3e: $c6 $2e
    or [hl]                                       ; $6b40: $b6
    db $fc                                        ; $6b41: $fc
    ld h, d                                       ; $6b42: $62
    bit 2, a                                      ; $6b43: $cb $57
    or h                                          ; $6b45: $b4
    ld c, [hl]                                    ; $6b46: $4e
    ld d, b                                       ; $6b47: $50
    rst $28                                       ; $6b48: $ef
    ld d, h                                       ; $6b49: $54
    jp Jump_02c_77a8                              ; $6b4a: $c3 $a8 $77


    ld [hl-], a                                   ; $6b4d: $32
    inc a                                         ; $6b4e: $3c
    sbc h                                         ; $6b4f: $9c
    ld l, b                                       ; $6b50: $68
    reti                                          ; $6b51: $d9


    ld a, [de]                                    ; $6b52: $1a
    ld l, c                                       ; $6b53: $69
    ld l, $f2                                     ; $6b54: $2e $f2
    rlca                                          ; $6b56: $07
    adc h                                         ; $6b57: $8c
    add $c5                                       ; $6b58: $c6 $c5
    ret c                                         ; $6b5a: $d8

    and a                                         ; $6b5b: $a7
    dec e                                         ; $6b5c: $1d
    db $e3                                        ; $6b5d: $e3
    ld hl, sp+$59                                 ; $6b5e: $f8 $59
    adc a                                         ; $6b60: $8f
    jr z, @-$0c                                   ; $6b61: $28 $f2

    ld d, $59                                     ; $6b63: $16 $59
    ld [hl], a                                    ; $6b65: $77
    dec b                                         ; $6b66: $05
    dec l                                         ; $6b67: $2d
    inc bc                                        ; $6b68: $03
    rrca                                          ; $6b69: $0f
    sub e                                         ; $6b6a: $93
    dec hl                                        ; $6b6b: $2b
    ld e, d                                       ; $6b6c: $5a
    daa                                           ; $6b6d: $27
    xor b                                         ; $6b6e: $a8
    ld [hl], a                                    ; $6b6f: $77
    xor d                                         ; $6b70: $aa
    ld h, c                                       ; $6b71: $61
    call nc, Call_000_193b                        ; $6b72: $d4 $3b $19
    ld e, $d6                                     ; $6b75: $1e $d6
    ld e, $da                                     ; $6b77: $1e $da
    ld [bc], a                                    ; $6b79: $02
    dec e                                         ; $6b7a: $1d
    dec b                                         ; $6b7b: $05
    sbc l                                         ; $6b7c: $9d
    rst $10                                       ; $6b7d: $d7
    ld e, b                                       ; $6b7e: $58
    adc h                                         ; $6b7f: $8c
    or h                                          ; $6b80: $b4
    and d                                         ; $6b81: $a2
    ld [hl], c                                    ; $6b82: $71
    ld [hl], h                                    ; $6b83: $74
    push hl                                       ; $6b84: $e5
    db $db                                        ; $6b85: $db
    ld l, c                                       ; $6b86: $69
    ld e, a                                       ; $6b87: $5f
    or e                                          ; $6b88: $b3
    ld [hl], h                                    ; $6b89: $74
    jp c, $b5d0                                   ; $6b8a: $da $d0 $b5

    inc c                                         ; $6b8d: $0c
    ldh [$ae], a                                  ; $6b8e: $e0 $ae
    rst $30                                       ; $6b90: $f7
    cpl                                           ; $6b91: $2f
    ld sp, hl                                     ; $6b92: $f9
    rst $10                                       ; $6b93: $d7
    ld a, [hl-]                                   ; $6b94: $3a
    ld a, $e0                                     ; $6b95: $3e $e0
    push bc                                       ; $6b97: $c5
    sbc h                                         ; $6b98: $9c
    rst $20                                       ; $6b99: $e7
    db $db                                        ; $6b9a: $db
    ld c, c                                       ; $6b9b: $49
    ld a, a                                       ; $6b9c: $7f
    and c                                         ; $6b9d: $a1
    cp c                                          ; $6b9e: $b9
    ret z                                         ; $6b9f: $c8

    rra                                           ; $6ba0: $1f
    jr nc, jr_02c_6bbd                            ; $6ba1: $30 $1a

    rla                                           ; $6ba3: $17
    ei                                            ; $6ba4: $fb
    ld a, c                                       ; $6ba5: $79
    inc h                                         ; $6ba6: $24
    ld [hl], a                                    ; $6ba7: $77
    xor h                                         ; $6ba8: $ac
    cp c                                          ; $6ba9: $b9
    rst $10                                       ; $6baa: $d7
    db $e4                                        ; $6bab: $e4
    dec l                                         ; $6bac: $2d
    dec e                                         ; $6bad: $1d
    db $e4                                        ; $6bae: $e4
    rla                                           ; $6baf: $17
    xor [hl]                                      ; $6bb0: $ae
    ld a, c                                       ; $6bb1: $79
    ldh [$2b], a                                  ; $6bb2: $e0 $2b
    ld [hl], $06                                  ; $6bb4: $36 $06
    inc bc                                        ; $6bb6: $03
    ld c, c                                       ; $6bb7: $49
    ld a, c                                       ; $6bb8: $79
    dec bc                                        ; $6bb9: $0b
    and a                                         ; $6bba: $a7
    adc b                                         ; $6bbb: $88
    pop de                                        ; $6bbc: $d1

jr_02c_6bbd:
    rst $10                                       ; $6bbd: $d7
    ld sp, hl                                     ; $6bbe: $f9
    ei                                            ; $6bbf: $fb
    rrca                                          ; $6bc0: $0f
    ld h, d                                       ; $6bc1: $62
    call z, Call_02c_5f43                         ; $6bc2: $cc $43 $5f
    ld a, [bc]                                    ; $6bc5: $0a
    push af                                       ; $6bc6: $f5
    xor c                                         ; $6bc7: $a9
    dec sp                                        ; $6bc8: $3b
    jp z, Jump_000_275b                           ; $6bc9: $ca $5b $27

    ret c                                         ; $6bcc: $d8

    sbc d                                         ; $6bcd: $9a
    rst $20                                       ; $6bce: $e7
    and h                                         ; $6bcf: $a4
    add hl, hl                                    ; $6bd0: $29
    ld l, b                                       ; $6bd1: $68
    adc l                                         ; $6bd2: $8d
    ld sp, hl                                     ; $6bd3: $f9
    ldh a, [$c2]                                  ; $6bd4: $f0 $c2
    db $e4                                        ; $6bd6: $e4
    xor d                                         ; $6bd7: $aa

jr_02c_6bd8:
    rst $30                                       ; $6bd8: $f7
    inc bc                                        ; $6bd9: $03
    dec b                                         ; $6bda: $05
    sbc [hl]                                      ; $6bdb: $9e
    or a                                          ; $6bdc: $b7
    daa                                           ; $6bdd: $27
    ld a, $88                                     ; $6bde: $3e $88
    ld e, c                                       ; $6be0: $59
    add hl, hl                                    ; $6be1: $29
    rst $28                                       ; $6be2: $ef
    rst $00                                       ; $6be3: $c7
    jp nc, Jump_02c_4af2                          ; $6be4: $d2 $f2 $4a

    cp [hl]                                       ; $6be7: $be
    and $81                                       ; $6be8: $e6 $81
    adc a                                         ; $6bea: $8f
    rst $18                                       ; $6beb: $df
    or d                                          ; $6bec: $b2

jr_02c_6bed:
    dec b                                         ; $6bed: $05
    ld e, a                                       ; $6bee: $5f
    sbc [hl]                                      ; $6bef: $9e
    ld e, h                                       ; $6bf0: $5c
    push af                                       ; $6bf1: $f5
    ld a, [hl]                                    ; $6bf2: $7e
    and b                                         ; $6bf3: $a0
    ret nz                                        ; $6bf4: $c0

    di                                            ; $6bf5: $f3
    db $ed                                        ; $6bf6: $ed
    db $f4                                        ; $6bf7: $f4
    rlca                                          ; $6bf8: $07

Jump_02c_6bf9:
    or c                                          ; $6bf9: $b1
    xor a                                         ; $6bfa: $af
    sub c                                         ; $6bfb: $91
    cp [hl]                                       ; $6bfc: $be
    adc $df                                       ; $6bfd: $ce $df
    dec h                                         ; $6bff: $25

jr_02c_6c00:
    daa                                           ; $6c00: $27
    jp Jump_02c_4aaf                              ; $6c01: $c3 $af $4a


    sbc a                                         ; $6c04: $9f
    sub $58                                       ; $6c05: $d6 $58
    xor h                                         ; $6c07: $ac
    adc $fe                                       ; $6c08: $ce $fe
    add e                                         ; $6c0a: $83
    jr jr_02c_6c00                                ; $6c0b: $18 $f3

    ret nc                                        ; $6c0d: $d0

    ld d, a                                       ; $6c0e: $57
    reti                                          ; $6c0f: $d9


    ld h, a                                       ; $6c10: $67
    ret                                           ; $6c11: $c9


    di                                            ; $6c12: $f3
    ld d, $1d                                     ; $6c13: $16 $1d
    db $e4                                        ; $6c15: $e4
    rla                                           ; $6c16: $17
    adc [hl]                                      ; $6c17: $8e
    ld l, e                                       ; $6c18: $6b
    ld l, c                                       ; $6c19: $69
    ld b, e                                       ; $6c1a: $43
    rst $10                                       ; $6c1b: $d7
    xor [hl]                                      ; $6c1c: $ae
    rst $30                                       ; $6c1d: $f7
    db $d3                                        ; $6c1e: $d3
    ld l, b                                       ; $6c1f: $68
    rst $38                                       ; $6c20: $ff
    jp nc, $ecea                                  ; $6c21: $d2 $ea $ec

    jr jr_02c_6bed                                ; $6c24: $18 $c7

    rst $08                                       ; $6c26: $cf
    ld a, d                                       ; $6c27: $7a
    ld b, h                                       ; $6c28: $44
    sub c                                         ; $6c29: $91
    or a                                          ; $6c2a: $b7
    ld b, a                                       ; $6c2b: $47
    sbc $ed                                       ; $6c2c: $de $ed
    cp d                                          ; $6c2e: $ba
    sbc [hl]                                      ; $6c2f: $9e
    di                                            ; $6c30: $f3
    cp h                                          ; $6c31: $bc
    dec b                                         ; $6c32: $05
    ld b, a                                       ; $6c33: $47
    cp h                                          ; $6c34: $bc
    sbc a                                         ; $6c35: $9f
    db $fd                                        ; $6c36: $fd
    ret nz                                        ; $6c37: $c0

    di                                            ; $6c38: $f3
    ld d, $1d                                     ; $6c39: $16 $1d
    db $e4                                        ; $6c3b: $e4
    rla                                           ; $6c3c: $17
    and $2d                                       ; $6c3d: $e6 $2d
    daa                                           ; $6c3f: $27
    jr z, jr_02c_6bd8                             ; $6c40: $28 $96

    ld a, d                                       ; $6c42: $7a
    ld b, b                                       ; $6c43: $40
    sbc b                                         ; $6c44: $98
    ld bc, $dcc5                                  ; $6c45: $01 $c5 $dc
    ld l, $76                                     ; $6c48: $2e $76
    ld e, l                                       ; $6c4a: $5d
    jp nc, $5da7                                  ; $6c4b: $d2 $a7 $5d

    ld e, d                                       ; $6c4e: $5a
    ld b, $ee                                     ; $6c4f: $06 $ee
    ld a, [hl+]                                   ; $6c51: $2a
    ld b, l                                       ; $6c52: $45
    or c                                          ; $6c53: $b1
    rst $30                                       ; $6c54: $f7
    ld l, c                                       ; $6c55: $69
    adc h                                         ; $6c56: $8c

jr_02c_6c57:
    ld a, $87                                     ; $6c57: $3e $87
    db $e4                                        ; $6c59: $e4
    ld [$71ac], a                                 ; $6c5a: $ea $ac $71
    db $ec                                        ; $6c5d: $ec
    inc a                                         ; $6c5e: $3c
    cp a                                          ; $6c5f: $bf
    ld [hl], c                                    ; $6c60: $71
    ld b, b                                       ; $6c61: $40
    ld c, d                                       ; $6c62: $4a
    ld l, $85                                     ; $6c63: $2e $85
    ld a, [$1e8b]                                 ; $6c65: $fa $8b $1e
    inc a                                         ; $6c68: $3c
    ld l, a                                       ; $6c69: $6f
    ld bc, $7759                                  ; $6c6a: $01 $59 $77
    dec b                                         ; $6c6d: $05
    xor l                                         ; $6c6e: $ad
    nop                                           ; $6c6f: $00
    sub $26                                       ; $6c70: $d6 $26
    xor [hl]                                      ; $6c72: $ae
    cp [hl]                                       ; $6c73: $be
    add $08                                       ; $6c74: $c6 $08
    ld a, [hl-]                                   ; $6c76: $3a
    adc a                                         ; $6c77: $8f
    and e                                         ; $6c78: $a3
    dec hl                                        ; $6c79: $2b
    cp c                                          ; $6c7a: $b9
    db $eb                                        ; $6c7b: $eb
    xor [hl]                                      ; $6c7c: $ae
    and b                                         ; $6c7d: $a0
    pop de                                        ; $6c7e: $d1
    jp $c4da                                      ; $6c7f: $c3 $da $c4


    dec e                                         ; $6c82: $1d
    push af                                       ; $6c83: $f5
    db $d3                                        ; $6c84: $d3
    ld hl, sp-$6d                                 ; $6c85: $f8 $93
    set 2, [hl]                                   ; $6c87: $cb $d6
    jr jr_02c_6ccc                                ; $6c89: $18 $41

    rst $20                                       ; $6c8b: $e7
    ld [hl], c                                    ; $6c8c: $71
    ld [hl], h                                    ; $6c8d: $74
    dec h                                         ; $6c8e: $25
    ld b, a                                       ; $6c8f: $47
    jr nc, jr_02c_6c57                            ; $6c90: $30 $c5

    adc [hl]                                      ; $6c92: $8e
    dec [hl]                                      ; $6c93: $35
    rst $30                                       ; $6c94: $f7
    sbc d                                         ; $6c95: $9a
    ld [hl], l                                    ; $6c96: $75
    ld a, h                                       ; $6c97: $7c
    ld b, h                                       ; $6c98: $44
    ld a, [c]                                     ; $6c99: $f2
    jp c, $16c4                                   ; $6c9a: $da $c4 $16

    and a                                         ; $6c9d: $a7
    ld a, $8c                                     ; $6c9e: $3e $8c
    dec [hl]                                      ; $6ca0: $35
    ld c, $5c                                     ; $6ca1: $0e $5c
    sbc a                                         ; $6ca3: $9f
    add $ed                                       ; $6ca4: $c6 $ed
    rst $00                                       ; $6ca6: $c7
    adc d                                         ; $6ca7: $8a
    ld h, d                                       ; $6ca8: $62
    ld c, $2a                                     ; $6ca9: $0e $2a
    ld b, l                                       ; $6cab: $45
    sub c                                         ; $6cac: $91
    inc e                                         ; $6cad: $1c
    sub [hl]                                      ; $6cae: $96
    push de                                       ; $6caf: $d5
    call z, Call_000_35c6                         ; $6cb0: $cc $c6 $35
    sub [hl]                                      ; $6cb3: $96
    cp a                                          ; $6cb4: $bf
    sbc b                                         ; $6cb5: $98
    dec de                                        ; $6cb6: $1b
    ld b, l                                       ; $6cb7: $45
    sbc $02                                       ; $6cb8: $de $02
    daa                                           ; $6cba: $27
    ld l, d                                       ; $6cbb: $6a
    and h                                         ; $6cbc: $a4
    add l                                         ; $6cbd: $85
    ld bc, $35a3                                  ; $6cbe: $01 $a3 $35
    ld d, $e3                                     ; $6cc1: $16 $e3
    ld h, d                                       ; $6cc3: $62
    db $ec                                        ; $6cc4: $ec
    db $d3                                        ; $6cc5: $d3
    ld l, $b6                                     ; $6cc6: $2e $b6
    ld h, l                                       ; $6cc8: $65
    ld b, b                                       ; $6cc9: $40
    cp e                                          ; $6cca: $bb
    db $fc                                        ; $6ccb: $fc

jr_02c_6ccc:
    ld h, [hl]                                    ; $6ccc: $66
    inc b                                         ; $6ccd: $04
    xor [hl]                                      ; $6cce: $ae
    ld h, l                                       ; $6ccf: $65
    ld b, b                                       ; $6cd0: $40
    inc hl                                        ; $6cd1: $23
    sbc b                                         ; $6cd2: $98
    db $eb                                        ; $6cd3: $eb
    ld e, a                                       ; $6cd4: $5f
    rst $28                                       ; $6cd5: $ef
    sub e                                         ; $6cd6: $93
    dec hl                                        ; $6cd7: $2b
    ld a, [c]                                     ; $6cd8: $f2
    ld [hl], l                                    ; $6cd9: $75
    add d                                         ; $6cda: $82
    ld a, l                                       ; $6cdb: $7d
    xor l                                         ; $6cdc: $ad
    ld a, c                                       ; $6cdd: $79
    ldh [$6e], a                                  ; $6cde: $e0 $6e
    or c                                          ; $6ce0: $b1
    add $62                                       ; $6ce1: $c6 $62
    adc h                                         ; $6ce3: $8c
    pop hl                                        ; $6ce4: $e1
    cp a                                          ; $6ce5: $bf
    ld e, h                                       ; $6ce6: $5c
    dec hl                                        ; $6ce7: $2b
    adc d                                         ; $6ce8: $8a
    ld e, l                                       ; $6ce9: $5d
    ld a, [hl]                                    ; $6cea: $7e
    inc sp                                        ; $6ceb: $33
    ld [bc], a                                    ; $6cec: $02
    ld d, a                                       ; $6ced: $57
    inc l                                         ; $6cee: $2c
    db $fd                                        ; $6cef: $fd
    sbc h                                         ; $6cf0: $9c
    inc d                                         ; $6cf1: $14
    dec bc                                        ; $6cf2: $0b
    inc e                                         ; $6cf3: $1c
    pop bc                                        ; $6cf4: $c1
    cp [hl]                                       ; $6cf5: $be
    sub [hl]                                      ; $6cf6: $96
    ld [hl-], a                                   ; $6cf7: $32
    adc d                                         ; $6cf8: $8a
    dec [hl]                                      ; $6cf9: $35
    ld d, $e3                                     ; $6cfa: $16 $e3
    ld [hl], a                                    ; $6cfc: $77
    ld c, e                                       ; $6cfd: $4b
    dec a                                         ; $6cfe: $3d
    rst $20                                       ; $6cff: $e7
    dec hl                                        ; $6d00: $2b
    adc d                                         ; $6d01: $8a
    ld e, l                                       ; $6d02: $5d
    ld a, [hl]                                    ; $6d03: $7e
    inc sp                                        ; $6d04: $33
    ld [bc], a                                    ; $6d05: $02
    ld d, a                                       ; $6d06: $57
    xor h                                         ; $6d07: $ac
    add hl, hl                                    ; $6d08: $29
    db $10                                        ; $6d09: $10
    ld c, e                                       ; $6d0a: $4b
    dec de                                        ; $6d0b: $1b
    and [hl]                                      ; $6d0c: $a6
    adc d                                         ; $6d0d: $8a
    ld [hl+], a                                   ; $6d0e: $22
    ld l, a                                       ; $6d0f: $6f
    ld bc, $95c7                                  ; $6d10: $01 $c7 $95
    push de                                       ; $6d13: $d5
    call z, Call_000_14d6                         ; $6d14: $cc $d6 $14
    pop hl                                        ; $6d17: $e1
    rra                                           ; $6d18: $1f
    rst $10                                       ; $6d19: $d7
    ld d, d                                       ; $6d1a: $52
    rst $28                                       ; $6d1b: $ef
    ld a, a                                       ; $6d1c: $7f
    push bc                                       ; $6d1d: $c5
    inc l                                         ; $6d1e: $2c
    sbc l                                         ; $6d1f: $9d
    ld [hl], $74                                  ; $6d20: $36 $74
    push bc                                       ; $6d22: $c5
    ld [bc], a                                    ; $6d23: $02
    ld a, h                                       ; $6d24: $7c
    ld b, l                                       ; $6d25: $45
    bit 4, d                                      ; $6d26: $cb $62
    xor e                                         ; $6d28: $ab
    jp nz, $ae3f                                  ; $6d29: $c2 $3f $ae

    ld [hl], l                                    ; $6d2c: $75
    ld [hl], d                                    ; $6d2d: $72
    ld h, e                                       ; $6d2e: $63
    db $e4                                        ; $6d2f: $e4
    and c                                         ; $6d30: $a1
    db $e4                                        ; $6d31: $e4
    ld b, h                                       ; $6d32: $44
    ld l, e                                       ; $6d33: $6b
    ld e, $f8                                     ; $6d34: $1e $f8
    ld a, [de]                                    ; $6d36: $1a
    adc e                                         ; $6d37: $8b
    ld e, l                                       ; $6d38: $5d
    ld l, h                                       ; $6d39: $6c
    ld a, c                                       ; $6d3a: $79
    sbc $02                                       ; $6d3b: $de $02
    dec e                                         ; $6d3d: $1d
    ld d, b                                       ; $6d3e: $50
    ret nc                                        ; $6d3f: $d0

    ld a, c                                       ; $6d40: $79
    adc h                                         ; $6d41: $8c
    ld bc, $318d                                  ; $6d42: $01 $8d $31
    db $fc                                        ; $6d45: $fc
    sub a                                         ; $6d46: $97
    ld l, e                                       ; $6d47: $6b
    ld b, l                                       ; $6d48: $45
    or c                                          ; $6d49: $b1
    ld [$20fd], a                                 ; $6d4a: $ea $fd $20
    ld d, a                                       ; $6d4d: $57
    inc l                                         ; $6d4e: $2c
    ld l, l                                       ; $6d4f: $6d
    sbc b                                         ; $6d50: $98
    ld a, [hl+]                                   ; $6d51: $2a
    adc d                                         ; $6d52: $8a
    ld d, l                                       ; $6d53: $55
    add [hl]                                      ; $6d54: $86
    sbc a                                         ; $6d55: $9f
    db $f4                                        ; $6d56: $f4
    db $ed                                        ; $6d57: $ed
    ld d, e                                       ; $6d58: $53
    ld [hl], d                                    ; $6d59: $72
    call $1f03                                    ; $6d5a: $cd $03 $1f
    ld h, e                                       ; $6d5d: $63
    ld hl, sp+$2f                                 ; $6d5e: $f8 $2f
    rst $10                                       ; $6d60: $d7
    db $f4                                        ; $6d61: $f4
    inc bc                                        ; $6d62: $03
    sub b                                         ; $6d63: $90
    or h                                          ; $6d64: $b4
    ld c, e                                       ; $6d65: $4b
    ret nc                                        ; $6d66: $d0

    ld a, c                                       ; $6d67: $79
    add hl, de                                    ; $6d68: $19
    ret nz                                        ; $6d69: $c0

    push bc                                       ; $6d6a: $c5
    ei                                            ; $6d6b: $fb
    or h                                          ; $6d6c: $b4
    db $f4                                        ; $6d6d: $f4
    ld [hl], e                                    ; $6d6e: $73
    adc d                                         ; $6d6f: $8a
    cp h                                          ; $6d70: $bc
    dec b                                         ; $6d71: $05
    and a                                         ; $6d72: $a7
    ld [c], a                                     ; $6d73: $e2
    ld [$da46], sp                                ; $6d74: $08 $46 $da
    push af                                       ; $6d77: $f5
    ld e, b                                       ; $6d78: $58
    ld e, a                                       ; $6d79: $5f
    ld sp, $7bf8                                  ; $6d7a: $31 $f8 $7b
    ld c, [hl]                                    ; $6d7d: $4e
    jp nz, Jump_000_07b2                          ; $6d7e: $c2 $b2 $07

    dec bc                                        ; $6d81: $0b
    inc e                                         ; $6d82: $1c
    db $fc                                        ; $6d83: $fc
    db $dd                                        ; $6d84: $dd
    cp $f3                                        ; $6d85: $fe $f3
    ld c, d                                       ; $6d87: $4a
    ld [hl], e                                    ; $6d88: $73
    and e                                         ; $6d89: $a3
    pop de                                        ; $6d8a: $d1
    db $dd                                        ; $6d8b: $dd
    adc b                                         ; $6d8c: $88
    inc l                                         ; $6d8d: $2c
    inc bc                                        ; $6d8e: $03
    ld c, d                                       ; $6d8f: $4a
    adc [hl]                                      ; $6d90: $8e
    or c                                          ; $6d91: $b1
    ld sp, $7d0f                                  ; $6d92: $31 $0f $7d
    ld b, l                                       ; $6d95: $45
    ld h, e                                       ; $6d96: $63
    pop bc                                        ; $6d97: $c1
    call $4231                                    ; $6d98: $cd $31 $42
    ldh [$79], a                                  ; $6d9b: $e0 $79
    dec bc                                        ; $6d9d: $0b
    and a                                         ; $6d9e: $a7
    ld a, l                                       ; $6d9f: $7d
    dec l                                         ; $6da0: $2d
    push af                                       ; $6da1: $f5
    cp $d7                                        ; $6da2: $fe $d7
    cp $03                                        ; $6da4: $fe $03
    ld b, [hl]                                    ; $6da6: $46
    and l                                         ; $6da7: $a5
    ld l, b                                       ; $6da8: $68
    rlca                                          ; $6da9: $07
    adc a                                         ; $6daa: $8f
    ld e, $c4                                     ; $6dab: $1e $c4
    adc d                                         ; $6dad: $8a
    ld h, d                                       ; $6dae: $62
    xor c                                         ; $6daf: $a9
    rlca                                          ; $6db0: $07
    add h                                         ; $6db1: $84
    add hl, de                                    ; $6db2: $19
    ld b, b                                       ; $6db3: $40
    ld a, c                                       ; $6db4: $79
    inc l                                         ; $6db5: $2c
    sbc $a7                                       ; $6db6: $de $a7
    or c                                          ; $6db8: $b1
    rst $18                                       ; $6db9: $df
    rst $38                                       ; $6dba: $ff
    ld e, l                                       ; $6dbb: $5d
    sub e                                         ; $6dbc: $93
    ld h, d                                       ; $6dbd: $62
    ld a, b                                       ; $6dbe: $78
    ld h, c                                       ; $6dbf: $61
    sbc $02                                       ; $6dc0: $de $02
    add a                                         ; $6dc2: $87
    ld b, a                                       ; $6dc3: $47
    dec a                                         ; $6dc4: $3d
    add d                                         ; $6dc5: $82
    sub c                                         ; $6dc6: $91
    ccf                                           ; $6dc7: $3f
    ld h, b                                       ; $6dc8: $60
    ld l, [hl]                                    ; $6dc9: $6e
    db $e3                                        ; $6dca: $e3
    adc d                                         ; $6dcb: $8a
    cp l                                          ; $6dcc: $bd
    ld d, h                                       ; $6dcd: $54
    or [hl]                                       ; $6dce: $b6
    jr z, @+$78                                   ; $6dcf: $28 $76

    reti                                          ; $6dd1: $d9


    push bc                                       ; $6dd2: $c5
    cp [hl]                                       ; $6dd3: $be
    ld b, l                                       ; $6dd4: $45
    db $ed                                        ; $6dd5: $ed
    and c                                         ; $6dd6: $a1
    db $db                                        ; $6dd7: $db
    ld [hl], c                                    ; $6dd8: $71
    ld h, l                                       ; $6dd9: $65
    dec [hl]                                      ; $6dda: $35
    db $d3                                        ; $6ddb: $d3
    sbc a                                         ; $6ddc: $9f
    xor l                                         ; $6ddd: $ad
    add hl, hl                                    ; $6dde: $29
    jp nz, $6e3f                                  ; $6ddf: $c2 $3f $6e

    ccf                                           ; $6de2: $3f
    ld d, [hl]                                    ; $6de3: $56
    or h                                          ; $6de4: $b4
    db $eb                                        ; $6de5: $eb
    pop hl                                        ; $6de6: $e1
    rst $08                                       ; $6de7: $cf
    or a                                          ; $6de8: $b7
    ld c, [hl]                                    ; $6de9: $4e
    xor b                                         ; $6dea: $a8
    rra                                           ; $6deb: $1f
    ret                                           ; $6dec: $c9


    ld h, l                                       ; $6ded: $65
    ld l, e                                       ; $6dee: $6b
    adc l                                         ; $6def: $8d
    add hl, sp                                    ; $6df0: $39
    ld l, d                                       ; $6df1: $6a
    add hl, de                                    ; $6df2: $19
    cp b                                          ; $6df3: $b8
    ld h, e                                       ; $6df4: $63
    ld e, c                                       ; $6df5: $59
    call Call_02c_67f4                            ; $6df6: $cd $f4 $67
    xor e                                         ; $6df9: $ab
    cp d                                          ; $6dfa: $ba
    xor [hl]                                      ; $6dfb: $ae
    inc [hl]                                      ; $6dfc: $34
    ld hl, sp-$45                                 ; $6dfd: $f8 $bb
    db $ec                                        ; $6dff: $ec
    ld h, d                                       ; $6e00: $62
    rst $18                                       ; $6e01: $df
    add $ed                                       ; $6e02: $c6 $ed
    rst $00                                       ; $6e04: $c7
    ld l, $8d                                     ; $6e05: $2e $8d
    sbc $ff                                       ; $6e07: $de $ff
    ld [hl-], a                                   ; $6e09: $32
    ret z                                         ; $6e0a: $c8

    ld e, e                                       ; $6e0b: $5b
    dec e                                         ; $6e0c: $1d
    dec c                                         ; $6e0d: $0d
    ld b, d                                       ; $6e0e: $42
    dec sp                                        ; $6e0f: $3b
    push af                                       ; $6e10: $f5
    ld [hl], d                                    ; $6e11: $72
    jp hl                                         ; $6e12: $e9


    rst $28                                       ; $6e13: $ef
    ld e, b                                       ; $6e14: $58
    cp c                                          ; $6e15: $b9
    ld e, d                                       ; $6e16: $5a
    ld b, a                                       ; $6e17: $47
    and b                                         ; $6e18: $a0
    ld a, $a3                                     ; $6e19: $3e $a3
    rrca                                          ; $6e1b: $0f
    sbc d                                         ; $6e1c: $9a
    pop bc                                        ; $6e1d: $c1
    ld c, [hl]                                    ; $6e1e: $4e
    ld a, c                                       ; $6e1f: $79
    dec [hl]                                      ; $6e20: $35
    ld b, $95                                     ; $6e21: $06 $95
    add $61                                       ; $6e23: $c6 $61
    rst $00                                       ; $6e25: $c7
    ld h, d                                       ; $6e26: $62
    ld [$be41], a                                 ; $6e27: $ea $41 $be
    sbc l                                         ; $6e2a: $9d
    inc c                                         ; $6e2b: $0c
    ld a, [hl+]                                   ; $6e2c: $2a
    ld b, l                                       ; $6e2d: $45
    or e                                          ; $6e2e: $b3
    rst $38                                       ; $6e2f: $ff
    ld l, a                                       ; $6e30: $6f
    xor d                                         ; $6e31: $aa
    dec a                                         ; $6e32: $3d
    or h                                          ; $6e33: $b4
    dec b                                         ; $6e34: $05
    add a                                         ; $6e35: $87
    rst $38                                       ; $6e36: $ff
    ld a, a                                       ; $6e37: $7f
    ld d, e                                       ; $6e38: $53
    db $ed                                        ; $6e39: $ed
    and c                                         ; $6e3a: $a1
    dec sp                                        ; $6e3b: $3b
    add hl, de                                    ; $6e3c: $19
    inc [hl]                                      ; $6e3d: $34
    and $41                                       ; $6e3e: $e6 $41
    pop de                                        ; $6e40: $d1
    ld sp, hl                                     ; $6e41: $f9
    push af                                       ; $6e42: $f5
    sbc b                                         ; $6e43: $98
    rlca                                          ; $6e44: $07
    ld sp, $ae8e                                  ; $6e45: $31 $8e $ae
    jp c, $5b43                                   ; $6e48: $da $43 $5b

    daa                                           ; $6e4b: $27
    add e                                         ; $6e4c: $83
    ld c, d                                       ; $6e4d: $4a
    pop de                                        ; $6e4e: $d1
    db $ec                                        ; $6e4f: $ec
    rst $38                                       ; $6e50: $ff
    sbc e                                         ; $6e51: $9b
    ld d, [hl]                                    ; $6e52: $56
    ld h, a                                       ; $6e53: $67
    dec e                                         ; $6e54: $1d
    rra                                           ; $6e55: $1f
    ldh a, [$62]                                  ; $6e56: $f0 $62
    adc $6b                                       ; $6e58: $ce $6b
    rrca                                          ; $6e5a: $0f
    ld e, l                                       ; $6e5b: $5d
    ld b, a                                       ; $6e5c: $47
    ld d, a                                       ; $6e5d: $57
    add l                                         ; $6e5e: $85
    ld [hl], l                                    ; $6e5f: $75
    ld e, l                                       ; $6e60: $5d
    or l                                          ; $6e61: $b5
    add a                                         ; $6e62: $87
    xor $48                                       ; $6e63: $ee $48
    ld b, c                                       ; $6e65: $41
    ld h, a                                       ; $6e66: $67
    xor h                                         ; $6e67: $ac
    ld e, e                                       ; $6e68: $5b
    xor c                                         ; $6e69: $a9
    or $d0                                        ; $6e6a: $f6 $d0
    ld d, $f5                                     ; $6e6c: $16 $f5
    or l                                          ; $6e6e: $b5
    xor a                                         ; $6e6f: $af
    dec b                                         ; $6e70: $05

jr_02c_6e71:
    ld h, b                                       ; $6e71: $60
    xor h                                         ; $6e72: $ac
    or c                                          ; $6e73: $b1
    sbc b                                         ; $6e74: $98
    cp $f5                                        ; $6e75: $fe $f5
    ld e, h                                       ; $6e77: $5c
    xor e                                         ; $6e78: $ab
    or e                                          ; $6e79: $b3
    adc [hl]                                      ; $6e7a: $8e
    rrca                                          ; $6e7b: $0f
    ld a, b                                       ; $6e7c: $78
    ld sp, $79e7                                  ; $6e7d: $31 $e7 $79
    dec bc                                        ; $6e80: $0b
    add a                                         ; $6e81: $87
    sub a                                         ; $6e82: $97
    rst $20                                       ; $6e83: $e7
    sub c                                         ; $6e84: $91
    call c, $fbfb                                 ; $6e85: $dc $fb $fb
    ld e, d                                       ; $6e88: $5a
    inc hl                                        ; $6e89: $23
    and b                                         ; $6e8a: $a0
    add hl, sp                                    ; $6e8b: $39
    ld [$798f], a                                 ; $6e8c: $ea $8f $79
    db $10                                        ; $6e8f: $10
    ld h, e                                       ; $6e90: $63

Call_02c_6e91:
    db $f4                                        ; $6e91: $f4
    cp c                                          ; $6e92: $b9
    dec hl                                        ; $6e93: $2b
    ld e, a                                       ; $6e94: $5f
    rlca                                          ; $6e95: $07
    jp $f318                                      ; $6e96: $c3 $18 $f3


    jr nz, jr_02c_6e71                            ; $6e99: $20 $d6

    inc a                                         ; $6e9b: $3c
    ld h, b                                       ; $6e9c: $60
    ld [hl], h                                    ; $6e9d: $74
    cp $5c                                        ; $6e9e: $fe $5c
    inc l                                         ; $6ea0: $2c
    ld [hl], e                                    ; $6ea1: $73
    ld l, $df                                     ; $6ea2: $2e $df
    and l                                         ; $6ea4: $a5
    ld h, l                                       ; $6ea5: $65
    ldh [$8e], a                                  ; $6ea6: $e0 $8e
    ld h, l                                       ; $6ea8: $65
    dec [hl]                                      ; $6ea9: $35
    or e                                          ; $6eaa: $b3
    ld a, h                                       ; $6eab: $7c
    ld b, a                                       ; $6eac: $47
    cp h                                          ; $6ead: $bc
    rst $38                                       ; $6eae: $ff
    or l                                          ; $6eaf: $b5
    db $ec                                        ; $6eb0: $ec
    rlca                                          ; $6eb1: $07
    cp $6f                                        ; $6eb2: $fe $6f
    jp z, $c75b                                   ; $6eb4: $ca $5b $c7

    sub l                                         ; $6eb7: $95
    db $fd                                        ; $6eb8: $fd
    ld a, e                                       ; $6eb9: $7b
    call $196c                                    ; $6eba: $cd $6c $19
    cp b                                          ; $6ebd: $b8
    jp Jump_02c_52d7                              ; $6ebe: $c3 $d7 $52


    add $02                                       ; $6ec1: $c6 $02
    ld de, $8d69                                  ; $6ec3: $11 $69 $8d
    ld sp, hl                                     ; $6ec6: $f9
    ld [c], a                                     ; $6ec7: $e2
    ld sp, hl                                     ; $6ec8: $f9
    add l                                         ; $6ec9: $85
    ld a, [c]                                     ; $6eca: $f2
    ld a, h                                       ; $6ecb: $7c
    rst $00                                       ; $6ecc: $c7
    sub l                                         ; $6ecd: $95
    ld sp, $b4b6                                  ; $6ece: $31 $b6 $b4
    sub l                                         ; $6ed1: $95
    ld a, [c]                                     ; $6ed2: $f2
    ret nc                                        ; $6ed3: $d0

    and a                                         ; $6ed4: $a7
    ccf                                           ; $6ed5: $3f
    ld b, l                                       ; $6ed6: $45
    ld e, b                                       ; $6ed7: $58
    adc l                                         ; $6ed8: $8d
    ld a, h                                       ; $6ed9: $7c
    add hl, de                                    ; $6eda: $19
    ld d, b                                       ; $6edb: $50
    ret                                           ; $6edc: $c9


    add b                                         ; $6edd: $80
    and d                                         ; $6ede: $a2
    ld e, $7c                                     ; $6edf: $1e $7c
    push bc                                       ; $6ee1: $c5
    adc h                                         ; $6ee2: $8c
    or c                                          ; $6ee3: $b1
    ld c, a                                       ; $6ee4: $4f
    db $e3                                        ; $6ee5: $e3
    ld a, [de]                                    ; $6ee6: $1a
    ld sp, hl                                     ; $6ee7: $f9
    inc bc                                        ; $6ee8: $03
    ld b, [hl]                                    ; $6ee9: $46
    cp [hl]                                       ; $6eea: $be
    ld h, d                                       ; $6eeb: $62
    ld h, e                                       ; $6eec: $63
    cp d                                          ; $6eed: $ba
    inc hl                                        ; $6eee: $23
    ld d, a                                       ; $6eef: $57
    cp [hl]                                       ; $6ef0: $be
    and e                                         ; $6ef1: $a3
    ld [hl+], a                                   ; $6ef2: $22
    xor h                                         ; $6ef3: $ac
    ld b, [hl]                                    ; $6ef4: $46
    rst $20                                       ; $6ef5: $e7
    rst $28                                       ; $6ef6: $ef
    ld d, d                                       ; $6ef7: $52
    add hl, hl                                    ; $6ef8: $29
    xor d                                         ; $6ef9: $aa
    ld [hl], a                                    ; $6efa: $77
    ld h, c                                       ; $6efb: $61
    sbc $02                                       ; $6efc: $de $02
    ld b, a                                       ; $6efe: $47
    sub l                                         ; $6eff: $95
    and d                                         ; $6f00: $a2
    ld a, l                                       ; $6f01: $7d
    adc l                                         ; $6f02: $8d
    ld a, c                                       ; $6f03: $79
    db $10                                        ; $6f04: $10
    cp e                                          ; $6f05: $bb
    sbc $67                                       ; $6f06: $de $67
    ld d, b                                       ; $6f08: $50
    sbc a                                         ; $6f09: $9f
    sub $58                                       ; $6f0a: $d6 $58
    db $e4                                        ; $6f0c: $e4
    bit 2, d                                      ; $6f0d: $cb $52
    add hl, hl                                    ; $6f0f: $29
    xor d                                         ; $6f10: $aa

jr_02c_6f11:
    ld d, a                                       ; $6f11: $57
    ld [$dd0c], a                                 ; $6f12: $ea $0c $dd
    sub $08                                       ; $6f15: $d6 $08
    xor b                                         ; $6f17: $a8
    ld e, [hl]                                    ; $6f18: $5e
    rst $10                                       ; $6f19: $d7
    db $e4                                        ; $6f1a: $e4
    ld e, d                                       ; $6f1b: $5a
    add l                                         ; $6f1c: $85
    add d                                         ; $6f1d: $82
    adc $79                                       ; $6f1e: $ce $79
    dec bc                                        ; $6f20: $0b
    ld e, l                                       ; $6f21: $5d
    ret c                                         ; $6f22: $d8

    cp [hl]                                       ; $6f23: $be
    ld d, [hl]                                    ; $6f24: $56
    sbc c                                         ; $6f25: $99
    ld e, a                                       ; $6f26: $5f
    ld l, h                                       ; $6f27: $6c
    adc l                                         ; $6f28: $8d

Call_02c_6f29:
    ld e, $64                                     ; $6f29: $1e $64
    ccf                                           ; $6f2b: $3f
    ldh a, [$58]                                  ; $6f2c: $f0 $58
    ld h, e                                       ; $6f2e: $63
    ld d, c                                       ; $6f2f: $51
    ld a, e                                       ; $6f30: $7b
    add sp, $76                                   ; $6f31: $e8 $76
    ld a, [$1883]                                 ; $6f33: $fa $83 $18
    sub [hl]                                      ; $6f36: $96
    ld sp, $620f                                  ; $6f37: $31 $0f $62
    ld l, c                                       ; $6f3a: $69
    inc bc                                        ; $6f3b: $03
    ld a, [de]                                    ; $6f3c: $1a
    ld a, h                                       ; $6f3d: $7c
    dec l                                         ; $6f3e: $2d
    ld h, l                                       ; $6f3f: $65
    inc l                                         ; $6f40: $2c
    db $10                                        ; $6f41: $10
    sub c                                         ; $6f42: $91
    ld d, [hl]                                    ; $6f43: $56
    add hl, de                                    ; $6f44: $19
    dec bc                                        ; $6f45: $0b
    inc sp                                        ; $6f46: $33
    and b                                         ; $6f47: $a0
    ld b, l                                       ; $6f48: $45
    ld [hl], e                                    ; $6f49: $73
    cp e                                          ; $6f4a: $bb
    ret nc                                        ; $6f4b: $d0

    adc d                                         ; $6f4c: $8a
    ld a, [c]                                     ; $6f4d: $f2
    inc a                                         ; $6f4e: $3c
    rst $18                                       ; $6f4f: $df
    adc [hl]                                      ; $6f50: $8e
    xor l                                         ; $6f51: $ad
    xor d                                         ; $6f52: $aa
    db $e4                                        ; $6f53: $e4
    or d                                          ; $6f54: $b2
    rst $28                                       ; $6f55: $ef
    add [hl]                                      ; $6f56: $86
    add e                                         ; $6f57: $83
    xor a                                         ; $6f58: $af
    ld hl, $29bf                                  ; $6f59: $21 $bf $29
    ld l, a                                       ; $6f5c: $6f
    ld bc, $fd27                                  ; $6f5d: $01 $27 $fd
    ld sp, $4fa8                                  ; $6f60: $31 $a8 $4f
    db $e3                                        ; $6f63: $e3
    ld a, [de]                                    ; $6f64: $1a
    ld sp, hl                                     ; $6f65: $f9
    inc bc                                        ; $6f66: $03
    ld b, [hl]                                    ; $6f67: $46
    cp [hl]                                       ; $6f68: $be
    ld h, d                                       ; $6f69: $62
    ld c, e                                       ; $6f6a: $4b
    add hl, de                                    ; $6f6b: $19
    dec bc                                        ; $6f6c: $0b
    ld b, h                                       ; $6f6d: $44
    and h                                         ; $6f6e: $a4
    ld d, l                                       ; $6f6f: $55
    add $c2                                       ; $6f70: $c6 $c2
    inc c                                         ; $6f72: $0c
    ld l, b                                       ; $6f73: $68
    add hl, de                                    ; $6f74: $19
    cp b                                          ; $6f75: $b8
    ld h, e                                       ; $6f76: $63
    add hl, de                                    ; $6f77: $19
    di                                            ; $6f78: $f3
    jr nz, jr_02c_6f11                            ; $6f79: $20 $96

    ld [hl], $a0                                  ; $6f7b: $36 $a0
    db $e4                                        ; $6f7d: $e4
    adc [hl]                                      ; $6f7e: $8e
    dec [hl]                                      ; $6f7f: $35
    rst $30                                       ; $6f80: $f7
    sbc d                                         ; $6f81: $9a
    ld [hl], l                                    ; $6f82: $75
    ld a, h                                       ; $6f83: $7c
    ld b, h                                       ; $6f84: $44
    ld a, [c]                                     ; $6f85: $f2
    ld a, h                                       ; $6f86: $7c
    ld b, a                                       ; $6f87: $47
    sub l                                         ; $6f88: $95
    and d                                         ; $6f89: $a2
    ld e, l                                       ; $6f8a: $5d
    rst $28                                       ; $6f8b: $ef
    inc de                                        ; $6f8c: $13
    ld [$8ad3], a                                 ; $6f8d: $ea $d3 $8a
    ld h, d                                       ; $6f90: $62
    pop af                                        ; $6f91: $f1
    sbc h                                         ; $6f92: $9c
    ld h, d                                       ; $6f93: $62
    ld b, a                                       ; $6f94: $47
    rla                                           ; $6f95: $17
    ld l, h                                       ; $6f96: $6c
    db $f4                                        ; $6f97: $f4
    ld sp, hl                                     ; $6f98: $f9
    sbc e                                         ; $6f99: $9b
    ld l, b                                       ; $6f9a: $68
    and a                                         ; $6f9b: $a7
    sra e                                         ; $6f9c: $cb $2b
    inc l                                         ; $6f9e: $2c
    dec b                                         ; $6f9f: $05
    rra                                           ; $6fa0: $1f
    call nz, $fb4e                                ; $6fa1: $c4 $4e $fb
    ld l, a                                       ; $6fa4: $6f
    add hl, de                                    ; $6fa5: $19
    ret nz                                        ; $6fa6: $c0

    ld sp, $620f                                  ; $6fa7: $31 $0f $62
    adc l                                         ; $6faa: $8d
    ccf                                           ; $6fab: $3f
    cp d                                          ; $6fac: $ba
    or c                                          ; $6fad: $b1
    db $e4                                        ; $6fae: $e4
    rst $28                                       ; $6faf: $ef
    db $d3                                        ; $6fb0: $d3
    jp z, $18f3                                   ; $6fb1: $ca $f3 $18

    rst $10                                       ; $6fb4: $d7
    sbc b                                         ; $6fb5: $98
    rla                                           ; $6fb6: $17
    ld [hl], e                                    ; $6fb7: $73
    db $fd                                        ; $6fb8: $fd
    db $eb                                        ; $6fb9: $eb
    ld a, l                                       ; $6fba: $7d
    ld [hl], d                                    ; $6fbb: $72
    push bc                                       ; $6fbc: $c5
    ld a, [hl+]                                   ; $6fbd: $2a
    ld h, e                                       ; $6fbe: $63
    ld h, c                                       ; $6fbf: $61
    ld b, $14                                     ; $6fc0: $06 $14
    ld a, c                                       ; $6fc2: $79
    dec bc                                        ; $6fc3: $0b

jr_02c_6fc4:
    dec e                                         ; $6fc4: $1d
    inc c                                         ; $6fc5: $0c
    ld h, e                                       ; $6fc6: $63
    reti                                          ; $6fc7: $d9


    jp c, Jump_000_1bbf                           ; $6fc8: $da $bf $1b

    xor [hl]                                      ; $6fcb: $ae
    or c                                          ; $6fcc: $b1
    jr @-$3f                                      ; $6fcd: $18 $bf

    sbc e                                         ; $6fcf: $9b
    or e                                          ; $6fd0: $b3
    db $f4                                        ; $6fd1: $f4
    add hl, hl                                    ; $6fd2: $29
    ld l, a                                       ; $6fd3: $6f
    ld bc, $1ac7                                  ; $6fd4: $01 $c7 $1a
    res 2, c                                      ; $6fd7: $cb $91
    cpl                                           ; $6fd9: $2f
    xor $0a                                       ; $6fda: $ee $0a
    ld a, [de]                                    ; $6fdc: $1a
    cp a                                          ; $6fdd: $bf
    and l                                         ; $6fde: $a5
    db $fc                                        ; $6fdf: $fc
    ld bc, $7296                                  ; $6fe0: $01 $96 $72
    ld e, e                                       ; $6fe3: $5b
    di                                            ; $6fe4: $f3
    ret nz                                        ; $6fe5: $c0

    sub a                                         ; $6fe6: $97
    ld [hl], $74                                  ; $6fe7: $36 $74
    xor l                                         ; $6fe9: $ad
    pop af                                        ; $6fea: $f1
    ld e, e                                       ; $6feb: $5b
    ld de, $5f23                                  ; $6fec: $11 $23 $5f
    ld e, a                                       ; $6fef: $5f
    ld a, l                                       ; $6ff0: $7d
    dec e                                         ; $6ff1: $1d
    or h                                          ; $6ff2: $b4
    ld c, $cf                                     ; $6ff3: $0e $cf
    ccf                                           ; $6ff5: $3f
    sub [hl]                                      ; $6ff6: $96
    and d                                         ; $6ff7: $a2
    ld e, b                                       ; $6ff8: $58
    add b                                         ; $6ff9: $80
    adc a                                         ; $6ffa: $8f
    ld a, c                                       ; $6ffb: $79
    db $e4                                        ; $6ffc: $e4
    jp c, $aaf5                                   ; $6ffd: $da $f5 $aa

    add [hl]                                      ; $7000: $86
    or h                                          ; $7001: $b4
    adc e                                         ; $7002: $8b
    xor l                                         ; $7003: $ad
    di                                            ; $7004: $f3
    ld [hl], a                                    ; $7005: $77
    adc h                                         ; $7006: $8c
    db $e3                                        ; $7007: $e3
    ld h, a                                       ; $7008: $67
    dec a                                         ; $7009: $3d
    and d                                         ; $700a: $a2
    ret z                                         ; $700b: $c8

    rst $10                                       ; $700c: $d7
    ld b, c                                       ; $700d: $41
    ld a, [hl]                                    ; $700e: $7e
    pop hl                                        ; $700f: $e1
    ld hl, sp-$43                                 ; $7010: $f8 $bd
    ld l, e                                       ; $7012: $6b
    ld [hl], d                                    ; $7013: $72
    adc l                                         ; $7014: $8d
    pop de                                        ; $7015: $d1
    add a                                         ; $7016: $87
    ld a, h                                       ; $7017: $7c
    push af                                       ; $7018: $f5
    or l                                          ; $7019: $b5
    nop                                           ; $701a: $00
    adc h                                         ; $701b: $8c
    ld b, l                                       ; $701c: $45
    rrca                                          ; $701d: $0f
    cp [hl]                                       ; $701e: $be
    inc c                                         ; $701f: $0c
    ld l, b                                       ; $7020: $68
    call z, $9883                                 ; $7021: $cc $83 $98
    cp $d2                                        ; $7024: $fe $d2
    ld [hl], d                                    ; $7026: $72
    sbc l                                         ; $7027: $9d
    cp a                                          ; $7028: $bf
    call nc, $83fb                                ; $7029: $d4 $fb $83
    jr nc, jr_02c_6fc4                            ; $702c: $30 $96

    ld a, [c]                                     ; $702e: $f2
    ld d, $f5                                     ; $702f: $16 $f5
    dec [hl]                                      ; $7031: $35

Jump_02c_7032:
    and $41                                       ; $7032: $e6 $41
    ld c, h                                       ; $7034: $4c
    ld a, a                                       ; $7035: $7f
    adc l                                         ; $7036: $8d
    and e                                         ; $7037: $a3
    sub d                                         ; $7038: $92
    dec sp                                        ; $7039: $3b
    sub $dc                                       ; $703a: $d6 $dc
    ld l, e                                       ; $703c: $6b
    sub d                                         ; $703d: $92
    inc de                                        ; $703e: $13
    xor l                                         ; $703f: $ad
    sub d                                         ; $7040: $92
    ld e, a                                       ; $7041: $5f
    sbc b                                         ; $7042: $98
    or a                                          ; $7043: $b7
    ld b, a                                       ; $7044: $47
    ld b, l                                       ; $7045: $45
    ld e, b                                       ; $7046: $58
    adc l                                         ; $7047: $8d
    adc $df                                       ; $7048: $ce $df
    and l                                         ; $704a: $a5
    ld d, d                                       ; $704b: $52
    ld d, h                                       ; $704c: $54
    rst $28                                       ; $704d: $ef
    jp nz, Jump_000_3c1d                          ; $704e: $c2 $1d $3c

    sub l                                         ; $7051: $95
    and d                                         ; $7052: $a2
    add hl, hl                                    ; $7053: $29
    ld l, b                                       ; $7054: $68
    ld a, [$3d4b]                                 ; $7055: $fa $4b $3d
    adc h                                         ; $7058: $8c
    ld [hl], c                                    ; $7059: $71
    adc l                                         ; $705a: $8d
    db $fd                                        ; $705b: $fd
    and b                                         ; $705c: $a0
    di                                            ; $705d: $f3
    ld b, h                                       ; $705e: $44
    ld l, e                                       ; $705f: $6b
    ld a, [bc]                                    ; $7060: $0a
    ld d, h                                       ; $7061: $54
    ld a, [de]                                    ; $7062: $1a
    rst $10                                       ; $7063: $d7
    ld a, [de]                                    ; $7064: $1a
    or $ed                                        ; $7065: $f6 $ed
    ld h, e                                       ; $7067: $63
    rst $20                                       ; $7068: $e7
    cp h                                          ; $7069: $bc
    dec b                                         ; $706a: $05
    ld b, a                                       ; $706b: $47
    cp h                                          ; $706c: $bc
    sbc a                                         ; $706d: $9f

jr_02c_706e:
    db $fd                                        ; $706e: $fd
    ret nz                                        ; $706f: $c0

    sub a                                         ; $7070: $97
    dec l                                         ; $7071: $2d
    ld hl, sp+$1a                                 ; $7072: $f8 $1a
    ei                                            ; $7074: $fb
    ld d, l                                       ; $7075: $55
    sub l                                         ; $7076: $95
    ld a, [c]                                     ; $7077: $f2
    sbc l                                         ; $7078: $9d
    cp $20                                        ; $7079: $fe $20
    sub $35                                       ; $707b: $d6 $35
    add hl, hl                                    ; $707d: $29
    and [hl]                                      ; $707e: $a6
    cp a                                          ; $707f: $bf
    add $55                                       ; $7080: $c6 $55
    ld h, c                                       ; $7082: $61
    ld e, l                                       ; $7083: $5d
    rst $10                                       ; $7084: $d7
    db $ec                                        ; $7085: $ec
    rst $38                                       ; $7086: $ff
    sbc e                                         ; $7087: $9b
    ld l, d                                       ; $7088: $6a
    rrca                                          ; $7089: $0f
    ld l, l                                       ; $708a: $6d
    ld bc, $a047                                  ; $708b: $01 $47 $a0
    ld a, $75                                     ; $708e: $3e $75
    ld b, a                                       ; $7090: $47
    ld a, c                                       ; $7091: $79
    dec bc                                        ; $7092: $0b
    and a                                         ; $7093: $a7
    ccf                                           ; $7094: $3f
    adc b                                         ; $7095: $88
    add l                                         ; $7096: $85
    ld sp, $7f3a                                  ; $7097: $31 $3a $7f
    add hl, de                                    ; $709a: $19
    ret nc                                        ; $709b: $d0

    or d                                          ; $709c: $b2
    or l                                          ; $709d: $b5
    xor a                                         ; $709e: $af
    dec [hl]                                      ; $709f: $35
    add d                                         ; $70a0: $82
    adc $73                                       ; $70a1: $ce $73
    call nc, $f31f                                ; $70a3: $d4 $1f $f3
    jr nz, jr_02c_706e                            ; $70a6: $20 $c6

    add sp, $73                                   ; $70a8: $e8 $73
    ld d, a                                       ; $70aa: $57
    ld [hl], d                                    ; $70ab: $72
    sub l                                         ; $70ac: $95
    ld h, c                                       ; $70ad: $61
    adc h                                         ; $70ae: $8c
    ld a, c                                       ; $70af: $79
    db $10                                        ; $70b0: $10
    ld l, e                                       ; $70b1: $6b
    ld e, $30                                     ; $70b2: $1e $30
    ld a, [hl-]                                   ; $70b4: $3a
    ld a, a                                       ; $70b5: $7f
    ld l, $96                                     ; $70b6: $2e $96
    add hl, sp                                    ; $70b8: $39
    sub a                                         ; $70b9: $97
    rst $28                                       ; $70ba: $ef
    jp nc, Jump_02c_7032                          ; $70bb: $d2 $32 $70

    rst $00                                       ; $70be: $c7
    or d                                          ; $70bf: $b2
    sbc d                                         ; $70c0: $9a
    ld e, c                                       ; $70c1: $59
    sbc $02                                       ; $70c2: $de $02
    add a                                         ; $70c4: $87
    or e                                          ; $70c5: $b3
    sub e                                         ; $70c6: $93
    add e                                         ; $70c7: $83
    cp a                                          ; $70c8: $bf
    ld l, h                                       ; $70c9: $6c
    pop bc                                        ; $70ca: $c1
    rst $10                                       ; $70cb: $d7
    ld l, [hl]                                    ; $70cc: $6e
    and l                                         ; $70cd: $a5
    ld l, $a3                                     ; $70ce: $2e $a3
    ld a, h                                       ; $70d0: $7c
    ld b, a                                       ; $70d1: $47
    and b                                         ; $70d2: $a0
    ld a, $a3                                     ; $70d3: $3e $a3
    rrca                                          ; $70d5: $0f
    jp c, $d6c5                                   ; $70d6: $da $c5 $d6

    ld sp, hl                                     ; $70d9: $f9
    dec sp                                        ; $70da: $3b
    cp d                                          ; $70db: $ba
    ld [$66bc], sp                                ; $70dc: $08 $bc $66
    and d                                         ; $70df: $a2
    dec e                                         ; $70e0: $1d
    pop af                                        ; $70e1: $f1
    adc b                                         ; $70e2: $88
    ld a, [c]                                     ; $70e3: $f2
    xor l                                         ; $70e4: $ad
    and e                                         ; $70e5: $a3
    xor e                                         ; $70e6: $ab
    jp nz, $aeba                                  ; $70e7: $c2 $ba $ae

    reti                                          ; $70ea: $d9


    rst $38                                       ; $70eb: $ff
    scf                                           ; $70ec: $37
    xor l                                         ; $70ed: $ad
    adc $3a                                       ; $70ee: $ce $3a
    ld a, $e0                                     ; $70f0: $3e $e0
    push bc                                       ; $70f2: $c5
    sbc h                                         ; $70f3: $9c
    rst $10                                       ; $70f4: $d7
    ld e, $da                                     ; $70f5: $1e $da
    ld [bc], a                                    ; $70f7: $02
    daa                                           ; $70f8: $27
    ld bc, $27b6                                  ; $70f9: $01 $b6 $27
    cp [hl]                                       ; $70fc: $be
    ld e, b                                       ; $70fd: $58
    ld b, c                                       ; $70fe: $41
    add $15                                       ; $70ff: $c6 $15
    adc e                                         ; $7101: $8b
    rst $30                                       ; $7102: $f7
    ld l, c                                       ; $7103: $69
    ld d, a                                       ; $7104: $57
    or c                                          ; $7105: $b1
    adc b                                         ; $7106: $88
    ld e, e                                       ; $7107: $5b
    inc c                                         ; $7108: $0c
    cpl                                           ; $7109: $2f
    call z, $2eb7                                 ; $710a: $cc $b7 $2e
    ld l, h                                       ; $710d: $6c
    ld l, c                                       ; $710e: $69
    cp c                                          ; $710f: $b9
    xor l                                         ; $7110: $ad
    xor a                                         ; $7111: $af
    ld a, [hl]                                    ; $7112: $7e
    ei                                            ; $7113: $fb
    ld e, c                                       ; $7114: $59
    add a                                         ; $7115: $87
    rst $20                                       ; $7116: $e7
    rra                                           ; $7117: $1f
    ld c, e                                       ; $7118: $4b
    ld d, c                                       ; $7119: $51
    db $e4                                        ; $711a: $e4
    dec l                                         ; $711b: $2d
    dec e                                         ; $711c: $1d
    db $e4                                        ; $711d: $e4
    rla                                           ; $711e: $17
    adc [hl]                                      ; $711f: $8e
    rst $18                                       ; $7120: $df
    adc l                                         ; $7121: $8d
    ld a, c                                       ; $7122: $79
    add sp, $4b                                   ; $7123: $e8 $4b
    dec de                                        ; $7125: $1b
    jp nc, $1798                                  ; $7126: $d2 $98 $17

    or e                                          ; $7129: $b3
    adc e                                         ; $712a: $8b
    ld l, l                                       ; $712b: $6d
    inc d                                         ; $712c: $14
    cp e                                          ; $712d: $bb
    ret c                                         ; $712e: $d8

    ld a, [hl-]                                   ; $712f: $3a
    ld a, a                                       ; $7130: $7f
    ld b, a                                       ; $7131: $47
    rla                                           ; $7132: $17
    add c                                         ; $7133: $81
    rst $10                                       ; $7134: $d7
    ld c, h                                       ; $7135: $4c
    or h                                          ; $7136: $b4
    inc hl                                        ; $7137: $23
    ld e, $51                                     ; $7138: $1e $51
    cp [hl]                                       ; $713a: $be
    dec e                                         ; $713b: $1d
    pop af                                        ; $713c: $f1
    cp $d7                                        ; $713d: $fe $d7
    adc d                                         ; $713f: $8a
    ld l, $02                                     ; $7140: $2e $02
    ld d, a                                       ; $7142: $57
    ld l, l                                       ; $7143: $6d
    ld h, d                                       ; $7144: $62
    dec bc                                        ; $7145: $0b
    push af                                       ; $7146: $f5
    or l                                          ; $7147: $b5
    ld a, a                                       ; $7148: $7f
    scf                                           ; $7149: $37
    ld e, h                                       ; $714a: $5c
    ld h, e                                       ; $714b: $63
    or c                                          ; $714c: $b1
    ld c, e                                       ; $714d: $4b
    ld b, h                                       ; $714e: $44
    ld e, d                                       ; $714f: $5a
    cp h                                          ; $7150: $bc
    xor d                                         ; $7151: $aa
    ld d, d                                       ; $7152: $52
    sbc $02                                       ; $7153: $de $02
    ld b, a                                       ; $7155: $47
    cp [hl]                                       ; $7156: $be
    xor d                                         ; $7157: $aa
    ld [hl-], a                                   ; $7158: $32
    sub [hl]                                      ; $7159: $96
    ld a, [c]                                     ; $715a: $f2
    xor l                                         ; $715b: $ad
    add e                                         ; $715c: $83
    ld h, c                                       ; $715d: $61
    db $ec                                        ; $715e: $ec
    db $fd                                        ; $715f: $fd
    add l                                         ; $7160: $85
    and $62                                       ; $7161: $e6 $62

jr_02c_7163:
    db $e4                                        ; $7163: $e4
    ld l, [hl]                                    ; $7164: $6e
    adc e                                         ; $7165: $8b
    ld e, $5c                                     ; $7166: $1e $5c
    sub l                                         ; $7168: $95
    ld a, $e5                                     ; $7169: $3e $e5
    dec l                                         ; $716b: $2d
    rst $00                                       ; $716c: $c7
    sub l                                         ; $716d: $95
    and l                                         ; $716e: $a5
    dec c                                         ; $716f: $0d
    ld l, b                                       ; $7170: $68
    add hl, de                                    ; $7171: $19
    ret nc                                        ; $7172: $d0

    or d                                          ; $7173: $b2
    dec [hl]                                      ; $7174: $35
    and $41                                       ; $7175: $e6 $41
    call z, $e8c5                                 ; $7177: $cc $c5 $e8
    ld [hl], e                                    ; $717a: $73
    db $ed                                        ; $717b: $ed
    ld d, d                                       ; $717c: $52
    xor h                                         ; $717d: $ac
    jr nz, jr_02c_7163                            ; $717e: $20 $e3

    adc d                                         ; $7180: $8a
    cp h                                          ; $7181: $bc
    dec b                                         ; $7182: $05
    daa                                           ; $7183: $27
    or c                                          ; $7184: $b1
    sub e                                         ; $7185: $93
    xor e                                         ; $7186: $ab
    inc c                                         ; $7187: $0c
    ld h, e                                       ; $7188: $63
    reti                                          ; $7189: $d9


    jp c, Jump_000_0fe5                           ; $718a: $da $e5 $0f

    ld h, e                                       ; $718d: $63
    add hl, de                                    ; $718e: $19
    ret nc                                        ; $718f: $d0

    or d                                          ; $7190: $b2
    or l                                          ; $7191: $b5
    xor a                                         ; $7192: $af
    dec [hl]                                      ; $7193: $35
    add d                                         ; $7194: $82
    adc $63                                       ; $7195: $ce $63
    ld e, $c4                                     ; $7197: $1e $c4
    db $f4                                        ; $7199: $f4
    rst $00                                       ; $719a: $c7
    rst $18                                       ; $719b: $df
    rst $38                                       ; $719c: $ff
    ld a, [c]                                     ; $719d: $f2
    ld h, l                                       ; $719e: $65
    ld b, b                                       ; $719f: $40
    db $eb                                        ; $71a0: $eb
    xor e                                         ; $71a1: $ab
    rst $28                                       ; $71a2: $ef
    ld a, [hl]                                    ; $71a3: $7e
    sub $e1                                       ; $71a4: $d6 $e1
    ld sp, hl                                     ; $71a6: $f9
    rst $00                                       ; $71a7: $c7
    ld d, d                                       ; $71a8: $52
    inc d                                         ; $71a9: $14
    ld a, c                                       ; $71aa: $79
    dec bc                                        ; $71ab: $0b
    add a                                         ; $71ac: $87
    sub a                                         ; $71ad: $97
    rst $20                                       ; $71ae: $e7
    ld sp, $41e6                                  ; $71af: $31 $e6 $41
    call z, $9d18                                 ; $71b2: $cc $18 $9d
    cp a                                          ; $71b5: $bf
    adc e                                         ; $71b6: $8b
    db $fd                                        ; $71b7: $fd
    jr nc, jr_02c_722a                            ; $71b8: $30 $70

    sub a                                         ; $71ba: $97
    and b                                         ; $71bb: $a0
    ld [hl], e                                    ; $71bc: $73
    cp l                                          ; $71bd: $bd
    ld d, d                                       ; $71be: $52
    and a                                         ; $71bf: $a7
    or $d0                                        ; $71c0: $f6 $d0
    ld d, $47                                     ; $71c2: $16 $47
    and b                                         ; $71c4: $a0
    ld a, $a3                                     ; $71c5: $3e $a3
    rrca                                          ; $71c7: $0f
    ld e, d                                       ; $71c8: $5a
    sbc l                                         ; $71c9: $9d
    dec d                                         ; $71ca: $15
    ld e, e                                       ; $71cb: $5b
    pop bc                                        ; $71cc: $c1
    sub h                                         ; $71cd: $94
    dec de                                        ; $71ce: $1b
    ld a, [hl-]                                   ; $71cf: $3a
    ld l, d                                       ; $71d0: $6a
    ld b, a                                       ; $71d1: $47
    rla                                           ; $71d2: $17
    add c                                         ; $71d3: $81
    rst $10                                       ; $71d4: $d7
    ld c, h                                       ; $71d5: $4c
    or h                                          ; $71d6: $b4
    inc hl                                        ; $71d7: $23
    ld e, $51                                     ; $71d8: $1e $51
    cp [hl]                                       ; $71da: $be
    inc de                                        ; $71db: $13
    rra                                           ; $71dc: $1f
    call nz, $d6be                                ; $71dd: $c4 $be $d6
    inc a                                         ; $71e0: $3c
    ld h, b                                       ; $71e1: $60
    sbc $8f                                       ; $71e2: $de $8f
    ld d, l                                       ; $71e4: $55
    ld d, [hl]                                    ; $71e5: $56
    ret c                                         ; $71e6: $d8

    ld [bc], a                                    ; $71e7: $02

jr_02c_71e8:
    rla                                           ; $71e8: $17
    add h                                         ; $71e9: $84
    ld a, [hl+]                                   ; $71ea: $2a
    ld a, l                                       ; $71eb: $7d
    ld e, d                                       ; $71ec: $5a
    ld h, e                                       ; $71ed: $63
    or c                                          ; $71ee: $b1
    rst $38                                       ; $71ef: $ff
    jr nz, jr_02c_71e8                            ; $71f0: $20 $f6

    xor [hl]                                      ; $71f2: $ae
    dec bc                                        ; $71f3: $0b
    ld a, [de]                                    ; $71f4: $1a
    ld sp, hl                                     ; $71f5: $f9
    cp b                                          ; $71f6: $b8
    ld h, d                                       ; $71f7: $62
    ld d, a                                       ; $71f8: $57
    ld b, c                                       ; $71f9: $41
    ld a, l                                       ; $71fa: $7d
    adc d                                         ; $71fb: $8a
    db $e4                                        ; $71fc: $e4
    cp $83                                        ; $71fd: $fe $83
    sbc b                                         ; $71ff: $98
    ld sp, $c7ef                                  ; $7200: $31 $ef $c7
    ldh [rOCPD], a                                ; $7203: $e0 $6b
    ld b, [hl]                                    ; $7205: $46
    ld h, h                                       ; $7206: $64

jr_02c_7207:
    add hl, de                                    ; $7207: $19
    ret nc                                        ; $7208: $d0

    cp b                                          ; $7209: $b8
    and $46                                       ; $720a: $e6 $46
    ld sp, $a5ae                                  ; $720c: $31 $ae $a5
    jr nc, jr_02c_7266                            ; $720f: $30 $55

    ldh a, [rNR11]                                ; $7211: $f0 $11
    cp e                                          ; $7213: $bb
    ld l, [hl]                                    ; $7214: $6e
    ld b, $94                                     ; $7215: $06 $94
    ld l, a                                       ; $7217: $6f
    dec e                                         ; $7218: $1d
    inc c                                         ; $7219: $0c
    ld h, e                                       ; $721a: $63
    ld l, $46                                     ; $721b: $2e $46
    ld e, a                                       ; $721d: $5f
    rst $20                                       ; $721e: $e7
    xor a                                         ; $721f: $af
    add hl, hl                                    ; $7220: $29
    db $10                                        ; $7221: $10
    inc hl                                        ; $7222: $23
    ld [hl], e                                    ; $7223: $73
    sbc [hl]                                      ; $7224: $9e
    or a                                          ; $7225: $b7
    ld b, a                                       ; $7226: $47
    cp h                                          ; $7227: $bc
    sbc a                                         ; $7228: $9f
    db $fd                                        ; $7229: $fd

jr_02c_722a:
    ret nz                                        ; $722a: $c0

    sub e                                         ; $722b: $93
    set 2, [hl]                                   ; $722c: $cb $d6
    xor d                                         ; $722e: $aa
    cp e                                          ; $722f: $bb
    dec [hl]                                      ; $7230: $35
    adc l                                         ; $7231: $8d
    ld c, d                                       ; $7232: $4a
    pop de                                        ; $7233: $d1
    adc [hl]                                      ; $7234: $8e
    ld [hl], h                                    ; $7235: $74
    ld h, e                                       ; $7236: $63
    cp l                                          ; $7237: $bd
    ld [hl], l                                    ; $7238: $75
    or b                                          ; $7239: $b0

jr_02c_723a:
    and d                                         ; $723a: $a2
    db $f4                                        ; $723b: $f4
    xor e                                         ; $723c: $ab
    ret                                           ; $723d: $c9


    or a                                          ; $723e: $b7
    ld c, [hl]                                    ; $723f: $4e
    jr nc, jr_02c_7207                            ; $7240: $30 $c5

    ld [$e3ac], a                                 ; $7242: $ea $ac $e3
    inc bc                                        ; $7245: $03
    ld e, [hl]                                    ; $7246: $5e
    call z, $ed79                                 ; $7247: $cc $79 $ed
    and c                                         ; $724a: $a1
    dec l                                         ; $724b: $2d
    push af                                       ; $724c: $f5
    rst $28                                       ; $724d: $ef
    dec [hl]                                      ; $724e: $35
    dec bc                                        ; $724f: $0b
    cp c                                          ; $7250: $b9
    pop hl                                        ; $7251: $e1
    ld d, d                                       ; $7252: $52
    xor b                                         ; $7253: $a8
    ld c, a                                       ; $7254: $4f
    db $dd                                        ; $7255: $dd
    ld d, c                                       ; $7256: $51
    sbc $02                                       ; $7257: $de $02
    dec e                                         ; $7259: $1d
    ld e, $ce                                     ; $725a: $1e $ce
    jr nz, jr_02c_7260                            ; $725c: $20 $02

    di                                            ; $725e: $f3
    xor l                                         ; $725f: $ad

jr_02c_7260:
    cp [hl]                                       ; $7260: $be
    ld b, [hl]                                    ; $7261: $46
    ld [hl], a                                    ; $7262: $77
    jp Jump_000_3031                              ; $7263: $c3 $31 $30


jr_02c_7266:
    ld a, d                                       ; $7266: $7a
    ld b, b                                       ; $7267: $40
    xor e                                         ; $7268: $ab
    or e                                          ; $7269: $b3
    ld [hl], d                                    ; $726a: $72
    ld h, a                                       ; $726b: $67
    dec bc                                        ; $726c: $0b
    ld e, h                                       ; $726d: $5c
    inc sp                                        ; $726e: $33
    ld b, [hl]                                    ; $726f: $46
    rst $10                                       ; $7270: $d7
    ld l, $11                                     ; $7271: $2e $11
    ld l, c                                       ; $7273: $69
    adc d                                         ; $7274: $8a
    and [hl]                                      ; $7275: $a6
    xor $a5                                       ; $7276: $ee $a5
    ld [hl], c                                    ; $7278: $71
    adc l                                         ; $7279: $8d
    cp a                                          ; $727a: $bf

jr_02c_727b:
    ld c, d                                       ; $727b: $4a
    ld b, c                                       ; $727c: $41
    sbc b                                         ; $727d: $98
    ld bc, $7725                                  ; $727e: $01 $25 $77
    xor h                                         ; $7281: $ac
    or c                                          ; $7282: $b1
    inc e                                         ; $7283: $1c
    ld a, c                                       ; $7284: $79
    sbc $02                                       ; $7285: $de $02
    push af                                       ; $7287: $f5
    rst $28                                       ; $7288: $ef
    add [hl]                                      ; $7289: $86
    sub l                                         ; $728a: $95
    sub [hl]                                      ; $728b: $96
    ld b, d                                       ; $728c: $42
    db $fd                                        ; $728d: $fd
    dec e                                         ; $728e: $1d
    ld l, e                                       ; $728f: $6b
    inc l                                         ; $7290: $2c
    ld b, a                                       ; $7291: $47
    sbc [hl]                                      ; $7292: $9e
    or a                                          ; $7293: $b7
    add a                                         ; $7294: $87
    or e                                          ; $7295: $b3
    rst $30                                       ; $7296: $f7
    nop                                           ; $7297: $00
    ld l, e                                       ; $7298: $6b
    rrca                                          ; $7299: $0f
    db $dd                                        ; $729a: $dd
    adc [hl]                                      ; $729b: $8e
    dec hl                                        ; $729c: $2b
    ei                                            ; $729d: $fb
    ld [hl], a                                    ; $729e: $77
    dec b                                         ; $729f: $05
    xor l                                         ; $72a0: $ad
    or c                                          ; $72a1: $b1
    jr jr_02c_727b                                ; $72a2: $18 $d7

    cp $23                                        ; $72a4: $fe $23
    rst $10                                       ; $72a6: $d7
    xor d                                         ; $72a7: $aa
    rst $30                                       ; $72a8: $f7
    cp c                                          ; $72a9: $b9
    ld b, [hl]                                    ; $72aa: $46
    or b                                          ; $72ab: $b0
    jr nc, jr_02c_723a                            ; $72ac: $30 $8c

    ld a, h                                       ; $72ae: $7c
    dec sp                                        ; $72af: $3b
    xor [hl]                                      ; $72b0: $ae
    ld c, h                                       ; $72b1: $4c
    ld b, c                                       ; $72b2: $41
    ld l, e                                       ; $72b3: $6b
    ld e, h                                       ; $72b4: $5c
    sub c                                         ; $72b5: $91
    ld bc, $20cd                                  ; $72b6: $01 $cd $20
    ld [bc], a                                    ; $72b9: $02
    ld d, a                                       ; $72ba: $57
    add hl, de                                    ; $72bb: $19
    jr nc, @-$78                                  ; $72bc: $30 $86

    or c                                          ; $72be: $b1
    inc c                                         ; $72bf: $0c
    call c, $afe1                                 ; $72c0: $dc $e1 $af
    jp $1c2b                                      ; $72c3: $c3 $2b $1c


    ld a, [c]                                     ; $72c6: $f2
    xor l                                         ; $72c7: $ad
    and e                                         ; $72c8: $a3
    add b                                         ; $72c9: $80
    ld [$4d75], a                                 ; $72ca: $ea $75 $4d
    xor [hl]                                      ; $72cd: $ae
    ld d, l                                       ; $72ce: $55
    ld e, l                                       ; $72cf: $5d
    ld d, a                                       ; $72d0: $57
    ld e, d                                       ; $72d1: $5a
    add e                                         ; $72d2: $83
    xor [hl]                                      ; $72d3: $ae
    ld a, h                                       ; $72d4: $7c
    dec sp                                        ; $72d5: $3b
    cp h                                          ; $72d6: $bc
    inc d                                         ; $72d7: $14
    sbc l                                         ; $72d8: $9d
    sbc a                                         ; $72d9: $9f
    ld e, h                                       ; $72da: $5c
    ld e, b                                       ; $72db: $58
    ld bc, $5bca                                  ; $72dc: $01 $ca $5b
    ld b, a                                       ; $72df: $47
    and b                                         ; $72e0: $a0
    ld a, $a3                                     ; $72e1: $3e $a3
    rrca                                          ; $72e3: $0f
    sbc d                                         ; $72e4: $9a
    pop bc                                        ; $72e5: $c1
    sbc d                                         ; $72e6: $9a
    rla                                           ; $72e7: $17
    and h                                         ; $72e8: $a4
    ld [hl], c                                    ; $72e9: $71
    adc l                                         ; $72ea: $8d
    dec b                                         ; $72eb: $05
    scf                                           ; $72ec: $37
    rst $00                                       ; $72ed: $c7
    ld a, b                                       ; $72ee: $78

jr_02c_72ef:
    ccf                                           ; $72ef: $3f
    cp c                                          ; $72f0: $b9
    xor d                                         ; $72f1: $aa
    db $eb                                        ; $72f2: $eb
    ld c, d                                       ; $72f3: $4a
    dec bc                                        ; $72f4: $0b
    inc e                                         ; $72f5: $1c
    di                                            ; $72f6: $f3
    jr nz, jr_02c_72ef                            ; $72f7: $20 $f6

    rst $28                                       ; $72f9: $ef
    ld e, l                                       ; $72fa: $5d
    sub e                                         ; $72fb: $93
    ld h, d                                       ; $72fc: $62
    adc l                                         ; $72fd: $8d
    push bc                                       ; $72fe: $c5
    ld d, d                                       ; $72ff: $52
    ld b, l                                       ; $7300: $45
    ld de, $bcb7                                  ; $7301: $11 $b7 $bc
    dec b                                         ; $7304: $05
    dec e                                         ; $7305: $1d
    inc c                                         ; $7306: $0c
    ld h, e                                       ; $7307: $63
    add hl, de                                    ; $7308: $19
    cp b                                          ; $7309: $b8
    dec hl                                        ; $730a: $2b
    xor b                                         ; $730b: $a8
    sbc $a5                                       ; $730c: $de $a5
    ld h, l                                       ; $730e: $65
    ld b, b                                       ; $730f: $40
    ld h, e                                       ; $7310: $63
    ld e, $c4                                     ; $7311: $1e $c4
    adc h                                         ; $7313: $8c
    pop de                                        ; $7314: $d1
    ld sp, hl                                     ; $7315: $f9
    dec hl                                        ; $7316: $2b
    ld [hl], l                                    ; $7317: $75
    ld l, d                                       ; $7318: $6a
    rrca                                          ; $7319: $0f

Jump_02c_731a:
    ld l, l                                       ; $731a: $6d
    ld bc, $35f5                                  ; $731b: $01 $f5 $35
    ld d, $dc                                     ; $731e: $16 $dc
    inc e                                         ; $7320: $1c
    ld h, e                                       ; $7321: $63
    sub a                                         ; $7322: $97
    and b                                         ; $7323: $a0
    di                                            ; $7324: $f3
    ld [hl-], a                                   ; $7325: $32
    add b                                         ; $7326: $80
    ld a, e                                       ; $7327: $7b
    sbc a                                         ; $7328: $9f
    halt                                          ; $7329: $76
    and e                                         ; $732a: $a3
    db $db                                        ; $732b: $db
    ld d, d                                       ; $732c: $52
    ld b, l                                       ; $732d: $45
    ld de, $58b7                                  ; $732e: $11 $b7 $58
    add b                                         ; $7331: $80
    xor a                                         ; $7332: $af
    ld l, b                                       ; $7333: $68
    ld e, c                                       ; $7334: $59
    ld l, h                                       ; $7335: $6c
    ld d, l                                       ; $7336: $55
    ld hl, sp-$39                                 ; $7337: $f8 $c7
    or l                                          ; $7339: $b5
    ld c, [hl]                                    ; $733a: $4e
    ld l, [hl]                                    ; $733b: $6e
    adc h                                         ; $733c: $8c
    inc a                                         ; $733d: $3c
    sub h                                         ; $733e: $94
    or a                                          ; $733f: $b7

jr_02c_7340:
    daa                                           ; $7340: $27
    sbc $d9                                       ; $7341: $de $d9
    or a                                          ; $7343: $b7
    ld b, b                                       ; $7344: $40
    jp nc, Jump_02c_6bf9                          ; $7345: $d2 $f9 $6b

    inc l                                         ; $7348: $2c
    ld d, [hl]                                    ; $7349: $56
    ld h, a                                       ; $734a: $67
    sub l                                         ; $734b: $95
    and $fa                                       ; $734c: $e6 $fa
    call c, $0635                                 ; $734e: $dc $35 $06
    inc bc                                        ; $7351: $03
    ld c, c                                       ; $7352: $49
    res 0, b                                      ; $7353: $cb $80
    ld a, l                                       ; $7355: $7d
    ld a, $e6                                     ; $7356: $3e $e6
    ld b, c                                       ; $7358: $41
    adc h                                         ; $7359: $8c
    ld a, c                                       ; $735a: $79
    ret nz                                        ; $735b: $c0

    ld e, l                                       ; $735c: $5d
    rst $20                                       ; $735d: $e7
    rst $20                                       ; $735e: $e7
    dec l                                         ; $735f: $2d
    push af                                       ; $7360: $f5
    dec [hl]                                      ; $7361: $35
    and $61                                       ; $7362: $e6 $61
    inc l                                         ; $7364: $2c
    inc bc                                        ; $7365: $03
    ld a, [de]                                    ; $7366: $1a
    di                                            ; $7367: $f3
    jr nz, jr_02c_7340                            ; $7368: $20 $d6

    dec [hl]                                      ; $736a: $35
    add hl, hl                                    ; $736b: $29
    sub [hl]                                      ; $736c: $96
    ld a, [hl+]                                   ; $736d: $2a
    adc d                                         ; $736e: $8a
    cp b                                          ; $736f: $b8
    push hl                                       ; $7370: $e5
    dec sp                                        ; $7371: $3b
    db $fd                                        ; $7372: $fd
    ld b, c                                       ; $7373: $41
    adc h                                         ; $7374: $8c
    ld a, c                                       ; $7375: $79
    ld d, b                                       ; $7376: $50
    ld [hl], h                                    ; $7377: $74
    cp $32                                        ; $7378: $fe $32
    and b                                         ; $737a: $a0
    ld h, l                                       ; $737b: $65
    ld l, e                                       ; $737c: $6b
    call z, Call_02c_5883                         ; $737d: $cc $83 $58
    inc a                                         ; $7380: $3c
    ld h, h                                       ; $7381: $64
    ld a, l                                       ; $7382: $7d
    push de                                       ; $7383: $d5
    ld e, $da                                     ; $7384: $1e $da
    ld [bc], a                                    ; $7386: $02
    daa                                           ; $7387: $27
    ld bc, $5b2e                                  ; $7388: $01 $2e $5b
    ld h, e                                       ; $738b: $63
    inc b                                         ; $738c: $04
    sbc l                                         ; $738d: $9d
    sub a                                         ; $738e: $97
    ld b, d                                       ; $738f: $42
    db $fd                                        ; $7390: $fd
    ld a, h                                       ; $7391: $7c
    dec sp                                        ; $7392: $3b
    add hl, de                                    ; $7393: $19
    ld d, h                                       ; $7394: $54
    and [hl]                                      ; $7395: $a6
    and b                                         ; $7396: $a0
    ld sp, $5c8f                                  ; $7397: $31 $8f $5c
    ld l, e                                       ; $739a: $6b
    inc e                                         ; $739b: $1c
    dec sp                                        ; $739c: $3b
    rst $10                                       ; $739d: $d7
    ld e, $da                                     ; $739e: $1e $da
    ld [bc], a                                    ; $73a0: $02
    push af                                       ; $73a1: $f5
    or l                                          ; $73a2: $b5
    xor a                                         ; $73a3: $af
    ld [hl], c                                    ; $73a4: $71
    ld d, l                                       ; $73a5: $55
    or $b9                                        ; $73a6: $f6 $b9
    and $a8                                       ; $73a8: $e6 $a8
    sbc a                                         ; $73aa: $9f
    ld l, a                                       ; $73ab: $6f
    dec e                                         ; $73ac: $1d
    sbc $1f                                       ; $73ad: $de $1f
    rla                                           ; $73af: $17
    di                                            ; $73b0: $f3
    ret nc                                        ; $73b1: $d0

    and a                                         ; $73b2: $a7
    and b                                         ; $73b3: $a0
    ld [hl], c                                    ; $73b4: $71
    dec l                                         ; $73b5: $2d
    ld e, $b2                                     ; $73b6: $1e $b2
    cp [hl]                                       ; $73b8: $be
    ld a, h                                       ; $73b9: $7c
    sub a                                         ; $73ba: $97
    and b                                         ; $73bb: $a0
    di                                            ; $73bc: $f3
    ld [hl-], a                                   ; $73bd: $32
    add b                                         ; $73be: $80
    db $d3                                        ; $73bf: $d3
    rst $18                                       ; $73c0: $df
    ei                                            ; $73c1: $fb
    or h                                          ; $73c2: $b4
    sub h                                         ; $73c3: $94
    ld [c], a                                     ; $73c4: $e2
    pop hl                                        ; $73c5: $e1
    rst $08                                       ; $73c6: $cf
    ld e, e                                       ; $73c7: $5b
    daa                                           ; $73c8: $27
    ld bc, $5b2e                                  ; $73c9: $01 $2e $5b
    ld h, e                                       ; $73cc: $63
    inc b                                         ; $73cd: $04
    sbc l                                         ; $73ce: $9d
    sub a                                         ; $73cf: $97
    ld b, d                                       ; $73d0: $42
    db $fd                                        ; $73d1: $fd
    cp h                                          ; $73d2: $bc
    dec b                                         ; $73d3: $05
    and a                                         ; $73d4: $a7
    ccf                                           ; $73d5: $3f
    inc l                                         ; $73d6: $2c
    ld [hl], l                                    ; $73d7: $75
    sub d                                         ; $73d8: $92
    ld c, e                                       ; $73d9: $4b
    and c                                         ; $73da: $a1
    ld a, $75                                     ; $73db: $3e $75
    ld b, a                                       ; $73dd: $47
    db $eb                                        ; $73de: $eb
    pop de                                        ; $73df: $d1
    add [hl]                                      ; $73e0: $86
    ld l, [hl]                                    ; $73e1: $6e
    xor e                                         ; $73e2: $ab
    ld d, b                                       ; $73e3: $50
    ret nc                                        ; $73e4: $d0

    add hl, sp                                    ; $73e5: $39
    ld l, a                                       ; $73e6: $6f
    ld bc, $ccfd                                  ; $73e7: $01 $fd $cc
    ld e, a                                       ; $73ea: $5f
    ld c, d                                       ; $73eb: $4a
    pop de                                        ; $73ec: $d1
    ld [bc], a                                    ; $73ed: $02
    ld a, l                                       ; $73ee: $7d
    db $ed                                        ; $73ef: $ed
    or d                                          ; $73f0: $b2
    ld b, [hl]                                    ; $73f1: $46
    db $e3                                        ; $73f2: $e3
    ld [hl], a                                    ; $73f3: $77
    ld [hl], $32                                  ; $73f4: $36 $32
    ld a, [c]                                     ; $73f6: $f2
    ld d, $7d                                     ; $73f7: $16 $7d
    db $ed                                        ; $73f9: $ed
    ld h, d                                       ; $73fa: $62
    ld e, e                                       ; $73fb: $5b
    inc hl                                        ; $73fc: $23
    add e                                         ; $73fd: $83
    dec [hl]                                      ; $73fe: $35
    rrca                                          ; $73ff: $0f
    ccf                                           ; $7400: $3f
    ld b, c                                       ; $7401: $41
    dec bc                                        ; $7402: $0b
    ld a, l                                       ; $7403: $7d
    xor l                                         ; $7404: $ad
    ld sp, $8d74                                  ; $7405: $31 $74 $8d
    ld l, e                                       ; $7408: $6b
    inc l                                         ; $7409: $2c
    ei                                            ; $740a: $fb
    inc d                                         ; $740b: $14
    dec l                                         ; $740c: $2d
    ld a, l                                       ; $740d: $7d
    xor l                                         ; $740e: $ad
    or c                                          ; $740f: $b1
    inc c                                         ; $7410: $0c
    adc b                                         ; $7411: $88
    add $ef                                       ; $7412: $c6 $ef
    scf                                           ; $7414: $37
    jp nz, $880c                                  ; $7415: $c2 $0c $88

    ld c, b                                       ; $7418: $48
    pop de                                        ; $7419: $d1
    ld [bc], a                                    ; $741a: $02
    ld a, l                                       ; $741b: $7d
    dec l                                         ; $741c: $2d
    db $ec                                        ; $741d: $ec
    jp c, Jump_02c_48b9                           ; $741e: $da $b9 $48

    xor e                                         ; $7421: $ab
    or e                                          ; $7422: $b3
    and $11                                       ; $7423: $e6 $11
    cp [hl]                                       ; $7425: $be
    rra                                           ; $7426: $1f
    dec l                                         ; $7427: $2d
    ld a, l                                       ; $7428: $7d
    db $ed                                        ; $7429: $ed
    ld a, d                                       ; $742a: $7a
    and l                                         ; $742b: $a5
    add sp, $22                                   ; $742c: $e8 $22
    ld a, h                                       ; $742e: $7c
    ld a, a                                       ; $742f: $7f
    ld e, h                                       ; $7430: $5c
    dec hl                                        ; $7431: $2b
    ret z                                         ; $7432: $c8

    cp b                                          ; $7433: $b8
    and d                                         ; $7434: $a2
    dec b                                         ; $7435: $05
    ld a, l                                       ; $7436: $7d
    db $ed                                        ; $7437: $ed
    ld h, d                                       ; $7438: $62
    dec de                                        ; $7439: $1b
    ld [hl], b                                    ; $743a: $70
    ld a, a                                       ; $743b: $7f
    cp a                                          ; $743c: $bf
    dec b                                         ; $743d: $05
    ld a, l                                       ; $743e: $7d
    dec l                                         ; $743f: $2d
    ld h, l                                       ; $7440: $65
    inc l                                         ; $7441: $2c
    db $10                                        ; $7442: $10
    sub c                                         ; $7443: $91
    ld d, [hl]                                    ; $7444: $56
    add hl, de                                    ; $7445: $19
    dec bc                                        ; $7446: $0b
    inc sp                                        ; $7447: $33
    and b                                         ; $7448: $a0
    ld d, $9d                                     ; $7449: $16 $9d
    ld h, b                                       ; $744b: $60
    adc d                                         ; $744c: $8a
    ld e, l                                       ; $744d: $5d
    xor a                                         ; $744e: $af
    inc d                                         ; $744f: $14
    ld e, l                                       ; $7450: $5d
    add h                                         ; $7451: $84
    rst $28                                       ; $7452: $ef
    ld a, a                                       ; $7453: $7f
    add c                                         ; $7454: $81
    rst $10                                       ; $7455: $d7
    ld e, $ba                                     ; $7456: $1e $ba
    push de                                       ; $7458: $d5
    cp a                                          ; $7459: $bf
    dec de                                        ; $745a: $1b
    ld c, $be                                     ; $745b: $0e $be
    halt                                          ; $745d: $76
    sbc c                                         ; $745e: $99
    sub e                                         ; $745f: $93
    sub [hl]                                      ; $7460: $96
    ld bc, $235c                                  ; $7461: $01 $5c $23
    and b                                         ; $7464: $a0
    pop de                                        ; $7465: $d1
    dec e                                         ; $7466: $1d
    ccf                                           ; $7467: $3f
    db $dd                                        ; $7468: $dd
    ld e, h                                       ; $7469: $5c
    ld de, $bcf2                                  ; $746a: $11 $f2 $bc
    dec b                                         ; $746d: $05
    ld e, c                                       ; $746e: $59
    xor a                                         ; $746f: $af
    xor d                                         ; $7470: $aa
    inc [hl]                                      ; $7471: $34
    ld hl, sp+$5a                                 ; $7472: $f8 $5a
    sub [hl]                                      ; $7474: $96
    add hl, sp                                    ; $7475: $39
    ld l, c                                       ; $7476: $69
    ld e, h                                       ; $7477: $5c
    or c                                          ; $7478: $b1
    ld a, b                                       ; $7479: $78
    ld a, [hl]                                    ; $747a: $7e
    ld h, c                                       ; $747b: $61
    ld e, l                                       ; $747c: $5d
    ld d, a                                       ; $747d: $57
    ld c, h                                       ; $747e: $4c
    or h                                          ; $747f: $b4
    ld a, b                                       ; $7480: $78
    ld a, [hl]                                    ; $7481: $7e
    and c                                         ; $7482: $a1
    inc a                                         ; $7483: $3c
    halt                                          ; $7484: $76
    db $dd                                        ; $7485: $dd
    ld c, d                                       ; $7486: $4a
    db $dd                                        ; $7487: $dd
    sub h                                         ; $7488: $94
    dec hl                                        ; $7489: $2b
    ld l, d                                       ; $748a: $6a
    rrca                                          ; $748b: $0f
    db $dd                                        ; $748c: $dd

Jump_02c_748d:
    adc [hl]                                      ; $748d: $8e
    ld h, d                                       ; $748e: $62
    cpl                                           ; $748f: $2f
    add l                                         ; $7490: $85
    ld a, [$35c9]                                 ; $7491: $fa $c9 $35
    ld [bc], a                                    ; $7494: $02
    xor d                                         ; $7495: $aa
    rst $10                                       ; $7496: $d7
    dec [hl]                                      ; $7497: $35
    cp c                                          ; $7498: $b9
    ld a, [c]                                     ; $7499: $f2
    xor l                                         ; $749a: $ad
    cp [hl]                                       ; $749b: $be
    or $ef                                        ; $749c: $f6 $ef
    ld a, [$5c33]                                 ; $749e: $fa $33 $5c
    ld h, e                                       ; $74a1: $63
    or c                                          ; $74a2: $b1
    sub h                                         ; $74a3: $94
    inc c                                         ; $74a4: $0c
    xor [hl]                                      ; $74a5: $ae
    rlca                                          ; $74a6: $07
    call Call_000_079a                            ; $74a7: $cd $9a $07
    cp [hl]                                       ; $74aa: $be
    and d                                         ; $74ab: $a2
    ld d, l                                       ; $74ac: $55
    xor a                                         ; $74ad: $af
    jp nc, $bca7                                  ; $74ae: $d2 $a7 $bc

    dec b                                         ; $74b1: $05
    ld e, c                                       ; $74b2: $59
    ld a, [hl+]                                   ; $74b3: $2a
    ld b, l                                       ; $74b4: $45
    push af                                       ; $74b5: $f5
    ld c, d                                       ; $74b6: $4a
    sbc l                                         ; $74b7: $9d
    add hl, hl                                    ; $74b8: $29
    ld l, b                                       ; $74b9: $68
    db $e4                                        ; $74ba: $e4
    ld [hl], l                                    ; $74bb: $75
    ld h, e                                       ; $74bc: $63
    ld l, [hl]                                    ; $74bd: $6e
    xor [hl]                                      ; $74be: $ae
    dec e                                         ; $74bf: $1d
    cp h                                          ; $74c0: $bc
    inc l                                         ; $74c1: $2c
    db $f4                                        ; $74c2: $f4
    db $eb                                        ; $74c3: $eb
    ld [hl], $fd                                  ; $74c4: $36 $fd
    dec [hl]                                      ; $74c6: $35
    ld a, [c]                                     ; $74c7: $f2
    ld a, b                                       ; $74c8: $78
    rst $38                                       ; $74c9: $ff
    xor e                                         ; $74ca: $ab
    ld [hl], $71                                  ; $74cb: $36 $71
    dec sp                                        ; $74cd: $3b
    jp hl                                         ; $74ce: $e9


    cpl                                           ; $74cf: $2f
    ld l, l                                       ; $74d0: $6d
    ld c, b                                       ; $74d1: $48
    or e                                          ; $74d2: $b3
    ld [hl], h                                    ; $74d3: $74
    jp c, Jump_02c_55d0                           ; $74d4: $da $d0 $55

    ld a, e                                       ; $74d7: $7b
    ld l, b                                       ; $74d8: $68
    dec bc                                        ; $74d9: $0b
    daa                                           ; $74da: $27
    jp Jump_02c_415d                              ; $74db: $c3 $5d $41


    push af                                       ; $74de: $f5
    ld l, $2d                                     ; $74df: $2e $2d
    inc bc                                        ; $74e1: $03
    ld e, d                                       ; $74e2: $5a
    or [hl]                                       ; $74e3: $b6
    add $df                                       ; $74e4: $c6 $df
    rst $38                                       ; $74e6: $ff
    sbc d                                         ; $74e7: $9a
    cp $6e                                        ; $74e8: $fe $6e
    rla                                           ; $74ea: $17
    db $db                                        ; $74eb: $db
    ld a, $4b                                     ; $74ec: $3e $4b
    or l                                          ; $74ee: $b5
    add a                                         ; $74ef: $87
    or [hl]                                       ; $74f0: $b6
    and a                                         ; $74f1: $a7
    db $fd                                        ; $74f2: $fd
    and l                                         ; $74f3: $a5
    ld l, [hl]                                    ; $74f4: $6e
    rst $20                                       ; $74f5: $e7
    ccf                                           ; $74f6: $3f
    ld [hl], e                                    ; $74f7: $73
    sbc [hl]                                      ; $74f8: $9e
    ld l, a                                       ; $74f9: $6f
    ld e, l                                       ; $74fa: $5d
    ret c                                         ; $74fb: $d8

    add sp, -$72                                  ; $74fc: $e8 $8e
    sbc a                                         ; $74fe: $9f
    ld l, [hl]                                    ; $74ff: $6e
    xor [hl]                                      ; $7500: $ae
    ld [$1ed5], sp                                ; $7501: $08 $d5 $1e
    jp c, $f502                                   ; $7504: $da $02 $f5

    or l                                          ; $7507: $b5
    xor a                                         ; $7508: $af
    add l                                         ; $7509: $85
    ld h, c                                       ; $750a: $61
    xor h                                         ; $750b: $ac
    ld [$d2ba], a                                 ; $750c: $ea $ba $d2
    ld a, [de]                                    ; $750f: $1a
    adc e                                         ; $7510: $8b
    ld e, l                                       ; $7511: $5d
    ld e, d                                       ; $7512: $5a
    ld b, $b4                                     ; $7513: $06 $b4
    db $eb                                        ; $7515: $eb
    xor [hl]                                      ; $7516: $ae
    and b                                         ; $7517: $a0
    cp h                                          ; $7518: $bc
    dec b                                         ; $7519: $05
    rst $00                                       ; $751a: $c7
    ld d, [hl]                                    ; $751b: $56
    ld d, l                                       ; $751c: $55
    ld [hl], d                                    ; $751d: $72

jr_02c_751e:
    ld [hl], h                                    ; $751e: $74
    ld d, a                                       ; $751f: $57
    inc l                                         ; $7520: $2c
    ld a, d                                       ; $7521: $7a
    ld [hl], b                                    ; $7522: $70
    ld d, l                                       ; $7523: $55
    ld a, [$f834]                                 ; $7524: $fa $34 $f8
    ei                                            ; $7527: $fb
    rrca                                          ; $7528: $0f
    jr @+$1b                                      ; $7529: $18 $19

    db $e4                                        ; $752b: $e4
    db $db                                        ; $752c: $db
    ld d, c                                       ; $752d: $51
    sbc l                                         ; $752e: $9d
    cpl                                           ; $752f: $2f
    ld [$abd5], sp                                ; $7530: $08 $d5 $ab
    ld e, $e6                                     ; $7533: $1e $e6
    dec l                                         ; $7535: $2d
    sbc l                                         ; $7536: $9d
    cp h                                          ; $7537: $bc
    ld l, [hl]                                    ; $7538: $6e
    inc l                                         ; $7539: $2c
    add l                                         ; $753a: $85
    ld a, [$1dc9]                                 ; $753b: $fa $c9 $1d
    ld l, e                                       ; $753e: $6b
    xor $35                                       ; $753f: $ee $35
    ld sp, hl                                     ; $7541: $f9
    halt                                          ; $7542: $76
    jr c, jr_02c_75c0                             ; $7543: $38 $7b

    ld a, [$73d7]                                 ; $7545: $fa $d7 $73
    dec c                                         ; $7548: $0d
    cp [hl]                                       ; $7549: $be
    halt                                          ; $754a: $76
    or c                                          ; $754b: $b1
    ld e, a                                       ; $754c: $5f
    jr z, jr_02c_751e                             ; $754d: $28 $cf

    di                                            ; $754f: $f3
    dec e                                         ; $7550: $1d
    pop af                                        ; $7551: $f1
    cp $ec                                        ; $7552: $fe $ec
    ld a, a                                       ; $7554: $7f
    ld h, h                                       ; $7555: $64
    db $e4                                        ; $7556: $e4
    ld h, c                                       ; $7557: $61
    add sp, -$56                                  ; $7558: $e8 $aa
    ld c, l                                       ; $755a: $4d
    ld l, h                                       ; $755b: $6c
    ld bc, $9547                                  ; $755c: $01 $47 $95
    and d                                         ; $755f: $a2
    add hl, hl                                    ; $7560: $29
    ld l, b                                       ; $7561: $68
    sub l                                         ; $7562: $95
    or c                                          ; $7563: $b1
    ld a, $a6                                     ; $7564: $3e $a6
    ld sp, $ca03                                  ; $7566: $31 $03 $ca
    or a                                          ; $7569: $b7
    xor h                                         ; $756a: $ac
    ld d, a                                       ; $756b: $57
    ld d, l                                       ; $756c: $55
    ld a, [$b8b4]                                 ; $756d: $fa $b4 $b8
    ld e, e                                       ; $7570: $5b
    db $d3                                        ; $7571: $d3
    xor b                                         ; $7572: $a8
    inc d                                         ; $7573: $14
    push de                                       ; $7574: $d5
    and e                                         ; $7575: $a3
    ld a, d                                       ; $7576: $7a
    ld a, [hl+]                                   ; $7577: $2a
    ld b, l                                       ; $7578: $45
    or l                                          ; $7579: $b5
    add a                                         ; $757a: $87
    or [hl]                                       ; $757b: $b6
    ld b, a                                       ; $757c: $47
    sub l                                         ; $757d: $95
    and d                                         ; $757e: $a2
    ld e, l                                       ; $757f: $5d
    ld [hl], a                                    ; $7580: $77
    dec b                                         ; $7581: $05
    db $ed                                        ; $7582: $ed
    ld e, b                                       ; $7583: $58
    pop af                                        ; $7584: $f1
    di                                            ; $7585: $f3
    sub b                                         ; $7586: $90
    and l                                         ; $7587: $a5
    ld a, h                                       ; $7588: $7c
    db $eb                                        ; $7589: $eb
    db $f4                                        ; $758a: $f4
    jr nz, jr_02c_75e3                            ; $758b: $20 $56

    inc d                                         ; $758d: $14
    ld h, e                                       ; $758e: $63
    ld e, c                                       ; $758f: $59
    add l                                         ; $7590: $85
    ccf                                           ; $7591: $3f
    add $08                                       ; $7592: $c6 $08
    adc d                                         ; $7594: $8a
    ld a, $8d                                     ; $7595: $3e $8d
    dec hl                                        ; $7597: $2b
    add $c6                                       ; $7598: $c6 $c6
    call nc, $ce83                                ; $759a: $d4 $83 $ce
    ld sp, hl                                     ; $759d: $f9
    adc [hl]                                      ; $759e: $8e
    dec hl                                        ; $759f: $2b
    ld sp, $9a6b                                  ; $75a0: $31 $6b $9a
    rst $20                                       ; $75a3: $e7
    and h                                         ; $75a4: $a4
    ld c, a                                       ; $75a5: $4f
    dec hl                                        ; $75a6: $2b
    jp c, $c0f5                                   ; $75a7: $da $f5 $c0

    dec e                                         ; $75aa: $1d
    push hl                                       ; $75ab: $e5
    inc de                                        ; $75ac: $13
    adc l                                         ; $75ad: $8d
    rst $18                                       ; $75ae: $df
    dec c                                         ; $75af: $0d
    ret z                                         ; $75b0: $c8

    dec d                                         ; $75b1: $15
    cp e                                          ; $75b2: $bb
    ret c                                         ; $75b3: $d8

    cpl                                           ; $75b4: $2f
    inc d                                         ; $75b5: $14
    ld a, c                                       ; $75b6: $79
    dec bc                                        ; $75b7: $0b
    dec e                                         ; $75b8: $1d
    db $e4                                        ; $75b9: $e4
    rla                                           ; $75ba: $17
    sub $26                                       ; $75bb: $d6 $26
    or [hl]                                       ; $75bd: $b6
    ld b, a                                       ; $75be: $47
    cp h                                          ; $75bf: $bc

jr_02c_75c0:
    sbc a                                         ; $75c0: $9f
    sbc h                                         ; $75c1: $9c
    ret c                                         ; $75c2: $d8

    ld c, e                                       ; $75c3: $4b
    and c                                         ; $75c4: $a1
    cp $d2                                        ; $75c5: $fe $d2
    ld b, $b4                                     ; $75c7: $06 $b4
    ret nc                                        ; $75c9: $d0

    ld a, [hl+]                                   ; $75ca: $2a
    ld de, $a6b9                                  ; $75cb: $11 $b9 $a6
    ccf                                           ; $75ce: $3f
    ld a, a                                       ; $75cf: $7f
    ld b, b                                       ; $75d0: $40
    jp z, Jump_000_275b                           ; $75d1: $ca $5b $27

    db $fd                                        ; $75d4: $fd
    reti                                          ; $75d5: $d9


    ld d, d                                       ; $75d6: $52
    xor b                                         ; $75d7: $a8
    cp a                                          ; $75d8: $bf
    db $eb                                        ; $75d9: $eb
    ld d, l                                       ; $75da: $55
    sub l                                         ; $75db: $95
    cp $75                                        ; $75dc: $fe $75
    ld c, e                                       ; $75de: $4b
    xor $58                                       ; $75df: $ee $58
    ld [hl], e                                    ; $75e1: $73
    xor a                                         ; $75e2: $af

jr_02c_75e3:
    ret                                           ; $75e3: $c9


    or a                                          ; $75e4: $b7
    db $d3                                        ; $75e5: $d3
    ld l, a                                       ; $75e6: $6f
    adc [hl]                                      ; $75e7: $8e
    ld l, c                                       ; $75e8: $69
    call nc, $ad8a                                ; $75e9: $d4 $8a $ad
    ld h, b                                       ; $75ec: $60
    sub b                                         ; $75ed: $90
    sub [hl]                                      ; $75ee: $96
    ld bc, $5b2d                                  ; $75ef: $01 $2d $5b
    and e                                         ; $75f2: $a3
    cp e                                          ; $75f3: $bb
    pop hl                                        ; $75f4: $e1
    ld hl, sp-$05                                 ; $75f5: $f8 $fb
    rst $38                                       ; $75f7: $ff
    and [hl]                                      ; $75f8: $a6
    adc c                                         ; $75f9: $89
    add $d8                                       ; $75fa: $c6 $d8
    db $ec                                        ; $75fc: $ec
    ld h, d                                       ; $75fd: $62
    adc e                                         ; $75fe: $8b
    db $e4                                        ; $75ff: $e4
    dec hl                                        ; $7600: $2b
    adc d                                         ; $7601: $8a
    add hl, de                                    ; $7602: $19
    sub b                                         ; $7603: $90
    dec hl                                        ; $7604: $2b
    ld h, [hl]                                    ; $7605: $66
    jp hl                                         ; $7606: $e9


    or h                                          ; $7607: $b4
    and c                                         ; $7608: $a1
    dec hl                                        ; $7609: $2b
    ld a, [c]                                     ; $760a: $f2
    ld d, $47                                     ; $760b: $16 $47
    cp h                                          ; $760d: $bc
    sbc a                                         ; $760e: $9f
    db $fd                                        ; $760f: $fd

jr_02c_7610:
    ret nz                                        ; $7610: $c0

    sub e                                         ; $7611: $93
    ld d, e                                       ; $7612: $53
    ld d, b                                       ; $7613: $50
    cp l                                          ; $7614: $bd
    ld c, e                                       ; $7615: $4b
    res 0, b                                      ; $7616: $cb $80
    halt                                          ; $7618: $76
    db $dd                                        ; $7619: $dd
    dec d                                         ; $761a: $15
    or h                                          ; $761b: $b4
    and d                                         ; $761c: $a2
    ld [hl], l                                    ; $761d: $75
    ld a, h                                       ; $761e: $7c
    ret nz                                        ; $761f: $c0

    adc e                                         ; $7620: $8b
    add hl, sp                                    ; $7621: $39
    rst $18                                       ; $7622: $df
    ld d, c                                       ; $7623: $51
    sbc l                                         ; $7624: $9d
    dec de                                        ; $7625: $1b
    ld d, a                                       ; $7626: $57
    ld b, h                                       ; $7627: $44
    db $ed                                        ; $7628: $ed
    and c                                         ; $7629: $a1
    dec l                                         ; $762a: $2d
    dec e                                         ; $762b: $1d
    inc c                                         ; $762c: $0c
    ld h, e                                       ; $762d: $63
    rrca                                          ; $762e: $0f
    jr nc, jr_02c_7610                            ; $762f: $30 $df

    or c                                          ; $7631: $b1
    or a                                          ; $7632: $b7
    ld d, l                                       ; $7633: $55
    add [hl]                                      ; $7634: $86
    or c                                          ; $7635: $b1
    inc c                                         ; $7636: $0c
    call c, Call_02c_5415                         ; $7637: $dc $15 $54
    rst $28                                       ; $763a: $ef
    jp nc, $a032                                  ; $763b: $d2 $32 $a0

    pop de                                        ; $763e: $d1
    db $dd                                        ; $763f: $dd
    ld h, d                                       ; $7640: $62
    ld bc, $a2be                                  ; $7641: $01 $be $a2
    and l                                         ; $7644: $a5
    db $fd                                        ; $7645: $fd
    ld a, l                                       ; $7646: $7d
    xor d                                         ; $7647: $aa
    dec a                                         ; $7648: $3d
    ld [hl], h                                    ; $7649: $74
    sbc l                                         ; $764a: $9d
    xor $8a                                       ; $764b: $ee $8a
    and l                                         ; $764d: $a5
    ld d, b                                       ; $764e: $50
    ccf                                           ; $764f: $3f
    rst $08                                       ; $7650: $cf
    di                                            ; $7651: $f3
    dec d                                         ; $7652: $15
    ret nz                                        ; $7653: $c0

    jp c, $5b43                                   ; $7654: $da $43 $5b

    rst $00                                       ; $7657: $c7
    add sp, $39                                   ; $7658: $e8 $39
    ld c, e                                       ; $765a: $4b
    ret                                           ; $765b: $c9


    dec e                                         ; $765c: $1d
    db $ed                                        ; $765d: $ed
    ld [c], a                                     ; $765e: $e2
    ret                                           ; $765f: $c9


    add hl, de                                    ; $7660: $19
    and e                                         ; $7661: $a3
    di                                            ; $7662: $f3
    db $eb                                        ; $7663: $eb
    ld sp, $620f                                  ; $7664: $31 $0f $62
    inc c                                         ; $7667: $0c
    xor h                                         ; $7668: $ac
    and e                                         ; $7669: $a3
    db $fc                                        ; $766a: $fc
    xor d                                         ; $766b: $aa
    xor c                                         ; $766c: $a9
    dec a                                         ; $766d: $3d
    or h                                          ; $766e: $b4
    dec b                                         ; $766f: $05
    daa                                           ; $7670: $27
    ld bc, $8726                                  ; $7671: $01 $26 $87
    ld h, l                                       ; $7674: $65
    ld a, [bc]                                    ; $7675: $0a
    ld a, [de]                                    ; $7676: $1a
    rla                                           ; $7677: $17
    ld h, e                                       ; $7678: $63
    sbc a                                         ; $7679: $9f
    ld h, [hl]                                    ; $767a: $66
    adc h                                         ; $767b: $8c
    xor [hl]                                      ; $767c: $ae
    dec d                                         ; $767d: $15
    push bc                                       ; $767e: $c5
    inc c                                         ; $767f: $0c
    ret z                                         ; $7680: $c8

    dec d                                         ; $7681: $15
    ld l, e                                       ; $7682: $6b
    db $fc                                        ; $7683: $fc
    sub [hl]                                      ; $7684: $96
    ld d, $45                                     ; $7685: $16 $45
    sbc $02                                       ; $7687: $de $02
    rst $00                                       ; $7689: $c7
    sbc $92                                       ; $768a: $de $92
    dec sp                                        ; $768c: $3b
    push hl                                       ; $768d: $e5
    db $fd                                        ; $768e: $fd
    db $e4                                        ; $768f: $e4
    ld [$8616], sp                                ; $7690: $08 $16 $86
    or c                                          ; $7693: $b1
    inc c                                         ; $7694: $0c
    ldh [$ae], a                                  ; $7695: $e0 $ae
    cp e                                          ; $7697: $bb
    add d                                         ; $7698: $82

Call_02c_7699:
    ld l, d                                       ; $7699: $6a
    rrca                                          ; $769a: $0f
    ld l, l                                       ; $769b: $6d
    ld bc, $e8c7                                  ; $769c: $01 $c7 $e8
    add hl, sp                                    ; $769f: $39
    ld c, e                                       ; $76a0: $4b
    ret                                           ; $76a1: $c9


    ld e, l                                       ; $76a2: $5d
    jp c, Jump_000_2bbf                           ; $76a3: $da $bf $2b

    ld l, b                                       ; $76a6: $68
    adc l                                         ; $76a7: $8d
    push bc                                       ; $76a8: $c5
    sbc d                                         ; $76a9: $9a
    ld d, a                                       ; $76aa: $57
    ld [hl], b                                    ; $76ab: $70
    ld e, h                                       ; $76ac: $5c
    ld c, e                                       ; $76ad: $4b
    ld h, e                                       ; $76ae: $63
    ld h, a                                       ; $76af: $67
    ld sp, hl                                     ; $76b0: $f9
    ld [hl-], a                                   ; $76b1: $32
    and b                                         ; $76b2: $a0
    sub d                                         ; $76b3: $92
    add c                                         ; $76b4: $81
    dec sp                                        ; $76b5: $3b
    db $fc                                        ; $76b6: $fc
    jp c, $16c4                                   ; $76b7: $da $c4 $16

    ld e, c                                       ; $76ba: $59
    ld [hl], a                                    ; $76bb: $77
    dec b                                         ; $76bc: $05
    dec l                                         ; $76bd: $2d
    inc bc                                        ; $76be: $03
    ld e, b                                       ; $76bf: $58
    ld a, e                                       ; $76c0: $7b
    ld l, b                                       ; $76c1: $68
    dec bc                                        ; $76c2: $0b
    rst $00                                       ; $76c3: $c7
    sub l                                         ; $76c4: $95
    ld sp, $b406                                  ; $76c5: $31 $06 $b4
    ld a, [bc]                                    ; $76c8: $0a
    dec b                                         ; $76c9: $05
    sbc l                                         ; $76ca: $9d
    ld d, a                                       ; $76cb: $57
    cp l                                          ; $76cc: $bd
    ld c, a                                       ; $76cd: $4f
    ld a, [c]                                     ; $76ce: $f2
    ld [hl], c                                    ; $76cf: $71
    ei                                            ; $76d0: $fb
    or c                                          ; $76d1: $b1
    and d                                         ; $76d2: $a2
    sbc l                                         ; $76d3: $9d
    ld h, a                                       ; $76d4: $67
    xor h                                         ; $76d5: $ac
    rst $30                                       ; $76d6: $f7
    sub e                                         ; $76d7: $93
    dec hl                                        ; $76d8: $2b
    ld a, [de]                                    ; $76d9: $1a
    cp c                                          ; $76da: $b9
    pop hl                                        ; $76db: $e1
    rra                                           ; $76dc: $1f
    ld h, e                                       ; $76dd: $63
    ld l, e                                       ; $76de: $6b
    call z, Call_000_3d09                         ; $76df: $cc $09 $3d
    ld l, a                                       ; $76e2: $6f
    ld bc, $6a27                                  ; $76e3: $01 $27 $6a
    adc h                                         ; $76e6: $8c
    xor l                                         ; $76e7: $ad
    or c                                          ; $76e8: $b1
    jr @-$05                                      ; $76e9: $18 $f9

    ld l, e                                       ; $76eb: $6b
    ld d, [hl]                                    ; $76ec: $56
    ld e, $fe                                     ; $76ed: $1e $fe
    db $e4                                        ; $76ef: $e4
    adc d                                         ; $76f0: $8a
    ld b, [hl]                                    ; $76f1: $46
    ld l, [hl]                                    ; $76f2: $6e
    ld hl, sp-$39                                 ; $76f3: $f8 $c7
    ret c                                         ; $76f5: $d8

    ld hl, sp-$53                                 ; $76f6: $f8 $ad
    ld [hl-], a                                   ; $76f8: $32
    ld [hl], a                                    ; $76f9: $77
    ld a, c                                       ; $76fa: $79
    sbc $02                                       ; $76fb: $de $02
    ld b, a                                       ; $76fd: $47
    db $fd                                        ; $76fe: $fd
    ld sp, $090f                                  ; $76ff: $31 $0f $09
    ld e, h                                       ; $7702: $5c
    or l                                          ; $7703: $b5
    adc c                                         ; $7704: $89
    dec l                                         ; $7705: $2d
    rst $00                                       ; $7706: $c7
    sub l                                         ; $7707: $95
    ret c                                         ; $7708: $d8

    ei                                            ; $7709: $fb
    or h                                          ; $770a: $b4
    ld [hl], d                                    ; $770b: $72
    scf                                           ; $770c: $37
    db $f4                                        ; $770d: $f4
    and l                                         ; $770e: $a5
    ld d, b                                       ; $770f: $50
    ld a, a                                       ; $7710: $7f
    ld b, l                                       ; $7711: $45
    or c                                          ; $7712: $b1
    db $db                                        ; $7713: $db
    push af                                       ; $7714: $f5
    ld a, [bc]                                    ; $7715: $0a
    jp z, $9763                                   ; $7716: $ca $63 $97

    adc b                                         ; $7719: $88
    inc [hl]                                      ; $771a: $34
    ei                                            ; $771b: $fb
    rst $38                                       ; $771c: $ff
    and [hl]                                      ; $771d: $a6
    cp h                                          ; $771e: $bc
    dec b                                         ; $771f: $05
    daa                                           ; $7720: $27
    ld l, b                                       ; $7721: $68
    rla                                           ; $7722: $17
    ld e, e                                       ; $7723: $5b
    jp hl                                         ; $7724: $e9


    ld [hl], c                                    ; $7725: $71
    adc l                                         ; $7726: $8d
    ld h, l                                       ; $7727: $65
    xor [hl]                                      ; $7728: $ae
    ld sp, $14b6                                  ; $7729: $31 $b6 $14
    ld [$7753], a                                 ; $772c: $ea $53 $77
    or h                                          ; $772f: $b4
    ret nz                                        ; $7730: $c0

    ld [hl], h                                    ; $7731: $74
    cp d                                          ; $7732: $ba
    ret z                                         ; $7733: $c8

    ld d, a                                       ; $7734: $57
    inc [hl]                                      ; $7735: $34
    ld a, [hl]                                    ; $7736: $7e
    ld l, e                                       ; $7737: $6b
    call z, Call_02c_6f29                         ; $7738: $cc $29 $6f
    ld bc, $b5f5                                  ; $773b: $01 $f5 $b5
    nop                                           ; $773e: $00
    adc h                                         ; $773f: $8c
    ld sp, $30fa                                  ; $7740: $31 $fa $30

Jump_02c_7743:
    cp e                                          ; $7743: $bb

jr_02c_7744:
    xor [hl]                                      ; $7744: $ae
    ld d, a                                       ; $7745: $57
    dec [hl]                                      ; $7746: $35
    add $fa                                       ; $7747: $c6 $fa
    ld a, [c]                                     ; $7749: $f2
    ld d, l                                       ; $774a: $55
    rst $28                                       ; $774b: $ef
    xor a                                         ; $774c: $af
    ld de, $d521                                  ; $774d: $11 $21 $d5
    ld c, e                                       ; $7750: $4b
    ld h, e                                       ; $7751: $63
    adc c                                         ; $7752: $89
    cp h                                          ; $7753: $bc
    dec b                                         ; $7754: $05
    daa                                           ; $7755: $27
    jr z, @-$28                                   ; $7756: $28 $d6

    pop hl                                        ; $7758: $e1
    dec d                                         ; $7759: $15
    ld c, $b1                                     ; $775a: $0e $b1
    xor a                                         ; $775c: $af
    ld e, l                                       ; $775d: $5d
    xor a                                         ; $775e: $af
    ld l, d                                       ; $775f: $6a
    ld e, h                                       ; $7760: $5c
    rst $38                                       ; $7761: $ff
    db $eb                                        ; $7762: $eb
    db $d3                                        ; $7763: $d3
    ld a, [de]                                    ; $7764: $1a
    ld bc, $ebd5                                  ; $7765: $01 $d5 $eb
    sbc d                                         ; $7768: $9a
    ld e, h                                       ; $7769: $5c
    ld [hl], e                                    ; $776a: $73
    call nc, $9d5f                                ; $776b: $d4 $5f $9d
    dec d                                         ; $776e: $15
    ld e, e                                       ; $776f: $5b
    ld h, l                                       ; $7770: $65
    inc l                                         ; $7771: $2c
    ld d, h                                       ; $7772: $54
    ld [hl], d                                    ; $7773: $72
    sub l                                         ; $7774: $95
    ld h, c                                       ; $7775: $61
    inc c                                         ; $7776: $0c
    ld c, e                                       ; $7777: $4b
    inc l                                         ; $7778: $2c
    adc h                                         ; $7779: $8c
    pop de                                        ; $777a: $d1
    and a                                         ; $777b: $a7
    ld e, l                                       ; $777c: $5d
    rst $28                                       ; $777d: $ef
    rlca                                          ; $777e: $07
    add hl, sp                                    ; $777f: $39
    and b                                         ; $7780: $a0
    ld l, e                                       ; $7781: $6b
    db $fc                                        ; $7782: $fc
    xor [hl]                                      ; $7783: $ae
    adc $97                                       ; $7784: $ce $97
    ld c, d                                       ; $7786: $4a
    pop de                                        ; $7787: $d1
    and a                                         ; $7788: $a7
    jr jr_02c_7744                                ; $7789: $18 $b9

    pop hl                                        ; $778b: $e1
    adc a                                         ; $778c: $8f
    cp h                                          ; $778d: $bc
    dec b                                         ; $778e: $05
    push af                                       ; $778f: $f5
    rst $28                                       ; $7790: $ef
    add [hl]                                      ; $7791: $86
    ld h, e                                       ; $7792: $63
    ld [hl], a                                    ; $7793: $77
    ld c, c                                       ; $7794: $49
    ld a, [de]                                    ; $7795: $1a
    rst $10                                       ; $7796: $d7
    ld e, h                                       ; $7797: $5c
    sbc a                                         ; $7798: $9f
    ld e, h                                       ; $7799: $5c
    ld a, $d1                                     ; $779a: $3e $d1
    cp b                                          ; $779c: $b8
    ld d, [hl]                                    ; $779d: $56
    ld l, c                                       ; $779e: $69
    db $fc                                        ; $779f: $fc
    sub [hl]                                      ; $77a0: $96
    ld [hl-], a                                   ; $77a1: $32
    ld [hl], a                                    ; $77a2: $77
    adc e                                         ; $77a3: $8b
    sub b                                         ; $77a4: $90
    adc a                                         ; $77a5: $8f
    ld l, e                                       ; $77a6: $6b
    sub a                                         ; $77a7: $97

Jump_02c_77a8:
    ld h, d                                       ; $77a8: $62
    ld c, h                                       ; $77a9: $4c
    rst $10                                       ; $77aa: $d7
    and h                                         ; $77ab: $a4
    ld c, d                                       ; $77ac: $4a
    sbc a                                         ; $77ad: $9f
    ld h, d                                       ; $77ae: $62
    push de                                       ; $77af: $d5
    dec hl                                        ; $77b0: $2b
    inc e                                         ; $77b1: $1c
    ld [hl+], a                                   ; $77b2: $22
    rst $18                                       ; $77b3: $df
    ld [hl], c                                    ; $77b4: $71
    dec h                                         ; $77b5: $25
    add $72                                       ; $77b6: $c6 $72
    inc hl                                        ; $77b8: $23
    jp nc, $daa7                                  ; $77b9: $d2 $a7 $da

    call nz, $f516                                ; $77bc: $c4 $16 $f5
    rst $28                                       ; $77bf: $ef
    add [hl]                                      ; $77c0: $86
    ld h, e                                       ; $77c1: $63
    ccf                                           ; $77c2: $3f

jr_02c_77c3:
    ld [hl], a                                    ; $77c3: $77
    add c                                         ; $77c4: $81
    adc a                                         ; $77c5: $8f
    ld l, e                                       ; $77c6: $6b
    call $9273                                    ; $77c7: $cd $73 $92
    adc a                                         ; $77ca: $8f
    dec hl                                        ; $77cb: $2b
    add $74                                       ; $77cc: $c6 $74
    ld c, l                                       ; $77ce: $4d
    xor d                                         ; $77cf: $aa
    db $f4                                        ; $77d0: $f4
    add hl, hl                                    ; $77d1: $29
    ld d, [hl]                                    ; $77d2: $56
    cp l                                          ; $77d3: $bd
    jp nz, $9221                                  ; $77d4: $c2 $21 $92

    xor e                                         ; $77d7: $ab
    inc c                                         ; $77d8: $0c
    ld h, e                                       ; $77d9: $63
    ld b, l                                       ; $77da: $45
    ldh [$b1], a                                  ; $77db: $e0 $b1
    adc e                                         ; $77dd: $8b
    ld l, l                                       ; $77de: $6d
    db $10                                        ; $77df: $10
    ld bc, $58ae                                  ; $77e0: $01 $ae $58
    cp h                                          ; $77e3: $bc
    ld c, a                                       ; $77e4: $4f
    dec bc                                        ; $77e5: $0b
    ld l, b                                       ; $77e6: $68
    db $e4                                        ; $77e7: $e4
    or l                                          ; $77e8: $b5
    adc c                                         ; $77e9: $89
    dec l                                         ; $77ea: $2d
    push af                                       ; $77eb: $f5
    rst $28                                       ; $77ec: $ef
    adc d                                         ; $77ed: $8a
    and [hl]                                      ; $77ee: $a6
    xor [hl]                                      ; $77ef: $ae
    ld l, e                                       ; $77f0: $6b
    add hl, de                                    ; $77f1: $19
    ret nc                                        ; $77f2: $d0

    ld l, $c5                                     ; $77f3: $2e $c5
    sbc b                                         ; $77f5: $98
    xor [hl]                                      ; $77f6: $ae
    ld c, c                                       ; $77f7: $49
    sub l                                         ; $77f8: $95
    ld a, $c5                                     ; $77f9: $3e $c5
    xor d                                         ; $77fb: $aa
    ld d, a                                       ; $77fc: $57
    jr c, jr_02c_77c3                             ; $77fd: $38 $c4

    cp [hl]                                       ; $77ff: $be
    ld d, [hl]                                    ; $7800: $56
    ld l, c                                       ; $7801: $69
    jp hl                                         ; $7802: $e9


    rst $30                                       ; $7803: $f7
    ld l, c                                       ; $7804: $69
    adc l                                         ; $7805: $8d
    push bc                                       ; $7806: $c5
    cp b                                          ; $7807: $b8
    add $f2                                       ; $7808: $c6 $f2
    rla                                           ; $780a: $17
    and c                                         ; $780b: $a1
    ld e, b                                       ; $780c: $58
    ld e, d                                       ; $780d: $5a
    ld de, $bc8a                                  ; $780e: $11 $8a $bc
    dec b                                         ; $7811: $05
    rst $00                                       ; $7812: $c7
    sub l                                         ; $7813: $95
    and l                                         ; $7814: $a5
    dec c                                         ; $7815: $0d
    cp b                                          ; $7816: $b8
    dec de                                        ; $7817: $1b
    jp nc, $afe0                                  ; $7818: $d2 $e0 $af

    ld de, $29ac                                  ; $781b: $11 $ac $29
    db $10                                        ; $781e: $10
    db $e3                                        ; $781f: $e3
    ld e, d                                       ; $7820: $5a
    jp z, $15fe                                   ; $7821: $ca $fe $15

    dec bc                                        ; $7824: $0b
    ldh a, [$5d]                                  ; $7825: $f0 $5d
    ld e, d                                       ; $7827: $5a
    ld b, $0c                                     ; $7828: $06 $0c
    di                                            ; $782a: $f3
    ld d, $9d                                     ; $782b: $16 $9d
    ld h, b                                       ; $782d: $60
    sub a                                         ; $782e: $97
    ccf                                           ; $782f: $3f
    adc h                                         ; $7830: $8c
    ld h, l                                       ; $7831: $65
    ld b, b                                       ; $7832: $40
    set 2, [hl]                                   ; $7833: $cb $d6
    cp b                                          ; $7835: $b8
    jr jr_02c_786f                                ; $7836: $18 $37

    adc h                                         ; $7838: $8c
    and l                                         ; $7839: $a5
    dec c                                         ; $783a: $0d
    ld e, l                                       ; $783b: $5d
    dec bc                                        ; $783c: $0b
    ld h, h                                       ; $783d: $64
    ld a, l                                       ; $783e: $7d
    call $f3a0                                    ; $783f: $cd $a0 $f3
    ld a, [hl-]                                   ; $7842: $3a
    cp h                                          ; $7843: $bc
    jp nz, Jump_02c_6a21                          ; $7844: $c2 $21 $6a

    rrca                                          ; $7847: $0f
    ld l, l                                       ; $7848: $6d
    ld bc, $35f5                                  ; $7849: $01 $f5 $35
    ld b, [hl]                                    ; $784c: $46
    ret nc                                        ; $784d: $d0

    ld a, c                                       ; $784e: $79
    call z, Call_02c_5f43                         ; $784f: $cc $43 $5f
    rst $00                                       ; $7852: $c7
    rlca                                          ; $7853: $07
    cp h                                          ; $7854: $bc
    sbc b                                         ; $7855: $98
    di                                            ; $7856: $f3
    jp hl                                         ; $7857: $e9


    xor a                                         ; $7858: $af
    ld [hl], c                                    ; $7859: $71
    ld d, l                                       ; $785a: $55
    jr z, @-$2f                                   ; $785b: $28 $cf

    ld e, e                                       ; $785d: $5b
    push af                                       ; $785e: $f5
    dec [hl]                                      ; $785f: $35
    ld b, $f5                                     ; $7860: $06 $f5
    ld h, e                                       ; $7862: $63
    ld e, h                                       ; $7863: $5c
    dec hl                                        ; $7864: $2b
    rrca                                          ; $7865: $0f
    rst $38                                       ; $7866: $ff
    sbc d                                         ; $7867: $9a
    rlca                                          ; $7868: $07
    ld a, $2b                                     ; $7869: $3e $2b
    ld b, l                                       ; $786b: $45
    cp [hl]                                       ; $786c: $be
    ld a, [hl-]                                   ; $786d: $3a
    db $eb                                        ; $786e: $eb

jr_02c_786f:
    ld hl, sp-$80                                 ; $786f: $f8 $80
    rla                                           ; $7871: $17
    ld [hl], e                                    ; $7872: $73
    sbc [hl]                                      ; $7873: $9e
    or a                                          ; $7874: $b7
    push af                                       ; $7875: $f5
    rst $28                                       ; $7876: $ef
    adc d                                         ; $7877: $8a
    and [hl]                                      ; $7878: $a6
    xor [hl]                                      ; $7879: $ae
    ld l, e                                       ; $787a: $6b
    add hl, de                                    ; $787b: $19
    ret nc                                        ; $787c: $d0

    or d                                          ; $787d: $b2
    or l                                          ; $787e: $b5
    xor a                                         ; $787f: $af
    ld sp, $b186                                  ; $7880: $31 $86 $b1
    add $62                                       ; $7883: $c6 $62
    ld e, l                                       ; $7885: $5d
    sub e                                         ; $7886: $93
    ld l, e                                       ; $7887: $6b
    sub l                                         ; $7888: $95
    dec d                                         ; $7889: $15
    db $e3                                        ; $788a: $e3
    jp z, $f55b                                   ; $788b: $ca $5b $f5

    rst $28                                       ; $788e: $ef
    add [hl]                                      ; $788f: $86
    sub l                                         ; $7890: $95
    call c, $9630                                 ; $7891: $dc $30 $96
    ld b, d                                       ; $7894: $42
    db $fd                                        ; $7895: $fd
    ld h, l                                       ; $7896: $65
    ld b, b                                       ; $7897: $40
    xor e                                         ; $7898: $ab
    ld l, h                                       ; $7899: $6c
    ld d, l                                       ; $789a: $55
    ld e, l                                       ; $789b: $5d
    rst $10                                       ; $789c: $d7
    ld a, [hl+]                                   ; $789d: $2a
    xor l                                         ; $789e: $ad
    jr jr_02c_78e7                                ; $789f: $18 $46

    ld l, b                                       ; $78a1: $68
    rla                                           ; $78a2: $17
    ei                                            ; $78a3: $fb
    ld h, c                                       ; $78a4: $61
    and b                                         ; $78a5: $a0
    xor a                                         ; $78a6: $af
    ld d, d                                       ; $78a7: $52
    adc h                                         ; $78a8: $8c
    jp hl                                         ; $78a9: $e9


    sbc d                                         ; $78aa: $9a
    ld d, h                                       ; $78ab: $54
    jp hl                                         ; $78ac: $e9


    ld d, e                                       ; $78ad: $53
    db $e4                                        ; $78ae: $e4
    dec l                                         ; $78af: $2d
    ld b, a                                       ; $78b0: $47
    dec b                                         ; $78b1: $05
    push de                                       ; $78b2: $d5
    cp e                                          ; $78b3: $bb
    or h                                          ; $78b4: $b4
    inc c                                         ; $78b5: $0c
    call c, $acb1                                 ; $78b6: $dc $b1 $ac
    ld h, [hl]                                    ; $78b9: $66
    ld b, $6e                                     ; $78ba: $06 $6e
    add e                                         ; $78bc: $83
    cp a                                          ; $78bd: $bf
    inc [hl]                                      ; $78be: $34
    sub [hl]                                      ; $78bf: $96
    xor d                                         ; $78c0: $aa
    or $d0                                        ; $78c1: $f6 $d0
    ld d, $f5                                     ; $78c3: $16 $f5
    rst $28                                       ; $78c5: $ef
    adc d                                         ; $78c6: $8a
    and [hl]                                      ; $78c7: $a6
    xor [hl]                                      ; $78c8: $ae
    ld l, e                                       ; $78c9: $6b
    add hl, de                                    ; $78ca: $19
    ret nc                                        ; $78cb: $d0

    or d                                          ; $78cc: $b2
    rst $28                                       ; $78cd: $ef
    add sp, -$7a                                  ; $78ce: $e8 $86
    xor e                                         ; $78d0: $ab
    or e                                          ; $78d1: $b3
    adc [hl]                                      ; $78d2: $8e
    rrca                                          ; $78d3: $0f
    jp nc, $20f1                                  ; $78d4: $d2 $f1 $20

    sbc l                                         ; $78d7: $9d
    ld l, $ca                                     ; $78d8: $2e $ca
    or a                                          ; $78da: $b7
    ld c, $ef                                     ; $78db: $0e $ef
    xor a                                         ; $78dd: $af
    xor c                                         ; $78de: $a9
    db $eb                                        ; $78df: $eb
    ld e, d                                       ; $78e0: $5a
    call $646e                                    ; $78e1: $cd $6e $64
    ld c, b                                       ; $78e4: $48
    ld a, c                                       ; $78e5: $79
    dec bc                                        ; $78e6: $0b

jr_02c_78e7:
    daa                                           ; $78e7: $27
    jr jr_02c_7930                                ; $78e8: $18 $46

    xor b                                         ; $78ea: $a8
    ld e, [hl]                                    ; $78eb: $5e
    push af                                       ; $78ec: $f5
    ld [hl], b                                    ; $78ed: $70
    reti                                          ; $78ee: $d9


    rrca                                          ; $78ef: $0f
    db $e4                                        ; $78f0: $e4
    ld a, c                                       ; $78f1: $79
    dec bc                                        ; $78f2: $0b
    dec e                                         ; $78f3: $1d
    dec b                                         ; $78f4: $05
    sbc l                                         ; $78f5: $9d
    rst $10                                       ; $78f6: $d7
    ld e, b                                       ; $78f7: $58
    xor h                                         ; $78f8: $ac
    ld sp, $f22f                                  ; $78f9: $31 $2f $f2
    db $e4                                        ; $78fc: $e4
    or d                                          ; $78fd: $b2
    rst $28                                       ; $78fe: $ef
    ld b, $ac                                     ; $78ff: $06 $ac
    ld c, d                                       ; $7901: $4a
    sbc a                                         ; $7902: $9f
    or h                                          ; $7903: $b4
    ld [$c5fd], a                                 ; $7904: $ea $fd $c5
    push af                                       ; $7907: $f5
    ld e, h                                       ; $7908: $5c
    ld a, c                                       ; $7909: $79
    dec bc                                        ; $790a: $0b
    ld e, c                                       ; $790b: $59
    ld [hl], a                                    ; $790c: $77
    dec b                                         ; $790d: $05
    xor l                                         ; $790e: $ad
    ret c                                         ; $790f: $d8

    ld a, [de]                                    ; $7910: $1a
    ld d, a                                       ; $7911: $57
    add l                                         ; $7912: $85
    ld [hl], l                                    ; $7913: $75
    ld e, l                                       ; $7914: $5d
    ld c, e                                       ; $7915: $4b
    ccf                                           ; $7916: $3f
    adc h                                         ; $7917: $8c
    ld h, l                                       ; $7918: $65
    ld b, b                                       ; $7919: $40
    set 2, [hl]                                   ; $791a: $cb $d6
    ld a, [de]                                    ; $791c: $1a
    rst $10                                       ; $791d: $d7
    rst $20                                       ; $791e: $e7
    or c                                          ; $791f: $b1
    and d                                         ; $7920: $a2
    sub c                                         ; $7921: $91
    dec de                                        ; $7922: $1b
    cp $da                                        ; $7923: $fe $da
    call nz, Call_000_1d16                        ; $7925: $c4 $16 $1d
    ld l, h                                       ; $7928: $6c
    ld l, c                                       ; $7929: $69
    db $fd                                        ; $792a: $fd
    xor [hl]                                      ; $792b: $ae
    ret                                           ; $792c: $c9


    dec [hl]                                      ; $792d: $35
    dec b                                         ; $792e: $05
    db $ed                                        ; $792f: $ed

jr_02c_7930:
    ld a, d                                       ; $7930: $7a
    ld hl, sp-$51                                 ; $7931: $f8 $af
    sbc e                                         ; $7933: $9b
    ld a, [c]                                     ; $7934: $f2
    ld d, $27                                     ; $7935: $16 $27
    ld [hl], l                                    ; $7937: $75
    ccf                                           ; $7938: $3f
    dec b                                         ; $7939: $05
    xor l                                         ; $793a: $ad
    ld l, b                                       ; $793b: $68
    rst $20                                       ; $793c: $e7
    add hl, de                                    ; $793d: $19
    db $eb                                        ; $793e: $eb
    db $fd                                        ; $793f: $fd
    ld a, d                                       ; $7940: $7a
    xor [hl]                                      ; $7941: $ae
    jr nz, jr_02c_7947                            ; $7942: $20 $03

    or a                                          ; $7944: $b7
    ld c, a                                       ; $7945: $4f
    or l                                          ; $7946: $b5

jr_02c_7947:
    add a                                         ; $7947: $87
    or [hl]                                       ; $7948: $b6
    daa                                           ; $7949: $27
    ld [hl], l                                    ; $794a: $75
    ccf                                           ; $794b: $3f
    dec b                                         ; $794c: $05
    xor l                                         ; $794d: $ad
    ret c                                         ; $794e: $d8

    jp z, Jump_02c_5ebb                           ; $794f: $ca $bb $5e

    push af                                       ; $7952: $f5
    ld [$d519], sp                                ; $7953: $08 $19 $d5
    ld e, $da                                     ; $7956: $1e $da
    ld [bc], a                                    ; $7958: $02
    ld e, c                                       ; $7959: $59
    ld [hl], a                                    ; $795a: $77
    dec b                                         ; $795b: $05
    dec c                                         ; $795c: $0d
    cp $d8                                        ; $795d: $fe $d8
    rst $28                                       ; $795f: $ef
    ld a, a                                       ; $7960: $7f
    add c                                         ; $7961: $81
    adc a                                         ; $7962: $8f
    ld l, e                                       ; $7963: $6b
    ld l, c                                       ; $7964: $69
    ld b, e                                       ; $7965: $43
    rst $10                                       ; $7966: $d7
    sbc b                                         ; $7967: $98
    ld b, a                                       ; $7968: $47
    xor [hl]                                      ; $7969: $ae
    ld e, l                                       ; $796a: $5d
    rst $28                                       ; $796b: $ef
    ld a, a                                       ; $796c: $7f
    jp $fb08                                      ; $796d: $c3 $08 $fb


    sub a                                         ; $7970: $97
    sub d                                         ; $7971: $92
    db $eb                                        ; $7972: $eb
    sub b                                         ; $7973: $90
    xor a                                         ; $7974: $af
    db $e3                                        ; $7975: $e3
    inc hl                                        ; $7976: $23
    sub d                                         ; $7977: $92
    rst $20                                       ; $7978: $e7
    dec l                                         ; $7979: $2d
    push af                                       ; $797a: $f5
    rst $28                                       ; $797b: $ef
    add [hl]                                      ; $797c: $86
    ld h, e                                       ; $797d: $63
    ld [hl], a                                    ; $797e: $77
    ld c, c                                       ; $797f: $49
    ld a, [de]                                    ; $7980: $1a
    rst $10                                       ; $7981: $d7
    jp nc, $ae86                                  ; $7982: $d2 $86 $ae

    dec [hl]                                      ; $7985: $35
    and $84                                       ; $7986: $e6 $84
    ld a, [de]                                    ; $7988: $1a
    add a                                         ; $7989: $87
    ld h, l                                       ; $798a: $65
    dec d                                         ; $798b: $15
    ld c, b                                       ; $798c: $48
    adc l                                         ; $798d: $8d
    dec hl                                        ; $798e: $2b
    sub [hl]                                      ; $798f: $96
    push af                                       ; $7990: $f5
    ld c, d                                       ; $7991: $4a
    pop de                                        ; $7992: $d1
    ld b, l                                       ; $7993: $45
    ld hl, sp-$02                                 ; $7994: $f8 $fe
    rla                                           ; $7996: $17
    ld a, b                                       ; $7997: $78
    adc h                                         ; $7998: $8c
    ld l, e                                       ; $7999: $6b
    ld e, c                                       ; $799a: $59
    and $a4                                       ; $799b: $e6 $a4
    jr jr_02c_79f6                                ; $799d: $18 $57

    db $ec                                        ; $799f: $ec
    call nc, Call_000_17e7                        ; $79a0: $d4 $e7 $17
    sub $75                                       ; $79a3: $d6 $75
    push bc                                       ; $79a5: $c5
    ld b, h                                       ; $79a6: $44
    dec sp                                        ; $79a7: $3b
    push af                                       ; $79a8: $f5
    ld sp, hl                                     ; $79a9: $f9
    add l                                         ; $79aa: $85
    ld a, [c]                                     ; $79ab: $f2
    ret c                                         ; $79ac: $d8

    ld [hl], l                                    ; $79ad: $75
    dec hl                                        ; $79ae: $2b
    ld [hl], l                                    ; $79af: $75
    ld d, e                                       ; $79b0: $53
    xor [hl]                                      ; $79b1: $ae
    xor b                                         ; $79b2: $a8
    ld c, l                                       ; $79b3: $4d
    ld l, h                                       ; $79b4: $6c
    ld bc, $2e9d                                  ; $79b5: $01 $9d $2e
    or $83                                        ; $79b8: $f6 $83
    ld [hl], e                                    ; $79ba: $73
    ld b, a                                       ; $79bb: $47
    rla                                           ; $79bc: $17
    ei                                            ; $79bd: $fb
    pop bc                                        ; $79be: $c1

jr_02c_79bf:
    cp c                                          ; $79bf: $b9
    and e                                         ; $79c0: $a3
    adc e                                         ; $79c1: $8b
    db $fd                                        ; $79c2: $fd
    ldh [$dc], a                                  ; $79c3: $e0 $dc
    db $e4                                        ; $79c5: $e4
    adc $7b                                       ; $79c6: $ce $7b
    nop                                           ; $79c8: $00
    dec sp                                        ; $79c9: $3b
    rst $28                                       ; $79ca: $ef
    ld bc, $26d4                                  ; $79cb: $01 $d4 $26
    or [hl]                                       ; $79ce: $b6
    push af                                       ; $79cf: $f5
    rst $28                                       ; $79d0: $ef
    add [hl]                                      ; $79d1: $86
    sub l                                         ; $79d2: $95
    call c, $a630                                 ; $79d3: $dc $30 $a6
    cp a                                          ; $79d6: $bf
    jr nc, jr_02c_79bf                            ; $79d7: $30 $e6

    and c                                         ; $79d9: $a1
    xor a                                         ; $79da: $af
    add hl, hl                                    ; $79db: $29
    db $10                                        ; $79dc: $10
    dec bc                                        ; $79dd: $0b
    ldh a, [$15]                                  ; $79de: $f0 $15
    ld e, e                                       ; $79e0: $5b
    ld h, l                                       ; $79e1: $65
    inc l                                         ; $79e2: $2c
    call nc, Call_02c_56b8                        ; $79e3: $d4 $b8 $56
    ld l, h                                       ; $79e6: $6c
    inc h                                         ; $79e7: $24
    ld [hl], a                                    ; $79e8: $77
    push hl                                       ; $79e9: $e5
    ld e, e                                       ; $79ea: $5b
    db $fd                                        ; $79eb: $fd
    cp e                                          ; $79ec: $bb
    pop af                                        ; $79ed: $f1
    rst $20                                       ; $79ee: $e7
    jp c, $82e5                                   ; $79ef: $da $e5 $82

    sub b                                         ; $79f2: $90
    rst $20                                       ; $79f3: $e7
    dec l                                         ; $79f4: $2d
    daa                                           ; $79f5: $27

jr_02c_79f6:
    jp Jump_02c_415d                              ; $79f6: $c3 $5d $41


    push af                                       ; $79f9: $f5
    ld l, $2d                                     ; $79fa: $2e $2d
    inc bc                                        ; $79fc: $03
    ld a, [de]                                    ; $79fd: $1a
    pop bc                                        ; $79fe: $c1
    ld e, h                                       ; $79ff: $5c
    inc l                                         ; $7a00: $2c
    ld [hl], e                                    ; $7a01: $73
    xor [hl]                                      ; $7a02: $ae
    xor b                                         ; $7a03: $a8
    dec a                                         ; $7a04: $3d
    or h                                          ; $7a05: $b4
    dec b                                         ; $7a06: $05
    daa                                           ; $7a07: $27
    ld l, b                                       ; $7a08: $68
    rst $10                                       ; $7a09: $d7
    ei                                            ; $7a0a: $fb
    inc e                                         ; $7a0b: $1c
    ld l, $12                                     ; $7a0c: $2e $12
    ld hl, sp+$38                                 ; $7a0e: $f8 $38
    adc h                                         ; $7a10: $8c
    call c, $cff0                                 ; $7a11: $dc $f0 $cf
    ld b, $5f                                     ; $7a14: $06 $5f
    db $e3                                        ; $7a16: $e3
    sbc $5d                                       ; $7a17: $de $5d
    pop de                                        ; $7a19: $d1
    ld hl, sp-$03                                 ; $7a1a: $f8 $fd
    ld [hl], c                                    ; $7a1c: $71
    add c                                         ; $7a1d: $81
    rst $20                                       ; $7a1e: $e7
    dec l                                         ; $7a1f: $2d
    rst $00                                       ; $7a20: $c7
    sub l                                         ; $7a21: $95
    push de                                       ; $7a22: $d5
    call z, Call_02c_61c6                         ; $7a23: $cc $c6 $61

jr_02c_7a26:
    adc h                                         ; $7a26: $8c
    ld a, $cd                                     ; $7a27: $3e $cd
    jr nz, jr_02c_7a26                            ; $7a29: $20 $fb

    add c                                         ; $7a2b: $81
    di                                            ; $7a2c: $f3
    dec sp                                        ; $7a2d: $3b
    dec de                                        ; $7a2e: $1b
    jr nc, jr_02c_7aa0                            ; $7a2f: $30 $6f

    ld bc, $8a59                                  ; $7a31: $01 $59 $8a
    and l                                         ; $7a34: $a5
    push af                                       ; $7a35: $f5
    cp e                                          ; $7a36: $bb
    ld h, $57                                     ; $7a37: $26 $57
    call z, Call_000_0dc0                         ; $7a39: $cc $c0 $0d
    push af                                       ; $7a3c: $f5
    ld l, c                                       ; $7a3d: $69
    add hl, hl                                    ; $7a3e: $29
    push bc                                       ; $7a3f: $c5
    jp Jump_02c_7e3f                              ; $7a40: $c3 $3f $7e


    add a                                         ; $7a43: $87
    cp a                                          ; $7a44: $bf
    call nc, $fbfb                                ; $7a45: $d4 $fb $fb
    ld [hl+], a                                   ; $7a48: $22
    ld a, d                                       ; $7a49: $7a
    dec [hl]                                      ; $7a4a: $35
    add $52                                       ; $7a4b: $c6 $52
    sbc $02                                       ; $7a4d: $de $02
    push af                                       ; $7a4f: $f5
    or l                                          ; $7a50: $b5
    ld b, [hl]                                    ; $7a51: $46
    ccf                                           ; $7a52: $3f
    inc c                                         ; $7a53: $0c
    ld h, e                                       ; $7a54: $63
    add $3c                                       ; $7a55: $c6 $3c
    db $f4                                        ; $7a57: $f4
    pop bc                                        ; $7a58: $c1
    rst $18                                       ; $7a59: $df
    ld a, c                                       ; $7a5a: $79
    add $7a                                       ; $7a5b: $c6 $7a
    ld a, a                                       ; $7a5d: $7f
    adc l                                         ; $7a5e: $8d
    inc hl                                        ; $7a5f: $23
    ld [hl], e                                    ; $7a60: $73
    bit 3, e                                      ; $7a61: $cb $5b
    daa                                           ; $7a63: $27
    add e                                         ; $7a64: $83
    ld c, d                                       ; $7a65: $4a
    pop de                                        ; $7a66: $d1
    or b                                          ; $7a67: $b0
    ld l, d                                       ; $7a68: $6a
    adc h                                         ; $7a69: $8c
    ld d, b                                       ; $7a6a: $50
    rst $38                                       ; $7a6b: $ff
    ld d, d                                       ; $7a6c: $52
    ld [hl], d                                    ; $7a6d: $72
    reti                                          ; $7a6e: $d9


    jp c, $08d7                                   ; $7a6f: $da $d7 $08

    push af                                       ; $7a72: $f5
    ld h, e                                       ; $7a73: $63
    adc l                                         ; $7a74: $8d
    push bc                                       ; $7a75: $c5
    db $f4                                        ; $7a76: $f4
    rst $10                                       ; $7a77: $d7
    inc d                                         ; $7a78: $14
    cp e                                          ; $7a79: $bb
    sub h                                         ; $7a7a: $94
    or a                                          ; $7a7b: $b7
    push af                                       ; $7a7c: $f5
    rst $28                                       ; $7a7d: $ef
    add $9f                                       ; $7a7e: $c6 $9f
    ld l, e                                       ; $7a80: $6b
    ld b, l                                       ; $7a81: $45
    or c                                          ; $7a82: $b1
    sub h                                         ; $7a83: $94
    add d                                         ; $7a84: $82
    ld [$4a85], a                                 ; $7a85: $ea $85 $4a
    sub c                                         ; $7a88: $91
    ld b, a                                       ; $7a89: $47
    sbc $02                                       ; $7a8a: $de $02
    push af                                       ; $7a8c: $f5
    or l                                          ; $7a8d: $b5
    add d                                         ; $7a8e: $82
    or c                                          ; $7a8f: $b1
    and d                                         ; $7a90: $a2
    ld e, b                                       ; $7a91: $58
    ld b, c                                       ; $7a92: $41
    add $15                                       ; $7a93: $c6 $15
    db $e3                                        ; $7a95: $e3
    ld e, d                                       ; $7a96: $5a
    ld h, l                                       ; $7a97: $65
    inc l                                         ; $7a98: $2c
    ld d, h                                       ; $7a99: $54
    ld [hl], d                                    ; $7a9a: $72
    rst $10                                       ; $7a9b: $d7
    xor e                                         ; $7a9c: $ab
    ld a, [hl+]                                   ; $7a9d: $2a
    xor l                                         ; $7a9e: $ad
    ld b, a                                       ; $7a9f: $47

jr_02c_7aa0:
    ld e, e                                       ; $7aa0: $5b
    or [hl]                                       ; $7aa1: $b6
    ld d, $72                                     ; $7aa2: $16 $72
    jp $8fe9                                      ; $7aa4: $c3 $e9 $8f


    cp d                                          ; $7aa7: $ba
    ld h, $8d                                     ; $7aa8: $26 $8d
    rst $10                                       ; $7aaa: $d7
    adc l                                         ; $7aab: $8d
    dec d                                         ; $7aac: $15
    xor l                                         ; $7aad: $ad
    ld [hl], c                                    ; $7aae: $71
    ld d, l                                       ; $7aaf: $55
    jr z, jr_02c_7b11                             ; $7ab0: $28 $5f

    or $03                                        ; $7ab2: $f6 $03
    rra                                           ; $7ab4: $1f
    cp a                                          ; $7ab5: $bf
    rst $18                                       ; $7ab6: $df
    xor [hl]                                      ; $7ab7: $ae
    ld d, a                                       ; $7ab8: $57
    sub h                                         ; $7ab9: $94
    or a                                          ; $7aba: $b7
    ld e, c                                       ; $7abb: $59
    adc d                                         ; $7abc: $8a
    dec b                                         ; $7abd: $05
    sub $65                                       ; $7abe: $d6 $65
    add hl, hl                                    ; $7ac0: $29
    sub d                                         ; $7ac1: $92
    res 0, b                                      ; $7ac2: $cb $80
    jp z, $f7ae                                   ; $7ac4: $ca $ae $f7

    db $d3                                        ; $7ac7: $d3
    rst $08                                       ; $7ac8: $cf
    xor c                                         ; $7ac9: $a9
    ld [hl], $b1                                  ; $7aca: $36 $b1
    dec b                                         ; $7acc: $05
    rst $00                                       ; $7acd: $c7
    sbc $92                                       ; $7ace: $de $92
    inc sp                                        ; $7ad0: $33
    rst $30                                       ; $7ad1: $f7
    xor [hl]                                      ; $7ad2: $ae
    ld c, c                                       ; $7ad3: $49
    db $e3                                        ; $7ad4: $e3
    ld e, d                                       ; $7ad5: $5a
    ld b, c                                       ; $7ad6: $41
    rst $10                                       ; $7ad7: $d7
    ld a, [de]                                    ; $7ad8: $1a
    di                                            ; $7ad9: $f3
    ld [hl], c                                    ; $7ada: $71
    ld b, l                                       ; $7adb: $45
    ld b, b                                       ; $7adc: $40
    xor h                                         ; $7add: $ac
    ld a, d                                       ; $7ade: $7a
    ld a, a                                       ; $7adf: $7f
    or a                                          ; $7ae0: $b7
    add $a0                                       ; $7ae1: $c6 $a0
    xor b                                         ; $7ae3: $a8
    ld [hl], $b1                                  ; $7ae4: $36 $b1
    dec b                                         ; $7ae6: $05
    and a                                         ; $7ae7: $a7
    add d                                         ; $7ae8: $82
    inc sp                                        ; $7ae9: $33
    jp nz, $b452                                  ; $7aea: $c2 $52 $b4

    and d                                         ; $7aed: $a2
    ld e, l                                       ; $7aee: $5d
    ld l, h                                       ; $7aef: $6c
    ld [hl], e                                    ; $7af0: $73
    ld a, h                                       ; $7af1: $7c
    inc [hl]                                      ; $7af2: $34
    xor [hl]                                      ; $7af3: $ae
    and l                                         ; $7af4: $a5
    dec e                                         ; $7af5: $1d
    db $ed                                        ; $7af6: $ed
    ld [hl], e                                    ; $7af7: $73
    inc c                                         ; $7af8: $0c
    push bc                                       ; $7af9: $c5
    ld [hl-], a                                   ; $7afa: $32
    ld h, b                                       ; $7afb: $60
    sbc a                                         ; $7afc: $9f
    rrca                                          ; $7afd: $0f
    rr d                                          ; $7afe: $cb $1a
    adc e                                         ; $7b00: $8b
    sub b                                         ; $7b01: $90
    ld e, e                                       ; $7b02: $5b
    cp [hl]                                       ; $7b03: $be
    dec e                                         ; $7b04: $1d
    cp [hl]                                       ; $7b05: $be
    add $5f                                       ; $7b06: $c6 $5f
    di                                            ; $7b08: $f3
    ld [hl+], a                                   ; $7b09: $22
    cp c                                          ; $7b0a: $b9
    and e                                         ; $7b0b: $a3
    ld e, l                                       ; $7b0c: $5d
    ld a, h                                       ; $7b0d: $7c
    and d                                         ; $7b0e: $a2
    ld d, l                                       ; $7b0f: $55
    rrca                                          ; $7b10: $0f

jr_02c_7b11:
    sub e                                         ; $7b11: $93
    ld a, e                                       ; $7b12: $7b
    ld a, a                                       ; $7b13: $7f
    adc h                                         ; $7b14: $8c
    ld a, $9f                                     ; $7b15: $3e $9f
    ld b, c                                       ; $7b17: $41
    inc b                                         ; $7b18: $04
    adc [hl]                                      ; $7b19: $8e
    dec hl                                        ; $7b1a: $2b
    sub [hl]                                      ; $7b1b: $96
    halt                                          ; $7b1c: $76

jr_02c_7b1d:
    or h                                          ; $7b1d: $b4
    rst $08                                       ; $7b1e: $cf
    ld sp, $ab14                                  ; $7b1f: $31 $14 $ab
    or e                                          ; $7b22: $b3
    ld [hl], d                                    ; $7b23: $72
    cp a                                          ; $7b24: $bf
    ld e, l                                       ; $7b25: $5d
    xor a                                         ; $7b26: $af
    jr z, jr_02c_7b98                             ; $7b27: $28 $6f

    ld bc, $fd27                                  ; $7b29: $01 $27 $fd
    ld d, l                                       ; $7b2c: $55
    or $33                                        ; $7b2d: $f6 $33
    and b                                         ; $7b2f: $a0
    sub c                                         ; $7b30: $91
    call c, Call_02c_5531                         ; $7b31: $dc $31 $55
    ld d, h                                       ; $7b34: $54
    jp hl                                         ; $7b35: $e9


    db $d3                                        ; $7b36: $d3
    ld hl, sp-$23                                 ; $7b37: $f8 $dd
    ret nc                                        ; $7b39: $d0

    add a                                         ; $7b3a: $87
    rla                                           ; $7b3b: $17
    and $2d                                       ; $7b3c: $e6 $2d
    and a                                         ; $7b3e: $a7
    ccf                                           ; $7b3f: $3f
    adc b                                         ; $7b40: $88
    add l                                         ; $7b41: $85
    ld sp, $3f3a                                  ; $7b42: $31 $3a $3f
    add hl, sp                                    ; $7b45: $39
    ld h, e                                       ; $7b46: $63
    ld [hl], h                                    ; $7b47: $74
    xor l                                         ; $7b48: $ad
    ret c                                         ; $7b49: $d8

    ld a, [hl+]                                   ; $7b4a: $2a
    ld h, e                                       ; $7b4b: $63
    and c                                         ; $7b4c: $a1
    or $fe                                        ; $7b4d: $f6 $fe
    ld l, d                                       ; $7b4f: $6a
    ld d, $72                                     ; $7b50: $16 $72
    ld b, e                                       ; $7b52: $43
    ld e, d                                       ; $7b53: $5a
    ld d, e                                       ; $7b54: $53
    jr nz, jr_02c_7b1d                            ; $7b55: $20 $c6

    jr nz, jr_02c_7b82                            ; $7b57: $20 $29

    ld l, a                                       ; $7b59: $6f
    ld bc, $3fa7                                  ; $7b5a: $01 $a7 $3f
    adc b                                         ; $7b5d: $88
    add hl, de                                    ; $7b5e: $19
    and e                                         ; $7b5f: $a3
    di                                            ; $7b60: $f3
    rst $00                                       ; $7b61: $c7
    ret nz                                        ; $7b62: $c0

    xor d                                         ; $7b63: $aa
    rst $30                                       ; $7b64: $f7
    ld [hl], a                                    ; $7b65: $77
    cp c                                          ; $7b66: $b9
    dec [hl]                                      ; $7b67: $35
    ld b, $bc                                     ; $7b68: $06 $bc
    or $d0                                        ; $7b6a: $f6 $d0
    ld d, $47                                     ; $7b6c: $16 $47
    sbc $e2                                       ; $7b6e: $de $e2
    sub l                                         ; $7b70: $95
    ld e, e                                       ; $7b71: $5b
    ld [hl], d                                    ; $7b72: $72
    rst $38                                       ; $7b73: $ff
    db $fd                                        ; $7b74: $fd
    cp h                                          ; $7b75: $bc
    dec b                                         ; $7b76: $05
    dec e                                         ; $7b77: $1d
    db $e4                                        ; $7b78: $e4
    rla                                           ; $7b79: $17
    ld l, $03                                     ; $7b7a: $2e $03
    or $f9                                        ; $7b7c: $f6 $f9
    xor d                                         ; $7b7e: $aa
    xor [hl]                                      ; $7b7f: $ae
    dec hl                                        ; $7b80: $2b
    push hl                                       ; $7b81: $e5

jr_02c_7b82:
    xor e                                         ; $7b82: $ab
    ld a, a                                       ; $7b83: $7f
    scf                                           ; $7b84: $37
    xor h                                         ; $7b85: $ac
    db $e4                                        ; $7b86: $e4
    add [hl]                                      ; $7b87: $86
    or c                                          ; $7b88: $b1
    inc d                                         ; $7b89: $14
    ld [$032f], a                                 ; $7b8a: $ea $2f $03
    ld [hl], a                                    ; $7b8d: $77
    inc l                                         ; $7b8e: $2c
    inc sp                                        ; $7b8f: $33
    rst $30                                       ; $7b90: $f7
    xor [hl]                                      ; $7b91: $ae
    ld c, c                                       ; $7b92: $49
    db $e3                                        ; $7b93: $e3
    ld e, d                                       ; $7b94: $5a
    ld l, b                                       ; $7b95: $68
    ld h, c                                       ; $7b96: $61
    ret nz                                        ; $7b97: $c0

jr_02c_7b98:
    ret z                                         ; $7b98: $c8

jr_02c_7b99:
    di                                            ; $7b99: $f3
    ld d, $a7                                     ; $7b9a: $16 $a7
    ccf                                           ; $7b9c: $3f
    adc b                                         ; $7b9d: $88
    add hl, de                                    ; $7b9e: $19
    and e                                         ; $7b9f: $a3
    di                                            ; $7ba0: $f3
    and a                                         ; $7ba1: $a7
    ld c, a                                       ; $7ba2: $4f
    ld a, [$6a1c]                                 ; $7ba3: $fa $1c $6a
    rrca                                          ; $7ba6: $0f

jr_02c_7ba7:
    db $dd                                        ; $7ba7: $dd
    adc [hl]                                      ; $7ba8: $8e
    dec hl                                        ; $7ba9: $2b
    xor e                                         ; $7baa: $ab
    sbc c                                         ; $7bab: $99
    ld c, l                                       ; $7bac: $4d
    jr nc, jr_02c_7ba7                            ; $7bad: $30 $f8

    cp e                                          ; $7baf: $bb
    xor h                                         ; $7bb0: $ac
    ld c, d                                       ; $7bb1: $4a
    add hl, sp                                    ; $7bb2: $39
    cp [hl]                                       ; $7bb3: $be
    ld h, d                                       ; $7bb4: $62
    inc l                                         ; $7bb5: $2c
    db $ed                                        ; $7bb6: $ed
    ld h, d                                       ; $7bb7: $62
    db $eb                                        ; $7bb8: $eb
    db $fc                                        ; $7bb9: $fc
    dec e                                         ; $7bba: $1d
    db $e3                                        ; $7bbb: $e3
    ld hl, sp+$59                                 ; $7bbc: $f8 $59
    adc a                                         ; $7bbe: $8f
    jr z, jr_02c_7c2b                             ; $7bbf: $28 $6a

    inc de                                        ; $7bc1: $13
    or a                                          ; $7bc2: $b7
    ld a, [$b95a]                                 ; $7bc3: $fa $5a $b9
    dec de                                        ; $7bc6: $1b
    xor [hl]                                      ; $7bc7: $ae
    ret nz                                        ; $7bc8: $c0

    cp b                                          ; $7bc9: $b8
    db $fd                                        ; $7bca: $fd
    ret c                                         ; $7bcb: $d8

    add hl, bc                                    ; $7bcc: $09
    or [hl]                                       ; $7bcd: $b6
    ld h, e                                       ; $7bce: $63
    db $ec                                        ; $7bcf: $ec
    ld a, h                                       ; $7bd0: $7c
    ld de, $1c69                                  ; $7bd1: $11 $69 $1c
    ld d, $cf                                     ; $7bd4: $16 $cf
    cpl                                           ; $7bd6: $2f
    sub h                                         ; $7bd7: $94
    rst $20                                       ; $7bd8: $e7
    dec l                                         ; $7bd9: $2d
    daa                                           ; $7bda: $27
    db $fd                                        ; $7bdb: $fd
    add l                                         ; $7bdc: $85
    ld hl, $032d                                  ; $7bdd: $21 $2d $03
    cp b                                          ; $7be0: $b8
    db $eb                                        ; $7be1: $eb
    ld a, [hl]                                    ; $7be2: $7e
    inc hl                                        ; $7be3: $23
    ld b, e                                       ; $7be4: $43
    xor d                                         ; $7be5: $aa
    dec a                                         ; $7be6: $3d
    or h                                          ; $7be7: $b4
    dec b                                         ; $7be8: $05
    daa                                           ; $7be9: $27
    cp [hl]                                       ; $7bea: $be
    sbc a                                         ; $7beb: $9f
    ld e, h                                       ; $7bec: $5c
    inc hl                                        ; $7bed: $23
    adc a                                         ; $7bee: $8f
    rst $30                                       ; $7bef: $f7
    cp a                                          ; $7bf0: $bf
    or $b5                                        ; $7bf1: $f6 $b5
    jr nc, jr_02c_7b99                            ; $7bf3: $30 $a4

    ld a, h                                       ; $7bf5: $7c
    dec sp                                        ; $7bf6: $3b
    ld [$1e8f], a                                 ; $7bf7: $ea $8f $1e
    ret nc                                        ; $7bfa: $d0

    ld l, $8b                                     ; $7bfb: $2e $8b
    db $e4                                        ; $7bfd: $e4
    jp nz, $1956                                  ; $7bfe: $c2 $56 $19

    dec bc                                        ; $7c01: $0b
    dec [hl]                                      ; $7c02: $35
    ld l, $c6                                     ; $7c03: $2e $c6
    sub b                                         ; $7c05: $90
    sub $35                                       ; $7c06: $d6 $35
    cp c                                          ; $7c08: $b9
    ld b, [hl]                                    ; $7c09: $46
    ld e, [hl]                                    ; $7c0a: $5e
    scf                                           ; $7c0b: $37
    sub $00                                       ; $7c0c: $d6 $00
    ld b, [hl]                                    ; $7c0e: $46
    ret c                                         ; $7c0f: $d8

    daa                                           ; $7c10: $27
    xor l                                         ; $7c11: $ad
    ld a, c                                       ; $7c12: $79
    ldh [$d3], a                                  ; $7c13: $e0 $d3
    daa                                           ; $7c15: $27
    sub a                                         ; $7c16: $97
    ld c, a                                       ; $7c17: $4f
    or h                                          ; $7c18: $b4
    ld a, b                                       ; $7c19: $78
    ld c, [hl]                                    ; $7c1a: $4e
    add sp, $0b                                   ; $7c1b: $e8 $0b
    ld e, h                                       ; $7c1d: $5c
    jp c, $2c2e                                   ; $7c1e: $da $2e $2c

    xor d                                         ; $7c21: $aa
    db $f4                                        ; $7c22: $f4
    add hl, hl                                    ; $7c23: $29
    ld l, a                                       ; $7c24: $6f
    ld bc, $7759                                  ; $7c25: $01 $59 $77
    dec b                                         ; $7c28: $05
    dec l                                         ; $7c29: $2d
    inc bc                                        ; $7c2a: $03

jr_02c_7c2b:
    rrca                                          ; $7c2b: $0f
    sub e                                         ; $7c2c: $93
    dec sp                                        ; $7c2d: $3b
    pop bc                                        ; $7c2e: $c1
    halt                                          ; $7c2f: $76
    adc h                                         ; $7c30: $8c
    sbc l                                         ; $7c31: $9d
    cpl                                           ; $7c32: $2f
    ld [hl+], a                                   ; $7c33: $22
    adc l                                         ; $7c34: $8d
    jp $f9e2                                      ; $7c35: $c3 $e2 $f9


    add l                                         ; $7c38: $85
    ld a, [c]                                     ; $7c39: $f2
    jp c, $5b43                                   ; $7c3a: $da $43 $5b

    daa                                           ; $7c3d: $27
    ld l, b                                       ; $7c3e: $68
    reti                                          ; $7c3f: $d9


    rrca                                          ; $7c40: $0f
    db $fc                                        ; $7c41: $fc
    ld e, e                                       ; $7c42: $5b
    add hl, de                                    ; $7c43: $19
    ld d, a                                       ; $7c44: $57
    xor h                                         ; $7c45: $ac
    ld [hl-], a                                   ; $7c46: $32
    ld d, $5e                                     ; $7c47: $16 $5e
    xor b                                         ; $7c49: $a8
    rra                                           ; $7c4a: $1f
    inc de                                        ; $7c4b: $13
    dec l                                         ; $7c4c: $2d
    sbc [hl]                                      ; $7c4d: $9e
    ld e, a                                       ; $7c4e: $5f
    ld e, b                                       ; $7c4f: $58
    rst $10                                       ; $7c50: $d7
    dec d                                         ; $7c51: $15
    ld sp, hl                                     ; $7c52: $f9
    halt                                          ; $7c53: $76
    ld e, h                                       ; $7c54: $5c
    add hl, de                                    ; $7c55: $19
    ld a, a                                       ; $7c56: $7f
    rst $38                                       ; $7c57: $ff
    ld l, e                                       ; $7c58: $6b
    ld e, h                                       ; $7c59: $5c
    or c                                          ; $7c5a: $b1
    rst $38                                       ; $7c5b: $ff
    add b                                         ; $7c5c: $80
    ld d, c                                       ; $7c5d: $51
    add hl, hl                                    ; $7c5e: $29
    adc d                                         ; $7c5f: $8a
    dec b                                         ; $7c60: $05
    ld hl, sp-$76                                 ; $7c61: $f8 $8a
    xor l                                         ; $7c63: $ad
    ld [hl-], a                                   ; $7c64: $32
    ld d, $6a                                     ; $7c65: $16 $6a
    call c, $ac7e                                 ; $7c67: $dc $7e $ac
    ld l, b                                       ; $7c6a: $68
    push de                                       ; $7c6b: $d5
    ei                                            ; $7c6c: $fb
    ld e, h                                       ; $7c6d: $5c
    db $d3                                        ; $7c6e: $d3
    daa                                           ; $7c6f: $27
    sub h                                         ; $7c70: $94
    daa                                           ; $7c71: $27
    daa                                           ; $7c72: $27
    ld e, d                                       ; $7c73: $5a
    push de                                       ; $7c74: $d5
    ld [hl], l                                    ; $7c75: $75
    and l                                         ; $7c76: $a5
    dec b                                         ; $7c77: $05
    ld hl, sp+$3a                                 ; $7c78: $f8 $3a
    ld a, $e0                                     ; $7c7a: $3e $e0
    push bc                                       ; $7c7c: $c5
    sbc h                                         ; $7c7d: $9c
    rst $20                                       ; $7c7e: $e7
    dec l                                         ; $7c7f: $2d
    ld b, a                                       ; $7c80: $47
    cp h                                          ; $7c81: $bc
    sbc a                                         ; $7c82: $9f
    db $fd                                        ; $7c83: $fd
    ret nz                                        ; $7c84: $c0

    sub e                                         ; $7c85: $93
    set 2, [hl]                                   ; $7c86: $cb $d6
    ld [bc], a                                    ; $7c88: $02
    jr nc, jr_02c_7d01                            ; $7c89: $30 $76

    jp z, Jump_000_3bfb                           ; $7c8b: $ca $fb $3b

    ld b, e                                       ; $7c8e: $43
    ld d, $45                                     ; $7c8f: $16 $45
    dec [hl]                                      ; $7c91: $35
    ld sp, hl                                     ; $7c92: $f9
    sub $09                                       ; $7c93: $d6 $09
    and [hl]                                      ; $7c95: $a6
    jr @-$1b                                      ; $7c96: $18 $e3

    add [hl]                                      ; $7c98: $86
    sub l                                         ; $7c99: $95
    ld a, $ed                                     ; $7c9a: $3e $ed
    ld e, b                                       ; $7c9c: $58
    ld [hl], e                                    ; $7c9d: $73
    xor a                                         ; $7c9e: $af
    ld e, c                                       ; $7c9f: $59
    rst $00                                       ; $7ca0: $c7
    ld b, a                                       ; $7ca1: $47
    inc h                                         ; $7ca2: $24
    xor a                                         ; $7ca3: $af
    dec a                                         ; $7ca4: $3d
    or h                                          ; $7ca5: $b4
    dec b                                         ; $7ca6: $05
    daa                                           ; $7ca7: $27
    ld bc, $7726                                  ; $7ca8: $01 $26 $77
    db $dd                                        ; $7cab: $dd
    dec d                                         ; $7cac: $15
    or h                                          ; $7cad: $b4
    ld [$de61], a                                 ; $7cae: $ea $61 $de
    ld [bc], a                                    ; $7cb1: $02
    daa                                           ; $7cb2: $27
    or c                                          ; $7cb3: $b1
    di                                            ; $7cb4: $f3
    inc a                                         ; $7cb5: $3c
    ld e, a                                       ; $7cb6: $5f
    or [hl]                                       ; $7cb7: $b6
    sub $e8                                       ; $7cb8: $d6 $e8
    add a                                         ; $7cba: $87
    ld h, c                                       ; $7cbb: $61
    inc l                                         ; $7cbc: $2c
    inc bc                                        ; $7cbd: $03
    ld [hl], a                                    ; $7cbe: $77
    inc l                                         ; $7cbf: $2c
    adc e                                         ; $7cc0: $8b
    cp e                                          ; $7cc1: $bb
    or c                                          ; $7cc2: $b1
    jr nc, @-$3c                                  ; $7cc3: $30 $c2

    sub b                                         ; $7cc5: $90
    and [hl]                                      ; $7cc6: $a6
    ld a, a                                       ; $7cc7: $7f
    dec a                                         ; $7cc8: $3d
    rst $10                                       ; $7cc9: $d7
    ld hl, sp+$1d                                 ; $7cca: $f8 $1d
    cp [hl]                                       ; $7ccc: $be
    sub [hl]                                      ; $7ccd: $96
    ld [hl], $bf                                  ; $7cce: $36 $bf
    inc [hl]                                      ; $7cd0: $34
    xor [hl]                                      ; $7cd1: $ae
    ld d, l                                       ; $7cd2: $55
    adc d                                         ; $7cd3: $8a
    and l                                         ; $7cd4: $a5
    cp l                                          ; $7cd5: $bd
    xor [hl]                                      ; $7cd6: $ae
    dec hl                                        ; $7cd7: $2b
    ld a, [c]                                     ; $7cd8: $f2
    ld d, $a7                                     ; $7cd9: $16 $a7
    ccf                                           ; $7cdb: $3f
    adc b                                         ; $7cdc: $88
    db $fd                                        ; $7cdd: $fd
    cp e                                          ; $7cde: $bb
    add c                                         ; $7cdf: $81
    and e                                         ; $7ce0: $a3
    adc $5f                                       ; $7ce1: $ce $5f
    ld h, e                                       ; $7ce3: $63
    ld sp, $0606                                  ; $7ce4: $31 $06 $06
    ld a, a                                       ; $7ce7: $7f
    sub a                                         ; $7ce8: $97
    ld e, e                                       ; $7ce9: $5b
    ld h, e                                       ; $7cea: $63
    ret nz                                        ; $7ceb: $c0

    ld l, e                                       ; $7cec: $6b
    rrca                                          ; $7ced: $0f
    db $dd                                        ; $7cee: $dd
    ld c, [hl]                                    ; $7cef: $4e
    ei                                            ; $7cf0: $fb
    ld h, e                                       ; $7cf1: $63
    sbc c                                         ; $7cf2: $99
    rst $30                                       ; $7cf3: $f7
    ld hl, sp+$7e                                 ; $7cf4: $f8 $7e
    ld [hl], d                                    ; $7cf6: $72
    daa                                           ; $7cf7: $27
    adc d                                         ; $7cf8: $8a
    pop bc                                        ; $7cf9: $c1
    ld d, d                                       ; $7cfa: $52
    sub h                                         ; $7cfb: $94
    sbc h                                         ; $7cfc: $9c
    xor l                                         ; $7cfd: $ad
    sub c                                         ; $7cfe: $91
    ld [hl], e                                    ; $7cff: $73
    ld e, b                                       ; $7d00: $58

jr_02c_7d01:
    pop de                                        ; $7d01: $d1
    ld [bc], a                                    ; $7d02: $02
    push af                                       ; $7d03: $f5
    di                                            ; $7d04: $f3
    ld d, $27                                     ; $7d05: $16 $27
    cp [hl]                                       ; $7d07: $be
    sbc a                                         ; $7d08: $9f
    or a                                          ; $7d09: $b7
    rst $00                                       ; $7d0a: $c7
    sub l                                         ; $7d0b: $95
    db $fd                                        ; $7d0c: $fd
    ld a, e                                       ; $7d0d: $7b
    call $8d6c                                    ; $7d0e: $cd $6c $8d
    inc a                                         ; $7d11: $3c
    sbc $ff                                       ; $7d12: $de $ff
    ld a, [de]                                    ; $7d14: $1a
    ld e, [hl]                                    ; $7d15: $5e
    cp b                                          ; $7d16: $b8
    jr nc, jr_02c_7d61                            ; $7d17: $30 $48

    rst $28                                       ; $7d19: $ef
    ccf                                           ; $7d1a: $3f
    adc b                                         ; $7d1b: $88
    adc c                                         ; $7d1c: $89
    ld d, [hl]                                    ; $7d1d: $56
    cp l                                          ; $7d1e: $bd
    ccf                                           ; $7d1f: $3f
    scf                                           ; $7d20: $37
    ld c, d                                       ; $7d21: $4a
    ld l, $cb                                     ; $7d22: $2e $cb
    ld e, a                                       ; $7d24: $5f
    rrca                                          ; $7d25: $0f
    ld h, h                                       ; $7d26: $64
    adc $f3                                       ; $7d27: $ce $f3
    ld d, $67                                     ; $7d29: $16 $67
    sbc a                                         ; $7d2b: $9f
    ld a, a                                       ; $7d2c: $7f
    cp $f9                                        ; $7d2d: $fe $f9
    rst $20                                       ; $7d2f: $e7
    sbc a                                         ; $7d30: $9f
    sbc a                                         ; $7d31: $9f
    rst $20                                       ; $7d32: $e7
    ld a, c                                       ; $7d33: $79
    sbc [hl]                                      ; $7d34: $9e
    or a                                          ; $7d35: $b7
    push af                                       ; $7d36: $f5
    or l                                          ; $7d37: $b5
    ld [$4d6e], a                                 ; $7d38: $ea $6e $4d
    and e                                         ; $7d3b: $a3
    ld d, d                                       ; $7d3c: $52
    or h                                          ; $7d3d: $b4
    ld h, e                                       ; $7d3e: $63
    push hl                                       ; $7d3f: $e5
    dec d                                         ; $7d40: $15
    cp [hl]                                       ; $7d41: $be
    xor a                                         ; $7d42: $af
    dec e                                         ; $7d43: $1d
    db $e3                                        ; $7d44: $e3
    or $59                                        ; $7d45: $f6 $59
    ld a, [c]                                     ; $7d47: $f2
    db $e4                                        ; $7d48: $e4
    ld b, h                                       ; $7d49: $44
    ld h, e                                       ; $7d4a: $63
    ld e, $44                                     ; $7d4b: $1e $44
    db $ed                                        ; $7d4d: $ed
    and c                                         ; $7d4e: $a1
    dec l                                         ; $7d4f: $2d
    and a                                         ; $7d50: $a7
    cp h                                          ; $7d51: $bc
    cp a                                          ; $7d52: $bf
    inc sp                                        ; $7d53: $33
    ld h, h                                       ; $7d54: $64
    ld d, c                                       ; $7d55: $51
    ld d, h                                       ; $7d56: $54
    sub e                                         ; $7d57: $93
    or a                                          ; $7d58: $b7
    rst $00                                       ; $7d59: $c7
    sbc d                                         ; $7d5a: $9a
    ld a, e                                       ; $7d5b: $7b
    call Call_000_3e3a                            ; $7d5c: $cd $3a $3e
    ld [hl+], a                                   ; $7d5f: $22
    ld a, c                                       ; $7d60: $79

jr_02c_7d61:
    sbc $02                                       ; $7d61: $de $02
    ld e, c                                       ; $7d63: $59
    ld [hl], a                                    ; $7d64: $77
    dec b                                         ; $7d65: $05
    adc l                                         ; $7d66: $8d
    ld [hl], c                                    ; $7d67: $71
    jp $43da                                      ; $7d68: $c3 $da $43


    ld d, a                                       ; $7d6b: $57
    ld e, a                                       ; $7d6c: $5f
    dec bc                                        ; $7d6d: $0b
    jp Jump_000_3d18                              ; $7d6e: $c3 $18 $3d


    and b                                         ; $7d71: $a0
    dec b                                         ; $7d72: $05
    ld hl, sp-$18                                 ; $7d73: $f8 $e8
    ld h, c                                       ; $7d75: $61
    cp [hl]                                       ; $7d76: $be
    and e                                         ; $7d77: $a3
    add d                                         ; $7d78: $82
    ld [$5a5d], a                                 ; $7d79: $ea $5d $5a
    ld b, $34                                     ; $7d7c: $06 $34
    add d                                         ; $7d7e: $82
    add l                                         ; $7d7f: $85
    ld h, c                                       ; $7d80: $61
    inc l                                         ; $7d81: $2c
    ld e, e                                       ; $7d82: $5b
    inc h                                         ; $7d83: $24
    rra                                           ; $7d84: $1f
    ld d, a                                       ; $7d85: $57
    inc l                                         ; $7d86: $2c
    sbc [hl]                                      ; $7d87: $9e
    ld d, e                                       ; $7d88: $53
    call nc, $ba1e                                ; $7d89: $d4 $1e $ba
    ld a, [$c377]                                 ; $7d8c: $fa $77 $c3
    ld sp, hl                                     ; $7d8f: $f9
    dec c                                         ; $7d90: $0d
    ld [hl+], a                                   ; $7d91: $22
    ld [hl], b                                    ; $7d92: $70
    ld [hl], l                                    ; $7d93: $75
    and [hl]                                      ; $7d94: $a6
    cp a                                          ; $7d95: $bf
    ld l, h                                       ; $7d96: $6c
    sub c                                         ; $7d97: $91
    ld a, h                                       ; $7d98: $7c
    add hl, de                                    ; $7d99: $19
    ld d, b                                       ; $7d9a: $50
    ret                                           ; $7d9b: $c9


    add b                                         ; $7d9c: $80
    and d                                         ; $7d9d: $a2
    ld e, $fc                                     ; $7d9e: $1e $fc

jr_02c_7da0:
    ld c, b                                       ; $7da0: $48
    xor [hl]                                      ; $7da1: $ae
    ld [hl-], a                                   ; $7da2: $32
    adc h                                         ; $7da3: $8c
    ld [hl], c                                    ; $7da4: $71
    push bc                                       ; $7da5: $c5
    ret z                                         ; $7da6: $c8

    db $eb                                        ; $7da7: $eb
    add $02                                       ; $7da8: $c6 $02
    xor e                                         ; $7daa: $ab
    and [hl]                                      ; $7dab: $a6
    jr z, jr_02c_7da0                             ; $7dac: $28 $f2

    ld [hl], l                                    ; $7dae: $75
    sub h                                         ; $7daf: $94
    rst $00                                       ; $7db0: $c7
    ei                                            ; $7db1: $fb
    ld e, a                                       ; $7db2: $5f
    ei                                            ; $7db3: $fb
    ld [hl], a                                    ; $7db4: $77
    dec b                                         ; $7db5: $05
    dec l                                         ; $7db6: $2d
    sbc [hl]                                      ; $7db7: $9e

jr_02c_7db8:
    ld e, a                                       ; $7db8: $5f
    jr z, @+$21                                   ; $7db9: $28 $1f

    or a                                          ; $7dbb: $b7
    rra                                           ; $7dbc: $1f
    xor e                                         ; $7dbd: $ab
    ld l, h                                       ; $7dbe: $6c
    ld l, c                                       ; $7dbf: $69
    xor e                                         ; $7dc0: $ab
    or b                                          ; $7dc1: $b0
    inc d                                         ; $7dc2: $14
    dec h                                         ; $7dc3: $25
    ld d, a                                       ; $7dc4: $57
    add hl, de                                    ; $7dc5: $19
    add $b2                                       ; $7dc6: $c6 $b2
    rst $28                                       ; $7dc8: $ef
    add [hl]                                      ; $7dc9: $86
    or e                                          ; $7dca: $b3
    and [hl]                                      ; $7dcb: $a6
    ld [hl], c                                    ; $7dcc: $71
    adc h                                         ; $7dcd: $8c
    pop de                                        ; $7dce: $d1
    add e                                         ; $7dcf: $83
    ld e, b                                       ; $7dd0: $58
    ld d, c                                       ; $7dd1: $51
    xor h                                         ; $7dd2: $ac
    jr nz, jr_02c_7db8                            ; $7dd3: $20 $e3

    adc d                                         ; $7dd5: $8a
    ld [hl], c                                    ; $7dd6: $71
    db $ed                                        ; $7dd7: $ed
    ld a, d                                       ; $7dd8: $7a
    ldh [$b1], a                                  ; $7dd9: $e0 $b1
    add $7c                                       ; $7ddb: $c6 $7c
    rst $10                                       ; $7ddd: $d7
    inc de                                        ; $7dde: $13
    ld a, b                                       ; $7ddf: $78
    cp [hl]                                       ; $7de0: $be
    dec e                                         ; $7de1: $1d
    pop af                                        ; $7de2: $f1
    ld a, [hl]                                    ; $7de3: $7e
    ld [hl], d                                    ; $7de4: $72
    reti                                          ; $7de5: $d9


    sbc d                                         ; $7de6: $9a
    adc e                                         ; $7de7: $8b
    ld e, $f8                                     ; $7de8: $1e $f8
    rst $10                                       ; $7dea: $d7
    ld [$d8ac], a                                 ; $7deb: $ea $ac $d8
    ld l, $b6                                     ; $7dee: $2e $b6
    ld b, l                                       ; $7df0: $45
    ld l, b                                       ; $7df1: $68
    ld b, $bb                                     ; $7df2: $06 $bb
    call c, Call_000_031a                         ; $7df4: $dc $1a $03
    sbc [hl]                                      ; $7df7: $9e
    ld l, a                                       ; $7df8: $6f
    and a                                         ; $7df9: $a7
    ld e, d                                       ; $7dfa: $5a
    ld bc, $5bca                                  ; $7dfb: $01 $ca $5b
    push af                                       ; $7dfe: $f5
    rst $28                                       ; $7dff: $ef
    adc d                                         ; $7e00: $8a
    and [hl]                                      ; $7e01: $a6
    xor [hl]                                      ; $7e02: $ae
    ld l, e                                       ; $7e03: $6b
    add hl, de                                    ; $7e04: $19
    cp b                                          ; $7e05: $b8
    xor e                                         ; $7e06: $ab
    inc d                                         ; $7e07: $14
    db $ed                                        ; $7e08: $ed
    ld l, e                                       ; $7e09: $6b
    ld hl, $35b7                                  ; $7e0a: $21 $b7 $35
    ld d, $e3                                     ; $7e0d: $16 $e3
    or $63                                        ; $7e0f: $f6 $63
    push bc                                       ; $7e11: $c5
    ld d, [hl]                                    ; $7e12: $56
    ld [hl], l                                    ; $7e13: $75
    ld e, l                                       ; $7e14: $5d
    ld l, c                                       ; $7e15: $69
    sub l                                         ; $7e16: $95
    ld h, c                                       ; $7e17: $61
    cp h                                          ; $7e18: $bc
    cp a                                          ; $7e19: $bf
    inc c                                         ; $7e1a: $0c
    ld l, b                                       ; $7e1b: $68
    push de                                       ; $7e1c: $d5
    jp Jump_000_3b7c                              ; $7e1d: $c3 $7c $3b


    xor d                                         ; $7e20: $aa
    inc d                                         ; $7e21: $14
    call $d2b0                                    ; $7e22: $cd $b0 $d2
    ld d, d                                       ; $7e25: $52
    xor b                                         ; $7e26: $a8
    cp a                                          ; $7e27: $bf
    cp b                                          ; $7e28: $b8
    db $eb                                        ; $7e29: $eb
    sub e                                         ; $7e2a: $93
    ld a, $77                                     ; $7e2b: $3e $77
    xor l                                         ; $7e2d: $ad
    ld sp, $f22f                                  ; $7e2e: $31 $2f $f2
    cp h                                          ; $7e31: $bc
    dec b                                         ; $7e32: $05
    ld b, a                                       ; $7e33: $47

jr_02c_7e34:
    dec sp                                        ; $7e34: $3b
    jp c, Jump_000_18e7                           ; $7e35: $da $e7 $18

    adc d                                         ; $7e38: $8a
    jp c, $2dc4                                   ; $7e39: $da $c4 $2d

    adc e                                         ; $7e3c: $8b
    db $fd                                        ; $7e3d: $fd
    xor [hl]                                      ; $7e3e: $ae

Jump_02c_7e3f:
    rst $00                                       ; $7e3f: $c7
    ld [hl], d                                    ; $7e40: $72
    db $fd                                        ; $7e41: $fd
    rlca                                          ; $7e42: $07
    ld e, b                                       ; $7e43: $58
    adc d                                         ; $7e44: $8a
    ld [hl+], a                                   ; $7e45: $22
    cp c                                          ; $7e46: $b9
    adc [hl]                                      ; $7e47: $8e
    ld b, [hl]                                    ; $7e48: $46
    halt                                          ; $7e49: $76
    ld hl, $03f9                                  ; $7e4a: $21 $f9 $03
    inc l                                         ; $7e4d: $2c
    ld b, l                                       ; $7e4e: $45
    sub c                                         ; $7e4f: $91
    call c, Call_02c_6e91                         ; $7e50: $dc $91 $6e
    xor h                                         ; $7e53: $ac
    sbc e                                         ; $7e54: $9b
    ld h, d                                       ; $7e55: $62
    and a                                         ; $7e56: $a7
    add d                                         ; $7e57: $82
    scf                                           ; $7e58: $37
    adc [hl]                                      ; $7e59: $8e
    and c                                         ; $7e5a: $a1
    jr jr_02c_7e34                                ; $7e5b: $18 $d7

    adc [hl]                                      ; $7e5d: $8e
    sub b                                         ; $7e5e: $90
    inc de                                        ; $7e5f: $13
    ld l, d                                       ; $7e60: $6a
    ld e, c                                       ; $7e61: $59
    cp $2e                                        ; $7e62: $fe $2e
    ld [hl], $68                                  ; $7e64: $36 $68
    and d                                         ; $7e66: $a2
    and l                                         ; $7e67: $a5
    ld d, b                                       ; $7e68: $50
    ld a, a                                       ; $7e69: $7f
    db $fc                                        ; $7e6a: $fc
    ld l, [hl]                                    ; $7e6b: $6e
    ld b, b                                       ; $7e6c: $40
    xor [hl]                                      ; $7e6d: $ae
    xor b                                         ; $7e6e: $a8
    ld c, l                                       ; $7e6f: $4d
    ld l, h                                       ; $7e70: $6c
    ld bc, $b127                                  ; $7e71: $01 $27 $b1
    ld l, e                                       ; $7e74: $6b
    inc de                                        ; $7e75: $13
    or a                                          ; $7e76: $b7
    and e                                         ; $7e77: $a3
    ld c, d                                       ; $7e78: $4a

jr_02c_7e79:
    pop de                                        ; $7e79: $d1
    ld l, h                                       ; $7e7a: $6c
    ld e, h                                       ; $7e7b: $5c
    or c                                          ; $7e7c: $b1
    inc l                                         ; $7e7d: $2c
    or $bb                                        ; $7e7e: $f6 $bb
    ld e, $cb                                     ; $7e80: $1e $cb
    push af                                       ; $7e82: $f5
    rra                                           ; $7e83: $1f
    ld h, b                                       ; $7e84: $60
    add hl, hl                                    ; $7e85: $29
    adc d                                         ; $7e86: $8a
    jp c, $16c4                                   ; $7e87: $da $c4 $16

    ld e, c                                       ; $7e8a: $59
    ld [hl], a                                    ; $7e8b: $77
    dec b                                         ; $7e8c: $05
    dec l                                         ; $7e8d: $2d

jr_02c_7e8e:
    inc bc                                        ; $7e8e: $03
    rrca                                          ; $7e8f: $0f
    ld d, a                                       ; $7e90: $57
    inc d                                         ; $7e91: $14
    bit 4, d                                      ; $7e92: $cb $62
    cp a                                          ; $7e94: $bf
    db $eb                                        ; $7e95: $eb
    or c                                          ; $7e96: $b1
    ld e, h                                       ; $7e97: $5c
    rst $38                                       ; $7e98: $ff
    ld bc, $a296                                  ; $7e99: $01 $96 $a2
    xor b                                         ; $7e9c: $a8
    dec a                                         ; $7e9d: $3d
    ld [hl], h                                    ; $7e9e: $74
    db $eb                                        ; $7e9f: $eb
    ld l, b                                       ; $7ea0: $68
    ld sp, $18ae                                  ; $7ea1: $31 $ae $18
    db $e3                                        ; $7ea4: $e3
    add [hl]                                      ; $7ea5: $86
    adc d                                         ; $7ea6: $8a
    or c                                          ; $7ea7: $b1
    ld e, h                                       ; $7ea8: $5c
    rst $38                                       ; $7ea9: $ff
    ld bc, $a296                                  ; $7eaa: $01 $96 $a2
    ld e, b                                       ; $7ead: $58
    or $5d                                        ; $7eae: $f6 $5d
    pop de                                        ; $7eb0: $d1
    call nc, $d575                                ; $7eb1: $d4 $75 $d5
    ld e, $da                                     ; $7eb4: $1e $da
    ld [bc], a                                    ; $7eb6: $02
    daa                                           ; $7eb7: $27
    cp [hl]                                       ; $7eb8: $be
    sbc a                                         ; $7eb9: $9f
    ld e, h                                       ; $7eba: $5c
    ld h, l                                       ; $7ebb: $65
    jr jr_02c_7e79                                ; $7ebc: $18 $bb

    xor $0a                                       ; $7ebe: $ee $0a
    ld a, [de]                                    ; $7ec0: $1a
    ld a, c                                       ; $7ec1: $79
    db $dd                                        ; $7ec2: $dd
    ld e, b                                       ; $7ec3: $58
    ld [$7cfd], a                                 ; $7ec4: $ea $fd $7c
    dec sp                                        ; $7ec7: $3b
    ld [$29af], a                                 ; $7ec8: $ea $af $29
    db $10                                        ; $7ecb: $10
    ret                                           ; $7ecc: $c9


    ld h, c                                       ; $7ecd: $61
    ld e, c                                       ; $7ece: $59
    call Call_02c_5c6c                            ; $7ecf: $cd $6c $5c
    or c                                          ; $7ed2: $b1
    res 3, h                                      ; $7ed3: $cb $9c
    inc d                                         ; $7ed5: $14
    db $e3                                        ; $7ed6: $e3
    ld e, d                                       ; $7ed7: $5a
    inc a                                         ; $7ed8: $3c
    cp a                                          ; $7ed9: $bf
    or b                                          ; $7eda: $b0
    xor [hl]                                      ; $7edb: $ae
    dec hl                                        ; $7edc: $2b
    or $60                                        ; $7edd: $f6 $60
    pop af                                        ; $7edf: $f1
    db $fc                                        ; $7ee0: $fc
    ld b, d                                       ; $7ee1: $42
    ld a, c                                       ; $7ee2: $79
    db $ec                                        ; $7ee3: $ec
    cp d                                          ; $7ee4: $ba
    sub l                                         ; $7ee5: $95
    cp d                                          ; $7ee6: $ba
    add hl, hl                                    ; $7ee7: $29
    ld d, a                                       ; $7ee8: $57
    adc h                                         ; $7ee9: $8c
    adc e                                         ; $7eea: $8b
    db $db                                        ; $7eeb: $db
    adc a                                         ; $7eec: $8f
    cp h                                          ; $7eed: $bc
    dec b                                         ; $7eee: $05
    and a                                         ; $7eef: $a7
    ccf                                           ; $7ef0: $3f
    inc l                                         ; $7ef1: $2c
    ld [hl], l                                    ; $7ef2: $75
    ld b, $5f                                     ; $7ef3: $06 $5f
    ei                                            ; $7ef5: $fb
    rrca                                          ; $7ef6: $0f
    jr jr_02c_7e8e                                ; $7ef7: $18 $95

    and d                                         ; $7ef9: $a2
    and l                                         ; $7efa: $a5
    xor l                                         ; $7efb: $ad
    rst $00                                       ; $7efc: $c7
    rst $30                                       ; $7efd: $f7
    rst $00                                       ; $7efe: $c7
    rst $28                                       ; $7eff: $ef
    add $72                                       ; $7f00: $c6 $72
    ei                                            ; $7f02: $fb
    inc e                                         ; $7f03: $1c
    ld a, l                                       ; $7f04: $7d
    sub l                                         ; $7f05: $95
    db $ed                                        ; $7f06: $ed
    ld a, d                                       ; $7f07: $7a
    and l                                         ; $7f08: $a5
    add sp, $22                                   ; $7f09: $e8 $22
    ld a, h                                       ; $7f0b: $7c
    cp a                                          ; $7f0c: $bf
    dec b                                         ; $7f0d: $05
    sbc l                                         ; $7f0e: $9d
    ld e, $ce                                     ; $7f0f: $1e $ce
    jr nz, jr_02c_7f15                            ; $7f11: $20 $02

    sub e                                         ; $7f13: $93
    inc hl                                        ; $7f14: $23

jr_02c_7f15:
    sbc b                                         ; $7f15: $98
    cp $d2                                        ; $7f16: $fe $d2
    add [hl]                                      ; $7f18: $86
    or c                                          ; $7f19: $b1

Jump_02c_7f1a:
    ld h, d                                       ; $7f1a: $62
    cp e                                          ; $7f1b: $bb
    ld e, [hl]                                    ; $7f1c: $5e
    add hl, hl                                    ; $7f1d: $29
    cp d                                          ; $7f1e: $ba
    ld [$afdf], sp                                ; $7f1f: $08 $df $af
    dec a                                         ; $7f22: $3d
    ld [hl], h                                    ; $7f23: $74
    rst $00                                       ; $7f24: $c7
    sub l                                         ; $7f25: $95
    xor c                                         ; $7f26: $a9
    inc sp                                        ; $7f27: $33
    ld b, $69                                     ; $7f28: $06 $69
    ldh a, [$97]                                  ; $7f2a: $f0 $97
    ld d, l                                       ; $7f2c: $55
    jr nz, jr_02c_7f64                            ; $7f2d: $20 $35

    xor [hl]                                      ; $7f2f: $ae
    ret c                                         ; $7f30: $d8

    push af                                       ; $7f31: $f5
    ld c, d                                       ; $7f32: $4a
    pop de                                        ; $7f33: $d1
    ld b, l                                       ; $7f34: $45
    ld hl, sp-$02                                 ; $7f35: $f8 $fe
    rla                                           ; $7f37: $17
    ld a, b                                       ; $7f38: $78
    xor h                                         ; $7f39: $ac
    adc $3a                                       ; $7f3a: $ce $3a
    ld a, $e0                                     ; $7f3c: $3e $e0
    push bc                                       ; $7f3e: $c5
    sbc h                                         ; $7f3f: $9c
    rst $20                                       ; $7f40: $e7
    ld a, c                                       ; $7f41: $79
    cp [hl]                                       ; $7f42: $be
    and e                                         ; $7f43: $a3
    ld l, b                                       ; $7f44: $68
    ld e, b                                       ; $7f45: $58
    sub $98                                       ; $7f46: $d6 $98
    ld e, e                                       ; $7f48: $5b
    or a                                          ; $7f49: $b7
    or h                                          ; $7f4a: $b4
    inc c                                         ; $7f4b: $0c
    ld l, b                                       ; $7f4c: $68
    inc b                                         ; $7f4d: $04
    ld l, e                                       ; $7f4e: $6b
    inc b                                         ; $7f4f: $04
    sbc l                                         ; $7f50: $9d
    rlca                                          ; $7f51: $07
    add h                                         ; $7f52: $84
    dec b                                         ; $7f53: $05
    ld b, e                                       ; $7f54: $43
    ld a, $52                                     ; $7f55: $3e $52
    inc l                                         ; $7f57: $2c
    res 3, h                                      ; $7f58: $cb $9c
    inc d                                         ; $7f5a: $14
    ld l, e                                       ; $7f5b: $6b
    ld e, $f8                                     ; $7f5c: $1e $f8
    jp nc, $ae86                                  ; $7f5e: $d2 $86 $ae

    ld [hl], c                                    ; $7f61: $71
    xor l                                         ; $7f62: $ad
    ret c                                         ; $7f63: $d8

jr_02c_7f64:
    ld a, [hl+]                                   ; $7f64: $2a
    ld h, e                                       ; $7f65: $63
    and c                                         ; $7f66: $a1
    ld a, [c]                                     ; $7f67: $f2
    sbc l                                         ; $7f68: $9d
    inc c                                         ; $7f69: $0c
    or $f9                                        ; $7f6a: $f6 $f9
    ld [$1766], sp                                ; $7f6c: $08 $66 $17
    cp e                                          ; $7f6f: $bb
    ld l, $29                                     ; $7f70: $2e $29
    add $15                                       ; $7f72: $c6 $15
    bit 4, d                                      ; $7f74: $cb $62
    cp a                                          ; $7f76: $bf
    db $eb                                        ; $7f77: $eb
    or c                                          ; $7f78: $b1
    ld e, h                                       ; $7f79: $5c
    rst $38                                       ; $7f7a: $ff
    ld bc, $a296                                  ; $7f7b: $01 $96 $a2
    ld c, b                                       ; $7f7e: $48
    ld c, $cb                                     ; $7f7f: $0e $cb
    ld l, d                                       ; $7f81: $6a
    and [hl]                                      ; $7f82: $a6
    ccf                                           ; $7f83: $3f
    dec de                                        ; $7f84: $1b
    ld a, h                                       ; $7f85: $7c
    adc l                                         ; $7f86: $8d
    db $db                                        ; $7f87: $db
    adc a                                         ; $7f88: $8f
    dec d                                         ; $7f89: $15
    xor l                                         ; $7f8a: $ad
    or c                                          ; $7f8b: $b1
    inc c                                         ; $7f8c: $0c
    adc b                                         ; $7f8d: $88
    ld a, [c]                                     ; $7f8e: $f2
    ld d, $c7                                     ; $7f8f: $16 $c7
    ld d, [hl]                                    ; $7f91: $56
    ld d, l                                       ; $7f92: $55
    ld [hl], d                                    ; $7f93: $72
    reti                                          ; $7f94: $d9


    jp c, Jump_000_0fe5                           ; $7f95: $da $e5 $0f

    ld h, e                                       ; $7f98: $63
    add hl, de                                    ; $7f99: $19
    ret nc                                        ; $7f9a: $d0

    or d                                          ; $7f9b: $b2
    dec [hl]                                      ; $7f9c: $35
    add $30                                       ; $7f9d: $c6 $30
    and [hl]                                      ; $7f9f: $a6
    ccf                                           ; $7fa0: $3f
    cp e                                          ; $7fa1: $bb
    ret c                                         ; $7fa2: $d8

    ld [hl+], a                                   ; $7fa3: $22
    ld a, c                                       ; $7fa4: $79
    cp [hl]                                       ; $7fa5: $be
    ld h, l                                       ; $7fa6: $65
    sbc c                                         ; $7fa7: $99
    sub e                                         ; $7fa8: $93
    ld h, d                                       ; $7fa9: $62
    ld e, h                                       ; $7faa: $5c
    adc e                                         ; $7fab: $8b
    rst $20                                       ; $7fac: $e7
    rla                                           ; $7fad: $17
    jp z, Jump_000_0f63                           ; $7fae: $ca $63 $0f

    sub $58                                       ; $7fb1: $d6 $58
    inc h                                         ; $7fb3: $24
    ld h, a                                       ; $7fb4: $67
    adc h                                         ; $7fb5: $8c
    xor [hl]                                      ; $7fb6: $ae
    dec d                                         ; $7fb7: $15
    db $ed                                        ; $7fb8: $ed
    ld h, d                                       ; $7fb9: $62
    cp a                                          ; $7fba: $bf
    db $eb                                        ; $7fbb: $eb
    dec d                                         ; $7fbc: $15
    and e                                         ; $7fbd: $a3
    db $e4                                        ; $7fbe: $e4
    sbc $df                                       ; $7fbf: $de $df
    cp a                                          ; $7fc1: $bf
    dec hl                                        ; $7fc2: $2b
    ld l, b                                       ; $7fc3: $68
    reti                                          ; $7fc4: $d9


    ld d, [hl]                                    ; $7fc5: $56
    add hl, de                                    ; $7fc6: $19
    add $f8                                       ; $7fc7: $c6 $f8
    xor l                                         ; $7fc9: $ad
    ld b, a                                       ; $7fca: $47
    ret z                                         ; $7fcb: $c8

    ld e, e                                       ; $7fcc: $5b
    add a                                         ; $7fcd: $87
    sub a                                         ; $7fce: $97
    rst $20                                       ; $7fcf: $e7
    sub c                                         ; $7fd0: $91
    ld e, h                                       ; $7fd1: $5c
    ldh [$08], a                                  ; $7fd2: $e0 $08
    ld b, [hl]                                    ; $7fd4: $46
    cp $80                                        ; $7fd5: $fe $80
    ld d, c                                       ; $7fd7: $51
    db $ec                                        ; $7fd8: $ec
    ld [hl], b                                    ; $7fd9: $70
    sub [hl]                                      ; $7fda: $96
    ld h, e                                       ; $7fdb: $63
    db $d3                                        ; $7fdc: $d3
    ld e, b                                       ; $7fdd: $58
    ld [hl], d                                    ; $7fde: $72
    inc b                                         ; $7fdf: $04
    dec hl                                        ; $7fe0: $2b
    rst $30                                       ; $7fe1: $f7
    db $db                                        ; $7fe2: $db
    push bc                                       ; $7fe3: $c5
    or [hl]                                       ; $7fe4: $b6
    rst $08                                       ; $7fe5: $cf
    ld d, d                                       ; $7fe6: $52
    call nc, $ba1e                                ; $7fe7: $d4 $1e $ba
    ld h, l                                       ; $7fea: $65
    db $dd                                        ; $7feb: $dd
    dec d                                         ; $7fec: $15
    or h                                          ; $7fed: $b4
    and d                                         ; $7fee: $a2
    add l                                         ; $7fef: $85
    and b                                         ; $7ff0: $a0
    inc l                                         ; $7ff1: $2c
    inc bc                                        ; $7ff2: $03
    cp b                                          ; $7ff3: $b8
    ld c, d                                       ; $7ff4: $4a
    xor e                                         ; $7ff5: $ab
    db $ec                                        ; $7ff6: $ec
    ld h, a                                       ; $7ff7: $67
    ld b, b                                       ; $7ff8: $40
    ld a, c                                       ; $7ff9: $79
    dec bc                                        ; $7ffa: $0b
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
