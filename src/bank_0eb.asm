; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0eb", ROMX[$4000], BANK[$eb]

    db $eb

jr_0eb_4001:
    dec d                                         ; $4001: $15
    ld [$100e], sp                                ; $4002: $08 $0e $10
    ldh a, [$f2]                                  ; $4005: $f0 $f2
    pop hl                                        ; $4007: $e1
    nop                                           ; $4008: $00
    pop hl                                        ; $4009: $e1
    ld [$10e1], sp                                ; $400a: $08 $e1 $10
    pop hl                                        ; $400d: $e1
    jr jr_0eb_4001                                ; $400e: $18 $f1

    nop                                           ; $4010: $00
    pop af                                        ; $4011: $f1
    ld [$10f1], sp                                ; $4012: $08 $f1 $10
    pop af                                        ; $4015: $f1
    db $18, $81                                   ; $4016: $18 $81
    rst $38                                       ; $4018: $ff
    ld [bc], a                                    ; $4019: $02
    nop                                           ; $401a: $00
    sbc h                                         ; $401b: $9c
    rst $38                                       ; $401c: $ff
    ld a, a                                       ; $401d: $7f
    rst $38                                       ; $401e: $ff
    ld a, a                                       ; $401f: $7f
    rst $38                                       ; $4020: $ff
    ld a, a                                       ; $4021: $7f
    rst $38                                       ; $4022: $ff
    ld a, a                                       ; $4023: $7f
    rst $38                                       ; $4024: $ff
    ld a, a                                       ; $4025: $7f
    rst $38                                       ; $4026: $ff
    ld a, a                                       ; $4027: $7f
    cp $7e                                        ; $4028: $fe $7e
    db $fd                                        ; $402a: $fd
    ld a, [hl]                                    ; $402b: $7e
    rst $38                                       ; $402c: $ff
    ld a, a                                       ; $402d: $7f
    rst $38                                       ; $402e: $ff
    ld a, a                                       ; $402f: $7f
    rst $38                                       ; $4030: $ff
    ld a, a                                       ; $4031: $7f
    rst $38                                       ; $4032: $ff
    ld a, a                                       ; $4033: $7f
    rst $38                                       ; $4034: $ff
    ld a, a                                       ; $4035: $7f
    rst $38                                       ; $4036: $ff
    ld a, a                                       ; $4037: $7f
    ld [bc], a                                    ; $4038: $02
    rst $38                                       ; $4039: $ff
    ld [bc], a                                    ; $403a: $02
    nop                                           ; $403b: $00
    ld [$96ff], sp                                ; $403c: $08 $ff $96
    sbc a                                         ; $403f: $9f
    rst $28                                       ; $4040: $ef
    rra                                           ; $4041: $1f
    rst $28                                       ; $4042: $ef
    rra                                           ; $4043: $1f
    rst $28                                       ; $4044: $ef
    rra                                           ; $4045: $1f
    rst $28                                       ; $4046: $ef
    rra                                           ; $4047: $1f
    rst $28                                       ; $4048: $ef
    rra                                           ; $4049: $1f
    rst $28                                       ; $404a: $ef
    rra                                           ; $404b: $1f
    rst $28                                       ; $404c: $ef
    rra                                           ; $404d: $1f
    rst $28                                       ; $404e: $ef
    rra                                           ; $404f: $1f
    rst $28                                       ; $4050: $ef
    ld e, $ef                                     ; $4051: $1e $ef
    ld e, $ff                                     ; $4053: $1e $ff
    ld [bc], a                                    ; $4055: $02
    nop                                           ; $4056: $00
    ld [$96ff], sp                                ; $4057: $08 $ff $96
    db $fc                                        ; $405a: $fc
    rst $38                                       ; $405b: $ff
    ld hl, sp-$01                                 ; $405c: $f8 $ff
    ldh a, [rIE]                                  ; $405e: $f0 $ff
    ldh [$f7], a                                  ; $4060: $e0 $f7
    add sp, -$19                                  ; $4062: $e8 $e7
    ret c                                         ; $4064: $d8

    rst $08                                       ; $4065: $cf
    cp b                                          ; $4066: $b8
    rst $18                                       ; $4067: $df
    cp b                                          ; $4068: $b8
    sbc a                                         ; $4069: $9f
    ld a, b                                       ; $406a: $78
    ccf                                           ; $406b: $3f
    ld hl, sp-$01                                 ; $406c: $f8 $ff
    nop                                           ; $406e: $00
    rst $38                                       ; $406f: $ff
    ld [bc], a                                    ; $4070: $02
    nop                                           ; $4071: $00
    cp d                                          ; $4072: $ba
    rst $38                                       ; $4073: $ff
    cp $ff                                        ; $4074: $fe $ff
    cp $ff                                        ; $4076: $fe $ff
    cp $ff                                        ; $4078: $fe $ff
    cp $ff                                        ; $407a: $fe $ff
    ld a, [hl]                                    ; $407c: $7e
    rst $38                                       ; $407d: $ff
    ld a, [hl]                                    ; $407e: $7e
    rst $38                                       ; $407f: $ff
    ld a, [hl]                                    ; $4080: $7e
    rst $38                                       ; $4081: $ff
    ld a, [hl]                                    ; $4082: $7e
    rst $38                                       ; $4083: $ff
    ld a, [hl]                                    ; $4084: $7e
    rst $38                                       ; $4085: $ff
    ld a, [hl]                                    ; $4086: $7e
    rst $38                                       ; $4087: $ff
    ld a, [hl]                                    ; $4088: $7e
    rst $38                                       ; $4089: $ff
    ld a, [hl]                                    ; $408a: $7e
    rst $38                                       ; $408b: $ff
    ld a, [hl]                                    ; $408c: $7e
    rst $38                                       ; $408d: $ff
    cp $3f                                        ; $408e: $fe $3f
    ld a, a                                       ; $4090: $7f
    rst $38                                       ; $4091: $ff
    ld a, a                                       ; $4092: $7f
    rst $38                                       ; $4093: $ff
    ld a, a                                       ; $4094: $7f
    rst $38                                       ; $4095: $ff
    ld a, a                                       ; $4096: $7f
    rst $38                                       ; $4097: $ff
    ld a, a                                       ; $4098: $7f
    db $fc                                        ; $4099: $fc
    ld a, [hl]                                    ; $409a: $7e
    rst $38                                       ; $409b: $ff
    ld a, a                                       ; $409c: $7f
    rst $38                                       ; $409d: $ff
    ld a, a                                       ; $409e: $7f
    rst $38                                       ; $409f: $ff
    ld a, a                                       ; $40a0: $7f
    ld hl, sp+$7f                                 ; $40a1: $f8 $7f
    ei                                            ; $40a3: $fb
    ld a, a                                       ; $40a4: $7f
    ld sp, hl                                     ; $40a5: $f9
    ld a, a                                       ; $40a6: $7f
    ei                                            ; $40a7: $fb
    ld a, a                                       ; $40a8: $7f
    ei                                            ; $40a9: $fb
    ld a, a                                       ; $40aa: $7f
    rst $38                                       ; $40ab: $ff
    ld a, a                                       ; $40ac: $7f
    ld [bc], a                                    ; $40ad: $02
    rst $38                                       ; $40ae: $ff
    adc h                                         ; $40af: $8c
    nop                                           ; $40b0: $00
    rst $28                                       ; $40b1: $ef
    ld e, $ef                                     ; $40b2: $1e $ef
    rra                                           ; $40b4: $1f
    rst $28                                       ; $40b5: $ef
    rra                                           ; $40b6: $1f
    rst $28                                       ; $40b7: $ef
    rra                                           ; $40b8: $1f
    rst $38                                       ; $40b9: $ff
    rlca                                          ; $40ba: $07
    inc bc                                        ; $40bb: $03
    ld b, $ff                                     ; $40bc: $06 $ff
    adc c                                         ; $40be: $89
    sbc b                                         ; $40bf: $98
    rst $38                                       ; $40c0: $ff
    xor l                                         ; $40c1: $ad
    rst $38                                       ; $40c2: $ff
    sbc l                                         ; $40c3: $9d
    rst $38                                       ; $40c4: $ff
    xor l                                         ; $40c5: $ad
    rst $38                                       ; $40c6: $ff
    xor b                                         ; $40c7: $a8
    dec b                                         ; $40c8: $05
    rst $38                                       ; $40c9: $ff
    adc h                                         ; $40ca: $8c
    nop                                           ; $40cb: $00
    rst $38                                       ; $40cc: $ff
    nop                                           ; $40cd: $00
    rlca                                          ; $40ce: $07
    ld hl, sp-$01                                 ; $40cf: $f8 $ff
    ld hl, sp-$01                                 ; $40d1: $f8 $ff
    ld hl, sp-$01                                 ; $40d3: $f8 $ff
    ld hl, sp-$04                                 ; $40d5: $f8 $fc
    ld b, $ff                                     ; $40d7: $06 $ff
    adc c                                         ; $40d9: $89
    sbc l                                         ; $40da: $9d
    rst $38                                       ; $40db: $ff
    xor d                                         ; $40dc: $aa
    rst $38                                       ; $40dd: $ff
    xor b                                         ; $40de: $a8
    rst $38                                       ; $40df: $ff
    xor d                                         ; $40e0: $aa
    rst $38                                       ; $40e1: $ff
    sbc d                                         ; $40e2: $9a
    dec b                                         ; $40e3: $05
    rst $38                                       ; $40e4: $ff
    sbc [hl]                                      ; $40e5: $9e
    nop                                           ; $40e6: $00
    sbc $3f                                       ; $40e7: $de $3f
    ld e, $ff                                     ; $40e9: $1e $ff
    ld a, [hl]                                    ; $40eb: $7e
    rst $38                                       ; $40ec: $ff
    ld a, [hl]                                    ; $40ed: $7e
    rst $38                                       ; $40ee: $ff
    ld a, [hl]                                    ; $40ef: $7e
    rst $38                                       ; $40f0: $ff
    ld a, [hl]                                    ; $40f1: $7e
    rst $38                                       ; $40f2: $ff
    cp $ff                                        ; $40f3: $fe $ff
    cp $ff                                        ; $40f5: $fe $ff
    cp $af                                        ; $40f7: $fe $af
    cp $af                                        ; $40f9: $fe $af
    cp $df                                        ; $40fb: $fe $df
    cp $df                                        ; $40fd: $fe $df
    cp $df                                        ; $40ff: $fe $df
    cp $ff                                        ; $4101: $fe $ff
    cp $02                                        ; $4103: $fe $02
    rst $38                                       ; $4105: $ff
    add c                                         ; $4106: $81
    nop                                           ; $4107: $00
    rst $38                                       ; $4108: $ff

jr_0eb_4109:
    dec d                                         ; $4109: $15
    ld [$100e], sp                                ; $410a: $08 $0e $10
    ldh a, [$f2]                                  ; $410d: $f0 $f2
    pop hl                                        ; $410f: $e1
    nop                                           ; $4110: $00
    pop hl                                        ; $4111: $e1
    ld [$10e1], sp                                ; $4112: $08 $e1 $10
    pop hl                                        ; $4115: $e1
    jr jr_0eb_4109                                ; $4116: $18 $f1

    ld bc, $09f1                                  ; $4118: $01 $f1 $09
    pop af                                        ; $411b: $f1
    ld de, $18f1                                  ; $411c: $11 $f1 $18
    add c                                         ; $411f: $81
    rst $38                                       ; $4120: $ff
    ld [bc], a                                    ; $4121: $02
    nop                                           ; $4122: $00
    sbc d                                         ; $4123: $9a
    rst $38                                       ; $4124: $ff
    ld a, a                                       ; $4125: $7f
    rst $38                                       ; $4126: $ff
    ld a, a                                       ; $4127: $7f
    rst $38                                       ; $4128: $ff
    ld a, a                                       ; $4129: $7f
    rst $38                                       ; $412a: $ff
    ld a, a                                       ; $412b: $7f
    rst $38                                       ; $412c: $ff
    ld a, a                                       ; $412d: $7f
    rst $38                                       ; $412e: $ff
    ld a, a                                       ; $412f: $7f
    cp $7e                                        ; $4130: $fe $7e
    db $fd                                        ; $4132: $fd
    ld a, [hl]                                    ; $4133: $7e
    rst $38                                       ; $4134: $ff
    ld a, a                                       ; $4135: $7f
    rst $38                                       ; $4136: $ff
    ld a, a                                       ; $4137: $7f
    rst $38                                       ; $4138: $ff
    ld a, a                                       ; $4139: $7f
    rst $38                                       ; $413a: $ff
    ld a, a                                       ; $413b: $7f
    rst $38                                       ; $413c: $ff
    cp a                                          ; $413d: $bf
    ld [bc], a                                    ; $413e: $02
    ld a, a                                       ; $413f: $7f
    add d                                         ; $4140: $82
    ccf                                           ; $4141: $3f
    rst $38                                       ; $4142: $ff
    ld [bc], a                                    ; $4143: $02
    nop                                           ; $4144: $00
    ld [$96ff], sp                                ; $4145: $08 $ff $96
    sbc a                                         ; $4148: $9f
    rst $28                                       ; $4149: $ef
    rra                                           ; $414a: $1f
    rst $28                                       ; $414b: $ef
    rra                                           ; $414c: $1f
    rst $28                                       ; $414d: $ef
    rra                                           ; $414e: $1f
    rst $28                                       ; $414f: $ef
    rra                                           ; $4150: $1f
    rst $28                                       ; $4151: $ef
    rra                                           ; $4152: $1f
    rst $28                                       ; $4153: $ef
    rra                                           ; $4154: $1f
    rst $28                                       ; $4155: $ef
    rra                                           ; $4156: $1f
    rst $28                                       ; $4157: $ef
    rra                                           ; $4158: $1f
    rst $28                                       ; $4159: $ef
    ld e, $ef                                     ; $415a: $1e $ef
    ld e, $ff                                     ; $415c: $1e $ff
    ld [bc], a                                    ; $415e: $02
    nop                                           ; $415f: $00
    ld [$d2ff], sp                                ; $4160: $08 $ff $d2
    db $fc                                        ; $4163: $fc
    rst $38                                       ; $4164: $ff
    ld hl, sp-$01                                 ; $4165: $f8 $ff
    ldh a, [rIE]                                  ; $4167: $f0 $ff
    ldh [$f7], a                                  ; $4169: $e0 $f7
    add sp, -$19                                  ; $416b: $e8 $e7
    ret c                                         ; $416d: $d8

    rst $08                                       ; $416e: $cf
    cp b                                          ; $416f: $b8
    rst $18                                       ; $4170: $df
    cp b                                          ; $4171: $b8
    sbc a                                         ; $4172: $9f
    ld a, b                                       ; $4173: $78
    ccf                                           ; $4174: $3f
    ld hl, sp-$01                                 ; $4175: $f8 $ff
    nop                                           ; $4177: $00
    cp $01                                        ; $4178: $fe $01
    nop                                           ; $417a: $00
    rst $38                                       ; $417b: $ff
    cp $ff                                        ; $417c: $fe $ff
    cp $ff                                        ; $417e: $fe $ff
    cp $ff                                        ; $4180: $fe $ff
    cp $ff                                        ; $4182: $fe $ff
    ld a, [hl]                                    ; $4184: $7e
    rst $38                                       ; $4185: $ff
    ld a, [hl]                                    ; $4186: $7e
    rst $38                                       ; $4187: $ff
    ld a, [hl]                                    ; $4188: $7e
    rst $38                                       ; $4189: $ff
    ld a, [hl]                                    ; $418a: $7e
    rst $38                                       ; $418b: $ff
    ld a, [hl]                                    ; $418c: $7e
    rst $38                                       ; $418d: $ff
    ld a, [hl]                                    ; $418e: $7e
    rst $38                                       ; $418f: $ff
    ld a, [hl]                                    ; $4190: $7e
    rst $38                                       ; $4191: $ff
    ld a, [hl]                                    ; $4192: $7e
    rst $38                                       ; $4193: $ff
    ld a, [hl]                                    ; $4194: $7e
    rst $38                                       ; $4195: $ff
    cp $3f                                        ; $4196: $fe $3f
    rst $38                                       ; $4198: $ff
    ld a, [hl]                                    ; $4199: $7e
    rst $38                                       ; $419a: $ff
    ld a, [hl]                                    ; $419b: $7e
    rst $38                                       ; $419c: $ff
    ld a, [hl]                                    ; $419d: $7e
    rst $38                                       ; $419e: $ff
    ld a, [hl]                                    ; $419f: $7e
    rst $38                                       ; $41a0: $ff
    ld a, b                                       ; $41a1: $78
    db $fc                                        ; $41a2: $fc
    ld a, a                                       ; $41a3: $7f
    rst $38                                       ; $41a4: $ff
    ld a, a                                       ; $41a5: $7f
    rst $38                                       ; $41a6: $ff
    rra                                           ; $41a7: $1f
    rst $38                                       ; $41a8: $ff
    ld bc, $017f                                  ; $41a9: $01 $7f $01
    ld a, a                                       ; $41ac: $7f
    ld bc, HeaderManufacturerCode                 ; $41ad: $01 $3f $01
    ld e, $01                                     ; $41b0: $1e $01
    ld c, $01                                     ; $41b2: $0e $01
    inc bc                                        ; $41b4: $03
    inc bc                                        ; $41b5: $03
    nop                                           ; $41b6: $00
    adc e                                         ; $41b7: $8b
    rst $18                                       ; $41b8: $df
    inc a                                         ; $41b9: $3c
    sbc $3f                                       ; $41ba: $de $3f
    rst $18                                       ; $41bc: $df
    ccf                                           ; $41bd: $3f
    rst $18                                       ; $41be: $df
    ccf                                           ; $41bf: $3f
    rst $38                                       ; $41c0: $ff
    rrca                                          ; $41c1: $0f
    rlca                                          ; $41c2: $07
    ld b, $ff                                     ; $41c3: $06 $ff
    adc c                                         ; $41c5: $89
    ld sp, $5bff                                  ; $41c6: $31 $ff $5b
    rst $38                                       ; $41c9: $ff
    dec sp                                        ; $41ca: $3b
    rst $38                                       ; $41cb: $ff
    ld e, e                                       ; $41cc: $5b
    rst $38                                       ; $41cd: $ff
    ld d, c                                       ; $41ce: $51
    inc bc                                        ; $41cf: $03
    rst $38                                       ; $41d0: $ff
    ld [bc], a                                    ; $41d1: $02
    rlca                                          ; $41d2: $07
    adc h                                         ; $41d3: $8c
    nop                                           ; $41d4: $00
    rst $38                                       ; $41d5: $ff
    nop                                           ; $41d6: $00
    ld c, $f1                                     ; $41d7: $0e $f1
    cp $f1                                        ; $41d9: $fe $f1
    cp $f1                                        ; $41db: $fe $f1
    cp $f1                                        ; $41dd: $fe $f1
    ld hl, sp+$06                                 ; $41df: $f8 $06
    rst $38                                       ; $41e1: $ff
    adc c                                         ; $41e2: $89
    dec sp                                        ; $41e3: $3b
    rst $38                                       ; $41e4: $ff
    ld d, l                                       ; $41e5: $55
    rst $38                                       ; $41e6: $ff
    ld d, c                                       ; $41e7: $51
    rst $38                                       ; $41e8: $ff
    ld d, l                                       ; $41e9: $55
    rst $38                                       ; $41ea: $ff
    dec [hl]                                      ; $41eb: $35
    dec b                                         ; $41ec: $05
    rst $38                                       ; $41ed: $ff
    sbc [hl]                                      ; $41ee: $9e
    nop                                           ; $41ef: $00
    ld e, [hl]                                    ; $41f0: $5e
    ccf                                           ; $41f1: $3f
    ld e, $7f                                     ; $41f2: $1e $7f
    ld a, [hl]                                    ; $41f4: $7e
    ld a, a                                       ; $41f5: $7f
    ld a, [hl]                                    ; $41f6: $7e
    ld a, a                                       ; $41f7: $7f
    ld a, [hl]                                    ; $41f8: $7e
    ld a, a                                       ; $41f9: $7f
    ld a, [hl]                                    ; $41fa: $7e
    ld a, a                                       ; $41fb: $7f
    ld a, [hl]                                    ; $41fc: $7e
    ld a, a                                       ; $41fd: $7f
    ld a, [hl]                                    ; $41fe: $7e
    ld a, a                                       ; $41ff: $7f
    ld a, [hl]                                    ; $4200: $7e
    cpl                                           ; $4201: $2f
    ld a, [hl]                                    ; $4202: $7e
    cpl                                           ; $4203: $2f
    ld a, [hl]                                    ; $4204: $7e
    ld e, a                                       ; $4205: $5f
    ld a, [hl]                                    ; $4206: $7e
    ld e, a                                       ; $4207: $5f
    ld a, [hl]                                    ; $4208: $7e
    ld e, a                                       ; $4209: $5f
    ld a, [hl]                                    ; $420a: $7e
    ld a, a                                       ; $420b: $7f
    ld a, [hl]                                    ; $420c: $7e
    ld [bc], a                                    ; $420d: $02
    ld a, a                                       ; $420e: $7f
    add c                                         ; $420f: $81
    nop                                           ; $4210: $00
    rst $38                                       ; $4211: $ff

jr_0eb_4212:
    dec d                                         ; $4212: $15
    ld [$100e], sp                                ; $4213: $08 $0e $10
    ldh a, [$f2]                                  ; $4216: $f0 $f2
    pop hl                                        ; $4218: $e1
    nop                                           ; $4219: $00
    pop hl                                        ; $421a: $e1
    ld [$10e1], sp                                ; $421b: $08 $e1 $10
    pop hl                                        ; $421e: $e1
    jr jr_0eb_4212                                ; $421f: $18 $f1

    ld bc, $09f1                                  ; $4221: $01 $f1 $09
    pop af                                        ; $4224: $f1
    ld de, $18f1                                  ; $4225: $11 $f1 $18
    add c                                         ; $4228: $81
    rst $38                                       ; $4229: $ff
    ld [bc], a                                    ; $422a: $02
    nop                                           ; $422b: $00
    sbc [hl]                                      ; $422c: $9e
    rst $38                                       ; $422d: $ff
    ld a, a                                       ; $422e: $7f
    rst $38                                       ; $422f: $ff
    ld a, a                                       ; $4230: $7f
    rst $38                                       ; $4231: $ff
    ld a, a                                       ; $4232: $7f
    rst $38                                       ; $4233: $ff
    ld a, a                                       ; $4234: $7f
    rst $38                                       ; $4235: $ff
    ld a, a                                       ; $4236: $7f
    rst $38                                       ; $4237: $ff
    ld a, a                                       ; $4238: $7f
    cp $7e                                        ; $4239: $fe $7e
    db $fd                                        ; $423b: $fd
    ld a, [hl]                                    ; $423c: $7e
    rst $38                                       ; $423d: $ff
    ld a, a                                       ; $423e: $7f
    rst $38                                       ; $423f: $ff
    cp a                                          ; $4240: $bf
    ld a, a                                       ; $4241: $7f
    ccf                                           ; $4242: $3f
    ld a, a                                       ; $4243: $7f
    ccf                                           ; $4244: $3f
    ld a, a                                       ; $4245: $7f
    ccf                                           ; $4246: $3f
    ld a, a                                       ; $4247: $7f
    ccf                                           ; $4248: $3f
    ld a, a                                       ; $4249: $7f
    rst $38                                       ; $424a: $ff
    ld [bc], a                                    ; $424b: $02
    nop                                           ; $424c: $00
    ld [$96ff], sp                                ; $424d: $08 $ff $96
    sbc a                                         ; $4250: $9f
    rst $28                                       ; $4251: $ef
    rra                                           ; $4252: $1f
    rst $28                                       ; $4253: $ef
    rra                                           ; $4254: $1f
    rst $28                                       ; $4255: $ef
    rra                                           ; $4256: $1f
    rst $28                                       ; $4257: $ef
    rra                                           ; $4258: $1f
    rst $28                                       ; $4259: $ef
    rra                                           ; $425a: $1f
    rst $28                                       ; $425b: $ef
    rra                                           ; $425c: $1f
    rst $28                                       ; $425d: $ef
    rra                                           ; $425e: $1f
    rst $28                                       ; $425f: $ef
    rra                                           ; $4260: $1f
    rst $28                                       ; $4261: $ef
    ld e, $ef                                     ; $4262: $1e $ef
    ld e, $ff                                     ; $4264: $1e $ff
    ld [bc], a                                    ; $4266: $02
    nop                                           ; $4267: $00
    ld [$ceff], sp                                ; $4268: $08 $ff $ce
    db $fc                                        ; $426b: $fc
    rst $38                                       ; $426c: $ff
    ld hl, sp-$01                                 ; $426d: $f8 $ff
    ldh a, [rIE]                                  ; $426f: $f0 $ff
    ldh [$f7], a                                  ; $4271: $e0 $f7
    add sp, -$19                                  ; $4273: $e8 $e7
    ret c                                         ; $4275: $d8

    rst $08                                       ; $4276: $cf
    cp b                                          ; $4277: $b8
    rst $18                                       ; $4278: $df
    cp b                                          ; $4279: $b8
    sbc a                                         ; $427a: $9f
    ld a, b                                       ; $427b: $78
    ccf                                           ; $427c: $3f
    ld hl, sp-$01                                 ; $427d: $f8 $ff
    nop                                           ; $427f: $00
    cp $01                                        ; $4280: $fe $01
    nop                                           ; $4282: $00
    rst $38                                       ; $4283: $ff
    cp $ff                                        ; $4284: $fe $ff
    cp $ff                                        ; $4286: $fe $ff
    cp $ff                                        ; $4288: $fe $ff
    cp $ff                                        ; $428a: $fe $ff
    ld a, [hl]                                    ; $428c: $7e
    rst $38                                       ; $428d: $ff
    ld a, [hl]                                    ; $428e: $7e
    rst $38                                       ; $428f: $ff
    ld a, [hl]                                    ; $4290: $7e
    rst $38                                       ; $4291: $ff
    ld a, [hl]                                    ; $4292: $7e
    rst $38                                       ; $4293: $ff
    ld a, [hl]                                    ; $4294: $7e
    rst $38                                       ; $4295: $ff
    ld a, [hl]                                    ; $4296: $7e
    rst $38                                       ; $4297: $ff
    ld a, [hl]                                    ; $4298: $7e
    rst $38                                       ; $4299: $ff
    ld a, [hl]                                    ; $429a: $7e
    rst $38                                       ; $429b: $ff
    ld a, [hl]                                    ; $429c: $7e
    rst $38                                       ; $429d: $ff
    cp $3f                                        ; $429e: $fe $3f
    ld a, a                                       ; $42a0: $7f
    cp $7f                                        ; $42a1: $fe $7f
    cp $7f                                        ; $42a3: $fe $7f
    cp $bd                                        ; $42a5: $fe $bd
    ld a, [hl]                                    ; $42a7: $7e
    rst $00                                       ; $42a8: $c7
    ccf                                           ; $42a9: $3f
    ld a, h                                       ; $42aa: $7c
    inc bc                                        ; $42ab: $03
    ccf                                           ; $42ac: $3f
    nop                                           ; $42ad: $00
    ccf                                           ; $42ae: $3f
    nop                                           ; $42af: $00
    rra                                           ; $42b0: $1f
    nop                                           ; $42b1: $00
    rra                                           ; $42b2: $1f

jr_0eb_42b3:
    nop                                           ; $42b3: $00
    rrca                                          ; $42b4: $0f
    nop                                           ; $42b5: $00
    rlca                                          ; $42b6: $07
    nop                                           ; $42b7: $00
    ld bc, $0007                                  ; $42b8: $01 $07 $00
    sbc e                                         ; $42bb: $9b
    rst $18                                       ; $42bc: $df
    inc a                                         ; $42bd: $3c
    sbc $3f                                       ; $42be: $de $3f
    rst $18                                       ; $42c0: $df
    ccf                                           ; $42c1: $3f
    rst $18                                       ; $42c2: $df
    ccf                                           ; $42c3: $3f
    rst $38                                       ; $42c4: $ff
    rst $28                                       ; $42c5: $ef
    rla                                           ; $42c6: $17
    rst $38                                       ; $42c7: $ff
    rst $18                                       ; $42c8: $df
    ccf                                           ; $42c9: $3f
    rst $18                                       ; $42ca: $df
    ccf                                           ; $42cb: $3f
    rst $18                                       ; $42cc: $df
    ld sp, $3bdf                                  ; $42cd: $31 $df $3b
    rst $28                                       ; $42d0: $ef
    dec de                                        ; $42d1: $1b
    rst $28                                       ; $42d2: $ef
    dec de                                        ; $42d3: $1b
    rst $28                                       ; $42d4: $ef
    ld de, $026f                                  ; $42d5: $11 $6f $02
    rra                                           ; $42d8: $1f
    inc bc                                        ; $42d9: $03
    nop                                           ; $42da: $00
    adc e                                         ; $42db: $8b
    rst $38                                       ; $42dc: $ff
    nop                                           ; $42dd: $00
    ld c, $f1                                     ; $42de: $0e $f1
    cp $f1                                        ; $42e0: $fe $f1
    cp $f1                                        ; $42e2: $fe $f1
    cp $f1                                        ; $42e4: $fe $f1
    ld hl, sp+$06                                 ; $42e6: $f8 $06
    rst $38                                       ; $42e8: $ff
    adc c                                         ; $42e9: $89
    dec sp                                        ; $42ea: $3b
    rst $38                                       ; $42eb: $ff
    ld d, l                                       ; $42ec: $55
    rst $38                                       ; $42ed: $ff
    ld d, c                                       ; $42ee: $51
    rst $38                                       ; $42ef: $ff
    ld d, l                                       ; $42f0: $55
    rst $38                                       ; $42f1: $ff
    dec [hl]                                      ; $42f2: $35
    inc bc                                        ; $42f3: $03
    rst $38                                       ; $42f4: $ff
    ld [bc], a                                    ; $42f5: $02
    ld a, a                                       ; $42f6: $7f
    sbc [hl]                                      ; $42f7: $9e
    nop                                           ; $42f8: $00
    ld e, [hl]                                    ; $42f9: $5e
    ccf                                           ; $42fa: $3f
    ld e, $7f                                     ; $42fb: $1e $7f
    ld a, [hl]                                    ; $42fd: $7e
    ld a, a                                       ; $42fe: $7f
    ld a, [hl]                                    ; $42ff: $7e
    ld a, a                                       ; $4300: $7f

Jump_0eb_4301:
    ld a, [hl]                                    ; $4301: $7e
    ld a, a                                       ; $4302: $7f
    ld a, [hl]                                    ; $4303: $7e
    ld a, a                                       ; $4304: $7f
    ld a, [hl]                                    ; $4305: $7e
    ld a, a                                       ; $4306: $7f
    ld a, [hl]                                    ; $4307: $7e
    ld a, a                                       ; $4308: $7f
    ld a, [hl]                                    ; $4309: $7e
    cpl                                           ; $430a: $2f
    ld a, [hl]                                    ; $430b: $7e
    cpl                                           ; $430c: $2f
    ld a, [hl]                                    ; $430d: $7e
    ld e, a                                       ; $430e: $5f
    ld a, [hl]                                    ; $430f: $7e
    ld e, a                                       ; $4310: $5f
    ld a, [hl]                                    ; $4311: $7e
    ld e, a                                       ; $4312: $5f
    ld a, [hl]                                    ; $4313: $7e
    ld a, a                                       ; $4314: $7f
    ld a, [hl]                                    ; $4315: $7e
    ld [bc], a                                    ; $4316: $02
    ld a, a                                       ; $4317: $7f
    add c                                         ; $4318: $81
    nop                                           ; $4319: $00
    rst $38                                       ; $431a: $ff

jr_0eb_431b:
    dec d                                         ; $431b: $15
    ld [$100e], sp                                ; $431c: $08 $0e $10
    ldh a, [$f2]                                  ; $431f: $f0 $f2
    pop hl                                        ; $4321: $e1
    nop                                           ; $4322: $00
    pop hl                                        ; $4323: $e1
    ld [$10e1], sp                                ; $4324: $08 $e1 $10
    pop hl                                        ; $4327: $e1
    jr jr_0eb_431b                                ; $4328: $18 $f1

    ld [bc], a                                    ; $432a: $02
    pop af                                        ; $432b: $f1
    ld a, [bc]                                    ; $432c: $0a
    pop af                                        ; $432d: $f1
    ld [de], a                                    ; $432e: $12
    pop af                                        ; $432f: $f1
    jr jr_0eb_42b3                                ; $4330: $18 $81

    rst $38                                       ; $4332: $ff
    ld [bc], a                                    ; $4333: $02
    nop                                           ; $4334: $00
    sbc [hl]                                      ; $4335: $9e
    rst $38                                       ; $4336: $ff
    ld a, a                                       ; $4337: $7f
    rst $38                                       ; $4338: $ff
    ld a, a                                       ; $4339: $7f
    rst $38                                       ; $433a: $ff
    ld a, a                                       ; $433b: $7f
    rst $38                                       ; $433c: $ff
    ld a, a                                       ; $433d: $7f
    rst $38                                       ; $433e: $ff
    cp a                                          ; $433f: $bf
    ld a, a                                       ; $4340: $7f
    ccf                                           ; $4341: $3f
    ld a, [hl]                                    ; $4342: $7e
    ld a, $7d                                     ; $4343: $3e $7d
    ld a, $7f                                     ; $4345: $3e $7f
    ccf                                           ; $4347: $3f
    ld a, a                                       ; $4348: $7f
    ccf                                           ; $4349: $3f
    ld a, a                                       ; $434a: $7f
    ccf                                           ; $434b: $3f
    ld a, a                                       ; $434c: $7f
    ccf                                           ; $434d: $3f
    ld a, a                                       ; $434e: $7f
    ccf                                           ; $434f: $3f
    ld a, a                                       ; $4350: $7f
    inc bc                                        ; $4351: $03
    ccf                                           ; $4352: $3f
    rst $38                                       ; $4353: $ff
    ld [bc], a                                    ; $4354: $02
    nop                                           ; $4355: $00
    ld [$96ff], sp                                ; $4356: $08 $ff $96
    sbc a                                         ; $4359: $9f
    rst $28                                       ; $435a: $ef
    rra                                           ; $435b: $1f
    rst $28                                       ; $435c: $ef
    rra                                           ; $435d: $1f
    rst $28                                       ; $435e: $ef
    rra                                           ; $435f: $1f
    rst $28                                       ; $4360: $ef
    rra                                           ; $4361: $1f
    rst $28                                       ; $4362: $ef
    rra                                           ; $4363: $1f
    rst $28                                       ; $4364: $ef
    rra                                           ; $4365: $1f
    rst $28                                       ; $4366: $ef
    rra                                           ; $4367: $1f
    rst $28                                       ; $4368: $ef
    rra                                           ; $4369: $1f
    ldh a, [$1f]                                  ; $436a: $f0 $1f
    rst $28                                       ; $436c: $ef
    ldh a, [rIE]                                  ; $436d: $f0 $ff
    ld [bc], a                                    ; $436f: $02
    nop                                           ; $4370: $00
    ld [$c8ff], sp                                ; $4371: $08 $ff $c8
    db $fc                                        ; $4374: $fc
    rst $38                                       ; $4375: $ff
    ld hl, sp-$01                                 ; $4376: $f8 $ff
    ldh a, [rIE]                                  ; $4378: $f0 $ff
    ldh [$f7], a                                  ; $437a: $e0 $f7
    add sp, -$19                                  ; $437c: $e8 $e7
    ret c                                         ; $437e: $d8

    rst $08                                       ; $437f: $cf
    cp b                                          ; $4380: $b8
    rst $18                                       ; $4381: $df
    cp b                                          ; $4382: $b8
    sbc a                                         ; $4383: $9f
    ld hl, sp+$7f                                 ; $4384: $f8 $7f
    ld hl, sp+$7f                                 ; $4386: $f8 $7f
    ret nz                                        ; $4388: $c0

    cp $01                                        ; $4389: $fe $01
    nop                                           ; $438b: $00
    rst $38                                       ; $438c: $ff
    cp $ff                                        ; $438d: $fe $ff
    cp $ff                                        ; $438f: $fe $ff
    cp $ff                                        ; $4391: $fe $ff
    cp $ff                                        ; $4393: $fe $ff
    ld a, [hl]                                    ; $4395: $7e
    rst $38                                       ; $4396: $ff
    ld a, [hl]                                    ; $4397: $7e
    rst $38                                       ; $4398: $ff
    ld a, [hl]                                    ; $4399: $7e
    rst $38                                       ; $439a: $ff
    ld a, [hl]                                    ; $439b: $7e
    rst $38                                       ; $439c: $ff
    ld a, [hl]                                    ; $439d: $7e
    rst $38                                       ; $439e: $ff
    ld a, [hl]                                    ; $439f: $7e
    rst $38                                       ; $43a0: $ff
    ld a, [hl]                                    ; $43a1: $7e
    rst $38                                       ; $43a2: $ff
    ld a, [hl]                                    ; $43a3: $7e
    rst $38                                       ; $43a4: $ff
    ld a, [hl]                                    ; $43a5: $7e
    rst $38                                       ; $43a6: $ff
    cp $3f                                        ; $43a7: $fe $3f
    ldh a, [rIF]                                  ; $43a9: $f0 $0f
    ld a, a                                       ; $43ab: $7f
    nop                                           ; $43ac: $00
    ld a, a                                       ; $43ad: $7f
    nop                                           ; $43ae: $00
    ccf                                           ; $43af: $3f
    nop                                           ; $43b0: $00
    rra                                           ; $43b1: $1f
    nop                                           ; $43b2: $00
    rra                                           ; $43b3: $1f
    nop                                           ; $43b4: $00
    rrca                                          ; $43b5: $0f

jr_0eb_43b6:
    nop                                           ; $43b6: $00
    rrca                                          ; $43b7: $0f
    nop                                           ; $43b8: $00
    rlca                                          ; $43b9: $07
    nop                                           ; $43ba: $00
    ld bc, $000d                                  ; $43bb: $01 $0d $00
    sbc h                                         ; $43be: $9c
    ld a, l                                       ; $43bf: $7d
    add e                                         ; $43c0: $83
    db $fd                                        ; $43c1: $fd
    inc bc                                        ; $43c2: $03
    db $fd                                        ; $43c3: $fd
    inc bc                                        ; $43c4: $03
    db $fd                                        ; $43c5: $fd
    inc bc                                        ; $43c6: $03
    db $fd                                        ; $43c7: $fd
    inc bc                                        ; $43c8: $03
    db $fd                                        ; $43c9: $fd
    inc bc                                        ; $43ca: $03
    db $fd                                        ; $43cb: $fd
    inc bc                                        ; $43cc: $03
    db $fd                                        ; $43cd: $fd
    inc bc                                        ; $43ce: $03
    db $fd                                        ; $43cf: $fd
    inc bc                                        ; $43d0: $03
    db $fd                                        ; $43d1: $fd
    inc bc                                        ; $43d2: $03
    cp $01                                        ; $43d3: $fe $01
    ld a, $01                                     ; $43d5: $3e $01
    ld e, $01                                     ; $43d7: $1e $01
    ld b, $01                                     ; $43d9: $06 $01
    inc b                                         ; $43db: $04
    nop                                           ; $43dc: $00
    adc e                                         ; $43dd: $8b
    rst $38                                       ; $43de: $ff
    nop                                           ; $43df: $00
    inc e                                         ; $43e0: $1c
    db $e3                                        ; $43e1: $e3
    db $fd                                        ; $43e2: $fd
    db $e3                                        ; $43e3: $e3
    db $fd                                        ; $43e4: $fd
    db $e3                                        ; $43e5: $e3
    db $fd                                        ; $43e6: $fd
    db $e3                                        ; $43e7: $e3
    pop af                                        ; $43e8: $f1
    ld b, $ff                                     ; $43e9: $06 $ff
    adc h                                         ; $43eb: $8c
    halt                                          ; $43ec: $76
    rst $38                                       ; $43ed: $ff
    xor d                                         ; $43ee: $aa
    rst $38                                       ; $43ef: $ff
    and e                                         ; $43f0: $a3
    rst $38                                       ; $43f1: $ff
    xor e                                         ; $43f2: $ab
    rst $38                                       ; $43f3: $ff
    ld l, e                                       ; $43f4: $6b
    rlca                                          ; $43f5: $07
    rst $38                                       ; $43f6: $ff
    ld hl, sp+$02                                 ; $43f7: $f8 $02
    rlca                                          ; $43f9: $07
    sbc [hl]                                      ; $43fa: $9e
    nop                                           ; $43fb: $00
    ld e, $3f                                     ; $43fc: $1e $3f
    ld e, $3f                                     ; $43fe: $1e $3f
    ld a, $3f                                     ; $4400: $3e $3f
    ld a, $3f                                     ; $4402: $3e $3f
    ld a, $3f                                     ; $4404: $3e $3f
    ld a, $3f                                     ; $4406: $3e $3f
    ld a, $3f                                     ; $4408: $3e $3f
    ld a, $3f                                     ; $440a: $3e $3f
    ld a, $2f                                     ; $440c: $3e $2f
    ld a, $2f                                     ; $440e: $3e $2f
    ld a, $1f                                     ; $4410: $3e $1f
    ld a, $1f                                     ; $4412: $3e $1f
    ld a, $1f                                     ; $4414: $3e $1f
    ld a, $3f                                     ; $4416: $3e $3f
    nop                                           ; $4418: $00
    ld [bc], a                                    ; $4419: $02
    ccf                                           ; $441a: $3f
    add c                                         ; $441b: $81
    nop                                           ; $441c: $00
    rst $38                                       ; $441d: $ff

jr_0eb_441e:
    dec d                                         ; $441e: $15
    ld [$100e], sp                                ; $441f: $08 $0e $10
    ldh a, [$f2]                                  ; $4422: $f0 $f2
    pop hl                                        ; $4424: $e1
    nop                                           ; $4425: $00
    pop hl                                        ; $4426: $e1
    ld [$10e1], sp                                ; $4427: $08 $e1 $10
    pop hl                                        ; $442a: $e1
    jr jr_0eb_441e                                ; $442b: $18 $f1

    nop                                           ; $442d: $00
    pop af                                        ; $442e: $f1
    ld [$10f1], sp                                ; $442f: $08 $f1 $10
    pop af                                        ; $4432: $f1
    jr jr_0eb_43b6                                ; $4433: $18 $81

    rst $38                                       ; $4435: $ff
    ld [bc], a                                    ; $4436: $02
    nop                                           ; $4437: $00
    sbc h                                         ; $4438: $9c
    rst $38                                       ; $4439: $ff
    ld a, a                                       ; $443a: $7f
    rst $38                                       ; $443b: $ff
    ld a, a                                       ; $443c: $7f
    rst $38                                       ; $443d: $ff
    ld a, a                                       ; $443e: $7f
    rst $38                                       ; $443f: $ff
    ld a, a                                       ; $4440: $7f
    rst $38                                       ; $4441: $ff
    ld a, a                                       ; $4442: $7f
    rst $38                                       ; $4443: $ff
    ld a, a                                       ; $4444: $7f
    cp $7e                                        ; $4445: $fe $7e
    db $fd                                        ; $4447: $fd
    ld a, [hl]                                    ; $4448: $7e
    rst $38                                       ; $4449: $ff
    ld a, a                                       ; $444a: $7f
    rst $38                                       ; $444b: $ff
    ld a, a                                       ; $444c: $7f
    rst $38                                       ; $444d: $ff
    ld a, a                                       ; $444e: $7f
    rst $38                                       ; $444f: $ff
    ld a, a                                       ; $4450: $7f
    rst $38                                       ; $4451: $ff
    ld a, a                                       ; $4452: $7f
    rst $38                                       ; $4453: $ff
    ld a, a                                       ; $4454: $7f
    ld [bc], a                                    ; $4455: $02
    rst $38                                       ; $4456: $ff
    ld [bc], a                                    ; $4457: $02
    nop                                           ; $4458: $00
    ld [$96ff], sp                                ; $4459: $08 $ff $96
    sbc a                                         ; $445c: $9f
    rst $28                                       ; $445d: $ef
    rra                                           ; $445e: $1f
    rst $28                                       ; $445f: $ef
    rra                                           ; $4460: $1f
    rst $28                                       ; $4461: $ef
    rra                                           ; $4462: $1f
    rst $28                                       ; $4463: $ef
    rra                                           ; $4464: $1f
    rst $28                                       ; $4465: $ef
    rra                                           ; $4466: $1f
    rst $28                                       ; $4467: $ef
    rra                                           ; $4468: $1f
    rst $28                                       ; $4469: $ef
    rra                                           ; $446a: $1f
    rst $28                                       ; $446b: $ef
    rra                                           ; $446c: $1f
    rst $28                                       ; $446d: $ef
    rra                                           ; $446e: $1f
    rst $28                                       ; $446f: $ef
    rra                                           ; $4470: $1f
    rst $38                                       ; $4471: $ff
    ld [bc], a                                    ; $4472: $02
    nop                                           ; $4473: $00
    ld [$96ff], sp                                ; $4474: $08 $ff $96
    add b                                         ; $4477: $80
    cp $81                                        ; $4478: $fe $81
    ret nz                                        ; $447a: $c0

    cp a                                          ; $447b: $bf
    rst $18                                       ; $447c: $df
    cp a                                          ; $447d: $bf
    rst $18                                       ; $447e: $df
    cp a                                          ; $447f: $bf
    rst $18                                       ; $4480: $df
    cp a                                          ; $4481: $bf
    rst $38                                       ; $4482: $ff
    add e                                         ; $4483: $83
    rst $38                                       ; $4484: $ff
    add b                                         ; $4485: $80
    rst $00                                       ; $4486: $c7
    cp b                                          ; $4487: $b8
    rst $18                                       ; $4488: $df
    db $fc                                        ; $4489: $fc
    rst $38                                       ; $448a: $ff
    db $fc                                        ; $448b: $fc
    rst $38                                       ; $448c: $ff
    ld [bc], a                                    ; $448d: $02
    nop                                           ; $448e: $00
    sbc h                                         ; $448f: $9c
    rst $38                                       ; $4490: $ff
    cp $ff                                        ; $4491: $fe $ff
    cp $ff                                        ; $4493: $fe $ff
    cp $ff                                        ; $4495: $fe $ff
    cp $ff                                        ; $4497: $fe $ff
    ld a, [hl]                                    ; $4499: $7e
    rst $38                                       ; $449a: $ff
    cp $ff                                        ; $449b: $fe $ff
    cp $ff                                        ; $449d: $fe $ff
    cp $ff                                        ; $449f: $fe $ff
    cp $ff                                        ; $44a1: $fe $ff
    cp $ff                                        ; $44a3: $fe $ff
    cp $ff                                        ; $44a5: $fe $ff
    ld a, [hl]                                    ; $44a7: $7e
    rst $38                                       ; $44a8: $ff
    cp $7f                                        ; $44a9: $fe $7f
    cp [hl]                                       ; $44ab: $be
    ld [bc], a                                    ; $44ac: $02
    ld a, a                                       ; $44ad: $7f
    sbc h                                         ; $44ae: $9c
    rst $38                                       ; $44af: $ff
    ld a, a                                       ; $44b0: $7f
    rst $38                                       ; $44b1: $ff
    ld a, a                                       ; $44b2: $7f
    rst $38                                       ; $44b3: $ff
    ld a, a                                       ; $44b4: $7f
    rst $38                                       ; $44b5: $ff
    ld a, a                                       ; $44b6: $7f
    db $fc                                        ; $44b7: $fc
    ld a, [hl]                                    ; $44b8: $7e
    rst $38                                       ; $44b9: $ff
    ld a, a                                       ; $44ba: $7f
    rst $38                                       ; $44bb: $ff
    ld a, a                                       ; $44bc: $7f
    rst $38                                       ; $44bd: $ff
    ld a, a                                       ; $44be: $7f
    and $7f                                       ; $44bf: $e6 $7f
    db $dd                                        ; $44c1: $dd
    ld a, a                                       ; $44c2: $7f
    db $ec                                        ; $44c3: $ec
    ld a, a                                       ; $44c4: $7f
    push af                                       ; $44c5: $f5
    ld a, a                                       ; $44c6: $7f
    call $ff7f                                    ; $44c7: $cd $7f $ff
    ld a, a                                       ; $44ca: $7f
    ld [bc], a                                    ; $44cb: $02
    rst $38                                       ; $44cc: $ff
    adc h                                         ; $44cd: $8c
    nop                                           ; $44ce: $00
    rst $28                                       ; $44cf: $ef
    rra                                           ; $44d0: $1f
    rst $28                                       ; $44d1: $ef
    rra                                           ; $44d2: $1f
    rst $28                                       ; $44d3: $ef
    ld e, $ef                                     ; $44d4: $1e $ef
    ld e, $ff                                     ; $44d6: $1e $ff
    rlca                                          ; $44d8: $07
    inc bc                                        ; $44d9: $03
    ld b, $ff                                     ; $44da: $06 $ff
    adc c                                         ; $44dc: $89
    add l                                         ; $44dd: $85
    rst $38                                       ; $44de: $ff
    ld d, l                                       ; $44df: $55
    rst $38                                       ; $44e0: $ff
    ld d, l                                       ; $44e1: $55
    rst $38                                       ; $44e2: $ff
    ld d, l                                       ; $44e3: $55
    rst $38                                       ; $44e4: $ff
    ld e, e                                       ; $44e5: $5b
    dec b                                         ; $44e6: $05
    rst $38                                       ; $44e7: $ff
    adc h                                         ; $44e8: $8c
    nop                                           ; $44e9: $00
    rst $38                                       ; $44ea: $ff
    db $fc                                        ; $44eb: $fc
    rst $38                                       ; $44ec: $ff
    db $fc                                        ; $44ed: $fc
    rst $38                                       ; $44ee: $ff
    ld a, b                                       ; $44ef: $78
    cp $39                                        ; $44f0: $fe $39
    db $fc                                        ; $44f2: $fc
    inc bc                                        ; $44f3: $03
    add c                                         ; $44f4: $81
    ld b, $ff                                     ; $44f5: $06 $ff
    adc c                                         ; $44f7: $89
    inc sp                                        ; $44f8: $33
    rst $38                                       ; $44f9: $ff
    ld d, l                                       ; $44fa: $55
    rst $38                                       ; $44fb: $ff
    dec [hl]                                      ; $44fc: $35
    rst $38                                       ; $44fd: $ff
    ld d, l                                       ; $44fe: $55
    rst $38                                       ; $44ff: $ff
    ld d, e                                       ; $4500: $53
    dec b                                         ; $4501: $05
    rst $38                                       ; $4502: $ff
    sbc [hl]                                      ; $4503: $9e
    nop                                           ; $4504: $00
    cp [hl]                                       ; $4505: $be
    ld a, a                                       ; $4506: $7f
    cp [hl]                                       ; $4507: $be
    ld a, a                                       ; $4508: $7f
    ld a, $ff                                     ; $4509: $3e $ff
    ld a, [hl]                                    ; $450b: $7e
    rst $38                                       ; $450c: $ff
    cp $ff                                        ; $450d: $fe $ff
    cp $ff                                        ; $450f: $fe $ff
    cp $ff                                        ; $4511: $fe $ff
    cp $ff                                        ; $4513: $fe $ff
    cp $ab                                        ; $4515: $fe $ab
    cp $4b                                        ; $4517: $fe $4b
    cp $17                                        ; $4519: $fe $17
    cp $57                                        ; $451b: $fe $57
    cp $57                                        ; $451d: $fe $57
    cp $ff                                        ; $451f: $fe $ff
    cp $02                                        ; $4521: $fe $02
    rst $38                                       ; $4523: $ff
    add c                                         ; $4524: $81
    nop                                           ; $4525: $00
    rst $38                                       ; $4526: $ff

jr_0eb_4527:
    dec d                                         ; $4527: $15
    ld [$100e], sp                                ; $4528: $08 $0e $10
    ldh a, [$f2]                                  ; $452b: $f0 $f2
    pop hl                                        ; $452d: $e1
    nop                                           ; $452e: $00
    pop hl                                        ; $452f: $e1
    ld [$10e1], sp                                ; $4530: $08 $e1 $10
    pop hl                                        ; $4533: $e1
    jr jr_0eb_4527                                ; $4534: $18 $f1

    ld bc, $09f1                                  ; $4536: $01 $f1 $09
    pop af                                        ; $4539: $f1
    ld de, $18f1                                  ; $453a: $11 $f1 $18
    add c                                         ; $453d: $81
    rst $38                                       ; $453e: $ff
    ld [bc], a                                    ; $453f: $02
    nop                                           ; $4540: $00
    sbc d                                         ; $4541: $9a
    rst $38                                       ; $4542: $ff
    ld a, a                                       ; $4543: $7f
    rst $38                                       ; $4544: $ff
    ld a, a                                       ; $4545: $7f
    rst $38                                       ; $4546: $ff
    ld a, a                                       ; $4547: $7f
    rst $38                                       ; $4548: $ff
    ld a, a                                       ; $4549: $7f
    rst $38                                       ; $454a: $ff
    ld a, a                                       ; $454b: $7f
    rst $38                                       ; $454c: $ff
    ld a, a                                       ; $454d: $7f
    cp $7e                                        ; $454e: $fe $7e
    db $fd                                        ; $4550: $fd
    ld a, [hl]                                    ; $4551: $7e
    rst $38                                       ; $4552: $ff
    ld a, a                                       ; $4553: $7f
    rst $38                                       ; $4554: $ff
    ld a, a                                       ; $4555: $7f
    rst $38                                       ; $4556: $ff
    ld a, a                                       ; $4557: $7f
    rst $38                                       ; $4558: $ff
    ld a, a                                       ; $4559: $7f
    rst $38                                       ; $455a: $ff
    cp a                                          ; $455b: $bf
    ld [bc], a                                    ; $455c: $02
    ld a, a                                       ; $455d: $7f
    add d                                         ; $455e: $82
    ccf                                           ; $455f: $3f
    rst $38                                       ; $4560: $ff
    ld [bc], a                                    ; $4561: $02
    nop                                           ; $4562: $00
    ld [$96ff], sp                                ; $4563: $08 $ff $96
    sbc a                                         ; $4566: $9f
    rst $28                                       ; $4567: $ef
    rra                                           ; $4568: $1f
    rst $28                                       ; $4569: $ef
    rra                                           ; $456a: $1f
    rst $28                                       ; $456b: $ef
    rra                                           ; $456c: $1f
    rst $28                                       ; $456d: $ef
    rra                                           ; $456e: $1f
    rst $28                                       ; $456f: $ef
    rra                                           ; $4570: $1f
    rst $28                                       ; $4571: $ef
    rra                                           ; $4572: $1f
    rst $28                                       ; $4573: $ef
    rra                                           ; $4574: $1f
    rst $28                                       ; $4575: $ef
    rra                                           ; $4576: $1f
    rst $28                                       ; $4577: $ef
    rra                                           ; $4578: $1f
    rst $28                                       ; $4579: $ef
    rra                                           ; $457a: $1f
    rst $38                                       ; $457b: $ff
    ld [bc], a                                    ; $457c: $02
    nop                                           ; $457d: $00
    ld [$d2ff], sp                                ; $457e: $08 $ff $d2
    add b                                         ; $4581: $80
    cp $81                                        ; $4582: $fe $81
    ret nz                                        ; $4584: $c0

    cp a                                          ; $4585: $bf
    rst $18                                       ; $4586: $df
    cp a                                          ; $4587: $bf
    rst $18                                       ; $4588: $df
    cp a                                          ; $4589: $bf
    rst $18                                       ; $458a: $df
    cp a                                          ; $458b: $bf
    rst $38                                       ; $458c: $ff
    add e                                         ; $458d: $83
    rst $38                                       ; $458e: $ff
    add b                                         ; $458f: $80
    rst $00                                       ; $4590: $c7
    cp b                                          ; $4591: $b8
    rst $18                                       ; $4592: $df
    db $fc                                        ; $4593: $fc
    rst $38                                       ; $4594: $ff
    db $fc                                        ; $4595: $fc
    cp $01                                        ; $4596: $fe $01
    nop                                           ; $4598: $00
    rst $38                                       ; $4599: $ff
    cp $ff                                        ; $459a: $fe $ff
    cp $ff                                        ; $459c: $fe $ff
    cp $ff                                        ; $459e: $fe $ff
    cp $ff                                        ; $45a0: $fe $ff
    ld a, [hl]                                    ; $45a2: $7e
    rst $38                                       ; $45a3: $ff
    cp $ff                                        ; $45a4: $fe $ff
    cp $ff                                        ; $45a6: $fe $ff
    cp $ff                                        ; $45a8: $fe $ff
    cp $ff                                        ; $45aa: $fe $ff
    cp $ff                                        ; $45ac: $fe $ff
    cp $ff                                        ; $45ae: $fe $ff
    ld a, [hl]                                    ; $45b0: $7e
    rst $38                                       ; $45b1: $ff
    cp $7f                                        ; $45b2: $fe $7f
    cp [hl]                                       ; $45b4: $be
    ld a, a                                       ; $45b5: $7f
    rst $38                                       ; $45b6: $ff
    ld a, [hl]                                    ; $45b7: $7e
    rst $38                                       ; $45b8: $ff
    ld a, [hl]                                    ; $45b9: $7e
    rst $38                                       ; $45ba: $ff
    ld a, [hl]                                    ; $45bb: $7e
    rst $38                                       ; $45bc: $ff
    ld a, [hl]                                    ; $45bd: $7e
    rst $38                                       ; $45be: $ff
    ld a, b                                       ; $45bf: $78
    db $fc                                        ; $45c0: $fc
    ld a, a                                       ; $45c1: $7f
    rst $38                                       ; $45c2: $ff
    ld a, a                                       ; $45c3: $7f
    rst $38                                       ; $45c4: $ff
    rra                                           ; $45c5: $1f
    rst $38                                       ; $45c6: $ff
    ld bc, $017f                                  ; $45c7: $01 $7f $01
    ld a, a                                       ; $45ca: $7f
    ld bc, HeaderManufacturerCode                 ; $45cb: $01 $3f $01
    ld e, $01                                     ; $45ce: $1e $01
    ld c, $01                                     ; $45d0: $0e $01
    inc bc                                        ; $45d2: $03
    inc bc                                        ; $45d3: $03
    nop                                           ; $45d4: $00
    adc e                                         ; $45d5: $8b
    rst $18                                       ; $45d6: $df
    ccf                                           ; $45d7: $3f
    rst $18                                       ; $45d8: $df
    ccf                                           ; $45d9: $3f
    rst $18                                       ; $45da: $df
    inc a                                         ; $45db: $3c
    rst $18                                       ; $45dc: $df
    inc a                                         ; $45dd: $3c
    rst $38                                       ; $45de: $ff
    ld c, $07                                     ; $45df: $0e $07
    ld b, $ff                                     ; $45e1: $06 $ff
    adc c                                         ; $45e3: $89
    ld a, [bc]                                    ; $45e4: $0a
    rst $38                                       ; $45e5: $ff
    xor d                                         ; $45e6: $aa
    rst $38                                       ; $45e7: $ff
    xor d                                         ; $45e8: $aa
    rst $38                                       ; $45e9: $ff
    xor d                                         ; $45ea: $aa
    rst $38                                       ; $45eb: $ff
    or [hl]                                       ; $45ec: $b6
    inc bc                                        ; $45ed: $03
    rst $38                                       ; $45ee: $ff
    ld [bc], a                                    ; $45ef: $02
    rlca                                          ; $45f0: $07
    adc h                                         ; $45f1: $8c
    nop                                           ; $45f2: $00
    rst $38                                       ; $45f3: $ff
    ld hl, sp-$01                                 ; $45f4: $f8 $ff
    ld hl, sp-$02                                 ; $45f6: $f8 $fe
    pop af                                        ; $45f8: $f1
    db $fc                                        ; $45f9: $fc
    ld [hl], e                                    ; $45fa: $73
    ld sp, hl                                     ; $45fb: $f9
    rlca                                          ; $45fc: $07
    inc bc                                        ; $45fd: $03
    ld b, $ff                                     ; $45fe: $06 $ff
    adc c                                         ; $4600: $89
    ld h, a                                       ; $4601: $67
    rst $38                                       ; $4602: $ff
    xor d                                         ; $4603: $aa
    rst $38                                       ; $4604: $ff
    ld l, d                                       ; $4605: $6a
    rst $38                                       ; $4606: $ff
    xor d                                         ; $4607: $aa
    rst $38                                       ; $4608: $ff
    and [hl]                                      ; $4609: $a6
    dec b                                         ; $460a: $05
    rst $38                                       ; $460b: $ff
    sbc [hl]                                      ; $460c: $9e
    nop                                           ; $460d: $00
    ld a, $7f                                     ; $460e: $3e $7f
    ld a, $7f                                     ; $4610: $3e $7f
    ld a, $7f                                     ; $4612: $3e $7f
    ld a, [hl]                                    ; $4614: $7e
    ld a, a                                       ; $4615: $7f
    ld a, [hl]                                    ; $4616: $7e
    ld a, a                                       ; $4617: $7f
    ld a, [hl]                                    ; $4618: $7e
    ld a, a                                       ; $4619: $7f
    ld a, [hl]                                    ; $461a: $7e
    ld a, a                                       ; $461b: $7f
    ld a, [hl]                                    ; $461c: $7e
    ld a, a                                       ; $461d: $7f
    ld a, [hl]                                    ; $461e: $7e
    dec hl                                        ; $461f: $2b
    ld a, [hl]                                    ; $4620: $7e
    ld c, e                                       ; $4621: $4b
    ld a, [hl]                                    ; $4622: $7e
    rla                                           ; $4623: $17
    ld a, [hl]                                    ; $4624: $7e
    ld d, a                                       ; $4625: $57
    ld a, [hl]                                    ; $4626: $7e
    ld d, a                                       ; $4627: $57
    ld a, [hl]                                    ; $4628: $7e
    ld a, a                                       ; $4629: $7f
    ld a, [hl]                                    ; $462a: $7e
    ld [bc], a                                    ; $462b: $02
    ld a, a                                       ; $462c: $7f
    add c                                         ; $462d: $81
    nop                                           ; $462e: $00
    rst $38                                       ; $462f: $ff

jr_0eb_4630:
    dec d                                         ; $4630: $15
    ld [$100e], sp                                ; $4631: $08 $0e $10
    ldh a, [$f2]                                  ; $4634: $f0 $f2
    pop hl                                        ; $4636: $e1
    nop                                           ; $4637: $00
    pop hl                                        ; $4638: $e1

Jump_0eb_4639:
    ld [$10e1], sp                                ; $4639: $08 $e1 $10
    pop hl                                        ; $463c: $e1
    jr jr_0eb_4630                                ; $463d: $18 $f1

    ld bc, $09f1                                  ; $463f: $01 $f1 $09
    pop af                                        ; $4642: $f1
    ld de, $18f1                                  ; $4643: $11 $f1 $18
    add c                                         ; $4646: $81
    rst $38                                       ; $4647: $ff
    ld [bc], a                                    ; $4648: $02
    nop                                           ; $4649: $00
    sbc [hl]                                      ; $464a: $9e
    rst $38                                       ; $464b: $ff
    ld a, a                                       ; $464c: $7f
    rst $38                                       ; $464d: $ff
    ld a, a                                       ; $464e: $7f
    rst $38                                       ; $464f: $ff
    ld a, a                                       ; $4650: $7f
    rst $38                                       ; $4651: $ff
    ld a, a                                       ; $4652: $7f
    rst $38                                       ; $4653: $ff
    ld a, a                                       ; $4654: $7f
    rst $38                                       ; $4655: $ff
    ld a, a                                       ; $4656: $7f
    cp $7e                                        ; $4657: $fe $7e
    db $fd                                        ; $4659: $fd
    ld a, [hl]                                    ; $465a: $7e
    rst $38                                       ; $465b: $ff
    ld a, a                                       ; $465c: $7f
    rst $38                                       ; $465d: $ff
    cp a                                          ; $465e: $bf
    ld a, a                                       ; $465f: $7f
    ccf                                           ; $4660: $3f
    ld a, a                                       ; $4661: $7f
    ccf                                           ; $4662: $3f
    ld a, a                                       ; $4663: $7f
    ccf                                           ; $4664: $3f
    ld a, a                                       ; $4665: $7f
    ccf                                           ; $4666: $3f
    ld a, a                                       ; $4667: $7f
    rst $38                                       ; $4668: $ff
    ld [bc], a                                    ; $4669: $02
    nop                                           ; $466a: $00
    ld [$96ff], sp                                ; $466b: $08 $ff $96
    sbc a                                         ; $466e: $9f
    rst $28                                       ; $466f: $ef
    rra                                           ; $4670: $1f
    rst $28                                       ; $4671: $ef
    rra                                           ; $4672: $1f
    rst $28                                       ; $4673: $ef
    rra                                           ; $4674: $1f
    rst $28                                       ; $4675: $ef
    rra                                           ; $4676: $1f
    rst $28                                       ; $4677: $ef
    rra                                           ; $4678: $1f
    rst $28                                       ; $4679: $ef
    rra                                           ; $467a: $1f
    rst $28                                       ; $467b: $ef
    rra                                           ; $467c: $1f
    rst $28                                       ; $467d: $ef
    rra                                           ; $467e: $1f
    rst $28                                       ; $467f: $ef
    rra                                           ; $4680: $1f
    rst $28                                       ; $4681: $ef
    rra                                           ; $4682: $1f
    rst $38                                       ; $4683: $ff
    ld [bc], a                                    ; $4684: $02
    nop                                           ; $4685: $00
    ld [$b4ff], sp                                ; $4686: $08 $ff $b4
    add b                                         ; $4689: $80
    cp $81                                        ; $468a: $fe $81
    ret nz                                        ; $468c: $c0

    cp a                                          ; $468d: $bf
    rst $18                                       ; $468e: $df
    cp a                                          ; $468f: $bf
    rst $18                                       ; $4690: $df
    cp a                                          ; $4691: $bf
    rst $18                                       ; $4692: $df
    cp a                                          ; $4693: $bf
    rst $38                                       ; $4694: $ff
    add e                                         ; $4695: $83
    rst $38                                       ; $4696: $ff
    add b                                         ; $4697: $80
    rst $00                                       ; $4698: $c7
    cp b                                          ; $4699: $b8
    rst $18                                       ; $469a: $df
    db $fc                                        ; $469b: $fc
    rst $38                                       ; $469c: $ff
    db $fc                                        ; $469d: $fc
    cp $01                                        ; $469e: $fe $01
    nop                                           ; $46a0: $00
    rst $38                                       ; $46a1: $ff
    cp $ff                                        ; $46a2: $fe $ff
    cp $ff                                        ; $46a4: $fe $ff
    cp $ff                                        ; $46a6: $fe $ff
    cp $ff                                        ; $46a8: $fe $ff
    ld a, [hl]                                    ; $46aa: $7e
    rst $38                                       ; $46ab: $ff
    cp $ff                                        ; $46ac: $fe $ff
    cp $ff                                        ; $46ae: $fe $ff
    cp $ff                                        ; $46b0: $fe $ff
    cp $ff                                        ; $46b2: $fe $ff
    cp $ff                                        ; $46b4: $fe $ff
    cp $ff                                        ; $46b6: $fe $ff
    ld a, [hl]                                    ; $46b8: $7e
    rst $38                                       ; $46b9: $ff
    cp $7f                                        ; $46ba: $fe $7f
    cp [hl]                                       ; $46bc: $be
    ld [bc], a                                    ; $46bd: $02
    ld a, a                                       ; $46be: $7f
    sbc b                                         ; $46bf: $98
    cp $7f                                        ; $46c0: $fe $7f
    cp $7f                                        ; $46c2: $fe $7f
    cp $bd                                        ; $46c4: $fe $bd
    ld a, [hl]                                    ; $46c6: $7e
    rst $00                                       ; $46c7: $c7
    ccf                                           ; $46c8: $3f
    ld a, h                                       ; $46c9: $7c
    inc bc                                        ; $46ca: $03
    ccf                                           ; $46cb: $3f
    nop                                           ; $46cc: $00
    ccf                                           ; $46cd: $3f
    nop                                           ; $46ce: $00
    rra                                           ; $46cf: $1f
    nop                                           ; $46d0: $00
    rra                                           ; $46d1: $1f

jr_0eb_46d2:
    nop                                           ; $46d2: $00
    rrca                                          ; $46d3: $0f
    nop                                           ; $46d4: $00
    rlca                                          ; $46d5: $07
    nop                                           ; $46d6: $00
    ld bc, $0007                                  ; $46d7: $01 $07 $00
    sbc e                                         ; $46da: $9b
    rst $18                                       ; $46db: $df
    ccf                                           ; $46dc: $3f
    rst $18                                       ; $46dd: $df
    ccf                                           ; $46de: $3f
    rst $18                                       ; $46df: $df
    inc a                                         ; $46e0: $3c
    rst $18                                       ; $46e1: $df
    inc a                                         ; $46e2: $3c
    rst $38                                       ; $46e3: $ff
    xor $17                                       ; $46e4: $ee $17
    rst $38                                       ; $46e6: $ff
    rst $18                                       ; $46e7: $df
    ccf                                           ; $46e8: $3f
    rst $18                                       ; $46e9: $df
    ccf                                           ; $46ea: $3f
    rst $18                                       ; $46eb: $df
    ld a, [hl-]                                   ; $46ec: $3a
    rst $18                                       ; $46ed: $df
    ld a, [hl-]                                   ; $46ee: $3a
    rst $28                                       ; $46ef: $ef
    ld a, [de]                                    ; $46f0: $1a
    rst $28                                       ; $46f1: $ef
    ld a, [de]                                    ; $46f2: $1a
    rst $28                                       ; $46f3: $ef
    ld e, $6f                                     ; $46f4: $1e $6f
    ld [bc], a                                    ; $46f6: $02
    rra                                           ; $46f7: $1f
    inc bc                                        ; $46f8: $03
    nop                                           ; $46f9: $00
    adc e                                         ; $46fa: $8b
    rst $38                                       ; $46fb: $ff
    ld hl, sp-$01                                 ; $46fc: $f8 $ff
    ld hl, sp-$02                                 ; $46fe: $f8 $fe
    pop af                                        ; $4700: $f1
    db $fc                                        ; $4701: $fc
    ld [hl], e                                    ; $4702: $73
    ld sp, hl                                     ; $4703: $f9
    rlca                                          ; $4704: $07
    inc bc                                        ; $4705: $03
    ld b, $ff                                     ; $4706: $06 $ff
    adc c                                         ; $4708: $89
    ld h, a                                       ; $4709: $67
    rst $38                                       ; $470a: $ff
    xor d                                         ; $470b: $aa
    rst $38                                       ; $470c: $ff
    ld l, d                                       ; $470d: $6a
    rst $38                                       ; $470e: $ff
    xor d                                         ; $470f: $aa
    rst $38                                       ; $4710: $ff
    and [hl]                                      ; $4711: $a6
    inc bc                                        ; $4712: $03
    rst $38                                       ; $4713: $ff
    ld [bc], a                                    ; $4714: $02
    ld a, a                                       ; $4715: $7f
    sbc [hl]                                      ; $4716: $9e
    nop                                           ; $4717: $00
    ld a, $7f                                     ; $4718: $3e $7f
    ld a, $7f                                     ; $471a: $3e $7f
    ld a, $7f                                     ; $471c: $3e $7f
    ld a, [hl]                                    ; $471e: $7e
    ld a, a                                       ; $471f: $7f
    ld a, [hl]                                    ; $4720: $7e
    ld a, a                                       ; $4721: $7f
    ld a, [hl]                                    ; $4722: $7e
    ld a, a                                       ; $4723: $7f
    ld a, [hl]                                    ; $4724: $7e
    ld a, a                                       ; $4725: $7f
    ld a, [hl]                                    ; $4726: $7e
    ld a, a                                       ; $4727: $7f
    ld a, [hl]                                    ; $4728: $7e
    dec hl                                        ; $4729: $2b
    ld a, [hl]                                    ; $472a: $7e
    ld c, e                                       ; $472b: $4b
    ld a, [hl]                                    ; $472c: $7e
    rla                                           ; $472d: $17
    ld a, [hl]                                    ; $472e: $7e
    ld d, a                                       ; $472f: $57
    ld a, [hl]                                    ; $4730: $7e
    ld d, a                                       ; $4731: $57
    ld a, [hl]                                    ; $4732: $7e
    ld a, a                                       ; $4733: $7f
    ld a, [hl]                                    ; $4734: $7e
    ld [bc], a                                    ; $4735: $02
    ld a, a                                       ; $4736: $7f
    add c                                         ; $4737: $81
    nop                                           ; $4738: $00
    rst $38                                       ; $4739: $ff

jr_0eb_473a:
    dec d                                         ; $473a: $15
    ld [$100e], sp                                ; $473b: $08 $0e $10
    ldh a, [$f2]                                  ; $473e: $f0 $f2
    pop hl                                        ; $4740: $e1
    nop                                           ; $4741: $00
    pop hl                                        ; $4742: $e1
    ld [$10e1], sp                                ; $4743: $08 $e1 $10
    pop hl                                        ; $4746: $e1
    jr jr_0eb_473a                                ; $4747: $18 $f1

    ld [bc], a                                    ; $4749: $02
    pop af                                        ; $474a: $f1
    ld a, [bc]                                    ; $474b: $0a
    pop af                                        ; $474c: $f1
    ld [de], a                                    ; $474d: $12
    pop af                                        ; $474e: $f1
    jr jr_0eb_46d2                                ; $474f: $18 $81

    rst $38                                       ; $4751: $ff
    ld [bc], a                                    ; $4752: $02
    nop                                           ; $4753: $00
    sbc [hl]                                      ; $4754: $9e
    rst $38                                       ; $4755: $ff
    ld a, a                                       ; $4756: $7f
    rst $38                                       ; $4757: $ff
    ld a, a                                       ; $4758: $7f
    rst $38                                       ; $4759: $ff
    ld a, a                                       ; $475a: $7f
    rst $38                                       ; $475b: $ff
    ld a, a                                       ; $475c: $7f
    rst $38                                       ; $475d: $ff
    cp a                                          ; $475e: $bf
    ld a, a                                       ; $475f: $7f
    ccf                                           ; $4760: $3f
    ld a, [hl]                                    ; $4761: $7e
    ld a, $7d                                     ; $4762: $3e $7d
    ld a, $7f                                     ; $4764: $3e $7f
    ccf                                           ; $4766: $3f
    ld a, a                                       ; $4767: $7f
    ccf                                           ; $4768: $3f
    ld a, a                                       ; $4769: $7f
    ccf                                           ; $476a: $3f
    ld a, a                                       ; $476b: $7f
    ccf                                           ; $476c: $3f
    ld a, a                                       ; $476d: $7f
    ccf                                           ; $476e: $3f
    ld a, a                                       ; $476f: $7f
    inc bc                                        ; $4770: $03
    ccf                                           ; $4771: $3f
    rst $38                                       ; $4772: $ff
    ld [bc], a                                    ; $4773: $02
    nop                                           ; $4774: $00
    ld [$96ff], sp                                ; $4775: $08 $ff $96
    sbc a                                         ; $4778: $9f
    rst $28                                       ; $4779: $ef
    rra                                           ; $477a: $1f
    rst $28                                       ; $477b: $ef
    rra                                           ; $477c: $1f
    rst $28                                       ; $477d: $ef
    rra                                           ; $477e: $1f
    rst $28                                       ; $477f: $ef
    rra                                           ; $4780: $1f
    rst $28                                       ; $4781: $ef
    rra                                           ; $4782: $1f
    rst $28                                       ; $4783: $ef
    rra                                           ; $4784: $1f
    rst $28                                       ; $4785: $ef
    rra                                           ; $4786: $1f
    rst $28                                       ; $4787: $ef
    rra                                           ; $4788: $1f
    ldh a, [$1f]                                  ; $4789: $f0 $1f
    rst $28                                       ; $478b: $ef
    ldh a, [rIE]                                  ; $478c: $f0 $ff
    ld [bc], a                                    ; $478e: $02
    nop                                           ; $478f: $00
    ld [$c8ff], sp                                ; $4790: $08 $ff $c8
    add b                                         ; $4793: $80
    cp $81                                        ; $4794: $fe $81
    ret nz                                        ; $4796: $c0

    cp a                                          ; $4797: $bf
    rst $18                                       ; $4798: $df
    cp a                                          ; $4799: $bf
    rst $18                                       ; $479a: $df
    cp a                                          ; $479b: $bf
    rst $18                                       ; $479c: $df
    cp a                                          ; $479d: $bf
    rst $38                                       ; $479e: $ff
    add e                                         ; $479f: $83
    rst $38                                       ; $47a0: $ff
    add b                                         ; $47a1: $80
    rst $00                                       ; $47a2: $c7
    cp b                                          ; $47a3: $b8
    ld e, a                                       ; $47a4: $5f
    db $fc                                        ; $47a5: $fc
    ld a, a                                       ; $47a6: $7f
    db $fc                                        ; $47a7: $fc
    cp $01                                        ; $47a8: $fe $01
    nop                                           ; $47aa: $00
    rst $38                                       ; $47ab: $ff
    cp $ff                                        ; $47ac: $fe $ff
    cp $ff                                        ; $47ae: $fe $ff
    cp $ff                                        ; $47b0: $fe $ff
    cp $ff                                        ; $47b2: $fe $ff
    ld a, [hl]                                    ; $47b4: $7e
    rst $38                                       ; $47b5: $ff
    cp $ff                                        ; $47b6: $fe $ff
    cp $ff                                        ; $47b8: $fe $ff
    cp $ff                                        ; $47ba: $fe $ff
    cp $ff                                        ; $47bc: $fe $ff
    cp $ff                                        ; $47be: $fe $ff
    cp $ff                                        ; $47c0: $fe $ff
    ld a, [hl]                                    ; $47c2: $7e
    rst $38                                       ; $47c3: $ff
    cp $7f                                        ; $47c4: $fe $7f
    cp [hl]                                       ; $47c6: $be
    ld a, a                                       ; $47c7: $7f
    ldh a, [rIF]                                  ; $47c8: $f0 $0f
    ld a, a                                       ; $47ca: $7f
    nop                                           ; $47cb: $00
    ld a, a                                       ; $47cc: $7f
    nop                                           ; $47cd: $00
    ccf                                           ; $47ce: $3f
    nop                                           ; $47cf: $00
    rra                                           ; $47d0: $1f
    nop                                           ; $47d1: $00
    rra                                           ; $47d2: $1f
    nop                                           ; $47d3: $00
    rrca                                          ; $47d4: $0f

jr_0eb_47d5:
    nop                                           ; $47d5: $00
    rrca                                          ; $47d6: $0f
    nop                                           ; $47d7: $00
    rlca                                          ; $47d8: $07
    nop                                           ; $47d9: $00
    ld bc, $000d                                  ; $47da: $01 $0d $00
    sbc h                                         ; $47dd: $9c
    ld a, l                                       ; $47de: $7d
    add e                                         ; $47df: $83
    db $fd                                        ; $47e0: $fd
    inc bc                                        ; $47e1: $03
    db $fd                                        ; $47e2: $fd
    inc bc                                        ; $47e3: $03
    db $fd                                        ; $47e4: $fd
    inc bc                                        ; $47e5: $03
    db $fd                                        ; $47e6: $fd
    inc bc                                        ; $47e7: $03
    db $fd                                        ; $47e8: $fd
    inc bc                                        ; $47e9: $03
    db $fd                                        ; $47ea: $fd
    inc bc                                        ; $47eb: $03
    db $fd                                        ; $47ec: $fd
    inc bc                                        ; $47ed: $03
    db $fd                                        ; $47ee: $fd
    inc bc                                        ; $47ef: $03
    db $fd                                        ; $47f0: $fd
    inc bc                                        ; $47f1: $03
    cp $01                                        ; $47f2: $fe $01
    ld a, $01                                     ; $47f4: $3e $01
    ld e, $01                                     ; $47f6: $1e $01
    ld b, $01                                     ; $47f8: $06 $01
    inc b                                         ; $47fa: $04
    nop                                           ; $47fb: $00
    adc e                                         ; $47fc: $8b
    cp $f1                                        ; $47fd: $fe $f1
    cp $f1                                        ; $47ff: $fe $f1
    db $fc                                        ; $4801: $fc
    db $e3                                        ; $4802: $e3
    ld sp, hl                                     ; $4803: $f9
    rst $20                                       ; $4804: $e7
    di                                            ; $4805: $f3
    rrca                                          ; $4806: $0f
    rlca                                          ; $4807: $07
    ld b, $ff                                     ; $4808: $06 $ff
    adc h                                         ; $480a: $8c
    adc $ff                                       ; $480b: $ce $ff
    push de                                       ; $480d: $d5
    rst $38                                       ; $480e: $ff
    call nc, $d5ff                                ; $480f: $d4 $ff $d5
    rst $38                                       ; $4812: $ff
    call $ff07                                    ; $4813: $cd $07 $ff
    ld hl, sp+$02                                 ; $4816: $f8 $02
    rlca                                          ; $4818: $07
    sbc [hl]                                      ; $4819: $9e
    nop                                           ; $481a: $00
    ld a, $3f                                     ; $481b: $3e $3f
    ld a, $3f                                     ; $481d: $3e $3f
    ld a, $3f                                     ; $481f: $3e $3f
    ld a, $3f                                     ; $4821: $3e $3f
    ld a, $3f                                     ; $4823: $3e $3f
    ld a, $3f                                     ; $4825: $3e $3f
    ld a, $3f                                     ; $4827: $3e $3f
    ld a, $3f                                     ; $4829: $3e $3f
    ld a, $2b                                     ; $482b: $3e $2b
    ld a, $0b                                     ; $482d: $3e $0b
    ld a, $17                                     ; $482f: $3e $17
    ld a, $17                                     ; $4831: $3e $17
    ld a, $17                                     ; $4833: $3e $17
    ld a, $3f                                     ; $4835: $3e $3f
    nop                                           ; $4837: $00
    ld [bc], a                                    ; $4838: $02
    ccf                                           ; $4839: $3f
    add c                                         ; $483a: $81
    nop                                           ; $483b: $00
    rst $38                                       ; $483c: $ff

jr_0eb_483d:
    dec d                                         ; $483d: $15
    ld [$100e], sp                                ; $483e: $08 $0e $10
    ldh a, [$f2]                                  ; $4841: $f0 $f2
    pop hl                                        ; $4843: $e1
    nop                                           ; $4844: $00
    pop hl                                        ; $4845: $e1
    ld [$10e1], sp                                ; $4846: $08 $e1 $10
    pop hl                                        ; $4849: $e1
    jr jr_0eb_483d                                ; $484a: $18 $f1

    nop                                           ; $484c: $00
    pop af                                        ; $484d: $f1
    ld [$10f1], sp                                ; $484e: $08 $f1 $10
    pop af                                        ; $4851: $f1
    jr jr_0eb_47d5                                ; $4852: $18 $81

    rst $38                                       ; $4854: $ff
    ld [bc], a                                    ; $4855: $02
    nop                                           ; $4856: $00
    sbc h                                         ; $4857: $9c
    rst $38                                       ; $4858: $ff
    ld a, a                                       ; $4859: $7f
    rst $38                                       ; $485a: $ff
    ld a, a                                       ; $485b: $7f
    rst $38                                       ; $485c: $ff
    ld a, a                                       ; $485d: $7f
    rst $38                                       ; $485e: $ff
    ld a, a                                       ; $485f: $7f
    rst $38                                       ; $4860: $ff
    ld a, a                                       ; $4861: $7f
    rst $38                                       ; $4862: $ff
    ld a, a                                       ; $4863: $7f
    cp $7e                                        ; $4864: $fe $7e
    db $fd                                        ; $4866: $fd
    ld a, [hl]                                    ; $4867: $7e
    rst $38                                       ; $4868: $ff
    ld a, a                                       ; $4869: $7f
    rst $38                                       ; $486a: $ff
    ld a, a                                       ; $486b: $7f
    rst $38                                       ; $486c: $ff
    ld a, a                                       ; $486d: $7f
    rst $38                                       ; $486e: $ff
    ld a, a                                       ; $486f: $7f
    rst $38                                       ; $4870: $ff
    ld a, a                                       ; $4871: $7f
    rst $38                                       ; $4872: $ff
    ld a, a                                       ; $4873: $7f
    ld [bc], a                                    ; $4874: $02
    rst $38                                       ; $4875: $ff
    ld [bc], a                                    ; $4876: $02
    nop                                           ; $4877: $00
    ld [$96ff], sp                                ; $4878: $08 $ff $96
    sbc a                                         ; $487b: $9f
    rst $28                                       ; $487c: $ef
    rra                                           ; $487d: $1f
    rst $28                                       ; $487e: $ef
    rra                                           ; $487f: $1f
    rst $28                                       ; $4880: $ef
    rra                                           ; $4881: $1f
    rst $28                                       ; $4882: $ef
    rra                                           ; $4883: $1f
    rst $28                                       ; $4884: $ef
    rra                                           ; $4885: $1f
    rst $28                                       ; $4886: $ef
    rra                                           ; $4887: $1f
    rst $28                                       ; $4888: $ef
    ld e, $ef                                     ; $4889: $1e $ef
    ld e, $ef                                     ; $488b: $1e $ef
    ld e, $ef                                     ; $488d: $1e $ef
    ld e, $ff                                     ; $488f: $1e $ff
    ld [bc], a                                    ; $4891: $02
    nop                                           ; $4892: $00
    ld [$96ff], sp                                ; $4893: $08 $ff $96
    db $fc                                        ; $4896: $fc
    cp $f1                                        ; $4897: $fe $f1
    ld hl, sp-$39                                 ; $4899: $f8 $c7
    di                                            ; $489b: $f3
    adc a                                         ; $489c: $8f
    rst $20                                       ; $489d: $e7
    sbc a                                         ; $489e: $9f
    rst $28                                       ; $489f: $ef
    rra                                           ; $48a0: $1f
    rst $18                                       ; $48a1: $df
    ld hl, $38d7                                  ; $48a2: $21 $d7 $38
    rst $18                                       ; $48a5: $df
    inc a                                         ; $48a6: $3c
    rst $18                                       ; $48a7: $df
    inc a                                         ; $48a8: $3c
    rst $18                                       ; $48a9: $df
    inc a                                         ; $48aa: $3c
    rst $38                                       ; $48ab: $ff
    ld [bc], a                                    ; $48ac: $02
    nop                                           ; $48ad: $00
    sbc h                                         ; $48ae: $9c
    rst $38                                       ; $48af: $ff
    cp $ff                                        ; $48b0: $fe $ff
    cp $ff                                        ; $48b2: $fe $ff
    cp $ff                                        ; $48b4: $fe $ff
    cp $7f                                        ; $48b6: $fe $7f
    ld a, $ff                                     ; $48b8: $3e $ff
    cp $ff                                        ; $48ba: $fe $ff
    cp $ff                                        ; $48bc: $fe $ff
    cp $ff                                        ; $48be: $fe $ff
    cp $ff                                        ; $48c0: $fe $ff
    cp $ff                                        ; $48c2: $fe $ff
    cp $ff                                        ; $48c4: $fe $ff
    cp $7f                                        ; $48c6: $fe $7f
    cp [hl]                                       ; $48c8: $be
    ld a, a                                       ; $48c9: $7f
    cp [hl]                                       ; $48ca: $be
    ld [bc], a                                    ; $48cb: $02
    ld a, a                                       ; $48cc: $7f
    sbc h                                         ; $48cd: $9c
    rst $38                                       ; $48ce: $ff
    ld a, a                                       ; $48cf: $7f
    rst $38                                       ; $48d0: $ff
    ld a, a                                       ; $48d1: $7f
    rst $38                                       ; $48d2: $ff
    ld a, a                                       ; $48d3: $7f
    rst $38                                       ; $48d4: $ff
    ld a, a                                       ; $48d5: $7f
    db $fc                                        ; $48d6: $fc
    ld a, [hl]                                    ; $48d7: $7e
    rst $38                                       ; $48d8: $ff
    ld a, a                                       ; $48d9: $7f
    rst $38                                       ; $48da: $ff
    ld a, a                                       ; $48db: $7f
    rst $38                                       ; $48dc: $ff
    ld a, a                                       ; $48dd: $7f
    ld sp, hl                                     ; $48de: $f9
    ld a, a                                       ; $48df: $7f
    rst $30                                       ; $48e0: $f7
    ld a, a                                       ; $48e1: $7f
    ei                                            ; $48e2: $fb
    ld a, a                                       ; $48e3: $7f
    db $fd                                        ; $48e4: $fd
    ld a, a                                       ; $48e5: $7f
    di                                            ; $48e6: $f3
    ld a, a                                       ; $48e7: $7f
    rst $38                                       ; $48e8: $ff
    ld a, a                                       ; $48e9: $7f
    ld [bc], a                                    ; $48ea: $02
    rst $38                                       ; $48eb: $ff
    adc h                                         ; $48ec: $8c
    nop                                           ; $48ed: $00
    rst $28                                       ; $48ee: $ef
    ld e, $ef                                     ; $48ef: $1e $ef
    ld e, $ef                                     ; $48f1: $1e $ef
    rra                                           ; $48f3: $1f
    rst $28                                       ; $48f4: $ef
    rra                                           ; $48f5: $1f
    rst $38                                       ; $48f6: $ff
    rlca                                          ; $48f7: $07
    inc bc                                        ; $48f8: $03
    ld b, $ff                                     ; $48f9: $06 $ff
    adc c                                         ; $48fb: $89
    ld d, [hl]                                    ; $48fc: $56
    rst $38                                       ; $48fd: $ff
    ld d, d                                       ; $48fe: $52
    rst $38                                       ; $48ff: $ff
    ld d, d                                       ; $4900: $52
    rst $38                                       ; $4901: $ff
    ld d, h                                       ; $4902: $54
    rst $38                                       ; $4903: $ff
    or [hl]                                       ; $4904: $b6
    dec b                                         ; $4905: $05
    rst $38                                       ; $4906: $ff
    adc h                                         ; $4907: $8c
    nop                                           ; $4908: $00
    rst $18                                       ; $4909: $df
    inc a                                         ; $490a: $3c
    rst $18                                       ; $490b: $df
    inc a                                         ; $490c: $3c
    rst $18                                       ; $490d: $df
    inc a                                         ; $490e: $3c
    rst $38                                       ; $490f: $ff
    sbc b                                         ; $4910: $98
    db $fc                                        ; $4911: $fc
    jp Jump_000_06e1                              ; $4912: $c3 $e1 $06


    rst $38                                       ; $4915: $ff
    adc c                                         ; $4916: $89
    sbc l                                         ; $4917: $9d
    rst $38                                       ; $4918: $ff
    xor d                                         ; $4919: $aa
    rst $38                                       ; $491a: $ff
    xor b                                         ; $491b: $a8
    rst $38                                       ; $491c: $ff
    xor d                                         ; $491d: $aa
    rst $38                                       ; $491e: $ff
    sbc d                                         ; $491f: $9a
    dec b                                         ; $4920: $05
    rst $38                                       ; $4921: $ff
    sbc [hl]                                      ; $4922: $9e
    nop                                           ; $4923: $00
    cp [hl]                                       ; $4924: $be
    ld a, a                                       ; $4925: $7f
    cp [hl]                                       ; $4926: $be
    ld a, a                                       ; $4927: $7f
    ld a, $ff                                     ; $4928: $3e $ff
    ld a, [hl]                                    ; $492a: $7e
    rst $38                                       ; $492b: $ff
    ld a, [hl]                                    ; $492c: $7e
    rst $38                                       ; $492d: $ff
    cp $ff                                        ; $492e: $fe $ff
    cp $ff                                        ; $4930: $fe $ff
    cp $ff                                        ; $4932: $fe $ff
    cp $af                                        ; $4934: $fe $af
    cp $af                                        ; $4936: $fe $af
    cp $df                                        ; $4938: $fe $df
    cp $df                                        ; $493a: $fe $df
    cp $df                                        ; $493c: $fe $df
    cp $ff                                        ; $493e: $fe $ff
    cp $02                                        ; $4940: $fe $02
    rst $38                                       ; $4942: $ff
    add c                                         ; $4943: $81
    nop                                           ; $4944: $00
    rst $38                                       ; $4945: $ff

jr_0eb_4946:
    dec d                                         ; $4946: $15
    ld [$100e], sp                                ; $4947: $08 $0e $10
    ldh a, [$f2]                                  ; $494a: $f0 $f2
    pop hl                                        ; $494c: $e1
    nop                                           ; $494d: $00
    pop hl                                        ; $494e: $e1
    ld [$10e1], sp                                ; $494f: $08 $e1 $10
    pop hl                                        ; $4952: $e1
    jr jr_0eb_4946                                ; $4953: $18 $f1

    ld bc, $09f1                                  ; $4955: $01 $f1 $09
    pop af                                        ; $4958: $f1
    ld de, $18f1                                  ; $4959: $11 $f1 $18
    add c                                         ; $495c: $81
    rst $38                                       ; $495d: $ff
    ld [bc], a                                    ; $495e: $02
    nop                                           ; $495f: $00
    sbc d                                         ; $4960: $9a
    rst $38                                       ; $4961: $ff
    ld a, a                                       ; $4962: $7f
    rst $38                                       ; $4963: $ff
    ld a, a                                       ; $4964: $7f
    rst $38                                       ; $4965: $ff
    ld a, a                                       ; $4966: $7f
    rst $38                                       ; $4967: $ff
    ld a, a                                       ; $4968: $7f
    rst $38                                       ; $4969: $ff
    ld a, a                                       ; $496a: $7f
    rst $38                                       ; $496b: $ff
    ld a, a                                       ; $496c: $7f
    cp $7e                                        ; $496d: $fe $7e
    db $fd                                        ; $496f: $fd
    ld a, [hl]                                    ; $4970: $7e
    rst $38                                       ; $4971: $ff
    ld a, a                                       ; $4972: $7f
    rst $38                                       ; $4973: $ff
    ld a, a                                       ; $4974: $7f
    rst $38                                       ; $4975: $ff
    ld a, a                                       ; $4976: $7f
    rst $38                                       ; $4977: $ff
    ld a, a                                       ; $4978: $7f
    rst $38                                       ; $4979: $ff
    cp a                                          ; $497a: $bf
    ld [bc], a                                    ; $497b: $02
    ld a, a                                       ; $497c: $7f
    add d                                         ; $497d: $82
    ccf                                           ; $497e: $3f
    rst $38                                       ; $497f: $ff
    ld [bc], a                                    ; $4980: $02
    nop                                           ; $4981: $00
    ld [$96ff], sp                                ; $4982: $08 $ff $96
    sbc a                                         ; $4985: $9f
    rst $28                                       ; $4986: $ef
    rra                                           ; $4987: $1f
    rst $28                                       ; $4988: $ef
    rra                                           ; $4989: $1f
    rst $28                                       ; $498a: $ef
    rra                                           ; $498b: $1f
    rst $28                                       ; $498c: $ef
    rra                                           ; $498d: $1f
    rst $28                                       ; $498e: $ef
    rra                                           ; $498f: $1f
    rst $28                                       ; $4990: $ef
    rra                                           ; $4991: $1f
    rst $28                                       ; $4992: $ef
    ld e, $ef                                     ; $4993: $1e $ef
    ld e, $ef                                     ; $4995: $1e $ef
    ld e, $ef                                     ; $4997: $1e $ef
    ld e, $ff                                     ; $4999: $1e $ff
    ld [bc], a                                    ; $499b: $02
    nop                                           ; $499c: $00
    ld [$d2ff], sp                                ; $499d: $08 $ff $d2
    db $fc                                        ; $49a0: $fc
    cp $f1                                        ; $49a1: $fe $f1
    ld hl, sp-$39                                 ; $49a3: $f8 $c7
    di                                            ; $49a5: $f3
    adc a                                         ; $49a6: $8f
    rst $20                                       ; $49a7: $e7
    sbc a                                         ; $49a8: $9f
    rst $28                                       ; $49a9: $ef
    rra                                           ; $49aa: $1f
    rst $18                                       ; $49ab: $df
    ld hl, $38d7                                  ; $49ac: $21 $d7 $38
    rst $18                                       ; $49af: $df
    inc a                                         ; $49b0: $3c
    rst $18                                       ; $49b1: $df
    inc a                                         ; $49b2: $3c
    rst $18                                       ; $49b3: $df
    inc a                                         ; $49b4: $3c
    cp $01                                        ; $49b5: $fe $01
    nop                                           ; $49b7: $00
    rst $38                                       ; $49b8: $ff
    cp $ff                                        ; $49b9: $fe $ff
    cp $ff                                        ; $49bb: $fe $ff
    cp $ff                                        ; $49bd: $fe $ff
    cp $7f                                        ; $49bf: $fe $7f
    ld a, $ff                                     ; $49c1: $3e $ff
    cp $ff                                        ; $49c3: $fe $ff
    cp $ff                                        ; $49c5: $fe $ff
    cp $ff                                        ; $49c7: $fe $ff
    cp $ff                                        ; $49c9: $fe $ff
    cp $ff                                        ; $49cb: $fe $ff
    cp $ff                                        ; $49cd: $fe $ff
    cp $7f                                        ; $49cf: $fe $7f
    cp [hl]                                       ; $49d1: $be
    ld a, a                                       ; $49d2: $7f
    cp [hl]                                       ; $49d3: $be
    ld a, a                                       ; $49d4: $7f
    rst $38                                       ; $49d5: $ff
    ld a, [hl]                                    ; $49d6: $7e
    rst $38                                       ; $49d7: $ff
    ld a, [hl]                                    ; $49d8: $7e
    rst $38                                       ; $49d9: $ff
    ld a, [hl]                                    ; $49da: $7e
    rst $38                                       ; $49db: $ff
    ld a, [hl]                                    ; $49dc: $7e
    rst $38                                       ; $49dd: $ff
    ld a, b                                       ; $49de: $78
    db $fc                                        ; $49df: $fc
    ld a, a                                       ; $49e0: $7f
    rst $38                                       ; $49e1: $ff
    ld a, a                                       ; $49e2: $7f
    rst $38                                       ; $49e3: $ff
    rra                                           ; $49e4: $1f
    rst $38                                       ; $49e5: $ff
    ld bc, $017f                                  ; $49e6: $01 $7f $01
    ld a, a                                       ; $49e9: $7f
    ld bc, HeaderManufacturerCode                 ; $49ea: $01 $3f $01
    ld e, $01                                     ; $49ed: $1e $01
    ld c, $01                                     ; $49ef: $0e $01
    inc bc                                        ; $49f1: $03
    inc bc                                        ; $49f2: $03
    nop                                           ; $49f3: $00
    adc e                                         ; $49f4: $8b
    rst $18                                       ; $49f5: $df
    inc a                                         ; $49f6: $3c
    rst $18                                       ; $49f7: $df
    inc a                                         ; $49f8: $3c
    rst $18                                       ; $49f9: $df
    ld a, $df                                     ; $49fa: $3e $df
    ccf                                           ; $49fc: $3f
    rst $38                                       ; $49fd: $ff
    rrca                                          ; $49fe: $0f
    rlca                                          ; $49ff: $07
    ld b, $ff                                     ; $4a00: $06 $ff
    adc c                                         ; $4a02: $89
    xor l                                         ; $4a03: $ad
    rst $38                                       ; $4a04: $ff
    and l                                         ; $4a05: $a5
    rst $38                                       ; $4a06: $ff
    and l                                         ; $4a07: $a5
    rst $38                                       ; $4a08: $ff
    xor c                                         ; $4a09: $a9
    rst $38                                       ; $4a0a: $ff
    ld l, l                                       ; $4a0b: $6d
    inc bc                                        ; $4a0c: $03
    rst $38                                       ; $4a0d: $ff
    ld [bc], a                                    ; $4a0e: $02
    rlca                                          ; $4a0f: $07
    adc h                                         ; $4a10: $8c
    nop                                           ; $4a11: $00
    cp a                                          ; $4a12: $bf
    ld a, b                                       ; $4a13: $78
    cp a                                          ; $4a14: $bf
    ld a, b                                       ; $4a15: $78
    cp [hl]                                       ; $4a16: $be
    ld a, c                                       ; $4a17: $79
    cp $31                                        ; $4a18: $fe $31
    ld hl, sp-$79                                 ; $4a1a: $f8 $87
    jp $ff06                                      ; $4a1c: $c3 $06 $ff


    adc c                                         ; $4a1f: $89
    dec sp                                        ; $4a20: $3b
    rst $38                                       ; $4a21: $ff
    ld d, l                                       ; $4a22: $55
    rst $38                                       ; $4a23: $ff
    ld d, c                                       ; $4a24: $51
    rst $38                                       ; $4a25: $ff
    ld d, l                                       ; $4a26: $55
    rst $38                                       ; $4a27: $ff
    dec [hl]                                      ; $4a28: $35
    dec b                                         ; $4a29: $05
    rst $38                                       ; $4a2a: $ff
    sbc [hl]                                      ; $4a2b: $9e
    nop                                           ; $4a2c: $00
    ld a, $7f                                     ; $4a2d: $3e $7f
    ld a, $7f                                     ; $4a2f: $3e $7f
    ld a, $7f                                     ; $4a31: $3e $7f
    ld a, [hl]                                    ; $4a33: $7e
    ld a, a                                       ; $4a34: $7f
    ld a, [hl]                                    ; $4a35: $7e
    ld a, a                                       ; $4a36: $7f
    ld a, [hl]                                    ; $4a37: $7e
    ld a, a                                       ; $4a38: $7f
    ld a, [hl]                                    ; $4a39: $7e
    ld a, a                                       ; $4a3a: $7f
    ld a, [hl]                                    ; $4a3b: $7e
    ld a, a                                       ; $4a3c: $7f
    ld a, [hl]                                    ; $4a3d: $7e
    cpl                                           ; $4a3e: $2f
    ld a, [hl]                                    ; $4a3f: $7e
    cpl                                           ; $4a40: $2f
    ld a, [hl]                                    ; $4a41: $7e
    ld e, a                                       ; $4a42: $5f
    ld a, [hl]                                    ; $4a43: $7e
    ld e, a                                       ; $4a44: $5f
    ld a, [hl]                                    ; $4a45: $7e
    ld e, a                                       ; $4a46: $5f
    ld a, [hl]                                    ; $4a47: $7e
    ld a, a                                       ; $4a48: $7f
    ld a, [hl]                                    ; $4a49: $7e
    ld [bc], a                                    ; $4a4a: $02
    ld a, a                                       ; $4a4b: $7f
    add c                                         ; $4a4c: $81
    nop                                           ; $4a4d: $00
    rst $38                                       ; $4a4e: $ff

jr_0eb_4a4f:
    dec d                                         ; $4a4f: $15
    ld [$100e], sp                                ; $4a50: $08 $0e $10
    ldh a, [$f2]                                  ; $4a53: $f0 $f2
    pop hl                                        ; $4a55: $e1
    nop                                           ; $4a56: $00
    pop hl                                        ; $4a57: $e1
    ld [$10e1], sp                                ; $4a58: $08 $e1 $10
    pop hl                                        ; $4a5b: $e1
    jr jr_0eb_4a4f                                ; $4a5c: $18 $f1

    ld bc, $09f1                                  ; $4a5e: $01 $f1 $09
    pop af                                        ; $4a61: $f1
    ld de, $18f1                                  ; $4a62: $11 $f1 $18
    add c                                         ; $4a65: $81
    rst $38                                       ; $4a66: $ff
    ld [bc], a                                    ; $4a67: $02
    nop                                           ; $4a68: $00
    sbc [hl]                                      ; $4a69: $9e
    rst $38                                       ; $4a6a: $ff
    ld a, a                                       ; $4a6b: $7f
    rst $38                                       ; $4a6c: $ff
    ld a, a                                       ; $4a6d: $7f
    rst $38                                       ; $4a6e: $ff
    ld a, a                                       ; $4a6f: $7f
    rst $38                                       ; $4a70: $ff
    ld a, a                                       ; $4a71: $7f
    rst $38                                       ; $4a72: $ff
    ld a, a                                       ; $4a73: $7f
    rst $38                                       ; $4a74: $ff
    ld a, a                                       ; $4a75: $7f
    cp $7e                                        ; $4a76: $fe $7e
    db $fd                                        ; $4a78: $fd
    ld a, [hl]                                    ; $4a79: $7e
    rst $38                                       ; $4a7a: $ff
    ld a, a                                       ; $4a7b: $7f
    rst $38                                       ; $4a7c: $ff
    cp a                                          ; $4a7d: $bf
    ld a, a                                       ; $4a7e: $7f
    ccf                                           ; $4a7f: $3f
    ld a, a                                       ; $4a80: $7f
    ccf                                           ; $4a81: $3f
    ld a, a                                       ; $4a82: $7f
    ccf                                           ; $4a83: $3f
    ld a, a                                       ; $4a84: $7f
    ccf                                           ; $4a85: $3f
    ld a, a                                       ; $4a86: $7f
    rst $38                                       ; $4a87: $ff
    ld [bc], a                                    ; $4a88: $02
    nop                                           ; $4a89: $00
    ld [$96ff], sp                                ; $4a8a: $08 $ff $96
    sbc a                                         ; $4a8d: $9f
    rst $28                                       ; $4a8e: $ef
    rra                                           ; $4a8f: $1f
    rst $28                                       ; $4a90: $ef
    rra                                           ; $4a91: $1f
    rst $28                                       ; $4a92: $ef
    rra                                           ; $4a93: $1f
    rst $28                                       ; $4a94: $ef
    rra                                           ; $4a95: $1f
    rst $28                                       ; $4a96: $ef
    rra                                           ; $4a97: $1f
    rst $28                                       ; $4a98: $ef
    rra                                           ; $4a99: $1f
    rst $28                                       ; $4a9a: $ef
    ld e, $ef                                     ; $4a9b: $1e $ef
    ld e, $ef                                     ; $4a9d: $1e $ef
    ld e, $ef                                     ; $4a9f: $1e $ef
    ld e, $ff                                     ; $4aa1: $1e $ff
    ld [bc], a                                    ; $4aa3: $02
    nop                                           ; $4aa4: $00
    ld [$b4ff], sp                                ; $4aa5: $08 $ff $b4
    db $fc                                        ; $4aa8: $fc
    cp $f1                                        ; $4aa9: $fe $f1
    ld hl, sp-$39                                 ; $4aab: $f8 $c7
    di                                            ; $4aad: $f3
    adc a                                         ; $4aae: $8f
    rst $20                                       ; $4aaf: $e7
    sbc a                                         ; $4ab0: $9f
    rst $28                                       ; $4ab1: $ef
    rra                                           ; $4ab2: $1f
    rst $18                                       ; $4ab3: $df
    ld hl, $38d7                                  ; $4ab4: $21 $d7 $38
    rst $18                                       ; $4ab7: $df
    inc a                                         ; $4ab8: $3c
    rst $18                                       ; $4ab9: $df
    inc a                                         ; $4aba: $3c
    rst $18                                       ; $4abb: $df
    inc a                                         ; $4abc: $3c
    cp $01                                        ; $4abd: $fe $01
    nop                                           ; $4abf: $00
    rst $38                                       ; $4ac0: $ff
    cp $ff                                        ; $4ac1: $fe $ff
    cp $ff                                        ; $4ac3: $fe $ff
    cp $ff                                        ; $4ac5: $fe $ff
    cp $7f                                        ; $4ac7: $fe $7f
    ld a, $ff                                     ; $4ac9: $3e $ff
    cp $ff                                        ; $4acb: $fe $ff
    cp $ff                                        ; $4acd: $fe $ff
    cp $ff                                        ; $4acf: $fe $ff
    cp $ff                                        ; $4ad1: $fe $ff
    cp $ff                                        ; $4ad3: $fe $ff
    cp $ff                                        ; $4ad5: $fe $ff
    cp $7f                                        ; $4ad7: $fe $7f
    cp [hl]                                       ; $4ad9: $be
    ld a, a                                       ; $4ada: $7f
    cp [hl]                                       ; $4adb: $be
    ld [bc], a                                    ; $4adc: $02
    ld a, a                                       ; $4add: $7f
    sbc b                                         ; $4ade: $98
    cp $7f                                        ; $4adf: $fe $7f
    cp $7f                                        ; $4ae1: $fe $7f
    cp $bd                                        ; $4ae3: $fe $bd
    ld a, [hl]                                    ; $4ae5: $7e
    rst $00                                       ; $4ae6: $c7
    ccf                                           ; $4ae7: $3f
    ld a, h                                       ; $4ae8: $7c
    inc bc                                        ; $4ae9: $03
    ccf                                           ; $4aea: $3f
    nop                                           ; $4aeb: $00
    ccf                                           ; $4aec: $3f
    nop                                           ; $4aed: $00
    rra                                           ; $4aee: $1f
    nop                                           ; $4aef: $00
    rra                                           ; $4af0: $1f

jr_0eb_4af1:
    nop                                           ; $4af1: $00
    rrca                                          ; $4af2: $0f
    nop                                           ; $4af3: $00
    rlca                                          ; $4af4: $07
    nop                                           ; $4af5: $00
    ld bc, $0007                                  ; $4af6: $01 $07 $00
    sbc e                                         ; $4af9: $9b
    rst $18                                       ; $4afa: $df
    inc a                                         ; $4afb: $3c
    rst $18                                       ; $4afc: $df
    inc a                                         ; $4afd: $3c
    rst $18                                       ; $4afe: $df
    ld a, $df                                     ; $4aff: $3e $df
    ccf                                           ; $4b01: $3f
    rst $38                                       ; $4b02: $ff
    rst $28                                       ; $4b03: $ef
    rla                                           ; $4b04: $17
    rst $38                                       ; $4b05: $ff
    rst $18                                       ; $4b06: $df
    ccf                                           ; $4b07: $3f
    rst $18                                       ; $4b08: $df
    ccf                                           ; $4b09: $3f
    rst $18                                       ; $4b0a: $df
    dec a                                         ; $4b0b: $3d
    rst $18                                       ; $4b0c: $df
    dec a                                         ; $4b0d: $3d
    rst $28                                       ; $4b0e: $ef
    dec e                                         ; $4b0f: $1d
    rst $28                                       ; $4b10: $ef
    add hl, de                                    ; $4b11: $19
    rst $28                                       ; $4b12: $ef
    dec e                                         ; $4b13: $1d
    ld l, a                                       ; $4b14: $6f
    ld [bc], a                                    ; $4b15: $02
    rra                                           ; $4b16: $1f
    inc bc                                        ; $4b17: $03
    nop                                           ; $4b18: $00
    adc e                                         ; $4b19: $8b
    cp a                                          ; $4b1a: $bf
    ld a, b                                       ; $4b1b: $78
    cp a                                          ; $4b1c: $bf
    ld a, b                                       ; $4b1d: $78
    cp [hl]                                       ; $4b1e: $be
    ld a, c                                       ; $4b1f: $79
    cp $31                                        ; $4b20: $fe $31
    ld hl, sp-$79                                 ; $4b22: $f8 $87
    jp $ff06                                      ; $4b24: $c3 $06 $ff


    adc c                                         ; $4b27: $89
    dec sp                                        ; $4b28: $3b
    rst $38                                       ; $4b29: $ff
    ld d, l                                       ; $4b2a: $55
    rst $38                                       ; $4b2b: $ff
    ld d, c                                       ; $4b2c: $51
    rst $38                                       ; $4b2d: $ff
    ld d, l                                       ; $4b2e: $55
    rst $38                                       ; $4b2f: $ff
    dec [hl]                                      ; $4b30: $35
    inc bc                                        ; $4b31: $03
    rst $38                                       ; $4b32: $ff
    ld [bc], a                                    ; $4b33: $02
    ld a, a                                       ; $4b34: $7f
    sbc [hl]                                      ; $4b35: $9e
    nop                                           ; $4b36: $00
    ld a, $7f                                     ; $4b37: $3e $7f
    ld a, $7f                                     ; $4b39: $3e $7f
    ld a, $7f                                     ; $4b3b: $3e $7f
    ld a, [hl]                                    ; $4b3d: $7e
    ld a, a                                       ; $4b3e: $7f
    ld a, [hl]                                    ; $4b3f: $7e
    ld a, a                                       ; $4b40: $7f
    ld a, [hl]                                    ; $4b41: $7e
    ld a, a                                       ; $4b42: $7f
    ld a, [hl]                                    ; $4b43: $7e
    ld a, a                                       ; $4b44: $7f
    ld a, [hl]                                    ; $4b45: $7e
    ld a, a                                       ; $4b46: $7f
    ld a, [hl]                                    ; $4b47: $7e
    cpl                                           ; $4b48: $2f
    ld a, [hl]                                    ; $4b49: $7e
    cpl                                           ; $4b4a: $2f
    ld a, [hl]                                    ; $4b4b: $7e
    ld e, a                                       ; $4b4c: $5f
    ld a, [hl]                                    ; $4b4d: $7e
    ld e, a                                       ; $4b4e: $5f
    ld a, [hl]                                    ; $4b4f: $7e
    ld e, a                                       ; $4b50: $5f
    ld a, [hl]                                    ; $4b51: $7e
    ld a, a                                       ; $4b52: $7f
    ld a, [hl]                                    ; $4b53: $7e
    ld [bc], a                                    ; $4b54: $02
    ld a, a                                       ; $4b55: $7f
    add c                                         ; $4b56: $81
    nop                                           ; $4b57: $00
    rst $38                                       ; $4b58: $ff

jr_0eb_4b59:
    dec d                                         ; $4b59: $15
    ld [$100e], sp                                ; $4b5a: $08 $0e $10
    ldh a, [$f2]                                  ; $4b5d: $f0 $f2
    pop hl                                        ; $4b5f: $e1
    nop                                           ; $4b60: $00
    pop hl                                        ; $4b61: $e1
    ld [$10e1], sp                                ; $4b62: $08 $e1 $10
    pop hl                                        ; $4b65: $e1
    jr jr_0eb_4b59                                ; $4b66: $18 $f1

    ld [bc], a                                    ; $4b68: $02
    pop af                                        ; $4b69: $f1
    ld a, [bc]                                    ; $4b6a: $0a
    pop af                                        ; $4b6b: $f1
    ld [de], a                                    ; $4b6c: $12
    pop af                                        ; $4b6d: $f1
    jr jr_0eb_4af1                                ; $4b6e: $18 $81

    rst $38                                       ; $4b70: $ff
    ld [bc], a                                    ; $4b71: $02
    nop                                           ; $4b72: $00
    sbc [hl]                                      ; $4b73: $9e
    rst $38                                       ; $4b74: $ff
    ld a, a                                       ; $4b75: $7f
    rst $38                                       ; $4b76: $ff
    ld a, a                                       ; $4b77: $7f
    rst $38                                       ; $4b78: $ff
    ld a, a                                       ; $4b79: $7f
    rst $38                                       ; $4b7a: $ff
    ld a, a                                       ; $4b7b: $7f
    rst $38                                       ; $4b7c: $ff
    cp a                                          ; $4b7d: $bf
    ld a, a                                       ; $4b7e: $7f
    ccf                                           ; $4b7f: $3f
    ld a, [hl]                                    ; $4b80: $7e
    ld a, $7d                                     ; $4b81: $3e $7d
    ld a, $7f                                     ; $4b83: $3e $7f
    ccf                                           ; $4b85: $3f
    ld a, a                                       ; $4b86: $7f
    ccf                                           ; $4b87: $3f
    ld a, a                                       ; $4b88: $7f
    ccf                                           ; $4b89: $3f
    ld a, a                                       ; $4b8a: $7f
    ccf                                           ; $4b8b: $3f
    ld a, a                                       ; $4b8c: $7f
    ccf                                           ; $4b8d: $3f
    ld a, a                                       ; $4b8e: $7f
    inc bc                                        ; $4b8f: $03
    ccf                                           ; $4b90: $3f
    rst $38                                       ; $4b91: $ff
    ld [bc], a                                    ; $4b92: $02
    nop                                           ; $4b93: $00
    ld [$96ff], sp                                ; $4b94: $08 $ff $96
    sbc a                                         ; $4b97: $9f
    rst $28                                       ; $4b98: $ef
    rra                                           ; $4b99: $1f
    rst $28                                       ; $4b9a: $ef
    rra                                           ; $4b9b: $1f
    rst $28                                       ; $4b9c: $ef
    rra                                           ; $4b9d: $1f
    rst $28                                       ; $4b9e: $ef
    rra                                           ; $4b9f: $1f
    rst $28                                       ; $4ba0: $ef
    rra                                           ; $4ba1: $1f
    rst $28                                       ; $4ba2: $ef
    rra                                           ; $4ba3: $1f
    rst $28                                       ; $4ba4: $ef
    ld e, $ef                                     ; $4ba5: $1e $ef
    rra                                           ; $4ba7: $1f
    ldh a, [$1f]                                  ; $4ba8: $f0 $1f
    rst $28                                       ; $4baa: $ef
    ldh a, [rIE]                                  ; $4bab: $f0 $ff
    ld [bc], a                                    ; $4bad: $02
    nop                                           ; $4bae: $00
    ld [$c8ff], sp                                ; $4baf: $08 $ff $c8
    db $fc                                        ; $4bb2: $fc
    cp $f1                                        ; $4bb3: $fe $f1
    ld hl, sp-$39                                 ; $4bb5: $f8 $c7
    di                                            ; $4bb7: $f3
    adc a                                         ; $4bb8: $8f
    rst $20                                       ; $4bb9: $e7
    sbc a                                         ; $4bba: $9f
    rst $28                                       ; $4bbb: $ef
    rra                                           ; $4bbc: $1f
    rst $18                                       ; $4bbd: $df
    ld hl, $38d7                                  ; $4bbe: $21 $d7 $38
    rst $18                                       ; $4bc1: $df
    db $fc                                        ; $4bc2: $fc
    ld e, a                                       ; $4bc3: $5f
    db $fc                                        ; $4bc4: $fc
    ld e, a                                       ; $4bc5: $5f
    db $fc                                        ; $4bc6: $fc
    cp $01                                        ; $4bc7: $fe $01
    nop                                           ; $4bc9: $00
    rst $38                                       ; $4bca: $ff
    cp $ff                                        ; $4bcb: $fe $ff
    cp $ff                                        ; $4bcd: $fe $ff
    cp $ff                                        ; $4bcf: $fe $ff
    cp $7f                                        ; $4bd1: $fe $7f
    ld a, $ff                                     ; $4bd3: $3e $ff
    cp $ff                                        ; $4bd5: $fe $ff
    cp $ff                                        ; $4bd7: $fe $ff
    cp $ff                                        ; $4bd9: $fe $ff
    cp $ff                                        ; $4bdb: $fe $ff
    cp $ff                                        ; $4bdd: $fe $ff
    cp $ff                                        ; $4bdf: $fe $ff
    cp $7f                                        ; $4be1: $fe $7f
    cp [hl]                                       ; $4be3: $be
    ld a, a                                       ; $4be4: $7f
    cp [hl]                                       ; $4be5: $be
    ld a, a                                       ; $4be6: $7f
    ldh a, [rIF]                                  ; $4be7: $f0 $0f
    ld a, a                                       ; $4be9: $7f
    nop                                           ; $4bea: $00
    ld a, a                                       ; $4beb: $7f
    nop                                           ; $4bec: $00
    ccf                                           ; $4bed: $3f
    nop                                           ; $4bee: $00
    rra                                           ; $4bef: $1f
    nop                                           ; $4bf0: $00
    rra                                           ; $4bf1: $1f
    nop                                           ; $4bf2: $00
    rrca                                          ; $4bf3: $0f

jr_0eb_4bf4:
    nop                                           ; $4bf4: $00
    rrca                                          ; $4bf5: $0f
    nop                                           ; $4bf6: $00
    rlca                                          ; $4bf7: $07
    nop                                           ; $4bf8: $00
    ld bc, $000d                                  ; $4bf9: $01 $0d $00
    sbc h                                         ; $4bfc: $9c
    ld a, l                                       ; $4bfd: $7d
    add e                                         ; $4bfe: $83
    db $fd                                        ; $4bff: $fd
    inc bc                                        ; $4c00: $03
    db $fd                                        ; $4c01: $fd
    inc bc                                        ; $4c02: $03
    db $fd                                        ; $4c03: $fd
    inc bc                                        ; $4c04: $03
    db $fd                                        ; $4c05: $fd
    inc bc                                        ; $4c06: $03
    db $fd                                        ; $4c07: $fd
    inc bc                                        ; $4c08: $03
    db $fd                                        ; $4c09: $fd
    inc bc                                        ; $4c0a: $03
    db $fd                                        ; $4c0b: $fd
    inc bc                                        ; $4c0c: $03
    db $fd                                        ; $4c0d: $fd
    inc bc                                        ; $4c0e: $03
    db $fd                                        ; $4c0f: $fd
    inc bc                                        ; $4c10: $03
    cp $01                                        ; $4c11: $fe $01
    ld a, $01                                     ; $4c13: $3e $01
    ld e, $01                                     ; $4c15: $1e $01
    ld b, $01                                     ; $4c17: $06 $01
    inc b                                         ; $4c19: $04
    nop                                           ; $4c1a: $00
    adc e                                         ; $4c1b: $8b
    ld a, [hl]                                    ; $4c1c: $7e
    pop af                                        ; $4c1d: $f1
    ld a, [hl]                                    ; $4c1e: $7e
    pop af                                        ; $4c1f: $f1
    ld a, h                                       ; $4c20: $7c
    di                                            ; $4c21: $f3
    db $fd                                        ; $4c22: $fd
    ld h, e                                       ; $4c23: $63
    pop af                                        ; $4c24: $f1
    rrca                                          ; $4c25: $0f
    add a                                         ; $4c26: $87
    ld b, $ff                                     ; $4c27: $06 $ff
    adc h                                         ; $4c29: $8c
    halt                                          ; $4c2a: $76
    rst $38                                       ; $4c2b: $ff
    xor d                                         ; $4c2c: $aa
    rst $38                                       ; $4c2d: $ff
    and e                                         ; $4c2e: $a3
    rst $38                                       ; $4c2f: $ff
    xor e                                         ; $4c30: $ab
    rst $38                                       ; $4c31: $ff
    ld l, e                                       ; $4c32: $6b
    rlca                                          ; $4c33: $07
    rst $38                                       ; $4c34: $ff
    ld hl, sp+$02                                 ; $4c35: $f8 $02
    rlca                                          ; $4c37: $07
    sbc [hl]                                      ; $4c38: $9e
    nop                                           ; $4c39: $00
    ld a, $3f                                     ; $4c3a: $3e $3f
    ld a, $3f                                     ; $4c3c: $3e $3f
    ld a, $3f                                     ; $4c3e: $3e $3f
    ld a, $3f                                     ; $4c40: $3e $3f
    ld a, $3f                                     ; $4c42: $3e $3f
    ld a, $3f                                     ; $4c44: $3e $3f
    ld a, $3f                                     ; $4c46: $3e $3f
    ld a, $3f                                     ; $4c48: $3e $3f
    ld a, $2f                                     ; $4c4a: $3e $2f
    ld a, $2f                                     ; $4c4c: $3e $2f
    ld a, $1f                                     ; $4c4e: $3e $1f
    ld a, $1f                                     ; $4c50: $3e $1f
    ld a, $1f                                     ; $4c52: $3e $1f
    ld a, $3f                                     ; $4c54: $3e $3f
    nop                                           ; $4c56: $00
    ld [bc], a                                    ; $4c57: $02
    ccf                                           ; $4c58: $3f
    add c                                         ; $4c59: $81
    nop                                           ; $4c5a: $00
    rst $38                                       ; $4c5b: $ff

jr_0eb_4c5c:
    dec d                                         ; $4c5c: $15
    ld [$100e], sp                                ; $4c5d: $08 $0e $10
    ldh a, [$f2]                                  ; $4c60: $f0 $f2
    pop hl                                        ; $4c62: $e1
    nop                                           ; $4c63: $00
    pop hl                                        ; $4c64: $e1
    ld [$10e1], sp                                ; $4c65: $08 $e1 $10
    pop hl                                        ; $4c68: $e1
    jr jr_0eb_4c5c                                ; $4c69: $18 $f1

    nop                                           ; $4c6b: $00
    pop af                                        ; $4c6c: $f1
    ld [$10f1], sp                                ; $4c6d: $08 $f1 $10
    pop af                                        ; $4c70: $f1
    jr jr_0eb_4bf4                                ; $4c71: $18 $81

    rst $38                                       ; $4c73: $ff
    ld [bc], a                                    ; $4c74: $02
    nop                                           ; $4c75: $00
    sbc h                                         ; $4c76: $9c
    rst $38                                       ; $4c77: $ff
    ld a, a                                       ; $4c78: $7f
    rst $38                                       ; $4c79: $ff
    ld a, a                                       ; $4c7a: $7f
    rst $38                                       ; $4c7b: $ff
    ld a, a                                       ; $4c7c: $7f
    rst $38                                       ; $4c7d: $ff
    ld a, a                                       ; $4c7e: $7f
    rst $38                                       ; $4c7f: $ff
    ld a, a                                       ; $4c80: $7f
    rst $38                                       ; $4c81: $ff
    ld a, a                                       ; $4c82: $7f
    cp $7e                                        ; $4c83: $fe $7e
    db $fd                                        ; $4c85: $fd
    ld a, [hl]                                    ; $4c86: $7e
    rst $38                                       ; $4c87: $ff
    ld a, a                                       ; $4c88: $7f
    rst $38                                       ; $4c89: $ff
    ld a, a                                       ; $4c8a: $7f
    rst $38                                       ; $4c8b: $ff
    ld a, a                                       ; $4c8c: $7f
    rst $38                                       ; $4c8d: $ff
    ld a, a                                       ; $4c8e: $7f
    rst $38                                       ; $4c8f: $ff
    ld a, a                                       ; $4c90: $7f
    rst $38                                       ; $4c91: $ff
    ld a, a                                       ; $4c92: $7f
    ld [bc], a                                    ; $4c93: $02
    rst $38                                       ; $4c94: $ff
    ld [bc], a                                    ; $4c95: $02
    nop                                           ; $4c96: $00
    ld [$96ff], sp                                ; $4c97: $08 $ff $96
    sbc [hl]                                      ; $4c9a: $9e
    rst $28                                       ; $4c9b: $ef
    ld e, $ef                                     ; $4c9c: $1e $ef
    ld e, $ef                                     ; $4c9e: $1e $ef
    ld e, $ef                                     ; $4ca0: $1e $ef
    rra                                           ; $4ca2: $1f
    rst $28                                       ; $4ca3: $ef
    rra                                           ; $4ca4: $1f
    rst $28                                       ; $4ca5: $ef
    rra                                           ; $4ca6: $1f
    rst $28                                       ; $4ca7: $ef
    rra                                           ; $4ca8: $1f
    rst $28                                       ; $4ca9: $ef
    rra                                           ; $4caa: $1f
    rst $28                                       ; $4cab: $ef
    rra                                           ; $4cac: $1f
    rst $28                                       ; $4cad: $ef
    rra                                           ; $4cae: $1f
    rst $38                                       ; $4caf: $ff
    ld [bc], a                                    ; $4cb0: $02
    nop                                           ; $4cb1: $00
    ld [$96ff], sp                                ; $4cb2: $08 $ff $96
    nop                                           ; $4cb5: $00
    rst $38                                       ; $4cb6: $ff
    nop                                           ; $4cb7: $00
    ld bc, $7ffe                                  ; $4cb8: $01 $fe $7f
    db $fc                                        ; $4cbb: $fc
    ld a, a                                       ; $4cbc: $7f
    db $fc                                        ; $4cbd: $fc
    rst $38                                       ; $4cbe: $ff
    db $fc                                        ; $4cbf: $fc
    cp $f9                                        ; $4cc0: $fe $f9
    cp $f9                                        ; $4cc2: $fe $f9
    cp $f9                                        ; $4cc4: $fe $f9
    db $fc                                        ; $4cc6: $fc
    di                                            ; $4cc7: $f3
    db $fd                                        ; $4cc8: $fd
    di                                            ; $4cc9: $f3
    rst $38                                       ; $4cca: $ff
    ld [bc], a                                    ; $4ccb: $02
    nop                                           ; $4ccc: $00
    cp d                                          ; $4ccd: $ba
    rst $38                                       ; $4cce: $ff
    cp $ff                                        ; $4ccf: $fe $ff
    cp $ff                                        ; $4cd1: $fe $ff
    cp $ff                                        ; $4cd3: $fe $ff
    cp $7f                                        ; $4cd5: $fe $7f
    cp [hl]                                       ; $4cd7: $be
    ld a, a                                       ; $4cd8: $7f
    cp [hl]                                       ; $4cd9: $be
    ld a, a                                       ; $4cda: $7f
    ld a, $ff                                     ; $4cdb: $3e $ff
    ld a, [hl]                                    ; $4cdd: $7e
    rst $38                                       ; $4cde: $ff
    ld a, [hl]                                    ; $4cdf: $7e
    rst $38                                       ; $4ce0: $ff
    ld a, [hl]                                    ; $4ce1: $7e
    rst $38                                       ; $4ce2: $ff
    cp $ff                                        ; $4ce3: $fe $ff
    cp $ff                                        ; $4ce5: $fe $ff
    cp $ff                                        ; $4ce7: $fe $ff
    cp $ff                                        ; $4ce9: $fe $ff
    ld a, a                                       ; $4ceb: $7f
    rst $38                                       ; $4cec: $ff
    ld a, a                                       ; $4ced: $7f
    rst $38                                       ; $4cee: $ff
    ld a, a                                       ; $4cef: $7f
    rst $38                                       ; $4cf0: $ff
    ld a, a                                       ; $4cf1: $7f
    rst $38                                       ; $4cf2: $ff
    ld a, a                                       ; $4cf3: $7f
    db $fc                                        ; $4cf4: $fc
    ld a, [hl]                                    ; $4cf5: $7e
    rst $38                                       ; $4cf6: $ff
    ld a, a                                       ; $4cf7: $7f
    rst $38                                       ; $4cf8: $ff
    ld a, a                                       ; $4cf9: $7f
    rst $38                                       ; $4cfa: $ff
    ld a, a                                       ; $4cfb: $7f
    xor $7f                                       ; $4cfc: $ee $7f
    db $e4                                        ; $4cfe: $e4
    ld a, a                                       ; $4cff: $7f
    ld [$ea7f], a                                 ; $4d00: $ea $7f $ea
    ld a, a                                       ; $4d03: $7f
    xor $7f                                       ; $4d04: $ee $7f
    rst $38                                       ; $4d06: $ff
    ld a, a                                       ; $4d07: $7f
    ld [bc], a                                    ; $4d08: $02
    rst $38                                       ; $4d09: $ff
    adc h                                         ; $4d0a: $8c
    nop                                           ; $4d0b: $00
    rst $28                                       ; $4d0c: $ef
    rra                                           ; $4d0d: $1f
    rst $28                                       ; $4d0e: $ef
    rra                                           ; $4d0f: $1f
    rst $28                                       ; $4d10: $ef
    rra                                           ; $4d11: $1f
    rst $28                                       ; $4d12: $ef
    rra                                           ; $4d13: $1f
    rst $38                                       ; $4d14: $ff
    rlca                                          ; $4d15: $07
    inc bc                                        ; $4d16: $03
    ld b, $ff                                     ; $4d17: $06 $ff
    adc c                                         ; $4d19: $89
    db $db                                        ; $4d1a: $db
    rst $38                                       ; $4d1b: $ff
    xor c                                         ; $4d1c: $a9
    rst $38                                       ; $4d1d: $ff
    xor c                                         ; $4d1e: $a9
    rst $38                                       ; $4d1f: $ff
    xor d                                         ; $4d20: $aa
    rst $38                                       ; $4d21: $ff
    db $db                                        ; $4d22: $db
    dec b                                         ; $4d23: $05
    rst $38                                       ; $4d24: $ff
    adc h                                         ; $4d25: $8c
    nop                                           ; $4d26: $00
    db $fd                                        ; $4d27: $fd
    di                                            ; $4d28: $f3
    ld sp, hl                                     ; $4d29: $f9
    rst $20                                       ; $4d2a: $e7
    ei                                            ; $4d2b: $fb
    rst $20                                       ; $4d2c: $e7
    ei                                            ; $4d2d: $fb
    rst $20                                       ; $4d2e: $e7
    ei                                            ; $4d2f: $fb
    rst $00                                       ; $4d30: $c7
    db $e3                                        ; $4d31: $e3
    ld b, $ff                                     ; $4d32: $06 $ff
    adc c                                         ; $4d34: $89
    ld c, [hl]                                    ; $4d35: $4e
    rst $38                                       ; $4d36: $ff
    ld d, l                                       ; $4d37: $55
    rst $38                                       ; $4d38: $ff
    ld d, h                                       ; $4d39: $54
    rst $38                                       ; $4d3a: $ff
    ld d, l                                       ; $4d3b: $55
    rst $38                                       ; $4d3c: $ff
    ld c, l                                       ; $4d3d: $4d
    dec b                                         ; $4d3e: $05
    rst $38                                       ; $4d3f: $ff
    sbc [hl]                                      ; $4d40: $9e
    nop                                           ; $4d41: $00
    cp $ff                                        ; $4d42: $fe $ff
    cp $ff                                        ; $4d44: $fe $ff
    cp $ff                                        ; $4d46: $fe $ff
    cp $ff                                        ; $4d48: $fe $ff
    cp $ff                                        ; $4d4a: $fe $ff
    cp $ff                                        ; $4d4c: $fe $ff
    cp $ff                                        ; $4d4e: $fe $ff
    cp $ff                                        ; $4d50: $fe $ff
    cp $d7                                        ; $4d52: $fe $d7
    cp $57                                        ; $4d54: $fe $57
    cp $6f                                        ; $4d56: $fe $6f
    cp $6f                                        ; $4d58: $fe $6f
    cp $6f                                        ; $4d5a: $fe $6f
    cp $ff                                        ; $4d5c: $fe $ff
    cp $02                                        ; $4d5e: $fe $02
    rst $38                                       ; $4d60: $ff
    add c                                         ; $4d61: $81
    nop                                           ; $4d62: $00
    rst $38                                       ; $4d63: $ff

jr_0eb_4d64:
    dec d                                         ; $4d64: $15
    ld [$100e], sp                                ; $4d65: $08 $0e $10
    ldh a, [$f2]                                  ; $4d68: $f0 $f2
    pop hl                                        ; $4d6a: $e1
    nop                                           ; $4d6b: $00
    pop hl                                        ; $4d6c: $e1
    ld [$10e1], sp                                ; $4d6d: $08 $e1 $10
    pop hl                                        ; $4d70: $e1
    jr jr_0eb_4d64                                ; $4d71: $18 $f1

    ld bc, $09f1                                  ; $4d73: $01 $f1 $09
    pop af                                        ; $4d76: $f1
    ld de, $18f1                                  ; $4d77: $11 $f1 $18
    add c                                         ; $4d7a: $81
    rst $38                                       ; $4d7b: $ff
    ld [bc], a                                    ; $4d7c: $02
    nop                                           ; $4d7d: $00
    sbc d                                         ; $4d7e: $9a
    rst $38                                       ; $4d7f: $ff
    ld a, a                                       ; $4d80: $7f
    rst $38                                       ; $4d81: $ff
    ld a, a                                       ; $4d82: $7f
    rst $38                                       ; $4d83: $ff
    ld a, a                                       ; $4d84: $7f
    rst $38                                       ; $4d85: $ff
    ld a, a                                       ; $4d86: $7f
    rst $38                                       ; $4d87: $ff
    ld a, a                                       ; $4d88: $7f
    rst $38                                       ; $4d89: $ff
    ld a, a                                       ; $4d8a: $7f
    cp $7e                                        ; $4d8b: $fe $7e
    db $fd                                        ; $4d8d: $fd
    ld a, [hl]                                    ; $4d8e: $7e
    rst $38                                       ; $4d8f: $ff
    ld a, a                                       ; $4d90: $7f
    rst $38                                       ; $4d91: $ff
    ld a, a                                       ; $4d92: $7f
    rst $38                                       ; $4d93: $ff
    ld a, a                                       ; $4d94: $7f
    rst $38                                       ; $4d95: $ff
    ld a, a                                       ; $4d96: $7f
    rst $38                                       ; $4d97: $ff
    cp a                                          ; $4d98: $bf
    ld [bc], a                                    ; $4d99: $02
    ld a, a                                       ; $4d9a: $7f
    add d                                         ; $4d9b: $82
    ccf                                           ; $4d9c: $3f
    rst $38                                       ; $4d9d: $ff
    ld [bc], a                                    ; $4d9e: $02
    nop                                           ; $4d9f: $00
    ld [$96ff], sp                                ; $4da0: $08 $ff $96
    sbc [hl]                                      ; $4da3: $9e
    rst $28                                       ; $4da4: $ef
    ld e, $ef                                     ; $4da5: $1e $ef
    ld e, $ef                                     ; $4da7: $1e $ef
    ld e, $ef                                     ; $4da9: $1e $ef
    rra                                           ; $4dab: $1f
    rst $28                                       ; $4dac: $ef
    rra                                           ; $4dad: $1f
    rst $28                                       ; $4dae: $ef
    rra                                           ; $4daf: $1f
    rst $28                                       ; $4db0: $ef
    rra                                           ; $4db1: $1f
    rst $28                                       ; $4db2: $ef
    rra                                           ; $4db3: $1f
    rst $28                                       ; $4db4: $ef
    rra                                           ; $4db5: $1f
    rst $28                                       ; $4db6: $ef
    rra                                           ; $4db7: $1f
    rst $38                                       ; $4db8: $ff
    ld [bc], a                                    ; $4db9: $02
    nop                                           ; $4dba: $00
    ld [$b4ff], sp                                ; $4dbb: $08 $ff $b4
    nop                                           ; $4dbe: $00
    rst $38                                       ; $4dbf: $ff
    nop                                           ; $4dc0: $00
    ld bc, $7ffe                                  ; $4dc1: $01 $fe $7f
    db $fc                                        ; $4dc4: $fc
    ld a, a                                       ; $4dc5: $7f
    db $fc                                        ; $4dc6: $fc
    rst $38                                       ; $4dc7: $ff
    db $fc                                        ; $4dc8: $fc
    cp $f9                                        ; $4dc9: $fe $f9
    cp $f9                                        ; $4dcb: $fe $f9
    cp $f9                                        ; $4dcd: $fe $f9
    db $fc                                        ; $4dcf: $fc
    di                                            ; $4dd0: $f3
    db $fd                                        ; $4dd1: $fd
    di                                            ; $4dd2: $f3
    cp $01                                        ; $4dd3: $fe $01
    nop                                           ; $4dd5: $00
    rst $38                                       ; $4dd6: $ff
    cp $ff                                        ; $4dd7: $fe $ff
    cp $ff                                        ; $4dd9: $fe $ff
    cp $ff                                        ; $4ddb: $fe $ff
    cp $7f                                        ; $4ddd: $fe $7f
    cp [hl]                                       ; $4ddf: $be
    ld a, a                                       ; $4de0: $7f
    cp [hl]                                       ; $4de1: $be
    ld a, a                                       ; $4de2: $7f
    ld a, $ff                                     ; $4de3: $3e $ff
    ld a, [hl]                                    ; $4de5: $7e
    rst $38                                       ; $4de6: $ff
    ld a, [hl]                                    ; $4de7: $7e
    rst $38                                       ; $4de8: $ff
    ld a, [hl]                                    ; $4de9: $7e
    rst $38                                       ; $4dea: $ff
    cp $ff                                        ; $4deb: $fe $ff
    cp $ff                                        ; $4ded: $fe $ff
    cp $ff                                        ; $4def: $fe $ff
    cp $02                                        ; $4df1: $fe $02
    rst $38                                       ; $4df3: $ff
    sbc h                                         ; $4df4: $9c
    ld a, [hl]                                    ; $4df5: $7e
    rst $38                                       ; $4df6: $ff
    ld a, [hl]                                    ; $4df7: $7e
    rst $38                                       ; $4df8: $ff
    ld a, [hl]                                    ; $4df9: $7e
    rst $38                                       ; $4dfa: $ff
    ld a, [hl]                                    ; $4dfb: $7e
    rst $38                                       ; $4dfc: $ff
    ld a, b                                       ; $4dfd: $78
    db $fc                                        ; $4dfe: $fc
    ld a, a                                       ; $4dff: $7f
    rst $38                                       ; $4e00: $ff
    ld a, a                                       ; $4e01: $7f
    rst $38                                       ; $4e02: $ff
    rra                                           ; $4e03: $1f
    rst $38                                       ; $4e04: $ff
    ld bc, $017f                                  ; $4e05: $01 $7f $01
    ld a, a                                       ; $4e08: $7f
    ld bc, HeaderManufacturerCode                 ; $4e09: $01 $3f $01
    ld e, $01                                     ; $4e0c: $1e $01
    ld c, $01                                     ; $4e0e: $0e $01
    inc bc                                        ; $4e10: $03
    inc bc                                        ; $4e11: $03
    nop                                           ; $4e12: $00
    adc e                                         ; $4e13: $8b
    rst $18                                       ; $4e14: $df
    ccf                                           ; $4e15: $3f
    rst $18                                       ; $4e16: $df
    ccf                                           ; $4e17: $3f
    rst $18                                       ; $4e18: $df
    ccf                                           ; $4e19: $3f
    rst $18                                       ; $4e1a: $df
    ccf                                           ; $4e1b: $3f
    rst $38                                       ; $4e1c: $ff
    rrca                                          ; $4e1d: $0f
    rlca                                          ; $4e1e: $07
    ld b, $ff                                     ; $4e1f: $06 $ff
    adc c                                         ; $4e21: $89
    or [hl]                                       ; $4e22: $b6
    rst $38                                       ; $4e23: $ff
    ld d, d                                       ; $4e24: $52
    rst $38                                       ; $4e25: $ff
    ld d, d                                       ; $4e26: $52
    rst $38                                       ; $4e27: $ff
    ld d, h                                       ; $4e28: $54
    rst $38                                       ; $4e29: $ff
    or [hl]                                       ; $4e2a: $b6
    inc bc                                        ; $4e2b: $03
    rst $38                                       ; $4e2c: $ff
    ld [bc], a                                    ; $4e2d: $02
    rlca                                          ; $4e2e: $07
    adc h                                         ; $4e2f: $8c
    nop                                           ; $4e30: $00
    ei                                            ; $4e31: $fb
    rst $20                                       ; $4e32: $e7
    di                                            ; $4e33: $f3
    rst $08                                       ; $4e34: $cf
    rst $30                                       ; $4e35: $f7
    rst $08                                       ; $4e36: $cf
    rst $30                                       ; $4e37: $f7
    rst $08                                       ; $4e38: $cf
    rst $30                                       ; $4e39: $f7
    adc a                                         ; $4e3a: $8f
    rst $00                                       ; $4e3b: $c7
    ld b, $ff                                     ; $4e3c: $06 $ff
    adc c                                         ; $4e3e: $89
    sbc l                                         ; $4e3f: $9d
    rst $38                                       ; $4e40: $ff
    xor d                                         ; $4e41: $aa
    rst $38                                       ; $4e42: $ff
    xor b                                         ; $4e43: $a8
    rst $38                                       ; $4e44: $ff
    xor d                                         ; $4e45: $aa
    rst $38                                       ; $4e46: $ff
    sbc d                                         ; $4e47: $9a
    dec b                                         ; $4e48: $05
    rst $38                                       ; $4e49: $ff
    sbc [hl]                                      ; $4e4a: $9e
    nop                                           ; $4e4b: $00
    ld a, [hl]                                    ; $4e4c: $7e
    ld a, a                                       ; $4e4d: $7f
    ld a, [hl]                                    ; $4e4e: $7e
    ld a, a                                       ; $4e4f: $7f
    ld a, [hl]                                    ; $4e50: $7e
    ld a, a                                       ; $4e51: $7f
    ld a, [hl]                                    ; $4e52: $7e
    ld a, a                                       ; $4e53: $7f
    ld a, [hl]                                    ; $4e54: $7e
    ld a, a                                       ; $4e55: $7f
    ld a, [hl]                                    ; $4e56: $7e
    ld a, a                                       ; $4e57: $7f
    ld a, [hl]                                    ; $4e58: $7e
    ld a, a                                       ; $4e59: $7f
    ld a, [hl]                                    ; $4e5a: $7e
    ld a, a                                       ; $4e5b: $7f
    ld a, [hl]                                    ; $4e5c: $7e
    ld d, a                                       ; $4e5d: $57
    ld a, [hl]                                    ; $4e5e: $7e
    ld d, a                                       ; $4e5f: $57
    ld a, [hl]                                    ; $4e60: $7e
    ld l, a                                       ; $4e61: $6f
    ld a, [hl]                                    ; $4e62: $7e
    ld l, a                                       ; $4e63: $6f
    ld a, [hl]                                    ; $4e64: $7e
    ld l, a                                       ; $4e65: $6f
    ld a, [hl]                                    ; $4e66: $7e
    ld a, a                                       ; $4e67: $7f
    ld a, [hl]                                    ; $4e68: $7e
    ld [bc], a                                    ; $4e69: $02
    ld a, a                                       ; $4e6a: $7f
    add c                                         ; $4e6b: $81
    nop                                           ; $4e6c: $00
    rst $38                                       ; $4e6d: $ff

jr_0eb_4e6e:
    dec d                                         ; $4e6e: $15
    ld [$100e], sp                                ; $4e6f: $08 $0e $10
    ldh a, [$f2]                                  ; $4e72: $f0 $f2
    pop hl                                        ; $4e74: $e1
    nop                                           ; $4e75: $00
    pop hl                                        ; $4e76: $e1
    ld [$10e1], sp                                ; $4e77: $08 $e1 $10
    pop hl                                        ; $4e7a: $e1
    jr jr_0eb_4e6e                                ; $4e7b: $18 $f1

    ld bc, $09f1                                  ; $4e7d: $01 $f1 $09
    pop af                                        ; $4e80: $f1
    ld de, $18f1                                  ; $4e81: $11 $f1 $18
    add c                                         ; $4e84: $81
    rst $38                                       ; $4e85: $ff
    ld [bc], a                                    ; $4e86: $02
    nop                                           ; $4e87: $00
    sbc [hl]                                      ; $4e88: $9e
    rst $38                                       ; $4e89: $ff
    ld a, a                                       ; $4e8a: $7f
    rst $38                                       ; $4e8b: $ff
    ld a, a                                       ; $4e8c: $7f
    rst $38                                       ; $4e8d: $ff
    ld a, a                                       ; $4e8e: $7f
    rst $38                                       ; $4e8f: $ff
    ld a, a                                       ; $4e90: $7f
    rst $38                                       ; $4e91: $ff
    ld a, a                                       ; $4e92: $7f
    rst $38                                       ; $4e93: $ff
    ld a, a                                       ; $4e94: $7f
    cp $7e                                        ; $4e95: $fe $7e
    db $fd                                        ; $4e97: $fd
    ld a, [hl]                                    ; $4e98: $7e
    rst $38                                       ; $4e99: $ff
    ld a, a                                       ; $4e9a: $7f
    rst $38                                       ; $4e9b: $ff
    cp a                                          ; $4e9c: $bf
    ld a, a                                       ; $4e9d: $7f
    ccf                                           ; $4e9e: $3f
    ld a, a                                       ; $4e9f: $7f
    ccf                                           ; $4ea0: $3f
    ld a, a                                       ; $4ea1: $7f
    ccf                                           ; $4ea2: $3f
    ld a, a                                       ; $4ea3: $7f
    ccf                                           ; $4ea4: $3f
    ld a, a                                       ; $4ea5: $7f
    rst $38                                       ; $4ea6: $ff
    ld [bc], a                                    ; $4ea7: $02
    nop                                           ; $4ea8: $00
    ld [$96ff], sp                                ; $4ea9: $08 $ff $96
    sbc [hl]                                      ; $4eac: $9e
    rst $28                                       ; $4ead: $ef
    ld e, $ef                                     ; $4eae: $1e $ef
    ld e, $ef                                     ; $4eb0: $1e $ef
    ld e, $ef                                     ; $4eb2: $1e $ef
    rra                                           ; $4eb4: $1f
    rst $28                                       ; $4eb5: $ef
    rra                                           ; $4eb6: $1f
    rst $28                                       ; $4eb7: $ef
    rra                                           ; $4eb8: $1f
    rst $28                                       ; $4eb9: $ef
    rra                                           ; $4eba: $1f
    rst $28                                       ; $4ebb: $ef
    rra                                           ; $4ebc: $1f
    rst $28                                       ; $4ebd: $ef
    rra                                           ; $4ebe: $1f
    rst $28                                       ; $4ebf: $ef
    rra                                           ; $4ec0: $1f
    rst $38                                       ; $4ec1: $ff
    ld [bc], a                                    ; $4ec2: $02
    nop                                           ; $4ec3: $00
    ld [$ceff], sp                                ; $4ec4: $08 $ff $ce
    nop                                           ; $4ec7: $00
    rst $38                                       ; $4ec8: $ff
    nop                                           ; $4ec9: $00
    ld bc, $7ffe                                  ; $4eca: $01 $fe $7f
    db $fc                                        ; $4ecd: $fc
    ld a, a                                       ; $4ece: $7f
    db $fc                                        ; $4ecf: $fc
    rst $38                                       ; $4ed0: $ff
    db $fc                                        ; $4ed1: $fc
    cp $f9                                        ; $4ed2: $fe $f9
    cp $f9                                        ; $4ed4: $fe $f9
    cp $f9                                        ; $4ed6: $fe $f9
    db $fc                                        ; $4ed8: $fc
    di                                            ; $4ed9: $f3
    db $fd                                        ; $4eda: $fd
    di                                            ; $4edb: $f3
    cp $01                                        ; $4edc: $fe $01
    nop                                           ; $4ede: $00
    rst $38                                       ; $4edf: $ff
    cp $ff                                        ; $4ee0: $fe $ff
    cp $ff                                        ; $4ee2: $fe $ff
    cp $ff                                        ; $4ee4: $fe $ff
    cp $7f                                        ; $4ee6: $fe $7f
    cp [hl]                                       ; $4ee8: $be
    ld a, a                                       ; $4ee9: $7f
    cp [hl]                                       ; $4eea: $be
    ld a, a                                       ; $4eeb: $7f
    ld a, $ff                                     ; $4eec: $3e $ff
    ld a, [hl]                                    ; $4eee: $7e
    rst $38                                       ; $4eef: $ff
    ld a, [hl]                                    ; $4ef0: $7e
    rst $38                                       ; $4ef1: $ff
    ld a, [hl]                                    ; $4ef2: $7e
    rst $38                                       ; $4ef3: $ff
    cp $ff                                        ; $4ef4: $fe $ff
    cp $ff                                        ; $4ef6: $fe $ff
    cp $ff                                        ; $4ef8: $fe $ff
    cp $ff                                        ; $4efa: $fe $ff
    ld a, a                                       ; $4efc: $7f
    cp $7f                                        ; $4efd: $fe $7f
    cp $7f                                        ; $4eff: $fe $7f
    cp $bd                                        ; $4f01: $fe $bd
    ld a, [hl]                                    ; $4f03: $7e
    rst $00                                       ; $4f04: $c7
    ccf                                           ; $4f05: $3f
    ld a, h                                       ; $4f06: $7c
    inc bc                                        ; $4f07: $03
    ccf                                           ; $4f08: $3f
    nop                                           ; $4f09: $00
    ccf                                           ; $4f0a: $3f
    nop                                           ; $4f0b: $00
    rra                                           ; $4f0c: $1f
    nop                                           ; $4f0d: $00
    rra                                           ; $4f0e: $1f
    nop                                           ; $4f0f: $00
    rrca                                          ; $4f10: $0f
    nop                                           ; $4f11: $00
    rlca                                          ; $4f12: $07
    nop                                           ; $4f13: $00
    ld bc, $0007                                  ; $4f14: $01 $07 $00
    sbc e                                         ; $4f17: $9b
    rst $18                                       ; $4f18: $df
    ccf                                           ; $4f19: $3f
    rst $18                                       ; $4f1a: $df
    ccf                                           ; $4f1b: $3f
    rst $18                                       ; $4f1c: $df
    ccf                                           ; $4f1d: $3f
    rst $18                                       ; $4f1e: $df
    ccf                                           ; $4f1f: $3f
    rst $38                                       ; $4f20: $ff
    rst $28                                       ; $4f21: $ef
    rla                                           ; $4f22: $17
    rst $38                                       ; $4f23: $ff
    rst $18                                       ; $4f24: $df
    ccf                                           ; $4f25: $3f
    rst $18                                       ; $4f26: $df
    ccf                                           ; $4f27: $3f
    rst $18                                       ; $4f28: $df
    ld [hl], $df                                  ; $4f29: $36 $df
    ld [hl-], a                                   ; $4f2b: $32
    rst $28                                       ; $4f2c: $ef
    ld a, [de]                                    ; $4f2d: $1a
    rst $28                                       ; $4f2e: $ef
    inc e                                         ; $4f2f: $1c
    rst $28                                       ; $4f30: $ef
    ld e, $6f                                     ; $4f31: $1e $6f
    ld [bc], a                                    ; $4f33: $02
    rra                                           ; $4f34: $1f
    inc bc                                        ; $4f35: $03
    nop                                           ; $4f36: $00
    adc e                                         ; $4f37: $8b
    ei                                            ; $4f38: $fb
    rst $20                                       ; $4f39: $e7
    di                                            ; $4f3a: $f3
    rst $08                                       ; $4f3b: $cf
    rst $30                                       ; $4f3c: $f7
    rst $08                                       ; $4f3d: $cf
    rst $30                                       ; $4f3e: $f7
    rst $08                                       ; $4f3f: $cf
    rst $30                                       ; $4f40: $f7
    adc a                                         ; $4f41: $8f
    rst $00                                       ; $4f42: $c7
    ld b, $ff                                     ; $4f43: $06 $ff
    adc c                                         ; $4f45: $89
    sbc l                                         ; $4f46: $9d
    rst $38                                       ; $4f47: $ff
    xor d                                         ; $4f48: $aa
    rst $38                                       ; $4f49: $ff
    xor b                                         ; $4f4a: $a8
    rst $38                                       ; $4f4b: $ff
    xor d                                         ; $4f4c: $aa
    rst $38                                       ; $4f4d: $ff
    sbc d                                         ; $4f4e: $9a
    inc bc                                        ; $4f4f: $03
    rst $38                                       ; $4f50: $ff
    ld [bc], a                                    ; $4f51: $02
    ld a, a                                       ; $4f52: $7f
    sbc [hl]                                      ; $4f53: $9e
    nop                                           ; $4f54: $00
    ld a, [hl]                                    ; $4f55: $7e
    ld a, a                                       ; $4f56: $7f
    ld a, [hl]                                    ; $4f57: $7e
    ld a, a                                       ; $4f58: $7f
    ld a, [hl]                                    ; $4f59: $7e
    ld a, a                                       ; $4f5a: $7f
    ld a, [hl]                                    ; $4f5b: $7e
    ld a, a                                       ; $4f5c: $7f
    ld a, [hl]                                    ; $4f5d: $7e
    ld a, a                                       ; $4f5e: $7f
    ld a, [hl]                                    ; $4f5f: $7e
    ld a, a                                       ; $4f60: $7f
    ld a, [hl]                                    ; $4f61: $7e
    ld a, a                                       ; $4f62: $7f
    ld a, [hl]                                    ; $4f63: $7e
    ld a, a                                       ; $4f64: $7f
    ld a, [hl]                                    ; $4f65: $7e
    ld d, a                                       ; $4f66: $57
    ld a, [hl]                                    ; $4f67: $7e
    ld d, a                                       ; $4f68: $57
    ld a, [hl]                                    ; $4f69: $7e
    ld l, a                                       ; $4f6a: $6f
    ld a, [hl]                                    ; $4f6b: $7e
    ld l, a                                       ; $4f6c: $6f
    ld a, [hl]                                    ; $4f6d: $7e
    ld l, a                                       ; $4f6e: $6f
    ld a, [hl]                                    ; $4f6f: $7e
    ld a, a                                       ; $4f70: $7f
    ld a, [hl]                                    ; $4f71: $7e
    ld [bc], a                                    ; $4f72: $02
    ld a, a                                       ; $4f73: $7f
    add c                                         ; $4f74: $81
    nop                                           ; $4f75: $00
    rst $38                                       ; $4f76: $ff

    db $09, $02, $fa, $07, $fd, $04, $fb, $fa, $fb, $00, $8f, $02, $00, $07, $00, $3f
    db $1d, $64, $7f, $80, $ff, $88, $f7, $d3, $fe, $fa, $03, $ff, $02, $77, $02, $03
    db $0e, $00, $02, $18, $8a, $26, $3e, $03, $3d, $07, $38, $17, $3d, $1f, $3f, $02
    db $3e, $82, $3c, $1c, $02, $30, $0a, $00, $ff, $09, $02, $fa, $07, $fd, $04, $fc
    db $fa, $fc, $00, $8d, $07, $05, $1c, $1f, $60, $7f, $88, $f7, $dc, $e3, $fa, $77
    db $fb, $03, $ff, $82, $77, $76, $02, $03, $0e, $00, $02, $34, $8f, $1a, $2e, $01
    db $3f, $03, $3d, $07, $3f, $2f, $3f, $3e, $1e, $3c, $0c, $20, $0d, $00, $ff, $09
    db $02, $fa, $07, $fd, $04, $fc, $f9, $fc, $00, $8e, $0b, $03, $04, $07, $38, $3f
    db $40, $7f, $44, $3b, $e8, $1f, $79, $3f, $02, $7f, $02, $37, $02, $03, $0c, $00
    db $02, $60, $90, $58, $68, $3e, $46, $11, $6f, $02, $7e, $17, $7f, $1f, $7f, $7c
    db $78, $7c, $5c, $02, $40, $0c, $00, $ff, $09, $02, $fa, $07, $fd, $04, $fb, $fa
    db $fb, $00, $90, $10, $00, $38, $00, $3f, $2f, $62, $7f, $40, $7f, $80, $ff, $c6
    db $7b, $e7, $ff, $02, $7f, $02, $3f, $02, $07, $0c, $00, $02, $38, $90, $04, $3c
    db $12, $2e, $01, $3f, $01, $3f, $0b, $3f, $1f, $3b, $3e, $30, $2c, $28, $0c, $00
    db $ff, $09, $02, $fa, $07, $fd, $04, $fb, $fa, $fb, $00, $02, $00, $82, $10, $00
    db $02, $2f, $8b, $51, $7f, $80, $ff, $c4, $fb, $ce, $f1, $ef, $fb, $7f, $03, $3f
    db $02, $0e, $0a, $00, $82, $20, $00, $02, $38, $89, $04, $3c, $02, $3e, $01, $3f
    db $05, $3f, $27, $03, $3f, $82, $3e, $3a, $02, $1c, $0c, $00, $ff, $09, $02, $fa
    db $07, $fd, $04, $fa, $fa, $fa, $00, $02, $00, $81, $01, $03, $00, $02, $1d, $8e
    db $62, $7f, $c0, $ff, $c0, $ff, $6c, $7b, $fd, $bf, $ff, $1f, $7f, $3f, $02, $0e
    db $08, $00, $92, $20, $00, $30, $00, $3c, $1c, $0a, $3e, $01, $3f, $01, $3f, $03
    db $3f, $17, $3f, $1f, $3f, $02, $3e, $02, $34, $0a, $00, $ff, $09, $02, $fa, $07
    db $fd, $04, $fb, $fa, $fb, $00, $04, $00, $8b, $3e, $1e, $45, $7f, $80, $ff, $d0
    db $ff, $75, $7e, $fc, $02, $ff, $81, $bf, $02, $7f, $02, $1c, $0a, $00, $82, $20
    db $00, $02, $1c, $89, $22, $3e, $02, $3e, $01, $3f, $03, $3f, $2b, $03, $3f, $02
    db $3e, $02, $34, $0c, $00, $ff

    ld de, $f906                                  ; $510d: $11 $06 $f9
    ld [$03f4], sp                                ; $5110: $08 $f4 $03

jr_0eb_5113:
    rst $28                                       ; $5113: $ef
    ld a, [c]                                     ; $5114: $f2
    xor $fa                                       ; $5115: $ee $fa
    rst $28                                       ; $5117: $ef
    ld [bc], a                                    ; $5118: $02
    ld a, [$fe08]                                 ; $5119: $fa $08 $fe
    db $fc                                        ; $511c: $fc
    cp $00                                        ; $511d: $fe $00
    ld [bc], a                                    ; $511f: $02
    ld bc, $0702                                  ; $5120: $01 $02 $07
    ld [bc], a                                    ; $5123: $02
    inc bc                                        ; $5124: $03
    add c                                         ; $5125: $81
    inc b                                         ; $5126: $04
    inc bc                                        ; $5127: $03
    rlca                                          ; $5128: $07
    ld [bc], a                                    ; $5129: $02
    inc bc                                        ; $512a: $03
    ld [bc], a                                    ; $512b: $02
    add hl, hl                                    ; $512c: $29
    adc h                                         ; $512d: $8c
    ld a, l                                       ; $512e: $7d
    ld d, l                                       ; $512f: $55
    ld hl, sp-$78                                 ; $5130: $f8 $88
    halt                                          ; $5132: $76
    ld e, [hl]                                    ; $5133: $5e
    ld b, c                                       ; $5134: $41
    ld a, a                                       ; $5135: $7f
    jr nz, jr_0eb_5177                            ; $5136: $20 $3f

    nop                                           ; $5138: $00
    rrca                                          ; $5139: $0f
    ld [bc], a                                    ; $513a: $02
    inc bc                                        ; $513b: $03
    inc b                                         ; $513c: $04
    nop                                           ; $513d: $00
    ld [bc], a                                    ; $513e: $02
    ld l, h                                       ; $513f: $6c
    add l                                         ; $5140: $85
    ei                                            ; $5141: $fb
    rst $38                                       ; $5142: $ff
    scf                                           ; $5143: $37
    rst $38                                       ; $5144: $ff
    rst $18                                       ; $5145: $df
    ld [bc], a                                    ; $5146: $02
    rst $38                                       ; $5147: $ff
    adc a                                         ; $5148: $8f
    pop af                                        ; $5149: $f1
    rst $38                                       ; $514a: $ff
    db $ed                                        ; $514b: $ed
    rst $38                                       ; $514c: $ff
    jp nc, $72df                                  ; $514d: $d2 $df $72

    rst $38                                       ; $5150: $ff
    inc de                                        ; $5151: $13
    rst $38                                       ; $5152: $ff
    call z, Call_0eb_637f                         ; $5153: $cc $7f $63
    ccf                                           ; $5156: $3f
    ld sp, $f202                                  ; $5157: $31 $02 $f2
    add e                                         ; $515a: $83
    dec a                                         ; $515b: $3d
    db $fd                                        ; $515c: $fd
    ld a, [$ff03]                                 ; $515d: $fa $03 $ff
    ld [bc], a                                    ; $5160: $02
    add b                                         ; $5161: $80
    ld b, $00                                     ; $5162: $06 $00
    inc b                                         ; $5164: $04
    add b                                         ; $5165: $80
    ld [bc], a                                    ; $5166: $02
    adc b                                         ; $5167: $88
    adc [hl]                                      ; $5168: $8e
    sbc h                                         ; $5169: $9c
    sub h                                         ; $516a: $94
    cp [hl]                                       ; $516b: $be
    xor d                                         ; $516c: $aa
    ld a, $32                                     ; $516d: $3e $32
    ld c, [hl]                                    ; $516f: $4e
    ld a, [hl]                                    ; $5170: $7e
    db $e4                                        ; $5171: $e4
    db $fc                                        ; $5172: $fc
    add h                                         ; $5173: $84
    db $fc                                        ; $5174: $fc
    ld a, e                                       ; $5175: $7b
    ei                                            ; $5176: $fb

jr_0eb_5177:
    ld [bc], a                                    ; $5177: $02
    rst $38                                       ; $5178: $ff
    add d                                         ; $5179: $82
    sbc a                                         ; $517a: $9f
    rst $38                                       ; $517b: $ff
    ld [bc], a                                    ; $517c: $02
    jr nc, jr_0eb_5113                            ; $517d: $30 $94

    jr z, jr_0eb_51b9                             ; $517f: $28 $38

jr_0eb_5181:
    inc b                                         ; $5181: $04
    inc a                                         ; $5182: $3c
    inc h                                         ; $5183: $24
    inc a                                         ; $5184: $3c
    inc [hl]                                      ; $5185: $34
    inc a                                         ; $5186: $3c
    jr jr_0eb_5181                                ; $5187: $18 $f8

    ld e, b                                       ; $5189: $58
    ld hl, sp-$30                                 ; $518a: $f8 $d0
    ldh a, [$88]                                  ; $518c: $f0 $88
    ld hl, sp+$5e                                 ; $518e: $f8 $5e
    cp $f9                                        ; $5190: $fe $f9
    rst $38                                       ; $5192: $ff
    ld [bc], a                                    ; $5193: $02
    ld a, $02                                     ; $5194: $3e $02
    ld [$0006], sp                                ; $5196: $08 $06 $00
    ld [bc], a                                    ; $5199: $02
    db $fc                                        ; $519a: $fc
    add d                                         ; $519b: $82
    dec a                                         ; $519c: $3d
    ccf                                           ; $519d: $3f
    ld [bc], a                                    ; $519e: $02
    rrca                                          ; $519f: $0f
    ld [bc], a                                    ; $51a0: $02
    inc bc                                        ; $51a1: $03
    ld a, [de]                                    ; $51a2: $1a
    nop                                           ; $51a3: $00
    adc d                                         ; $51a4: $8a
    ld [bc], a                                    ; $51a5: $02
    rrca                                          ; $51a6: $0f
    inc bc                                        ; $51a7: $03

jr_0eb_51a8:
    rrca                                          ; $51a8: $0f
    add hl, bc                                    ; $51a9: $09
    rrca                                          ; $51aa: $0f
    dec bc                                        ; $51ab: $0b
    rrca                                          ; $51ac: $0f
    ld [bc], a                                    ; $51ad: $02
    inc bc                                        ; $51ae: $03
    inc d                                         ; $51af: $14
    nop                                           ; $51b0: $00
    rst $38                                       ; $51b1: $ff
    ld de, $f906                                  ; $51b2: $11 $06 $f9
    ld [$03f4], sp                                ; $51b5: $08 $f4 $03
    rst $28                                       ; $51b8: $ef

jr_0eb_51b9:
    ld a, [c]                                     ; $51b9: $f2
    xor $fa                                       ; $51ba: $ee $fa
    ldh a, [rSC]                                  ; $51bc: $f0 $02
    ld a, [$fe08]                                 ; $51be: $fa $08 $fe
    db $fc                                        ; $51c1: $fc
    cp $00                                        ; $51c2: $fe $00
    ld [bc], a                                    ; $51c4: $02
    ld bc, $0302                                  ; $51c5: $01 $02 $03
    add h                                         ; $51c8: $84
    ld [bc], a                                    ; $51c9: $02
    inc bc                                        ; $51ca: $03
    ld b, $07                                     ; $51cb: $06 $07
    inc b                                         ; $51cd: $04
    inc bc                                        ; $51ce: $03
    ld [bc], a                                    ; $51cf: $02
    add hl, hl                                    ; $51d0: $29
    adc h                                         ; $51d1: $8c
    ld a, l                                       ; $51d2: $7d
    ld d, l                                       ; $51d3: $55
    ld hl, sp-$78                                 ; $51d4: $f8 $88
    ld [hl], h                                    ; $51d6: $74
    ld e, h                                       ; $51d7: $5c
    ld b, e                                       ; $51d8: $43
    ld a, a                                       ; $51d9: $7f
    jr nz, jr_0eb_521b                            ; $51da: $20 $3f

    nop                                           ; $51dc: $00
    rrca                                          ; $51dd: $0f
    ld [bc], a                                    ; $51de: $02
    inc bc                                        ; $51df: $03
    inc b                                         ; $51e0: $04
    nop                                           ; $51e1: $00
    ld [bc], a                                    ; $51e2: $02
    ld h, [hl]                                    ; $51e3: $66
    add l                                         ; $51e4: $85
    cp l                                          ; $51e5: $bd
    rst $38                                       ; $51e6: $ff
    or a                                          ; $51e7: $b7
    rst $38                                       ; $51e8: $ff
    rst $18                                       ; $51e9: $df
    ld [bc], a                                    ; $51ea: $02
    rst $38                                       ; $51eb: $ff
    adc a                                         ; $51ec: $8f
    pop af                                        ; $51ed: $f1
    rst $38                                       ; $51ee: $ff
    db $ed                                        ; $51ef: $ed
    rst $38                                       ; $51f0: $ff
    jp nc, $72df                                  ; $51f1: $d2 $df $72

    rst $38                                       ; $51f4: $ff
    inc de                                        ; $51f5: $13
    rst $38                                       ; $51f6: $ff
    call z, Call_0eb_637f                         ; $51f7: $cc $7f $63
    ccf                                           ; $51fa: $3f
    ld sp, $f202                                  ; $51fb: $31 $02 $f2
    add e                                         ; $51fe: $83
    dec a                                         ; $51ff: $3d
    db $fd                                        ; $5200: $fd
    ld a, [$ff03]                                 ; $5201: $fa $03 $ff
    ld [bc], a                                    ; $5204: $02
    add b                                         ; $5205: $80
    inc b                                         ; $5206: $04
    nop                                           ; $5207: $00
    inc b                                         ; $5208: $04
    add b                                         ; $5209: $80
    ld [bc], a                                    ; $520a: $02
    adc b                                         ; $520b: $88
    sub h                                         ; $520c: $94
    sbc h                                         ; $520d: $9c
    sub h                                         ; $520e: $94
    cp [hl]                                       ; $520f: $be
    xor d                                         ; $5210: $aa
    ld a, $32                                     ; $5211: $3e $32
    ld c, [hl]                                    ; $5213: $4e
    ld a, [hl]                                    ; $5214: $7e
    ld [c], a                                     ; $5215: $e2
    cp $85                                        ; $5216: $fe $85
    db $fd                                        ; $5218: $fd
    ld a, [hl]                                    ; $5219: $7e
    rst $38                                       ; $521a: $ff

jr_0eb_521b:
    ld sp, hl                                     ; $521b: $f9
    rst $38                                       ; $521c: $ff
    sbc a                                         ; $521d: $9f
    rst $38                                       ; $521e: $ff
    ld c, b                                       ; $521f: $48
    rst $38                                       ; $5220: $ff
    ld [bc], a                                    ; $5221: $02
    jr jr_0eb_51a8                                ; $5222: $18 $84

    inc h                                         ; $5224: $24
    inc a                                         ; $5225: $3c
    inc b                                         ; $5226: $04
    inc a                                         ; $5227: $3c
    inc b                                         ; $5228: $04
    jr c, @-$72                                   ; $5229: $38 $8c

    db $10                                        ; $522b: $10
    jr nc, @+$52                                  ; $522c: $30 $50

    ldh a, [$d0]                                  ; $522e: $f0 $d0
    ldh a, [$88]                                  ; $5230: $f0 $88
    ld hl, sp+$5e                                 ; $5232: $f8 $5e
    cp $f9                                        ; $5234: $fe $f9
    rst $38                                       ; $5236: $ff
    ld [bc], a                                    ; $5237: $02
    ld a, $02                                     ; $5238: $3e $02
    ld [$0006], sp                                ; $523a: $08 $06 $00
    ld [bc], a                                    ; $523d: $02
    db $fc                                        ; $523e: $fc
    ld [bc], a                                    ; $523f: $02
    inc a                                         ; $5240: $3c
    ld [bc], a                                    ; $5241: $02
    rrca                                          ; $5242: $0f
    ld [bc], a                                    ; $5243: $02
    inc bc                                        ; $5244: $03
    inc e                                         ; $5245: $1c
    nop                                           ; $5246: $00
    adc b                                         ; $5247: $88
    inc bc                                        ; $5248: $03
    rrca                                          ; $5249: $0f
    add hl, bc                                    ; $524a: $09

jr_0eb_524b:
    rrca                                          ; $524b: $0f
    dec bc                                        ; $524c: $0b
    rrca                                          ; $524d: $0f
    ld [bc], a                                    ; $524e: $02
    inc bc                                        ; $524f: $03
    inc d                                         ; $5250: $14
    nop                                           ; $5251: $00
    rst $38                                       ; $5252: $ff
    ld de, $f906                                  ; $5253: $11 $06 $f9
    ld [$03f4], sp                                ; $5256: $08 $f4 $03
    rst $28                                       ; $5259: $ef
    ld a, [c]                                     ; $525a: $f2
    xor $fa                                       ; $525b: $ee $fa
    pop af                                        ; $525d: $f1
    ld [bc], a                                    ; $525e: $02
    ld a, [$fe08]                                 ; $525f: $fa $08 $fe
    db $fc                                        ; $5262: $fc
    cp $00                                        ; $5263: $fe $00
    ld [bc], a                                    ; $5265: $02
    ld bc, $0302                                  ; $5266: $01 $02 $03
    ld [bc], a                                    ; $5269: $02
    rlca                                          ; $526a: $07
    ld [bc], a                                    ; $526b: $02
    inc bc                                        ; $526c: $03
    add c                                         ; $526d: $81
    dec b                                         ; $526e: $05
    inc bc                                        ; $526f: $03
    rlca                                          ; $5270: $07
    ld [bc], a                                    ; $5271: $02
    dec hl                                        ; $5272: $2b
    adc h                                         ; $5273: $8c
    ld a, l                                       ; $5274: $7d
    ld d, l                                       ; $5275: $55
    ld hl, sp-$78                                 ; $5276: $f8 $88
    ld [hl], h                                    ; $5278: $74
    ld e, h                                       ; $5279: $5c
    ld b, [hl]                                    ; $527a: $46
    ld a, [hl]                                    ; $527b: $7e
    ld hl, $003f                                  ; $527c: $21 $3f $00
    rrca                                          ; $527f: $0f
    ld [bc], a                                    ; $5280: $02
    inc bc                                        ; $5281: $03
    inc b                                         ; $5282: $04
    nop                                           ; $5283: $00
    ld [bc], a                                    ; $5284: $02
    ld l, h                                       ; $5285: $6c
    add l                                         ; $5286: $85
    ei                                            ; $5287: $fb
    rst $38                                       ; $5288: $ff
    ld e, e                                       ; $5289: $5b
    rst $38                                       ; $528a: $ff
    cp a                                          ; $528b: $bf
    ld [bc], a                                    ; $528c: $02
    rst $38                                       ; $528d: $ff
    adc a                                         ; $528e: $8f
    pop af                                        ; $528f: $f1
    rst $38                                       ; $5290: $ff
    db $ed                                        ; $5291: $ed
    rst $38                                       ; $5292: $ff
    jp nc, $72df                                  ; $5293: $d2 $df $72

    rst $38                                       ; $5296: $ff
    inc de                                        ; $5297: $13
    rst $38                                       ; $5298: $ff
    call z, Call_0eb_637f                         ; $5299: $cc $7f $63
    ccf                                           ; $529c: $3f
    ld sp, $f202                                  ; $529d: $31 $02 $f2
    add e                                         ; $52a0: $83
    dec a                                         ; $52a1: $3d
    db $fd                                        ; $52a2: $fd
    ld a, [$ff03]                                 ; $52a3: $fa $03 $ff
    ld [bc], a                                    ; $52a6: $02
    add b                                         ; $52a7: $80
    ld [bc], a                                    ; $52a8: $02
    nop                                           ; $52a9: $00
    inc b                                         ; $52aa: $04
    add b                                         ; $52ab: $80
    ld [bc], a                                    ; $52ac: $02
    adc b                                         ; $52ad: $88
    sub [hl]                                      ; $52ae: $96
    sbc h                                         ; $52af: $9c
    sub h                                         ; $52b0: $94
    cp [hl]                                       ; $52b1: $be
    xor d                                         ; $52b2: $aa
    ld e, $12                                     ; $52b3: $1e $12
    ld l, $3e                                     ; $52b5: $2e $3e
    ld [c], a                                     ; $52b7: $e2
    cp $84                                        ; $52b8: $fe $84
    db $fc                                        ; $52ba: $fc
    ld a, a                                       ; $52bb: $7f
    rst $38                                       ; $52bc: $ff
    db $fd                                        ; $52bd: $fd
    rst $38                                       ; $52be: $ff
    sbc a                                         ; $52bf: $9f
    rst $38                                       ; $52c0: $ff
    ld c, b                                       ; $52c1: $48
    rst $38                                       ; $52c2: $ff
    call Call_000_02ff                            ; $52c3: $cd $ff $02
    jr jr_0eb_524b                                ; $52c6: $18 $83

    jr z, jr_0eb_5302                             ; $52c8: $28 $38

    inc d                                         ; $52ca: $14
    inc bc                                        ; $52cb: $03
    inc a                                         ; $52cc: $3c
    ld [bc], a                                    ; $52cd: $02
    jr c, @-$72                                   ; $52ce: $38 $8c

    jr jr_0eb_530a                                ; $52d0: $18 $38

    db $10                                        ; $52d2: $10
    jr nc, @-$2e                                  ; $52d3: $30 $d0

    ldh a, [$88]                                  ; $52d5: $f0 $88
    ld hl, sp+$5e                                 ; $52d7: $f8 $5e
    cp $f9                                        ; $52d9: $fe $f9
    rst $38                                       ; $52db: $ff
    ld [bc], a                                    ; $52dc: $02
    ld a, $02                                     ; $52dd: $3e $02
    ld [$0006], sp                                ; $52df: $08 $06 $00
    ld [bc], a                                    ; $52e2: $02
    db $fc                                        ; $52e3: $fc
    ld [bc], a                                    ; $52e4: $02
    inc a                                         ; $52e5: $3c
    ld [bc], a                                    ; $52e6: $02
    inc c                                         ; $52e7: $0c
    ld [bc], a                                    ; $52e8: $02
    inc bc                                        ; $52e9: $03
    ld e, $00                                     ; $52ea: $1e $00
    add [hl]                                      ; $52ec: $86
    add hl, bc                                    ; $52ed: $09
    rrca                                          ; $52ee: $0f
    dec bc                                        ; $52ef: $0b
    rrca                                          ; $52f0: $0f
    ld [bc], a                                    ; $52f1: $02
    inc bc                                        ; $52f2: $03
    inc d                                         ; $52f3: $14
    nop                                           ; $52f4: $00
    rst $38                                       ; $52f5: $ff
    rlca                                          ; $52f6: $07
    ld bc, $08f9                                  ; $52f7: $01 $f9 $08
    db $f4                                        ; $52fa: $f4
    inc bc                                        ; $52fb: $03
    ld a, [$83fa]                                 ; $52fc: $fa $fa $83
    dec c                                         ; $52ff: $0d
    nop                                           ; $5300: $00
    ld [bc], a                                    ; $5301: $02

jr_0eb_5302:
    dec e                                         ; $5302: $1d
    nop                                           ; $5303: $00
    rst $38                                       ; $5304: $ff
    dec c                                         ; $5305: $0d
    inc b                                         ; $5306: $04
    ld hl, sp+$07                                 ; $5307: $f8 $07
    push af                                       ; $5309: $f5

jr_0eb_530a:
    inc b                                         ; $530a: $04
    rst $20                                       ; $530b: $e7
    ld a, [$fee7]                                 ; $530c: $fa $e7 $fe
    rst $30                                       ; $530f: $f7
    ld hl, sp-$09                                 ; $5310: $f8 $f7
    cp $02                                        ; $5312: $fe $02
    inc c                                         ; $5314: $0c
    add a                                         ; $5315: $87
    rla                                           ; $5316: $17
    rra                                           ; $5317: $1f
    ld [hl], a                                    ; $5318: $77
    ld a, a                                       ; $5319: $7f
    ld e, l                                       ; $531a: $5d
    ld a, a                                       ; $531b: $7f
    xor a                                         ; $531c: $af
    ld [bc], a                                    ; $531d: $02
    rst $38                                       ; $531e: $ff
    sub l                                         ; $531f: $95
    db $fc                                        ; $5320: $fc
    ld a, a                                       ; $5321: $7f
    ld a, c                                       ; $5322: $79
    ld sp, hl                                     ; $5323: $f9
    rst $38                                       ; $5324: $ff
    ld a, a                                       ; $5325: $7f
    ld l, c                                       ; $5326: $69
    ccf                                           ; $5327: $3f
    jr nz, jr_0eb_5349                            ; $5328: $20 $1f

    jr jr_0eb_536b                                ; $532a: $18 $3f

    inc a                                         ; $532c: $3c
    ld d, a                                       ; $532d: $57
    ld [hl], a                                    ; $532e: $77

jr_0eb_532f:
    xor c                                         ; $532f: $a9
    ld sp, hl                                     ; $5330: $f9
    xor [hl]                                      ; $5331: $ae
    cp $ed                                        ; $5332: $fe $ed
    rst $38                                       ; $5334: $ff
    ld [bc], a                                    ; $5335: $02
    inc b                                         ; $5336: $04
    ld [bc], a                                    ; $5337: $02
    inc c                                         ; $5338: $0c
    add d                                         ; $5339: $82
    inc bc                                        ; $533a: $03
    rrca                                          ; $533b: $0f
    ld [bc], a                                    ; $533c: $02
    ld c, $8e                                     ; $533d: $0e $8e
    inc c                                         ; $533f: $0c
    inc b                                         ; $5340: $04
    ld c, $0a                                     ; $5341: $0e $0a
    inc c                                         ; $5343: $0c
    inc b                                         ; $5344: $04
    inc c                                         ; $5345: $0c
    inc b                                         ; $5346: $04
    ld c, $06                                     ; $5347: $0e $06

jr_0eb_5349:
    ld c, $0a                                     ; $5349: $0e $0a
    inc c                                         ; $534b: $0c
    inc b                                         ; $534c: $04
    ld [bc], a                                    ; $534d: $02
    ld [$0004], sp                                ; $534e: $08 $04 $00
    inc b                                         ; $5351: $04
    ld [$138c], sp                                ; $5352: $08 $8c $13
    rra                                           ; $5355: $1f
    inc de                                        ; $5356: $13
    rra                                           ; $5357: $1f
    ld de, $181f                                  ; $5358: $11 $1f $18
    rra                                           ; $535b: $1f
    add hl, sp                                    ; $535c: $39
    ld a, $7f                                     ; $535d: $3e $7f
    ld a, h                                       ; $535f: $7c
    ld [bc], a                                    ; $5360: $02
    rst $38                                       ; $5361: $ff
    add [hl]                                      ; $5362: $86
    cp $ff                                        ; $5363: $fe $ff
    cp [hl]                                       ; $5365: $be
    rst $38                                       ; $5366: $ff
    ld c, l                                       ; $5367: $4d
    ld a, a                                       ; $5368: $7f
    ld [bc], a                                    ; $5369: $02
    ccf                                           ; $536a: $3f

jr_0eb_536b:
    ld [bc], a                                    ; $536b: $02
    inc bc                                        ; $536c: $03
    ld [$8d00], sp                                ; $536d: $08 $00 $8d
    jr jr_0eb_53aa                                ; $5370: $18 $38

    jr z, @+$3a                                   ; $5372: $28 $38

    jr z, jr_0eb_53ae                             ; $5374: $28 $38

    jr z, jr_0eb_53b0                             ; $5376: $28 $38

    jr z, jr_0eb_5392                             ; $5378: $28 $18

    inc [hl]                                      ; $537a: $34
    inc a                                         ; $537b: $3c
    inc d                                         ; $537c: $14
    inc bc                                        ; $537d: $03
    inc a                                         ; $537e: $3c
    add h                                         ; $537f: $84
    ld [hl], $3e                                  ; $5380: $36 $3e
    add hl, sp                                    ; $5382: $39
    ccf                                           ; $5383: $3f
    ld [bc], a                                    ; $5384: $02
    ld a, $02                                     ; $5385: $3e $02
    jr nc, jr_0eb_5391                            ; $5387: $30 $08

    nop                                           ; $5389: $00
    rst $38                                       ; $538a: $ff
    rlca                                          ; $538b: $07
    ld bc, $07f8                                  ; $538c: $01 $f8 $07
    push af                                       ; $538f: $f5
    inc b                                         ; $5390: $04

jr_0eb_5391:
    di                                            ; $5391: $f3

jr_0eb_5392:
    ld a, [$0885]                                 ; $5392: $fa $85 $08
    nop                                           ; $5395: $00
    ld b, $00                                     ; $5396: $06 $00
    ld bc, $001b                                  ; $5398: $01 $1b $00
    rst $38                                       ; $539b: $ff
    dec c                                         ; $539c: $0d
    inc b                                         ; $539d: $04
    ld hl, sp+$07                                 ; $539e: $f8 $07
    push af                                       ; $53a0: $f5
    inc b                                         ; $53a1: $04
    rst $20                                       ; $53a2: $e7
    ld a, [$fee7]                                 ; $53a3: $fa $e7 $fe
    rst $30                                       ; $53a6: $f7
    ld hl, sp-$09                                 ; $53a7: $f8 $f7
    nop                                           ; $53a9: $00

jr_0eb_53aa:
    ld [bc], a                                    ; $53aa: $02
    jr jr_0eb_532f                                ; $53ab: $18 $82

    cpl                                           ; $53ad: $2f

jr_0eb_53ae:
    ccf                                           ; $53ae: $3f
    ld [bc], a                                    ; $53af: $02

jr_0eb_53b0:
    rst $38                                       ; $53b0: $ff
    sbc d                                         ; $53b1: $9a
    ld c, [hl]                                    ; $53b2: $4e
    ld a, a                                       ; $53b3: $7f
    ld [hl], a                                    ; $53b4: $77
    ld a, a                                       ; $53b5: $7f
    rst $38                                       ; $53b6: $ff
    db $fc                                        ; $53b7: $fc
    rst $38                                       ; $53b8: $ff
    db $fc                                        ; $53b9: $fc
    ld hl, sp-$01                                 ; $53ba: $f8 $ff
    ld a, a                                       ; $53bc: $7f
    ld h, h                                       ; $53bd: $64
    ccf                                           ; $53be: $3f
    jr nz, jr_0eb_53e0                            ; $53bf: $20 $1f

    inc e                                         ; $53c1: $1c
    ccf                                           ; $53c2: $3f
    inc a                                         ; $53c3: $3c
    ld d, e                                       ; $53c4: $53
    ld [hl], e                                    ; $53c5: $73
    xor l                                         ; $53c6: $ad
    db $fd                                        ; $53c7: $fd
    xor $fe                                       ; $53c8: $ee $fe
    ld e, l                                       ; $53ca: $5d
    ld a, a                                       ; $53cb: $7f
    ld [bc], a                                    ; $53cc: $02
    ld [$0c02], sp                                ; $53cd: $08 $02 $0c
    add d                                         ; $53d0: $82
    dec bc                                        ; $53d1: $0b
    rrca                                          ; $53d2: $0f
    ld [bc], a                                    ; $53d3: $02
    ld c, $84                                     ; $53d4: $0e $84
    inc c                                         ; $53d6: $0c
    inc b                                         ; $53d7: $04
    ld c, $0a                                     ; $53d8: $0e $0a
    ld b, $0c                                     ; $53da: $06 $0c
    add h                                         ; $53dc: $84
    ld c, $0a                                     ; $53dd: $0e $0a
    inc c                                         ; $53df: $0c

jr_0eb_53e0:
    inc b                                         ; $53e0: $04
    ld [bc], a                                    ; $53e1: $02
    ld [$0004], sp                                ; $53e2: $08 $04 $00
    inc b                                         ; $53e5: $04
    ld [$278c], sp                                ; $53e6: $08 $8c $27
    ccf                                           ; $53e9: $3f
    inc hl                                        ; $53ea: $23
    ccf                                           ; $53eb: $3f
    ld de, $101f                                  ; $53ec: $11 $1f $10
    rra                                           ; $53ef: $1f
    dec sp                                        ; $53f0: $3b
    inc a                                         ; $53f1: $3c
    ccf                                           ; $53f2: $3f
    add hl, sp                                    ; $53f3: $39
    ld [bc], a                                    ; $53f4: $02
    ld a, a                                       ; $53f5: $7f
    adc b                                         ; $53f6: $88
    ld a, [hl]                                    ; $53f7: $7e
    ld a, a                                       ; $53f8: $7f
    cp $ff                                        ; $53f9: $fe $ff
    db $fd                                        ; $53fb: $fd
    rst $38                                       ; $53fc: $ff
    adc e                                         ; $53fd: $8b
    rst $38                                       ; $53fe: $ff
    ld [bc], a                                    ; $53ff: $02
    ld a, a                                       ; $5400: $7f
    ld [bc], a                                    ; $5401: $02
    rrca                                          ; $5402: $0f
    ld [bc], a                                    ; $5403: $02
    inc bc                                        ; $5404: $03
    inc b                                         ; $5405: $04
    nop                                           ; $5406: $00
    add c                                         ; $5407: $81
    and b                                         ; $5408: $a0
    inc bc                                        ; $5409: $03
    ldh [$8e], a                                  ; $540a: $e0 $8e
    or b                                          ; $540c: $b0
    ldh a, [$b0]                                  ; $540d: $f0 $b0
    ldh a, [$50]                                  ; $540f: $f0 $50
    ldh a, [rOBP0]                                ; $5411: $f0 $48
    ld hl, sp+$6e                                 ; $5413: $f8 $6e
    cp $f9                                        ; $5415: $fe $f9
    rst $38                                       ; $5417: $ff
    or $fe                                        ; $5418: $f6 $fe
    ld [bc], a                                    ; $541a: $02
    cp b                                          ; $541b: $b8
    inc b                                         ; $541c: $04
    nop                                           ; $541d: $00
    ld [bc], a                                    ; $541e: $02
    add b                                         ; $541f: $80
    ld b, $00                                     ; $5420: $06 $00
    rst $38                                       ; $5422: $ff
    rlca                                          ; $5423: $07
    ld bc, $07f8                                  ; $5424: $01 $f8 $07
    push af                                       ; $5427: $f5
    inc b                                         ; $5428: $04
    di                                            ; $5429: $f3
    ld a, [$0c85]                                 ; $542a: $fa $85 $0c
    nop                                           ; $542d: $00
    ld [bc], a                                    ; $542e: $02
    nop                                           ; $542f: $00
    ld bc, $001b                                  ; $5430: $01 $1b $00
    rst $38                                       ; $5433: $ff
    dec c                                         ; $5434: $0d
    inc b                                         ; $5435: $04
    ld hl, sp+$07                                 ; $5436: $f8 $07
    push af                                       ; $5438: $f5
    inc b                                         ; $5439: $04
    add sp, -$06                                  ; $543a: $e8 $fa
    add sp, -$02                                  ; $543c: $e8 $fe
    ld hl, sp-$08                                 ; $543e: $f8 $f8
    ld hl, sp-$01                                 ; $5440: $f8 $ff
    ld [bc], a                                    ; $5442: $02
    inc e                                         ; $5443: $1c
    add d                                         ; $5444: $82
    cpl                                           ; $5445: $2f
    ccf                                           ; $5446: $3f
    ld [bc], a                                    ; $5447: $02
    rst $38                                       ; $5448: $ff
    add e                                         ; $5449: $83
    ld c, [hl]                                    ; $544a: $4e
    ld a, a                                       ; $544b: $7f
    rst $30                                       ; $544c: $f7
    ld [bc], a                                    ; $544d: $02
    rst $38                                       ; $544e: $ff
    add h                                         ; $544f: $84
    db $fc                                        ; $5450: $fc
    rst $38                                       ; $5451: $ff
    db $fc                                        ; $5452: $fc
    ld a, b                                       ; $5453: $78
    ld [bc], a                                    ; $5454: $02
    ld a, a                                       ; $5455: $7f
    adc a                                         ; $5456: $8f
    ld h, h                                       ; $5457: $64
    ccf                                           ; $5458: $3f
    jr nz, jr_0eb_547a                            ; $5459: $20 $1f

    inc e                                         ; $545b: $1c
    rst $38                                       ; $545c: $ff
    db $fc                                        ; $545d: $fc
    sub e                                         ; $545e: $93
    di                                            ; $545f: $f3
    db $ed                                        ; $5460: $ed
    db $fd                                        ; $5461: $fd
    ld e, [hl]                                    ; $5462: $5e
    ld a, [hl]                                    ; $5463: $7e
    sbc l                                         ; $5464: $9d
    rst $38                                       ; $5465: $ff
    ld [bc], a                                    ; $5466: $02
    inc b                                         ; $5467: $04
    ld [bc], a                                    ; $5468: $02
    rrca                                          ; $5469: $0f
    add c                                         ; $546a: $81
    ld a, [bc]                                    ; $546b: $0a
    inc bc                                        ; $546c: $03
    ld c, $84                                     ; $546d: $0e $84
    inc c                                         ; $546f: $0c
    inc b                                         ; $5470: $04
    ld c, $0a                                     ; $5471: $0e $0a
    ld b, $0c                                     ; $5473: $06 $0c
    add h                                         ; $5475: $84
    ld c, $0a                                     ; $5476: $0e $0a
    inc c                                         ; $5478: $0c
    inc b                                         ; $5479: $04

jr_0eb_547a:
    ld [bc], a                                    ; $547a: $02
    ld [$0002], sp                                ; $547b: $08 $02 $00
    ld b, $08                                     ; $547e: $06 $08
    add a                                         ; $5480: $87
    cpl                                           ; $5481: $2f
    ccf                                           ; $5482: $3f
    daa                                           ; $5483: $27
    ccf                                           ; $5484: $3f
    daa                                           ; $5485: $27
    ccf                                           ; $5486: $3f
    ld h, e                                       ; $5487: $63
    ld [bc], a                                    ; $5488: $02
    ld a, a                                       ; $5489: $7f
    add e                                         ; $548a: $83
    ld h, e                                       ; $548b: $63
    rst $38                                       ; $548c: $ff
    rst $30                                       ; $548d: $f7
    ld [bc], a                                    ; $548e: $02
    rst $38                                       ; $548f: $ff
    add [hl]                                      ; $5490: $86
    cp [hl]                                       ; $5491: $be
    rst $38                                       ; $5492: $ff
    sbc [hl]                                      ; $5493: $9e
    rst $38                                       ; $5494: $ff
    push af                                       ; $5495: $f5
    rst $38                                       ; $5496: $ff
    ld [bc], a                                    ; $5497: $02
    ccf                                           ; $5498: $3f
    ld [bc], a                                    ; $5499: $02
    ld e, $02                                     ; $549a: $1e $02
    ld c, $06                                     ; $549c: $0e $06
    nop                                           ; $549e: $00
    adc a                                         ; $549f: $8f
    ld d, b                                       ; $54a0: $50
    ld [hl], b                                    ; $54a1: $70
    ld e, b                                       ; $54a2: $58
    ld a, b                                       ; $54a3: $78
    ld e, h                                       ; $54a4: $5c
    ld a, h                                       ; $54a5: $7c
    ld e, h                                       ; $54a6: $5c
    ld a, h                                       ; $54a7: $7c
    jr z, jr_0eb_5522                             ; $54a8: $28 $78

    inc h                                         ; $54aa: $24
    ld a, h                                       ; $54ab: $7c
    ld a, $7e                                     ; $54ac: $3e $7e
    ld [hl], c                                    ; $54ae: $71
    inc bc                                        ; $54af: $03
    ld a, a                                       ; $54b0: $7f
    ld [bc], a                                    ; $54b1: $02
    ld b, b                                       ; $54b2: $40
    inc c                                         ; $54b3: $0c
    nop                                           ; $54b4: $00
    rst $38                                       ; $54b5: $ff
    rlca                                          ; $54b6: $07
    ld bc, $07f8                                  ; $54b7: $01 $f8 $07
    push af                                       ; $54ba: $f5
    inc b                                         ; $54bb: $04
    db $f4                                        ; $54bc: $f4
    ld a, [$0c85]                                 ; $54bd: $fa $85 $0c
    nop                                           ; $54c0: $00
    ld [bc], a                                    ; $54c1: $02
    nop                                           ; $54c2: $00
    ld bc, $001b                                  ; $54c3: $01 $1b $00
    rst $38                                       ; $54c6: $ff
    dec c                                         ; $54c7: $0d
    inc b                                         ; $54c8: $04
    ld hl, sp+$07                                 ; $54c9: $f8 $07
    push af                                       ; $54cb: $f5
    inc b                                         ; $54cc: $04
    jp hl                                         ; $54cd: $e9


    ld a, [$fee9]                                 ; $54ce: $fa $e9 $fe
    ld sp, hl                                     ; $54d1: $f9
    ld hl, sp-$07                                 ; $54d2: $f8 $f9
    db $fd                                        ; $54d4: $fd
    ld [bc], a                                    ; $54d5: $02
    jr @-$7c                                      ; $54d6: $18 $82

    cpl                                           ; $54d8: $2f
    ccf                                           ; $54d9: $3f
    ld [bc], a                                    ; $54da: $02
    rst $38                                       ; $54db: $ff
    sbc d                                         ; $54dc: $9a
    ld c, [hl]                                    ; $54dd: $4e
    ld a, a                                       ; $54de: $7f
    ld [hl], a                                    ; $54df: $77
    ld a, a                                       ; $54e0: $7f
    rst $38                                       ; $54e1: $ff
    db $fc                                        ; $54e2: $fc
    rst $38                                       ; $54e3: $ff
    db $fd                                        ; $54e4: $fd
    ld sp, hl                                     ; $54e5: $f9
    rst $38                                       ; $54e6: $ff
    ld a, a                                       ; $54e7: $7f
    ld h, l                                       ; $54e8: $65
    ccf                                           ; $54e9: $3f
    jr nz, jr_0eb_552b                            ; $54ea: $20 $3f

    inc a                                         ; $54ec: $3c
    db $d3                                        ; $54ed: $d3
    ldh a, [$ad]                                  ; $54ee: $f0 $ad
    db $fd                                        ; $54f0: $fd
    sbc $fe                                       ; $54f1: $de $fe
    sbc l                                         ; $54f3: $9d
    rst $38                                       ; $54f4: $ff
    cp [hl]                                       ; $54f5: $be
    rst $38                                       ; $54f6: $ff
    ld [bc], a                                    ; $54f7: $02
    ld [$0c02], sp                                ; $54f8: $08 $02 $0c
    add d                                         ; $54fb: $82
    dec bc                                        ; $54fc: $0b
    rrca                                          ; $54fd: $0f
    ld [bc], a                                    ; $54fe: $02
    ld c, $8e                                     ; $54ff: $0e $8e
    inc c                                         ; $5501: $0c
    inc b                                         ; $5502: $04
    ld c, $0a                                     ; $5503: $0e $0a
    inc c                                         ; $5505: $0c
    inc b                                         ; $5506: $04
    inc c                                         ; $5507: $0c
    inc b                                         ; $5508: $04
    ld c, $06                                     ; $5509: $0e $06
    ld c, $0a                                     ; $550b: $0e $0a
    inc c                                         ; $550d: $0c
    inc b                                         ; $550e: $04
    ld a, [bc]                                    ; $550f: $0a
    ld [$278a], sp                                ; $5510: $08 $8a $27
    ccf                                           ; $5513: $3f
    inc hl                                        ; $5514: $23
    ccf                                           ; $5515: $3f
    ld [hl], c                                    ; $5516: $71
    ld a, a                                       ; $5517: $7f
    rst $38                                       ; $5518: $ff
    pop af                                        ; $5519: $f1
    rst $38                                       ; $551a: $ff
    ei                                            ; $551b: $fb
    ld [bc], a                                    ; $551c: $02
    rst $38                                       ; $551d: $ff
    add [hl]                                      ; $551e: $86
    cp $ff                                        ; $551f: $fe $ff
    cp a                                          ; $5521: $bf

jr_0eb_5522:
    rst $38                                       ; $5522: $ff
    ld e, e                                       ; $5523: $5b
    ld a, a                                       ; $5524: $7f
    ld [bc], a                                    ; $5525: $02
    ccf                                           ; $5526: $3f
    ld [bc], a                                    ; $5527: $02
    inc bc                                        ; $5528: $03
    ld a, [bc]                                    ; $5529: $0a
    nop                                           ; $552a: $00

jr_0eb_552b:
    adc h                                         ; $552b: $8c
    inc d                                         ; $552c: $14
    inc e                                         ; $552d: $1c
    ld d, $1e                                     ; $552e: $16 $1e
    ld d, $1e                                     ; $5530: $16 $1e
    ld c, $1e                                     ; $5532: $0e $1e
    ld a, [bc]                                    ; $5534: $0a
    ld e, $0c                                     ; $5535: $1e $0c
    inc e                                         ; $5537: $1c
    ld [bc], a                                    ; $5538: $02
    ld e, $81                                     ; $5539: $1e $81
    inc bc                                        ; $553b: $03
    inc bc                                        ; $553c: $03
    rra                                           ; $553d: $1f
    ld [bc], a                                    ; $553e: $02
    db $10                                        ; $553f: $10
    inc c                                         ; $5540: $0c
    nop                                           ; $5541: $00
    rst $38                                       ; $5542: $ff
    rlca                                          ; $5543: $07
    ld bc, $07f8                                  ; $5544: $01 $f8 $07
    push af                                       ; $5547: $f5
    inc b                                         ; $5548: $04
    db $f4                                        ; $5549: $f4
    ld a, [$0c85]                                 ; $554a: $fa $85 $0c
    nop                                           ; $554d: $00
    ld [bc], a                                    ; $554e: $02
    nop                                           ; $554f: $00
    ld bc, $001b                                  ; $5550: $01 $1b $00
    rst $38                                       ; $5553: $ff
    dec c                                         ; $5554: $0d
    inc b                                         ; $5555: $04
    ld hl, sp+$07                                 ; $5556: $f8 $07
    push af                                       ; $5558: $f5
    inc b                                         ; $5559: $04
    rst $20                                       ; $555a: $e7
    ld a, [$fee7]                                 ; $555b: $fa $e7 $fe
    rst $30                                       ; $555e: $f7
    ld hl, sp-$09                                 ; $555f: $f8 $f7
    db $fd                                        ; $5561: $fd
    ld [bc], a                                    ; $5562: $02
    inc c                                         ; $5563: $0c
    add a                                         ; $5564: $87
    rla                                           ; $5565: $17
    rra                                           ; $5566: $1f
    ld [hl], a                                    ; $5567: $77
    ld a, a                                       ; $5568: $7f
    ld e, l                                       ; $5569: $5d
    ld a, a                                       ; $556a: $7f
    xor a                                         ; $556b: $af
    ld [bc], a                                    ; $556c: $02
    rst $38                                       ; $556d: $ff
    sub l                                         ; $556e: $95
    db $fc                                        ; $556f: $fc
    ld a, a                                       ; $5570: $7f
    ld a, c                                       ; $5571: $79
    ld sp, hl                                     ; $5572: $f9
    rst $38                                       ; $5573: $ff
    ld a, a                                       ; $5574: $7f
    ld l, c                                       ; $5575: $69
    ccf                                           ; $5576: $3f
    jr nz, jr_0eb_5598                            ; $5577: $20 $1f

    jr jr_0eb_55ba                                ; $5579: $18 $3f

    inc a                                         ; $557b: $3c
    ld d, a                                       ; $557c: $57
    ld [hl], a                                    ; $557d: $77
    xor c                                         ; $557e: $a9
    ld sp, hl                                     ; $557f: $f9
    xor [hl]                                      ; $5580: $ae
    cp $dd                                        ; $5581: $fe $dd
    rst $38                                       ; $5583: $ff
    ld [bc], a                                    ; $5584: $02
    inc b                                         ; $5585: $04
    ld [bc], a                                    ; $5586: $02
    inc c                                         ; $5587: $0c
    add d                                         ; $5588: $82
    inc bc                                        ; $5589: $03
    rrca                                          ; $558a: $0f
    ld [bc], a                                    ; $558b: $02
    ld c, $8e                                     ; $558c: $0e $8e
    inc c                                         ; $558e: $0c
    inc b                                         ; $558f: $04
    ld c, $0a                                     ; $5590: $0e $0a
    inc c                                         ; $5592: $0c
    inc b                                         ; $5593: $04
    inc c                                         ; $5594: $0c
    inc b                                         ; $5595: $04
    ld c, $06                                     ; $5596: $0e $06

jr_0eb_5598:
    ld c, $0a                                     ; $5598: $0e $0a
    inc c                                         ; $559a: $0c
    inc b                                         ; $559b: $04
    ld [bc], a                                    ; $559c: $02
    ld [$0004], sp                                ; $559d: $08 $04 $00
    inc b                                         ; $55a0: $04
    ld [$278c], sp                                ; $55a1: $08 $8c $27
    ccf                                           ; $55a4: $3f
    inc hl                                        ; $55a5: $23
    ccf                                           ; $55a6: $3f
    ld de, $181f                                  ; $55a7: $11 $1f $18
    rra                                           ; $55aa: $1f
    dec sp                                        ; $55ab: $3b
    inc a                                         ; $55ac: $3c
    ld a, a                                       ; $55ad: $7f
    ld a, c                                       ; $55ae: $79
    inc b                                         ; $55af: $04
    rst $38                                       ; $55b0: $ff
    add [hl]                                      ; $55b1: $86
    cp [hl]                                       ; $55b2: $be
    rst $38                                       ; $55b3: $ff
    ld c, a                                       ; $55b4: $4f
    ld a, a                                       ; $55b5: $7f
    ld a, $3f                                     ; $55b6: $3e $3f
    ld [bc], a                                    ; $55b8: $02
    inc bc                                        ; $55b9: $03

jr_0eb_55ba:
    ld [$9000], sp                                ; $55ba: $08 $00 $90
    inc c                                         ; $55bd: $0c
    inc e                                         ; $55be: $1c
    inc d                                         ; $55bf: $14
    inc e                                         ; $55c0: $1c
    inc d                                         ; $55c1: $14
    inc e                                         ; $55c2: $1c
    inc d                                         ; $55c3: $14
    inc e                                         ; $55c4: $1c
    ld d, $1e                                     ; $55c5: $16 $1e
    ld d, $1e                                     ; $55c7: $16 $1e
    ld c, $1e                                     ; $55c9: $0e $1e
    inc c                                         ; $55cb: $0c
    inc e                                         ; $55cc: $1c
    ld [bc], a                                    ; $55cd: $02
    ld e, $02                                     ; $55ce: $1e $02
    rra                                           ; $55d0: $1f
    add d                                         ; $55d1: $82
    ld c, $1e                                     ; $55d2: $0e $1e
    ld [bc], a                                    ; $55d4: $02
    inc e                                         ; $55d5: $1c
    ld [$ff00], sp                                ; $55d6: $08 $00 $ff
    rlca                                          ; $55d9: $07
    ld bc, $07f8                                  ; $55da: $01 $f8 $07
    push af                                       ; $55dd: $f5
    inc b                                         ; $55de: $04
    di                                            ; $55df: $f3
    ld a, [$0885]                                 ; $55e0: $fa $85 $08
    nop                                           ; $55e3: $00
    ld b, $00                                     ; $55e4: $06 $00
    ld bc, $001b                                  ; $55e6: $01 $1b $00
    rst $38                                       ; $55e9: $ff
    dec c                                         ; $55ea: $0d
    inc b                                         ; $55eb: $04
    ld hl, sp+$07                                 ; $55ec: $f8 $07
    push af                                       ; $55ee: $f5
    inc b                                         ; $55ef: $04
    rst $20                                       ; $55f0: $e7
    ld a, [$fee7]                                 ; $55f1: $fa $e7 $fe
    rst $30                                       ; $55f4: $f7
    ld hl, sp-$09                                 ; $55f5: $f8 $f7
    rst $38                                       ; $55f7: $ff
    ld [bc], a                                    ; $55f8: $02
    inc c                                         ; $55f9: $0c
    sbc [hl]                                      ; $55fa: $9e
    rla                                           ; $55fb: $17
    rra                                           ; $55fc: $1f
    halt                                          ; $55fd: $76
    ld a, a                                       ; $55fe: $7f
    ld e, e                                       ; $55ff: $5b
    ld a, a                                       ; $5600: $7f
    sbc a                                         ; $5601: $9f
    cp $ff                                        ; $5602: $fe $ff
    ld sp, hl                                     ; $5604: $f9
    ld a, a                                       ; $5605: $7f
    ld [hl], d                                    ; $5606: $72
    di                                            ; $5607: $f3
    cp $7f                                        ; $5608: $fe $7f
    ld l, d                                       ; $560a: $6a
    ccf                                           ; $560b: $3f
    ld hl, $181f                                  ; $560c: $21 $1f $18
    ccf                                           ; $560f: $3f
    inc a                                         ; $5610: $3c
    ld d, e                                       ; $5611: $53
    ld [hl], e                                    ; $5612: $73
    xor l                                         ; $5613: $ad
    db $fd                                        ; $5614: $fd
    xor $fe                                       ; $5615: $ee $fe
    ld l, l                                       ; $5617: $6d
    ld a, a                                       ; $5618: $7f
    ld [bc], a                                    ; $5619: $02
    inc b                                         ; $561a: $04
    ld [bc], a                                    ; $561b: $02
    inc c                                         ; $561c: $0c
    add d                                         ; $561d: $82
    dec bc                                        ; $561e: $0b
    rrca                                          ; $561f: $0f
    ld [bc], a                                    ; $5620: $02
    ld c, $84                                     ; $5621: $0e $84
    inc c                                         ; $5623: $0c
    inc b                                         ; $5624: $04
    ld c, $0a                                     ; $5625: $0e $0a
    ld [bc], a                                    ; $5627: $02
    inc c                                         ; $5628: $0c
    dec b                                         ; $5629: $05
    ld c, $81                                     ; $562a: $0e $81
    ld [bc], a                                    ; $562c: $02
    ld [bc], a                                    ; $562d: $02
    inc c                                         ; $562e: $0c
    ld [bc], a                                    ; $562f: $02
    ld [$0004], sp                                ; $5630: $08 $04 $00
    inc b                                         ; $5633: $04
    ld [$1989], sp                                ; $5634: $08 $89 $19
    rra                                           ; $5637: $1f
    ld de, $181f                                  ; $5638: $11 $1f $18
    rra                                           ; $563b: $1f
    inc d                                         ; $563c: $14
    rra                                           ; $563d: $1f
    ld l, $02                                     ; $563e: $2e $02
    ccf                                           ; $5640: $3f
    add c                                         ; $5641: $81
    ld a, $04                                     ; $5642: $3e $04
    ld a, a                                       ; $5644: $7f
    ld [bc], a                                    ; $5645: $02
    rst $38                                       ; $5646: $ff
    adc b                                         ; $5647: $88
    cp [hl]                                       ; $5648: $be
    rst $38                                       ; $5649: $ff
    adc [hl]                                      ; $564a: $8e
    rst $38                                       ; $564b: $ff
    ld a, l                                       ; $564c: $7d
    ld a, a                                       ; $564d: $7f
    ld c, $0f                                     ; $564e: $0e $0f
    ld [bc], a                                    ; $5650: $02
    inc bc                                        ; $5651: $03
    inc b                                         ; $5652: $04
    nop                                           ; $5653: $00
    add c                                         ; $5654: $81
    ld d, b                                       ; $5655: $50
    inc bc                                        ; $5656: $03
    ld [hl], b                                    ; $5657: $70
    adc [hl]                                      ; $5658: $8e
    ld d, b                                       ; $5659: $50
    ld [hl], b                                    ; $565a: $70
    ld e, b                                       ; $565b: $58
    jr c, jr_0eb_56d6                             ; $565c: $38 $78

    jr jr_0eb_56d8                                ; $565e: $18 $78

    jr c, jr_0eb_56c0                             ; $5660: $38 $5e

    ld a, [hl]                                    ; $5662: $7e
    ccf                                           ; $5663: $3f
    ld a, a                                       ; $5664: $7f
    ld a, $7e                                     ; $5665: $3e $7e
    ld [bc], a                                    ; $5667: $02
    ld e, b                                       ; $5668: $58
    ld [bc], a                                    ; $5669: $02
    ld b, b                                       ; $566a: $40
    ld [bc], a                                    ; $566b: $02
    nop                                           ; $566c: $00
    ld [bc], a                                    ; $566d: $02
    ld b, b                                       ; $566e: $40
    ld b, $00                                     ; $566f: $06 $00
    rst $38                                       ; $5671: $ff
    rlca                                          ; $5672: $07
    ld bc, $07f8                                  ; $5673: $01 $f8 $07
    push af                                       ; $5676: $f5
    inc b                                         ; $5677: $04
    di                                            ; $5678: $f3
    ld a, [$0c85]                                 ; $5679: $fa $85 $0c
    nop                                           ; $567c: $00
    ld [bc], a                                    ; $567d: $02
    nop                                           ; $567e: $00
    ld bc, $001b                                  ; $567f: $01 $1b $00
    rst $38                                       ; $5682: $ff
    dec c                                         ; $5683: $0d
    inc b                                         ; $5684: $04
    ld hl, sp+$07                                 ; $5685: $f8 $07
    push af                                       ; $5687: $f5
    inc b                                         ; $5688: $04
    add sp, -$06                                  ; $5689: $e8 $fa
    add sp, -$02                                  ; $568b: $e8 $fe
    ld hl, sp-$08                                 ; $568d: $f8 $f8
    ld hl, sp-$02                                 ; $568f: $f8 $fe
    ld [bc], a                                    ; $5691: $02
    inc c                                         ; $5692: $0c
    sbc [hl]                                      ; $5693: $9e
    scf                                           ; $5694: $37
    ccf                                           ; $5695: $3f
    halt                                          ; $5696: $76
    ld a, a                                       ; $5697: $7f
    db $db                                        ; $5698: $db
    rst $38                                       ; $5699: $ff
    sbc a                                         ; $569a: $9f
    cp $ff                                        ; $569b: $fe $ff
    ld sp, hl                                     ; $569d: $f9
    ld a, a                                       ; $569e: $7f
    ld [hl], d                                    ; $569f: $72
    ld [hl], e                                    ; $56a0: $73
    ld a, [hl]                                    ; $56a1: $7e
    ld a, a                                       ; $56a2: $7f
    ld l, d                                       ; $56a3: $6a
    ccf                                           ; $56a4: $3f
    ld hl, $181f                                  ; $56a5: $21 $1f $18
    rst $38                                       ; $56a8: $ff
    db $fc                                        ; $56a9: $fc
    sub e                                         ; $56aa: $93
    di                                            ; $56ab: $f3
    db $ed                                        ; $56ac: $ed
    db $fd                                        ; $56ad: $fd
    ld l, [hl]                                    ; $56ae: $6e
    ld a, [hl]                                    ; $56af: $7e
    ld h, l                                       ; $56b0: $65
    ld a, a                                       ; $56b1: $7f
    ld [bc], a                                    ; $56b2: $02
    inc c                                         ; $56b3: $0c
    add d                                         ; $56b4: $82
    dec bc                                        ; $56b5: $0b
    rrca                                          ; $56b6: $0f
    inc b                                         ; $56b7: $04
    ld c, $84                                     ; $56b8: $0e $84
    inc c                                         ; $56ba: $0c
    inc b                                         ; $56bb: $04
    ld c, $0a                                     ; $56bc: $0e $0a
    ld [bc], a                                    ; $56be: $02
    inc c                                         ; $56bf: $0c

jr_0eb_56c0:
    dec b                                         ; $56c0: $05
    ld c, $81                                     ; $56c1: $0e $81
    ld [bc], a                                    ; $56c3: $02
    ld [bc], a                                    ; $56c4: $02
    inc c                                         ; $56c5: $0c
    ld [bc], a                                    ; $56c6: $02
    ld [$0002], sp                                ; $56c7: $08 $02 $00
    ld b, $08                                     ; $56ca: $06 $08
    adc d                                         ; $56cc: $8a
    add hl, de                                    ; $56cd: $19
    rra                                           ; $56ce: $1f
    inc [hl]                                      ; $56cf: $34
    ccf                                           ; $56d0: $3f
    inc l                                         ; $56d1: $2c
    ccf                                           ; $56d2: $3f
    ld d, [hl]                                    ; $56d3: $56
    ld a, a                                       ; $56d4: $7f
    ld l, a                                       ; $56d5: $6f

jr_0eb_56d6:
    ld a, a                                       ; $56d6: $7f
    inc b                                         ; $56d7: $04

jr_0eb_56d8:
    rst $38                                       ; $56d8: $ff
    add [hl]                                      ; $56d9: $86
    cp a                                          ; $56da: $bf
    rst $38                                       ; $56db: $ff
    cp [hl]                                       ; $56dc: $be
    rst $38                                       ; $56dd: $ff
    pop de                                        ; $56de: $d1
    rst $38                                       ; $56df: $ff
    ld [bc], a                                    ; $56e0: $02
    ccf                                           ; $56e1: $3f
    add d                                         ; $56e2: $82
    ld a, [de]                                    ; $56e3: $1a
    ld e, $02                                     ; $56e4: $1e $02
    ld c, $06                                     ; $56e6: $0e $06
    nop                                           ; $56e8: $00
    adc a                                         ; $56e9: $8f
    jr z, jr_0eb_5724                             ; $56ea: $28 $38

    jr z, jr_0eb_5726                             ; $56ec: $28 $38

    jr jr_0eb_5728                                ; $56ee: $18 $38

    inc c                                         ; $56f0: $0c
    inc [hl]                                      ; $56f1: $34
    inc e                                         ; $56f2: $1c
    inc h                                         ; $56f3: $24
    inc a                                         ; $56f4: $3c
    inc l                                         ; $56f5: $2c
    inc e                                         ; $56f6: $1c
    inc a                                         ; $56f7: $3c
    rra                                           ; $56f8: $1f
    inc bc                                        ; $56f9: $03
    ccf                                           ; $56fa: $3f
    ld [bc], a                                    ; $56fb: $02
    jr nz, jr_0eb_570a                            ; $56fc: $20 $0c

    nop                                           ; $56fe: $00
    rst $38                                       ; $56ff: $ff
    rlca                                          ; $5700: $07
    ld bc, $07f8                                  ; $5701: $01 $f8 $07
    push af                                       ; $5704: $f5
    inc b                                         ; $5705: $04
    db $f4                                        ; $5706: $f4
    ld a, [$0c85]                                 ; $5707: $fa $85 $0c

jr_0eb_570a:
    nop                                           ; $570a: $00
    ld [bc], a                                    ; $570b: $02
    nop                                           ; $570c: $00
    ld bc, $001b                                  ; $570d: $01 $1b $00
    rst $38                                       ; $5710: $ff
    dec c                                         ; $5711: $0d
    inc b                                         ; $5712: $04
    ld hl, sp+$07                                 ; $5713: $f8 $07
    push af                                       ; $5715: $f5
    inc b                                         ; $5716: $04
    jp hl                                         ; $5717: $e9


    ld a, [$fee9]                                 ; $5718: $fa $e9 $fe
    ld sp, hl                                     ; $571b: $f9
    ld hl, sp-$07                                 ; $571c: $f8 $f9
    db $fc                                        ; $571e: $fc
    ld [bc], a                                    ; $571f: $02
    inc c                                         ; $5720: $0c
    sbc [hl]                                      ; $5721: $9e
    rla                                           ; $5722: $17
    rra                                           ; $5723: $1f

jr_0eb_5724:
    halt                                          ; $5724: $76
    ld a, a                                       ; $5725: $7f

jr_0eb_5726:
    ld e, e                                       ; $5726: $5b
    ld a, a                                       ; $5727: $7f

jr_0eb_5728:
    sbc a                                         ; $5728: $9f
    cp $ff                                        ; $5729: $fe $ff
    ld sp, hl                                     ; $572b: $f9
    ld a, a                                       ; $572c: $7f
    ld [hl], c                                    ; $572d: $71
    ld sp, hl                                     ; $572e: $f9
    rst $38                                       ; $572f: $ff
    ld a, a                                       ; $5730: $7f
    ld l, c                                       ; $5731: $69
    ccf                                           ; $5732: $3f
    ld hl, $383f                                  ; $5733: $21 $3f $38
    db $d3                                        ; $5736: $d3
    ldh a, [$9d]                                  ; $5737: $f0 $9d
    db $fd                                        ; $5739: $fd
    xor $fe                                       ; $573a: $ee $fe
    ld h, l                                       ; $573c: $65
    ld a, a                                       ; $573d: $7f
    ld h, [hl]                                    ; $573e: $66
    ld a, a                                       ; $573f: $7f
    ld [bc], a                                    ; $5740: $02
    inc b                                         ; $5741: $04
    ld [bc], a                                    ; $5742: $02
    inc c                                         ; $5743: $0c
    add d                                         ; $5744: $82
    dec bc                                        ; $5745: $0b
    rrca                                          ; $5746: $0f
    ld [bc], a                                    ; $5747: $02
    ld c, $8e                                     ; $5748: $0e $8e
    inc c                                         ; $574a: $0c
    inc b                                         ; $574b: $04
    ld c, $0a                                     ; $574c: $0e $0a
    inc c                                         ; $574e: $0c
    inc b                                         ; $574f: $04
    inc c                                         ; $5750: $0c
    inc b                                         ; $5751: $04
    ld c, $06                                     ; $5752: $0e $06
    ld c, $0a                                     ; $5754: $0e $0a
    inc c                                         ; $5756: $0c
    inc b                                         ; $5757: $04
    ld a, [bc]                                    ; $5758: $0a
    ld [$2887], sp                                ; $5759: $08 $87 $28
    ccf                                           ; $575c: $3f
    inc [hl]                                      ; $575d: $34
    ccf                                           ; $575e: $3f
    ld l, h                                       ; $575f: $6c
    ld a, a                                       ; $5760: $7f
    cp $02                                        ; $5761: $fe $02
    rst $38                                       ; $5763: $ff
    adc c                                         ; $5764: $89
    cp $fd                                        ; $5765: $fe $fd
    rst $38                                       ; $5767: $ff
    cp l                                          ; $5768: $bd
    rst $38                                       ; $5769: $ff
    sbc e                                         ; $576a: $9b
    rst $38                                       ; $576b: $ff
    ld e, [hl]                                    ; $576c: $5e
    ld a, a                                       ; $576d: $7f
    ld [bc], a                                    ; $576e: $02
    ccf                                           ; $576f: $3f
    ld [bc], a                                    ; $5770: $02
    ld bc, $000a                                  ; $5771: $01 $0a $00
    add l                                         ; $5774: $85
    ld a, [bc]                                    ; $5775: $0a
    ld c, $06                                     ; $5776: $0e $06
    ld c, $06                                     ; $5778: $0e $06
    ld [bc], a                                    ; $577a: $02
    ld c, $87                                     ; $577b: $0e $87
    ld [bc], a                                    ; $577d: $02
    rrca                                          ; $577e: $0f
    rlca                                          ; $577f: $07
    add hl, bc                                    ; $5780: $09
    rrca                                          ; $5781: $0f
    ld [bc], a                                    ; $5782: $02
    ld c, $04                                     ; $5783: $0e $04
    rrca                                          ; $5785: $0f
    add d                                         ; $5786: $82
    inc b                                         ; $5787: $04
    inc c                                         ; $5788: $0c
    ld [bc], a                                    ; $5789: $02
    ld [$000a], sp                                ; $578a: $08 $0a $00
    rst $38                                       ; $578d: $ff
    rlca                                          ; $578e: $07
    ld bc, $07f8                                  ; $578f: $01 $f8 $07
    push af                                       ; $5792: $f5
    inc b                                         ; $5793: $04
    db $f4                                        ; $5794: $f4
    ld a, [$0c85]                                 ; $5795: $fa $85 $0c
    nop                                           ; $5798: $00
    ld [bc], a                                    ; $5799: $02
    nop                                           ; $579a: $00
    ld bc, $001b                                  ; $579b: $01 $1b $00
    rst $38                                       ; $579e: $ff
    add hl, de                                    ; $579f: $19
    ld a, [bc]                                    ; $57a0: $0a
    ld sp, hl                                     ; $57a1: $f9
    inc c                                         ; $57a2: $0c
    nop                                           ; $57a3: $00
    inc de                                        ; $57a4: $13
    ld bc, $00f0                                  ; $57a5: $01 $f0 $00

jr_0eb_57a8:
    ld hl, sp+$00                                 ; $57a8: $f8 $00
    nop                                           ; $57aa: $00
    nop                                           ; $57ab: $00
    ld [$0f01], sp                                ; $57ac: $08 $01 $0f
    db $10                                        ; $57af: $10
    db $f4                                        ; $57b0: $f4
    db $10                                        ; $57b1: $10
    ld sp, hl                                     ; $57b2: $f9
    db $10                                        ; $57b3: $10
    dec b                                         ; $57b4: $05
    db $10                                        ; $57b5: $10
    inc c                                         ; $57b6: $0c
    jr nz, @+$01                                  ; $57b7: $20 $ff

    ld [bc], a                                    ; $57b9: $02
    rrca                                          ; $57ba: $0f
    ld [bc], a                                    ; $57bb: $02
    cpl                                           ; $57bc: $2f
    ld [bc], a                                    ; $57bd: $02
    ld e, a                                       ; $57be: $5f
    ld [bc], a                                    ; $57bf: $02
    cpl                                           ; $57c0: $2f
    ld [bc], a                                    ; $57c1: $02
    ld d, a                                       ; $57c2: $57
    sub [hl]                                      ; $57c3: $96
    rrca                                          ; $57c4: $0f
    xor a                                         ; $57c5: $af
    rla                                           ; $57c6: $17
    ld d, a                                       ; $57c7: $57
    daa                                           ; $57c8: $27
    cpl                                           ; $57c9: $2f
    dec b                                         ; $57ca: $05
    ld d, a                                       ; $57cb: $57
    ld a, [bc]                                    ; $57cc: $0a
    dec hl                                        ; $57cd: $2b
    nop                                           ; $57ce: $00
    ld d, l                                       ; $57cf: $55
    ld [bc], a                                    ; $57d0: $02
    add hl, hl                                    ; $57d1: $29
    inc b                                         ; $57d2: $04
    ld de, $0b20                                  ; $57d3: $11 $20 $0b
    ld bc, $0814                                  ; $57d6: $01 $14 $08
    ld [bc], a                                    ; $57d9: $02
    ld [bc], a                                    ; $57da: $02
    ld a, a                                       ; $57db: $7f
    ld a, [bc]                                    ; $57dc: $0a
    rst $38                                       ; $57dd: $ff
    ld [bc], a                                    ; $57de: $02
    push af                                       ; $57df: $f5
    ld [bc], a                                    ; $57e0: $02
    ld [$d102], a                                 ; $57e1: $ea $02 $d1
    add d                                         ; $57e4: $82
    ld h, b                                       ; $57e5: $60
    ldh [rSC], a                                  ; $57e6: $e0 $02
    pop de                                        ; $57e8: $d1
    adc d                                         ; $57e9: $8a
    ld h, b                                       ; $57ea: $60
    ldh [$80], a                                  ; $57eb: $e0 $80
    ld d, c                                       ; $57ed: $51
    ld b, b                                       ; $57ee: $40
    xor d                                         ; $57ef: $aa
    ret nz                                        ; $57f0: $c0

    dec [hl]                                      ; $57f1: $35
    rla                                           ; $57f2: $17
    add sp, $10                                   ; $57f3: $e8 $10
    add a                                         ; $57f5: $87
    ld [bc], a                                    ; $57f6: $02
    rlca                                          ; $57f7: $07
    ld [bc], a                                    ; $57f8: $02
    add a                                         ; $57f9: $87
    adc h                                         ; $57fa: $8c
    ld b, $07                                     ; $57fb: $06 $07
    inc bc                                        ; $57fd: $03
    add a                                         ; $57fe: $87
    dec b                                         ; $57ff: $05
    ld [bc], a                                    ; $5800: $02
    add h                                         ; $5801: $84
    inc bc                                        ; $5802: $03
    add e                                         ; $5803: $83
    inc b                                         ; $5804: $04
    add [hl]                                      ; $5805: $86
    ld bc, $f802                                  ; $5806: $01 $02 $f8
    ld [bc], a                                    ; $5809: $02
    db $fc                                        ; $580a: $fc
    ld [bc], a                                    ; $580b: $02
    ld a, [$f502]                                 ; $580c: $fa $02 $f5
    ld [bc], a                                    ; $580f: $02
    ld a, [$f502]                                 ; $5810: $fa $02 $f5
    ld [bc], a                                    ; $5813: $02
    ld [$f502], a                                 ; $5814: $ea $02 $f5
    ld [bc], a                                    ; $5817: $02
    ld [$d58e], a                                 ; $5818: $ea $8e $d5
    push af                                       ; $581b: $f5
    ld [c], a                                     ; $581c: $e2
    ld [$d550], a                                 ; $581d: $ea $50 $d5
    jr nz, @-$34                                  ; $5820: $20 $ca

    add b                                         ; $5822: $80
    ld d, l                                       ; $5823: $55
    jr z, jr_0eb_57a8                             ; $5824: $28 $82

    add h                                         ; $5826: $84
    ld d, b                                       ; $5827: $50
    ld [bc], a                                    ; $5828: $02
    jr nz, jr_0eb_582d                            ; $5829: $20 $02

    inc d                                         ; $582b: $14
    ld [bc], a                                    ; $582c: $02

jr_0eb_582d:
    ld a, [hl+]                                   ; $582d: $2a
    ld [bc], a                                    ; $582e: $02
    inc d                                         ; $582f: $14
    ld [bc], a                                    ; $5830: $02
    dec hl                                        ; $5831: $2b
    xor c                                         ; $5832: $a9
    ld d, $17                                     ; $5833: $16 $17
    inc l                                         ; $5835: $2c
    cpl                                           ; $5836: $2f
    ld b, $17                                     ; $5837: $06 $17
    jr nz, jr_0eb_5869                            ; $5839: $20 $2e

    db $10                                        ; $583b: $10
    ld d, $04                                     ; $583c: $16 $04
    ld a, [bc]                                    ; $583e: $0a
    nop                                           ; $583f: $00
    ld d, $0c                                     ; $5840: $16 $0c
    ld [bc], a                                    ; $5842: $02
    inc b                                         ; $5843: $04
    stop                                          ; $5844: $10 $00
    inc c                                         ; $5846: $0c
    nop                                           ; $5847: $00
    jr @+$03                                      ; $5848: $18 $01

    ld c, $02                                     ; $584a: $0e $02
    ld d, l                                       ; $584c: $55
    inc h                                         ; $584d: $24
    adc e                                         ; $584e: $8b
    ld d, $41                                     ; $584f: $16 $41
    ld [hl+], a                                   ; $5851: $22
    add hl, bc                                    ; $5852: $09
    ld bc, $0014                                  ; $5853: $01 $14 $00
    dec bc                                        ; $5856: $0b
    nop                                           ; $5857: $00
    dec b                                         ; $5858: $05
    nop                                           ; $5859: $00
    ld [bc], a                                    ; $585a: $02
    ld bc, $000d                                  ; $585b: $01 $0d $00
    ret nc                                        ; $585e: $d0

    rla                                           ; $585f: $17
    ld [$0817], sp                                ; $5860: $08 $17 $08
    dec c                                         ; $5863: $0d
    ld [de], a                                    ; $5864: $12
    rra                                           ; $5865: $1f
    nop                                           ; $5866: $00
    ld b, $19                                     ; $5867: $06 $19

jr_0eb_5869:
    ld [de], a                                    ; $5869: $12
    dec c                                         ; $586a: $0d
    rrca                                          ; $586b: $0f
    db $10                                        ; $586c: $10
    ld e, $01                                     ; $586d: $1e $01
    ld d, $09                                     ; $586f: $16 $09
    inc bc                                        ; $5871: $03
    inc c                                         ; $5872: $0c
    ld [bc], a                                    ; $5873: $02
    dec d                                         ; $5874: $15
    dec b                                         ; $5875: $05
    ld a, [bc]                                    ; $5876: $0a
    ld bc, $0016                                  ; $5877: $01 $16 $00
    dec bc                                        ; $587a: $0b
    nop                                           ; $587b: $00
    dec b                                         ; $587c: $05
    nop                                           ; $587d: $00
    ld [bc], a                                    ; $587e: $02
    ld b, b                                       ; $587f: $40
    or l                                          ; $5880: $b5
    ldh [$0a], a                                  ; $5881: $e0 $0a
    ld b, h                                       ; $5883: $44
    or c                                          ; $5884: $b1
    ld [$c000], a                                 ; $5885: $ea $00 $c0
    dec d                                         ; $5888: $15
    ret z                                         ; $5889: $c8

    ld [hl+], a                                   ; $588a: $22
    add b                                         ; $588b: $80
    ld d, h                                       ; $588c: $54
    nop                                           ; $588d: $00
    xor b                                         ; $588e: $a8
    ret nz                                        ; $588f: $c0

    ld de, $2280                                  ; $5890: $11 $80 $22
    nop                                           ; $5893: $00
    ld b, h                                       ; $5894: $44
    nop                                           ; $5895: $00
    adc d                                         ; $5896: $8a
    db $10                                        ; $5897: $10
    ld b, h                                       ; $5898: $44
    nop                                           ; $5899: $00
    adc b                                         ; $589a: $88
    nop                                           ; $589b: $00
    stop                                          ; $589c: $10 $00
    and b                                         ; $589e: $a0
    nop                                           ; $589f: $00
    jr nz, jr_0eb_58a2                            ; $58a0: $20 $00

jr_0eb_58a2:
    ld b, l                                       ; $58a2: $45
    nop                                           ; $58a3: $00
    ld a, [bc]                                    ; $58a4: $0a
    nop                                           ; $58a5: $00
    ld b, h                                       ; $58a6: $44
    nop                                           ; $58a7: $00
    ld [$1000], sp                                ; $58a8: $08 $00 $10
    nop                                           ; $58ab: $00
    jr nz, jr_0eb_58ae                            ; $58ac: $20 $00

jr_0eb_58ae:
    ld b, b                                       ; $58ae: $40
    ld de, $8300                                  ; $58af: $11 $00 $83
    ld b, c                                       ; $58b2: $41
    nop                                           ; $58b3: $00
    add d                                         ; $58b4: $82
    inc e                                         ; $58b5: $1c
    nop                                           ; $58b6: $00
    rst $38                                       ; $58b7: $ff
    dec de                                        ; $58b8: $1b
    dec bc                                        ; $58b9: $0b
    ld sp, hl                                     ; $58ba: $f9
    inc c                                         ; $58bb: $0c
    nop                                           ; $58bc: $00
    inc de                                        ; $58bd: $13
    ld [bc], a                                    ; $58be: $02
    ldh a, [rSB]                                  ; $58bf: $f0 $01
    ld hl, sp+$01                                 ; $58c1: $f8 $01
    nop                                           ; $58c3: $00
    ld bc, $0308                                  ; $58c4: $01 $08 $03
    rrca                                          ; $58c7: $0f
    ld de, $11f4                                  ; $58c8: $11 $f4 $11
    ld sp, hl                                     ; $58cb: $f9
    ld de, $1105                                  ; $58cc: $11 $05 $11
    ld a, [bc]                                    ; $58cf: $0a
    ld hl, $21ff                                  ; $58d0: $21 $ff $21
    nop                                           ; $58d3: $00
    ld [bc], a                                    ; $58d4: $02
    rrca                                          ; $58d5: $0f
    ld [bc], a                                    ; $58d6: $02
    ld e, a                                       ; $58d7: $5f
    ld [bc], a                                    ; $58d8: $02
    cpl                                           ; $58d9: $2f
    ld [bc], a                                    ; $58da: $02
    ld d, a                                       ; $58db: $57
    ld [bc], a                                    ; $58dc: $02
    xor a                                         ; $58dd: $af
    ld [bc], a                                    ; $58de: $02
    ld d, a                                       ; $58df: $57
    ld [bc], a                                    ; $58e0: $02
    cpl                                           ; $58e1: $2f
    sub d                                         ; $58e2: $92
    rla                                           ; $58e3: $17
    ld d, a                                       ; $58e4: $57
    ld [hl+], a                                   ; $58e5: $22
    dec hl                                        ; $58e6: $2b
    dec d                                         ; $58e7: $15
    ld d, l                                       ; $58e8: $55
    nop                                           ; $58e9: $00
    dec hl                                        ; $58ea: $2b
    nop                                           ; $58eb: $00
    dec d                                         ; $58ec: $15
    ld bc, $012a                                  ; $58ed: $01 $2a $01
    inc d                                         ; $58f0: $14
    ld [bc], a                                    ; $58f1: $02
    ld [$0500], sp                                ; $58f2: $08 $00 $05
    ld [bc], a                                    ; $58f5: $02
    ld a, a                                       ; $58f6: $7f
    ld [$02ff], sp                                ; $58f7: $08 $ff $02
    push af                                       ; $58fa: $f5
    ld [bc], a                                    ; $58fb: $02
    ld [$d102], a                                 ; $58fc: $ea $02 $d1
    ld [bc], a                                    ; $58ff: $02
    ldh [rSC], a                                  ; $5900: $e0 $02
    pop de                                        ; $5902: $d1
    adc h                                         ; $5903: $8c
    and b                                         ; $5904: $a0
    ldh [$c1], a                                  ; $5905: $e0 $c1
    ld d, c                                       ; $5907: $51
    nop                                           ; $5908: $00
    ld [$6590], a                                 ; $5909: $ea $90 $65
    ei                                            ; $590c: $fb
    inc b                                         ; $590d: $04
    db $d3                                        ; $590e: $d3
    inc l                                         ; $590f: $2c
    ld c, $87                                     ; $5910: $0e $87
    ld [bc], a                                    ; $5912: $02
    rlca                                          ; $5913: $07
    ld [bc], a                                    ; $5914: $02
    add a                                         ; $5915: $87
    ld [bc], a                                    ; $5916: $02
    rlca                                          ; $5917: $07
    ld [bc], a                                    ; $5918: $02
    add a                                         ; $5919: $87
    add e                                         ; $591a: $83
    dec b                                         ; $591b: $05
    rlca                                          ; $591c: $07
    ld bc, $8602                                  ; $591d: $01 $02 $86
    add l                                         ; $5920: $85
    ld bc, $0186                                  ; $5921: $01 $86 $01
    rlca                                          ; $5924: $07
    add b                                         ; $5925: $80
    ld [bc], a                                    ; $5926: $02
    ld hl, sp+$02                                 ; $5927: $f8 $02
    ld a, [$f502]                                 ; $5929: $fa $02 $f5
    ld [bc], a                                    ; $592c: $02
    ld a, [$f502]                                 ; $592d: $fa $02 $f5
    ld [bc], a                                    ; $5930: $02
    ld [$f502], a                                 ; $5931: $ea $02 $f5
    ld [bc], a                                    ; $5934: $02
    ld [$f502], a                                 ; $5935: $ea $02 $f5
    ld [bc], a                                    ; $5938: $02
    ld [$918c], a                                 ; $5939: $ea $8c $91
    push de                                       ; $593c: $d5
    ld h, b                                       ; $593d: $60
    ld [$d500], a                                 ; $593e: $ea $00 $d5
    adc b                                         ; $5941: $88
    ld [hl+], a                                   ; $5942: $22
    inc d                                         ; $5943: $14
    ret nz                                        ; $5944: $c0

    ld [$02a2], sp                                ; $5945: $08 $a2 $02
    jr z, jr_0eb_594c                             ; $5948: $28 $02

    inc d                                         ; $594a: $14
    ld [bc], a                                    ; $594b: $02

jr_0eb_594c:
    ld a, [hl+]                                   ; $594c: $2a
    ld [bc], a                                    ; $594d: $02
    rla                                           ; $594e: $17
    xor d                                         ; $594f: $aa
    ld l, $2f                                     ; $5950: $2e $2f
    ld d, $17                                     ; $5952: $16 $17
    ld a, [hl+]                                   ; $5954: $2a
    ld l, $12                                     ; $5955: $2e $12
    inc d                                         ; $5957: $14
    inc b                                         ; $5958: $04
    ld a, [bc]                                    ; $5959: $0a
    nop                                           ; $595a: $00
    ld d, $08                                     ; $595b: $16 $08
    ld b, $00                                     ; $595d: $06 $00
    inc d                                         ; $595f: $14
    ld [$0004], sp                                ; $5960: $08 $04 $00
    jr jr_0eb_5965                                ; $5963: $18 $00

jr_0eb_5965:
    jr z, jr_0eb_59a7                             ; $5965: $28 $40

    db $10                                        ; $5967: $10
    ld bc, $0506                                  ; $5968: $01 $06 $05
    xor d                                         ; $596b: $aa
    rla                                           ; $596c: $17
    ld b, b                                       ; $596d: $40
    nop                                           ; $596e: $00
    dec hl                                        ; $596f: $2b
    ld bc, $0014                                  ; $5970: $01 $14 $00
    dec bc                                        ; $5973: $0b
    nop                                           ; $5974: $00
    dec b                                         ; $5975: $05
    nop                                           ; $5976: $00
    ld [bc], a                                    ; $5977: $02
    nop                                           ; $5978: $00
    ld bc, $000e                                  ; $5979: $01 $0e $00
    cp a                                          ; $597c: $bf
    dec de                                        ; $597d: $1b
    inc b                                         ; $597e: $04
    rra                                           ; $597f: $1f
    nop                                           ; $5980: $00
    dec b                                         ; $5981: $05
    ld a, [de]                                    ; $5982: $1a
    dec bc                                        ; $5983: $0b
    inc d                                         ; $5984: $14
    ld c, $11                                     ; $5985: $0e $11
    inc de                                        ; $5987: $13
    inc c                                         ; $5988: $0c
    dec c                                         ; $5989: $0d
    ld [de], a                                    ; $598a: $12
    inc bc                                        ; $598b: $03
    inc e                                         ; $598c: $1c
    inc c                                         ; $598d: $0c
    inc bc                                        ; $598e: $03
    rlca                                          ; $598f: $07
    db $10                                        ; $5990: $10
    ld bc, $050e                                  ; $5991: $01 $0e $05
    ld [de], a                                    ; $5994: $12
    ld [bc], a                                    ; $5995: $02
    add hl, bc                                    ; $5996: $09
    nop                                           ; $5997: $00
    dec b                                         ; $5998: $05
    nop                                           ; $5999: $00
    ld [bc], a                                    ; $599a: $02
    ld bc, $c800                                  ; $599b: $01 $00 $c8
    ld [hl+], a                                   ; $599e: $22
    or b                                          ; $599f: $b0
    ld b, l                                       ; $59a0: $45
    jp nz, $d528                                  ; $59a1: $c2 $28 $d5

    nop                                           ; $59a4: $00
    xor b                                         ; $59a5: $a8
    ld b, d                                       ; $59a6: $42

jr_0eb_59a7:
    add b                                         ; $59a7: $80
    ld d, h                                       ; $59a8: $54
    and b                                         ; $59a9: $a0
    ld [$4190], sp                                ; $59aa: $08 $90 $41
    nop                                           ; $59ad: $00
    and d                                         ; $59ae: $a2
    ld b, b                                       ; $59af: $40
    inc b                                         ; $59b0: $04
    nop                                           ; $59b1: $00
    adc d                                         ; $59b2: $8a
    nop                                           ; $59b3: $00
    ld d, h                                       ; $59b4: $54
    nop                                           ; $59b5: $00
    adc b                                         ; $59b6: $88
    nop                                           ; $59b7: $00
    stop                                          ; $59b8: $10 $00
    and b                                         ; $59ba: $a0
    ld b, b                                       ; $59bb: $40
    ld [bc], a                                    ; $59bc: $02
    nop                                           ; $59bd: $00
    add c                                         ; $59be: $81
    db $10                                        ; $59bf: $10
    inc bc                                        ; $59c0: $03
    nop                                           ; $59c1: $00
    adc c                                         ; $59c2: $89
    ld de, $0200                                  ; $59c3: $11 $00 $02
    nop                                           ; $59c6: $00
    inc b                                         ; $59c7: $04
    nop                                           ; $59c8: $00
    ld [$1000], sp                                ; $59c9: $08 $00 $10
    inc de                                        ; $59cc: $13
    nop                                           ; $59cd: $00
    adc c                                         ; $59ce: $89
    add d                                         ; $59cf: $82
    nop                                           ; $59d0: $00
    ld b, c                                       ; $59d1: $41
    nop                                           ; $59d2: $00
    add d                                         ; $59d3: $82
    nop                                           ; $59d4: $00
    ld b, c                                       ; $59d5: $41
    nop                                           ; $59d6: $00
    ld [bc], a                                    ; $59d7: $02
    inc bc                                        ; $59d8: $03
    nop                                           ; $59d9: $00
    add c                                         ; $59da: $81
    ld [bc], a                                    ; $59db: $02
    inc de                                        ; $59dc: $13
    nop                                           ; $59dd: $00
    add c                                         ; $59de: $81
    ld bc, $001e                                  ; $59df: $01 $1e $00
    rst $38                                       ; $59e2: $ff
    add hl, de                                    ; $59e3: $19
    ld a, [bc]                                    ; $59e4: $0a
    ld sp, hl                                     ; $59e5: $f9
    inc c                                         ; $59e6: $0c
    nop                                           ; $59e7: $00
    inc de                                        ; $59e8: $13
    inc bc                                        ; $59e9: $03
    ldh a, [rSC]                                  ; $59ea: $f0 $02
    ld hl, sp+$02                                 ; $59ec: $f8 $02
    nop                                           ; $59ee: $00
    ld [bc], a                                    ; $59ef: $02
    ld [$0f03], sp                                ; $59f0: $08 $03 $0f
    ld [de], a                                    ; $59f3: $12
    push af                                       ; $59f4: $f5
    ld [de], a                                    ; $59f5: $12
    ld sp, hl                                     ; $59f6: $f9
    ld [de], a                                    ; $59f7: $12
    dec b                                         ; $59f8: $05
    inc de                                        ; $59f9: $13
    ld a, [bc]                                    ; $59fa: $0a
    ld [hl+], a                                   ; $59fb: $22
    rst $38                                       ; $59fc: $ff
    ld [bc], a                                    ; $59fd: $02
    rrca                                          ; $59fe: $0f
    ld [bc], a                                    ; $59ff: $02
    cpl                                           ; $5a00: $2f
    ld [bc], a                                    ; $5a01: $02
    ld d, a                                       ; $5a02: $57
    ld [bc], a                                    ; $5a03: $02
    xor a                                         ; $5a04: $af
    add d                                         ; $5a05: $82
    rla                                           ; $5a06: $17
    ld d, a                                       ; $5a07: $57
    ld [bc], a                                    ; $5a08: $02
    cpl                                           ; $5a09: $2f
    add d                                         ; $5a0a: $82
    rla                                           ; $5a0b: $17
    ld d, a                                       ; $5a0c: $57
    ld [bc], a                                    ; $5a0d: $02
    dec hl                                        ; $5a0e: $2b
    sub b                                         ; $5a0f: $90
    dec d                                         ; $5a10: $15
    ld d, l                                       ; $5a11: $55
    inc bc                                        ; $5a12: $03
    dec hl                                        ; $5a13: $2b
    nop                                           ; $5a14: $00
    dec d                                         ; $5a15: $15
    ld bc, $042a                                  ; $5a16: $01 $2a $04
    ld de, $0802                                  ; $5a19: $11 $02 $08
    nop                                           ; $5a1c: $00
    dec b                                         ; $5a1d: $05
    ld [bc], a                                    ; $5a1e: $02
    ld [$7f02], sp                                ; $5a1f: $08 $02 $7f
    ld b, $ff                                     ; $5a22: $06 $ff
    ld [bc], a                                    ; $5a24: $02
    push af                                       ; $5a25: $f5
    ld [bc], a                                    ; $5a26: $02
    ld [$d102], a                                 ; $5a27: $ea $02 $d1
    ld [bc], a                                    ; $5a2a: $02
    ldh [rSC], a                                  ; $5a2b: $e0 $02
    pop de                                        ; $5a2d: $d1
    ld [bc], a                                    ; $5a2e: $02
    ldh [$8c], a                                  ; $5a2f: $e0 $8c
    ld b, c                                       ; $5a31: $41
    pop de                                        ; $5a32: $d1
    ld c, d                                       ; $5a33: $4a
    ld [$d520], a                                 ; $5a34: $ea $20 $d5
    ld b, c                                       ; $5a37: $41
    cp [hl]                                       ; $5a38: $be
    db $eb                                        ; $5a39: $eb
    inc d                                         ; $5a3a: $14
    inc h                                         ; $5a3b: $24
    ld e, e                                       ; $5a3c: $5b
    inc c                                         ; $5a3d: $0c
    add a                                         ; $5a3e: $87
    ld [bc], a                                    ; $5a3f: $02
    rlca                                          ; $5a40: $07
    ld [bc], a                                    ; $5a41: $02
    add a                                         ; $5a42: $87
    ld [bc], a                                    ; $5a43: $02
    rlca                                          ; $5a44: $07
    ld [bc], a                                    ; $5a45: $02
    add a                                         ; $5a46: $87
    adc h                                         ; $5a47: $8c
    dec b                                         ; $5a48: $05
    rlca                                          ; $5a49: $07
    ld b, $87                                     ; $5a4a: $06 $87
    add h                                         ; $5a4c: $84
    inc bc                                        ; $5a4d: $03
    add [hl]                                      ; $5a4e: $86
    ld bc, $0087                                  ; $5a4f: $01 $87 $00
    add [hl]                                      ; $5a52: $86
    ld bc, $f802                                  ; $5a53: $01 $02 $f8
    ld [bc], a                                    ; $5a56: $02
    push af                                       ; $5a57: $f5
    ld [bc], a                                    ; $5a58: $02
    ld a, [$f502]                                 ; $5a59: $fa $02 $f5
    ld [bc], a                                    ; $5a5c: $02

jr_0eb_5a5d:
    ld [$f502], a                                 ; $5a5d: $ea $02 $f5
    ld [bc], a                                    ; $5a60: $02
    ld [$f502], a                                 ; $5a61: $ea $02 $f5
    ld [bc], a                                    ; $5a64: $02
    ld [$d502], a                                 ; $5a65: $ea $02 $d5
    adc h                                         ; $5a68: $8c
    adc b                                         ; $5a69: $88
    ld [$d590], a                                 ; $5a6a: $ea $90 $d5
    ld [bc], a                                    ; $5a6d: $02
    xor b                                         ; $5a6e: $a8
    db $10                                        ; $5a6f: $10
    call nz, Call_000_08a2                        ; $5a70: $c4 $a2 $08
    ld b, b                                       ; $5a73: $40
    inc d                                         ; $5a74: $14
    ld [bc], a                                    ; $5a75: $02
    jr nz, jr_0eb_5a7a                            ; $5a76: $20 $02

    inc d                                         ; $5a78: $14
    ld [bc], a                                    ; $5a79: $02

jr_0eb_5a7a:
    ld a, [hl+]                                   ; $5a7a: $2a
    add d                                         ; $5a7b: $82
    inc d                                         ; $5a7c: $14
    ld d, $02                                     ; $5a7d: $16 $02
    cpl                                           ; $5a7f: $2f
    sub c                                         ; $5a80: $91
    ld d, $17                                     ; $5a81: $16 $17
    ld a, [hl+]                                   ; $5a83: $2a
    ld l, $14                                     ; $5a84: $2e $14
    ld d, $08                                     ; $5a86: $16 $08
    ld c, $10                                     ; $5a88: $0e $10
    ld d, $04                                     ; $5a8a: $16 $04
    ld a, [bc]                                    ; $5a8c: $0a
    nop                                           ; $5a8d: $00
    inc d                                         ; $5a8e: $14
    ld [$1804], sp                                ; $5a8f: $08 $04 $18
    ld [bc], a                                    ; $5a92: $02
    nop                                           ; $5a93: $00
    sub h                                         ; $5a94: $94
    jr z, @+$42                                   ; $5a95: $28 $40

    db $10                                        ; $5a97: $10
    inc bc                                        ; $5a98: $03
    inc e                                         ; $5a99: $1c
    rlca                                          ; $5a9a: $07
    xor b                                         ; $5a9b: $a8
    inc de                                        ; $5a9c: $13
    ld b, h                                       ; $5a9d: $44
    ld bc, $052a                                  ; $5a9e: $01 $2a $05
    ld [de], a                                    ; $5aa1: $12
    ld bc, $000a                                  ; $5aa2: $01 $0a $00
    dec b                                         ; $5aa5: $05
    nop                                           ; $5aa6: $00
    ld [bc], a                                    ; $5aa7: $02
    ld bc, $0004                                  ; $5aa8: $01 $04 $00
    add c                                         ; $5aab: $81
    ld bc, $000a                                  ; $5aac: $01 $0a $00
    sbc [hl]                                      ; $5aaf: $9e
    ld a, [bc]                                    ; $5ab0: $0a
    dec b                                         ; $5ab1: $05
    rrca                                          ; $5ab2: $0f
    nop                                           ; $5ab3: $00
    add hl, bc                                    ; $5ab4: $09
    ld b, $0f                                     ; $5ab5: $06 $0f
    nop                                           ; $5ab7: $00
    add hl, bc                                    ; $5ab8: $09
    ld b, $0b                                     ; $5ab9: $06 $0b
    inc b                                         ; $5abb: $04
    inc bc                                        ; $5abc: $03
    inc c                                         ; $5abd: $0c
    ld c, $01                                     ; $5abe: $0e $01
    rlca                                          ; $5ac0: $07
    nop                                           ; $5ac1: $00
    inc bc                                        ; $5ac2: $03
    inc c                                         ; $5ac3: $0c
    rlca                                          ; $5ac4: $07
    nop                                           ; $5ac5: $00
    ld [bc], a                                    ; $5ac6: $02
    add hl, bc                                    ; $5ac7: $09
    ld bc, $0004                                  ; $5ac8: $01 $04 $00
    ld [bc], a                                    ; $5acb: $02
    nop                                           ; $5acc: $00
    ld bc, $0002                                  ; $5acd: $01 $02 $00
    xor d                                         ; $5ad0: $aa
    and b                                         ; $5ad1: $a0
    ld d, l                                       ; $5ad2: $55
    add sp, $02                                   ; $5ad3: $e8 $02
    call nc, $c001                                ; $5ad5: $d4 $01 $c0
    ld a, [hl+]                                   ; $5ad8: $2a
    ret nz                                        ; $5ad9: $c0

    inc d                                         ; $5ada: $14
    jr z, jr_0eb_5a5d                             ; $5adb: $28 $80

    ret nz                                        ; $5add: $c0

    ld de, $a002                                  ; $5ade: $11 $02 $a0
    ld b, b                                       ; $5ae1: $40
    inc b                                         ; $5ae2: $04
    nop                                           ; $5ae3: $00
    adc d                                         ; $5ae4: $8a
    nop                                           ; $5ae5: $00
    ld d, h                                       ; $5ae6: $54
    nop                                           ; $5ae7: $00
    adc b                                         ; $5ae8: $88
    nop                                           ; $5ae9: $00
    stop                                          ; $5aea: $10 $00
    and b                                         ; $5aec: $a0
    nop                                           ; $5aed: $00
    ld b, b                                       ; $5aee: $40
    nop                                           ; $5aef: $00
    and b                                         ; $5af0: $a0
    nop                                           ; $5af1: $00
    ld de, $0200                                  ; $5af2: $11 $00 $02
    nop                                           ; $5af5: $00
    inc b                                         ; $5af6: $04
    nop                                           ; $5af7: $00
    ld [$1000], sp                                ; $5af8: $08 $00 $10
    rla                                           ; $5afb: $17
    nop                                           ; $5afc: $00
    add d                                         ; $5afd: $82
    ld b, c                                       ; $5afe: $41
    ld [bc], a                                    ; $5aff: $02
    ld [bc], a                                    ; $5b00: $02
    nop                                           ; $5b01: $00
    add a                                         ; $5b02: $87
    ld b, c                                       ; $5b03: $41
    nop                                           ; $5b04: $00
    ld [bc], a                                    ; $5b05: $02
    nop                                           ; $5b06: $00
    ld b, b                                       ; $5b07: $40
    nop                                           ; $5b08: $00
    ld [bc], a                                    ; $5b09: $02
    inc bc                                        ; $5b0a: $03
    nop                                           ; $5b0b: $00
    add c                                         ; $5b0c: $81
    ld [bc], a                                    ; $5b0d: $02
    stop                                          ; $5b0e: $10 $00
    rst $38                                       ; $5b10: $ff
    add hl, de                                    ; $5b11: $19
    ld a, [bc]                                    ; $5b12: $0a
    ld sp, hl                                     ; $5b13: $f9
    inc c                                         ; $5b14: $0c
    nop                                           ; $5b15: $00
    inc de                                        ; $5b16: $13
    inc b                                         ; $5b17: $04
    ldh a, [$03]                                  ; $5b18: $f0 $03
    ld hl, sp+$03                                 ; $5b1a: $f8 $03
    nop                                           ; $5b1c: $00
    inc bc                                        ; $5b1d: $03
    ld [$0f04], sp                                ; $5b1e: $08 $04 $0f
    inc de                                        ; $5b21: $13
    or $13                                        ; $5b22: $f6 $13
    cp $13                                        ; $5b24: $fe $13
    ld b, $14                                     ; $5b26: $06 $14
    add hl, bc                                    ; $5b28: $09
    inc hl                                        ; $5b29: $23
    rst $38                                       ; $5b2a: $ff
    ld [bc], a                                    ; $5b2b: $02

jr_0eb_5b2c:
    rrca                                          ; $5b2c: $0f
    ld [bc], a                                    ; $5b2d: $02
    ld d, a                                       ; $5b2e: $57
    ld [bc], a                                    ; $5b2f: $02
    xor a                                         ; $5b30: $af
    add d                                         ; $5b31: $82
    rla                                           ; $5b32: $17
    ld d, a                                       ; $5b33: $57
    ld [bc], a                                    ; $5b34: $02
    cpl                                           ; $5b35: $2f
    add d                                         ; $5b36: $82
    rla                                           ; $5b37: $17
    ld d, a                                       ; $5b38: $57
    ld [bc], a                                    ; $5b39: $02
    dec hl                                        ; $5b3a: $2b
    add d                                         ; $5b3b: $82
    dec b                                         ; $5b3c: $05
    ld d, l                                       ; $5b3d: $55
    ld [bc], a                                    ; $5b3e: $02
    dec hl                                        ; $5b3f: $2b
    adc [hl]                                      ; $5b40: $8e
    dec b                                         ; $5b41: $05
    dec d                                         ; $5b42: $15
    ld bc, $042b                                  ; $5b43: $01 $2b $04
    ld de, $0802                                  ; $5b46: $11 $02 $08
    nop                                           ; $5b49: $00
    dec b                                         ; $5b4a: $05
    nop                                           ; $5b4b: $00
    ld a, [bc]                                    ; $5b4c: $0a
    ld bc, $0604                                  ; $5b4d: $01 $04 $06
    rst $38                                       ; $5b50: $ff
    ld [bc], a                                    ; $5b51: $02
    push af                                       ; $5b52: $f5
    ld [bc], a                                    ; $5b53: $02
    ld [$d102], a                                 ; $5b54: $ea $02 $d1
    ld [bc], a                                    ; $5b57: $02
    ldh [rSC], a                                  ; $5b58: $e0 $02
    pop de                                        ; $5b5a: $d1
    ld [bc], a                                    ; $5b5b: $02
    ldh [rSC], a                                  ; $5b5c: $e0 $02
    pop de                                        ; $5b5e: $d1
    ld [bc], a                                    ; $5b5f: $02
    ld [$f502], a                                 ; $5b60: $ea $02 $f5
    adc b                                         ; $5b63: $88
    db $10                                        ; $5b64: $10
    rst $28                                       ; $5b65: $ef
    ld c, l                                       ; $5b66: $4d
    or d                                          ; $5b67: $b2
    add hl, hl                                    ; $5b68: $29
    ld d, [hl]                                    ; $5b69: $56
    inc de                                        ; $5b6a: $13
    db $ec                                        ; $5b6b: $ec
    ld a, [bc]                                    ; $5b6c: $0a
    add a                                         ; $5b6d: $87
    ld [bc], a                                    ; $5b6e: $02
    rlca                                          ; $5b6f: $07
    ld [bc], a                                    ; $5b70: $02
    add a                                         ; $5b71: $87
    ld [bc], a                                    ; $5b72: $02
    rlca                                          ; $5b73: $07
    ld [bc], a                                    ; $5b74: $02
    add a                                         ; $5b75: $87
    ld [bc], a                                    ; $5b76: $02
    rlca                                          ; $5b77: $07
    inc b                                         ; $5b78: $04
    add a                                         ; $5b79: $87
    adc b                                         ; $5b7a: $88
    add [hl]                                      ; $5b7b: $86
    ld bc, $8502                                  ; $5b7c: $01 $02 $85
    rlca                                          ; $5b7f: $07
    add b                                         ; $5b80: $80
    add l                                         ; $5b81: $85
    ld [bc], a                                    ; $5b82: $02
    ld [bc], a                                    ; $5b83: $02
    db $f4                                        ; $5b84: $f4
    ld [bc], a                                    ; $5b85: $02
    ld a, [$f502]                                 ; $5b86: $fa $02 $f5
    ld [bc], a                                    ; $5b89: $02
    ld [$f502], a                                 ; $5b8a: $ea $02 $f5
    ld [bc], a                                    ; $5b8d: $02
    ld [$f502], a                                 ; $5b8e: $ea $02 $f5
    ld [bc], a                                    ; $5b91: $02

jr_0eb_5b92:
    ld [$d502], a                                 ; $5b92: $ea $02 $d5
    ld [bc], a                                    ; $5b95: $02
    ld [$d502], a                                 ; $5b96: $ea $02 $d5
    ld [bc], a                                    ; $5b99: $02
    xor d                                         ; $5b9a: $aa
    adc b                                         ; $5b9b: $88
    nop                                           ; $5b9c: $00
    call nc, Call_000_2a80                        ; $5b9d: $d4 $80 $2a
    ld d, h                                       ; $5ba0: $54
    nop                                           ; $5ba1: $00
    jr nz, jr_0eb_5b2c                            ; $5ba2: $20 $88

    ld [bc], a                                    ; $5ba4: $02
    db $10                                        ; $5ba5: $10
    ld [bc], a                                    ; $5ba6: $02
    jr z, jr_0eb_5bab                             ; $5ba7: $28 $02

    rla                                           ; $5ba9: $17
    add h                                         ; $5baa: $84

jr_0eb_5bab:
    ld l, $2f                                     ; $5bab: $2e $2f
    ld d, $17                                     ; $5bad: $16 $17
    ld [bc], a                                    ; $5baf: $02
    ld l, $02                                     ; $5bb0: $2e $02
    ld d, $a1                                     ; $5bb2: $16 $a1
    inc c                                         ; $5bb4: $0c
    ld c, $14                                     ; $5bb5: $0e $14
    ld [de], a                                    ; $5bb7: $12
    nop                                           ; $5bb8: $00
    ld c, $04                                     ; $5bb9: $0e $04
    stop                                          ; $5bbb: $10 $00
    inc c                                         ; $5bbd: $0c
    ld [$0010], sp                                ; $5bbe: $08 $10 $00
    jr z, jr_0eb_5bc3                             ; $5bc1: $28 $00

jr_0eb_5bc3:
    ld d, b                                       ; $5bc3: $50
    nop                                           ; $5bc4: $00
    jr nz, jr_0eb_5be1                            ; $5bc5: $20 $1a

    dec b                                         ; $5bc7: $05
    add hl, bc                                    ; $5bc8: $09
    and [hl]                                      ; $5bc9: $a6
    ld bc, $0456                                  ; $5bca: $01 $56 $04
    dec hl                                        ; $5bcd: $2b
    ld bc, $0016                                  ; $5bce: $01 $16 $00
    dec bc                                        ; $5bd1: $0b
    ld bc, $0204                                  ; $5bd2: $01 $04 $02
    ld [bc], a                                    ; $5bd5: $02
    nop                                           ; $5bd6: $00
    add l                                         ; $5bd7: $85
    ld bc, $0200                                  ; $5bd8: $01 $00 $02
    nop                                           ; $5bdb: $00
    ld bc, $000a                                  ; $5bdc: $01 $0a $00
    sub c                                         ; $5bdf: $91
    ld h, c                                       ; $5be0: $61

jr_0eb_5be1:
    add b                                         ; $5be1: $80
    and c                                         ; $5be2: $a1
    ld b, b                                       ; $5be3: $40
    pop hl                                        ; $5be4: $e1
    nop                                           ; $5be5: $00
    pop hl                                        ; $5be6: $e1
    nop                                           ; $5be7: $00
    and c                                         ; $5be8: $a1
    ld b, b                                       ; $5be9: $40
    ld h, b                                       ; $5bea: $60
    add c                                         ; $5beb: $81
    pop bc                                        ; $5bec: $c1
    jr nz, @-$5e                                  ; $5bed: $20 $a0

    ld b, b                                       ; $5bef: $40
    ld h, c                                       ; $5bf0: $61
    ld [bc], a                                    ; $5bf1: $02
    add b                                         ; $5bf2: $80
    xor c                                         ; $5bf3: $a9
    ld h, b                                       ; $5bf4: $60
    ld hl, $0040                                  ; $5bf5: $21 $40 $00
    and b                                         ; $5bf8: $a0
    ld b, b                                       ; $5bf9: $40
    ld bc, $2000                                  ; $5bfa: $01 $00 $20
    nop                                           ; $5bfd: $00
    ld b, c                                       ; $5bfe: $41
    nop                                           ; $5bff: $00
    jr nz, jr_0eb_5b92                            ; $5c00: $20 $90

    ld b, l                                       ; $5c02: $45
    and b                                         ; $5c03: $a0
    ld a, [bc]                                    ; $5c04: $0a
    sub h                                         ; $5c05: $94
    ld b, b                                       ; $5c06: $40
    and b                                         ; $5c07: $a0
    ld [$1140], sp                                ; $5c08: $08 $40 $11
    ld [hl+], a                                   ; $5c0b: $22
    add b                                         ; $5c0c: $80
    nop                                           ; $5c0d: $00
    ld b, h                                       ; $5c0e: $44
    nop                                           ; $5c0f: $00
    adc b                                         ; $5c10: $88
    nop                                           ; $5c11: $00
    inc d                                         ; $5c12: $14
    nop                                           ; $5c13: $00
    xor b                                         ; $5c14: $a8
    nop                                           ; $5c15: $00
    stop                                          ; $5c16: $10 $00
    jr nz, jr_0eb_5c1a                            ; $5c18: $20 $00

jr_0eb_5c1a:
    ld b, b                                       ; $5c1a: $40
    nop                                           ; $5c1b: $00
    add b                                         ; $5c1c: $80
    inc bc                                        ; $5c1d: $03
    nop                                           ; $5c1e: $00
    add a                                         ; $5c1f: $87
    add b                                         ; $5c20: $80
    nop                                           ; $5c21: $00
    ld bc, $0200                                  ; $5c22: $01 $00 $02
    nop                                           ; $5c25: $00
    inc b                                         ; $5c26: $04
    dec de                                        ; $5c27: $1b
    nop                                           ; $5c28: $00
    adc [hl]                                      ; $5c29: $8e
    ld [bc], a                                    ; $5c2a: $02
    nop                                           ; $5c2b: $00
    ld b, c                                       ; $5c2c: $41
    nop                                           ; $5c2d: $00
    ld [bc], a                                    ; $5c2e: $02
    nop                                           ; $5c2f: $00
    ld bc, $0200                                  ; $5c30: $01 $00 $02
    nop                                           ; $5c33: $00
    ld b, b                                       ; $5c34: $40
    nop                                           ; $5c35: $00
    add d                                         ; $5c36: $82
    ld bc, $0004                                  ; $5c37: $01 $04 $00
    add c                                         ; $5c3a: $81
    ld b, b                                       ; $5c3b: $40
    ld [bc], a                                    ; $5c3c: $02
    nop                                           ; $5c3d: $00
    add h                                         ; $5c3e: $84
    ld b, b                                       ; $5c3f: $40
    nop                                           ; $5c40: $00
    ld b, b                                       ; $5c41: $40
    ld bc, $0004                                  ; $5c42: $01 $04 $00
    add d                                         ; $5c45: $82
    ld [bc], a                                    ; $5c46: $02
    add b                                         ; $5c47: $80
    rst $38                                       ; $5c48: $ff
    dec de                                        ; $5c49: $1b
    dec bc                                        ; $5c4a: $0b
    ld sp, hl                                     ; $5c4b: $f9
    inc c                                         ; $5c4c: $0c
    nop                                           ; $5c4d: $00
    inc de                                        ; $5c4e: $13
    dec b                                         ; $5c4f: $05
    pop af                                        ; $5c50: $f1
    inc b                                         ; $5c51: $04
    ld sp, hl                                     ; $5c52: $f9
    inc b                                         ; $5c53: $04
    dec b                                         ; $5c54: $05
    dec b                                         ; $5c55: $05
    dec c                                         ; $5c56: $0d
    rlca                                          ; $5c57: $07
    rrca                                          ; $5c58: $0f
    inc d                                         ; $5c59: $14
    rst $30                                       ; $5c5a: $f7
    inc d                                         ; $5c5b: $14
    rst $38                                       ; $5c5c: $ff
    inc d                                         ; $5c5d: $14
    rlca                                          ; $5c5e: $07
    inc h                                         ; $5c5f: $24
    rst $38                                       ; $5c60: $ff
    inc [hl]                                      ; $5c61: $34
    rst $38                                       ; $5c62: $ff
    inc [hl]                                      ; $5c63: $34
    nop                                           ; $5c64: $00
    ld [bc], a                                    ; $5c65: $02
    rrca                                          ; $5c66: $0f
    ld [bc], a                                    ; $5c67: $02
    ld e, a                                       ; $5c68: $5f
    ld [bc], a                                    ; $5c69: $02
    xor a                                         ; $5c6a: $af
    ld [bc], a                                    ; $5c6b: $02
    ld e, a                                       ; $5c6c: $5f
    ld [bc], a                                    ; $5c6d: $02
    xor a                                         ; $5c6e: $af
    ld [bc], a                                    ; $5c6f: $02
    ld d, a                                       ; $5c70: $57
    sub h                                         ; $5c71: $94
    dec hl                                        ; $5c72: $2b
    xor e                                         ; $5c73: $ab
    ld b, l                                       ; $5c74: $45
    ld d, a                                       ; $5c75: $57
    dec bc                                        ; $5c76: $0b
    dec hl                                        ; $5c77: $2b
    ld d, $57                                     ; $5c78: $16 $57
    ld bc, $002b                                  ; $5c7a: $01 $2b $00
    dec d                                         ; $5c7d: $15
    nop                                           ; $5c7e: $00
    ld a, [bc]                                    ; $5c7f: $0a
    nop                                           ; $5c80: $00
    dec d                                         ; $5c81: $15
    nop                                           ; $5c82: $00
    ld a, [bc]                                    ; $5c83: $0a
    nop                                           ; $5c84: $00
    dec b                                         ; $5c85: $05
    inc b                                         ; $5c86: $04
    rst $38                                       ; $5c87: $ff
    ld [bc], a                                    ; $5c88: $02
    db $eb                                        ; $5c89: $eb
    ld [bc], a                                    ; $5c8a: $02
    push de                                       ; $5c8b: $d5
    ld [bc], a                                    ; $5c8c: $02
    and d                                         ; $5c8d: $a2
    ld [bc], a                                    ; $5c8e: $02
    pop bc                                        ; $5c8f: $c1
    ld [bc], a                                    ; $5c90: $02
    and d                                         ; $5c91: $a2
    ld [bc], a                                    ; $5c92: $02
    pop bc                                        ; $5c93: $c1
    ld [bc], a                                    ; $5c94: $02
    and d                                         ; $5c95: $a2
    ld [bc], a                                    ; $5c96: $02
    push de                                       ; $5c97: $d5
    adc h                                         ; $5c98: $8c
    ld [$5deb], a                                 ; $5c99: $ea $eb $5d
    rst $38                                       ; $5c9c: $ff
    ld c, h                                       ; $5c9d: $4c
    or e                                          ; $5c9e: $b3
    push af                                       ; $5c9f: $f5
    ld a, [bc]                                    ; $5ca0: $0a
    inc sp                                        ; $5ca1: $33
    call z, Call_0eb_7887                         ; $5ca2: $cc $87 $78
    ld [bc], a                                    ; $5ca5: $02
    rst $38                                       ; $5ca6: $ff
    ld [bc], a                                    ; $5ca7: $02
    cp $02                                        ; $5ca8: $fe $02
    db $fd                                        ; $5caa: $fd
    ld [bc], a                                    ; $5cab: $02
    cp $02                                        ; $5cac: $fe $02
    db $fd                                        ; $5cae: $fd
    ld [bc], a                                    ; $5caf: $02
    cp $02                                        ; $5cb0: $fe $02
    db $fd                                        ; $5cb2: $fd
    ld [bc], a                                    ; $5cb3: $02
    ld a, [$fd02]                                 ; $5cb4: $fa $02 $fd
    ld [bc], a                                    ; $5cb7: $02
    ld a, [$d58c]                                 ; $5cb8: $fa $8c $d5
    push af                                       ; $5cbb: $f5
    or b                                          ; $5cbc: $b0
    ld a, [$35c0]                                 ; $5cbd: $fa $c0 $35
    ld b, b                                       ; $5cc0: $40
    xor d                                         ; $5cc1: $aa
    db $f4                                        ; $5cc2: $f4
    ld bc, $2ac0                                  ; $5cc3: $01 $c0 $2a
    ld [bc], a                                    ; $5cc6: $02
    xor b                                         ; $5cc7: $a8
    ld [bc], a                                    ; $5cc8: $02
    ld b, l                                       ; $5cc9: $45
    ld [bc], a                                    ; $5cca: $02
    xor e                                         ; $5ccb: $ab
    ld [bc], a                                    ; $5ccc: $02
    ld b, l                                       ; $5ccd: $45
    sbc b                                         ; $5cce: $98
    xor d                                         ; $5ccf: $aa
    xor e                                         ; $5cd0: $ab
    ld b, c                                       ; $5cd1: $41
    ld b, l                                       ; $5cd2: $45
    and c                                         ; $5cd3: $a1
    and e                                         ; $5cd4: $a3
    ld b, h                                       ; $5cd5: $44
    ld b, l                                       ; $5cd6: $45
    and b                                         ; $5cd7: $a0
    and e                                         ; $5cd8: $a3
    nop                                           ; $5cd9: $00
    ld b, l                                       ; $5cda: $45
    add b                                         ; $5cdb: $80
    add e                                         ; $5cdc: $83
    nop                                           ; $5cdd: $00
    ld b, [hl]                                    ; $5cde: $46
    nop                                           ; $5cdf: $00
    adc d                                         ; $5ce0: $8a
    nop                                           ; $5ce1: $00
    inc d                                         ; $5ce2: $14
    nop                                           ; $5ce3: $00
    adc b                                         ; $5ce4: $88
    nop                                           ; $5ce5: $00
    db $10                                        ; $5ce6: $10
    ld [bc], a                                    ; $5ce7: $02
    ld [bc], a                                    ; $5ce8: $02
    ld [bc], a                                    ; $5ce9: $02
    inc bc                                        ; $5cea: $03
    ld [bc], a                                    ; $5ceb: $02
    ld [bc], a                                    ; $5cec: $02
    adc b                                         ; $5ced: $88
    nop                                           ; $5cee: $00
    ld [bc], a                                    ; $5cef: $02
    nop                                           ; $5cf0: $00
    ld [bc], a                                    ; $5cf1: $02
    nop                                           ; $5cf2: $00
    ld [bc], a                                    ; $5cf3: $02
    nop                                           ; $5cf4: $00
    ld [bc], a                                    ; $5cf5: $02
    rrca                                          ; $5cf6: $0f
    nop                                           ; $5cf7: $00
    add c                                         ; $5cf8: $81
    add b                                         ; $5cf9: $80
    ld [bc], a                                    ; $5cfa: $02
    nop                                           ; $5cfb: $00
    sub [hl]                                      ; $5cfc: $96
    ld a, [bc]                                    ; $5cfd: $0a
    dec d                                         ; $5cfe: $15
    nop                                           ; $5cff: $00
    xor a                                         ; $5d00: $af
    inc bc                                        ; $5d01: $03
    ld e, h                                       ; $5d02: $5c
    nop                                           ; $5d03: $00
    cpl                                           ; $5d04: $2f
    inc bc                                        ; $5d05: $03
    inc d                                         ; $5d06: $14
    nop                                           ; $5d07: $00
    dec bc                                        ; $5d08: $0b
    ld bc, HeaderLogo                             ; $5d09: $01 $04 $01
    ld [bc], a                                    ; $5d0c: $02
    nop                                           ; $5d0d: $00
    dec b                                         ; $5d0e: $05
    nop                                           ; $5d0f: $00
    ld [bc], a                                    ; $5d10: $02
    nop                                           ; $5d11: $00
    ld bc, $000a                                  ; $5d12: $01 $0a $00
    cp b                                          ; $5d15: $b8
    add c                                         ; $5d16: $81
    ld b, d                                       ; $5d17: $42
    jp $c100                                      ; $5d18: $c3 $00 $c1


    ld [bc], a                                    ; $5d1b: $02
    ret nz                                        ; $5d1c: $c0

    ld [bc], a                                    ; $5d1d: $02
    add e                                         ; $5d1e: $83
    ld b, b                                       ; $5d1f: $40
    jp nz, $c100                                  ; $5d20: $c2 $00 $c1

    nop                                           ; $5d23: $00
    ret nz                                        ; $5d24: $c0

    ld [bc], a                                    ; $5d25: $02
    add b                                         ; $5d26: $80
    ld b, c                                       ; $5d27: $41
    add d                                         ; $5d28: $82
    ld b, b                                       ; $5d29: $40
    nop                                           ; $5d2a: $00
    ld b, b                                       ; $5d2b: $40
    ld [bc], a                                    ; $5d2c: $02
    add b                                         ; $5d2d: $80
    nop                                           ; $5d2e: $00
    ld b, c                                       ; $5d2f: $41
    ld [bc], a                                    ; $5d30: $02
    add b                                         ; $5d31: $80
    nop                                           ; $5d32: $00
    ld b, c                                       ; $5d33: $41
    nop                                           ; $5d34: $00
    ld [bc], a                                    ; $5d35: $02
    db $10                                        ; $5d36: $10
    ld b, h                                       ; $5d37: $44
    nop                                           ; $5d38: $00
    xor b                                         ; $5d39: $a8
    nop                                           ; $5d3a: $00
    ld d, c                                       ; $5d3b: $51
    add b                                         ; $5d3c: $80
    ld [hl+], a                                   ; $5d3d: $22
    nop                                           ; $5d3e: $00
    ld b, h                                       ; $5d3f: $44
    nop                                           ; $5d40: $00
    adc b                                         ; $5d41: $88
    nop                                           ; $5d42: $00
    stop                                          ; $5d43: $10 $00
    jr z, jr_0eb_5d47                             ; $5d45: $28 $00

jr_0eb_5d47:
    ld d, b                                       ; $5d47: $50
    nop                                           ; $5d48: $00
    jr nz, jr_0eb_5d4b                            ; $5d49: $20 $00

jr_0eb_5d4b:
    ld b, b                                       ; $5d4b: $40
    nop                                           ; $5d4c: $00
    add b                                         ; $5d4d: $80
    inc bc                                        ; $5d4e: $03
    nop                                           ; $5d4f: $00
    add c                                         ; $5d50: $81
    add b                                         ; $5d51: $80
    inc b                                         ; $5d52: $04
    nop                                           ; $5d53: $00
    adc d                                         ; $5d54: $8a
    ld bc, $0040                                  ; $5d55: $01 $40 $00
    ld [bc], a                                    ; $5d58: $02
    ld bc, $0040                                  ; $5d59: $01 $40 $00
    ld [bc], a                                    ; $5d5c: $02
    nop                                           ; $5d5d: $00
    ld b, b                                       ; $5d5e: $40
    inc bc                                        ; $5d5f: $03
    nop                                           ; $5d60: $00
    add c                                         ; $5d61: $81
    ld bc, $0004                                  ; $5d62: $01 $04 $00
    add h                                         ; $5d65: $84
    add b                                         ; $5d66: $80
    ld bc, $4000                                  ; $5d67: $01 $00 $40
    inc bc                                        ; $5d6a: $03
    nop                                           ; $5d6b: $00
    add c                                         ; $5d6c: $81
    ld b, b                                       ; $5d6d: $40
    inc bc                                        ; $5d6e: $03
    nop                                           ; $5d6f: $00
    add c                                         ; $5d70: $81
    add d                                         ; $5d71: $82
    inc bc                                        ; $5d72: $03
    nop                                           ; $5d73: $00
    add l                                         ; $5d74: $85
    ld b, b                                       ; $5d75: $40
    ld bc, $4080                                  ; $5d76: $01 $80 $40
    ld [bc], a                                    ; $5d79: $02
    ld [bc], a                                    ; $5d7a: $02
    nop                                           ; $5d7b: $00
    add c                                         ; $5d7c: $81
    ld bc, $0002                                  ; $5d7d: $01 $02 $00
    add a                                         ; $5d80: $87
    add d                                         ; $5d81: $82
    nop                                           ; $5d82: $00
    ld bc, $0100                                  ; $5d83: $01 $00 $01
    nop                                           ; $5d86: $00
    ld b, b                                       ; $5d87: $40
    ld d, $00                                     ; $5d88: $16 $00
    add c                                         ; $5d8a: $81
    ld bc, $0017                                  ; $5d8b: $01 $17 $00
    rst $38                                       ; $5d8e: $ff
    dec de                                        ; $5d8f: $1b
    dec bc                                        ; $5d90: $0b
    ld sp, hl                                     ; $5d91: $f9
    inc c                                         ; $5d92: $0c
    nop                                           ; $5d93: $00
    inc de                                        ; $5d94: $13
    dec b                                         ; $5d95: $05
    pop af                                        ; $5d96: $f1
    dec b                                         ; $5d97: $05
    ld sp, hl                                     ; $5d98: $f9
    dec b                                         ; $5d99: $05
    dec b                                         ; $5d9a: $05
    dec b                                         ; $5d9b: $05
    dec c                                         ; $5d9c: $0d
    ld [$150e], sp                                ; $5d9d: $08 $0e $15
    rst $30                                       ; $5da0: $f7
    dec d                                         ; $5da1: $15
    rst $38                                       ; $5da2: $ff
    dec d                                         ; $5da3: $15
    ld b, $25                                     ; $5da4: $06 $25
    rst $38                                       ; $5da6: $ff
    dec [hl]                                      ; $5da7: $35
    ld sp, hl                                     ; $5da8: $f9
    dec [hl]                                      ; $5da9: $35
    ld bc, $0302                                  ; $5daa: $01 $02 $03
    ld [bc], a                                    ; $5dad: $02
    rra                                           ; $5dae: $1f
    ld [bc], a                                    ; $5daf: $02
    xor a                                         ; $5db0: $af
    ld [bc], a                                    ; $5db1: $02
    ld e, a                                       ; $5db2: $5f
    ld [bc], a                                    ; $5db3: $02
    xor a                                         ; $5db4: $af
    ld [bc], a                                    ; $5db5: $02
    ld d, a                                       ; $5db6: $57
    ld [bc], a                                    ; $5db7: $02
    xor e                                         ; $5db8: $ab
    ld [bc], a                                    ; $5db9: $02
    ld d, a                                       ; $5dba: $57
    sub b                                         ; $5dbb: $90
    dec bc                                        ; $5dbc: $0b
    dec hl                                        ; $5dbd: $2b
    inc de                                        ; $5dbe: $13
    ld d, a                                       ; $5dbf: $57
    inc bc                                        ; $5dc0: $03
    dec hl                                        ; $5dc1: $2b
    nop                                           ; $5dc2: $00
    dec d                                         ; $5dc3: $15
    nop                                           ; $5dc4: $00
    ld a, [bc]                                    ; $5dc5: $0a
    nop                                           ; $5dc6: $00
    dec d                                         ; $5dc7: $15
    nop                                           ; $5dc8: $00
    ld a, [bc]                                    ; $5dc9: $0a
    ld bc, $0204                                  ; $5dca: $01 $04 $02
    rst $38                                       ; $5dcd: $ff

jr_0eb_5dce:
    ld [bc], a                                    ; $5dce: $02
    db $eb                                        ; $5dcf: $eb
    ld [bc], a                                    ; $5dd0: $02
    push de                                       ; $5dd1: $d5
    ld [bc], a                                    ; $5dd2: $02
    and d                                         ; $5dd3: $a2
    ld [bc], a                                    ; $5dd4: $02
    pop bc                                        ; $5dd5: $c1
    ld [bc], a                                    ; $5dd6: $02
    and d                                         ; $5dd7: $a2
    ld [bc], a                                    ; $5dd8: $02
    pop bc                                        ; $5dd9: $c1
    ld [bc], a                                    ; $5dda: $02
    and d                                         ; $5ddb: $a2
    ld [bc], a                                    ; $5ddc: $02
    push de                                       ; $5ddd: $d5
    ld [bc], a                                    ; $5dde: $02
    db $eb                                        ; $5ddf: $eb
    adc h                                         ; $5de0: $8c
    ld a, a                                       ; $5de1: $7f
    rst $38                                       ; $5de2: $ff
    ld [hl], $ff                                  ; $5de3: $36 $ff
    ld [bc], a                                    ; $5de5: $02
    db $fd                                        ; $5de6: $fd
    pop de                                        ; $5de7: $d1
    ld l, $3d                                     ; $5de8: $2e $3d
    jp nz, Jump_0eb_4639                          ; $5dea: $c2 $39 $46

    ld [bc], a                                    ; $5ded: $02
    cp $02                                        ; $5dee: $fe $02
    db $fd                                        ; $5df0: $fd
    ld [bc], a                                    ; $5df1: $02
    cp $02                                        ; $5df2: $fe $02
    db $fd                                        ; $5df4: $fd
    ld [bc], a                                    ; $5df5: $02
    cp $02                                        ; $5df6: $fe $02
    db $fd                                        ; $5df8: $fd
    ld [bc], a                                    ; $5df9: $02
    ld a, [$fd02]                                 ; $5dfa: $fa $02 $fd
    ld [bc], a                                    ; $5dfd: $02
    ld a, [$f502]                                 ; $5dfe: $fa $02 $f5
    adc h                                         ; $5e01: $8c
    ld a, [c]                                     ; $5e02: $f2
    ld a, [$f5d4]                                 ; $5e03: $fa $d4 $f5
    and b                                         ; $5e06: $a0
    ld c, d                                       ; $5e07: $4a
    pop hl                                        ; $5e08: $e1
    inc d                                         ; $5e09: $14
    jr z, jr_0eb_5dce                             ; $5e0a: $28 $c2

    ret nz                                        ; $5e0c: $c0

    dec d                                         ; $5e0d: $15
    ld [bc], a                                    ; $5e0e: $02
    add b                                         ; $5e0f: $80
    ld [bc], a                                    ; $5e10: $02
    ld b, h                                       ; $5e11: $44
    ld [bc], a                                    ; $5e12: $02
    xor e                                         ; $5e13: $ab
    ld [bc], a                                    ; $5e14: $02
    ld b, l                                       ; $5e15: $45
    ld [bc], a                                    ; $5e16: $02
    xor e                                         ; $5e17: $ab
    ld [bc], a                                    ; $5e18: $02
    ld b, l                                       ; $5e19: $45
    add d                                         ; $5e1a: $82
    and d                                         ; $5e1b: $a2
    and e                                         ; $5e1c: $a3
    ld [bc], a                                    ; $5e1d: $02
    ld b, l                                       ; $5e1e: $45
    sub b                                         ; $5e1f: $90
    and b                                         ; $5e20: $a0
    and e                                         ; $5e21: $a3
    ld b, c                                       ; $5e22: $41
    ld b, h                                       ; $5e23: $44
    nop                                           ; $5e24: $00
    add e                                         ; $5e25: $83
    ld [bc], a                                    ; $5e26: $02
    ld b, h                                       ; $5e27: $44
    nop                                           ; $5e28: $00
    adc d                                         ; $5e29: $8a
    nop                                           ; $5e2a: $00
    inc d                                         ; $5e2b: $14
    add b                                         ; $5e2c: $80
    ld [$1000], sp                                ; $5e2d: $08 $00 $10
    ld b, $01                                     ; $5e30: $06 $01
    add [hl]                                      ; $5e32: $86
    nop                                           ; $5e33: $00
    ld bc, $0100                                  ; $5e34: $01 $00 $01
    nop                                           ; $5e37: $00
    ld bc, $000f                                  ; $5e38: $01 $0f $00
    add e                                         ; $5e3b: $83
    ld b, b                                       ; $5e3c: $40
    nop                                           ; $5e3d: $00
    add b                                         ; $5e3e: $80
    ld [bc], a                                    ; $5e3f: $02
    nop                                           ; $5e40: $00
    adc c                                         ; $5e41: $89
    ld c, $a1                                     ; $5e42: $0e $a1
    ld b, c                                       ; $5e44: $41
    ld e, $09                                     ; $5e45: $1e $09
    ld h, $05                                     ; $5e47: $26 $05
    ld [de], a                                    ; $5e49: $12
    ld a, [bc]                                    ; $5e4a: $0a
    ld [bc], a                                    ; $5e4b: $02
    ld bc, $0486                                  ; $5e4c: $01 $86 $04
    nop                                           ; $5e4f: $00
    inc bc                                        ; $5e50: $03
    ld bc, $0204                                  ; $5e51: $01 $04 $02
    ld [bc], a                                    ; $5e54: $02
    nop                                           ; $5e55: $00
    add c                                         ; $5e56: $81
    ld bc, $000c                                  ; $5e57: $01 $0c $00
    sub e                                         ; $5e5a: $93
    jp nz, Jump_0eb_4301                          ; $5e5b: $c2 $01 $43

    add b                                         ; $5e5e: $80
    ret nz                                        ; $5e5f: $c0

    ld [bc], a                                    ; $5e60: $02
    add d                                         ; $5e61: $82
    ld b, c                                       ; $5e62: $41
    jp nz, $8100                                  ; $5e63: $c2 $00 $81

    ld b, b                                       ; $5e66: $40
    jp nz, $8000                                  ; $5e67: $c2 $00 $80

    ld b, c                                       ; $5e6a: $41
    add b                                         ; $5e6b: $80
    ld b, d                                       ; $5e6c: $42
    ld b, b                                       ; $5e6d: $40
    ld [bc], a                                    ; $5e6e: $02
    nop                                           ; $5e6f: $00
    adc b                                         ; $5e70: $88
    add d                                         ; $5e71: $82
    ld b, c                                       ; $5e72: $41
    nop                                           ; $5e73: $00
    ld [bc], a                                    ; $5e74: $02
    add b                                         ; $5e75: $80
    ld bc, $0240                                  ; $5e76: $01 $40 $02
    ld [bc], a                                    ; $5e79: $02
    nop                                           ; $5e7a: $00
    adc h                                         ; $5e7b: $8c
    ld b, c                                       ; $5e7c: $41
    db $10                                        ; $5e7d: $10
    ld b, h                                       ; $5e7e: $44
    jr nz, @+$0a                                  ; $5e7f: $20 $08

    ld b, b                                       ; $5e81: $40
    ld de, $0220                                  ; $5e82: $11 $20 $02
    nop                                           ; $5e85: $00
    ld b, h                                       ; $5e86: $44
    ld [$0002], sp                                ; $5e87: $08 $02 $00
    adc c                                         ; $5e8a: $89
    inc d                                         ; $5e8b: $14
    jr nz, jr_0eb_5e96                            ; $5e8c: $20 $08

    nop                                           ; $5e8e: $00
    stop                                          ; $5e8f: $10 $00
    jr nz, jr_0eb_5e93                            ; $5e91: $20 $00

jr_0eb_5e93:
    ld b, b                                       ; $5e93: $40
    inc bc                                        ; $5e94: $03
    nop                                           ; $5e95: $00

jr_0eb_5e96:
    add c                                         ; $5e96: $81
    ld b, b                                       ; $5e97: $40
    rlca                                          ; $5e98: $07
    nop                                           ; $5e99: $00
    add e                                         ; $5e9a: $83
    add d                                         ; $5e9b: $82
    nop                                           ; $5e9c: $00
    ld b, c                                       ; $5e9d: $41
    ld [bc], a                                    ; $5e9e: $02
    nop                                           ; $5e9f: $00
    add c                                         ; $5ea0: $81
    ld b, b                                       ; $5ea1: $40
    ld [bc], a                                    ; $5ea2: $02
    nop                                           ; $5ea3: $00
    add e                                         ; $5ea4: $83
    ld [bc], a                                    ; $5ea5: $02
    nop                                           ; $5ea6: $00
    ld b, b                                       ; $5ea7: $40
    dec b                                         ; $5ea8: $05
    nop                                           ; $5ea9: $00
    add c                                         ; $5eaa: $81
    add b                                         ; $5eab: $80
    inc bc                                        ; $5eac: $03
    nop                                           ; $5ead: $00
    add c                                         ; $5eae: $81
    ld b, b                                       ; $5eaf: $40
    ld [bc], a                                    ; $5eb0: $02
    nop                                           ; $5eb1: $00
    add c                                         ; $5eb2: $81
    ld b, b                                       ; $5eb3: $40
    ld b, $00                                     ; $5eb4: $06 $00
    add e                                         ; $5eb6: $83
    ld b, d                                       ; $5eb7: $42
    nop                                           ; $5eb8: $00
    ld bc, $0008                                  ; $5eb9: $01 $08 $00
    add c                                         ; $5ebc: $81
    ld bc, $0003                                  ; $5ebd: $01 $03 $00
    add e                                         ; $5ec0: $83
    inc b                                         ; $5ec1: $04
    nop                                           ; $5ec2: $00
    ld [$0102], sp                                ; $5ec3: $08 $02 $01
    inc b                                         ; $5ec6: $04
    nop                                           ; $5ec7: $00
    add c                                         ; $5ec8: $81
    inc b                                         ; $5ec9: $04
    dec bc                                        ; $5eca: $0b
    nop                                           ; $5ecb: $00
    add h                                         ; $5ecc: $84
    ld [$0400], sp                                ; $5ecd: $08 $00 $04
    nop                                           ; $5ed0: $00
    ld [bc], a                                    ; $5ed1: $02
    ld [bc], a                                    ; $5ed2: $02
    add d                                         ; $5ed3: $82
    nop                                           ; $5ed4: $00
    inc b                                         ; $5ed5: $04
    ld [bc], a                                    ; $5ed6: $02
    nop                                           ; $5ed7: $00
    adc d                                         ; $5ed8: $8a
    ld bc, $0400                                  ; $5ed9: $01 $00 $04
    nop                                           ; $5edc: $00
    ld bc, $0400                                  ; $5edd: $01 $00 $04
    nop                                           ; $5ee0: $00
    inc b                                         ; $5ee1: $04
    ld bc, $0009                                  ; $5ee2: $01 $09 $00
    rst $38                                       ; $5ee5: $ff
    dec e                                         ; $5ee6: $1d
    inc c                                         ; $5ee7: $0c
    ld sp, hl                                     ; $5ee8: $f9
    inc c                                         ; $5ee9: $0c
    nop                                           ; $5eea: $00
    inc de                                        ; $5eeb: $13
    ld b, $f1                                     ; $5eec: $06 $f1
    ld b, $f9                                     ; $5eee: $06 $f9
    ld b, $05                                     ; $5ef0: $06 $05
    ld b, $0d                                     ; $5ef2: $06 $0d
    ld a, [bc]                                    ; $5ef4: $0a
    ld c, $16                                     ; $5ef5: $0e $16
    ld hl, sp+$16                                 ; $5ef7: $f8 $16
    nop                                           ; $5ef9: $00
    ld d, $06                                     ; $5efa: $16 $06

jr_0eb_5efc:
    jr z, jr_0eb_5efc                             ; $5efc: $28 $fe

    ld h, $ff                                     ; $5efe: $26 $ff
    ld [hl], $fe                                  ; $5f00: $36 $fe
    ld [hl], $01                                  ; $5f02: $36 $01
    ld [bc], a                                    ; $5f04: $02
    inc bc                                        ; $5f05: $03
    ld [bc], a                                    ; $5f06: $02
    rrca                                          ; $5f07: $0f
    ld [bc], a                                    ; $5f08: $02
    rra                                           ; $5f09: $1f
    ld [bc], a                                    ; $5f0a: $02
    xor a                                         ; $5f0b: $af
    ld [bc], a                                    ; $5f0c: $02
    ld d, a                                       ; $5f0d: $57
    ld [bc], a                                    ; $5f0e: $02
    xor e                                         ; $5f0f: $ab
    ld [bc], a                                    ; $5f10: $02
    ld d, a                                       ; $5f11: $57
    sub d                                         ; $5f12: $92
    dec bc                                        ; $5f13: $0b
    dec hl                                        ; $5f14: $2b
    rla                                           ; $5f15: $17
    ld d, a                                       ; $5f16: $57
    inc bc                                        ; $5f17: $03
    dec hl                                        ; $5f18: $2b
    dec b                                         ; $5f19: $05
    dec d                                         ; $5f1a: $15
    ld [$0402], sp                                ; $5f1b: $08 $02 $04
    ld de, $0a00                                  ; $5f1e: $11 $00 $0a
    inc b                                         ; $5f21: $04
    ld bc, $0200                                  ; $5f22: $01 $00 $02
    ld [bc], a                                    ; $5f25: $02
    db $eb                                        ; $5f26: $eb
    ld [bc], a                                    ; $5f27: $02
    push de                                       ; $5f28: $d5
    ld [bc], a                                    ; $5f29: $02
    and d                                         ; $5f2a: $a2
    ld [bc], a                                    ; $5f2b: $02
    pop bc                                        ; $5f2c: $c1
    ld [bc], a                                    ; $5f2d: $02
    and d                                         ; $5f2e: $a2
    ld [bc], a                                    ; $5f2f: $02
    pop bc                                        ; $5f30: $c1
    ld [bc], a                                    ; $5f31: $02
    and d                                         ; $5f32: $a2
    ld [bc], a                                    ; $5f33: $02
    push de                                       ; $5f34: $d5
    ld [bc], a                                    ; $5f35: $02
    db $eb                                        ; $5f36: $eb
    ld [bc], a                                    ; $5f37: $02
    rst $38                                       ; $5f38: $ff
    adc h                                         ; $5f39: $8c
    rst $28                                       ; $5f3a: $ef
    rst $38                                       ; $5f3b: $ff
    ld e, e                                       ; $5f3c: $5b
    rst $38                                       ; $5f3d: $ff
    ld b, l                                       ; $5f3e: $45
    cp d                                          ; $5f3f: $ba
    ld a, l                                       ; $5f40: $7d
    add d                                         ; $5f41: $82
    ld l, l                                       ; $5f42: $6d
    ld [de], a                                    ; $5f43: $12
    xor a                                         ; $5f44: $af
    db $10                                        ; $5f45: $10
    ld [bc], a                                    ; $5f46: $02
    db $fd                                        ; $5f47: $fd
    ld [bc], a                                    ; $5f48: $02
    cp $02                                        ; $5f49: $fe $02
    db $fd                                        ; $5f4b: $fd
    ld [bc], a                                    ; $5f4c: $02
    cp $02                                        ; $5f4d: $fe $02
    db $fd                                        ; $5f4f: $fd
    ld [bc], a                                    ; $5f50: $02
    ld a, [$fd02]                                 ; $5f51: $fa $02 $fd
    ld [bc], a                                    ; $5f54: $02
    ld a, [$f502]                                 ; $5f55: $fa $02 $f5
    ld [bc], a                                    ; $5f58: $02
    ld a, [$e58c]                                 ; $5f59: $fa $8c $e5
    push af                                       ; $5f5c: $f5
    xor b                                         ; $5f5d: $a8
    ld [$6590], a                                 ; $5f5e: $ea $90 $65
    ret nz                                        ; $5f61: $c0

    ld a, [hl+]                                   ; $5f62: $2a
    call nc, $6801                                ; $5f63: $d4 $01 $68
    add d                                         ; $5f66: $82
    ld [bc], a                                    ; $5f67: $02
    ld b, b                                       ; $5f68: $40
    ld [bc], a                                    ; $5f69: $02
    xor b                                         ; $5f6a: $a8
    ld [bc], a                                    ; $5f6b: $02
    ld b, h                                       ; $5f6c: $44
    ld [bc], a                                    ; $5f6d: $02
    xor e                                         ; $5f6e: $ab
    ld [bc], a                                    ; $5f6f: $02
    ld b, l                                       ; $5f70: $45
    ld [bc], a                                    ; $5f71: $02
    and e                                         ; $5f72: $a3
    ld [bc], a                                    ; $5f73: $02
    ld b, l                                       ; $5f74: $45
    sub d                                         ; $5f75: $92
    and b                                         ; $5f76: $a0
    and e                                         ; $5f77: $a3
    ld b, h                                       ; $5f78: $44
    ld b, l                                       ; $5f79: $45
    add c                                         ; $5f7a: $81
    add d                                         ; $5f7b: $82
    ld [bc], a                                    ; $5f7c: $02
    ld b, h                                       ; $5f7d: $44
    nop                                           ; $5f7e: $00
    adc d                                         ; $5f7f: $8a
    nop                                           ; $5f80: $00
    inc d                                         ; $5f81: $14
    nop                                           ; $5f82: $00
    adc b                                         ; $5f83: $88
    nop                                           ; $5f84: $00
    stop                                          ; $5f85: $10 $00
    jr nz, jr_0eb_5f8d                            ; $5f87: $20 $04

    ld bc, $0081                                  ; $5f89: $01 $81 $00
    ld [bc], a                                    ; $5f8c: $02

jr_0eb_5f8d:
    ld bc, $0012                                  ; $5f8d: $01 $12 $00
    add c                                         ; $5f90: $81
    add b                                         ; $5f91: $80
    ld b, $00                                     ; $5f92: $06 $00
    sub e                                         ; $5f94: $93
    dec e                                         ; $5f95: $1d
    and d                                         ; $5f96: $a2
    inc de                                        ; $5f97: $13
    ld c, h                                       ; $5f98: $4c
    add hl, bc                                    ; $5f99: $09
    ld h, $06                                     ; $5f9a: $26 $06
    ld de, $0a01                                  ; $5f9c: $11 $01 $0a
    nop                                           ; $5f9f: $00

jr_0eb_5fa0:
    rlca                                          ; $5fa0: $07
    ld [bc], a                                    ; $5fa1: $02
    add hl, bc                                    ; $5fa2: $09
    ld bc, $0004                                  ; $5fa3: $01 $04 $00
    ld [bc], a                                    ; $5fa6: $02
    ld bc, $0004                                  ; $5fa7: $01 $04 $00

jr_0eb_5faa:
    add c                                         ; $5faa: $81
    ld bc, $0008                                  ; $5fab: $01 $08 $00
    sbc [hl]                                      ; $5fae: $9e
    add h                                         ; $5faf: $84
    ld [bc], a                                    ; $5fb0: $02
    add h                                         ; $5fb1: $84
    ld bc, $0482                                  ; $5fb2: $01 $82 $04
    add b                                         ; $5fb5: $80
    dec b                                         ; $5fb6: $05
    add d                                         ; $5fb7: $82
    nop                                           ; $5fb8: $00
    add h                                         ; $5fb9: $84
    nop                                           ; $5fba: $00
    add d                                         ; $5fbb: $82
    nop                                           ; $5fbc: $00
    add b                                         ; $5fbd: $80
    inc b                                         ; $5fbe: $04
    nop                                           ; $5fbf: $00
    add b                                         ; $5fc0: $80
    nop                                           ; $5fc1: $00
    dec b                                         ; $5fc2: $05
    ld [bc], a                                    ; $5fc3: $02
    add b                                         ; $5fc4: $80
    inc b                                         ; $5fc5: $04
    nop                                           ; $5fc6: $00
    add b                                         ; $5fc7: $80
    ld [bc], a                                    ; $5fc8: $02
    nop                                           ; $5fc9: $00
    inc b                                         ; $5fca: $04
    nop                                           ; $5fcb: $00
    add b                                         ; $5fcc: $80
    ld [bc], a                                    ; $5fcd: $02
    nop                                           ; $5fce: $00
    add a                                         ; $5fcf: $87
    jr nz, jr_0eb_5fda                            ; $5fd0: $20 $08

    nop                                           ; $5fd2: $00
    ld de, $0220                                  ; $5fd3: $11 $20 $02
    inc b                                         ; $5fd6: $04
    ld [bc], a                                    ; $5fd7: $02
    nop                                           ; $5fd8: $00
    add d                                         ; $5fd9: $82

jr_0eb_5fda:
    ld [$0214], sp                                ; $5fda: $08 $14 $02
    nop                                           ; $5fdd: $00
    add h                                         ; $5fde: $84
    jr z, jr_0eb_5fe1                             ; $5fdf: $28 $00

jr_0eb_5fe1:
    db $10                                        ; $5fe1: $10
    jr nz, jr_0eb_5ff3                            ; $5fe2: $20 $0f

    nop                                           ; $5fe4: $00
    add l                                         ; $5fe5: $85
    jr nz, jr_0eb_5fe8                            ; $5fe6: $20 $00

jr_0eb_5fe8:
    ld b, c                                       ; $5fe8: $41
    nop                                           ; $5fe9: $00
    jr nz, jr_0eb_5ff2                            ; $5fea: $20 $06

    nop                                           ; $5fec: $00
    add d                                         ; $5fed: $82
    ld b, b                                       ; $5fee: $40
    jr nz, jr_0eb_5ff9                            ; $5fef: $20 $08

    nop                                           ; $5ff1: $00

jr_0eb_5ff2:
    adc b                                         ; $5ff2: $88

jr_0eb_5ff3:
    ld hl, $8000                                  ; $5ff3: $21 $00 $80
    ld bc, $0020                                  ; $5ff6: $01 $20 $00

jr_0eb_5ff9:
    jr nz, jr_0eb_5ffb                            ; $5ff9: $20 $00

jr_0eb_5ffb:
    ld [bc], a                                    ; $5ffb: $02
    ld bc, $0002                                  ; $5ffc: $01 $02 $00
    add c                                         ; $5fff: $81
    ld bc, $000d                                  ; $6000: $01 $0d $00
    add c                                         ; $6003: $81
    ld bc, $0003                                  ; $6004: $01 $03 $00
    add c                                         ; $6007: $81
    ld bc, $000a                                  ; $6008: $01 $0a $00
    add c                                         ; $600b: $81
    ld bc, $0006                                  ; $600c: $01 $06 $00
    add c                                         ; $600f: $81
    jr nz, jr_0eb_6017                            ; $6010: $20 $05

    nop                                           ; $6012: $00
    add c                                         ; $6013: $81
    ld bc, $0003                                  ; $6014: $01 $03 $00

jr_0eb_6017:
    add e                                         ; $6017: $83
    ld b, b                                       ; $6018: $40
    nop                                           ; $6019: $00
    ld b, b                                       ; $601a: $40
    ld [bc], a                                    ; $601b: $02
    nop                                           ; $601c: $00
    add e                                         ; $601d: $83
    jr nz, jr_0eb_5fa0                            ; $601e: $20 $80

    ld b, b                                       ; $6020: $40
    ld [bc], a                                    ; $6021: $02
    nop                                           ; $6022: $00
    add c                                         ; $6023: $81
    ld b, b                                       ; $6024: $40
    inc bc                                        ; $6025: $03
    nop                                           ; $6026: $00
    add d                                         ; $6027: $82
    jr nz, jr_0eb_5faa                            ; $6028: $20 $80

    inc b                                         ; $602a: $04
    nop                                           ; $602b: $00
    add a                                         ; $602c: $87
    inc b                                         ; $602d: $04
    nop                                           ; $602e: $00
    inc b                                         ; $602f: $04
    nop                                           ; $6030: $00
    ld [bc], a                                    ; $6031: $02
    nop                                           ; $6032: $00
    inc b                                         ; $6033: $04
    inc bc                                        ; $6034: $03
    nop                                           ; $6035: $00
    add c                                         ; $6036: $81
    ld [bc], a                                    ; $6037: $02
    inc bc                                        ; $6038: $03

jr_0eb_6039:
    nop                                           ; $6039: $00
    add e                                         ; $603a: $83
    inc b                                         ; $603b: $04
    ld bc, $0304                                  ; $603c: $01 $04 $03
    nop                                           ; $603f: $00
    add c                                         ; $6040: $81
    ld [bc], a                                    ; $6041: $02
    ld [bc], a                                    ; $6042: $02
    nop                                           ; $6043: $00
    add c                                         ; $6044: $81
    ld bc, $0005                                  ; $6045: $01 $05 $00
    rst $38                                       ; $6048: $ff
    dec e                                         ; $6049: $1d
    inc c                                         ; $604a: $0c
    ld sp, hl                                     ; $604b: $f9
    inc c                                         ; $604c: $0c
    nop                                           ; $604d: $00
    inc de                                        ; $604e: $13
    ld [$08f1], sp                                ; $604f: $08 $f1 $08
    ld sp, hl                                     ; $6052: $f9
    ld [$0805], sp                                ; $6053: $08 $05 $08
    dec c                                         ; $6056: $0d
    inc c                                         ; $6057: $0c
    ld c, $18                                     ; $6058: $0e $18

jr_0eb_605a:
    ld sp, hl                                     ; $605a: $f9
    jr @+$07                                      ; $605b: $18 $05

    jr z, @+$01                                   ; $605d: $28 $ff

    jr c, jr_0eb_605a                             ; $605f: $38 $f9

    jr c, jr_0eb_6066                             ; $6061: $38 $03

    ld c, b                                       ; $6063: $48
    or $48                                        ; $6064: $f6 $48

jr_0eb_6066:
    ld bc, $0302                                  ; $6066: $01 $02 $03
    ld [bc], a                                    ; $6069: $02
    rrca                                          ; $606a: $0f
    ld [bc], a                                    ; $606b: $02
    rla                                           ; $606c: $17
    ld [bc], a                                    ; $606d: $02
    xor e                                         ; $606e: $ab
    ld [bc], a                                    ; $606f: $02
    ld d, a                                       ; $6070: $57
    ld [bc], a                                    ; $6071: $02
    dec hl                                        ; $6072: $2b
    ld [bc], a                                    ; $6073: $02
    ld d, a                                       ; $6074: $57
    sub b                                         ; $6075: $90
    dec bc                                        ; $6076: $0b
    dec hl                                        ; $6077: $2b
    ld de, $0215                                  ; $6078: $11 $15 $02
    ld a, [bc]                                    ; $607b: $0a
    nop                                           ; $607c: $00
    dec d                                         ; $607d: $15
    nop                                           ; $607e: $00
    ld a, [bc]                                    ; $607f: $0a
    nop                                           ; $6080: $00
    dec b                                         ; $6081: $05
    nop                                           ; $6082: $00
    ld [bc], a                                    ; $6083: $02
    nop                                           ; $6084: $00
    ld bc, $0002                                  ; $6085: $01 $02 $00
    ld [bc], a                                    ; $6088: $02
    and d                                         ; $6089: $a2
    ld [bc], a                                    ; $608a: $02
    pop bc                                        ; $608b: $c1
    ld [bc], a                                    ; $608c: $02
    and d                                         ; $608d: $a2
    ld [bc], a                                    ; $608e: $02
    pop bc                                        ; $608f: $c1
    ld [bc], a                                    ; $6090: $02
    and d                                         ; $6091: $a2
    ld [bc], a                                    ; $6092: $02
    push de                                       ; $6093: $d5
    ld [bc], a                                    ; $6094: $02
    db $eb                                        ; $6095: $eb
    inc b                                         ; $6096: $04
    rst $38                                       ; $6097: $ff
    adc [hl]                                      ; $6098: $8e
    ld a, a                                       ; $6099: $7f
    rst $38                                       ; $609a: $ff
    db $dd                                        ; $609b: $dd
    rst $38                                       ; $609c: $ff
    add hl, sp                                    ; $609d: $39
    add $47                                       ; $609e: $c6 $47
    jr c, jr_0eb_6039                             ; $60a0: $38 $97

    jr z, jr_0eb_60bb                             ; $60a2: $28 $17

    ld l, b                                       ; $60a4: $68
    dec bc                                        ; $60a5: $0b
    or h                                          ; $60a6: $b4
    ld [bc], a                                    ; $60a7: $02
    db $fd                                        ; $60a8: $fd
    ld [bc], a                                    ; $60a9: $02
    cp $02                                        ; $60aa: $fe $02
    db $fd                                        ; $60ac: $fd
    ld [bc], a                                    ; $60ad: $02
    ld a, [$fd02]                                 ; $60ae: $fa $02 $fd
    ld [bc], a                                    ; $60b1: $02
    ld a, [$f502]                                 ; $60b2: $fa $02 $f5
    ld [bc], a                                    ; $60b5: $02
    ld a, [$f502]                                 ; $60b6: $fa $02 $f5
    adc [hl]                                      ; $60b9: $8e
    xor b                                         ; $60ba: $a8

jr_0eb_60bb:
    ld [$f5d1], a                                 ; $60bb: $ea $d1 $f5
    ld b, b                                       ; $60be: $40
    xor d                                         ; $60bf: $aa
    ret nc                                        ; $60c0: $d0

    dec b                                         ; $60c1: $05
    jp z, $d020                                   ; $60c2: $ca $20 $d0

    inc b                                         ; $60c5: $04
    and b                                         ; $60c6: $a0
    ld [$4002], sp                                ; $60c7: $08 $02 $40
    ld [bc], a                                    ; $60ca: $02
    xor b                                         ; $60cb: $a8
    ld [bc], a                                    ; $60cc: $02
    ld b, h                                       ; $60cd: $44
    ld [bc], a                                    ; $60ce: $02
    and e                                         ; $60cf: $a3
    ld [bc], a                                    ; $60d0: $02
    ld b, l                                       ; $60d1: $45
    add d                                         ; $60d2: $82
    and d                                         ; $60d3: $a2
    and e                                         ; $60d4: $a3
    ld [bc], a                                    ; $60d5: $02
    ld b, l                                       ; $60d6: $45
    sub d                                         ; $60d7: $92
    add d                                         ; $60d8: $82
    add e                                         ; $60d9: $83
    ld b, b                                       ; $60da: $40
    ld b, [hl]                                    ; $60db: $46
    nop                                           ; $60dc: $00
    adc d                                         ; $60dd: $8a
    nop                                           ; $60de: $00
    inc d                                         ; $60df: $14
    nop                                           ; $60e0: $00
    adc b                                         ; $60e1: $88
    nop                                           ; $60e2: $00
    stop                                          ; $60e3: $10 $00
    jr nz, jr_0eb_60e7                            ; $60e5: $20 $00

jr_0eb_60e7:
    ld b, b                                       ; $60e7: $40
    nop                                           ; $60e8: $00
    add b                                         ; $60e9: $80
    inc b                                         ; $60ea: $04
    ld bc, $001c                                  ; $60eb: $01 $1c $00
    adc l                                         ; $60ee: $8d
    ld d, $49                                     ; $60ef: $16 $49
    inc bc                                        ; $60f1: $03
    inc l                                         ; $60f2: $2c
    inc bc                                        ; $60f3: $03
    inc d                                         ; $60f4: $14
    dec b                                         ; $60f5: $05
    ld a, [bc]                                    ; $60f6: $0a
    ld bc, $0916                                  ; $60f7: $01 $16 $09
    ld [bc], a                                    ; $60fa: $02
    dec b                                         ; $60fb: $05
    ld [bc], a                                    ; $60fc: $02
    nop                                           ; $60fd: $00
    adc d                                         ; $60fe: $8a
    ld [bc], a                                    ; $60ff: $02
    nop                                           ; $6100: $00
    ld bc, $0200                                  ; $6101: $01 $00 $02
    nop                                           ; $6104: $00
    ld bc, $0200                                  ; $6105: $01 $00 $02
    ld bc, $0002                                  ; $6108: $01 $02 $00
    add c                                         ; $610b: $81
    ld [bc], a                                    ; $610c: $02
    inc b                                         ; $610d: $04
    nop                                           ; $610e: $00
    sbc l                                         ; $610f: $9d
    add b                                         ; $6110: $80
    ld d, c                                       ; $6111: $51
    add b                                         ; $6112: $80
    ld [hl+], a                                   ; $6113: $22
    ld b, b                                       ; $6114: $40
    inc b                                         ; $6115: $04
    ld [$0082], sp                                ; $6116: $08 $82 $00
    ld d, h                                       ; $6119: $54
    nop                                           ; $611a: $00
    adc b                                         ; $611b: $88
    nop                                           ; $611c: $00
    db $10                                        ; $611d: $10
    add b                                         ; $611e: $80
    jr nz, jr_0eb_6121                            ; $611f: $20 $00

jr_0eb_6121:
    ld b, b                                       ; $6121: $40
    add b                                         ; $6122: $80
    jr nz, jr_0eb_6125                            ; $6123: $20 $00

jr_0eb_6125:
    ld b, b                                       ; $6125: $40
    nop                                           ; $6126: $00
    add b                                         ; $6127: $80
    ld b, b                                       ; $6128: $40
    nop                                           ; $6129: $00
    add b                                         ; $612a: $80
    nop                                           ; $612b: $00
    ld b, b                                       ; $612c: $40
    ld [bc], a                                    ; $612d: $02
    nop                                           ; $612e: $00
    add [hl]                                      ; $612f: $86
    add b                                         ; $6130: $80
    ld bc, $0200                                  ; $6131: $01 $00 $02
    nop                                           ; $6134: $00
    ld b, b                                       ; $6135: $40
    ld [bc], a                                    ; $6136: $02
    nop                                           ; $6137: $00
    add e                                         ; $6138: $83
    add b                                         ; $6139: $80
    nop                                           ; $613a: $00
    ld b, b                                       ; $613b: $40
    ld [bc], a                                    ; $613c: $02
    nop                                           ; $613d: $00
    add c                                         ; $613e: $81
    ld b, b                                       ; $613f: $40
    ld [bc], a                                    ; $6140: $02
    nop                                           ; $6141: $00
    add d                                         ; $6142: $82
    ld bc, $0240                                  ; $6143: $01 $40 $02
    nop                                           ; $6146: $00
    adc [hl]                                      ; $6147: $8e
    add b                                         ; $6148: $80
    ld b, b                                       ; $6149: $40
    nop                                           ; $614a: $00
    ld b, b                                       ; $614b: $40
    nop                                           ; $614c: $00
    add b                                         ; $614d: $80
    ld [bc], a                                    ; $614e: $02
    ld b, b                                       ; $614f: $40
    ld bc, $4000                                  ; $6150: $01 $00 $40
    nop                                           ; $6153: $00
    add d                                         ; $6154: $82
    ld bc, $0002                                  ; $6155: $01 $02 $00
    add c                                         ; $6158: $81
    ld [bc], a                                    ; $6159: $02
    ld b, $00                                     ; $615a: $06 $00
    add [hl]                                      ; $615c: $86
    ld [bc], a                                    ; $615d: $02
    ld bc, $0100                                  ; $615e: $01 $00 $01
    nop                                           ; $6161: $00
    ld [bc], a                                    ; $6162: $02
    inc bc                                        ; $6163: $03
    nop                                           ; $6164: $00
    add [hl]                                      ; $6165: $86
    ld a, [bc]                                    ; $6166: $0a
    nop                                           ; $6167: $00
    ld [bc], a                                    ; $6168: $02
    nop                                           ; $6169: $00
    ld bc, $0208                                  ; $616a: $01 $08 $02
    nop                                           ; $616d: $00
    adc c                                         ; $616e: $89
    inc de                                        ; $616f: $13
    ld [bc], a                                    ; $6170: $02
    ld [$1000], sp                                ; $6171: $08 $00 $10
    jr nz, @+$12                                  ; $6174: $20 $10

    nop                                           ; $6176: $00
    jr nz, jr_0eb_617b                            ; $6177: $20 $02

    nop                                           ; $6179: $00
    add h                                         ; $617a: $84

jr_0eb_617b:
    db $10                                        ; $617b: $10
    jr nz, jr_0eb_617e                            ; $617c: $20 $00

jr_0eb_617e:
    jr nz, @+$05                                  ; $617e: $20 $03

    nop                                           ; $6180: $00
    add h                                         ; $6181: $84
    jr nz, jr_0eb_6184                            ; $6182: $20 $00

jr_0eb_6184:
    db $10                                        ; $6184: $10
    jr z, jr_0eb_6189                             ; $6185: $28 $02

    nop                                           ; $6187: $00
    adc b                                         ; $6188: $88

jr_0eb_6189:
    ld [$1000], sp                                ; $6189: $08 $00 $10
    nop                                           ; $618c: $00
    inc b                                         ; $618d: $04
    stop                                          ; $618e: $10 $00
    inc b                                         ; $6190: $04
    ld [bc], a                                    ; $6191: $02
    nop                                           ; $6192: $00
    add a                                         ; $6193: $87
    ld de, $1004                                  ; $6194: $11 $04 $10
    nop                                           ; $6197: $00
    ld bc, $0100                                  ; $6198: $01 $00 $01
    dec e                                         ; $619b: $1d
    nop                                           ; $619c: $00
    add c                                         ; $619d: $81
    ld bc, $0003                                  ; $619e: $01 $03 $00
    add c                                         ; $61a1: $81
    inc b                                         ; $61a2: $04
    ld a, [de]                                    ; $61a3: $1a
    nop                                           ; $61a4: $00
    rst $38                                       ; $61a5: $ff
    add hl, de                                    ; $61a6: $19
    ld a, [bc]                                    ; $61a7: $0a
    ld sp, hl                                     ; $61a8: $f9
    inc c                                         ; $61a9: $0c

jr_0eb_61aa:
    nop                                           ; $61aa: $00
    inc de                                        ; $61ab: $13
    ld a, [bc]                                    ; $61ac: $0a
    ld a, [c]                                     ; $61ad: $f2
    ld a, [bc]                                    ; $61ae: $0a
    ld sp, hl                                     ; $61af: $f9
    ld a, [bc]                                    ; $61b0: $0a
    dec b                                         ; $61b1: $05
    ld a, [bc]                                    ; $61b2: $0a
    dec c                                         ; $61b3: $0d
    ld a, [de]                                    ; $61b4: $1a
    ld sp, hl                                     ; $61b5: $f9
    ld a, [de]                                    ; $61b6: $1a
    inc b                                         ; $61b7: $04
    ld a, [hl+]                                   ; $61b8: $2a
    rst $38                                       ; $61b9: $ff
    dec a                                         ; $61ba: $3d
    ld sp, hl                                     ; $61bb: $f9
    ld a, [hl-]                                   ; $61bc: $3a
    ld bc, $ff4a                                  ; $61bd: $01 $4a $ff
    ld [bc], a                                    ; $61c0: $02
    rlca                                          ; $61c1: $07
    ld [bc], a                                    ; $61c2: $02
    rla                                           ; $61c3: $17
    ld [bc], a                                    ; $61c4: $02
    xor a                                         ; $61c5: $af
    ld [bc], a                                    ; $61c6: $02
    ld d, a                                       ; $61c7: $57
    ld [bc], a                                    ; $61c8: $02
    xor a                                         ; $61c9: $af
    add d                                         ; $61ca: $82
    rla                                           ; $61cb: $17
    ld d, a                                       ; $61cc: $57
    ld [bc], a                                    ; $61cd: $02
    dec hl                                        ; $61ce: $2b
    adc l                                         ; $61cf: $8d
    dec b                                         ; $61d0: $05
    dec d                                         ; $61d1: $15
    ld a, [bc]                                    ; $61d2: $0a
    dec hl                                        ; $61d3: $2b
    ld bc, $0a15                                  ; $61d4: $01 $15 $0a
    nop                                           ; $61d7: $00
    inc b                                         ; $61d8: $04
    ld bc, $0200                                  ; $61d9: $01 $00 $02
    ld bc, $0005                                  ; $61dc: $01 $05 $00
    ld [bc], a                                    ; $61df: $02
    ld [hl+], a                                   ; $61e0: $22
    ld [bc], a                                    ; $61e1: $02
    ld b, c                                       ; $61e2: $41
    ld [bc], a                                    ; $61e3: $02
    ld [hl+], a                                   ; $61e4: $22
    ld [bc], a                                    ; $61e5: $02
    ld d, l                                       ; $61e6: $55
    ld [bc], a                                    ; $61e7: $02
    ld l, e                                       ; $61e8: $6b
    ld b, $7f                                     ; $61e9: $06 $7f
    sub b                                         ; $61eb: $90
    ld l, a                                       ; $61ec: $6f
    ld a, a                                       ; $61ed: $7f
    ld e, e                                       ; $61ee: $5b
    ld a, a                                       ; $61ef: $7f
    dec bc                                        ; $61f0: $0b
    ld [hl], h                                    ; $61f1: $74
    dec h                                         ; $61f2: $25
    ld a, [de]                                    ; $61f3: $1a
    ld e, a                                       ; $61f4: $5f
    jr nz, jr_0eb_6221                            ; $61f5: $20 $2a

    dec d                                         ; $61f7: $15
    add hl, bc                                    ; $61f8: $09
    ld d, [hl]                                    ; $61f9: $56
    ld c, $21                                     ; $61fa: $0e $21
    ld [bc], a                                    ; $61fc: $02
    db $fd                                        ; $61fd: $fd
    ld [bc], a                                    ; $61fe: $02
    ld a, [$fd02]                                 ; $61ff: $fa $02 $fd
    ld [bc], a                                    ; $6202: $02
    ld a, [$f502]                                 ; $6203: $fa $02 $f5
    ld [bc], a                                    ; $6206: $02
    ld a, [$f502]                                 ; $6207: $fa $02 $f5
    ld [bc], a                                    ; $620a: $02
    ld [$d590], a                                 ; $620b: $ea $90 $d5
    push af                                       ; $620e: $f5
    and b                                         ; $620f: $a0
    ld [$15c0], a                                 ; $6210: $ea $c0 $15
    ld [c], a                                     ; $6213: $e2
    ld [$14c0], sp                                ; $6214: $08 $c0 $14
    add b                                         ; $6217: $80
    jr z, jr_0eb_61aa                             ; $6218: $28 $90

    ld b, c                                       ; $621a: $41
    add d                                         ; $621b: $82
    jr nz, jr_0eb_6220                            ; $621c: $20 $02

    ld b, b                                       ; $621e: $40
    ld [bc], a                                    ; $621f: $02

jr_0eb_6220:
    and b                                         ; $6220: $a0

jr_0eb_6221:
    ld [bc], a                                    ; $6221: $02
    ld b, h                                       ; $6222: $44
    ld [bc], a                                    ; $6223: $02
    and e                                         ; $6224: $a3
    ld [bc], a                                    ; $6225: $02
    ld b, l                                       ; $6226: $45
    ld [bc], a                                    ; $6227: $02
    add e                                         ; $6228: $83
    ld [bc], a                                    ; $6229: $02
    ld b, [hl]                                    ; $622a: $46

Call_0eb_622b:
    adc [hl]                                      ; $622b: $8e
    ld [$008a], sp                                ; $622c: $08 $8a $00
    inc d                                         ; $622f: $14
    nop                                           ; $6230: $00
    adc b                                         ; $6231: $88
    nop                                           ; $6232: $00
    stop                                          ; $6233: $10 $00
    jr nz, jr_0eb_6237                            ; $6235: $20 $00

jr_0eb_6237:
    ld b, b                                       ; $6237: $40
    nop                                           ; $6238: $00
    add b                                         ; $6239: $80
    inc b                                         ; $623a: $04
    nop                                           ; $623b: $00
    adc l                                         ; $623c: $8d
    inc bc                                        ; $623d: $03
    inc d                                         ; $623e: $14
    ld [bc], a                                    ; $623f: $02
    dec c                                         ; $6240: $0d
    ld bc, $0116                                  ; $6241: $01 $16 $01
    ld a, [bc]                                    ; $6244: $0a
    ld bc, $0004                                  ; $6245: $01 $04 $00
    ld [bc], a                                    ; $6248: $02
    ld bc, $0002                                  ; $6249: $01 $02 $00
    add d                                         ; $624c: $82
    ld [bc], a                                    ; $624d: $02
    ld bc, $0002                                  ; $624e: $01 $02 $00
    add e                                         ; $6251: $83
    ld [bc], a                                    ; $6252: $02
    nop                                           ; $6253: $00
    ld bc, $0002                                  ; $6254: $01 $02 $00
    add c                                         ; $6257: $81
    ld bc, $0004                                  ; $6258: $01 $04 $00
    sub [hl]                                      ; $625b: $96
    ld bc, $0200                                  ; $625c: $01 $00 $02
    nop                                           ; $625f: $00
    ld [hl+], a                                   ; $6260: $22
    ld b, l                                       ; $6261: $45
    nop                                           ; $6262: $00
    ld [$0422], sp                                ; $6263: $08 $22 $04
    ld b, b                                       ; $6266: $40
    nop                                           ; $6267: $00
    ld [$5000], sp                                ; $6268: $08 $00 $50
    nop                                           ; $626b: $00
    jr nz, jr_0eb_626e                            ; $626c: $20 $00

jr_0eb_626e:
    ld d, b                                       ; $626e: $50
    nop                                           ; $626f: $00
    jr nz, jr_0eb_62b2                            ; $6270: $20 $40

    inc b                                         ; $6272: $04
    nop                                           ; $6273: $00
    add l                                         ; $6274: $85
    ld b, b                                       ; $6275: $40
    nop                                           ; $6276: $00
    jr nz, jr_0eb_6279                            ; $6277: $20 $00

jr_0eb_6279:
    ld b, b                                       ; $6279: $40
    dec b                                         ; $627a: $05
    nop                                           ; $627b: $00
    add c                                         ; $627c: $81
    ld bc, $0005                                  ; $627d: $01 $05 $00
    add a                                         ; $6280: $87
    ld b, b                                       ; $6281: $40
    nop                                           ; $6282: $00
    ld b, b                                       ; $6283: $40
    nop                                           ; $6284: $00
    add c                                         ; $6285: $81
    nop                                           ; $6286: $00
    ld b, b                                       ; $6287: $40
    inc bc                                        ; $6288: $03
    nop                                           ; $6289: $00
    sub e                                         ; $628a: $93
    ld b, b                                       ; $628b: $40
    ret nz                                        ; $628c: $c0

    nop                                           ; $628d: $00
    add b                                         ; $628e: $80
    nop                                           ; $628f: $00
    ld b, b                                       ; $6290: $40
    nop                                           ; $6291: $00
    ld b, b                                       ; $6292: $40
    nop                                           ; $6293: $00
    add b                                         ; $6294: $80
    ld [bc], a                                    ; $6295: $02
    nop                                           ; $6296: $00
    ld bc, $0200                                  ; $6297: $01 $00 $02
    nop                                           ; $629a: $00
    add hl, bc                                    ; $629b: $09
    nop                                           ; $629c: $00
    ld [bc], a                                    ; $629d: $02
    inc bc                                        ; $629e: $03
    nop                                           ; $629f: $00
    add h                                         ; $62a0: $84
    ld [bc], a                                    ; $62a1: $02
    inc bc                                        ; $62a2: $03
    nop                                           ; $62a3: $00
    ld bc, $0002                                  ; $62a4: $01 $02 $00
    add c                                         ; $62a7: $81
    ld [bc], a                                    ; $62a8: $02
    inc bc                                        ; $62a9: $03
    nop                                           ; $62aa: $00

Call_0eb_62ab:
    adc b                                         ; $62ab: $88
    ld a, [bc]                                    ; $62ac: $0a
    nop                                           ; $62ad: $00
    ld [bc], a                                    ; $62ae: $02
    ld bc, $0800                                  ; $62af: $01 $00 $08

jr_0eb_62b2:
    nop                                           ; $62b2: $00
    ld a, [bc]                                    ; $62b3: $0a
    ld [bc], a                                    ; $62b4: $02
    nop                                           ; $62b5: $00
    add c                                         ; $62b6: $81
    ld bc, $0005                                  ; $62b7: $01 $05 $00
    add e                                         ; $62ba: $83
    inc b                                         ; $62bb: $04
    nop                                           ; $62bc: $00
    ld [$0003], sp                                ; $62bd: $08 $03 $00
    add c                                         ; $62c0: $81
    inc b                                         ; $62c1: $04
    inc bc                                        ; $62c2: $03
    nop                                           ; $62c3: $00
    add d                                         ; $62c4: $82
    inc c                                         ; $62c5: $0c
    ld [$0004], sp                                ; $62c6: $08 $04 $00
    adc [hl]                                      ; $62c9: $8e
    ld [$0400], sp                                ; $62ca: $08 $00 $04
    nop                                           ; $62cd: $00
    ld [bc], a                                    ; $62ce: $02
    nop                                           ; $62cf: $00
    ld [bc], a                                    ; $62d0: $02
    nop                                           ; $62d1: $00
    inc b                                         ; $62d2: $04
    nop                                           ; $62d3: $00
    ld bc, $0400                                  ; $62d4: $01 $00 $04
    nop                                           ; $62d7: $00
    ld [bc], a                                    ; $62d8: $02
    ld bc, $001f                                  ; $62d9: $01 $1f $00
    rst $38                                       ; $62dc: $ff
    rla                                           ; $62dd: $17
    add hl, bc                                    ; $62de: $09
    ld sp, hl                                     ; $62df: $f9
    inc c                                         ; $62e0: $0c
    nop                                           ; $62e1: $00
    inc de                                        ; $62e2: $13
    dec bc                                        ; $62e3: $0b
    ld a, [c]                                     ; $62e4: $f2
    dec bc                                        ; $62e5: $0b
    ld sp, hl                                     ; $62e6: $f9
    dec bc                                        ; $62e7: $0b
    dec b                                         ; $62e8: $05
    dec bc                                        ; $62e9: $0b
    dec c                                         ; $62ea: $0d
    dec de                                        ; $62eb: $1b
    ld sp, hl                                     ; $62ec: $f9
    dec de                                        ; $62ed: $1b
    inc bc                                        ; $62ee: $03
    dec l                                         ; $62ef: $2d
    rst $38                                       ; $62f0: $ff
    dec a                                         ; $62f1: $3d
    ld sp, hl                                     ; $62f2: $f9
    dec a                                         ; $62f3: $3d
    inc b                                         ; $62f4: $04
    ld [bc], a                                    ; $62f5: $02
    rlca                                          ; $62f6: $07
    ld [bc], a                                    ; $62f7: $02
    cpl                                           ; $62f8: $2f
    ld [bc], a                                    ; $62f9: $02
    ld d, a                                       ; $62fa: $57
    ld [bc], a                                    ; $62fb: $02
    xor a                                         ; $62fc: $af
    ld [bc], a                                    ; $62fd: $02
    ld d, a                                       ; $62fe: $57
    ld [bc], a                                    ; $62ff: $02
    dec hl                                        ; $6300: $2b
    ld [bc], a                                    ; $6301: $02
    dec d                                         ; $6302: $15
    adc h                                         ; $6303: $8c
    dec bc                                        ; $6304: $0b
    dec hl                                        ; $6305: $2b
    db $10                                        ; $6306: $10
    dec d                                         ; $6307: $15
    ld [bc], a                                    ; $6308: $02
    ld a, [bc]                                    ; $6309: $0a
    ld bc, $0004                                  ; $630a: $01 $04 $00
    ld [bc], a                                    ; $630d: $02
    nop                                           ; $630e: $00
    ld bc, $0006                                  ; $630f: $01 $06 $00
    ld [bc], a                                    ; $6312: $02
    ld b, c                                       ; $6313: $41
    ld [bc], a                                    ; $6314: $02
    ld [hl+], a                                   ; $6315: $22
    ld [bc], a                                    ; $6316: $02
    ld d, l                                       ; $6317: $55
    ld [bc], a                                    ; $6318: $02
    ld l, e                                       ; $6319: $6b
    ld [$897f], sp                                ; $631a: $08 $7f $89
    ld [hl], a                                    ; $631d: $77
    ld a, a                                       ; $631e: $7f
    ld e, l                                       ; $631f: $5d
    ld a, a                                       ; $6320: $7f
    db $10                                        ; $6321: $10
    cpl                                           ; $6322: $2f
    ld d, a                                       ; $6323: $57
    jr z, jr_0eb_6361                             ; $6324: $28 $3b

    ld [bc], a                                    ; $6326: $02
    inc b                                         ; $6327: $04
    add l                                         ; $6328: $85
    ld e, e                                       ; $6329: $5b
    ld [hl+], a                                   ; $632a: $22
    dec c                                         ; $632b: $0d
    rlca                                          ; $632c: $07
    db $10                                        ; $632d: $10
    ld [bc], a                                    ; $632e: $02
    ld a, [$fd02]                                 ; $632f: $fa $02 $fd
    ld [bc], a                                    ; $6332: $02
    ld a, [$f502]                                 ; $6333: $fa $02 $f5
    ld [bc], a                                    ; $6336: $02
    ld a, [$f502]                                 ; $6337: $fa $02 $f5
    ld [bc], a                                    ; $633a: $02
    ld [$f502], a                                 ; $633b: $ea $02 $f5
    sub b                                         ; $633e: $90
    xor b                                         ; $633f: $a8
    ld [$d544], a                                 ; $6340: $ea $44 $d5
    nop                                           ; $6343: $00
    ld [$d400], a                                 ; $6344: $ea $00 $d4
    ld [$40a0], sp                                ; $6347: $08 $a0 $40
    sub c                                         ; $634a: $91
    nop                                           ; $634b: $00
    and d                                         ; $634c: $a2
    nop                                           ; $634d: $00
    ld b, h                                       ; $634e: $44
    ld [bc], a                                    ; $634f: $02
    add b                                         ; $6350: $80
    ld [bc], a                                    ; $6351: $02
    ld b, b                                       ; $6352: $40
    ld [bc], a                                    ; $6353: $02
    and d                                         ; $6354: $a2
    ld [bc], a                                    ; $6355: $02
    ld b, l                                       ; $6356: $45
    ld [bc], a                                    ; $6357: $02
    add e                                         ; $6358: $83
    ld [bc], a                                    ; $6359: $02
    ld b, a                                       ; $635a: $47
    adc l                                         ; $635b: $8d
    add d                                         ; $635c: $82
    adc d                                         ; $635d: $8a
    inc d                                         ; $635e: $14
    ld d, $80                                     ; $635f: $16 $80

jr_0eb_6361:
    adc b                                         ; $6361: $88
    nop                                           ; $6362: $00
    stop                                          ; $6363: $10 $00
    jr nz, jr_0eb_6367                            ; $6365: $20 $00

jr_0eb_6367:
    ld b, b                                       ; $6367: $40
    add b                                         ; $6368: $80
    rlca                                          ; $6369: $07
    nop                                           ; $636a: $00
    add l                                         ; $636b: $85
    dec b                                         ; $636c: $05
    ld a, [bc]                                    ; $636d: $0a
    ld [bc], a                                    ; $636e: $02
    dec d                                         ; $636f: $15
    ld a, [bc]                                    ; $6370: $0a
    ld [bc], a                                    ; $6371: $02
    ld bc, $0489                                  ; $6372: $01 $89 $04
    nop                                           ; $6375: $00
    ld [bc], a                                    ; $6376: $02
    nop                                           ; $6377: $00
    ld bc, $0200                                  ; $6378: $01 $00 $02
    nop                                           ; $637b: $00
    ld bc, $0002                                  ; $637c: $01 $02 $00

Call_0eb_637f:
    add c                                         ; $637f: $81
    ld bc, $0004                                  ; $6380: $01 $04 $00
    add c                                         ; $6383: $81
    ld bc, $0007                                  ; $6384: $01 $07 $00
    add d                                         ; $6387: $82
    ld bc, $0222                                  ; $6388: $01 $22 $02
    nop                                           ; $638b: $00
    add h                                         ; $638c: $84
    dec d                                         ; $638d: $15
    jr nz, jr_0eb_6392                            ; $638e: $20 $02

    inc b                                         ; $6390: $04
    ld [bc], a                                    ; $6391: $02

jr_0eb_6392:
    nop                                           ; $6392: $00
    adc b                                         ; $6393: $88
    jr z, jr_0eb_63a6                             ; $6394: $28 $10

    nop                                           ; $6396: $00
    jr nz, jr_0eb_63a1                            ; $6397: $20 $08

    nop                                           ; $6399: $00
    db $10                                        ; $639a: $10
    jr nz, jr_0eb_639f                            ; $639b: $20 $02

    nop                                           ; $639d: $00
    add c                                         ; $639e: $81

jr_0eb_639f:
    db $10                                        ; $639f: $10
    dec b                                         ; $63a0: $05

jr_0eb_63a1:
    nop                                           ; $63a1: $00
    add d                                         ; $63a2: $82
    jr nz, jr_0eb_63b5                            ; $63a3: $20 $10

    ld [bc], a                                    ; $63a5: $02

jr_0eb_63a6:
    nop                                           ; $63a6: $00
    add c                                         ; $63a7: $81
    jr nz, jr_0eb_63ad                            ; $63a8: $20 $03

    nop                                           ; $63aa: $00
    add h                                         ; $63ab: $84
    ld b, b                                       ; $63ac: $40

jr_0eb_63ad:
    nop                                           ; $63ad: $00
    add b                                         ; $63ae: $80
    nop                                           ; $63af: $00
    ld [bc], a                                    ; $63b0: $02
    ld b, b                                       ; $63b1: $40
    inc b                                         ; $63b2: $04
    nop                                           ; $63b3: $00
    add a                                         ; $63b4: $87

jr_0eb_63b5:
    ld [bc], a                                    ; $63b5: $02
    ld b, b                                       ; $63b6: $40
    nop                                           ; $63b7: $00
    ld [bc], a                                    ; $63b8: $02
    add b                                         ; $63b9: $80
    nop                                           ; $63ba: $00
    ld b, b                                       ; $63bb: $40
    inc bc                                        ; $63bc: $03
    nop                                           ; $63bd: $00
    add c                                         ; $63be: $81
    ld [bc], a                                    ; $63bf: $02
    inc bc                                        ; $63c0: $03
    nop                                           ; $63c1: $00
    ld [bc], a                                    ; $63c2: $02
    ld bc, $0281                                  ; $63c3: $01 $81 $02
    ld [bc], a                                    ; $63c6: $02
    nop                                           ; $63c7: $00
    add l                                         ; $63c8: $85
    ld b, b                                       ; $63c9: $40
    ld bc, $0200                                  ; $63ca: $01 $00 $02
    ld bc, $0002                                  ; $63cd: $01 $02 $00
    add c                                         ; $63d0: $81
    ld [bc], a                                    ; $63d1: $02
    inc bc                                        ; $63d2: $03
    nop                                           ; $63d3: $00
    add h                                         ; $63d4: $84
    ld bc, $0002                                  ; $63d5: $01 $02 $00
    ld [bc], a                                    ; $63d8: $02
    ld [bc], a                                    ; $63d9: $02
    ld bc, $0002                                  ; $63da: $01 $02 $00
    add l                                         ; $63dd: $85
    ld [bc], a                                    ; $63de: $02
    nop                                           ; $63df: $00
    add hl, bc                                    ; $63e0: $09
    jr nz, jr_0eb_63ec                            ; $63e1: $20 $09

    inc bc                                        ; $63e3: $03
    nop                                           ; $63e4: $00
    add d                                         ; $63e5: $82
    ld hl, $0609                                  ; $63e6: $21 $09 $06
    nop                                           ; $63e9: $00
    adc b                                         ; $63ea: $88
    ld b, b                                       ; $63eb: $40

jr_0eb_63ec:
    nop                                           ; $63ec: $00
    jr nz, jr_0eb_63ef                            ; $63ed: $20 $00

jr_0eb_63ef:
    ld b, b                                       ; $63ef: $40
    jr nz, jr_0eb_63f2                            ; $63f0: $20 $00

jr_0eb_63f2:
    ld b, b                                       ; $63f2: $40
    inc b                                         ; $63f3: $04
    nop                                           ; $63f4: $00
    adc c                                         ; $63f5: $89
    jr nz, jr_0eb_63f8                            ; $63f6: $20 $00

jr_0eb_63f8:
    ld c, b                                       ; $63f8: $48
    nop                                           ; $63f9: $00
    ld h, b                                       ; $63fa: $60
    ld b, b                                       ; $63fb: $40
    nop                                           ; $63fc: $00
    jr nz, jr_0eb_6448                            ; $63fd: $20 $49

    inc bc                                        ; $63ff: $03
    nop                                           ; $6400: $00
    add l                                         ; $6401: $85
    inc b                                         ; $6402: $04
    nop                                           ; $6403: $00
    ld h, b                                       ; $6404: $60
    nop                                           ; $6405: $00
    ld [bc], a                                    ; $6406: $02
    ld [bc], a                                    ; $6407: $02
    nop                                           ; $6408: $00
    rst $38                                       ; $6409: $ff
    rla                                           ; $640a: $17
    add hl, bc                                    ; $640b: $09
    ld sp, hl                                     ; $640c: $f9
    inc c                                         ; $640d: $0c
    nop                                           ; $640e: $00
    inc de                                        ; $640f: $13
    inc c                                         ; $6410: $0c
    ld a, [c]                                     ; $6411: $f2
    inc c                                         ; $6412: $0c
    ld sp, hl                                     ; $6413: $f9
    inc c                                         ; $6414: $0c
    dec b                                         ; $6415: $05
    inc c                                         ; $6416: $0c
    dec c                                         ; $6417: $0d
    inc e                                         ; $6418: $1c
    ld sp, hl                                     ; $6419: $f9
    inc e                                         ; $641a: $1c
    inc bc                                        ; $641b: $03
    inc l                                         ; $641c: $2c
    rst $38                                       ; $641d: $ff
    inc a                                         ; $641e: $3c
    ld sp, hl                                     ; $641f: $f9
    inc a                                         ; $6420: $3c
    inc b                                         ; $6421: $04
    ld [bc], a                                    ; $6422: $02
    rlca                                          ; $6423: $07
    ld [bc], a                                    ; $6424: $02
    rla                                           ; $6425: $17
    ld [bc], a                                    ; $6426: $02
    xor a                                         ; $6427: $af
    ld [bc], a                                    ; $6428: $02
    ld d, a                                       ; $6429: $57
    ld [bc], a                                    ; $642a: $02
    dec hl                                        ; $642b: $2b
    ld [bc], a                                    ; $642c: $02
    dec d                                         ; $642d: $15
    ld [bc], a                                    ; $642e: $02
    dec hl                                        ; $642f: $2b
    adc d                                         ; $6430: $8a
    dec b                                         ; $6431: $05
    dec d                                         ; $6432: $15
    ld [$010a], sp                                ; $6433: $08 $0a $01
    dec b                                         ; $6436: $05
    nop                                           ; $6437: $00
    ld [bc], a                                    ; $6438: $02
    nop                                           ; $6439: $00
    ld bc, $0008                                  ; $643a: $01 $08 $00
    ld [bc], a                                    ; $643d: $02
    ld [hl+], a                                   ; $643e: $22
    ld [bc], a                                    ; $643f: $02
    ld d, l                                       ; $6440: $55
    ld [bc], a                                    ; $6441: $02
    ld l, e                                       ; $6442: $6b
    ld a, [bc]                                    ; $6443: $0a
    ld a, a                                       ; $6444: $7f
    sub b                                         ; $6445: $90
    ld [hl], a                                    ; $6446: $77
    ld a, a                                       ; $6447: $7f

jr_0eb_6448:
    dec l                                         ; $6448: $2d
    ccf                                           ; $6449: $3f
    ld h, b                                       ; $644a: $60
    rra                                           ; $644b: $1f
    dec d                                         ; $644c: $15
    ld a, [hl+]                                   ; $644d: $2a
    ld a, [bc]                                    ; $644e: $0a
    ld d, l                                       ; $644f: $55
    dec bc                                        ; $6450: $0b
    inc h                                         ; $6451: $24
    ld b, $11                                     ; $6452: $06 $11
    rlca                                          ; $6454: $07
    ld [$fd02], sp                                ; $6455: $08 $02 $fd
    ld [bc], a                                    ; $6458: $02
    ld a, [$f502]                                 ; $6459: $fa $02 $f5
    ld [bc], a                                    ; $645c: $02
    ld a, [$f502]                                 ; $645d: $fa $02 $f5
    ld [bc], a                                    ; $6460: $02
    ld [$f502], a                                 ; $6461: $ea $02 $f5
    ld [bc], a                                    ; $6464: $02
    ld [$d090], a                                 ; $6465: $ea $90 $d0
    push de                                       ; $6468: $d5
    ld h, d                                       ; $6469: $62
    ld [$14c0], a                                 ; $646a: $ea $c0 $14
    nop                                           ; $646d: $00
    xor b                                         ; $646e: $a8
    ret nz                                        ; $646f: $c0

    ld de, $a002                                  ; $6470: $11 $02 $a0
    ld b, b                                       ; $6473: $40
    inc b                                         ; $6474: $04
    adc b                                         ; $6475: $88
    ld [bc], a                                    ; $6476: $02
    ld [bc], a                                    ; $6477: $02
    ld b, b                                       ; $6478: $40
    ld [bc], a                                    ; $6479: $02
    and b                                         ; $647a: $a0
    ld [bc], a                                    ; $647b: $02
    ld b, h                                       ; $647c: $44
    ld [bc], a                                    ; $647d: $02
    add e                                         ; $647e: $83
    ld [bc], a                                    ; $647f: $02
    ld b, [hl]                                    ; $6480: $46
    ld [bc], a                                    ; $6481: $02
    adc d                                         ; $6482: $8a
    ld [bc], a                                    ; $6483: $02
    inc d                                         ; $6484: $14
    add d                                         ; $6485: $82
    add b                                         ; $6486: $80
    adc b                                         ; $6487: $88
    ld [bc], a                                    ; $6488: $02
    db $10                                        ; $6489: $10
    add [hl]                                      ; $648a: $86
    nop                                           ; $648b: $00
    jr nz, jr_0eb_648e                            ; $648c: $20 $00

jr_0eb_648e:
    ld b, b                                       ; $648e: $40
    nop                                           ; $648f: $00
    add b                                         ; $6490: $80
    ld [$8b00], sp                                ; $6491: $08 $00 $8b
    rlca                                          ; $6494: $07
    db $10                                        ; $6495: $10
    inc bc                                        ; $6496: $03
    ld [$0401], sp                                ; $6497: $08 $01 $04
    ld [bc], a                                    ; $649a: $02
    nop                                           ; $649b: $00
    ld bc, $0200                                  ; $649c: $01 $00 $02
    ld [bc], a                                    ; $649f: $02
    nop                                           ; $64a0: $00
    add l                                         ; $64a1: $85
    ld bc, $0200                                  ; $64a2: $01 $00 $02
    nop                                           ; $64a5: $00
    ld bc, $0007                                  ; $64a6: $01 $07 $00
    add c                                         ; $64a9: $81
    ld bc, $0006                                  ; $64aa: $01 $06 $00
    add l                                         ; $64ad: $85
    inc b                                         ; $64ae: $04
    ld de, $0220                                  ; $64af: $11 $20 $02
    inc b                                         ; $64b2: $04
    ld [bc], a                                    ; $64b3: $02
    nop                                           ; $64b4: $00
    add h                                         ; $64b5: $84
    jr z, jr_0eb_64b8                             ; $64b6: $28 $00

jr_0eb_64b8:
    db $10                                        ; $64b8: $10
    jr z, jr_0eb_64bd                             ; $64b9: $28 $02

    nop                                           ; $64bb: $00
    add d                                         ; $64bc: $82

jr_0eb_64bd:
    db $10                                        ; $64bd: $10
    jr nz, jr_0eb_64c2                            ; $64be: $20 $02

    nop                                           ; $64c0: $00
    add c                                         ; $64c1: $81

jr_0eb_64c2:
    db $10                                        ; $64c2: $10
    ld [$8100], sp                                ; $64c3: $08 $00 $81
    jr nz, jr_0eb_64ce                            ; $64c6: $20 $06

    nop                                           ; $64c8: $00
    add e                                         ; $64c9: $83
    ld b, b                                       ; $64ca: $40
    nop                                           ; $64cb: $00
    ld b, c                                       ; $64cc: $41
    inc bc                                        ; $64cd: $03

jr_0eb_64ce:
    nop                                           ; $64ce: $00
    add d                                         ; $64cf: $82
    ld b, c                                       ; $64d0: $41
    ld b, b                                       ; $64d1: $40
    ld b, $00                                     ; $64d2: $06 $00
    adc c                                         ; $64d4: $89
    ld b, b                                       ; $64d5: $40
    nop                                           ; $64d6: $00
    ld [bc], a                                    ; $64d7: $02
    ld bc, $0040                                  ; $64d8: $01 $40 $00
    ld [bc], a                                    ; $64db: $02
    nop                                           ; $64dc: $00
    ld [bc], a                                    ; $64dd: $02
    inc bc                                        ; $64de: $03
    nop                                           ; $64df: $00
    add h                                         ; $64e0: $84
    inc bc                                        ; $64e1: $03
    nop                                           ; $64e2: $00
    ld b, d                                       ; $64e3: $42
    ld [bc], a                                    ; $64e4: $02
    ld [bc], a                                    ; $64e5: $02
    nop                                           ; $64e6: $00
    add e                                         ; $64e7: $83
    ld bc, $0100                                  ; $64e8: $01 $00 $01
    ld [bc], a                                    ; $64eb: $02
    nop                                           ; $64ec: $00
    add e                                         ; $64ed: $83
    inc b                                         ; $64ee: $04
    ld bc, $0204                                  ; $64ef: $01 $04 $02
    nop                                           ; $64f2: $00
    adc c                                         ; $64f3: $89
    ld [bc], a                                    ; $64f4: $02
    nop                                           ; $64f5: $00
    ld bc, $2000                                  ; $64f6: $01 $00 $20
    dec d                                         ; $64f9: $15
    jr nz, jr_0eb_64fc                            ; $64fa: $20 $00

jr_0eb_64fc:
    ld bc, $0003                                  ; $64fc: $01 $03 $00
    and d                                         ; $64ff: $a2
    dec b                                         ; $6500: $05
    nop                                           ; $6501: $00
    stop                                          ; $6502: $10 $00
    inc b                                         ; $6504: $04
    jr nz, jr_0eb_650c                            ; $6505: $20 $05

    nop                                           ; $6507: $00
    ld h, c                                       ; $6508: $61
    nop                                           ; $6509: $00
    jr nz, jr_0eb_654c                            ; $650a: $20 $40

jr_0eb_650c:
    nop                                           ; $650c: $00
    ld b, b                                       ; $650d: $40
    stop                                          ; $650e: $10 $00
    ld b, b                                       ; $6510: $40
    nop                                           ; $6511: $00
    jr nz, jr_0eb_6514                            ; $6512: $20 $00

jr_0eb_6514:
    jr z, jr_0eb_6516                             ; $6514: $28 $00

jr_0eb_6516:
    ld h, b                                       ; $6516: $60
    nop                                           ; $6517: $00
    ld b, h                                       ; $6518: $44
    jr z, jr_0eb_655b                             ; $6519: $28 $40

    nop                                           ; $651b: $00
    ld [$2000], sp                                ; $651c: $08 $00 $20
    ld bc, $4008                                  ; $651f: $01 $08 $40
    ld [bc], a                                    ; $6522: $02
    nop                                           ; $6523: $00
    add l                                         ; $6524: $85
    ld [bc], a                                    ; $6525: $02
    nop                                           ; $6526: $00
    ld d, d                                       ; $6527: $52
    nop                                           ; $6528: $00
    db $10                                        ; $6529: $10
    rst $38                                       ; $652a: $ff
    add hl, de                                    ; $652b: $19
    ld a, [bc]                                    ; $652c: $0a
    ld sp, hl                                     ; $652d: $f9
    inc c                                         ; $652e: $0c
    nop                                           ; $652f: $00
    inc de                                        ; $6530: $13
    ld c, $f4                                     ; $6531: $0e $f4
    ld c, $f9                                     ; $6533: $0e $f9
    ld c, $05                                     ; $6535: $0e $05
    ld c, $0c                                     ; $6537: $0e $0c
    ld e, $fe                                     ; $6539: $1e $fe
    ld e, $01                                     ; $653b: $1e $01
    ld l, $ff                                     ; $653d: $2e $ff
    ld a, $f8                                     ; $653f: $3e $f8
    ld a, $00                                     ; $6541: $3e $00
    ld a, $04                                     ; $6543: $3e $04
    ld [bc], a                                    ; $6545: $02
    rra                                           ; $6546: $1f
    ld [bc], a                                    ; $6547: $02
    ld e, a                                       ; $6548: $5f
    ld [bc], a                                    ; $6549: $02
    xor a                                         ; $654a: $af
    ld [bc], a                                    ; $654b: $02

jr_0eb_654c:
    ld d, a                                       ; $654c: $57

jr_0eb_654d:
    ld [bc], a                                    ; $654d: $02
    xor a                                         ; $654e: $af
    ld [bc], a                                    ; $654f: $02
    ld d, a                                       ; $6550: $57
    ld [bc], a                                    ; $6551: $02
    dec hl                                        ; $6552: $2b
    adc c                                         ; $6553: $89
    dec b                                         ; $6554: $05
    dec d                                         ; $6555: $15
    add hl, bc                                    ; $6556: $09
    dec bc                                        ; $6557: $0b
    nop                                           ; $6558: $00
    dec b                                         ; $6559: $05
    ld [bc], a                                    ; $655a: $02

jr_0eb_655b:
    nop                                           ; $655b: $00
    ld bc, $0009                                  ; $655c: $01 $09 $00
    ld [bc], a                                    ; $655f: $02
    dec bc                                        ; $6560: $0b
    inc c                                         ; $6561: $0c
    rra                                           ; $6562: $1f
    sub d                                         ; $6563: $92
    rla                                           ; $6564: $17
    rra                                           ; $6565: $1f
    dec c                                         ; $6566: $0d
    rra                                           ; $6567: $1f
    nop                                           ; $6568: $00
    rra                                           ; $6569: $1f
    rla                                           ; $656a: $17
    ld [$000f], sp                                ; $656b: $08 $0f $00
    dec b                                         ; $656e: $05
    ld [de], a                                    ; $656f: $12
    rrca                                          ; $6570: $0f
    nop                                           ; $6571: $00
    inc bc                                        ; $6572: $03
    inc d                                         ; $6573: $14
    ld bc, $020a                                  ; $6574: $01 $0a $02
    push af                                       ; $6577: $f5
    ld [bc], a                                    ; $6578: $02
    ld a, [$f502]                                 ; $6579: $fa $02 $f5
    ld [bc], a                                    ; $657c: $02
    ld [$f502], a                                 ; $657d: $ea $02 $f5
    ld [bc], a                                    ; $6580: $02
    ld [$d502], a                                 ; $6581: $ea $02 $d5
    sub d                                         ; $6584: $92
    xor b                                         ; $6585: $a8
    ld [$d444], a                                 ; $6586: $ea $44 $d4
    add b                                         ; $6589: $80
    jr z, jr_0eb_654d                             ; $658a: $28 $c1

    db $10                                        ; $658c: $10
    and b                                         ; $658d: $a0
    ld [bc], a                                    ; $658e: $02
    ld b, b                                       ; $658f: $40
    inc b                                         ; $6590: $04
    add b                                         ; $6591: $80
    ld a, [bc]                                    ; $6592: $0a
    nop                                           ; $6593: $00
    ld d, h                                       ; $6594: $54
    nop                                           ; $6595: $00
    adc b                                         ; $6596: $88
    ld [bc], a                                    ; $6597: $02
    jr nz, jr_0eb_659c                            ; $6598: $20 $02

    ld b, b                                       ; $659a: $40
    ld [bc], a                                    ; $659b: $02

jr_0eb_659c:
    ld [hl+], a                                   ; $659c: $22
    ld [bc], a                                    ; $659d: $02
    ld b, l                                       ; $659e: $45
    ld [bc], a                                    ; $659f: $02
    ld a, [bc]                                    ; $65a0: $0a
    ld [bc], a                                    ; $65a1: $02
    ld b, h                                       ; $65a2: $44
    add d                                         ; $65a3: $82
    nop                                           ; $65a4: $00
    ld [$1002], sp                                ; $65a5: $08 $02 $10
    add h                                         ; $65a8: $84
    nop                                           ; $65a9: $00
    jr nz, jr_0eb_65ac                            ; $65aa: $20 $00

jr_0eb_65ac:
    ld b, b                                       ; $65ac: $40
    inc c                                         ; $65ad: $0c
    nop                                           ; $65ae: $00
    add e                                         ; $65af: $83
    and b                                         ; $65b0: $a0
    nop                                           ; $65b1: $00
    ld b, c                                       ; $65b2: $41
    ld [bc], a                                    ; $65b3: $02
    nop                                           ; $65b4: $00
    adc e                                         ; $65b5: $8b
    jr nz, jr_0eb_65f8                            ; $65b6: $20 $40

    ld bc, $2000                                  ; $65b8: $01 $00 $20
    ld bc, $0040                                  ; $65bb: $01 $40 $00
    jr nz, jr_0eb_65c0                            ; $65be: $20 $00

jr_0eb_65c0:
    ld bc, $000e                                  ; $65c0: $01 $0e $00
    add l                                         ; $65c3: $85
    jr nz, jr_0eb_65c6                            ; $65c4: $20 $00

jr_0eb_65c6:
    ld bc, $0200                                  ; $65c6: $01 $00 $02
    ld [bc], a                                    ; $65c9: $02
    nop                                           ; $65ca: $00
    add d                                         ; $65cb: $82
    inc b                                         ; $65cc: $04
    ld [bc], a                                    ; $65cd: $02
    ld [bc], a                                    ; $65ce: $02
    nop                                           ; $65cf: $00
    add c                                         ; $65d0: $81
    inc b                                         ; $65d1: $04
    dec d                                         ; $65d2: $15
    nop                                           ; $65d3: $00
    add d                                         ; $65d4: $82
    inc b                                         ; $65d5: $04
    ld b, b                                       ; $65d6: $40
    ld [bc], a                                    ; $65d7: $02
    nop                                           ; $65d8: $00
    add e                                         ; $65d9: $83
    ld bc, $4000                                  ; $65da: $01 $00 $40
    ld [bc], a                                    ; $65dd: $02
    nop                                           ; $65de: $00
    add c                                         ; $65df: $81
    ld [bc], a                                    ; $65e0: $02
    ld [bc], a                                    ; $65e1: $02
    nop                                           ; $65e2: $00
    ld [bc], a                                    ; $65e3: $02
    ld b, b                                       ; $65e4: $40
    add c                                         ; $65e5: $81
    ld [bc], a                                    ; $65e6: $02
    ld [bc], a                                    ; $65e7: $02
    nop                                           ; $65e8: $00
    add c                                         ; $65e9: $81
    ld b, b                                       ; $65ea: $40
    ld [bc], a                                    ; $65eb: $02
    nop                                           ; $65ec: $00
    adc d                                         ; $65ed: $8a
    ld [bc], a                                    ; $65ee: $02
    nop                                           ; $65ef: $00
    ld b, e                                       ; $65f0: $43
    nop                                           ; $65f1: $00
    ld bc, $0002                                  ; $65f2: $01 $02 $00
    ld [bc], a                                    ; $65f5: $02
    nop                                           ; $65f6: $00
    inc bc                                        ; $65f7: $03

jr_0eb_65f8:
    ld [bc], a                                    ; $65f8: $02
    nop                                           ; $65f9: $00
    add l                                         ; $65fa: $85
    ld b, d                                       ; $65fb: $42
    nop                                           ; $65fc: $00
    ld [bc], a                                    ; $65fd: $02
    nop                                           ; $65fe: $00
    ld [bc], a                                    ; $65ff: $02
    inc b                                         ; $6600: $04
    nop                                           ; $6601: $00
    add c                                         ; $6602: $81
    ld [$0004], sp                                ; $6603: $08 $04 $00
    adc l                                         ; $6606: $8d
    ld [bc], a                                    ; $6607: $02
    inc b                                         ; $6608: $04
    db $10                                        ; $6609: $10
    ld [bc], a                                    ; $660a: $02
    stop                                          ; $660b: $10 $00
    ld [bc], a                                    ; $660d: $02
    nop                                           ; $660e: $00
    ld [$0001], sp                                ; $660f: $08 $01 $00
    add h                                         ; $6612: $84
    db $10                                        ; $6613: $10
    inc bc                                        ; $6614: $03
    nop                                           ; $6615: $00
    add c                                         ; $6616: $81
    ld [bc], a                                    ; $6617: $02
    dec b                                         ; $6618: $05
    nop                                           ; $6619: $00
    adc a                                         ; $661a: $8f
    add h                                         ; $661b: $84
    add b                                         ; $661c: $80
    ld [bc], a                                    ; $661d: $02
    nop                                           ; $661e: $00
    inc b                                         ; $661f: $04
    ld [bc], a                                    ; $6620: $02
    add b                                         ; $6621: $80
    nop                                           ; $6622: $00
    add h                                         ; $6623: $84
    ld [bc], a                                    ; $6624: $02

Jump_0eb_6625:
    inc b                                         ; $6625: $04
    ld [bc], a                                    ; $6626: $02
    dec b                                         ; $6627: $05
    nop                                           ; $6628: $00
    add c                                         ; $6629: $81
    inc bc                                        ; $662a: $03
    nop                                           ; $662b: $00
    add e                                         ; $662c: $83
    ld [bc], a                                    ; $662d: $02
    nop                                           ; $662e: $00
    add d                                         ; $662f: $82
    ld [bc], a                                    ; $6630: $02
    nop                                           ; $6631: $00
    add c                                         ; $6632: $81
    ld [bc], a                                    ; $6633: $02
    dec b                                         ; $6634: $05
    nop                                           ; $6635: $00
    add c                                         ; $6636: $81
    ld [$0006], sp                                ; $6637: $08 $06 $00
    add c                                         ; $663a: $81
    ld [$0003], sp                                ; $663b: $08 $03 $00
    adc b                                         ; $663e: $88
    ld bc, $0804                                  ; $663f: $01 $04 $08
    nop                                           ; $6642: $00
    ld [$0200], sp                                ; $6643: $08 $00 $02
    ld [$0002], sp                                ; $6646: $08 $02 $00
    add e                                         ; $6649: $83
    inc bc                                        ; $664a: $03
    nop                                           ; $664b: $00
    add hl, bc                                    ; $664c: $09
    inc b                                         ; $664d: $04
    nop                                           ; $664e: $00

jr_0eb_664f:
    add c                                         ; $664f: $81
    ld [bc], a                                    ; $6650: $02
    inc bc                                        ; $6651: $03
    nop                                           ; $6652: $00
    rst $38                                       ; $6653: $ff
    rla                                           ; $6654: $17
    add hl, bc                                    ; $6655: $09
    ld sp, hl                                     ; $6656: $f9
    inc c                                         ; $6657: $0c
    nop                                           ; $6658: $00
    inc de                                        ; $6659: $13
    rrca                                          ; $665a: $0f
    db $f4                                        ; $665b: $f4
    rrca                                          ; $665c: $0f
    ld sp, hl                                     ; $665d: $f9
    rrca                                          ; $665e: $0f
    dec b                                         ; $665f: $05
    rrca                                          ; $6660: $0f
    inc c                                         ; $6661: $0c
    rra                                           ; $6662: $1f
    rst $38                                       ; $6663: $ff
    rra                                           ; $6664: $1f
    nop                                           ; $6665: $00
    cpl                                           ; $6666: $2f
    rst $38                                       ; $6667: $ff
    ccf                                           ; $6668: $3f
    ld sp, hl                                     ; $6669: $f9
    ccf                                           ; $666a: $3f
    inc bc                                        ; $666b: $03
    ld [bc], a                                    ; $666c: $02
    rra                                           ; $666d: $1f
    ld [bc], a                                    ; $666e: $02
    xor a                                         ; $666f: $af
    ld [bc], a                                    ; $6670: $02
    ld d, a                                       ; $6671: $57
    ld [bc], a                                    ; $6672: $02
    xor a                                         ; $6673: $af
    ld [bc], a                                    ; $6674: $02
    ld d, a                                       ; $6675: $57
    ld [bc], a                                    ; $6676: $02
    dec hl                                        ; $6677: $2b
    ld [bc], a                                    ; $6678: $02
    dec d                                         ; $6679: $15
    adc b                                         ; $667a: $88
    inc bc                                        ; $667b: $03
    dec bc                                        ; $667c: $0b
    nop                                           ; $667d: $00
    dec b                                         ; $667e: $05
    nop                                           ; $667f: $00
    ld [bc], a                                    ; $6680: $02
    nop                                           ; $6681: $00
    ld bc, $000a                                  ; $6682: $01 $0a $00
    ld c, $1f                                     ; $6685: $0e $1f
    sub d                                         ; $6687: $92
    rla                                           ; $6688: $17
    rra                                           ; $6689: $1f
    ld a, [de]                                    ; $668a: $1a
    rra                                           ; $668b: $1f
    dec b                                         ; $668c: $05
    ld a, [de]                                    ; $668d: $1a
    dec bc                                        ; $668e: $0b
    inc b                                         ; $668f: $04
    ld [bc], a                                    ; $6690: $02
    dec d                                         ; $6691: $15
    ld a, [bc]                                    ; $6692: $0a
    dec b                                         ; $6693: $05
    rlca                                          ; $6694: $07
    db $10                                        ; $6695: $10
    inc bc                                        ; $6696: $03
    ld [$0401], sp                                ; $6697: $08 $01 $04
    ld [bc], a                                    ; $669a: $02
    ld a, [$f502]                                 ; $669b: $fa $02 $f5
    ld [bc], a                                    ; $669e: $02
    ld [$f502], a                                 ; $669f: $ea $02 $f5
    ld [bc], a                                    ; $66a2: $02
    ld [$d502], a                                 ; $66a3: $ea $02 $d5
    ld [bc], a                                    ; $66a6: $02
    ld [$d092], a                                 ; $66a7: $ea $92 $d0
    call nc, $a808                                ; $66aa: $d4 $08 $a8
    ret nz                                        ; $66ad: $c0

    ld de, $8220                                  ; $66ae: $11 $20 $82
    ld b, b                                       ; $66b1: $40
    inc b                                         ; $66b2: $04
    ld a, [bc]                                    ; $66b3: $0a
    add b                                         ; $66b4: $80
    inc b                                         ; $66b5: $04
    ld d, b                                       ; $66b6: $50
    adc b                                         ; $66b7: $88
    nop                                           ; $66b8: $00
    stop                                          ; $66b9: $10 $00
    ld [bc], a                                    ; $66bb: $02
    ld b, b                                       ; $66bc: $40

jr_0eb_66bd:
    ld [bc], a                                    ; $66bd: $02
    jr nz, jr_0eb_66c2                            ; $66be: $20 $02

    ld b, h                                       ; $66c0: $44
    ld [bc], a                                    ; $66c1: $02

jr_0eb_66c2:
    dec bc                                        ; $66c2: $0b
    ld [bc], a                                    ; $66c3: $02
    ld b, h                                       ; $66c4: $44
    ld [bc], a                                    ; $66c5: $02
    ld [$0082], sp                                ; $66c6: $08 $82 $00
    db $10                                        ; $66c9: $10
    ld [bc], a                                    ; $66ca: $02
    jr nz, jr_0eb_664f                            ; $66cb: $20 $82

    nop                                           ; $66cd: $00
    ld b, b                                       ; $66ce: $40
    ld c, $00                                     ; $66cf: $0e $00
    adc e                                         ; $66d1: $8b
    add b                                         ; $66d2: $80
    ld [bc], a                                    ; $66d3: $02
    ld bc, $0240                                  ; $66d4: $01 $40 $02
    add b                                         ; $66d7: $80
    nop                                           ; $66d8: $00
    ld b, c                                       ; $66d9: $41
    nop                                           ; $66da: $00
    ld [bc], a                                    ; $66db: $02
    ld b, c                                       ; $66dc: $41
    inc b                                         ; $66dd: $04
    nop                                           ; $66de: $00
    add h                                         ; $66df: $84
    ld b, b                                       ; $66e0: $40
    ld [bc], a                                    ; $66e1: $02
    nop                                           ; $66e2: $00
    ld b, c                                       ; $66e3: $41
    ld a, [bc]                                    ; $66e4: $0a
    nop                                           ; $66e5: $00
    add c                                         ; $66e6: $81
    ld b, b                                       ; $66e7: $40
    inc bc                                        ; $66e8: $03
    nop                                           ; $66e9: $00
    add c                                         ; $66ea: $81
    ld bc, $0003                                  ; $66eb: $01 $03 $00
    add c                                         ; $66ee: $81
    ld bc, $001b                                  ; $66ef: $01 $1b $00
    add e                                         ; $66f2: $83
    ld bc, $4000                                  ; $66f3: $01 $00 $40
    add hl, bc                                    ; $66f6: $09
    nop                                           ; $66f7: $00
    add h                                         ; $66f8: $84
    ld bc, $4002                                  ; $66f9: $01 $02 $40
    inc bc                                        ; $66fc: $03
    ld [bc], a                                    ; $66fd: $02
    nop                                           ; $66fe: $00
    add [hl]                                      ; $66ff: $86
    ld b, b                                       ; $6700: $40
    nop                                           ; $6701: $00
    inc bc                                        ; $6702: $03
    ld [bc], a                                    ; $6703: $02
    nop                                           ; $6704: $00
    ld [bc], a                                    ; $6705: $02
    inc bc                                        ; $6706: $03
    nop                                           ; $6707: $00
    add h                                         ; $6708: $84
    ld b, b                                       ; $6709: $40
    ld [bc], a                                    ; $670a: $02
    nop                                           ; $670b: $00
    ld bc, $0003                                  ; $670c: $01 $03 $00
    add e                                         ; $670f: $83
    dec b                                         ; $6710: $05
    nop                                           ; $6711: $00
    inc b                                         ; $6712: $04
    inc bc                                        ; $6713: $03
    nop                                           ; $6714: $00
    adc b                                         ; $6715: $88
    stop                                          ; $6716: $10 $00
    ld bc, $0300                                  ; $6718: $01 $00 $03
    ld bc, $0804                                  ; $671b: $01 $04 $08
    ld [bc], a                                    ; $671e: $02
    nop                                           ; $671f: $00
    add h                                         ; $6720: $84
    ld bc, $0100                                  ; $6721: $01 $00 $01
    inc h                                         ; $6724: $24
    dec bc                                        ; $6725: $0b
    nop                                           ; $6726: $00
    add c                                         ; $6727: $81
    db $10                                        ; $6728: $10
    ld [bc], a                                    ; $6729: $02
    jr nz, jr_0eb_66bd                            ; $672a: $20 $91

    nop                                           ; $672c: $00
    jr nz, jr_0eb_6743                            ; $672d: $20 $14

    nop                                           ; $672f: $00
    jr nz, jr_0eb_6732                            ; $6730: $20 $00

jr_0eb_6732:
    stop                                          ; $6732: $10 $00
    add hl, sp                                    ; $6734: $39
    jr nz, jr_0eb_6737                            ; $6735: $20 $00

jr_0eb_6737:
    inc b                                         ; $6737: $04
    jr nz, jr_0eb_673a                            ; $6738: $20 $00

jr_0eb_673a:
    ld bc, $0800                                  ; $673a: $01 $00 $08
    ld a, [bc]                                    ; $673d: $0a
    nop                                           ; $673e: $00
    rst $38                                       ; $673f: $ff
    rla                                           ; $6740: $17
    add hl, bc                                    ; $6741: $09
    ld sp, hl                                     ; $6742: $f9

jr_0eb_6743:
    inc c                                         ; $6743: $0c
    nop                                           ; $6744: $00
    inc de                                        ; $6745: $13
    db $10                                        ; $6746: $10
    db $f4                                        ; $6747: $f4
    db $10                                        ; $6748: $10
    ld sp, hl                                     ; $6749: $f9
    db $10                                        ; $674a: $10
    dec b                                         ; $674b: $05
    ld de, $200b                                  ; $674c: $11 $0b $20
    rst $38                                       ; $674f: $ff
    ld hl, $3100                                  ; $6750: $21 $00 $31
    rst $38                                       ; $6753: $ff
    ld b, b                                       ; $6754: $40
    ld sp, hl                                     ; $6755: $f9
    ld b, b                                       ; $6756: $40
    inc b                                         ; $6757: $04
    ld [bc], a                                    ; $6758: $02
    rrca                                          ; $6759: $0f

Jump_0eb_675a:
    ld [bc], a                                    ; $675a: $02
    ld d, a                                       ; $675b: $57
    ld [bc], a                                    ; $675c: $02
    xor a                                         ; $675d: $af
    ld [bc], a                                    ; $675e: $02
    ld d, a                                       ; $675f: $57
    ld [bc], a                                    ; $6760: $02
    dec hl                                        ; $6761: $2b
    ld [bc], a                                    ; $6762: $02
    dec d                                         ; $6763: $15
    adc b                                         ; $6764: $88
    inc bc                                        ; $6765: $03
    dec bc                                        ; $6766: $0b
    inc b                                         ; $6767: $04
    dec b                                         ; $6768: $05
    nop                                           ; $6769: $00
    ld [bc], a                                    ; $676a: $02
    nop                                           ; $676b: $00
    ld bc, $000c                                  ; $676c: $01 $0c $00
    ld c, $1f                                     ; $676f: $0e $1f
    sub d                                         ; $6771: $92
    dec e                                         ; $6772: $1d
    rra                                           ; $6773: $1f
    dec de                                        ; $6774: $1b
    rra                                           ; $6775: $1f
    nop                                           ; $6776: $00
    rrca                                          ; $6777: $0f
    ld [bc], a                                    ; $6778: $02
    dec d                                         ; $6779: $15
    dec b                                         ; $677a: $05
    ld a, [bc]                                    ; $677b: $0a
    inc bc                                        ; $677c: $03
    inc d                                         ; $677d: $14
    inc bc                                        ; $677e: $03
    ld [$0500], sp                                ; $677f: $08 $00 $05
    nop                                           ; $6782: $00
    ld [bc], a                                    ; $6783: $02
    ld [bc], a                                    ; $6784: $02
    push af                                       ; $6785: $f5
    ld [bc], a                                    ; $6786: $02
    ld [$f502], a                                 ; $6787: $ea $02 $f5
    ld [bc], a                                    ; $678a: $02
    ld [$d502], a                                 ; $678b: $ea $02 $d5
    ld [bc], a                                    ; $678e: $02
    ld [$d402], a                                 ; $678f: $ea $02 $d4
    sub c                                         ; $6792: $91
    and b                                         ; $6793: $a0
    xor b                                         ; $6794: $a8
    ld d, b                                       ; $6795: $50
    pop de                                        ; $6796: $d1
    nop                                           ; $6797: $00
    and d                                         ; $6798: $a2
    ld b, b                                       ; $6799: $40
    inc b                                         ; $679a: $04
    adc d                                         ; $679b: $8a
    nop                                           ; $679c: $00
    inc d                                         ; $679d: $14
    ld b, b                                       ; $679e: $40
    nop                                           ; $679f: $00
    adc b                                         ; $67a0: $88
    nop                                           ; $67a1: $00
    db $10                                        ; $67a2: $10
    add b                                         ; $67a3: $80
    inc bc                                        ; $67a4: $03
    jr nz, jr_0eb_67a9                            ; $67a5: $20 $02

    dec b                                         ; $67a7: $05
    ld [bc], a                                    ; $67a8: $02

jr_0eb_67a9:
    ld [hl+], a                                   ; $67a9: $22
    ld [bc], a                                    ; $67aa: $02
    inc b                                         ; $67ab: $04
    ld [bc], a                                    ; $67ac: $02
    ld [$0082], sp                                ; $67ad: $08 $82 $00
    db $10                                        ; $67b0: $10
    ld [bc], a                                    ; $67b1: $02
    jr nz, jr_0eb_67c6                            ; $67b2: $20 $12

    nop                                           ; $67b4: $00
    sub b                                         ; $67b5: $90
    ld bc, $0240                                  ; $67b6: $01 $40 $02
    add b                                         ; $67b9: $80
    ld b, c                                       ; $67ba: $41
    nop                                           ; $67bb: $00
    add d                                         ; $67bc: $82
    nop                                           ; $67bd: $00
    ld bc, $0040                                  ; $67be: $01 $40 $00
    ld [bc], a                                    ; $67c1: $02
    nop                                           ; $67c2: $00
    ld b, b                                       ; $67c3: $40
    nop                                           ; $67c4: $00
    ld [bc], a                                    ; $67c5: $02

jr_0eb_67c6:
    inc b                                         ; $67c6: $04
    nop                                           ; $67c7: $00
    adc b                                         ; $67c8: $88
    ld bc, $0040                                  ; $67c9: $01 $40 $00
    add b                                         ; $67cc: $80
    nop                                           ; $67cd: $00
    ld b, b                                       ; $67ce: $40
    nop                                           ; $67cf: $00
    ld b, c                                       ; $67d0: $41
    ld [bc], a                                    ; $67d1: $02
    nop                                           ; $67d2: $00
    add h                                         ; $67d3: $84
    ld b, b                                       ; $67d4: $40
    ld bc, $0100                                  ; $67d5: $01 $00 $01
    ld e, $00                                     ; $67d8: $1e $00
    add c                                         ; $67da: $81
    ld b, b                                       ; $67db: $40
    ld [bc], a                                    ; $67dc: $02
    nop                                           ; $67dd: $00
    add h                                         ; $67de: $84
    ld [bc], a                                    ; $67df: $02
    nop                                           ; $67e0: $00
    ld b, b                                       ; $67e1: $40
    ld [bc], a                                    ; $67e2: $02
    ld b, $00                                     ; $67e3: $06 $00
    add l                                         ; $67e5: $85
    ld [bc], a                                    ; $67e6: $02
    nop                                           ; $67e7: $00
    ld bc, $8200                                  ; $67e8: $01 $00 $82
    inc bc                                        ; $67eb: $03
    nop                                           ; $67ec: $00
    add d                                         ; $67ed: $82
    ld [bc], a                                    ; $67ee: $02
    ld b, c                                       ; $67ef: $41
    ld [bc], a                                    ; $67f0: $02
    ld [bc], a                                    ; $67f1: $02
    add l                                         ; $67f2: $85
    nop                                           ; $67f3: $00
    ld b, b                                       ; $67f4: $40
    ld bc, $4200                                  ; $67f5: $01 $00 $42
    dec b                                         ; $67f8: $05
    nop                                           ; $67f9: $00
    add c                                         ; $67fa: $81
    dec b                                         ; $67fb: $05
    ld [bc], a                                    ; $67fc: $02
    nop                                           ; $67fd: $00
    add e                                         ; $67fe: $83
    ld bc, $0908                                  ; $67ff: $01 $08 $09
    ld [bc], a                                    ; $6802: $02
    nop                                           ; $6803: $00
    adc b                                         ; $6804: $88
    inc b                                         ; $6805: $04
    nop                                           ; $6806: $00
    inc h                                         ; $6807: $24
    nop                                           ; $6808: $00
    ld hl, $0800                                  ; $6809: $21 $00 $08
    nop                                           ; $680c: $00
    ld [bc], a                                    ; $680d: $02
    ld [bc], a                                    ; $680e: $02
    ld c, $00                                     ; $680f: $0e $00
    add h                                         ; $6811: $84
    jr nz, jr_0eb_683c                            ; $6812: $20 $28

    nop                                           ; $6814: $00
    ld b, b                                       ; $6815: $40
    ld [bc], a                                    ; $6816: $02
    nop                                           ; $6817: $00
    add [hl]                                      ; $6818: $86
    ld l, b                                       ; $6819: $68
    nop                                           ; $681a: $00
    ld [$4420], sp                                ; $681b: $08 $20 $44
    jr nz, @+$04                                  ; $681e: $20 $02

    ld bc, $0889                                  ; $6820: $01 $89 $08
    nop                                           ; $6823: $00
    inc b                                         ; $6824: $04
    nop                                           ; $6825: $00
    ld d, b                                       ; $6826: $50
    nop                                           ; $6827: $00
    ld b, b                                       ; $6828: $40
    nop                                           ; $6829: $00
    jr nz, jr_0eb_6832                            ; $682a: $20 $06

    nop                                           ; $682c: $00
    rst $38                                       ; $682d: $ff
    add hl, de                                    ; $682e: $19
    ld a, [bc]                                    ; $682f: $0a
    ld sp, hl                                     ; $6830: $f9
    inc c                                         ; $6831: $0c

jr_0eb_6832:
    nop                                           ; $6832: $00
    inc de                                        ; $6833: $13
    ld de, $11f5                                  ; $6834: $11 $f5 $11
    ld sp, hl                                     ; $6837: $f9
    ld de, $1105                                  ; $6838: $11 $05 $11
    ld a, [bc]                                    ; $683b: $0a

jr_0eb_683c:
    ld hl, $21ff                                  ; $683c: $21 $ff $21
    nop                                           ; $683f: $00
    ld [hl-], a                                   ; $6840: $32
    rst $38                                       ; $6841: $ff
    ld b, c                                       ; $6842: $41
    ld sp, hl                                     ; $6843: $f9
    ld b, c                                       ; $6844: $41
    dec b                                         ; $6845: $05
    ld b, c                                       ; $6846: $41
    ld b, $02                                     ; $6847: $06 $02
    rrca                                          ; $6849: $0f
    ld [bc], a                                    ; $684a: $02
    ld e, a                                       ; $684b: $5f
    ld [bc], a                                    ; $684c: $02
    xor a                                         ; $684d: $af
    ld [bc], a                                    ; $684e: $02
    ld d, a                                       ; $684f: $57
    ld [bc], a                                    ; $6850: $02
    dec hl                                        ; $6851: $2b
    ld [bc], a                                    ; $6852: $02
    rla                                           ; $6853: $17
    ld [bc], a                                    ; $6854: $02
    dec bc                                        ; $6855: $0b
    ld [bc], a                                    ; $6856: $02
    dec b                                         ; $6857: $05
    add h                                         ; $6858: $84
    nop                                           ; $6859: $00
    ld [bc], a                                    ; $685a: $02
    nop                                           ; $685b: $00
    ld bc, $0003                                  ; $685c: $01 $03 $00
    add c                                         ; $685f: $81
    ld bc, $0008                                  ; $6860: $01 $08 $00
    ld c, $0f                                     ; $6863: $0e $0f
    adc a                                         ; $6865: $8f
    rlca                                          ; $6866: $07
    rrca                                          ; $6867: $0f
    ld a, [bc]                                    ; $6868: $0a
    rrca                                          ; $6869: $0f
    ld bc, $0706                                  ; $686a: $01 $06 $07
    ld [$0403], sp                                ; $686d: $08 $03 $04
    nop                                           ; $6870: $00
    dec bc                                        ; $6871: $0b
    nop                                           ; $6872: $00
    dec b                                         ; $6873: $05
    ld [bc], a                                    ; $6874: $02
    ld [bc], a                                    ; $6875: $02
    nop                                           ; $6876: $00
    add c                                         ; $6877: $81
    ld bc, $ea02                                  ; $6878: $01 $02 $ea
    ld [bc], a                                    ; $687b: $02
    push af                                       ; $687c: $f5
    ld [bc], a                                    ; $687d: $02
    ld [$d502], a                                 ; $687e: $ea $02 $d5
    ld [bc], a                                    ; $6881: $02
    ld [$d402], a                                 ; $6882: $ea $02 $d4
    ld [bc], a                                    ; $6885: $02
    xor b                                         ; $6886: $a8
    adc a                                         ; $6887: $8f
    ld b, b                                       ; $6888: $40
    pop de                                        ; $6889: $d1
    and b                                         ; $688a: $a0
    and d                                         ; $688b: $a2
    inc b                                         ; $688c: $04
    ld b, b                                       ; $688d: $40
    adc b                                         ; $688e: $88
    ld [bc], a                                    ; $688f: $02
    ld d, b                                       ; $6890: $50
    inc b                                         ; $6891: $04
    nop                                           ; $6892: $00
    adc b                                         ; $6893: $88
    nop                                           ; $6894: $00
    db $10                                        ; $6895: $10
    and b                                         ; $6896: $a0
    ld [bc], a                                    ; $6897: $02
    nop                                           ; $6898: $00
    add c                                         ; $6899: $81
    ld b, b                                       ; $689a: $40
    ld [bc], a                                    ; $689b: $02
    db $10                                        ; $689c: $10
    ld [bc], a                                    ; $689d: $02
    ld [bc], a                                    ; $689e: $02
    ld [bc], a                                    ; $689f: $02
    ld de, $0202                                  ; $68a0: $11 $02 $02
    ld [bc], a                                    ; $68a3: $02
    inc b                                         ; $68a4: $04
    ld [bc], a                                    ; $68a5: $02
    ld [$1002], sp                                ; $68a6: $08 $02 $10
    inc de                                        ; $68a9: $13
    nop                                           ; $68aa: $00
    add d                                         ; $68ab: $82
    add d                                         ; $68ac: $82
    ld b, c                                       ; $68ad: $41
    ld [bc], a                                    ; $68ae: $02
    nop                                           ; $68af: $00
    add h                                         ; $68b0: $84
    add d                                         ; $68b1: $82
    ld bc, $0240                                  ; $68b2: $01 $40 $02
    ld [bc], a                                    ; $68b5: $02
    nop                                           ; $68b6: $00
    add c                                         ; $68b7: $81
    ld bc, $0003                                  ; $68b8: $01 $03 $00
    add l                                         ; $68bb: $85
    ld bc, $0200                                  ; $68bc: $01 $00 $02
    nop                                           ; $68bf: $00
    ld b, c                                       ; $68c0: $41
    dec b                                         ; $68c1: $05
    nop                                           ; $68c2: $00
    add d                                         ; $68c3: $82
    ld bc, $0240                                  ; $68c4: $01 $40 $02
    nop                                           ; $68c7: $00
    add c                                         ; $68c8: $81
    ld b, b                                       ; $68c9: $40
    inc bc                                        ; $68ca: $03
    nop                                           ; $68cb: $00
    add c                                         ; $68cc: $81
    ld bc, $001f                                  ; $68cd: $01 $1f $00
    add c                                         ; $68d0: $81
    ld b, b                                       ; $68d1: $40
    inc bc                                        ; $68d2: $03
    nop                                           ; $68d3: $00
    add l                                         ; $68d4: $85
    ld [bc], a                                    ; $68d5: $02
    ld bc, $0080                                  ; $68d6: $01 $80 $00
    ld b, d                                       ; $68d9: $42
    inc bc                                        ; $68da: $03
    nop                                           ; $68db: $00
    adc e                                         ; $68dc: $8b
    ld [bc], a                                    ; $68dd: $02
    nop                                           ; $68de: $00
    ld bc, $4000                                  ; $68df: $01 $00 $40
    nop                                           ; $68e2: $00
    add d                                         ; $68e3: $82
    inc bc                                        ; $68e4: $03
    ld b, b                                       ; $68e5: $40
    nop                                           ; $68e6: $00
    ld b, d                                       ; $68e7: $42
    ld [bc], a                                    ; $68e8: $02
    nop                                           ; $68e9: $00
    add [hl]                                      ; $68ea: $86
    ld [bc], a                                    ; $68eb: $02
    nop                                           ; $68ec: $00
    ld b, d                                       ; $68ed: $42
    ld bc, $4200                                  ; $68ee: $01 $00 $42

jr_0eb_68f1:
    inc bc                                        ; $68f1: $03
    nop                                           ; $68f2: $00
    adc e                                         ; $68f3: $8b
    inc b                                         ; $68f4: $04
    nop                                           ; $68f5: $00
    dec b                                         ; $68f6: $05
    nop                                           ; $68f7: $00
    ld [bc], a                                    ; $68f8: $02
    jr jr_0eb_68fd                                ; $68f9: $18 $02

    add hl, bc                                    ; $68fb: $09
    ld b, h                                       ; $68fc: $44

jr_0eb_68fd:
    ld bc, $0314                                  ; $68fd: $01 $14 $03
    nop                                           ; $6900: $00
    add a                                         ; $6901: $87
    ld a, [hl+]                                   ; $6902: $2a
    nop                                           ; $6903: $00
    and b                                         ; $6904: $a0
    ld [$0821], sp                                ; $6905: $08 $21 $08
    inc b                                         ; $6908: $04
    dec bc                                        ; $6909: $0b
    nop                                           ; $690a: $00
    adc [hl]                                      ; $690b: $8e
    ret nz                                        ; $690c: $c0

    add b                                         ; $690d: $80
    stop                                          ; $690e: $10 $00
    jr z, jr_0eb_6912                             ; $6910: $28 $00

jr_0eb_6912:
    ret c                                         ; $6912: $d8

    nop                                           ; $6913: $00
    add b                                         ; $6914: $80
    nop                                           ; $6915: $00
    sub c                                         ; $6916: $91
    inc d                                         ; $6917: $14
    jr nz, jr_0eb_691c                            ; $6918: $20 $02

    ld [bc], a                                    ; $691a: $02
    nop                                           ; $691b: $00

jr_0eb_691c:
    add e                                         ; $691c: $83
    ld h, l                                       ; $691d: $65
    nop                                           ; $691e: $00
    add b                                         ; $691f: $80
    ld [bc], a                                    ; $6920: $02
    nop                                           ; $6921: $00
    add d                                         ; $6922: $82
    add b                                         ; $6923: $80
    ld b, b                                       ; $6924: $40
    ld d, $00                                     ; $6925: $16 $00
    add c                                         ; $6927: $81
    ld bc, $000f                                  ; $6928: $01 $0f $00
    rst $38                                       ; $692b: $ff
    rla                                           ; $692c: $17
    add hl, bc                                    ; $692d: $09
    ld sp, hl                                     ; $692e: $f9
    inc c                                         ; $692f: $0c
    nop                                           ; $6930: $00
    inc de                                        ; $6931: $13
    ld [de], a                                    ; $6932: $12
    or $12                                        ; $6933: $f6 $12
    cp $12                                        ; $6935: $fe $12
    ld b, $14                                     ; $6937: $06 $14
    add hl, bc                                    ; $6939: $09
    ld [hl+], a                                   ; $693a: $22
    rst $38                                       ; $693b: $ff
    ld [hl-], a                                   ; $693c: $32
    rst $38                                       ; $693d: $ff
    ld b, c                                       ; $693e: $41
    ld b, $42                                     ; $693f: $06 $42
    ld sp, hl                                     ; $6941: $f9
    ld b, d                                       ; $6942: $42
    cp $02                                        ; $6943: $fe $02
    ccf                                           ; $6945: $3f
    ld [bc], a                                    ; $6946: $02
    ld e, a                                       ; $6947: $5f
    ld [bc], a                                    ; $6948: $02
    xor a                                         ; $6949: $af
    ld [bc], a                                    ; $694a: $02
    ld d, a                                       ; $694b: $57
    ld [bc], a                                    ; $694c: $02
    cpl                                           ; $694d: $2f
    ld [bc], a                                    ; $694e: $02
    rla                                           ; $694f: $17
    add d                                         ; $6950: $82
    inc bc                                        ; $6951: $03
    dec bc                                        ; $6952: $0b
    ld [bc], a                                    ; $6953: $02
    dec b                                         ; $6954: $05
    adc b                                         ; $6955: $88
    nop                                           ; $6956: $00
    ld [bc], a                                    ; $6957: $02
    nop                                           ; $6958: $00
    ld bc, $0200                                  ; $6959: $01 $00 $02
    nop                                           ; $695c: $00
    ld bc, $0008                                  ; $695d: $01 $08 $00
    inc c                                         ; $6960: $0c
    pop hl                                        ; $6961: $e1
    add c                                         ; $6962: $81
    ldh [$03], a                                  ; $6963: $e0 $03
    pop hl                                        ; $6965: $e1
    sub b                                         ; $6966: $90
    ld b, b                                       ; $6967: $40
    ldh [$80], a                                  ; $6968: $e0 $80
    ld h, c                                       ; $696a: $61
    and b                                         ; $696b: $a0
    ld b, b                                       ; $696c: $40
    nop                                           ; $696d: $00
    ld h, c                                       ; $696e: $61
    jr nz, jr_0eb_68f1                            ; $696f: $20 $80

    nop                                           ; $6971: $00
    ld b, c                                       ; $6972: $41
    nop                                           ; $6973: $00
    jr nz, jr_0eb_6976                            ; $6974: $20 $00

jr_0eb_6976:
    ld b, c                                       ; $6976: $41
    ld [bc], a                                    ; $6977: $02
    ld [$d502], a                                 ; $6978: $ea $02 $d5
    ld [bc], a                                    ; $697b: $02
    xor d                                         ; $697c: $aa
    ld [bc], a                                    ; $697d: $02
    call nc, $a802                                ; $697e: $d4 $02 $a8
    ld [bc], a                                    ; $6981: $02
    ld d, c                                       ; $6982: $51
    adc a                                         ; $6983: $8f
    and b                                         ; $6984: $a0
    and d                                         ; $6985: $a2
    inc b                                         ; $6986: $04
    ld b, h                                       ; $6987: $44
    add b                                         ; $6988: $80
    adc b                                         ; $6989: $88
    nop                                           ; $698a: $00
    inc d                                         ; $698b: $14
    add b                                         ; $698c: $80
    jr z, jr_0eb_698f                             ; $698d: $28 $00

jr_0eb_698f:
    stop                                          ; $698f: $10 $00
    jr nz, jr_0eb_69d3                            ; $6991: $20 $40

    ld [bc], a                                    ; $6993: $02
    nop                                           ; $6994: $00
    add e                                         ; $6995: $83
    add b                                         ; $6996: $80
    ld b, b                                       ; $6997: $40
    nop                                           ; $6998: $00
    ld [bc], a                                    ; $6999: $02
    ld bc, $0202                                  ; $699a: $01 $02 $02
    ld [bc], a                                    ; $699d: $02
    inc b                                         ; $699e: $04
    ld a, [de]                                    ; $699f: $1a
    nop                                           ; $69a0: $00
    add c                                         ; $69a1: $81
    ld b, c                                       ; $69a2: $41
    ld [bc], a                                    ; $69a3: $02
    nop                                           ; $69a4: $00
    adc d                                         ; $69a5: $8a
    add d                                         ; $69a6: $82
    nop                                           ; $69a7: $00
    ld b, b                                       ; $69a8: $40
    nop                                           ; $69a9: $00
    ld [bc], a                                    ; $69aa: $02
    nop                                           ; $69ab: $00
    ld b, b                                       ; $69ac: $40
    nop                                           ; $69ad: $00
    ld [bc], a                                    ; $69ae: $02
    ld bc, $0003                                  ; $69af: $01 $03 $00
    add c                                         ; $69b2: $81
    ld b, b                                       ; $69b3: $40
    ld [$8300], sp                                ; $69b4: $08 $00 $83
    ld b, b                                       ; $69b7: $40
    nop                                           ; $69b8: $00
    ld bc, $0003                                  ; $69b9: $01 $03 $00
    add a                                         ; $69bc: $87
    ld b, b                                       ; $69bd: $40
    nop                                           ; $69be: $00
    ld [bc], a                                    ; $69bf: $02
    nop                                           ; $69c0: $00
    ld b, b                                       ; $69c1: $40
    nop                                           ; $69c2: $00
    ld b, b                                       ; $69c3: $40
    ld [bc], a                                    ; $69c4: $02
    nop                                           ; $69c5: $00
    add d                                         ; $69c6: $82
    ld b, b                                       ; $69c7: $40
    ld [bc], a                                    ; $69c8: $02
    ld [bc], a                                    ; $69c9: $02
    nop                                           ; $69ca: $00
    add c                                         ; $69cb: $81
    ld [bc], a                                    ; $69cc: $02
    ld [bc], a                                    ; $69cd: $02
    nop                                           ; $69ce: $00
    add c                                         ; $69cf: $81
    add c                                         ; $69d0: $81
    inc bc                                        ; $69d1: $03
    nop                                           ; $69d2: $00

jr_0eb_69d3:
    adc d                                         ; $69d3: $8a
    inc bc                                        ; $69d4: $03
    nop                                           ; $69d5: $00
    ld [bc], a                                    ; $69d6: $02
    nop                                           ; $69d7: $00
    ld b, b                                       ; $69d8: $40
    nop                                           ; $69d9: $00
    ld [bc], a                                    ; $69da: $02
    ld bc, $0280                                  ; $69db: $01 $80 $02
    ld [bc], a                                    ; $69de: $02
    nop                                           ; $69df: $00
    add e                                         ; $69e0: $83
    ld b, e                                       ; $69e1: $43
    nop                                           ; $69e2: $00
    jr nz, jr_0eb_69e7                            ; $69e3: $20 $02

    nop                                           ; $69e5: $00
    add c                                         ; $69e6: $81

jr_0eb_69e7:
    add b                                         ; $69e7: $80
    ld [bc], a                                    ; $69e8: $02
    nop                                           ; $69e9: $00
    add d                                         ; $69ea: $82
    jr nz, jr_0eb_6a4d                            ; $69eb: $20 $60

    ld [bc], a                                    ; $69ed: $02
    nop                                           ; $69ee: $00
    add h                                         ; $69ef: $84
    adc b                                         ; $69f0: $88
    add b                                         ; $69f1: $80
    jr z, jr_0eb_69f5                             ; $69f2: $28 $01

    ld [bc], a                                    ; $69f4: $02

jr_0eb_69f5:
    nop                                           ; $69f5: $00
    add a                                         ; $69f6: $87
    ld [$4000], sp                                ; $69f7: $08 $00 $40
    ld [de], a                                    ; $69fa: $12
    add h                                         ; $69fb: $84
    nop                                           ; $69fc: $00
    add b                                         ; $69fd: $80
    add hl, bc                                    ; $69fe: $09
    nop                                           ; $69ff: $00
    add d                                         ; $6a00: $82
    ld [$0200], sp                                ; $6a01: $08 $00 $02
    ld bc, $0083                                  ; $6a04: $01 $83 $00
    ld bc, $0308                                  ; $6a07: $01 $08 $03
    nop                                           ; $6a0a: $00
    add a                                         ; $6a0b: $87
    ld d, l                                       ; $6a0c: $55
    ld b, d                                       ; $6a0d: $42
    db $10                                        ; $6a0e: $10
    ld [bc], a                                    ; $6a0f: $02
    nop                                           ; $6a10: $00
    inc d                                         ; $6a11: $14
    ld [hl+], a                                   ; $6a12: $22
    inc bc                                        ; $6a13: $03
    nop                                           ; $6a14: $00
    add c                                         ; $6a15: $81
    ld [bc], a                                    ; $6a16: $02
    rrca                                          ; $6a17: $0f
    nop                                           ; $6a18: $00
    add d                                         ; $6a19: $82
    ld bc, $0200                                  ; $6a1a: $01 $00 $02
    ld bc, $0082                                  ; $6a1d: $01 $82 $00
    ld bc, $0015                                  ; $6a20: $01 $15 $00
    rst $38                                       ; $6a23: $ff
    ld hl, $f90e                                  ; $6a24: $21 $0e $f9
    inc c                                         ; $6a27: $0c
    nop                                           ; $6a28: $00
    inc de                                        ; $6a29: $13
    inc de                                        ; $6a2a: $13
    rst $30                                       ; $6a2b: $f7
    inc hl                                        ; $6a2c: $23
    rst $30                                       ; $6a2d: $f7
    ld a, $fe                                     ; $6a2e: $3e $fe
    ld b, d                                       ; $6a30: $42
    db $fc                                        ; $6a31: $fc
    ld b, l                                       ; $6a32: $45
    ei                                            ; $6a33: $fb
    ld c, d                                       ; $6a34: $4a
    ld hl, sp+$13                                 ; $6a35: $f8 $13
    rst $38                                       ; $6a37: $ff
    inc hl                                        ; $6a38: $23
    rst $38                                       ; $6a39: $ff
    inc sp                                        ; $6a3a: $33
    nop                                           ; $6a3b: $00
    ld b, h                                       ; $6a3c: $44
    ld b, $13                                     ; $6a3d: $06 $13
    rlca                                          ; $6a3f: $07
    inc hl                                        ; $6a40: $23
    rlca                                          ; $6a41: $07
    ld a, $08                                     ; $6a42: $3e $08
    dec d                                         ; $6a44: $15
    rrca                                          ; $6a45: $0f
    ld [bc], a                                    ; $6a46: $02
    ccf                                           ; $6a47: $3f
    ld [bc], a                                    ; $6a48: $02
    ld e, a                                       ; $6a49: $5f
    ld [bc], a                                    ; $6a4a: $02
    xor a                                         ; $6a4b: $af
    ld [bc], a                                    ; $6a4c: $02

jr_0eb_6a4d:
    ld e, a                                       ; $6a4d: $5f
    ld [bc], a                                    ; $6a4e: $02
    cpl                                           ; $6a4f: $2f
    ld [bc], a                                    ; $6a50: $02
    rla                                           ; $6a51: $17
    ld [bc], a                                    ; $6a52: $02
    dec bc                                        ; $6a53: $0b
    adc d                                         ; $6a54: $8a
    ld bc, $0205                                  ; $6a55: $01 $05 $02
    inc bc                                        ; $6a58: $03
    ld bc, $0004                                  ; $6a59: $01 $04 $00
    ld [bc], a                                    ; $6a5c: $02
    nop                                           ; $6a5d: $00
    ld bc, $0029                                  ; $6a5e: $01 $29 $00
    add h                                         ; $6a61: $84
    add b                                         ; $6a62: $80
    ld bc, $20a0                                  ; $6a63: $01 $a0 $20
    ld [bc], a                                    ; $6a66: $02
    nop                                           ; $6a67: $00
    adc h                                         ; $6a68: $8c
    ld bc, $0020                                  ; $6a69: $01 $20 $00
    ld bc, $8020                                  ; $6a6c: $01 $20 $80
    ld bc, $0100                                  ; $6a6f: $01 $00 $01
    add b                                         ; $6a72: $80
    jr nz, jr_0eb_69f5                            ; $6a73: $20 $80

    inc b                                         ; $6a75: $04
    nop                                           ; $6a76: $00
    add c                                         ; $6a77: $81
    ld h, b                                       ; $6a78: $60
    dec b                                         ; $6a79: $05
    nop                                           ; $6a7a: $00
    add c                                         ; $6a7b: $81
    add b                                         ; $6a7c: $80
    inc bc                                        ; $6a7d: $03
    nop                                           ; $6a7e: $00
    add c                                         ; $6a7f: $81
    add b                                         ; $6a80: $80
    dec b                                         ; $6a81: $05
    nop                                           ; $6a82: $00
    add c                                         ; $6a83: $81
    ld b, b                                       ; $6a84: $40
    dec b                                         ; $6a85: $05
    nop                                           ; $6a86: $00
    add c                                         ; $6a87: $81
    add b                                         ; $6a88: $80
    ld [bc], a                                    ; $6a89: $02
    nop                                           ; $6a8a: $00
    add c                                         ; $6a8b: $81
    ld b, b                                       ; $6a8c: $40
    stop                                          ; $6a8d: $10 $00
    ld [bc], a                                    ; $6a8f: $02
    add b                                         ; $6a90: $80
    ld [$8100], sp                                ; $6a91: $08 $00 $81
    add b                                         ; $6a94: $80
    dec d                                         ; $6a95: $15
    nop                                           ; $6a96: $00
    add c                                         ; $6a97: $81
    add b                                         ; $6a98: $80
    ld e, $00                                     ; $6a99: $1e $00
    ld [$02c3], sp                                ; $6a9b: $08 $c3 $02
    jp nz, $c302                                  ; $6a9e: $c2 $02 $c3

    ld [bc], a                                    ; $6aa1: $02
    jp nz, $c102                                  ; $6aa2: $c2 $02 $c1

    add a                                         ; $6aa5: $87
    add b                                         ; $6aa6: $80
    jp nz, $c100                                  ; $6aa7: $c2 $00 $c1

    ld b, b                                       ; $6aaa: $40
    add d                                         ; $6aab: $82
    ld b, b                                       ; $6aac: $40
    ld [bc], a                                    ; $6aad: $02
    nop                                           ; $6aae: $00
    adc l                                         ; $6aaf: $8d
    add d                                         ; $6ab0: $82
    ld b, b                                       ; $6ab1: $40
    ld bc, $8200                                  ; $6ab2: $01 $00 $82
    ld bc, $0240                                  ; $6ab5: $01 $40 $02
    add b                                         ; $6ab8: $80
    nop                                           ; $6ab9: $00
    ld b, c                                       ; $6aba: $41
    nop                                           ; $6abb: $00
    ld [bc], a                                    ; $6abc: $02
    rrca                                          ; $6abd: $0f
    nop                                           ; $6abe: $00
    add [hl]                                      ; $6abf: $86
    ld b, c                                       ; $6ac0: $41
    nop                                           ; $6ac1: $00
    ld b, b                                       ; $6ac2: $40
    ld bc, $4000                                  ; $6ac3: $01 $00 $40
    inc b                                         ; $6ac6: $04
    nop                                           ; $6ac7: $00
    add d                                         ; $6ac8: $82
    ld [bc], a                                    ; $6ac9: $02
    nop                                           ; $6aca: $00
    ld [bc], a                                    ; $6acb: $02
    add b                                         ; $6acc: $80
    add c                                         ; $6acd: $81
    inc b                                         ; $6ace: $04
    inc bc                                        ; $6acf: $03
    nop                                           ; $6ad0: $00
    adc b                                         ; $6ad1: $88
    add b                                         ; $6ad2: $80
    nop                                           ; $6ad3: $00
    inc b                                         ; $6ad4: $04
    nop                                           ; $6ad5: $00
    add [hl]                                      ; $6ad6: $86
    ld [bc], a                                    ; $6ad7: $02
    nop                                           ; $6ad8: $00
    inc b                                         ; $6ad9: $04
    ld [bc], a                                    ; $6ada: $02
    nop                                           ; $6adb: $00
    add l                                         ; $6adc: $85
    inc b                                         ; $6add: $04
    nop                                           ; $6ade: $00
    ld b, $00                                     ; $6adf: $06 $00
    add h                                         ; $6ae1: $84
    dec b                                         ; $6ae2: $05
    nop                                           ; $6ae3: $00
    add c                                         ; $6ae4: $81
    ld [bc], a                                    ; $6ae5: $02
    ld [bc], a                                    ; $6ae6: $02
    nop                                           ; $6ae7: $00
    adc [hl]                                      ; $6ae8: $8e
    ld [bc], a                                    ; $6ae9: $02
    nop                                           ; $6aea: $00
    db $10                                        ; $6aeb: $10
    and b                                         ; $6aec: $a0
    nop                                           ; $6aed: $00
    ldh [rP1], a                                  ; $6aee: $e0 $00
    ld c, b                                       ; $6af0: $48
    nop                                           ; $6af1: $00
    jr nz, jr_0eb_6af4                            ; $6af2: $20 $00

jr_0eb_6af4:
    adc h                                         ; $6af4: $8c
    add b                                         ; $6af5: $80
    inc h                                         ; $6af6: $24
    inc bc                                        ; $6af7: $03
    nop                                           ; $6af8: $00
    add e                                         ; $6af9: $83
    add b                                         ; $6afa: $80
    nop                                           ; $6afb: $00
    ld [$000e], sp                                ; $6afc: $08 $0e $00
    ld [bc], a                                    ; $6aff: $02
    xor b                                         ; $6b00: $a8
    ld [bc], a                                    ; $6b01: $02
    ld d, h                                       ; $6b02: $54
    ld [bc], a                                    ; $6b03: $02
    xor b                                         ; $6b04: $a8
    ld [bc], a                                    ; $6b05: $02
    ld d, c                                       ; $6b06: $51
    ld [bc], a                                    ; $6b07: $02
    and d                                         ; $6b08: $a2
    ld [bc], a                                    ; $6b09: $02
    ld b, h                                       ; $6b0a: $44
    add d                                         ; $6b0b: $82
    add b                                         ; $6b0c: $80
    adc b                                         ; $6b0d: $88
    ld [bc], a                                    ; $6b0e: $02
    db $10                                        ; $6b0f: $10
    adc c                                         ; $6b10: $89
    nop                                           ; $6b11: $00
    jr z, jr_0eb_6b14                             ; $6b12: $28 $00

jr_0eb_6b14:
    ld d, b                                       ; $6b14: $50
    jr nz, jr_0eb_6b17                            ; $6b15: $20 $00

jr_0eb_6b17:
    ld b, b                                       ; $6b17: $40
    nop                                           ; $6b18: $00
    add b                                         ; $6b19: $80
    inc b                                         ; $6b1a: $04
    nop                                           ; $6b1b: $00
    add c                                         ; $6b1c: $81
    add b                                         ; $6b1d: $80
    inc hl                                        ; $6b1e: $23
    nop                                           ; $6b1f: $00
    add c                                         ; $6b20: $81
    add b                                         ; $6b21: $80
    dec b                                         ; $6b22: $05
    nop                                           ; $6b23: $00
    add c                                         ; $6b24: $81
    add b                                         ; $6b25: $80
    inc bc                                        ; $6b26: $03
    nop                                           ; $6b27: $00
    add c                                         ; $6b28: $81
    db $10                                        ; $6b29: $10
    inc d                                         ; $6b2a: $14
    nop                                           ; $6b2b: $00
    ld [bc], a                                    ; $6b2c: $02
    add b                                         ; $6b2d: $80
    ld e, $00                                     ; $6b2e: $1e $00
    rst $38                                       ; $6b30: $ff
    dec d                                         ; $6b31: $15
    ld [$0cf9], sp                                ; $6b32: $08 $f9 $0c
    nop                                           ; $6b35: $00
    inc de                                        ; $6b36: $13
    inc d                                         ; $6b37: $14
    rst $30                                       ; $6b38: $f7
    inc d                                         ; $6b39: $14
    rst $38                                       ; $6b3a: $ff
    inc d                                         ; $6b3b: $14
    rlca                                          ; $6b3c: $07
    inc h                                         ; $6b3d: $24
    rst $38                                       ; $6b3e: $ff
    ld [hl], $f9                                  ; $6b3f: $36 $f9
    dec [hl]                                      ; $6b41: $35
    ld bc, $f944                                  ; $6b42: $01 $44 $f9
    ld b, h                                       ; $6b45: $44
    inc bc                                        ; $6b46: $03
    ld [bc], a                                    ; $6b47: $02
    rra                                           ; $6b48: $1f
    ld [bc], a                                    ; $6b49: $02
    xor a                                         ; $6b4a: $af
    ld [bc], a                                    ; $6b4b: $02
    ld e, a                                       ; $6b4c: $5f
    ld [bc], a                                    ; $6b4d: $02
    cpl                                           ; $6b4e: $2f
    ld [bc], a                                    ; $6b4f: $02
    rla                                           ; $6b50: $17
    ld [bc], a                                    ; $6b51: $02
    dec bc                                        ; $6b52: $0b
    add d                                         ; $6b53: $82
    ld bc, $0205                                  ; $6b54: $01 $05 $02
    inc bc                                        ; $6b57: $03
    add [hl]                                      ; $6b58: $86
    ld bc, $0005                                  ; $6b59: $01 $05 $00
    ld [bc], a                                    ; $6b5c: $02
    nop                                           ; $6b5d: $00
    ld bc, $000a                                  ; $6b5e: $01 $0a $00
    ld b, $c3                                     ; $6b61: $06 $c3
    ld [bc], a                                    ; $6b63: $02
    jp nz, $c302                                  ; $6b64: $c2 $02 $c3

    ld [bc], a                                    ; $6b67: $02
    jp nz, $c102                                  ; $6b68: $c2 $02 $c1

    ld [bc], a                                    ; $6b6b: $02
    jp nz, $8190                                  ; $6b6c: $c2 $90 $81

    pop bc                                        ; $6b6f: $c1
    ret nz                                        ; $6b70: $c0

    ld [bc], a                                    ; $6b71: $02
    ld b, b                                       ; $6b72: $40
    nop                                           ; $6b73: $00
    ld [bc], a                                    ; $6b74: $02
    add b                                         ; $6b75: $80
    ld b, c                                       ; $6b76: $41
    nop                                           ; $6b77: $00
    add b                                         ; $6b78: $80
    ld [bc], a                                    ; $6b79: $02
    nop                                           ; $6b7a: $00
    ld b, c                                       ; $6b7b: $41
    nop                                           ; $6b7c: $00
    add d                                         ; $6b7d: $82
    ld [bc], a                                    ; $6b7e: $02
    ld d, b                                       ; $6b7f: $50
    ld [bc], a                                    ; $6b80: $02
    xor b                                         ; $6b81: $a8
    ld [bc], a                                    ; $6b82: $02
    ld d, c                                       ; $6b83: $51
    ld [bc], a                                    ; $6b84: $02
    and d                                         ; $6b85: $a2
    ld [bc], a                                    ; $6b86: $02
    ld b, h                                       ; $6b87: $44
    ld [bc], a                                    ; $6b88: $02
    adc b                                         ; $6b89: $88
    ld [bc], a                                    ; $6b8a: $02
    db $10                                        ; $6b8b: $10
    add a                                         ; $6b8c: $87
    nop                                           ; $6b8d: $00
    jr z, jr_0eb_6bd0                             ; $6b8e: $28 $40

    ld d, b                                       ; $6b90: $50
    jr nz, jr_0eb_6b93                            ; $6b91: $20 $00

jr_0eb_6b93:
    ld b, b                                       ; $6b93: $40
    ld [bc], a                                    ; $6b94: $02
    nop                                           ; $6b95: $00
    add c                                         ; $6b96: $81
    add b                                         ; $6b97: $80
    ld [bc], a                                    ; $6b98: $02
    nop                                           ; $6b99: $00
    add c                                         ; $6b9a: $81
    add b                                         ; $6b9b: $80
    dec b                                         ; $6b9c: $05
    nop                                           ; $6b9d: $00
    add a                                         ; $6b9e: $87
    ld b, b                                       ; $6b9f: $40
    ld bc, $0200                                  ; $6ba0: $01 $00 $02
    nop                                           ; $6ba3: $00
    ld b, b                                       ; $6ba4: $40
    ld [bc], a                                    ; $6ba5: $02
    ld [bc], a                                    ; $6ba6: $02
    nop                                           ; $6ba7: $00
    add c                                         ; $6ba8: $81
    ld b, c                                       ; $6ba9: $41
    add hl, bc                                    ; $6baa: $09
    nop                                           ; $6bab: $00
    add c                                         ; $6bac: $81
    ld b, b                                       ; $6bad: $40
    inc bc                                        ; $6bae: $03
    nop                                           ; $6baf: $00
    add d                                         ; $6bb0: $82
    ld bc, $0840                                  ; $6bb1: $01 $40 $08
    nop                                           ; $6bb4: $00
    add c                                         ; $6bb5: $81
    ld bc, $0002                                  ; $6bb6: $01 $02 $00
    add c                                         ; $6bb9: $81
    ld bc, $000a                                  ; $6bba: $01 $0a $00
    add c                                         ; $6bbd: $81
    ld bc, $0005                                  ; $6bbe: $01 $05 $00
    add e                                         ; $6bc1: $83
    dec b                                         ; $6bc2: $05
    nop                                           ; $6bc3: $00
    inc b                                         ; $6bc4: $04
    inc bc                                        ; $6bc5: $03
    nop                                           ; $6bc6: $00
    adc e                                         ; $6bc7: $8b
    stop                                          ; $6bc8: $10 $00
    ld bc, $0102                                  ; $6bca: $01 $02 $01
    nop                                           ; $6bcd: $00
    inc b                                         ; $6bce: $04
    nop                                           ; $6bcf: $00

jr_0eb_6bd0:
    ld [$0c00], sp                                ; $6bd0: $08 $00 $0c
    inc bc                                        ; $6bd3: $03
    nop                                           ; $6bd4: $00
    add l                                         ; $6bd5: $85
    inc c                                         ; $6bd6: $0c
    nop                                           ; $6bd7: $00
    ld [$0800], sp                                ; $6bd8: $08 $00 $08
    inc bc                                        ; $6bdb: $03
    nop                                           ; $6bdc: $00
    add d                                         ; $6bdd: $82
    ld [$0304], sp                                ; $6bde: $08 $04 $03
    nop                                           ; $6be1: $00
    add e                                         ; $6be2: $83
    inc c                                         ; $6be3: $0c
    nop                                           ; $6be4: $00
    ld [$0002], sp                                ; $6be5: $08 $02 $00
    add l                                         ; $6be8: $85
    dec c                                         ; $6be9: $0d
    nop                                           ; $6bea: $00
    ld [$0400], sp                                ; $6beb: $08 $00 $04
    inc b                                         ; $6bee: $04
    nop                                           ; $6bef: $00
    add c                                         ; $6bf0: $81
    dec b                                         ; $6bf1: $05
    ld [bc], a                                    ; $6bf2: $02
    nop                                           ; $6bf3: $00
    add a                                         ; $6bf4: $87
    ld [$0100], sp                                ; $6bf5: $08 $00 $01
    nop                                           ; $6bf8: $00
    ld bc, $2004                                  ; $6bf9: $01 $04 $20
    inc d                                         ; $6bfc: $14
    nop                                           ; $6bfd: $00
    adc d                                         ; $6bfe: $8a
    jr z, jr_0eb_6c12                             ; $6bff: $28 $11

    jr nz, jr_0eb_6c03                            ; $6c01: $20 $00

jr_0eb_6c03:
    inc b                                         ; $6c03: $04
    jr nz, jr_0eb_6c06                            ; $6c04: $20 $00

jr_0eb_6c06:
    ld bc, $0800                                  ; $6c06: $01 $00 $08
    inc d                                         ; $6c09: $14
    nop                                           ; $6c0a: $00
    rst $38                                       ; $6c0b: $ff
    dec d                                         ; $6c0c: $15
    ld [$0cf9], sp                                ; $6c0d: $08 $f9 $0c
    nop                                           ; $6c10: $00
    inc de                                        ; $6c11: $13

jr_0eb_6c12:
    dec d                                         ; $6c12: $15
    ld hl, sp+$15                                 ; $6c13: $f8 $15
    nop                                           ; $6c15: $00
    dec d                                         ; $6c16: $15
    ld b, $25                                     ; $6c17: $06 $25
    rst $38                                       ; $6c19: $ff
    add hl, sp                                    ; $6c1a: $39
    ld sp, hl                                     ; $6c1b: $f9
    ld [hl], $01                                  ; $6c1c: $36 $01
    ld b, l                                       ; $6c1e: $45
    ld hl, sp+$45                                 ; $6c1f: $f8 $45
    inc b                                         ; $6c21: $04
    ld [bc], a                                    ; $6c22: $02
    rra                                           ; $6c23: $1f
    ld [bc], a                                    ; $6c24: $02
    cp a                                          ; $6c25: $bf
    ld [bc], a                                    ; $6c26: $02
    ld e, a                                       ; $6c27: $5f
    ld [bc], a                                    ; $6c28: $02
    cpl                                           ; $6c29: $2f
    ld [bc], a                                    ; $6c2a: $02
    rla                                           ; $6c2b: $17
    ld [bc], a                                    ; $6c2c: $02
    dec bc                                        ; $6c2d: $0b
    ld [bc], a                                    ; $6c2e: $02
    rlca                                          ; $6c2f: $07
    ld [bc], a                                    ; $6c30: $02
    dec bc                                        ; $6c31: $0b
    add [hl]                                      ; $6c32: $86
    nop                                           ; $6c33: $00
    dec b                                         ; $6c34: $05
    nop                                           ; $6c35: $00
    ld [bc], a                                    ; $6c36: $02
    nop                                           ; $6c37: $00
    ld bc, $0002                                  ; $6c38: $01 $02 $00
    add c                                         ; $6c3b: $81
    ld bc, $0003                                  ; $6c3c: $01 $03 $00
    add c                                         ; $6c3f: $81
    ld bc, $0003                                  ; $6c40: $01 $03 $00
    ld [bc], a                                    ; $6c43: $02
    add a                                         ; $6c44: $87
    ld [bc], a                                    ; $6c45: $02
    add [hl]                                      ; $6c46: $86
    ld [bc], a                                    ; $6c47: $02
    add l                                         ; $6c48: $85
    ld [bc], a                                    ; $6c49: $02
    add [hl]                                      ; $6c4a: $86
    ld [bc], a                                    ; $6c4b: $02
    add l                                         ; $6c4c: $85
    ld [bc], a                                    ; $6c4d: $02
    add d                                         ; $6c4e: $82
    ld [bc], a                                    ; $6c4f: $02
    add h                                         ; $6c50: $84
    add d                                         ; $6c51: $82
    add b                                         ; $6c52: $80
    add d                                         ; $6c53: $82
    ld [bc], a                                    ; $6c54: $02
    add h                                         ; $6c55: $84
    adc c                                         ; $6c56: $89
    nop                                           ; $6c57: $00
    add b                                         ; $6c58: $80
    nop                                           ; $6c59: $00
    dec b                                         ; $6c5a: $05
    nop                                           ; $6c5b: $00
    add d                                         ; $6c5c: $82
    nop                                           ; $6c5d: $00
    dec b                                         ; $6c5e: $05
    add d                                         ; $6c5f: $82
    ld [bc], a                                    ; $6c60: $02
    nop                                           ; $6c61: $00
    add e                                         ; $6c62: $83
    inc b                                         ; $6c63: $04
    ld [bc], a                                    ; $6c64: $02
    add b                                         ; $6c65: $80
    ld [bc], a                                    ; $6c66: $02
    db $10                                        ; $6c67: $10
    ld [bc], a                                    ; $6c68: $02
    jr z, @+$04                                   ; $6c69: $28 $02

    ld de, $2202                                  ; $6c6b: $11 $02 $22
    ld [bc], a                                    ; $6c6e: $02
    inc b                                         ; $6c6f: $04
    ld [bc], a                                    ; $6c70: $02
    ld [$1402], sp                                ; $6c71: $08 $02 $14
    add [hl]                                      ; $6c74: $86
    jr nz, jr_0eb_6c9f                            ; $6c75: $20 $28

    nop                                           ; $6c77: $00
    stop                                          ; $6c78: $10 $00
    jr nz, @+$0e                                  ; $6c7a: $20 $0c

    nop                                           ; $6c7c: $00
    add e                                         ; $6c7d: $83
    ld [bc], a                                    ; $6c7e: $02
    add b                                         ; $6c7f: $80
    ld b, c                                       ; $6c80: $41
    inc b                                         ; $6c81: $04
    nop                                           ; $6c82: $00
    add l                                         ; $6c83: $85
    ld b, b                                       ; $6c84: $40
    nop                                           ; $6c85: $00
    ld [bc], a                                    ; $6c86: $02
    ld bc, $0440                                  ; $6c87: $01 $40 $04
    nop                                           ; $6c8a: $00
    add c                                         ; $6c8b: $81
    ld bc, $4002                                  ; $6c8c: $01 $02 $40
    inc b                                         ; $6c8f: $04
    nop                                           ; $6c90: $00
    add c                                         ; $6c91: $81
    ld b, b                                       ; $6c92: $40
    inc bc                                        ; $6c93: $03
    nop                                           ; $6c94: $00
    add c                                         ; $6c95: $81
    ld b, d                                       ; $6c96: $42
    inc bc                                        ; $6c97: $03
    nop                                           ; $6c98: $00
    add e                                         ; $6c99: $83
    ld b, b                                       ; $6c9a: $40
    nop                                           ; $6c9b: $00
    ld [bc], a                                    ; $6c9c: $02
    rlca                                          ; $6c9d: $07
    nop                                           ; $6c9e: $00

jr_0eb_6c9f:
    add c                                         ; $6c9f: $81
    ld bc, $0002                                  ; $6ca0: $01 $02 $00
    add c                                         ; $6ca3: $81
    ld bc, $0002                                  ; $6ca4: $01 $02 $00
    add c                                         ; $6ca7: $81
    ld bc, $0003                                  ; $6ca8: $01 $03 $00
    add c                                         ; $6cab: $81
    dec b                                         ; $6cac: $05
    ld [bc], a                                    ; $6cad: $02
    nop                                           ; $6cae: $00
    add a                                         ; $6caf: $87
    ld [$0001], sp                                ; $6cb0: $08 $01 $00
    add hl, bc                                    ; $6cb3: $09
    nop                                           ; $6cb4: $00
    inc b                                         ; $6cb5: $04
    inc h                                         ; $6cb6: $24
    ld [bc], a                                    ; $6cb7: $02
    nop                                           ; $6cb8: $00
    add h                                         ; $6cb9: $84
    ld hl, $0008                                  ; $6cba: $21 $08 $00
    inc b                                         ; $6cbd: $04
    ld [bc], a                                    ; $6cbe: $02
    nop                                           ; $6cbf: $00
    add l                                         ; $6cc0: $85
    ld [$0400], sp                                ; $6cc1: $08 $00 $04
    nop                                           ; $6cc4: $00
    ld [$0003], sp                                ; $6cc5: $08 $03 $00
    adc b                                         ; $6cc8: $88

jr_0eb_6cc9:
    ld [$0804], sp                                ; $6cc9: $08 $04 $08
    nop                                           ; $6ccc: $00
    ld [$0004], sp                                ; $6ccd: $08 $04 $00
    ld [$0004], sp                                ; $6cd0: $08 $04 $00
    add a                                         ; $6cd3: $87
    inc b                                         ; $6cd4: $04
    nop                                           ; $6cd5: $00
    dec b                                         ; $6cd6: $05
    nop                                           ; $6cd7: $00
    ld [$010c], sp                                ; $6cd8: $08 $0c $01
    add hl, bc                                    ; $6cdb: $09
    nop                                           ; $6cdc: $00
    add h                                         ; $6cdd: $84
    inc b                                         ; $6cde: $04
    ld bc, $0100                                  ; $6cdf: $01 $00 $01
    dec d                                         ; $6ce2: $15
    nop                                           ; $6ce3: $00
    sub b                                         ; $6ce4: $90
    ld [$0400], sp                                ; $6ce5: $08 $00 $04
    ld h, b                                       ; $6ce8: $60
    ld bc, $0020                                  ; $6ce9: $01 $20 $00
    add hl, bc                                    ; $6cec: $09
    nop                                           ; $6ced: $00
    inc b                                         ; $6cee: $04
    nop                                           ; $6cef: $00
    ld d, b                                       ; $6cf0: $50
    nop                                           ; $6cf1: $00
    ld b, b                                       ; $6cf2: $40
    nop                                           ; $6cf3: $00
    jr nz, jr_0eb_6d04                            ; $6cf4: $20 $0e

    nop                                           ; $6cf6: $00
    rst $38                                       ; $6cf7: $ff
    dec d                                         ; $6cf8: $15
    ld [$0cf9], sp                                ; $6cf9: $08 $f9 $0c
    nop                                           ; $6cfc: $00
    inc de                                        ; $6cfd: $13
    ld d, $f9                                     ; $6cfe: $16 $f9
    ld d, $05                                     ; $6d00: $16 $05
    ld h, $ff                                     ; $6d02: $26 $ff

jr_0eb_6d04:
    ld [hl], $f9                                  ; $6d04: $36 $f9
    ld [hl], $02                                  ; $6d06: $36 $02
    ld b, [hl]                                    ; $6d08: $46
    ld sp, hl                                     ; $6d09: $f9
    ld b, [hl]                                    ; $6d0a: $46
    dec b                                         ; $6d0b: $05
    ld b, [hl]                                    ; $6d0c: $46
    ld b, $02                                     ; $6d0d: $06 $02
    rra                                           ; $6d0f: $1f
    ld [bc], a                                    ; $6d10: $02
    cp a                                          ; $6d11: $bf
    ld [bc], a                                    ; $6d12: $02
    ld e, a                                       ; $6d13: $5f
    ld [bc], a                                    ; $6d14: $02
    cpl                                           ; $6d15: $2f
    ld [bc], a                                    ; $6d16: $02
    rla                                           ; $6d17: $17
    ld [bc], a                                    ; $6d18: $02
    rrca                                          ; $6d19: $0f
    ld [bc], a                                    ; $6d1a: $02
    rla                                           ; $6d1b: $17
    add a                                         ; $6d1c: $87
    ld a, [bc]                                    ; $6d1d: $0a
    dec bc                                        ; $6d1e: $0b
    ld bc, $0005                                  ; $6d1f: $01 $05 $00
    ld [bc], a                                    ; $6d22: $02
    ld bc, $0002                                  ; $6d23: $01 $02 $00
    add a                                         ; $6d26: $87
    ld [bc], a                                    ; $6d27: $02
    nop                                           ; $6d28: $00
    ld bc, $0200                                  ; $6d29: $01 $00 $02
    nop                                           ; $6d2c: $00
    ld bc, $0002                                  ; $6d2d: $01 $02 $00
    ld [bc], a                                    ; $6d30: $02
    ret nc                                        ; $6d31: $d0

    ld [bc], a                                    ; $6d32: $02

jr_0eb_6d33:
    xor b                                         ; $6d33: $a8
    ld [bc], a                                    ; $6d34: $02
    pop de                                        ; $6d35: $d1
    ld [bc], a                                    ; $6d36: $02
    and d                                         ; $6d37: $a2
    ld [bc], a                                    ; $6d38: $02
    ld b, h                                       ; $6d39: $44
    ld [bc], a                                    ; $6d3a: $02
    adc d                                         ; $6d3b: $8a
    ld [bc], a                                    ; $6d3c: $02
    ld d, h                                       ; $6d3d: $54
    adc l                                         ; $6d3e: $8d
    nop                                           ; $6d3f: $00
    adc b                                         ; $6d40: $88
    nop                                           ; $6d41: $00
    db $10                                        ; $6d42: $10
    and b                                         ; $6d43: $a0
    nop                                           ; $6d44: $00
    ld b, b                                       ; $6d45: $40
    nop                                           ; $6d46: $00
    jr nz, jr_0eb_6cc9                            ; $6d47: $20 $80

    ld b, b                                       ; $6d49: $40
    nop                                           ; $6d4a: $00
    add b                                         ; $6d4b: $80
    ld [bc], a                                    ; $6d4c: $02
    nop                                           ; $6d4d: $00
    add d                                         ; $6d4e: $82
    ld b, b                                       ; $6d4f: $40
    add b                                         ; $6d50: $80
    ld [bc], a                                    ; $6d51: $02
    nop                                           ; $6d52: $00
    add c                                         ; $6d53: $81
    ld bc, $0003                                  ; $6d54: $01 $03 $00
    add l                                         ; $6d57: $85
    ld bc, $0200                                  ; $6d58: $01 $00 $02
    nop                                           ; $6d5b: $00
    ld b, c                                       ; $6d5c: $41
    dec b                                         ; $6d5d: $05
    nop                                           ; $6d5e: $00
    add l                                         ; $6d5f: $85
    ld bc, $4000                                  ; $6d60: $01 $00 $40
    nop                                           ; $6d63: $00
    ld b, b                                       ; $6d64: $40
    dec b                                         ; $6d65: $05
    nop                                           ; $6d66: $00
    add c                                         ; $6d67: $81
    ld b, b                                       ; $6d68: $40
    inc bc                                        ; $6d69: $03
    nop                                           ; $6d6a: $00
    add h                                         ; $6d6b: $84
    ld [bc], a                                    ; $6d6c: $02
    nop                                           ; $6d6d: $00
    add c                                         ; $6d6e: $81
    ld bc, $0008                                  ; $6d6f: $01 $08 $00
    add a                                         ; $6d72: $87
    ld bc, $0200                                  ; $6d73: $01 $00 $02
    nop                                           ; $6d76: $00
    ld bc, $0100                                  ; $6d77: $01 $00 $01
    dec b                                         ; $6d7a: $05
    nop                                           ; $6d7b: $00
    ld [bc], a                                    ; $6d7c: $02
    ld bc, $0002                                  ; $6d7d: $01 $02 $00
    adc c                                         ; $6d80: $89
    inc b                                         ; $6d81: $04
    nop                                           ; $6d82: $00
    dec b                                         ; $6d83: $05
    nop                                           ; $6d84: $00
    ld [bc], a                                    ; $6d85: $02
    nop                                           ; $6d86: $00
    ld a, [de]                                    ; $6d87: $1a
    nop                                           ; $6d88: $00
    db $10                                        ; $6d89: $10
    ld [bc], a                                    ; $6d8a: $02
    nop                                           ; $6d8b: $00
    add e                                         ; $6d8c: $83
    stop                                          ; $6d8d: $10 $00
    ld [$0004], sp                                ; $6d8f: $08 $04 $00
    add l                                         ; $6d92: $85
    stop                                          ; $6d93: $10 $00
    jr jr_0eb_6d97                                ; $6d95: $18 $00

jr_0eb_6d97:
    db $10                                        ; $6d97: $10
    inc bc                                        ; $6d98: $03
    nop                                           ; $6d99: $00
    add d                                         ; $6d9a: $82
    db $10                                        ; $6d9b: $10
    jr jr_0eb_6da0                                ; $6d9c: $18 $02

    nop                                           ; $6d9e: $00
    adc l                                         ; $6d9f: $8d

jr_0eb_6da0:
    db $10                                        ; $6da0: $10
    ld [$0010], sp                                ; $6da1: $08 $10 $00
    ld [de], a                                    ; $6da4: $12
    inc b                                         ; $6da5: $04
    ld bc, $1803                                  ; $6da6: $01 $03 $18
    inc c                                         ; $6da9: $0c
    ld b, c                                       ; $6daa: $41
    inc b                                         ; $6dab: $04
    ld de, $0003                                  ; $6dac: $11 $03 $00
    add a                                         ; $6daf: $87
    ld a, [hl+]                                   ; $6db0: $2a
    jr nz, jr_0eb_6d33                            ; $6db1: $20 $80

    ld hl, $0008                                  ; $6db3: $21 $08 $00
    inc c                                         ; $6db6: $0c
    ld [de], a                                    ; $6db7: $12
    nop                                           ; $6db8: $00
    adc h                                         ; $6db9: $8c
    add b                                         ; $6dba: $80
    nop                                           ; $6dbb: $00
    add c                                         ; $6dbc: $81
    db $10                                        ; $6dbd: $10
    inc b                                         ; $6dbe: $04
    jr nc, jr_0eb_6dc3                            ; $6dbf: $30 $02

    nop                                           ; $6dc1: $00
    inc b                                         ; $6dc2: $04

jr_0eb_6dc3:
    ld h, c                                       ; $6dc3: $61
    nop                                           ; $6dc4: $00
    add b                                         ; $6dc5: $80
    ld [bc], a                                    ; $6dc6: $02
    nop                                           ; $6dc7: $00
    add d                                         ; $6dc8: $82
    add b                                         ; $6dc9: $80
    ld b, b                                       ; $6dca: $40
    rla                                           ; $6dcb: $17
    nop                                           ; $6dcc: $00
    add c                                         ; $6dcd: $81
    ld bc, $0018                                  ; $6dce: $01 $18 $00
    rst $38                                       ; $6dd1: $ff
    inc de                                        ; $6dd2: $13
    rlca                                          ; $6dd3: $07
    ld sp, hl                                     ; $6dd4: $f9
    inc c                                         ; $6dd5: $0c
    nop                                           ; $6dd6: $00
    inc de                                        ; $6dd7: $13
    rla                                           ; $6dd8: $17
    ld a, [$0417]                                 ; $6dd9: $fa $17 $04
    daa                                           ; $6ddc: $27
    rst $38                                       ; $6ddd: $ff
    add hl, sp                                    ; $6dde: $39
    ld a, [$0338]                                 ; $6ddf: $fa $38 $03
    ld b, a                                       ; $6de2: $47
    ld a, [$0647]                                 ; $6de3: $fa $47 $06
    ld [bc], a                                    ; $6de6: $02

jr_0eb_6de7:
    ld a, $02                                     ; $6de7: $3e $02
    cp [hl]                                       ; $6de9: $be
    ld [bc], a                                    ; $6dea: $02
    ld e, [hl]                                    ; $6deb: $5e
    ld [bc], a                                    ; $6dec: $02
    ld l, $02                                     ; $6ded: $2e $02
    ld e, $02                                     ; $6def: $1e $02
    ld l, $82                                     ; $6df1: $2e $82
    inc d                                         ; $6df3: $14
    ld d, $02                                     ; $6df4: $16 $02
    ld a, [bc]                                    ; $6df6: $0a
    add l                                         ; $6df7: $85
    nop                                           ; $6df8: $00
    inc b                                         ; $6df9: $04
    ld [bc], a                                    ; $6dfa: $02
    nop                                           ; $6dfb: $00
    inc b                                         ; $6dfc: $04
    ld [bc], a                                    ; $6dfd: $02
    nop                                           ; $6dfe: $00
    add l                                         ; $6dff: $85
    ld [bc], a                                    ; $6e00: $02
    nop                                           ; $6e01: $00
    inc b                                         ; $6e02: $04
    nop                                           ; $6e03: $00
    ld [bc], a                                    ; $6e04: $02
    inc bc                                        ; $6e05: $03
    nop                                           ; $6e06: $00
    add c                                         ; $6e07: $81
    ld [bc], a                                    ; $6e08: $02
    ld [bc], a                                    ; $6e09: $02
    ld d, h                                       ; $6e0a: $54
    ld [bc], a                                    ; $6e0b: $02
    ld l, b                                       ; $6e0c: $68
    ld [bc], a                                    ; $6e0d: $02
    ld d, c                                       ; $6e0e: $51
    ld [bc], a                                    ; $6e0f: $02
    ld [hl+], a                                   ; $6e10: $22
    ld [bc], a                                    ; $6e11: $02
    ld b, l                                       ; $6e12: $45
    ld [bc], a                                    ; $6e13: $02
    ld a, [hl+]                                   ; $6e14: $2a
    add d                                         ; $6e15: $82
    inc b                                         ; $6e16: $04
    ld b, h                                       ; $6e17: $44
    ld [bc], a                                    ; $6e18: $02
    ld [$4085], sp                                ; $6e19: $08 $85 $40
    ld d, b                                       ; $6e1c: $50
    jr nz, jr_0eb_6e1f                            ; $6e1d: $20 $00

jr_0eb_6e1f:
    ld d, b                                       ; $6e1f: $50
    ld [bc], a                                    ; $6e20: $02
    nop                                           ; $6e21: $00
    add h                                         ; $6e22: $84
    jr nz, jr_0eb_6e65                            ; $6e23: $20 $40

    nop                                           ; $6e25: $00
    jr nz, jr_0eb_6e2a                            ; $6e26: $20 $02

    nop                                           ; $6e28: $00
    add c                                         ; $6e29: $81

jr_0eb_6e2a:
    ld b, b                                       ; $6e2a: $40
    inc bc                                        ; $6e2b: $03
    nop                                           ; $6e2c: $00
    add d                                         ; $6e2d: $82
    ld [bc], a                                    ; $6e2e: $02
    ld bc, $0004                                  ; $6e2f: $01 $04 $00
    add c                                         ; $6e32: $81
    ld b, b                                       ; $6e33: $40
    rlca                                          ; $6e34: $07
    nop                                           ; $6e35: $00
    add d                                         ; $6e36: $82
    ld b, b                                       ; $6e37: $40
    ld bc, $0004                                  ; $6e38: $01 $04 $00
    add h                                         ; $6e3b: $84
    ld b, b                                       ; $6e3c: $40
    nop                                           ; $6e3d: $00
    ld [bc], a                                    ; $6e3e: $02
    nop                                           ; $6e3f: $00
    ld [bc], a                                    ; $6e40: $02
    ld b, b                                       ; $6e41: $40
    inc bc                                        ; $6e42: $03
    nop                                           ; $6e43: $00
    add h                                         ; $6e44: $84
    ld b, b                                       ; $6e45: $40
    ld [bc], a                                    ; $6e46: $02
    nop                                           ; $6e47: $00
    inc b                                         ; $6e48: $04
    rlca                                          ; $6e49: $07
    nop                                           ; $6e4a: $00
    add c                                         ; $6e4b: $81
    ld [bc], a                                    ; $6e4c: $02
    inc bc                                        ; $6e4d: $03
    nop                                           ; $6e4e: $00
    add c                                         ; $6e4f: $81
    inc b                                         ; $6e50: $04
    ld [bc], a                                    ; $6e51: $02
    nop                                           ; $6e52: $00
    add c                                         ; $6e53: $81
    ld [bc], a                                    ; $6e54: $02
    ld [bc], a                                    ; $6e55: $02
    nop                                           ; $6e56: $00
    add h                                         ; $6e57: $84
    db $10                                        ; $6e58: $10
    ld [bc], a                                    ; $6e59: $02
    nop                                           ; $6e5a: $00
    ld [bc], a                                    ; $6e5b: $02
    ld [bc], a                                    ; $6e5c: $02
    nop                                           ; $6e5d: $00
    add c                                         ; $6e5e: $81
    ld [de], a                                    ; $6e5f: $12
    ld [bc], a                                    ; $6e60: $02
    nop                                           ; $6e61: $00
    adc b                                         ; $6e62: $88
    jr z, jr_0eb_6de7                             ; $6e63: $28 $82

jr_0eb_6e65:
    inc h                                         ; $6e65: $24
    add b                                         ; $6e66: $80
    nop                                           ; $6e67: $00
    jr nz, jr_0eb_6e6a                            ; $6e68: $20 $00

jr_0eb_6e6a:
    db $10                                        ; $6e6a: $10
    ld [bc], a                                    ; $6e6b: $02
    nop                                           ; $6e6c: $00
    add c                                         ; $6e6d: $81
    jr nc, jr_0eb_6e72                            ; $6e6e: $30 $02

    nop                                           ; $6e70: $00
    add c                                         ; $6e71: $81

jr_0eb_6e72:
    jr nz, @+$05                                  ; $6e72: $20 $03

    nop                                           ; $6e74: $00
    add a                                         ; $6e75: $87
    jr nz, jr_0eb_6e78                            ; $6e76: $20 $00

jr_0eb_6e78:
    stop                                          ; $6e78: $10 $00
    jr nz, jr_0eb_6e7c                            ; $6e7a: $20 $00

jr_0eb_6e7c:
    inc [hl]                                      ; $6e7c: $34
    ld [bc], a                                    ; $6e7d: $02
    nop                                           ; $6e7e: $00
    add c                                         ; $6e7f: $81
    db $10                                        ; $6e80: $10
    ld [bc], a                                    ; $6e81: $02
    nop                                           ; $6e82: $00
    add a                                         ; $6e83: $87
    inc h                                         ; $6e84: $24
    ld [$3024], sp                                ; $6e85: $08 $24 $30
    ld bc, HeaderTitle                            ; $6e88: $01 $34 $01
    inc b                                         ; $6e8b: $04
    nop                                           ; $6e8c: $00
    add h                                         ; $6e8d: $84
    inc b                                         ; $6e8e: $04
    nop                                           ; $6e8f: $00
    inc c                                         ; $6e90: $0c
    ld h, b                                       ; $6e91: $60
    ld [bc], a                                    ; $6e92: $02
    nop                                           ; $6e93: $00
    add c                                         ; $6e94: $81
    inc b                                         ; $6e95: $04
    jr jr_0eb_6e98                                ; $6e96: $18 $00

jr_0eb_6e98:
    adc c                                         ; $6e98: $89
    ld bc, $0800                                  ; $6e99: $01 $00 $08
    nop                                           ; $6e9c: $00
    ld b, b                                       ; $6e9d: $40
    add d                                         ; $6e9e: $82
    inc d                                         ; $6e9f: $14
    nop                                           ; $6ea0: $00
    add b                                         ; $6ea1: $80
    inc d                                         ; $6ea2: $14
    nop                                           ; $6ea3: $00
    rst $38                                       ; $6ea4: $ff
    inc de                                        ; $6ea5: $13

jr_0eb_6ea6:
    rlca                                          ; $6ea6: $07
    ld sp, hl                                     ; $6ea7: $f9
    inc c                                         ; $6ea8: $0c
    nop                                           ; $6ea9: $00
    inc de                                        ; $6eaa: $13
    jr jr_0eb_6ea6                                ; $6eab: $18 $f9

    jr jr_0eb_6eb3                                ; $6ead: $18 $04

    jr z, @+$01                                   ; $6eaf: $28 $ff

    inc a                                         ; $6eb1: $3c
    ld sp, hl                                     ; $6eb2: $f9

jr_0eb_6eb3:
    jr c, jr_0eb_6eb9                             ; $6eb3: $38 $04

    ld c, b                                       ; $6eb5: $48
    ld hl, sp+$48                                 ; $6eb6: $f8 $48
    inc b                                         ; $6eb8: $04

jr_0eb_6eb9:
    ld [bc], a                                    ; $6eb9: $02
    rrca                                          ; $6eba: $0f
    ld [bc], a                                    ; $6ebb: $02
    cpl                                           ; $6ebc: $2f
    ld [bc], a                                    ; $6ebd: $02
    rla                                           ; $6ebe: $17
    ld [bc], a                                    ; $6ebf: $02
    rrca                                          ; $6ec0: $0f
    add d                                         ; $6ec1: $82
    dec d                                         ; $6ec2: $15
    rla                                           ; $6ec3: $17
    ld [bc], a                                    ; $6ec4: $02
    dec bc                                        ; $6ec5: $0b
    ld [bc], a                                    ; $6ec6: $02
    dec b                                         ; $6ec7: $05
    add d                                         ; $6ec8: $82
    nop                                           ; $6ec9: $00
    ld [bc], a                                    ; $6eca: $02
    ld [bc], a                                    ; $6ecb: $02
    ld bc, $0087                                  ; $6ecc: $01 $87 $00
    ld [bc], a                                    ; $6ecf: $02
    nop                                           ; $6ed0: $00
    ld bc, $0002                                  ; $6ed1: $01 $02 $00
    ld bc, $0004                                  ; $6ed4: $01 $04 $00
    add c                                         ; $6ed7: $81
    ld bc, $0002                                  ; $6ed8: $01 $02 $00
    ld [bc], a                                    ; $6edb: $02
    ld l, b                                       ; $6edc: $68
    ld [bc], a                                    ; $6edd: $02
    ld d, b                                       ; $6ede: $50
    ld [bc], a                                    ; $6edf: $02
    ld [hl+], a                                   ; $6ee0: $22
    ld [bc], a                                    ; $6ee1: $02
    ld b, l                                       ; $6ee2: $45
    ld [bc], a                                    ; $6ee3: $02
    ld a, [hl+]                                   ; $6ee4: $2a
    ld [bc], a                                    ; $6ee5: $02
    ld b, h                                       ; $6ee6: $44
    ld [bc], a                                    ; $6ee7: $02
    ld [$5002], sp                                ; $6ee8: $08 $02 $50
    add a                                         ; $6eeb: $87
    nop                                           ; $6eec: $00
    jr nz, jr_0eb_6eff                            ; $6eed: $20 $10

    ld b, b                                       ; $6eef: $40
    jr nz, jr_0eb_6ef2                            ; $6ef0: $20 $00

jr_0eb_6ef2:
    ld b, b                                       ; $6ef2: $40
    ld [bc], a                                    ; $6ef3: $02
    nop                                           ; $6ef4: $00
    add e                                         ; $6ef5: $83
    jr nz, jr_0eb_6ef8                            ; $6ef6: $20 $00

jr_0eb_6ef8:
    ld b, b                                       ; $6ef8: $40
    inc bc                                        ; $6ef9: $03
    nop                                           ; $6efa: $00
    add l                                         ; $6efb: $85
    ld b, b                                       ; $6efc: $40
    nop                                           ; $6efd: $00
    ld b, c                                       ; $6efe: $41

jr_0eb_6eff:
    nop                                           ; $6eff: $00
    ld [bc], a                                    ; $6f00: $02
    dec b                                         ; $6f01: $05
    nop                                           ; $6f02: $00
    add c                                         ; $6f03: $81
    ld b, b                                       ; $6f04: $40
    inc bc                                        ; $6f05: $03
    nop                                           ; $6f06: $00
    add e                                         ; $6f07: $83
    ld b, b                                       ; $6f08: $40
    nop                                           ; $6f09: $00
    ld b, b                                       ; $6f0a: $40
    inc bc                                        ; $6f0b: $03
    nop                                           ; $6f0c: $00
    add e                                         ; $6f0d: $83
    ld b, b                                       ; $6f0e: $40
    nop                                           ; $6f0f: $00
    ld [bc], a                                    ; $6f10: $02
    inc bc                                        ; $6f11: $03
    nop                                           ; $6f12: $00
    add d                                         ; $6f13: $82
    ld b, d                                       ; $6f14: $42
    ld b, c                                       ; $6f15: $41
    ld [bc], a                                    ; $6f16: $02
    nop                                           ; $6f17: $00
    add l                                         ; $6f18: $85
    ld [bc], a                                    ; $6f19: $02
    nop                                           ; $6f1a: $00
    ld bc, $0100                                  ; $6f1b: $01 $00 $01
    inc bc                                        ; $6f1e: $03
    nop                                           ; $6f1f: $00
    add d                                         ; $6f20: $82
    ld bc, $0200                                  ; $6f21: $01 $00 $02
    inc b                                         ; $6f24: $04
    add e                                         ; $6f25: $83
    ld bc, $0100                                  ; $6f26: $01 $00 $01
    ld [bc], a                                    ; $6f29: $02
    nop                                           ; $6f2a: $00
    adc l                                         ; $6f2b: $8d
    db $10                                        ; $6f2c: $10
    ld bc, $0100                                  ; $6f2d: $01 $00 $01
    nop                                           ; $6f30: $00
    inc b                                         ; $6f31: $04
    nop                                           ; $6f32: $00
    jr z, jr_0eb_6f35                             ; $6f33: $28 $00

jr_0eb_6f35:
    dec h                                         ; $6f35: $25
    nop                                           ; $6f36: $00
    inc b                                         ; $6f37: $04
    db $10                                        ; $6f38: $10
    ld [bc], a                                    ; $6f39: $02
    nop                                           ; $6f3a: $00
    adc d                                         ; $6f3b: $8a
    inc bc                                        ; $6f3c: $03
    nop                                           ; $6f3d: $00
    jr z, jr_0eb_6f40                             ; $6f3e: $28 $00

jr_0eb_6f40:
    ld b, b                                       ; $6f40: $40
    nop                                           ; $6f41: $00
    ld h, b                                       ; $6f42: $60
    nop                                           ; $6f43: $00
    jr nz, jr_0eb_6f46                            ; $6f44: $20 $00

jr_0eb_6f46:
    ld [bc], a                                    ; $6f46: $02
    ld b, b                                       ; $6f47: $40
    add h                                         ; $6f48: $84
    nop                                           ; $6f49: $00
    ld h, b                                       ; $6f4a: $60
    nop                                           ; $6f4b: $00
    ld b, b                                       ; $6f4c: $40
    ld [bc], a                                    ; $6f4d: $02
    nop                                           ; $6f4e: $00
    add d                                         ; $6f4f: $82
    ld [$0240], sp                                ; $6f50: $08 $40 $02
    nop                                           ; $6f53: $00
    adc l                                         ; $6f54: $8d
    jr nz, jr_0eb_6f57                            ; $6f55: $20 $00

jr_0eb_6f57:
    ld c, b                                       ; $6f57: $48
    nop                                           ; $6f58: $00
    jr nz, jr_0eb_6f5b                            ; $6f59: $20 $00

jr_0eb_6f5b:
    ld b, c                                       ; $6f5b: $41
    ld l, b                                       ; $6f5c: $68
    inc b                                         ; $6f5d: $04
    jr c, @+$42                                   ; $6f5e: $38 $40

    nop                                           ; $6f60: $00
    ld [de], a                                    ; $6f61: $12
    rlca                                          ; $6f62: $07
    nop                                           ; $6f63: $00
    add c                                         ; $6f64: $81
    add b                                         ; $6f65: $80
    ld [bc], a                                    ; $6f66: $02
    nop                                           ; $6f67: $00
    add c                                         ; $6f68: $81
    ld [bc], a                                    ; $6f69: $02
    dec d                                         ; $6f6a: $15
    nop                                           ; $6f6b: $00
    add c                                         ; $6f6c: $81
    ld [$0002], sp                                ; $6f6d: $08 $02 $00
    add e                                         ; $6f70: $83
    inc hl                                        ; $6f71: $23
    ld [$0321], sp                                ; $6f72: $08 $21 $03
    nop                                           ; $6f75: $00
    add e                                         ; $6f76: $83
    jr nz, jr_0eb_6f79                            ; $6f77: $20 $00

jr_0eb_6f79:
    ld [bc], a                                    ; $6f79: $02
    inc d                                         ; $6f7a: $14
    nop                                           ; $6f7b: $00
    rst $38                                       ; $6f7c: $ff
    inc de                                        ; $6f7d: $13
    rlca                                          ; $6f7e: $07
    ld sp, hl                                     ; $6f7f: $f9
    inc c                                         ; $6f80: $0c
    nop                                           ; $6f81: $00
    inc de                                        ; $6f82: $13
    add hl, de                                    ; $6f83: $19
    ei                                            ; $6f84: $fb
    add hl, de                                    ; $6f85: $19
    inc bc                                        ; $6f86: $03
    add hl, hl                                    ; $6f87: $29
    rst $38                                       ; $6f88: $ff
    dec sp                                        ; $6f89: $3b
    ei                                            ; $6f8a: $fb
    add hl, sp                                    ; $6f8b: $39
    ld [bc], a                                    ; $6f8c: $02
    ld c, c                                       ; $6f8d: $49
    rst $38                                       ; $6f8e: $ff
    ld c, c                                       ; $6f8f: $49
    inc b                                         ; $6f90: $04
    ld [bc], a                                    ; $6f91: $02
    inc e                                         ; $6f92: $1c
    ld [bc], a                                    ; $6f93: $02
    ld e, h                                       ; $6f94: $5c
    ld [bc], a                                    ; $6f95: $02
    inc a                                         ; $6f96: $3c
    ld [bc], a                                    ; $6f97: $02
    ld e, h                                       ; $6f98: $5c
    add d                                         ; $6f99: $82
    jr z, jr_0eb_6fc8                             ; $6f9a: $28 $2c

    ld [bc], a                                    ; $6f9c: $02
    inc d                                         ; $6f9d: $14
    ld [bc], a                                    ; $6f9e: $02
    ld [$0402], sp                                ; $6f9f: $08 $02 $04
    adc c                                         ; $6fa2: $89
    nop                                           ; $6fa3: $00

jr_0eb_6fa4:
    ld [$0400], sp                                ; $6fa4: $08 $00 $04
    ld [$0400], sp                                ; $6fa7: $08 $00 $04
    nop                                           ; $6faa: $00
    ld [$0002], sp                                ; $6fab: $08 $02 $00
    add c                                         ; $6fae: $81
    inc b                                         ; $6faf: $04
    inc bc                                        ; $6fb0: $03
    nop                                           ; $6fb1: $00
    add c                                         ; $6fb2: $81
    inc b                                         ; $6fb3: $04
    ld [bc], a                                    ; $6fb4: $02
    jr z, jr_0eb_6fb9                             ; $6fb5: $28 $02

    db $10                                        ; $6fb7: $10
    ld [bc], a                                    ; $6fb8: $02

jr_0eb_6fb9:
    ld [hl+], a                                   ; $6fb9: $22
    ld [bc], a                                    ; $6fba: $02
    dec d                                         ; $6fbb: $15
    add d                                         ; $6fbc: $82
    ld [bc], a                                    ; $6fbd: $02
    ld [hl+], a                                   ; $6fbe: $22
    ld [bc], a                                    ; $6fbf: $02
    inc b                                         ; $6fc0: $04
    add d                                         ; $6fc1: $82
    jr nz, jr_0eb_6fec                            ; $6fc2: $20 $28

    ld [bc], a                                    ; $6fc4: $02
    db $10                                        ; $6fc5: $10
    add l                                         ; $6fc6: $85
    nop                                           ; $6fc7: $00

jr_0eb_6fc8:
    jr z, jr_0eb_6fda                             ; $6fc8: $28 $10

    nop                                           ; $6fca: $00
    jr nz, jr_0eb_6fcf                            ; $6fcb: $20 $02

    nop                                           ; $6fcd: $00
    add h                                         ; $6fce: $84

jr_0eb_6fcf:
    stop                                          ; $6fcf: $10 $00
    jr nz, jr_0eb_6fe3                            ; $6fd1: $20 $10

    ld [bc], a                                    ; $6fd3: $02
    nop                                           ; $6fd4: $00
    add c                                         ; $6fd5: $81
    jr nz, jr_0eb_6fdb                            ; $6fd6: $20 $03

    nop                                           ; $6fd8: $00
    add c                                         ; $6fd9: $81

jr_0eb_6fda:
    ld [bc], a                                    ; $6fda: $02

jr_0eb_6fdb:
    inc b                                         ; $6fdb: $04
    nop                                           ; $6fdc: $00
    add c                                         ; $6fdd: $81
    ld b, b                                       ; $6fde: $40
    ld [bc], a                                    ; $6fdf: $02
    nop                                           ; $6fe0: $00
    add l                                         ; $6fe1: $85
    add b                                         ; $6fe2: $80

jr_0eb_6fe3:
    ld b, b                                       ; $6fe3: $40
    nop                                           ; $6fe4: $00
    ld b, b                                       ; $6fe5: $40
    ld bc, $0002                                  ; $6fe6: $01 $02 $00
    add c                                         ; $6fe9: $81
    ld b, b                                       ; $6fea: $40
    inc bc                                        ; $6feb: $03

jr_0eb_6fec:
    nop                                           ; $6fec: $00
    add c                                         ; $6fed: $81
    ld b, b                                       ; $6fee: $40
    ld [bc], a                                    ; $6fef: $02
    nop                                           ; $6ff0: $00
    adc b                                         ; $6ff1: $88
    ld [bc], a                                    ; $6ff2: $02
    ld bc, $0040                                  ; $6ff3: $01 $40 $00
    ld [bc], a                                    ; $6ff6: $02
    nop                                           ; $6ff7: $00
    ld [bc], a                                    ; $6ff8: $02
    ld bc, $0002                                  ; $6ff9: $01 $02 $00
    add c                                         ; $6ffc: $81
    ld [$0005], sp                                ; $6ffd: $08 $05 $00
    add c                                         ; $7000: $81
    inc b                                         ; $7001: $04
    ld [bc], a                                    ; $7002: $02
    nop                                           ; $7003: $00
    add c                                         ; $7004: $81
    inc b                                         ; $7005: $04
    ld [bc], a                                    ; $7006: $02
    nop                                           ; $7007: $00
    add c                                         ; $7008: $81
    inc b                                         ; $7009: $04
    ld [bc], a                                    ; $700a: $02
    nop                                           ; $700b: $00
    add c                                         ; $700c: $81
    inc d                                         ; $700d: $14
    inc bc                                        ; $700e: $03
    nop                                           ; $700f: $00
    add c                                         ; $7010: $81
    inc b                                         ; $7011: $04
    ld [bc], a                                    ; $7012: $02
    jr nz, jr_0eb_6fa4                            ; $7013: $20 $8f

    inc b                                         ; $7015: $04
    stop                                          ; $7016: $10 $00
    add b                                         ; $7018: $80
    db $10                                        ; $7019: $10
    add b                                         ; $701a: $80
    inc b                                         ; $701b: $04
    nop                                           ; $701c: $00
    jr nz, jr_0eb_701f                            ; $701d: $20 $00

jr_0eb_701f:
    stop                                          ; $701f: $10 $00
    ld [$1000], sp                                ; $7021: $08 $00 $10
    ld [bc], a                                    ; $7024: $02
    nop                                           ; $7025: $00
    add a                                         ; $7026: $87
    stop                                          ; $7027: $10 $00
    db $10                                        ; $7029: $10
    ld [$1000], sp                                ; $702a: $08 $00 $10
    ld [$0002], sp                                ; $702d: $08 $02 $00
    add c                                         ; $7030: $81
    db $10                                        ; $7031: $10
    ld [bc], a                                    ; $7032: $02
    nop                                           ; $7033: $00
    add e                                         ; $7034: $83
    ld [$0a00], sp                                ; $7035: $08 $00 $0a
    ld [bc], a                                    ; $7038: $02
    nop                                           ; $7039: $00
    add h                                         ; $703a: $84
    db $10                                        ; $703b: $10
    ld [bc], a                                    ; $703c: $02
    jr jr_0eb_7041                                ; $703d: $18 $02

    ld [bc], a                                    ; $703f: $02
    nop                                           ; $7040: $00

jr_0eb_7041:
    add e                                         ; $7041: $83
    add hl, de                                    ; $7042: $19
    nop                                           ; $7043: $00
    ld bc, $0003                                  ; $7044: $01 $03 $00
    add [hl]                                      ; $7047: $86
    add b                                         ; $7048: $80
    ld [bc], a                                    ; $7049: $02
    add b                                         ; $704a: $80
    ld [bc], a                                    ; $704b: $02
    nop                                           ; $704c: $00
    ld bc, $0016                                  ; $704d: $01 $16 $00
    add [hl]                                      ; $7050: $86
    ld bc, $0900                                  ; $7051: $01 $00 $09
    nop                                           ; $7054: $00
    inc b                                         ; $7055: $04
    db $10                                        ; $7056: $10
    add hl, de                                    ; $7057: $19
    nop                                           ; $7058: $00
    rst $38                                       ; $7059: $ff
    ld de, $f906                                  ; $705a: $11 $06 $f9
    inc c                                         ; $705d: $0c
    nop                                           ; $705e: $00
    inc de                                        ; $705f: $13
    dec e                                         ; $7060: $1d
    cp $1f                                        ; $7061: $fe $1f
    nop                                           ; $7063: $00
    cpl                                           ; $7064: $2f
    rst $38                                       ; $7065: $ff
    ld b, b                                       ; $7066: $40
    ld hl, sp+$3f                                 ; $7067: $f8 $3f
    nop                                           ; $7069: $00
    ld b, b                                       ; $706a: $40
    inc b                                         ; $706b: $04
    ld [bc], a                                    ; $706c: $02
    ld hl, $a002                                  ; $706d: $21 $02 $a0
    ld [bc], a                                    ; $7070: $02
    ld b, c                                       ; $7071: $41
    ld [bc], a                                    ; $7072: $02
    jr nz, jr_0eb_7077                            ; $7073: $20 $02

    ld b, c                                       ; $7075: $41
    adc c                                         ; $7076: $89

jr_0eb_7077:
    nop                                           ; $7077: $00
    jr nz, jr_0eb_707a                            ; $7078: $20 $00

jr_0eb_707a:
    ld b, c                                       ; $707a: $41
    jr nz, jr_0eb_707d                            ; $707b: $20 $00

jr_0eb_707d:
    ld b, c                                       ; $707d: $41
    nop                                           ; $707e: $00
    jr nz, jr_0eb_7083                            ; $707f: $20 $02

    nop                                           ; $7081: $00
    add c                                         ; $7082: $81

jr_0eb_7083:
    ld bc, $000a                                  ; $7083: $01 $0a $00
    ld [bc], a                                    ; $7086: $02
    ld bc, $0202                                  ; $7087: $01 $02 $02
    add h                                         ; $708a: $84
    nop                                           ; $708b: $00
    ld bc, $0200                                  ; $708c: $01 $00 $02
    ld [bc], a                                    ; $708f: $02
    nop                                           ; $7090: $00
    add c                                         ; $7091: $81
    ld [bc], a                                    ; $7092: $02
    inc b                                         ; $7093: $04
    nop                                           ; $7094: $00
    add c                                         ; $7095: $81
    ld [bc], a                                    ; $7096: $02
    dec c                                         ; $7097: $0d
    nop                                           ; $7098: $00
    add c                                         ; $7099: $81
    add b                                         ; $709a: $80
    ld [bc], a                                    ; $709b: $02
    nop                                           ; $709c: $00
    add h                                         ; $709d: $84
    ld b, b                                       ; $709e: $40
    ld bc, $4000                                  ; $709f: $01 $00 $40
    inc bc                                        ; $70a2: $03
    nop                                           ; $70a3: $00
    add c                                         ; $70a4: $81
    ld b, d                                       ; $70a5: $42
    inc bc                                        ; $70a6: $03
    nop                                           ; $70a7: $00
    adc d                                         ; $70a8: $8a
    ld [bc], a                                    ; $70a9: $02
    nop                                           ; $70aa: $00
    ld b, b                                       ; $70ab: $40
    ld [bc], a                                    ; $70ac: $02
    ld b, b                                       ; $70ad: $40
    nop                                           ; $70ae: $00
    ld [bc], a                                    ; $70af: $02
    nop                                           ; $70b0: $00
    ld b, c                                       ; $70b1: $41
    nop                                           ; $70b2: $00
    ld [bc], a                                    ; $70b3: $02
    ld [bc], a                                    ; $70b4: $02
    adc l                                         ; $70b5: $8d
    ld b, c                                       ; $70b6: $41
    nop                                           ; $70b7: $00
    ld bc, $0200                                  ; $70b8: $01 $00 $02
    ld b, b                                       ; $70bb: $40
    ld [bc], a                                    ; $70bc: $02
    nop                                           ; $70bd: $00
    inc bc                                        ; $70be: $03
    nop                                           ; $70bf: $00
    ld [bc], a                                    ; $70c0: $02
    nop                                           ; $70c1: $00
    ld [bc], a                                    ; $70c2: $02
    dec b                                         ; $70c3: $05
    nop                                           ; $70c4: $00
    add c                                         ; $70c5: $81
    ld [$0003], sp                                ; $70c6: $08 $03 $00
    add [hl]                                      ; $70c9: $86
    ld [bc], a                                    ; $70ca: $02
    nop                                           ; $70cb: $00
    inc d                                         ; $70cc: $14
    ld [de], a                                    ; $70cd: $12
    nop                                           ; $70ce: $00
    ld [bc], a                                    ; $70cf: $02
    ld [bc], a                                    ; $70d0: $02
    nop                                           ; $70d1: $00
    add d                                         ; $70d2: $82
    ld [$0201], sp                                ; $70d3: $08 $01 $02
    nop                                           ; $70d6: $00
    add c                                         ; $70d7: $81
    sub h                                         ; $70d8: $94
    rlca                                          ; $70d9: $07
    nop                                           ; $70da: $00
    add c                                         ; $70db: $81
    add h                                         ; $70dc: $84
    inc bc                                        ; $70dd: $03
    nop                                           ; $70de: $00
    adc a                                         ; $70df: $8f
    add h                                         ; $70e0: $84
    ld [bc], a                                    ; $70e1: $02
    add b                                         ; $70e2: $80
    nop                                           ; $70e3: $00
    inc b                                         ; $70e4: $04
    add b                                         ; $70e5: $80
    ld [bc], a                                    ; $70e6: $02
    add b                                         ; $70e7: $80
    inc b                                         ; $70e8: $04
    nop                                           ; $70e9: $00
    ld b, $00                                     ; $70ea: $06 $00
    rlca                                          ; $70ec: $07
    nop                                           ; $70ed: $00
    add c                                         ; $70ee: $81
    ld [bc], a                                    ; $70ef: $02
    nop                                           ; $70f0: $00
    add c                                         ; $70f1: $81
    ld [bc], a                                    ; $70f2: $02
    ld [bc], a                                    ; $70f3: $02
    nop                                           ; $70f4: $00
    add c                                         ; $70f5: $81
    add d                                         ; $70f6: $82
    inc bc                                        ; $70f7: $03
    nop                                           ; $70f8: $00
    add c                                         ; $70f9: $81
    ld [bc], a                                    ; $70fa: $02
    ld [bc], a                                    ; $70fb: $02
    nop                                           ; $70fc: $00
    add c                                         ; $70fd: $81
    ld [$0006], sp                                ; $70fe: $08 $06 $00
    add c                                         ; $7101: $81
    ld [$0003], sp                                ; $7102: $08 $03 $00
    add d                                         ; $7105: $82
    ld bc, $020c                                  ; $7106: $01 $0c $02
    nop                                           ; $7109: $00
    add d                                         ; $710a: $82
    ld [$0202], sp                                ; $710b: $08 $02 $02
    nop                                           ; $710e: $00
    add l                                         ; $710f: $85
    ld [$0201], sp                                ; $7110: $08 $01 $02
    nop                                           ; $7113: $00
    add hl, bc                                    ; $7114: $09
    ld [$ff00], sp                                ; $7115: $08 $00 $ff
    rrca                                          ; $7118: $0f
    dec b                                         ; $7119: $05
    ld sp, hl                                     ; $711a: $f9
    inc c                                         ; $711b: $0c
    nop                                           ; $711c: $00
    inc de                                        ; $711d: $13
    rra                                           ; $711e: $1f
    rst $38                                       ; $711f: $ff
    ld hl, $3100                                  ; $7120: $21 $00 $31
    rst $38                                       ; $7123: $ff
    ccf                                           ; $7124: $3f
    ei                                            ; $7125: $fb
    ccf                                           ; $7126: $3f
    inc b                                         ; $7127: $04
    ld [bc], a                                    ; $7128: $02
    add d                                         ; $7129: $82
    ld [bc], a                                    ; $712a: $02
    ld b, c                                       ; $712b: $41
    ld [bc], a                                    ; $712c: $02
    add d                                         ; $712d: $82
    ld [bc], a                                    ; $712e: $02
    ld b, c                                       ; $712f: $41
    ld [bc], a                                    ; $7130: $02
    add d                                         ; $7131: $82
    add a                                         ; $7132: $87
    nop                                           ; $7133: $00
    ld b, c                                       ; $7134: $41
    nop                                           ; $7135: $00
    ld [bc], a                                    ; $7136: $02
    nop                                           ; $7137: $00
    ld b, b                                       ; $7138: $40
    ld [bc], a                                    ; $7139: $02
    ld b, $00                                     ; $713a: $06 $00
    add h                                         ; $713c: $84
    ld b, c                                       ; $713d: $41
    nop                                           ; $713e: $00
    add b                                         ; $713f: $80
    nop                                           ; $7140: $00
    ld [bc], a                                    ; $7141: $02
    ld b, b                                       ; $7142: $40
    add c                                         ; $7143: $81
    ld bc, $0002                                  ; $7144: $01 $02 $00
    ld [bc], a                                    ; $7147: $02
    ld bc, $001a                                  ; $7148: $01 $1a $00
    add d                                         ; $714b: $82
    ld [bc], a                                    ; $714c: $02
    add b                                         ; $714d: $80
    inc bc                                        ; $714e: $03
    nop                                           ; $714f: $00
    add d                                         ; $7150: $82
    ld b, b                                       ; $7151: $40
    ld [bc], a                                    ; $7152: $02
    ld [bc], a                                    ; $7153: $02
    nop                                           ; $7154: $00
    add e                                         ; $7155: $83
    ld b, b                                       ; $7156: $40
    nop                                           ; $7157: $00
    ld [bc], a                                    ; $7158: $02
    dec b                                         ; $7159: $05
    nop                                           ; $715a: $00
    add l                                         ; $715b: $85
    ld [bc], a                                    ; $715c: $02
    nop                                           ; $715d: $00
    ld bc, $8200                                  ; $715e: $01 $00 $82
    ld [bc], a                                    ; $7161: $02
    nop                                           ; $7162: $00
    adc d                                         ; $7163: $8a
    ld [bc], a                                    ; $7164: $02
    nop                                           ; $7165: $00
    ld bc, $0042                                  ; $7166: $01 $42 $00
    ld [bc], a                                    ; $7169: $02
    nop                                           ; $716a: $00
    ld b, c                                       ; $716b: $41
    ld [bc], a                                    ; $716c: $02
    ld b, b                                       ; $716d: $40
    rlca                                          ; $716e: $07
    nop                                           ; $716f: $00
    add c                                         ; $7170: $81
    inc d                                         ; $7171: $14
    inc bc                                        ; $7172: $03
    nop                                           ; $7173: $00
    adc d                                         ; $7174: $8a
    inc h                                         ; $7175: $24
    inc b                                         ; $7176: $04
    jr nz, @+$12                                  ; $7177: $20 $10

    nop                                           ; $7179: $00
    db $10                                        ; $717a: $10
    add b                                         ; $717b: $80
    nop                                           ; $717c: $00
    add h                                         ; $717d: $84
    jr nz, jr_0eb_7182                            ; $717e: $20 $02

    nop                                           ; $7180: $00
    add e                                         ; $7181: $83

jr_0eb_7182:
    ld [$0800], sp                                ; $7182: $08 $00 $08
    dec c                                         ; $7185: $0d
    nop                                           ; $7186: $00
    sub [hl]                                      ; $7187: $96
    jr nz, @+$0a                                  ; $7188: $20 $08

    jr nz, jr_0eb_718c                            ; $718a: $20 $00

jr_0eb_718c:
    ld b, b                                       ; $718c: $40
    ld [$0060], sp                                ; $718d: $08 $60 $00
    ld [$6400], sp                                ; $7190: $08 $00 $64
    ld bc, $0820                                  ; $7193: $01 $20 $08
    ld bc, $0400                                  ; $7196: $01 $00 $04
    db $10                                        ; $7199: $10
    ld b, b                                       ; $719a: $40
    nop                                           ; $719b: $00
    ld b, b                                       ; $719c: $40
    jr nz, @+$07                                  ; $719d: $20 $05

    nop                                           ; $719f: $00
    rst $38                                       ; $71a0: $ff
    rlca                                          ; $71a1: $07
    ld bc, $06fd                                  ; $71a2: $01 $fd $06
    di                                            ; $71a5: $f3
    ld bc, $fcf3                                  ; $71a6: $01 $f3 $fc
    adc l                                         ; $71a9: $8d
    ld [$0c00], sp                                ; $71aa: $08 $00 $0c
    nop                                           ; $71ad: $00
    inc b                                         ; $71ae: $04
    nop                                           ; $71af: $00
    ld b, $00                                     ; $71b0: $06 $00
    ld [bc], a                                    ; $71b2: $02
    inc b                                         ; $71b3: $04
    inc bc                                        ; $71b4: $03
    inc b                                         ; $71b5: $04
    dec b                                         ; $71b6: $05
    ld [bc], a                                    ; $71b7: $02
    ld [bc], a                                    ; $71b8: $02
    adc b                                         ; $71b9: $88
    dec c                                         ; $71ba: $0d
    inc b                                         ; $71bb: $04
    dec bc                                        ; $71bc: $0b
    nop                                           ; $71bd: $00
    ld c, $0a                                     ; $71be: $0e $0a
    ld e, $16                                     ; $71c0: $1e $16
    inc bc                                        ; $71c2: $03
    ld e, $02                                     ; $71c3: $1e $02
    inc c                                         ; $71c5: $0c
    inc b                                         ; $71c6: $04
    nop                                           ; $71c7: $00
    rst $38                                       ; $71c8: $ff
    add hl, bc                                    ; $71c9: $09
    ld [bc], a                                    ; $71ca: $02
    db $fd                                        ; $71cb: $fd
    dec b                                         ; $71cc: $05
    di                                            ; $71cd: $f3
    ld bc, $fcef                                  ; $71ce: $01 $ef $fc
    rst $38                                       ; $71d1: $ff
    db $fc                                        ; $71d2: $fc
    add e                                         ; $71d3: $83
    ld [$0800], sp                                ; $71d4: $08 $00 $08
    inc bc                                        ; $71d7: $03
    nop                                           ; $71d8: $00
    sbc c                                         ; $71d9: $99
    inc b                                         ; $71da: $04
    nop                                           ; $71db: $00
    inc b                                         ; $71dc: $04
    nop                                           ; $71dd: $00
    inc b                                         ; $71de: $04
    nop                                           ; $71df: $00
    ld b, $00                                     ; $71e0: $06 $00
    ld b, $00                                     ; $71e2: $06 $00
    ld b, $00                                     ; $71e4: $06 $00
    ld b, $09                                     ; $71e6: $06 $09
    ld [bc], a                                    ; $71e8: $02
    dec c                                         ; $71e9: $0d
    inc b                                         ; $71ea: $04
    dec bc                                        ; $71eb: $0b
    ld [bc], a                                    ; $71ec: $02
    dec e                                         ; $71ed: $1d
    db $10                                        ; $71ee: $10
    rra                                           ; $71ef: $1f
    ld a, [bc]                                    ; $71f0: $0a
    ld e, $14                                     ; $71f1: $1e $14
    inc bc                                        ; $71f3: $03
    ld e, $02                                     ; $71f4: $1e $02
    inc c                                         ; $71f6: $0c
    inc e                                         ; $71f7: $1c
    nop                                           ; $71f8: $00
    rst $38                                       ; $71f9: $ff
    add hl, bc                                    ; $71fa: $09
    ld [bc], a                                    ; $71fb: $02
    db $fd                                        ; $71fc: $fd
    dec b                                         ; $71fd: $05
    di                                            ; $71fe: $f3
    ld bc, $fbed                                  ; $71ff: $01 $ed $fb
    db $fd                                        ; $7202: $fd
    ei                                            ; $7203: $fb
    add e                                         ; $7204: $83
    ld [bc], a                                    ; $7205: $02
    nop                                           ; $7206: $00
    ld [bc], a                                    ; $7207: $02
    dec b                                         ; $7208: $05
    nop                                           ; $7209: $00
    sbc [hl]                                      ; $720a: $9e
    inc b                                         ; $720b: $04
    nop                                           ; $720c: $00
    inc b                                         ; $720d: $04
    nop                                           ; $720e: $00
    inc b                                         ; $720f: $04
    nop                                           ; $7210: $00
    inc b                                         ; $7211: $04
    nop                                           ; $7212: $00
    inc c                                         ; $7213: $0c
    nop                                           ; $7214: $00
    inc c                                         ; $7215: $0c
    nop                                           ; $7216: $00
    inc c                                         ; $7217: $0c
    nop                                           ; $7218: $00
    ld b, $18                                     ; $7219: $06 $18
    ld a, [bc]                                    ; $721b: $0a
    inc d                                         ; $721c: $14
    inc b                                         ; $721d: $04
    ld a, [de]                                    ; $721e: $1a
    ld [$0116], sp                                ; $721f: $08 $16 $01
    rra                                           ; $7222: $1f
    dec bc                                        ; $7223: $0b
    rrca                                          ; $7224: $0f
    dec b                                         ; $7225: $05
    rrca                                          ; $7226: $0f
    dec bc                                        ; $7227: $0b
    rrca                                          ; $7228: $0f
    ld [bc], a                                    ; $7229: $02
    ld b, $18                                     ; $722a: $06 $18
    nop                                           ; $722c: $00
    rst $38                                       ; $722d: $ff
    add hl, bc                                    ; $722e: $09
    ld [bc], a                                    ; $722f: $02
    db $fd                                        ; $7230: $fd
    dec b                                         ; $7231: $05
    di                                            ; $7232: $f3
    ld bc, $fbec                                  ; $7233: $01 $ec $fb
    db $fc                                        ; $7236: $fc
    ei                                            ; $7237: $fb
    add c                                         ; $7238: $81
    inc b                                         ; $7239: $04
    dec c                                         ; $723a: $0d
    nop                                           ; $723b: $00
    sbc d                                         ; $723c: $9a
    ld [$0800], sp                                ; $723d: $08 $00 $08
    nop                                           ; $7240: $00
    ld [$1800], sp                                ; $7241: $08 $00 $18
    nop                                           ; $7244: $00
    jr jr_0eb_7247                                ; $7245: $18 $00

jr_0eb_7247:
    ld [$1410], sp                                ; $7247: $08 $10 $14
    ld [$100c], sp                                ; $724a: $08 $0c $10
    inc d                                         ; $724d: $14
    ld a, [bc]                                    ; $724e: $0a
    nop                                           ; $724f: $00
    ld e, $05                                     ; $7250: $1e $05
    rrca                                          ; $7252: $0f
    ld a, [bc]                                    ; $7253: $0a
    rrca                                          ; $7254: $0f
    dec c                                         ; $7255: $0d
    rrca                                          ; $7256: $0f
    ld [bc], a                                    ; $7257: $02
    ld b, $16                                     ; $7258: $06 $16
    nop                                           ; $725a: $00
    rst $38                                       ; $725b: $ff
    add hl, bc                                    ; $725c: $09
    ld [bc], a                                    ; $725d: $02
    ei                                            ; $725e: $fb
    inc bc                                        ; $725f: $03
    db $fc                                        ; $7260: $fc
    ld [bc], a                                    ; $7261: $02
    ei                                            ; $7262: $fb
    ld hl, sp-$05                                 ; $7263: $f8 $fb
    nop                                           ; $7265: $00
    ld b, $00                                     ; $7266: $06 $00
    adc d                                         ; $7268: $8a
    ld bc, $6f7f                                  ; $7269: $01 $7f $6f
    sub e                                         ; $726c: $93
    daa                                           ; $726d: $27
    ld e, e                                       ; $726e: $5b
    inc bc                                        ; $726f: $03
    ld l, a                                       ; $7270: $6f
    dec bc                                        ; $7271: $0b
    cpl                                           ; $7272: $2f
    ld [bc], a                                    ; $7273: $02
    ld [bc], a                                    ; $7274: $02
    rrca                                          ; $7275: $0f
    nop                                           ; $7276: $00
    ld [bc], a                                    ; $7277: $02
    ld e, $8d                                     ; $7278: $1e $8d
    ld hl, $5d22                                  ; $727a: $21 $22 $5d
    jp nz, $c2a5                                  ; $727d: $c2 $a5 $c2

    and l                                         ; $7280: $a5
    and $99                                       ; $7281: $e6 $99
    sbc b                                         ; $7283: $98
    and $00                                       ; $7284: $e6 $00
    inc e                                         ; $7286: $1c
    stop                                          ; $7287: $10 $00
    rst $38                                       ; $7289: $ff
    add hl, bc                                    ; $728a: $09
    ld [bc], a                                    ; $728b: $02
    ei                                            ; $728c: $fb
    inc bc                                        ; $728d: $03
    db $fc                                        ; $728e: $fc
    ld [bc], a                                    ; $728f: $02
    ei                                            ; $7290: $fb
    ld hl, sp-$05                                 ; $7291: $f8 $fb
    nop                                           ; $7293: $00
    ld b, $00                                     ; $7294: $06 $00
    adc d                                         ; $7296: $8a
    ld bc, $6f7f                                  ; $7297: $01 $7f $6f
    sub e                                         ; $729a: $93
    daa                                           ; $729b: $27
    ld e, e                                       ; $729c: $5b
    inc bc                                        ; $729d: $03
    ld l, a                                       ; $729e: $6f
    dec bc                                        ; $729f: $0b
    cpl                                           ; $72a0: $2f
    ld [bc], a                                    ; $72a1: $02
    dec bc                                        ; $72a2: $0b
    ld [bc], a                                    ; $72a3: $02
    inc bc                                        ; $72a4: $03
    ld [bc], a                                    ; $72a5: $02
    ld [bc], a                                    ; $72a6: $02
    dec bc                                        ; $72a7: $0b
    nop                                           ; $72a8: $00
    ld [bc], a                                    ; $72a9: $02
    ld e, $8d                                     ; $72aa: $1e $8d
    ld hl, $5d22                                  ; $72ac: $21 $22 $5d
    jp nz, $c2a5                                  ; $72af: $c2 $a5 $c2

    and l                                         ; $72b2: $a5
    and $99                                       ; $72b3: $e6 $99
    sbc b                                         ; $72b5: $98
    and $80                                       ; $72b6: $e6 $80
    sbc h                                         ; $72b8: $9c
    stop                                          ; $72b9: $10 $00
    rst $38                                       ; $72bb: $ff
    add hl, bc                                    ; $72bc: $09
    ld [bc], a                                    ; $72bd: $02
    ei                                            ; $72be: $fb
    inc bc                                        ; $72bf: $03
    db $fc                                        ; $72c0: $fc
    ld [bc], a                                    ; $72c1: $02
    ei                                            ; $72c2: $fb
    ld hl, sp-$05                                 ; $72c3: $f8 $fb
    nop                                           ; $72c5: $00
    ld b, $00                                     ; $72c6: $06 $00
    adc d                                         ; $72c8: $8a
    ld bc, $6f7f                                  ; $72c9: $01 $7f $6f
    sub e                                         ; $72cc: $93
    daa                                           ; $72cd: $27
    ld e, e                                       ; $72ce: $5b
    inc bc                                        ; $72cf: $03
    ld l, a                                       ; $72d0: $6f
    dec bc                                        ; $72d1: $0b
    cpl                                           ; $72d2: $2f
    ld [bc], a                                    ; $72d3: $02
    rrca                                          ; $72d4: $0f
    ld [bc], a                                    ; $72d5: $02
    dec bc                                        ; $72d6: $0b
    ld [bc], a                                    ; $72d7: $02
    inc bc                                        ; $72d8: $03
    inc b                                         ; $72d9: $04
    ld [bc], a                                    ; $72da: $02
    rlca                                          ; $72db: $07
    nop                                           ; $72dc: $00
    ld [bc], a                                    ; $72dd: $02
    ld e, $8d                                     ; $72de: $1e $8d
    ld hl, $5d22                                  ; $72e0: $21 $22 $5d
    jp nz, $c2a5                                  ; $72e3: $c2 $a5 $c2

    and l                                         ; $72e6: $a5
    and $99                                       ; $72e7: $e6 $99
    sbc b                                         ; $72e9: $98
    and $80                                       ; $72ea: $e6 $80
    sbc h                                         ; $72ec: $9c
    ld [bc], a                                    ; $72ed: $02
    add b                                         ; $72ee: $80
    ld c, $00                                     ; $72ef: $0e $00
    rst $38                                       ; $72f1: $ff
    add hl, bc                                    ; $72f2: $09
    ld [bc], a                                    ; $72f3: $02
    ei                                            ; $72f4: $fb
    inc bc                                        ; $72f5: $03
    db $fc                                        ; $72f6: $fc
    ld [bc], a                                    ; $72f7: $02
    ei                                            ; $72f8: $fb
    ld hl, sp-$05                                 ; $72f9: $f8 $fb
    nop                                           ; $72fb: $00
    ld b, $00                                     ; $72fc: $06 $00
    adc d                                         ; $72fe: $8a
    ld bc, $6f7f                                  ; $72ff: $01 $7f $6f
    sub e                                         ; $7302: $93
    daa                                           ; $7303: $27
    ld e, e                                       ; $7304: $5b
    inc bc                                        ; $7305: $03
    ld l, a                                       ; $7306: $6f
    dec bc                                        ; $7307: $0b
    cpl                                           ; $7308: $2f
    ld [bc], a                                    ; $7309: $02
    ld [bc], a                                    ; $730a: $02
    rrca                                          ; $730b: $0f
    nop                                           ; $730c: $00
    ld [bc], a                                    ; $730d: $02
    ld e, $8d                                     ; $730e: $1e $8d
    ld hl, $5d22                                  ; $7310: $21 $22 $5d
    jp nz, $c2a5                                  ; $7313: $c2 $a5 $c2

    and l                                         ; $7316: $a5
    and $99                                       ; $7317: $e6 $99
    sbc b                                         ; $7319: $98
    and $00                                       ; $731a: $e6 $00
    inc e                                         ; $731c: $1c
    stop                                          ; $731d: $10 $00
    rst $38                                       ; $731f: $ff
    add hl, bc                                    ; $7320: $09
    ld [bc], a                                    ; $7321: $02
    ei                                            ; $7322: $fb
    inc bc                                        ; $7323: $03
    db $fc                                        ; $7324: $fc
    ld [bc], a                                    ; $7325: $02
    db $fc                                        ; $7326: $fc
    ld hl, sp-$04                                 ; $7327: $f8 $fc
    nop                                           ; $7329: $00
    inc b                                         ; $732a: $04
    nop                                           ; $732b: $00
    ld [bc], a                                    ; $732c: $02
    dec b                                         ; $732d: $05
    adc d                                         ; $732e: $8a

jr_0eb_732f:
    rlca                                          ; $732f: $07
    ld a, a                                       ; $7330: $7f
    ld l, a                                       ; $7331: $6f
    sub e                                         ; $7332: $93
    daa                                           ; $7333: $27
    ld e, e                                       ; $7334: $5b
    nop                                           ; $7335: $00
    ld l, h                                       ; $7336: $6c
    nop                                           ; $7337: $00
    inc h                                         ; $7338: $24
    ld de, $0200                                  ; $7339: $11 $00 $02
    ld e, $8d                                     ; $733c: $1e $8d
    ld hl, $5d22                                  ; $733e: $21 $22 $5d
    jp nz, $c2a5                                  ; $7341: $c2 $a5 $c2

    and l                                         ; $7344: $a5
    ld h, [hl]                                    ; $7345: $66
    sbc c                                         ; $7346: $99
    jr jr_0eb_732f                                ; $7347: $18 $e6

    nop                                           ; $7349: $00
    inc e                                         ; $734a: $1c
    stop                                          ; $734b: $10 $00
    rst $38                                       ; $734d: $ff
    add hl, bc                                    ; $734e: $09
    ld [bc], a                                    ; $734f: $02
    ei                                            ; $7350: $fb
    inc bc                                        ; $7351: $03
    db $fc                                        ; $7352: $fc
    ld [bc], a                                    ; $7353: $02
    ld a, [$faf8]                                 ; $7354: $fa $f8 $fa
    nop                                           ; $7357: $00
    ld b, $01                                     ; $7358: $06 $01
    ld [bc], a                                    ; $735a: $02
    inc bc                                        ; $735b: $03
    ld [bc], a                                    ; $735c: $02
    dec bc                                        ; $735d: $0b
    adc d                                         ; $735e: $8a
    ld bc, $6f7f                                  ; $735f: $01 $7f $6f
    sub b                                         ; $7362: $90
    inc h                                         ; $7363: $24
    ld e, e                                       ; $7364: $5b
    nop                                           ; $7365: $00
    ld l, h                                       ; $7366: $6c
    nop                                           ; $7367: $00
    inc h                                         ; $7368: $24
    stop                                          ; $7369: $10 $00
    add c                                         ; $736b: $81
    add b                                         ; $736c: $80
    ld [bc], a                                    ; $736d: $02
    sbc [hl]                                      ; $736e: $9e
    adc l                                         ; $736f: $8d
    and c                                         ; $7370: $a1
    and d                                         ; $7371: $a2
    db $dd                                        ; $7372: $dd
    ld b, d                                       ; $7373: $42
    and l                                         ; $7374: $a5
    jp nz, Jump_0eb_6625                          ; $7375: $c2 $25 $66

    sbc c                                         ; $7378: $99
    jr @-$18                                      ; $7379: $18 $e6

    nop                                           ; $737b: $00
    inc e                                         ; $737c: $1c
    inc c                                         ; $737d: $0c
    nop                                           ; $737e: $00
    rst $38                                       ; $737f: $ff
    add hl, bc                                    ; $7380: $09
    ld [bc], a                                    ; $7381: $02
    ei                                            ; $7382: $fb
    inc bc                                        ; $7383: $03
    db $fc                                        ; $7384: $fc
    ld [bc], a                                    ; $7385: $02
    ld hl, sp-$08                                 ; $7386: $f8 $f8
    ld hl, sp+$00                                 ; $7388: $f8 $00
    inc b                                         ; $738a: $04
    nop                                           ; $738b: $00
    inc b                                         ; $738c: $04
    ld bc, $0b02                                  ; $738d: $01 $02 $0b
    inc b                                         ; $7390: $04
    rrca                                          ; $7391: $0f
    adc d                                         ; $7392: $8a
    ld bc, $6f7f                                  ; $7393: $01 $7f $6f
    sub b                                         ; $7396: $90
    inc h                                         ; $7397: $24
    ld e, e                                       ; $7398: $5b
    nop                                           ; $7399: $00
    ld l, h                                       ; $739a: $6c
    nop                                           ; $739b: $00
    inc h                                         ; $739c: $24
    ld [$0900], sp                                ; $739d: $08 $00 $09
    add b                                         ; $73a0: $80
    ld [bc], a                                    ; $73a1: $02
    sbc [hl]                                      ; $73a2: $9e
    adc l                                         ; $73a3: $8d
    and c                                         ; $73a4: $a1
    and d                                         ; $73a5: $a2
    db $dd                                        ; $73a6: $dd
    ld b, d                                       ; $73a7: $42
    and l                                         ; $73a8: $a5
    jp nz, Jump_0eb_6625                          ; $73a9: $c2 $25 $66

    sbc c                                         ; $73ac: $99
    jr @-$18                                      ; $73ad: $18 $e6

    nop                                           ; $73af: $00
    inc e                                         ; $73b0: $1c
    ld [$ff00], sp                                ; $73b1: $08 $00 $ff
    add hl, bc                                    ; $73b4: $09
    ld [bc], a                                    ; $73b5: $02
    ei                                            ; $73b6: $fb
    inc bc                                        ; $73b7: $03
    db $fc                                        ; $73b8: $fc
    ld [bc], a                                    ; $73b9: $02
    ei                                            ; $73ba: $fb
    ld hl, sp-$05                                 ; $73bb: $f8 $fb
    nop                                           ; $73bd: $00
    inc b                                         ; $73be: $04
    nop                                           ; $73bf: $00
    ld [bc], a                                    ; $73c0: $02
    ld bc, $0b02                                  ; $73c1: $01 $02 $0b
    adc d                                         ; $73c4: $8a
    inc bc                                        ; $73c5: $03
    ld a, a                                       ; $73c6: $7f

jr_0eb_73c7:
    ld l, a                                       ; $73c7: $6f
    sub c                                         ; $73c8: $91
    inc h                                         ; $73c9: $24
    ld e, e                                       ; $73ca: $5b
    nop                                           ; $73cb: $00
    ld l, h                                       ; $73cc: $6c
    nop                                           ; $73cd: $00
    inc h                                         ; $73ce: $24
    ld c, $00                                     ; $73cf: $0e $00
    inc bc                                        ; $73d1: $03
    add b                                         ; $73d2: $80
    ld [bc], a                                    ; $73d3: $02
    sbc [hl]                                      ; $73d4: $9e
    adc l                                         ; $73d5: $8d
    and c                                         ; $73d6: $a1
    and d                                         ; $73d7: $a2
    db $dd                                        ; $73d8: $dd
    jp nz, $c2a5                                  ; $73d9: $c2 $a5 $c2

    dec h                                         ; $73dc: $25
    ld h, [hl]                                    ; $73dd: $66
    sbc c                                         ; $73de: $99
    jr jr_0eb_73c7                                ; $73df: $18 $e6

    nop                                           ; $73e1: $00
    inc e                                         ; $73e2: $1c
    ld c, $00                                     ; $73e3: $0e $00
    rst $38                                       ; $73e5: $ff
    add hl, bc                                    ; $73e6: $09
    ld [bc], a                                    ; $73e7: $02
    ei                                            ; $73e8: $fb
    inc bc                                        ; $73e9: $03
    db $fc                                        ; $73ea: $fc
    ld [bc], a                                    ; $73eb: $02
    db $fc                                        ; $73ec: $fc
    ld a, [$fffc]                                 ; $73ed: $fa $fc $ff
    ld [bc], a                                    ; $73f0: $02
    ld bc, $0302                                  ; $73f1: $01 $02 $03
    ld [bc], a                                    ; $73f4: $02
    rla                                           ; $73f5: $17
    adc d                                         ; $73f6: $8a
    rlca                                          ; $73f7: $07
    ld a, [hl]                                    ; $73f8: $7e
    ld e, a                                       ; $73f9: $5f
    and b                                         ; $73fa: $a0
    jr z, jr_0eb_7454                             ; $73fb: $28 $57

    nop                                           ; $73fd: $00
    ld a, b                                       ; $73fe: $78
    nop                                           ; $73ff: $00
    jr z, jr_0eb_7412                             ; $7400: $28 $10

    nop                                           ; $7402: $00
    adc [hl]                                      ; $7403: $8e
    db $10                                        ; $7404: $10
    ld d, $02                                     ; $7405: $16 $02
    dec e                                         ; $7407: $1d
    ld [de], a                                    ; $7408: $12
    dec c                                         ; $7409: $0d
    ld [bc], a                                    ; $740a: $02
    dec d                                         ; $740b: $15
    ld b, $19                                     ; $740c: $06 $19
    ld [$0016], sp                                ; $740e: $08 $16 $00
    inc e                                         ; $7411: $1c

jr_0eb_7412:
    ld [de], a                                    ; $7412: $12
    nop                                           ; $7413: $00
    rst $38                                       ; $7414: $ff
    add hl, bc                                    ; $7415: $09
    ld [bc], a                                    ; $7416: $02
    ei                                            ; $7417: $fb
    inc bc                                        ; $7418: $03
    db $fc                                        ; $7419: $fc
    ld [bc], a                                    ; $741a: $02
    db $fd                                        ; $741b: $fd
    db $fc                                        ; $741c: $fc
    db $fd                                        ; $741d: $fd
    cp $02                                        ; $741e: $fe $02
    rlca                                          ; $7420: $07
    adc h                                         ; $7421: $8c
    ld l, [hl]                                    ; $7422: $6e
    ld l, a                                       ; $7423: $6f
    dec c                                         ; $7424: $0d
    ld a, [hl]                                    ; $7425: $7e
    ld [hl], h                                    ; $7426: $74
    adc e                                         ; $7427: $8b
    ld hl, $005e                                  ; $7428: $21 $5e $00
    ld h, e                                       ; $742b: $63
    nop                                           ; $742c: $00
    jr nz, jr_0eb_7444                            ; $742d: $20 $15

    nop                                           ; $742f: $00
    ld [bc], a                                    ; $7430: $02
    ld [bc], a                                    ; $7431: $02
    add a                                         ; $7432: $87
    ld bc, $0102                                  ; $7433: $01 $02 $01
    nop                                           ; $7436: $00
    ld [bc], a                                    ; $7437: $02
    nop                                           ; $7438: $00
    ld [bc], a                                    ; $7439: $02
    inc d                                         ; $743a: $14
    nop                                           ; $743b: $00
    rst $38                                       ; $743c: $ff
    add hl, bc                                    ; $743d: $09
    ld [bc], a                                    ; $743e: $02
    ei                                            ; $743f: $fb
    inc b                                         ; $7440: $04
    db $fd                                        ; $7441: $fd
    inc bc                                        ; $7442: $03
    db $fc                                        ; $7443: $fc

jr_0eb_7444:
    ld hl, sp-$04                                 ; $7444: $f8 $fc
    rst $38                                       ; $7446: $ff
    ld b, $00                                     ; $7447: $06 $00
    adc d                                         ; $7449: $8a
    ld bc, $6f7f                                  ; $744a: $01 $7f $6f
    sub e                                         ; $744d: $93
    daa                                           ; $744e: $27
    ld c, e                                       ; $744f: $4b
    daa                                           ; $7450: $27
    ld c, e                                       ; $7451: $4b
    inc bc                                        ; $7452: $03
    cpl                                           ; $7453: $2f

jr_0eb_7454:
    ld [bc], a                                    ; $7454: $02
    ld [bc], a                                    ; $7455: $02
    rrca                                          ; $7456: $0f
    nop                                           ; $7457: $00
    ld [bc], a                                    ; $7458: $02
    inc c                                         ; $7459: $0c
    ld [bc], a                                    ; $745a: $02
    ld [de], a                                    ; $745b: $12
    adc l                                         ; $745c: $8d
    dec l                                         ; $745d: $2d
    ld h, d                                       ; $745e: $62
    ld d, c                                       ; $745f: $51
    ld h, d                                       ; $7460: $62
    ld d, c                                       ; $7461: $51
    ld h, d                                       ; $7462: $62
    ld d, c                                       ; $7463: $51
    ld d, d                                       ; $7464: $52
    ld l, l                                       ; $7465: $6d
    inc c                                         ; $7466: $0c
    ld [de], a                                    ; $7467: $12
    nop                                           ; $7468: $00
    inc c                                         ; $7469: $0c
    ld c, $00                                     ; $746a: $0e $00
    rst $38                                       ; $746c: $ff
    add hl, bc                                    ; $746d: $09
    ld [bc], a                                    ; $746e: $02
    ei                                            ; $746f: $fb
    inc b                                         ; $7470: $04
    db $fd                                        ; $7471: $fd
    inc bc                                        ; $7472: $03
    db $fc                                        ; $7473: $fc
    ld hl, sp-$04                                 ; $7474: $f8 $fc
    rst $38                                       ; $7476: $ff
    ld b, $00                                     ; $7477: $06 $00
    adc d                                         ; $7479: $8a
    ld bc, $6f7f                                  ; $747a: $01 $7f $6f
    sub e                                         ; $747d: $93
    daa                                           ; $747e: $27
    ld c, e                                       ; $747f: $4b
    daa                                           ; $7480: $27
    ld c, e                                       ; $7481: $4b
    dec bc                                        ; $7482: $0b
    cpl                                           ; $7483: $2f
    ld [bc], a                                    ; $7484: $02
    dec bc                                        ; $7485: $0b
    ld [bc], a                                    ; $7486: $02
    inc bc                                        ; $7487: $03
    ld [bc], a                                    ; $7488: $02
    ld [bc], a                                    ; $7489: $02
    dec bc                                        ; $748a: $0b
    nop                                           ; $748b: $00
    ld [bc], a                                    ; $748c: $02
    inc c                                         ; $748d: $0c
    ld [bc], a                                    ; $748e: $02
    ld [de], a                                    ; $748f: $12
    adc l                                         ; $7490: $8d
    dec l                                         ; $7491: $2d
    ld h, d                                       ; $7492: $62
    ld d, c                                       ; $7493: $51
    ld h, d                                       ; $7494: $62
    ld d, c                                       ; $7495: $51
    ld h, d                                       ; $7496: $62
    ld d, c                                       ; $7497: $51
    ld d, d                                       ; $7498: $52
    ld l, l                                       ; $7499: $6d
    ld c, h                                       ; $749a: $4c
    ld d, d                                       ; $749b: $52
    nop                                           ; $749c: $00
    inc c                                         ; $749d: $0c
    ld c, $00                                     ; $749e: $0e $00
    rst $38                                       ; $74a0: $ff
    add hl, bc                                    ; $74a1: $09
    ld [bc], a                                    ; $74a2: $02
    ei                                            ; $74a3: $fb
    inc b                                         ; $74a4: $04
    db $fd                                        ; $74a5: $fd
    inc bc                                        ; $74a6: $03
    db $fc                                        ; $74a7: $fc
    ld hl, sp-$04                                 ; $74a8: $f8 $fc
    rst $38                                       ; $74aa: $ff
    ld b, $00                                     ; $74ab: $06 $00
    adc d                                         ; $74ad: $8a
    ld bc, $6f7f                                  ; $74ae: $01 $7f $6f
    sub e                                         ; $74b1: $93
    daa                                           ; $74b2: $27
    ld c, e                                       ; $74b3: $4b
    daa                                           ; $74b4: $27
    ld c, e                                       ; $74b5: $4b
    dec bc                                        ; $74b6: $0b
    cpl                                           ; $74b7: $2f
    ld [bc], a                                    ; $74b8: $02
    rrca                                          ; $74b9: $0f
    ld [bc], a                                    ; $74ba: $02
    dec bc                                        ; $74bb: $0b
    ld [bc], a                                    ; $74bc: $02
    inc bc                                        ; $74bd: $03
    ld [bc], a                                    ; $74be: $02
    ld [bc], a                                    ; $74bf: $02
    add hl, bc                                    ; $74c0: $09
    nop                                           ; $74c1: $00
    ld [bc], a                                    ; $74c2: $02
    inc c                                         ; $74c3: $0c
    ld [bc], a                                    ; $74c4: $02
    ld [de], a                                    ; $74c5: $12
    adc l                                         ; $74c6: $8d
    dec l                                         ; $74c7: $2d
    ld h, d                                       ; $74c8: $62
    ld d, c                                       ; $74c9: $51
    ld h, d                                       ; $74ca: $62
    ld d, c                                       ; $74cb: $51
    ld h, d                                       ; $74cc: $62
    ld d, c                                       ; $74cd: $51
    ld d, d                                       ; $74ce: $52
    ld l, l                                       ; $74cf: $6d
    ld c, h                                       ; $74d0: $4c
    ld d, d                                       ; $74d1: $52
    ld b, b                                       ; $74d2: $40
    ld c, h                                       ; $74d3: $4c
    ld c, $00                                     ; $74d4: $0e $00
    rst $38                                       ; $74d6: $ff
    add hl, bc                                    ; $74d7: $09
    ld [bc], a                                    ; $74d8: $02
    ei                                            ; $74d9: $fb
    inc b                                         ; $74da: $04
    db $fd                                        ; $74db: $fd
    inc bc                                        ; $74dc: $03
    db $fc                                        ; $74dd: $fc
    ld hl, sp-$04                                 ; $74de: $f8 $fc
    rst $38                                       ; $74e0: $ff
    ld b, $00                                     ; $74e1: $06 $00
    adc d                                         ; $74e3: $8a
    ld bc, $6f7f                                  ; $74e4: $01 $7f $6f
    sub e                                         ; $74e7: $93
    daa                                           ; $74e8: $27
    ld c, e                                       ; $74e9: $4b
    daa                                           ; $74ea: $27
    ld c, e                                       ; $74eb: $4b
    dec bc                                        ; $74ec: $0b
    cpl                                           ; $74ed: $2f
    ld [bc], a                                    ; $74ee: $02
    ld [bc], a                                    ; $74ef: $02
    rrca                                          ; $74f0: $0f
    nop                                           ; $74f1: $00
    ld [bc], a                                    ; $74f2: $02
    inc c                                         ; $74f3: $0c
    ld [bc], a                                    ; $74f4: $02
    ld [de], a                                    ; $74f5: $12
    adc l                                         ; $74f6: $8d
    dec l                                         ; $74f7: $2d
    ld h, d                                       ; $74f8: $62
    ld d, c                                       ; $74f9: $51
    ld h, d                                       ; $74fa: $62
    ld d, c                                       ; $74fb: $51
    ld h, d                                       ; $74fc: $62
    ld d, c                                       ; $74fd: $51
    ld d, d                                       ; $74fe: $52
    ld l, l                                       ; $74ff: $6d
    inc c                                         ; $7500: $0c
    ld [de], a                                    ; $7501: $12
    nop                                           ; $7502: $00
    inc c                                         ; $7503: $0c
    ld c, $00                                     ; $7504: $0e $00
    rst $38                                       ; $7506: $ff
    add hl, bc                                    ; $7507: $09
    ld [bc], a                                    ; $7508: $02
    ei                                            ; $7509: $fb
    inc b                                         ; $750a: $04
    db $fd                                        ; $750b: $fd
    inc bc                                        ; $750c: $03
    db $fd                                        ; $750d: $fd
    ld hl, sp-$03                                 ; $750e: $f8 $fd
    rst $38                                       ; $7510: $ff
    inc b                                         ; $7511: $04
    nop                                           ; $7512: $00
    ld [bc], a                                    ; $7513: $02
    dec b                                         ; $7514: $05
    adc d                                         ; $7515: $8a
    rlca                                          ; $7516: $07
    ld a, a                                       ; $7517: $7f
    ld l, a                                       ; $7518: $6f
    sub e                                         ; $7519: $93
    daa                                           ; $751a: $27
    ld e, e                                       ; $751b: $5b
    inc h                                         ; $751c: $24
    ld c, b                                       ; $751d: $48
    nop                                           ; $751e: $00
    inc h                                         ; $751f: $24
    ld de, $0200                                  ; $7520: $11 $00 $02
    inc c                                         ; $7523: $0c
    ld [bc], a                                    ; $7524: $02
    ld [de], a                                    ; $7525: $12
    adc l                                         ; $7526: $8d
    dec l                                         ; $7527: $2d
    ld h, d                                       ; $7528: $62
    ld d, c                                       ; $7529: $51
    ld h, d                                       ; $752a: $62
    ld d, c                                       ; $752b: $51
    ld [hl+], a                                   ; $752c: $22
    ld d, c                                       ; $752d: $51
    ld [de], a                                    ; $752e: $12
    dec l                                         ; $752f: $2d
    inc c                                         ; $7530: $0c
    ld [de], a                                    ; $7531: $12
    nop                                           ; $7532: $00
    inc c                                         ; $7533: $0c
    ld c, $00                                     ; $7534: $0e $00
    rst $38                                       ; $7536: $ff
    add hl, bc                                    ; $7537: $09
    ld [bc], a                                    ; $7538: $02
    ei                                            ; $7539: $fb
    inc b                                         ; $753a: $04
    db $fd                                        ; $753b: $fd
    inc bc                                        ; $753c: $03
    db $fc                                        ; $753d: $fc
    ld hl, sp-$04                                 ; $753e: $f8 $fc
    rst $38                                       ; $7540: $ff
    ld [bc], a                                    ; $7541: $02
    ld bc, $0304                                  ; $7542: $01 $04 $03
    ld [bc], a                                    ; $7545: $02
    dec bc                                        ; $7546: $0b
    adc d                                         ; $7547: $8a
    ld bc, $6f7f                                  ; $7548: $01 $7f $6f
    sub b                                         ; $754b: $90
    inc h                                         ; $754c: $24
    ld e, e                                       ; $754d: $5b
    inc h                                         ; $754e: $24
    ld c, b                                       ; $754f: $48
    nop                                           ; $7550: $00
    inc h                                         ; $7551: $24
    ld de, $8200                                  ; $7552: $11 $00 $82
    inc c                                         ; $7555: $0c
    ld c, h                                       ; $7556: $4c
    ld [bc], a                                    ; $7557: $02
    ld d, d                                       ; $7558: $52
    adc l                                         ; $7559: $8d
    ld l, l                                       ; $755a: $6d
    ld [hl+], a                                   ; $755b: $22
    ld d, c                                       ; $755c: $51
    ld h, d                                       ; $755d: $62
    ld de, $5122                                  ; $755e: $11 $22 $51
    ld [de], a                                    ; $7561: $12
    dec l                                         ; $7562: $2d
    inc c                                         ; $7563: $0c
    ld [de], a                                    ; $7564: $12
    nop                                           ; $7565: $00
    inc c                                         ; $7566: $0c
    inc c                                         ; $7567: $0c
    nop                                           ; $7568: $00
    rst $38                                       ; $7569: $ff
    add hl, bc                                    ; $756a: $09
    ld [bc], a                                    ; $756b: $02
    ei                                            ; $756c: $fb
    inc b                                         ; $756d: $04
    db $fd                                        ; $756e: $fd
    inc bc                                        ; $756f: $03
    ld sp, hl                                     ; $7570: $f9
    ld hl, sp-$07                                 ; $7571: $f8 $f9
    rst $38                                       ; $7573: $ff
    inc b                                         ; $7574: $04
    nop                                           ; $7575: $00
    inc b                                         ; $7576: $04
    ld bc, $0302                                  ; $7577: $01 $02 $03
    ld [bc], a                                    ; $757a: $02
    dec bc                                        ; $757b: $0b
    ld [bc], a                                    ; $757c: $02
    rrca                                          ; $757d: $0f
    adc d                                         ; $757e: $8a
    ld bc, $6f7f                                  ; $757f: $01 $7f $6f
    sub b                                         ; $7582: $90
    inc h                                         ; $7583: $24
    ld e, e                                       ; $7584: $5b
    inc h                                         ; $7585: $24
    ld c, b                                       ; $7586: $48
    nop                                           ; $7587: $00
    inc h                                         ; $7588: $24
    ld [$0900], sp                                ; $7589: $08 $00 $09
    ld b, b                                       ; $758c: $40
    ld [bc], a                                    ; $758d: $02
    ld c, h                                       ; $758e: $4c
    ld [bc], a                                    ; $758f: $02
    ld d, d                                       ; $7590: $52
    adc l                                         ; $7591: $8d
    ld l, l                                       ; $7592: $6d
    ld [hl+], a                                   ; $7593: $22
    ld d, c                                       ; $7594: $51
    ld h, d                                       ; $7595: $62
    ld de, $5122                                  ; $7596: $11 $22 $51
    ld [de], a                                    ; $7599: $12
    dec l                                         ; $759a: $2d
    inc c                                         ; $759b: $0c
    ld [de], a                                    ; $759c: $12
    nop                                           ; $759d: $00
    inc c                                         ; $759e: $0c
    ld b, $00                                     ; $759f: $06 $00
    rst $38                                       ; $75a1: $ff
    add hl, bc                                    ; $75a2: $09
    ld [bc], a                                    ; $75a3: $02
    ei                                            ; $75a4: $fb
    inc b                                         ; $75a5: $04
    db $fd                                        ; $75a6: $fd
    inc bc                                        ; $75a7: $03
    db $fc                                        ; $75a8: $fc
    ld hl, sp-$04                                 ; $75a9: $f8 $fc
    rst $38                                       ; $75ab: $ff
    ld [bc], a                                    ; $75ac: $02
    nop                                           ; $75ad: $00
    inc b                                         ; $75ae: $04
    ld bc, $0b02                                  ; $75af: $01 $02 $0b
    adc d                                         ; $75b2: $8a
    inc bc                                        ; $75b3: $03
    ld a, a                                       ; $75b4: $7f
    ld l, a                                       ; $75b5: $6f
    sub b                                         ; $75b6: $90
    inc h                                         ; $75b7: $24
    ld e, e                                       ; $75b8: $5b
    inc h                                         ; $75b9: $24
    ld c, b                                       ; $75ba: $48
    nop                                           ; $75bb: $00
    inc h                                         ; $75bc: $24
    ld c, $00                                     ; $75bd: $0e $00
    inc bc                                        ; $75bf: $03
    ld b, b                                       ; $75c0: $40
    ld [bc], a                                    ; $75c1: $02
    ld c, h                                       ; $75c2: $4c
    ld [bc], a                                    ; $75c3: $02
    ld d, d                                       ; $75c4: $52
    adc l                                         ; $75c5: $8d
    ld l, l                                       ; $75c6: $6d
    ld h, d                                       ; $75c7: $62
    ld d, c                                       ; $75c8: $51
    ld h, d                                       ; $75c9: $62
    ld de, $5122                                  ; $75ca: $11 $22 $51
    ld [de], a                                    ; $75cd: $12
    dec l                                         ; $75ce: $2d
    inc c                                         ; $75cf: $0c
    ld [de], a                                    ; $75d0: $12
    nop                                           ; $75d1: $00
    inc c                                         ; $75d2: $0c
    inc c                                         ; $75d3: $0c
    nop                                           ; $75d4: $00
    rst $38                                       ; $75d5: $ff
    add hl, bc                                    ; $75d6: $09
    ld [bc], a                                    ; $75d7: $02
    ei                                            ; $75d8: $fb
    inc b                                         ; $75d9: $04
    db $fd                                        ; $75da: $fd
    inc bc                                        ; $75db: $03
    db $fc                                        ; $75dc: $fc
    ld a, [$fefc]                                 ; $75dd: $fa $fc $fe
    ld [bc], a                                    ; $75e0: $02
    ld bc, $0304                                  ; $75e1: $01 $04 $03
    adc h                                         ; $75e4: $8c
    ld d, $17                                     ; $75e5: $16 $17
    rlca                                          ; $75e7: $07
    ld a, [hl]                                    ; $75e8: $7e
    ld e, a                                       ; $75e9: $5f
    and b                                         ; $75ea: $a0
    add hl, hl                                    ; $75eb: $29
    ld d, [hl]                                    ; $75ec: $56
    jr z, @+$53                                   ; $75ed: $28 $51

    nop                                           ; $75ef: $00
    jr z, jr_0eb_7603                             ; $75f0: $28 $11

    nop                                           ; $75f2: $00
    ld [bc], a                                    ; $75f3: $02
    inc b                                         ; $75f4: $04
    ld [bc], a                                    ; $75f5: $02
    ld a, [bc]                                    ; $75f6: $0a
    adc l                                         ; $75f7: $8d
    dec b                                         ; $75f8: $05
    ld [bc], a                                    ; $75f9: $02
    add hl, bc                                    ; $75fa: $09
    ld [bc], a                                    ; $75fb: $02
    add hl, bc                                    ; $75fc: $09
    ld [bc], a                                    ; $75fd: $02
    dec c                                         ; $75fe: $0d
    ld c, $01                                     ; $75ff: $0e $01
    inc b                                         ; $7601: $04
    ld a, [bc]                                    ; $7602: $0a

jr_0eb_7603:
    nop                                           ; $7603: $00
    inc b                                         ; $7604: $04
    inc c                                         ; $7605: $0c
    nop                                           ; $7606: $00
    rst $38                                       ; $7607: $ff
    add hl, bc                                    ; $7608: $09
    ld [bc], a                                    ; $7609: $02
    ei                                            ; $760a: $fb
    inc b                                         ; $760b: $04
    db $fd                                        ; $760c: $fd
    inc bc                                        ; $760d: $03
    db $fd                                        ; $760e: $fd
    db $fc                                        ; $760f: $fc
    db $fd                                        ; $7610: $fd
    db $fd                                        ; $7611: $fd
    ld [bc], a                                    ; $7612: $02
    ld [bc], a                                    ; $7613: $02
    adc [hl]                                      ; $7614: $8e
    ld b, $07                                     ; $7615: $06 $07
    ld l, a                                       ; $7617: $6f
    ld l, [hl]                                    ; $7618: $6e
    dec c                                         ; $7619: $0d
    ld a, [hl]                                    ; $761a: $7e
    ld [hl], l                                    ; $761b: $75
    adc d                                         ; $761c: $8a
    ld hl, $225e                                  ; $761d: $21 $5e $22
    ld b, l                                       ; $7620: $45
    nop                                           ; $7621: $00
    ld [hl+], a                                   ; $7622: $22
    dec d                                         ; $7623: $15
    nop                                           ; $7624: $00
    add a                                         ; $7625: $87
    ld bc, $0100                                  ; $7626: $01 $00 $01
    nop                                           ; $7629: $00
    ld bc, $0100                                  ; $762a: $01 $00 $01
    inc d                                         ; $762d: $14
    nop                                           ; $762e: $00
    rst $38                                       ; $762f: $ff
    dec bc                                        ; $7630: $0b
    inc bc                                        ; $7631: $03
    ld a, [$fd03]                                 ; $7632: $fa $03 $fd
    inc bc                                        ; $7635: $03
    db $fc                                        ; $7636: $fc
    or $fc                                        ; $7637: $f6 $fc
    cp $fc                                        ; $7639: $fe $fc
    rst $38                                       ; $763b: $ff
    inc b                                         ; $763c: $04
    nop                                           ; $763d: $00
    adc d                                         ; $763e: $8a
    ld bc, $6fff                                  ; $763f: $01 $ff $6f
    sub e                                         ; $7642: $93
    daa                                           ; $7643: $27
    db $db                                        ; $7644: $db
    inc bc                                        ; $7645: $03
    ld l, a                                       ; $7646: $6f
    dec bc                                        ; $7647: $0b
    cpl                                           ; $7648: $2f
    ld [bc], a                                    ; $7649: $02
    ld [bc], a                                    ; $764a: $02
    ld de, $8d00                                  ; $764b: $11 $00 $8d
    rra                                           ; $764e: $1f
    ld e, $e1                                     ; $764f: $1e $e1
    and d                                         ; $7651: $a2
    db $dd                                        ; $7652: $dd
    call nz, $e2ab                                ; $7653: $c4 $ab $e2
    sbc l                                         ; $7656: $9d
    sbc [hl]                                      ; $7657: $9e
    pop hl                                        ; $7658: $e1
    nop                                           ; $7659: $00
    rra                                           ; $765a: $1f
    inc de                                        ; $765b: $13
    nop                                           ; $765c: $00
    add c                                         ; $765d: $81
    ld bc, $0005                                  ; $765e: $01 $05 $00
    add c                                         ; $7661: $81
    ld bc, $0005                                  ; $7662: $01 $05 $00
    add c                                         ; $7665: $81
    ld bc, $0012                                  ; $7666: $01 $12 $00
    rst $38                                       ; $7669: $ff
    dec bc                                        ; $766a: $0b
    inc bc                                        ; $766b: $03
    ld a, [$fd03]                                 ; $766c: $fa $03 $fd
    inc bc                                        ; $766f: $03
    db $fc                                        ; $7670: $fc
    or $fc                                        ; $7671: $f6 $fc
    cp $fc                                        ; $7673: $fe $fc
    rst $38                                       ; $7675: $ff
    inc b                                         ; $7676: $04
    nop                                           ; $7677: $00
    adc d                                         ; $7678: $8a
    ld bc, $6fff                                  ; $7679: $01 $ff $6f
    sub e                                         ; $767c: $93
    daa                                           ; $767d: $27
    db $db                                        ; $767e: $db
    inc bc                                        ; $767f: $03
    ld l, a                                       ; $7680: $6f
    dec bc                                        ; $7681: $0b
    cpl                                           ; $7682: $2f
    ld [bc], a                                    ; $7683: $02
    dec bc                                        ; $7684: $0b
    ld [bc], a                                    ; $7685: $02
    inc bc                                        ; $7686: $03
    ld [bc], a                                    ; $7687: $02
    ld [bc], a                                    ; $7688: $02
    dec c                                         ; $7689: $0d
    nop                                           ; $768a: $00
    adc l                                         ; $768b: $8d
    rra                                           ; $768c: $1f
    ld e, $e1                                     ; $768d: $1e $e1
    and d                                         ; $768f: $a2
    db $dd                                        ; $7690: $dd
    call nz, $e2ab                                ; $7691: $c4 $ab $e2
    sbc l                                         ; $7694: $9d
    sbc [hl]                                      ; $7695: $9e
    pop hl                                        ; $7696: $e1
    add b                                         ; $7697: $80
    sbc a                                         ; $7698: $9f
    inc de                                        ; $7699: $13
    nop                                           ; $769a: $00
    add c                                         ; $769b: $81
    ld bc, $0005                                  ; $769c: $01 $05 $00
    add c                                         ; $769f: $81
    ld bc, $0005                                  ; $76a0: $01 $05 $00
    add c                                         ; $76a3: $81
    ld bc, $0012                                  ; $76a4: $01 $12 $00
    rst $38                                       ; $76a7: $ff
    dec bc                                        ; $76a8: $0b
    inc bc                                        ; $76a9: $03
    ld a, [$fd03]                                 ; $76aa: $fa $03 $fd
    inc bc                                        ; $76ad: $03
    db $fc                                        ; $76ae: $fc
    or $fc                                        ; $76af: $f6 $fc
    cp $fc                                        ; $76b1: $fe $fc
    rst $38                                       ; $76b3: $ff
    inc b                                         ; $76b4: $04
    nop                                           ; $76b5: $00
    adc d                                         ; $76b6: $8a
    ld bc, $6fff                                  ; $76b7: $01 $ff $6f
    sub e                                         ; $76ba: $93
    daa                                           ; $76bb: $27
    db $db                                        ; $76bc: $db
    inc bc                                        ; $76bd: $03
    ld l, a                                       ; $76be: $6f
    dec bc                                        ; $76bf: $0b
    cpl                                           ; $76c0: $2f
    ld [bc], a                                    ; $76c1: $02
    rrca                                          ; $76c2: $0f
    ld [bc], a                                    ; $76c3: $02
    dec bc                                        ; $76c4: $0b
    inc b                                         ; $76c5: $04
    ld [bc], a                                    ; $76c6: $02
    dec bc                                        ; $76c7: $0b
    nop                                           ; $76c8: $00
    adc l                                         ; $76c9: $8d
    rra                                           ; $76ca: $1f
    ld e, $e1                                     ; $76cb: $1e $e1
    and d                                         ; $76cd: $a2
    db $dd                                        ; $76ce: $dd
    call nz, $e2ab                                ; $76cf: $c4 $ab $e2
    sbc l                                         ; $76d2: $9d
    sbc [hl]                                      ; $76d3: $9e
    pop hl                                        ; $76d4: $e1
    add b                                         ; $76d5: $80
    sbc a                                         ; $76d6: $9f
    ld [bc], a                                    ; $76d7: $02
    add b                                         ; $76d8: $80
    ld de, $8100                                  ; $76d9: $11 $00 $81
    ld bc, $0005                                  ; $76dc: $01 $05 $00
    add c                                         ; $76df: $81
    ld bc, $0005                                  ; $76e0: $01 $05 $00
    add c                                         ; $76e3: $81
    ld bc, $0012                                  ; $76e4: $01 $12 $00
    rst $38                                       ; $76e7: $ff
    dec bc                                        ; $76e8: $0b
    inc bc                                        ; $76e9: $03
    ld a, [$fd03]                                 ; $76ea: $fa $03 $fd
    inc bc                                        ; $76ed: $03
    db $fc                                        ; $76ee: $fc
    or $fc                                        ; $76ef: $f6 $fc
    cp $fc                                        ; $76f1: $fe $fc
    rst $38                                       ; $76f3: $ff
    inc b                                         ; $76f4: $04
    nop                                           ; $76f5: $00
    adc d                                         ; $76f6: $8a
    ld bc, $6fff                                  ; $76f7: $01 $ff $6f
    sub e                                         ; $76fa: $93
    daa                                           ; $76fb: $27
    db $db                                        ; $76fc: $db
    inc bc                                        ; $76fd: $03
    ld l, a                                       ; $76fe: $6f
    dec bc                                        ; $76ff: $0b
    cpl                                           ; $7700: $2f
    ld [bc], a                                    ; $7701: $02
    ld [bc], a                                    ; $7702: $02
    ld de, $8d00                                  ; $7703: $11 $00 $8d
    rra                                           ; $7706: $1f
    ld e, $e1                                     ; $7707: $1e $e1
    and d                                         ; $7709: $a2
    db $dd                                        ; $770a: $dd
    call nz, $e2ab                                ; $770b: $c4 $ab $e2
    sbc l                                         ; $770e: $9d
    sbc [hl]                                      ; $770f: $9e
    pop hl                                        ; $7710: $e1
    nop                                           ; $7711: $00
    rra                                           ; $7712: $1f
    inc de                                        ; $7713: $13
    nop                                           ; $7714: $00
    add c                                         ; $7715: $81
    ld bc, $0005                                  ; $7716: $01 $05 $00
    add c                                         ; $7719: $81
    ld bc, $0005                                  ; $771a: $01 $05 $00
    add c                                         ; $771d: $81
    ld bc, $0012                                  ; $771e: $01 $12 $00
    rst $38                                       ; $7721: $ff
    dec bc                                        ; $7722: $0b
    inc bc                                        ; $7723: $03
    ld a, [$fd03]                                 ; $7724: $fa $03 $fd
    inc bc                                        ; $7727: $03
    db $fd                                        ; $7728: $fd
    or $fd                                        ; $7729: $f6 $fd
    cp $fd                                        ; $772b: $fe $fd
    rst $38                                       ; $772d: $ff
    ld [bc], a                                    ; $772e: $02
    nop                                           ; $772f: $00
    ld [bc], a                                    ; $7730: $02
    dec b                                         ; $7731: $05
    adc d                                         ; $7732: $8a
    rlca                                          ; $7733: $07
    rst $38                                       ; $7734: $ff
    ld l, a                                       ; $7735: $6f
    sub e                                         ; $7736: $93
    daa                                           ; $7737: $27
    db $db                                        ; $7738: $db
    nop                                           ; $7739: $00
    ld l, h                                       ; $773a: $6c
    nop                                           ; $773b: $00
    inc h                                         ; $773c: $24
    inc de                                        ; $773d: $13
    nop                                           ; $773e: $00
    adc l                                         ; $773f: $8d
    rra                                           ; $7740: $1f
    ld e, $e1                                     ; $7741: $1e $e1
    and d                                         ; $7743: $a2
    db $dd                                        ; $7744: $dd
    call nz, Call_0eb_62ab                        ; $7745: $c4 $ab $62
    sbc l                                         ; $7748: $9d
    ld e, $e1                                     ; $7749: $1e $e1
    nop                                           ; $774b: $00
    rra                                           ; $774c: $1f
    inc de                                        ; $774d: $13
    nop                                           ; $774e: $00
    add c                                         ; $774f: $81
    ld bc, $0005                                  ; $7750: $01 $05 $00
    add c                                         ; $7753: $81
    ld bc, $0005                                  ; $7754: $01 $05 $00
    add c                                         ; $7757: $81
    ld bc, $0012                                  ; $7758: $01 $12 $00
    rst $38                                       ; $775b: $ff
    dec bc                                        ; $775c: $0b
    inc bc                                        ; $775d: $03
    ld a, [$fd03]                                 ; $775e: $fa $03 $fd
    inc bc                                        ; $7761: $03
    ei                                            ; $7762: $fb
    or $fb                                        ; $7763: $f6 $fb
    cp $fb                                        ; $7765: $fe $fb
    rst $38                                       ; $7767: $ff
    ld [bc], a                                    ; $7768: $02
    ld bc, $0304                                  ; $7769: $01 $04 $03
    ld [bc], a                                    ; $776c: $02
    dec bc                                        ; $776d: $0b
    adc d                                         ; $776e: $8a
    ld bc, $6fff                                  ; $776f: $01 $ff $6f
    sub b                                         ; $7772: $90
    inc h                                         ; $7773: $24
    db $db                                        ; $7774: $db
    nop                                           ; $7775: $00
    ld l, h                                       ; $7776: $6c
    nop                                           ; $7777: $00
    inc h                                         ; $7778: $24
    ld [de], a                                    ; $7779: $12
    nop                                           ; $777a: $00
    adc [hl]                                      ; $777b: $8e
    add b                                         ; $777c: $80
    sbc a                                         ; $777d: $9f
    sbc [hl]                                      ; $777e: $9e
    pop hl                                        ; $777f: $e1
    ld [hl+], a                                   ; $7780: $22
    db $dd                                        ; $7781: $dd
    call nz, Call_0eb_622b                        ; $7782: $c4 $2b $62
    sbc l                                         ; $7785: $9d
    ld e, $e1                                     ; $7786: $1e $e1
    nop                                           ; $7788: $00
    rra                                           ; $7789: $1f
    inc de                                        ; $778a: $13
    nop                                           ; $778b: $00
    add c                                         ; $778c: $81
    ld bc, $0005                                  ; $778d: $01 $05 $00
    add c                                         ; $7790: $81
    ld bc, $0005                                  ; $7791: $01 $05 $00
    add c                                         ; $7794: $81
    ld bc, $000e                                  ; $7795: $01 $0e $00
    rst $38                                       ; $7798: $ff
    dec bc                                        ; $7799: $0b
    inc bc                                        ; $779a: $03
    ld a, [$fd03]                                 ; $779b: $fa $03 $fd
    inc bc                                        ; $779e: $03
    rst $30                                       ; $779f: $f7
    or $f7                                        ; $77a0: $f6 $f7
    cp $f7                                        ; $77a2: $fe $f7
    rst $38                                       ; $77a4: $ff
    inc b                                         ; $77a5: $04
    nop                                           ; $77a6: $00
    inc b                                         ; $77a7: $04
    ld bc, $0302                                  ; $77a8: $01 $02 $03
    ld [bc], a                                    ; $77ab: $02
    dec bc                                        ; $77ac: $0b
    inc b                                         ; $77ad: $04
    rrca                                          ; $77ae: $0f
    adc d                                         ; $77af: $8a
    ld bc, $6fff                                  ; $77b0: $01 $ff $6f
    sub b                                         ; $77b3: $90
    inc h                                         ; $77b4: $24
    db $db                                        ; $77b5: $db
    nop                                           ; $77b6: $00
    ld l, h                                       ; $77b7: $6c
    nop                                           ; $77b8: $00
    inc h                                         ; $77b9: $24
    ld b, $00                                     ; $77ba: $06 $00
    dec c                                         ; $77bc: $0d
    add b                                         ; $77bd: $80
    adc l                                         ; $77be: $8d
    sbc a                                         ; $77bf: $9f
    sbc [hl]                                      ; $77c0: $9e
    pop hl                                        ; $77c1: $e1
    ld [hl+], a                                   ; $77c2: $22
    db $dd                                        ; $77c3: $dd
    call nz, Call_0eb_622b                        ; $77c4: $c4 $2b $62
    sbc l                                         ; $77c7: $9d
    ld e, $e1                                     ; $77c8: $1e $e1
    nop                                           ; $77ca: $00
    rra                                           ; $77cb: $1f
    inc de                                        ; $77cc: $13
    nop                                           ; $77cd: $00
    add c                                         ; $77ce: $81
    ld bc, $0005                                  ; $77cf: $01 $05 $00
    add c                                         ; $77d2: $81
    ld bc, $0005                                  ; $77d3: $01 $05 $00
    add c                                         ; $77d6: $81
    ld bc, $0006                                  ; $77d7: $01 $06 $00
    rst $38                                       ; $77da: $ff
    dec bc                                        ; $77db: $0b
    inc bc                                        ; $77dc: $03
    ld a, [$fd03]                                 ; $77dd: $fa $03 $fd
    inc bc                                        ; $77e0: $03
    ei                                            ; $77e1: $fb
    or $fb                                        ; $77e2: $f6 $fb
    cp $fb                                        ; $77e4: $fe $fb
    rst $38                                       ; $77e6: $ff
    ld [bc], a                                    ; $77e7: $02
    nop                                           ; $77e8: $00
    inc b                                         ; $77e9: $04
    ld bc, $0b02                                  ; $77ea: $01 $02 $0b
    adc d                                         ; $77ed: $8a
    inc bc                                        ; $77ee: $03
    rst $38                                       ; $77ef: $ff
    ld l, a                                       ; $77f0: $6f
    sub c                                         ; $77f1: $91
    inc h                                         ; $77f2: $24
    db $db                                        ; $77f3: $db
    nop                                           ; $77f4: $00
    ld l, h                                       ; $77f5: $6c
    nop                                           ; $77f6: $00
    inc h                                         ; $77f7: $24
    ld c, $00                                     ; $77f8: $0e $00
    dec b                                         ; $77fa: $05
    add b                                         ; $77fb: $80
    adc l                                         ; $77fc: $8d
    sbc a                                         ; $77fd: $9f
    sbc [hl]                                      ; $77fe: $9e
    pop hl                                        ; $77ff: $e1
    and d                                         ; $7800: $a2
    db $dd                                        ; $7801: $dd
    call nz, Call_0eb_622b                        ; $7802: $c4 $2b $62
    sbc l                                         ; $7805: $9d
    ld e, $e1                                     ; $7806: $1e $e1
    nop                                           ; $7808: $00
    rra                                           ; $7809: $1f
    inc de                                        ; $780a: $13
    nop                                           ; $780b: $00
    add c                                         ; $780c: $81
    ld bc, $0005                                  ; $780d: $01 $05 $00
    add c                                         ; $7810: $81
    ld bc, $0005                                  ; $7811: $01 $05 $00
    add c                                         ; $7814: $81
    ld bc, $000e                                  ; $7815: $01 $0e $00
    rst $38                                       ; $7818: $ff
    add hl, bc                                    ; $7819: $09
    ld [bc], a                                    ; $781a: $02
    ld a, [$fd03]                                 ; $781b: $fa $03 $fd
    inc bc                                        ; $781e: $03
    db $fc                                        ; $781f: $fc
    ld hl, sp-$04                                 ; $7820: $f8 $fc
    cp $02                                        ; $7822: $fe $02
    ld bc, $0302                                  ; $7824: $01 $02 $03
    ld [bc], a                                    ; $7827: $02
    rla                                           ; $7828: $17
    adc d                                         ; $7829: $8a
    ld b, $ff                                     ; $782a: $06 $ff
    ld e, a                                       ; $782c: $5f
    and b                                         ; $782d: $a0
    jr z, @-$27                                   ; $782e: $28 $d7

    nop                                           ; $7830: $00
    ld a, b                                       ; $7831: $78
    nop                                           ; $7832: $00
    jr z, @+$15                                   ; $7833: $28 $13

    nop                                           ; $7835: $00
    adc e                                         ; $7836: $8b
    ccf                                           ; $7837: $3f
    inc d                                         ; $7838: $14
    ld a, [hl+]                                   ; $7839: $2a
    jr nz, @+$19                                  ; $783a: $20 $17

    jr nz, jr_0eb_7854                            ; $783c: $20 $16

    inc d                                         ; $783e: $14
    ld a, [hl+]                                   ; $783f: $2a
    nop                                           ; $7840: $00
    ccf                                           ; $7841: $3f
    ld [de], a                                    ; $7842: $12
    nop                                           ; $7843: $00
    rst $38                                       ; $7844: $ff
    add hl, bc                                    ; $7845: $09
    ld [bc], a                                    ; $7846: $02
    ld a, [$fd03]                                 ; $7847: $fa $03 $fd
    inc bc                                        ; $784a: $03
    db $fc                                        ; $784b: $fc
    ld a, [$fdfc]                                 ; $784c: $fa $fc $fd
    add d                                         ; $784f: $82
    nop                                           ; $7850: $00
    ld bc, $0702                                  ; $7851: $01 $02 $07

jr_0eb_7854:
    adc h                                         ; $7854: $8c
    rra                                           ; $7855: $1f
    ld e, $0d                                     ; $7856: $1e $0d
    ld a, $34                                     ; $7858: $3e $34
    sla b                                         ; $785a: $cb $20
    sbc $00                                       ; $785c: $de $00
    ld [hl], b                                    ; $785e: $70
    nop                                           ; $785f: $00
    ld b, b                                       ; $7860: $40
    ld de, $8200                                  ; $7861: $11 $00 $82
    rlca                                          ; $7864: $07
    inc b                                         ; $7865: $04
    ld [bc], a                                    ; $7866: $02
    ld [bc], a                                    ; $7867: $02
    add d                                         ; $7868: $82
    dec b                                         ; $7869: $05
    ld [bc], a                                    ; $786a: $02
    ld [bc], a                                    ; $786b: $02
    inc b                                         ; $786c: $04
    add e                                         ; $786d: $83
    inc bc                                        ; $786e: $03
    nop                                           ; $786f: $00
    ld b, $14                                     ; $7870: $06 $14
    nop                                           ; $7872: $00
    rst $38                                       ; $7873: $ff
    add hl, bc                                    ; $7874: $09
    ld [bc], a                                    ; $7875: $02
    db $fc                                        ; $7876: $fc
    inc bc                                        ; $7877: $03
    db $fd                                        ; $7878: $fd
    inc b                                         ; $7879: $04
    ld a, [$fafa]                                 ; $787a: $fa $fa $fa
    db $fd                                        ; $787d: $fd
    ld [bc], a                                    ; $787e: $02
    add hl, de                                    ; $787f: $19
    sub h                                         ; $7880: $94
    rla                                           ; $7881: $17
    rra                                           ; $7882: $1f
    halt                                          ; $7883: $76
    ld a, a                                       ; $7884: $7f
    ld e, a                                       ; $7885: $5f
    ld a, a                                       ; $7886: $7f

Call_0eb_7887:
    cp a                                          ; $7887: $bf
    cp $b7                                        ; $7888: $fe $b7
    ld sp, hl                                     ; $788a: $f9
    ld l, e                                       ; $788b: $6b
    ld a, [hl]                                    ; $788c: $7e
    ld a, a                                       ; $788d: $7f
    ld [hl], d                                    ; $788e: $72
    dec a                                         ; $788f: $3d
    dec hl                                        ; $7890: $2b
    ccf                                           ; $7891: $3f
    jr nc, jr_0eb_78a3                            ; $7892: $30 $0f

    add hl, bc                                    ; $7894: $09
    ld [bc], a                                    ; $7895: $02
    ld b, $0a                                     ; $7896: $06 $0a
    nop                                           ; $7898: $00
    ld [bc], a                                    ; $7899: $02
    inc b                                         ; $789a: $04
    add d                                         ; $789b: $82
    inc bc                                        ; $789c: $03
    rlca                                          ; $789d: $07
    ld [bc], a                                    ; $789e: $02
    ld b, $02                                     ; $789f: $06 $02
    inc b                                         ; $78a1: $04
    add d                                         ; $78a2: $82

jr_0eb_78a3:
    ld b, $02                                     ; $78a3: $06 $02
    ld [bc], a                                    ; $78a5: $02
    inc b                                         ; $78a6: $04
    inc bc                                        ; $78a7: $03
    ld b, $81                                     ; $78a8: $06 $81
    ld [bc], a                                    ; $78aa: $02
    ld [bc], a                                    ; $78ab: $02
    inc b                                         ; $78ac: $04
    inc c                                         ; $78ad: $0c
    nop                                           ; $78ae: $00
    rst $38                                       ; $78af: $ff
    add hl, bc                                    ; $78b0: $09
    ld [bc], a                                    ; $78b1: $02
    db $fc                                        ; $78b2: $fc
    inc bc                                        ; $78b3: $03
    db $fd                                        ; $78b4: $fd
    inc b                                         ; $78b5: $04
    db $fd                                        ; $78b6: $fd
    ld a, [$fdfd]                                 ; $78b7: $fa $fd $fd
    ld [bc], a                                    ; $78ba: $02
    jr z, @-$72                                   ; $78bb: $28 $8c

    ld a, [hl]                                    ; $78bd: $7e
    ld d, [hl]                                    ; $78be: $56
    ld [hl], a                                    ; $78bf: $77
    ld l, l                                       ; $78c0: $6d
    xor $9b                                       ; $78c1: $ee $9b
    ld l, a                                       ; $78c3: $6f
    ld a, c                                       ; $78c4: $79
    ld h, a                                       ; $78c5: $67
    ld e, [hl]                                    ; $78c6: $5e
    dec [hl]                                      ; $78c7: $35
    cpl                                           ; $78c8: $2f
    ld [bc], a                                    ; $78c9: $02
    rra                                           ; $78ca: $1f
    inc d                                         ; $78cb: $14
    nop                                           ; $78cc: $00
    ld [bc], a                                    ; $78cd: $02
    inc b                                         ; $78ce: $04
    adc b                                         ; $78cf: $88
    ld b, $02                                     ; $78d0: $06 $02
    rlca                                          ; $78d2: $07
    ld bc, $0705                                  ; $78d3: $01 $05 $07
    inc bc                                        ; $78d6: $03
    rlca                                          ; $78d7: $07
    ld [bc], a                                    ; $78d8: $02
    inc b                                         ; $78d9: $04
    stop                                          ; $78da: $10 $00
    rst $38                                       ; $78dc: $ff
    inc de                                        ; $78dd: $13
    rlca                                          ; $78de: $07
    nop                                           ; $78df: $00
    rra                                           ; $78e0: $1f
    ld hl, sp+$03                                 ; $78e1: $f8 $03
    ld sp, hl                                     ; $78e3: $f9
    ei                                            ; $78e4: $fb
    ld hl, sp+$03                                 ; $78e5: $f8 $03
    ld sp, hl                                     ; $78e7: $f9
    dec bc                                        ; $78e8: $0b
    ld sp, hl                                     ; $78e9: $f9
    inc de                                        ; $78ea: $13
    ld hl, sp+$1b                                 ; $78eb: $f8 $1b
    ld [$080a], sp                                ; $78ed: $08 $0a $08
    ld [de], a                                    ; $78f0: $12
    ld [bc], a                                    ; $78f1: $02
    inc bc                                        ; $78f2: $03
    adc b                                         ; $78f3: $88
    ld b, $05                                     ; $78f4: $06 $05
    dec de                                        ; $78f6: $1b
    rra                                           ; $78f7: $1f
    inc h                                         ; $78f8: $24
    inc a                                         ; $78f9: $3c
    ld e, b                                       ; $78fa: $58
    ld a, b                                       ; $78fb: $78
    ld [bc], a                                    ; $78fc: $02
    ldh [rNR14], a                                ; $78fd: $e0 $14
    nop                                           ; $78ff: $00
    ld [bc], a                                    ; $7900: $02
    cp $90                                        ; $7901: $fe $90
    daa                                           ; $7903: $27
    reti                                          ; $7904: $d9


    ld hl, sp-$01                                 ; $7905: $f8 $ff
    dec b                                         ; $7907: $05
    rlca                                          ; $7908: $07
    ld [bc], a                                    ; $7909: $02
    inc bc                                        ; $790a: $03
    ld [bc], a                                    ; $790b: $02
    inc bc                                        ; $790c: $03
    ld [bc], a                                    ; $790d: $02
    inc bc                                        ; $790e: $03
    inc a                                         ; $790f: $3c
    ccf                                           ; $7910: $3f
    rla                                           ; $7911: $17
    rra                                           ; $7912: $1f
    ld [bc], a                                    ; $7913: $02
    add hl, de                                    ; $7914: $19
    ld [bc], a                                    ; $7915: $02
    dec sp                                        ; $7916: $3b
    ld [bc], a                                    ; $7917: $02
    ld [hl-], a                                   ; $7918: $32
    ld [bc], a                                    ; $7919: $02
    ld d, h                                       ; $791a: $54
    ld [bc], a                                    ; $791b: $02
    sub b                                         ; $791c: $90
    ld [bc], a                                    ; $791d: $02
    jr nz, jr_0eb_7922                            ; $791e: $20 $02

    nop                                           ; $7920: $00
    ld [bc], a                                    ; $7921: $02

jr_0eb_7922:
    and l                                         ; $7922: $a5
    adc c                                         ; $7923: $89
    ld a, [$2f7f]                                 ; $7924: $fa $7f $2f
    rst $18                                       ; $7927: $df
    jp $cc3c                                      ; $7928: $c3 $3c $cc


    ld a, a                                       ; $792b: $7f
    sub l                                         ; $792c: $95
    ld [bc], a                                    ; $792d: $02
    db $eb                                        ; $792e: $eb
    sub e                                         ; $792f: $93
    or $2e                                        ; $7930: $f6 $2e
    dec a                                         ; $7932: $3d
    ld e, l                                       ; $7933: $5d
    ld [hl], e                                    ; $7934: $73
    or [hl]                                       ; $7935: $b6
    rst $28                                       ; $7936: $ef
    ld e, a                                       ; $7937: $5f
    ld [hl], e                                    ; $7938: $73
    ld c, a                                       ; $7939: $4f
    ld a, l                                       ; $793a: $7d
    ld d, l                                       ; $793b: $55
    ld l, d                                       ; $793c: $6a
    ld e, e                                       ; $793d: $5b
    ld h, l                                       ; $793e: $65
    ld l, l                                       ; $793f: $6d
    ld e, d                                       ; $7940: $5a
    add d                                         ; $7941: $82
    db $fd                                        ; $7942: $fd
    ld [bc], a                                    ; $7943: $02
    ld bc, $d002                                  ; $7944: $01 $02 $d0
    adc h                                         ; $7947: $8c
    xor e                                         ; $7948: $ab
    ei                                            ; $7949: $fb
    cp $7d                                        ; $794a: $fe $7d
    ld l, b                                       ; $794c: $68
    sub a                                         ; $794d: $97
    pop bc                                        ; $794e: $c1
    ccf                                           ; $794f: $3f
    and $3e                                       ; $7950: $e6 $3e
    ret c                                         ; $7952: $d8

    ld hl, sp+$02                                 ; $7953: $f8 $02
    ldh a, [$8e]                                  ; $7955: $f0 $8e
    sbc h                                         ; $7957: $9c
    db $ec                                        ; $7958: $ec
    or $fa                                        ; $7959: $f6 $fa
    xor a                                         ; $795b: $af
    db $fd                                        ; $795c: $fd
    db $d3                                        ; $795d: $d3
    ld a, l                                       ; $795e: $7d
    ld l, c                                       ; $795f: $69
    cp a                                          ; $7960: $bf
    ei                                            ; $7961: $fb
    dec a                                         ; $7962: $3d
    ld [c], a                                     ; $7963: $e2
    ld a, $02                                     ; $7964: $3e $02
    ldh a, [$8a]                                  ; $7966: $f0 $8a
    call c, $be3c                                 ; $7968: $dc $3c $be
    ld [$7db3], a                                 ; $796b: $ea $b3 $7d
    adc c                                         ; $796e: $89
    rst $38                                       ; $796f: $ff
    ld a, $fe                                     ; $7970: $3e $fe
    ld [bc], a                                    ; $7972: $02
    ret nz                                        ; $7973: $c0

    inc d                                         ; $7974: $14
    nop                                           ; $7975: $00
    sub b                                         ; $7976: $90
    ld c, d                                       ; $7977: $4a
    ld a, l                                       ; $7978: $7d
    ld d, l                                       ; $7979: $55
    ld a, e                                       ; $797a: $7b
    adc c                                         ; $797b: $89
    rst $30                                       ; $797c: $f7

jr_0eb_797d:
    ldh [rIE], a                                  ; $797d: $e0 $ff
    ld [de], a                                    ; $797f: $12
    rra                                           ; $7980: $1f

jr_0eb_7981:
    dec d                                         ; $7981: $15
    ld e, $10                                     ; $7982: $1e $10
    rra                                           ; $7984: $1f
    ld e, $1f                                     ; $7985: $1e $1f
    inc b                                         ; $7987: $04
    ld bc, $000c                                  ; $7988: $01 $0c $00
    adc e                                         ; $798b: $8b
    or l                                          ; $798c: $b5
    ld e, a                                       ; $798d: $5f
    ld a, c                                       ; $798e: $79
    sbc a                                         ; $798f: $9f
    or l                                          ; $7990: $b5
    ld d, a                                       ; $7991: $57
    ld d, d                                       ; $7992: $52
    or d                                          ; $7993: $b2
    or b                                          ; $7994: $b0
    ld d, b                                       ; $7995: $50
    ld [hl], b                                    ; $7996: $70
    ld [bc], a                                    ; $7997: $02
    sub b                                         ; $7998: $90
    add a                                         ; $7999: $87
    ld [hl], b                                    ; $799a: $70
    jr nz, jr_0eb_797d                            ; $799b: $20 $e0

    ld h, b                                       ; $799d: $60
    and b                                         ; $799e: $a0
    jr nz, jr_0eb_7981                            ; $799f: $20 $e0

    ld [bc], a                                    ; $79a1: $02
    ret nz                                        ; $79a2: $c0

    ld [bc], a                                    ; $79a3: $02
    add b                                         ; $79a4: $80
    ld b, $00                                     ; $79a5: $06 $00
    rst $38                                       ; $79a7: $ff
    ld de, $0006                                  ; $79a8: $11 $06 $00
    rra                                           ; $79ab: $1f
    ld hl, sp+$03                                 ; $79ac: $f8 $03
    ld sp, hl                                     ; $79ae: $f9
    ei                                            ; $79af: $fb
    ld sp, hl                                     ; $79b0: $f9
    inc bc                                        ; $79b1: $03
    ld sp, hl                                     ; $79b2: $f9
    dec bc                                        ; $79b3: $0b
    ld a, [$fa13]                                 ; $79b4: $fa $13 $fa
    ld a, [de]                                    ; $79b7: $1a
    add hl, bc                                    ; $79b8: $09
    ld b, $02                                     ; $79b9: $06 $02
    ld bc, $0686                                  ; $79bb: $01 $86 $06
    rlca                                          ; $79be: $07
    dec sp                                        ; $79bf: $3b
    ccf                                           ; $79c0: $3f
    call nz, Call_000_02fc                        ; $79c1: $c4 $fc $02
    jr c, jr_0eb_79dc                             ; $79c4: $38 $16

    nop                                           ; $79c6: $00
    ld [bc], a                                    ; $79c7: $02
    db $fc                                        ; $79c8: $fc
    add h                                         ; $79c9: $84
    ld c, a                                       ; $79ca: $4f
    or e                                          ; $79cb: $b3
    pop af                                        ; $79cc: $f1
    cp $02                                        ; $79cd: $fe $02
    rrca                                          ; $79cf: $0f
    adc h                                         ; $79d0: $8c
    dec c                                         ; $79d1: $0d
    ld c, $13                                     ; $79d2: $0e $13
    inc e                                         ; $79d4: $1c
    ld c, $0d                                     ; $79d5: $0e $0d
    dec d                                         ; $79d7: $15
    rra                                           ; $79d8: $1f
    ld [$0e0f], sp                                ; $79d9: $08 $0f $0e

jr_0eb_79dc:
    rrca                                          ; $79dc: $0f
    ld [bc], a                                    ; $79dd: $02
    add hl, de                                    ; $79de: $19
    ld [bc], a                                    ; $79df: $02
    dec sp                                        ; $79e0: $3b
    ld [bc], a                                    ; $79e1: $02
    ld c, b                                       ; $79e2: $48
    ld [bc], a                                    ; $79e3: $02
    db $10                                        ; $79e4: $10
    inc b                                         ; $79e5: $04
    nop                                           ; $79e6: $00
    ld [bc], a                                    ; $79e7: $02
    ld b, b                                       ; $79e8: $40
    ld [bc], a                                    ; $79e9: $02
    ret z                                         ; $79ea: $c8

    ld [bc], a                                    ; $79eb: $02
    db $fd                                        ; $79ec: $fd
    sbc d                                         ; $79ed: $9a
    ld a, e                                       ; $79ee: $7b
    add a                                         ; $79ef: $87
    rst $38                                       ; $79f0: $ff
    nop                                           ; $79f1: $00
    cp d                                          ; $79f2: $ba
    ld a, a                                       ; $79f3: $7f
    xor l                                         ; $79f4: $ad
    jp nc, $a55a                                  ; $79f5: $d2 $5a $a5

    and e                                         ; $79f8: $a3
    ld e, l                                       ; $79f9: $5d
    rlca                                          ; $79fa: $07
    ei                                            ; $79fb: $fb
    inc c                                         ; $79fc: $0c
    db $f4                                        ; $79fd: $f4
    add h                                         ; $79fe: $84
    db $fc                                        ; $79ff: $fc
    adc b                                         ; $7a00: $88
    ld hl, sp+$48                                 ; $7a01: $f8 $48
    ld a, b                                       ; $7a03: $78
    ld d, b                                       ; $7a04: $50
    ld [hl], b                                    ; $7a05: $70
    ld d, b                                       ; $7a06: $50
    ld [hl], b                                    ; $7a07: $70
    ld [bc], a                                    ; $7a08: $02
    ld bc, $f38e                                  ; $7a09: $01 $8e $f3
    ld a, [c]                                     ; $7a0c: $f2
    db $fd                                        ; $7a0d: $fd
    rst $08                                       ; $7a0e: $cf
    di                                            ; $7a0f: $f3
    ld a, $9d                                     ; $7a10: $3e $9d
    ld l, a                                       ; $7a12: $6f
    ld a, b                                       ; $7a13: $78
    rst $20                                       ; $7a14: $e7
    di                                            ; $7a15: $f3
    rst $38                                       ; $7a16: $ff
    ld c, h                                       ; $7a17: $4c
    db $fc                                        ; $7a18: $fc
    ld [bc], a                                    ; $7a19: $02
    ldh a, [$0e]                                  ; $7a1a: $f0 $0e
    nop                                           ; $7a1c: $00
    ld [bc], a                                    ; $7a1d: $02
    ld [hl], b                                    ; $7a1e: $70
    adc d                                         ; $7a1f: $8a
    ld e, h                                       ; $7a20: $5c
    inc a                                         ; $7a21: $3c
    ld a, $6a                                     ; $7a22: $3e $6a
    inc sp                                        ; $7a24: $33
    ld a, l                                       ; $7a25: $7d
    add hl, bc                                    ; $7a26: $09
    ld a, a                                       ; $7a27: $7f
    ld a, $7e                                     ; $7a28: $3e $7e
    ld [bc], a                                    ; $7a2a: $02
    ld h, b                                       ; $7a2b: $60
    ld [de], a                                    ; $7a2c: $12
    nop                                           ; $7a2d: $00
    inc b                                         ; $7a2e: $04
    ld bc, $001c                                  ; $7a2f: $01 $1c $00
    rst $38                                       ; $7a32: $ff
    dec d                                         ; $7a33: $15
    ld [$1f00], sp                                ; $7a34: $08 $00 $1f
    ld hl, sp+$03                                 ; $7a37: $f8 $03
    pop af                                        ; $7a39: $f1
    ei                                            ; $7a3a: $fb
    ldh a, [$03]                                  ; $7a3b: $f0 $03
    pop af                                        ; $7a3d: $f1
    dec bc                                        ; $7a3e: $0b
    ld a, [c]                                     ; $7a3f: $f2
    inc de                                        ; $7a40: $13
    ei                                            ; $7a41: $fb
    add hl, de                                    ; $7a42: $19
    nop                                           ; $7a43: $00
    inc b                                         ; $7a44: $04
    nop                                           ; $7a45: $00

jr_0eb_7a46:
    dec c                                         ; $7a46: $0d
    nop                                           ; $7a47: $00
    ld de, $0102                                  ; $7a48: $11 $02 $01
    ld [bc], a                                    ; $7a4b: $02
    inc bc                                        ; $7a4c: $03
    ld [de], a                                    ; $7a4d: $12
    nop                                           ; $7a4e: $00
    ld [bc], a                                    ; $7a4f: $02
    rst $38                                       ; $7a50: $ff
    add d                                         ; $7a51: $82
    ld b, a                                       ; $7a52: $47
    ld a, a                                       ; $7a53: $7f
    ld [bc], a                                    ; $7a54: $02
    jr c, jr_0eb_7a5b                             ; $7a55: $38 $04

    nop                                           ; $7a57: $00
    ld [bc], a                                    ; $7a58: $02
    ld a, h                                       ; $7a59: $7c
    sub e                                         ; $7a5a: $93

jr_0eb_7a5b:
    add e                                         ; $7a5b: $83
    rst $38                                       ; $7a5c: $ff
    ld [$10ff], a                                 ; $7a5d: $ea $ff $10
    rra                                           ; $7a60: $1f
    ld [$120f], sp                                ; $7a61: $08 $0f $12
    rra                                           ; $7a64: $1f
    jr nc, jr_0eb_7aa6                            ; $7a65: $30 $3f

    ld c, $0f                                     ; $7a67: $0e $0f
    ld [bc], a                                    ; $7a69: $02
    inc bc                                        ; $7a6a: $03
    ld [bc], a                                    ; $7a6b: $02
    inc bc                                        ; $7a6c: $03
    ld [bc], a                                    ; $7a6d: $02
    inc bc                                        ; $7a6e: $03
    inc bc                                        ; $7a6f: $03
    add [hl]                                      ; $7a70: $86
    cp $ff                                        ; $7a71: $fe $ff
    push de                                       ; $7a73: $d5
    db $eb                                        ; $7a74: $eb
    dec a                                         ; $7a75: $3d
    ccf                                           ; $7a76: $3f
    ld [bc], a                                    ; $7a77: $02
    inc bc                                        ; $7a78: $03
    ld [bc], a                                    ; $7a79: $02
    ret nz                                        ; $7a7a: $c0

    sbc [hl]                                      ; $7a7b: $9e
    ld [hl], a                                    ; $7a7c: $77
    or a                                          ; $7a7d: $b7
    ld e, a                                       ; $7a7e: $5f
    db $ec                                        ; $7a7f: $ec
    ld c, $f3                                     ; $7a80: $0e $f3
    db $e3                                        ; $7a82: $e3
    db $fd                                        ; $7a83: $fd
    dec c                                         ; $7a84: $0d
    cp $a1                                        ; $7a85: $fe $a1
    cp $09                                        ; $7a87: $fe $09
    rst $38                                       ; $7a89: $ff
    inc bc                                        ; $7a8a: $03
    cp $95                                        ; $7a8b: $fe $95
    cp $64                                        ; $7a8d: $fe $64
    rst $38                                       ; $7a8f: $ff
    and [hl]                                      ; $7a90: $a6
    ei                                            ; $7a91: $fb
    ld e, e                                       ; $7a92: $5b
    db $fd                                        ; $7a93: $fd
    db $fc                                        ; $7a94: $fc
    rst $38                                       ; $7a95: $ff
    ld e, a                                       ; $7a96: $5f
    cp $eb                                        ; $7a97: $fe $eb
    rst $38                                       ; $7a99: $ff
    ld [bc], a                                    ; $7a9a: $02
    add b                                         ; $7a9b: $80
    sbc [hl]                                      ; $7a9c: $9e
    ldh [$60], a                                  ; $7a9d: $e0 $60
    ldh a, [rNR10]                                ; $7a9f: $f0 $10
    cp b                                          ; $7aa1: $b8
    ret z                                         ; $7aa2: $c8

    ld hl, sp+$48                                 ; $7aa3: $f8 $48
    db $fc                                        ; $7aa5: $fc

jr_0eb_7aa6:
    add h                                         ; $7aa6: $84
    ret c                                         ; $7aa7: $d8

    jr z, jr_0eb_7b1a                             ; $7aa8: $28 $70

    ret nc                                        ; $7aaa: $d0

    ldh [$a0], a                                  ; $7aab: $e0 $a0
    db $e3                                        ; $7aad: $e3
    and e                                         ; $7aae: $a3
    rst $20                                       ; $7aaf: $e7
    inc h                                         ; $7ab0: $24
    ld [c], a                                     ; $7ab1: $e2
    and e                                         ; $7ab2: $a3
    or $75                                        ; $7ab3: $f6 $75
    jp c, $547f                                   ; $7ab5: $da $7f $54

    xor e                                         ; $7ab8: $ab
    ld b, e                                       ; $7ab9: $43
    rst $38                                       ; $7aba: $ff
    ld [bc], a                                    ; $7abb: $02
    jr nc, jr_0eb_7a46                            ; $7abc: $30 $88

    inc e                                         ; $7abe: $1c
    inc a                                         ; $7abf: $3c
    ld a, $2a                                     ; $7ac0: $3e $2a
    inc sp                                        ; $7ac2: $33
    dec a                                         ; $7ac3: $3d
    add hl, bc                                    ; $7ac4: $09
    ccf                                           ; $7ac5: $3f
    ld [bc], a                                    ; $7ac6: $02
    ld a, $02                                     ; $7ac7: $3e $02
    jr nz, jr_0eb_7add                            ; $7ac9: $20 $12

    nop                                           ; $7acb: $00
    add [hl]                                      ; $7acc: $86
    inc b                                         ; $7acd: $04
    ld b, $19                                     ; $7ace: $06 $19
    rra                                           ; $7ad0: $1f
    ld l, a                                       ; $7ad1: $6f
    ld a, a                                       ; $7ad2: $7f
    ld [bc], a                                    ; $7ad3: $02
    ld [hl-], a                                   ; $7ad4: $32
    ld [bc], a                                    ; $7ad5: $02
    ld [hl+], a                                   ; $7ad6: $22
    ld [bc], a                                    ; $7ad7: $02
    ld [hl], $02                                  ; $7ad8: $36 $02
    ld [hl], d                                    ; $7ada: $72
    ld [bc], a                                    ; $7adb: $02
    ld d, h                                       ; $7adc: $54

jr_0eb_7add:
    ld [bc], a                                    ; $7add: $02
    sub b                                         ; $7ade: $90
    ld [bc], a                                    ; $7adf: $02
    jr nz, jr_0eb_7af0                            ; $7ae0: $20 $0e

    nop                                           ; $7ae2: $00
    add h                                         ; $7ae3: $84
    ret nc                                        ; $7ae4: $d0

    db $fc                                        ; $7ae5: $fc
    ld hl, $023e                                  ; $7ae6: $21 $3e $02
    rra                                           ; $7ae9: $1f
    inc e                                         ; $7aea: $1c
    nop                                           ; $7aeb: $00
    ld [bc], a                                    ; $7aec: $02
    rrca                                          ; $7aed: $0f
    ld a, [de]                                    ; $7aee: $1a
    nop                                           ; $7aef: $00

jr_0eb_7af0:
    rst $38                                       ; $7af0: $ff
    rla                                           ; $7af1: $17
    add hl, bc                                    ; $7af2: $09
    nop                                           ; $7af3: $00
    rra                                           ; $7af4: $1f
    ld hl, sp+$03                                 ; $7af5: $f8 $03
    rst $20                                       ; $7af7: $e7
    inc b                                         ; $7af8: $04
    jp hl                                         ; $7af9: $e9


    inc c                                         ; $7afa: $0c
    db $ec                                        ; $7afb: $ec
    inc d                                         ; $7afc: $14
    db $fd                                        ; $7afd: $fd
    ei                                            ; $7afe: $fb
    rst $30                                       ; $7aff: $f7
    inc bc                                        ; $7b00: $03
    rst $30                                       ; $7b01: $f7
    dec bc                                        ; $7b02: $0b
    ld sp, hl                                     ; $7b03: $f9
    inc de                                        ; $7b04: $13
    db $fc                                        ; $7b05: $fc
    jr jr_0eb_7b0f                                ; $7b06: $18 $07

    inc bc                                        ; $7b08: $03
    ld [bc], a                                    ; $7b09: $02
    ld a, b                                       ; $7b0a: $78
    sbc [hl]                                      ; $7b0b: $9e
    add a                                         ; $7b0c: $87
    rst $38                                       ; $7b0d: $ff
    ld c, b                                       ; $7b0e: $48

jr_0eb_7b0f:
    ld a, a                                       ; $7b0f: $7f
    ld hl, $103f                                  ; $7b10: $21 $3f $10
    rra                                           ; $7b13: $1f
    db $10                                        ; $7b14: $10
    rra                                           ; $7b15: $1f
    ld [$080f], sp                                ; $7b16: $08 $0f $08
    rrca                                          ; $7b19: $0f

jr_0eb_7b1a:
    db $10                                        ; $7b1a: $10
    rra                                           ; $7b1b: $1f
    inc de                                        ; $7b1c: $13
    rra                                           ; $7b1d: $1f
    ld [$040f], sp                                ; $7b1e: $08 $0f $04
    rlca                                          ; $7b21: $07
    inc b                                         ; $7b22: $04
    rlca                                          ; $7b23: $07
    add hl, bc                                    ; $7b24: $09
    rrca                                          ; $7b25: $0f
    inc b                                         ; $7b26: $04
    rlca                                          ; $7b27: $07
    ld [bc], a                                    ; $7b28: $02
    inc bc                                        ; $7b29: $03
    ld [bc], a                                    ; $7b2a: $02
    ret nz                                        ; $7b2b: $c0

    sbc [hl]                                      ; $7b2c: $9e
    ld [hl+], a                                   ; $7b2d: $22
    ld [c], a                                     ; $7b2e: $e2
    inc sp                                        ; $7b2f: $33
    db $d3                                        ; $7b30: $d3
    dec de                                        ; $7b31: $1b
    ld [$fe15], a                                 ; $7b32: $ea $15 $fe
    rrca                                          ; $7b35: $0f
    ld a, [$ff02]                                 ; $7b36: $fa $02 $ff
    inc sp                                        ; $7b39: $33
    db $fd                                        ; $7b3a: $fd
    add hl, bc                                    ; $7b3b: $09
    rst $38                                       ; $7b3c: $ff
    ld bc, $2ffe                                  ; $7b3d: $01 $fe $2f
    cp $01                                        ; $7b40: $fe $01
    cp $01                                        ; $7b42: $fe $01
    rst $38                                       ; $7b44: $ff
    add hl, bc                                    ; $7b45: $09
    rst $38                                       ; $7b46: $ff
    ld b, $fb                                     ; $7b47: $06 $fb
    inc de                                        ; $7b49: $13
    cp $02                                        ; $7b4a: $fe $02
    add b                                         ; $7b4c: $80
    add c                                         ; $7b4d: $81
    ld b, b                                       ; $7b4e: $40
    ld [bc], a                                    ; $7b4f: $02
    ret nz                                        ; $7b50: $c0

    sub e                                         ; $7b51: $93
    ld b, b                                       ; $7b52: $40
    ldh [rNR41], a                                ; $7b53: $e0 $20
    ldh [rNR41], a                                ; $7b55: $e0 $20
    ld h, b                                       ; $7b57: $60
    and b                                         ; $7b58: $a0
    ret nc                                        ; $7b59: $d0

    or b                                          ; $7b5a: $b0
    ldh a, [$90]                                  ; $7b5b: $f0 $90
    ldh a, [$90]                                  ; $7b5d: $f0 $90
    ld h, b                                       ; $7b5f: $60
    and b                                         ; $7b60: $a0
    ldh [rNR41], a                                ; $7b61: $e0 $20
    ret nz                                        ; $7b63: $c0

    ld b, b                                       ; $7b64: $40
    ld b, $80                                     ; $7b65: $06 $80
    ld [bc], a                                    ; $7b67: $02
    adc a                                         ; $7b68: $8f
    ld [bc], a                                    ; $7b69: $02
    ldh [$88], a                                  ; $7b6a: $e0 $88
    ld e, b                                       ; $7b6c: $58
    ld a, b                                       ; $7b6d: $78
    inc h                                         ; $7b6e: $24
    inc a                                         ; $7b6f: $3c
    rra                                           ; $7b70: $1f
    dec de                                        ; $7b71: $1b
    dec b                                         ; $7b72: $05
    ld b, $02                                     ; $7b73: $06 $02
    inc bc                                        ; $7b75: $03
    inc d                                         ; $7b76: $14
    nop                                           ; $7b77: $00
    ld b, $01                                     ; $7b78: $06 $01
    ld a, [bc]                                    ; $7b7a: $0a
    nop                                           ; $7b7b: $00
    ld [bc], a                                    ; $7b7c: $02
    ld bc, $868a                                  ; $7b7d: $01 $8a $86
    add a                                         ; $7b80: $87
    ld a, a                                       ; $7b81: $7f
    ld a, [$ceb3]                                 ; $7b82: $fa $b3 $ce
    ld a, h                                       ; $7b85: $7c
    ld a, a                                       ; $7b86: $7f
    scf                                           ; $7b87: $37
    ccf                                           ; $7b88: $3f
    ld [bc], a                                    ; $7b89: $02
    add hl, de                                    ; $7b8a: $19
    ld [bc], a                                    ; $7b8b: $02
    ld de, $009a                                  ; $7b8c: $11 $9a $00
    add b                                         ; $7b8f: $80
    nop                                           ; $7b90: $00
    add b                                         ; $7b91: $80
    ld d, l                                       ; $7b92: $55
    ei                                            ; $7b93: $fb
    adc c                                         ; $7b94: $89
    rst $38                                       ; $7b95: $ff
    and l                                         ; $7b96: $a5
    cp $d5                                        ; $7b97: $fe $d5
    cp $aa                                        ; $7b99: $fe $aa
    rst $38                                       ; $7b9b: $ff
    sub $ff                                       ; $7b9c: $d6 $ff
    xor e                                         ; $7b9e: $ab
    rst $38                                       ; $7b9f: $ff
    sub h                                         ; $7ba0: $94
    rst $38                                       ; $7ba1: $ff
    ld b, b                                       ; $7ba2: $40
    rst $38                                       ; $7ba3: $ff

jr_0eb_7ba4:
    adc b                                         ; $7ba4: $88

jr_0eb_7ba5:
    rst $38                                       ; $7ba5: $ff
    db $fc                                        ; $7ba6: $fc
    rst $38                                       ; $7ba7: $ff
    ld [bc], a                                    ; $7ba8: $02
    jp Jump_000_0004                              ; $7ba9: $c3 $04 $00


    add h                                         ; $7bac: $84
    add b                                         ; $7bad: $80
    nop                                           ; $7bae: $00
    add b                                         ; $7baf: $80
    nop                                           ; $7bb0: $00
    ld [bc], a                                    ; $7bb1: $02
    add b                                         ; $7bb2: $80
    sub b                                         ; $7bb3: $90
    xor [hl]                                      ; $7bb4: $ae
    jp hl                                         ; $7bb5: $e9


    ld h, l                                       ; $7bb6: $65
    rst $20                                       ; $7bb7: $e7
    db $fd                                        ; $7bb8: $fd
    dec sp                                        ; $7bb9: $3b
    ld d, h                                       ; $7bba: $54
    cp a                                          ; $7bbb: $bf
    jr jr_0eb_7ba5                                ; $7bbc: $18 $e7

    ld b, c                                       ; $7bbe: $41
    cp a                                          ; $7bbf: $bf
    ld a, [hl]                                    ; $7bc0: $7e
    sbc [hl]                                      ; $7bc1: $9e
    jr nz, jr_0eb_7ba4                            ; $7bc2: $20 $e0

    ld [bc], a                                    ; $7bc4: $02
    ret nz                                        ; $7bc5: $c0

    ld [$0200], sp                                ; $7bc6: $08 $00 $02
    inc e                                         ; $7bc9: $1c
    add [hl]                                      ; $7bca: $86
    ld e, $0a                                     ; $7bcb: $1e $0a
    inc de                                        ; $7bcd: $13
    dec e                                         ; $7bce: $1d
    add hl, bc                                    ; $7bcf: $09
    rra                                           ; $7bd0: $1f
    ld [bc], a                                    ; $7bd1: $02
    ld e, $16                                     ; $7bd2: $1e $16
    nop                                           ; $7bd4: $00
    ld [bc], a                                    ; $7bd5: $02
    dec de                                        ; $7bd6: $1b
    ld [bc], a                                    ; $7bd7: $02
    add hl, sp                                    ; $7bd8: $39
    ld [bc], a                                    ; $7bd9: $02
    ld a, [hl+]                                   ; $7bda: $2a
    ld [bc], a                                    ; $7bdb: $02
    ld c, b                                       ; $7bdc: $48
    ld [bc], a                                    ; $7bdd: $02
    db $10                                        ; $7bde: $10
    ld d, $00                                     ; $7bdf: $16 $00
    rst $38                                       ; $7be1: $ff
    dec d                                         ; $7be2: $15
    ld [$1f00], sp                                ; $7be3: $08 $00 $1f
    ld hl, sp+$03                                 ; $7be6: $f8 $03
    rst $38                                       ; $7be8: $ff
    ld a, [$02ea]                                 ; $7be9: $fa $ea $02
    ld a, [$ef02]                                 ; $7bec: $fa $02 $ef
    ld a, [bc]                                    ; $7bef: $0a
    rst $38                                       ; $7bf0: $ff
    ld a, [bc]                                    ; $7bf1: $0a
    rst $28                                       ; $7bf2: $ef
    ld [de], a                                    ; $7bf3: $12
    rst $38                                       ; $7bf4: $ff
    ld [de], a                                    ; $7bf5: $12
    ld sp, hl                                     ; $7bf6: $f9
    ld a, [de]                                    ; $7bf7: $1a
    ld [bc], a                                    ; $7bf8: $02
    ld [hl], b                                    ; $7bf9: $70
    add [hl]                                      ; $7bfa: $86
    inc l                                         ; $7bfb: $2c
    inc a                                         ; $7bfc: $3c
    rla                                           ; $7bfd: $17
    dec de                                        ; $7bfe: $1b
    inc c                                         ; $7bff: $0c
    rrca                                          ; $7c00: $0f
    ld [bc], a                                    ; $7c01: $02
    inc bc                                        ; $7c02: $03
    ld d, $00                                     ; $7c03: $16 $00
    ld [bc], a                                    ; $7c05: $02
    jr nz, jr_0eb_7ba4                            ; $7c06: $20 $9c

    ld [hl], b                                    ; $7c08: $70
    ld d, b                                       ; $7c09: $50
    ld e, b                                       ; $7c0a: $58
    ld l, b                                       ; $7c0b: $68
    ld e, h                                       ; $7c0c: $5c
    ld [hl], h                                    ; $7c0d: $74
    ld h, $3a                                     ; $7c0e: $26 $3a
    daa                                           ; $7c10: $27
    dec a                                         ; $7c11: $3d
    db $10                                        ; $7c12: $10
    rra                                           ; $7c13: $1f
    db $10                                        ; $7c14: $10
    rra                                           ; $7c15: $1f
    inc h                                         ; $7c16: $24
    ccf                                           ; $7c17: $3f
    ld de, $081f                                  ; $7c18: $11 $1f $08
    rrca                                          ; $7c1b: $0f
    ld [$120f], sp                                ; $7c1c: $08 $0f $12
    rra                                           ; $7c1f: $1f
    inc c                                         ; $7c20: $0c
    rrca                                          ; $7c21: $0f
    ld [bc], a                                    ; $7c22: $02
    inc bc                                        ; $7c23: $03
    ld [bc], a                                    ; $7c24: $02
    ld bc, $000a                                  ; $7c25: $01 $0a $00
    ld [bc], a                                    ; $7c28: $02
    ld bc, $0788                                  ; $7c29: $01 $88 $07
    ld b, $fd                                     ; $7c2c: $06 $fd
    ei                                            ; $7c2e: $fb
    di                                            ; $7c2f: $f3
    rrca                                          ; $7c30: $0f
    db $fd                                        ; $7c31: $fd
    rst $38                                       ; $7c32: $ff
    ld [bc], a                                    ; $7c33: $02
    ld b, $02                                     ; $7c34: $06 $02
    inc b                                         ; $7c36: $04
    ld [bc], a                                    ; $7c37: $02
    dec c                                         ; $7c38: $0d
    ld [bc], a                                    ; $7c39: $02
    inc e                                         ; $7c3a: $1c
    ld [bc], a                                    ; $7c3b: $02
    dec d                                         ; $7c3c: $15
    ld [bc], a                                    ; $7c3d: $02
    inc h                                         ; $7c3e: $24

jr_0eb_7c3f:
    ld [bc], a                                    ; $7c3f: $02
    add b                                         ; $7c40: $80
    and a                                         ; $7c41: $a7
    ldh [$60], a                                  ; $7c42: $e0 $60
    jr c, @-$26                                   ; $7c44: $38 $d8

    ld [hl], $ee                                  ; $7c46: $36 $ee
    rlca                                          ; $7c48: $07
    ld sp, hl                                     ; $7c49: $f9
    ld h, b                                       ; $7c4a: $60
    rst $38                                       ; $7c4b: $ff
    rlca                                          ; $7c4c: $07
    cp $01                                        ; $7c4d: $fe $01
    cp $d4                                        ; $7c4f: $fe $d4
    rst $38                                       ; $7c51: $ff
    dec b                                         ; $7c52: $05
    rst $38                                       ; $7c53: $ff
    ld e, c                                       ; $7c54: $59
    rst $38                                       ; $7c55: $ff
    xor e                                         ; $7c56: $ab
    rst $38                                       ; $7c57: $ff
    ld [hl], d                                    ; $7c58: $72
    ld a, l                                       ; $7c59: $7d
    ld e, l                                       ; $7c5a: $5d
    ld a, [hl]                                    ; $7c5b: $7e
    cpl                                           ; $7c5c: $2f
    ccf                                           ; $7c5d: $3f
    ld a, l                                       ; $7c5e: $7d
    ld a, a                                       ; $7c5f: $7f
    xor d                                         ; $7c60: $aa
    rst $38                                       ; $7c61: $ff
    and c                                         ; $7c62: $a1
    rst $38                                       ; $7c63: $ff
    ld e, a                                       ; $7c64: $5f
    cp a                                          ; $7c65: $bf
    and b                                         ; $7c66: $a0
    ld h, b                                       ; $7c67: $60
    ld b, b                                       ; $7c68: $40
    inc bc                                        ; $7c69: $03

jr_0eb_7c6a:
    ret nz                                        ; $7c6a: $c0

    ld b, $80                                     ; $7c6b: $06 $80
    ld c, $00                                     ; $7c6d: $0e $00
    inc b                                         ; $7c6f: $04
    ld b, b                                       ; $7c70: $40
    and d                                         ; $7c71: $a2
    ldh [$a0], a                                  ; $7c72: $e0 $a0
    ldh [$a0], a                                  ; $7c74: $e0 $a0
    ld [hl], b                                    ; $7c76: $70
    sub b                                         ; $7c77: $90
    ldh a, [$90]                                  ; $7c78: $f0 $90
    cp b                                          ; $7c7a: $b8
    ret z                                         ; $7c7b: $c8

    sbc b                                         ; $7c7c: $98
    add sp, -$24                                  ; $7c7d: $e8 $dc
    and h                                         ; $7c7f: $a4
    jr c, jr_0eb_7c6a                             ; $7c80: $38 $e8

    di                                            ; $7c82: $f3
    ld d, e                                       ; $7c83: $53
    ld [hl], a                                    ; $7c84: $77
    sub h                                         ; $7c85: $94
    or d                                          ; $7c86: $b2
    db $d3                                        ; $7c87: $d3
    cp $6d                                        ; $7c88: $fe $6d
    ld a, [hl-]                                   ; $7c8a: $3a
    rst $18                                       ; $7c8b: $df
    db $f4                                        ; $7c8c: $f4
    res 4, c                                      ; $7c8d: $cb $a1
    rst $38                                       ; $7c8f: $ff
    ld a, [de]                                    ; $7c90: $1a
    and $0c                                       ; $7c91: $e6 $0c
    db $fc                                        ; $7c93: $fc
    ld [bc], a                                    ; $7c94: $02
    ldh a, [rNR23]                                ; $7c95: $f0 $18
    nop                                           ; $7c97: $00
    ld [bc], a                                    ; $7c98: $02
    ret nz                                        ; $7c99: $c0

    adc d                                         ; $7c9a: $8a
    ld [hl], b                                    ; $7c9b: $70
    ldh a, [$f8]                                  ; $7c9c: $f0 $f8
    xor b                                         ; $7c9e: $a8
    call z, $24f4                                 ; $7c9f: $cc $f4 $24
    db $fc                                        ; $7ca2: $fc
    ld a, b                                       ; $7ca3: $78
    ld hl, sp+$02                                 ; $7ca4: $f8 $02
    add b                                         ; $7ca6: $80
    ld [de], a                                    ; $7ca7: $12

jr_0eb_7ca8:
    nop                                           ; $7ca8: $00
    rst $38                                       ; $7ca9: $ff
    rrca                                          ; $7caa: $0f
    dec b                                         ; $7cab: $05
    nop                                           ; $7cac: $00
    rra                                           ; $7cad: $1f
    ld hl, sp+$03                                 ; $7cae: $f8 $03
    nop                                           ; $7cb0: $00
    ei                                            ; $7cb1: $fb
    db $fc                                        ; $7cb2: $fc
    inc bc                                        ; $7cb3: $03
    ld a, [$f80b]                                 ; $7cb4: $fa $0b $f8
    inc de                                        ; $7cb7: $13
    ld hl, sp+$19                                 ; $7cb8: $f8 $19
    ld [bc], a                                    ; $7cba: $02
    jr c, jr_0eb_7c3f                             ; $7cbb: $38 $82

    rst $00                                       ; $7cbd: $c7
    rst $38                                       ; $7cbe: $ff
    ld [bc], a                                    ; $7cbf: $02
    ccf                                           ; $7cc0: $3f
    ld b, $00                                     ; $7cc1: $06 $00
    ld [bc], a                                    ; $7cc3: $02
    ld bc, $0302                                  ; $7cc4: $01 $02 $03
    stop                                          ; $7cc7: $10 $00
    inc b                                         ; $7cc9: $04
    ld bc, $0392                                  ; $7cca: $01 $92 $03
    ld [bc], a                                    ; $7ccd: $02
    rrca                                          ; $7cce: $0f
    dec c                                         ; $7ccf: $0d
    ld a, d                                       ; $7cd0: $7a
    ld [hl], a                                    ; $7cd1: $77
    xor a                                         ; $7cd2: $af
    call c, $f1ff                                 ; $7cd3: $dc $ff $f1
    ccf                                           ; $7cd6: $3f
    jr nz, jr_0eb_7d58                            ; $7cd7: $20 $7f

    ld b, b                                       ; $7cd9: $40
    rst $30                                       ; $7cda: $f7
    adc a                                         ; $7cdb: $8f
    cp c                                          ; $7cdc: $b9
    ld a, c                                       ; $7cdd: $79
    ld [bc], a                                    ; $7cde: $02
    ld [$4802], a                                 ; $7cdf: $ea $02 $48
    ld [bc], a                                    ; $7ce2: $02
    db $10                                        ; $7ce3: $10
    inc b                                         ; $7ce4: $04
    nop                                           ; $7ce5: $00
    ld [bc], a                                    ; $7ce6: $02
    inc b                                         ; $7ce7: $04
    add d                                         ; $7ce8: $82
    ld a, [hl+]                                   ; $7ce9: $2a
    ld l, $02                                     ; $7cea: $2e $02
    ld a, a                                       ; $7cec: $7f
    sub b                                         ; $7ced: $90
    rst $18                                       ; $7cee: $df
    and d                                         ; $7cef: $a2
    ld e, a                                       ; $7cf0: $5f
    add sp, -$49                                  ; $7cf1: $e8 $b7
    db $db                                        ; $7cf3: $db
    db $eb                                        ; $7cf4: $eb
    dec e                                         ; $7cf5: $1d
    and $39                                       ; $7cf6: $e6 $39
    ld a, l                                       ; $7cf8: $7d
    add e                                         ; $7cf9: $83
    or $0e                                        ; $7cfa: $f6 $0e
    ld a, b                                       ; $7cfc: $78
    ld hl, sp+$02                                 ; $7cfd: $f8 $02
    add b                                         ; $7cff: $80
    ld [$0200], sp                                ; $7d00: $08 $00 $02
    inc bc                                        ; $7d03: $03
    sub h                                         ; $7d04: $94
    rlca                                          ; $7d05: $07
    inc b                                         ; $7d06: $04
    ld b, d                                       ; $7d07: $42
    ld b, e                                       ; $7d08: $43
    cp [hl]                                       ; $7d09: $be
    db $fd                                        ; $7d0a: $fd
    jp c, $e0e7                                   ; $7d0b: $da $e7 $e0

    rra                                           ; $7d0e: $1f
    ld h, e                                       ; $7d0f: $63
    rst $38                                       ; $7d10: $ff
    call c, $98ec                                 ; $7d11: $dc $ec $98
    ld hl, sp-$14                                 ; $7d14: $f8 $ec
    db $f4                                        ; $7d16: $f4
    halt                                          ; $7d17: $76
    ld a, d                                       ; $7d18: $7a
    ld [bc], a                                    ; $7d19: $02
    inc c                                         ; $7d1a: $0c
    ld [$0200], sp                                ; $7d1b: $08 $00 $02
    jr nc, jr_0eb_7ca8                            ; $7d1e: $30 $88

    inc e                                         ; $7d20: $1c
    inc a                                         ; $7d21: $3c
    ld a, $2a                                     ; $7d22: $3e $2a
    inc sp                                        ; $7d24: $33
    dec a                                         ; $7d25: $3d
    add hl, bc                                    ; $7d26: $09
    ccf                                           ; $7d27: $3f
    ld [bc], a                                    ; $7d28: $02
    ld a, $02                                     ; $7d29: $3e $02
    jr nz, jr_0eb_7d3f                            ; $7d2b: $20 $12

    nop                                           ; $7d2d: $00
    rst $38                                       ; $7d2e: $ff
    dec d                                         ; $7d2f: $15
    ld [$1f00], sp                                ; $7d30: $08 $00 $1f
    ld hl, sp+$03                                 ; $7d33: $f8 $03
    rst $38                                       ; $7d35: $ff
    ei                                            ; $7d36: $fb
    ei                                            ; $7d37: $fb
    inc bc                                        ; $7d38: $03
    ld sp, hl                                     ; $7d39: $f9
    dec bc                                        ; $7d3a: $0b
    rst $30                                       ; $7d3b: $f7
    inc de                                        ; $7d3c: $13
    rst $30                                       ; $7d3d: $f7
    ld a, [de]                                    ; $7d3e: $1a

jr_0eb_7d3f:
    rlca                                          ; $7d3f: $07
    ld a, [bc]                                    ; $7d40: $0a
    rlca                                          ; $7d41: $07
    ld [de], a                                    ; $7d42: $12
    rlca                                          ; $7d43: $07
    inc de                                        ; $7d44: $13
    ld [bc], a                                    ; $7d45: $02
    dec sp                                        ; $7d46: $3b
    add d                                         ; $7d47: $82
    ld b, l                                       ; $7d48: $45
    ld a, a                                       ; $7d49: $7f
    ld [bc], a                                    ; $7d4a: $02
    cp $1a                                        ; $7d4b: $fe $1a
    nop                                           ; $7d4d: $00
    ld [bc], a                                    ; $7d4e: $02
    inc bc                                        ; $7d4f: $03
    adc [hl]                                      ; $7d50: $8e
    ld c, $0d                                     ; $7d51: $0e $0d
    add hl, sp                                    ; $7d53: $39
    scf                                           ; $7d54: $37
    and $df                                       ; $7d55: $e6 $df
    ld a, [hl-]                                   ; $7d57: $3a

jr_0eb_7d58:
    ei                                            ; $7d58: $fb
    jp nz, $0cc3                                  ; $7d59: $c2 $c3 $0c

    rrca                                          ; $7d5c: $0f
    scf                                           ; $7d5d: $37
    ccf                                           ; $7d5e: $3f
    ld [bc], a                                    ; $7d5f: $02
    add hl, de                                    ; $7d60: $19
    ld [bc], a                                    ; $7d61: $02
    dec de                                        ; $7d62: $1b
    ld [bc], a                                    ; $7d63: $02
    add hl, sp                                    ; $7d64: $39
    ld [bc], a                                    ; $7d65: $02
    ld a, [hl+]                                   ; $7d66: $2a
    ld [bc], a                                    ; $7d67: $02
    ld c, b                                       ; $7d68: $48
    ld [bc], a                                    ; $7d69: $02
    db $10                                        ; $7d6a: $10
    inc b                                         ; $7d6b: $04

jr_0eb_7d6c:
    nop                                           ; $7d6c: $00
    ld [bc], a                                    ; $7d6d: $02
    ld d, d                                       ; $7d6e: $52
    adc c                                         ; $7d6f: $89
    db $fd                                        ; $7d70: $fd
    rst $38                                       ; $7d71: $ff
    ld l, a                                       ; $7d72: $6f
    sub a                                         ; $7d73: $97
    inc bc                                        ; $7d74: $03
    db $fc                                        ; $7d75: $fc
    ld e, b                                       ; $7d76: $58
    or a                                          ; $7d77: $b7
    or h                                          ; $7d78: $b4
    ld [bc], a                                    ; $7d79: $02
    ld l, e                                       ; $7d7a: $6b
    sub e                                         ; $7d7b: $93
    push de                                       ; $7d7c: $d5
    push af                                       ; $7d7d: $f5
    db $eb                                        ; $7d7e: $eb
    xor e                                         ; $7d7f: $ab
    or [hl]                                       ; $7d80: $b6
    ld d, l                                       ; $7d81: $55
    ld l, [hl]                                    ; $7d82: $6e
    ld l, d                                       ; $7d83: $6a
    ld d, a                                       ; $7d84: $57
    call nc, $afab                                ; $7d85: $d4 $ab $af
    pop de                                        ; $7d88: $d1
    call c, $baa3                                 ; $7d89: $dc $a3 $ba
    rst $00                                       ; $7d8c: $c7
    ei                                            ; $7d8d: $fb
    adc h                                         ; $7d8e: $8c
    ld [bc], a                                    ; $7d8f: $02
    ld bc, $0382                                  ; $7d90: $01 $82 $03
    ld [bc], a                                    ; $7d93: $02
    ld [bc], a                                    ; $7d94: $02
    ld hl, $d79a                                  ; $7d95: $21 $9a $d7
    or $fd                                        ; $7d98: $f6 $fd
    ei                                            ; $7d9a: $fb
    jr nc, jr_0eb_7d6c                            ; $7d9b: $30 $cf

    ld d, e                                       ; $7d9d: $53
    cp a                                          ; $7d9e: $bf
    call c, $b83c                                 ; $7d9f: $dc $3c $b8
    ld a, b                                       ; $7da2: $78
    add sp, $78                                   ; $7da3: $e8 $78
    ld e, b                                       ; $7da5: $58
    add sp, -$08                                  ; $7da6: $e8 $f8
    add sp, -$58                                  ; $7da8: $e8 $a8
    ld hl, sp-$24                                 ; $7daa: $f8 $dc
    ld [hl], h                                    ; $7dac: $74
    db $e4                                        ; $7dad: $e4
    ld a, h                                       ; $7dae: $7c
    sbc $7a                                       ; $7daf: $de $7a
    ld [bc], a                                    ; $7db1: $02
    ld [hl], b                                    ; $7db2: $70
    adc d                                         ; $7db3: $8a
    ld e, h                                       ; $7db4: $5c
    inc a                                         ; $7db5: $3c
    ld a, $6a                                     ; $7db6: $3e $6a
    inc sp                                        ; $7db8: $33
    ld a, l                                       ; $7db9: $7d
    add hl, bc                                    ; $7dba: $09
    ld a, a                                       ; $7dbb: $7f
    ld a, $7e                                     ; $7dbc: $3e $7e
    ld [bc], a                                    ; $7dbe: $02
    ld h, b                                       ; $7dbf: $60
    ld d, $00                                     ; $7dc0: $16 $00
    sub h                                         ; $7dc2: $94
    ld e, a                                       ; $7dc3: $5f
    ld [hl], b                                    ; $7dc4: $70
    ld a, [hl]                                    ; $7dc5: $7e
    ld b, c                                       ; $7dc6: $41
    ld a, a                                       ; $7dc7: $7f
    ld b, d                                       ; $7dc8: $42
    ei                                            ; $7dc9: $fb
    add h                                         ; $7dca: $84
    xor $99                                       ; $7dcb: $ee $99
    db $fd                                        ; $7dcd: $fd
    add e                                         ; $7dce: $83
    or $8e                                        ; $7dcf: $f6 $8e
    add sp, -$68                                  ; $7dd1: $e8 $98
    ret nc                                        ; $7dd3: $d0

    or b                                          ; $7dd4: $b0
    and b                                         ; $7dd5: $a0
    ldh [rSC], a                                  ; $7dd6: $e0 $02
    ld b, b                                       ; $7dd8: $40
    ld b, $00                                     ; $7dd9: $06 $00
    sub b                                         ; $7ddb: $90
    add hl, sp                                    ; $7ddc: $39
    ld e, a                                       ; $7ddd: $5f
    ld [hl], e                                    ; $7dde: $73
    ld e, [hl]                                    ; $7ddf: $5e
    di                                            ; $7de0: $f3
    sbc [hl]                                      ; $7de1: $9e
    call nc, $913f                                ; $7de2: $d4 $3f $91
    ld a, a                                       ; $7de5: $7f
    ld [hl], c                                    ; $7de6: $71
    rst $38                                       ; $7de7: $ff
    adc d                                         ; $7de8: $8a
    adc [hl]                                      ; $7de9: $8e
    ld a, [bc]                                    ; $7dea: $0a
    ld c, $02                                     ; $7deb: $0e $02
    inc b                                         ; $7ded: $04
    stop                                          ; $7dee: $10 $00
    ld b, $01                                     ; $7df0: $06 $01
    jr jr_0eb_7df4                                ; $7df2: $18 $00

jr_0eb_7df4:
    rst $38                                       ; $7df4: $ff
    dec d                                         ; $7df5: $15
    ld [$1f00], sp                                ; $7df6: $08 $00 $1f
    ld hl, sp+$03                                 ; $7df9: $f8 $03
    ei                                            ; $7dfb: $fb
    ei                                            ; $7dfc: $fb
    ld a, [$f903]                                 ; $7dfd: $fa $03 $f9
    dec bc                                        ; $7e00: $0b
    ld hl, sp+$13                                 ; $7e01: $f8 $13
    rst $30                                       ; $7e03: $f7
    dec de                                        ; $7e04: $1b
    rlca                                          ; $7e05: $07
    ld a, [bc]                                    ; $7e06: $0a
    rlca                                          ; $7e07: $07
    ld [de], a                                    ; $7e08: $12
    rlca                                          ; $7e09: $07
    inc de                                        ; $7e0a: $13
    ld [bc], a                                    ; $7e0b: $02
    inc bc                                        ; $7e0c: $03
    adc b                                         ; $7e0d: $88
    ld b, $05                                     ; $7e0e: $06 $05
    rra                                           ; $7e10: $1f
    dec de                                        ; $7e11: $1b
    inc h                                         ; $7e12: $24
    inc a                                         ; $7e13: $3c
    ld e, b                                       ; $7e14: $58
    ld a, b                                       ; $7e15: $78
    ld [bc], a                                    ; $7e16: $02
    ldh [rNR14], a                                ; $7e17: $e0 $14
    nop                                           ; $7e19: $00
    ld [bc], a                                    ; $7e1a: $02
    rst $38                                       ; $7e1b: $ff
    adc [hl]                                      ; $7e1c: $8e
    ccf                                           ; $7e1d: $3f
    ret nz                                        ; $7e1e: $c0

    ld sp, hl                                     ; $7e1f: $f9
    rst $38                                       ; $7e20: $ff
    ld b, $07                                     ; $7e21: $06 $07
    ld [bc], a                                    ; $7e23: $02
    inc bc                                        ; $7e24: $03
    ld [bc], a                                    ; $7e25: $02
    inc bc                                        ; $7e26: $03
    inc a                                         ; $7e27: $3c
    ccf                                           ; $7e28: $3f
    rla                                           ; $7e29: $17
    rra                                           ; $7e2a: $1f
    ld [bc], a                                    ; $7e2b: $02
    add hl, de                                    ; $7e2c: $19
    ld [bc], a                                    ; $7e2d: $02
    dec sp                                        ; $7e2e: $3b
    ld [bc], a                                    ; $7e2f: $02
    ld [hl-], a                                   ; $7e30: $32
    ld [bc], a                                    ; $7e31: $02
    ld d, h                                       ; $7e32: $54
    ld [bc], a                                    ; $7e33: $02
    sub b                                         ; $7e34: $90
    ld [bc], a                                    ; $7e35: $02
    jr nz, jr_0eb_7e3c                            ; $7e36: $20 $04

    nop                                           ; $7e38: $00
    ld [bc], a                                    ; $7e39: $02
    sub l                                         ; $7e3a: $95
    adc a                                         ; $7e3b: $8f

jr_0eb_7e3c:
    ld a, [$afff]                                 ; $7e3c: $fa $ff $af
    ld d, a                                       ; $7e3f: $57
    inc bc                                        ; $7e40: $03
    db $fc                                        ; $7e41: $fc
    sub h                                         ; $7e42: $94
    ld a, a                                       ; $7e43: $7f
    add sp, $57                                   ; $7e44: $e8 $57
    push de                                       ; $7e46: $d5
    xor d                                         ; $7e47: $aa
    db $eb                                        ; $7e48: $eb
    push af                                       ; $7e49: $f5
    dec d                                         ; $7e4a: $15
    ld [bc], a                                    ; $7e4b: $02
    dec de                                        ; $7e4c: $1b
    adc l                                         ; $7e4d: $8d
    ld d, $37                                     ; $7e4e: $16 $37
    inc l                                         ; $7e50: $2c
    ld c, h                                       ; $7e51: $4c
    ld [hl], a                                    ; $7e52: $77
    sub a                                         ; $7e53: $97
    ld [$d4ab], a                                 ; $7e54: $ea $ab $d4
    sub a                                         ; $7e57: $97
    jp hl                                         ; $7e58: $e9


    xor h                                         ; $7e59: $ac
    db $d3                                        ; $7e5a: $d3
    ld [bc], a                                    ; $7e5b: $02
    ld bc, $1002                                  ; $7e5c: $01 $02 $10
    adc e                                         ; $7e5f: $8b
    rst $28                                       ; $7e60: $ef
    rst $38                                       ; $7e61: $ff

jr_0eb_7e62:
    or $f9                                        ; $7e62: $f6 $f9
    sub b                                         ; $7e64: $90
    ld l, a                                       ; $7e65: $6f
    ld h, c                                       ; $7e66: $61
    sbc a                                         ; $7e67: $9f
    sub $be                                       ; $7e68: $d6 $be
    ld l, b                                       ; $7e6a: $68
    ld [bc], a                                    ; $7e6b: $02
    cp b                                          ; $7e6c: $b8
    ld [bc], a                                    ; $7e6d: $02
    ld a, b                                       ; $7e6e: $78
    adc l                                         ; $7e6f: $8d
    add sp, $78                                   ; $7e70: $e8 $78
    add sp, -$58                                  ; $7e72: $e8 $a8
    ld hl, sp-$28                                 ; $7e74: $f8 $d8
    add sp, -$4c                                  ; $7e76: $e8 $b4
    db $fc                                        ; $7e78: $fc
    ld e, h                                       ; $7e79: $5c
    db $f4                                        ; $7e7a: $f4
    ld [$027e], a                                 ; $7e7b: $ea $7e $02
    ldh a, [$8a]                                  ; $7e7e: $f0 $8a
    call c, $be3c                                 ; $7e80: $dc $3c $be
    ld [$7db3], a                                 ; $7e83: $ea $b3 $7d
    adc c                                         ; $7e86: $89
    rst $38                                       ; $7e87: $ff
    ld a, $fe                                     ; $7e88: $3e $fe
    ld [bc], a                                    ; $7e8a: $02
    ret nz                                        ; $7e8b: $c0

    ld d, $00                                     ; $7e8c: $16 $00
    sbc b                                         ; $7e8e: $98
    ld b, a                                       ; $7e8f: $47
    ld a, d                                       ; $7e90: $7a
    ld e, e                                       ; $7e91: $5b
    ld [hl], h                                    ; $7e92: $74
    cp a                                          ; $7e93: $bf
    ret nz                                        ; $7e94: $c0

    db $fd                                        ; $7e95: $fd
    add d                                         ; $7e96: $82
    rst $30                                       ; $7e97: $f7
    adc h                                         ; $7e98: $8c
    rst $30                                       ; $7e99: $f7
    sbc b                                         ; $7e9a: $98
    sbc $a1                                       ; $7e9b: $de $a1
    ld a, l                                       ; $7e9d: $7d
    ld b, d                                       ; $7e9e: $42
    ld a, c                                       ; $7e9f: $79
    ld b, a                                       ; $7ea0: $47
    halt                                          ; $7ea1: $76
    ld c, [hl]                                    ; $7ea2: $4e
    ld l, b                                       ; $7ea3: $68
    ld e, b                                       ; $7ea4: $58
    sub b                                         ; $7ea5: $90
    ldh a, [rSC]                                  ; $7ea6: $f0 $02
    ld h, b                                       ; $7ea8: $60
    inc b                                         ; $7ea9: $04
    nop                                           ; $7eaa: $00
    sub h                                         ; $7eab: $94
    dec sp                                        ; $7eac: $3b
    ld e, [hl]                                    ; $7ead: $5e
    cp d                                          ; $7eae: $ba
    ld l, a                                       ; $7eaf: $6f
    ld e, c                                       ; $7eb0: $59
    xor $a8                                       ; $7eb1: $ee $a8
    ld e, a                                       ; $7eb3: $5f
    push de                                       ; $7eb4: $d5
    ccf                                           ; $7eb5: $3f
    sbc c                                         ; $7eb6: $99
    ld a, a                                       ; $7eb7: $7f
    ld [hl], d                                    ; $7eb8: $72
    cp [hl]                                       ; $7eb9: $be
    jp nc, $945e                                  ; $7eba: $d2 $5e $94

    sbc h                                         ; $7ebd: $9c
    jr z, @+$3a                                   ; $7ebe: $28 $38

    ld [bc], a                                    ; $7ec0: $02
    db $10                                        ; $7ec1: $10
    ld a, [bc]                                    ; $7ec2: $0a
    nop                                           ; $7ec3: $00
    ld [$1601], sp                                ; $7ec4: $08 $01 $16
    nop                                           ; $7ec7: $00
    rst $38                                       ; $7ec8: $ff
    add hl, bc                                    ; $7ec9: $09
    ld [bc], a                                    ; $7eca: $02
    db $ec                                        ; $7ecb: $ec
    dec bc                                        ; $7ecc: $0b
    ld hl, sp+$03                                 ; $7ecd: $f8 $03
    db $fc                                        ; $7ecf: $fc
    ei                                            ; $7ed0: $fb
    db $fc                                        ; $7ed1: $fc
    cp $02                                        ; $7ed2: $fe $02
    jr z, jr_0eb_7e62                             ; $7ed4: $28 $8c

    ld a, [hl]                                    ; $7ed6: $7e
    ld d, [hl]                                    ; $7ed7: $56
    ld [hl], a                                    ; $7ed8: $77
    ld l, l                                       ; $7ed9: $6d
    xor $9b                                       ; $7eda: $ee $9b
    ld l, a                                       ; $7edc: $6f
    ld a, c                                       ; $7edd: $79
    ld h, a                                       ; $7ede: $67
    ld e, [hl]                                    ; $7edf: $5e
    dec [hl]                                      ; $7ee0: $35
    cpl                                           ; $7ee1: $2f
    ld [bc], a                                    ; $7ee2: $02
    rra                                           ; $7ee3: $1f
    inc d                                         ; $7ee4: $14
    nop                                           ; $7ee5: $00
    ld [bc], a                                    ; $7ee6: $02
    inc b                                         ; $7ee7: $04
    adc b                                         ; $7ee8: $88
    ld b, $02                                     ; $7ee9: $06 $02
    rlca                                          ; $7eeb: $07
    ld bc, $0705                                  ; $7eec: $01 $05 $07
    inc bc                                        ; $7eef: $03
    rlca                                          ; $7ef0: $07
    ld [bc], a                                    ; $7ef1: $02
    inc b                                         ; $7ef2: $04
    stop                                          ; $7ef3: $10 $00
    rst $38                                       ; $7ef5: $ff
    rlca                                          ; $7ef6: $07
    ld bc, $08f7                                  ; $7ef7: $01 $f7 $08
    push af                                       ; $7efa: $f5
    ld b, $ff                                     ; $7efb: $06 $ff
    db $ed                                        ; $7efd: $ed
    add [hl]                                      ; $7efe: $86
    nop                                           ; $7eff: $00
    rlca                                          ; $7f00: $07
    ld b, $08                                     ; $7f01: $06 $08
    nop                                           ; $7f03: $00
    rlca                                          ; $7f04: $07
    ld a, [de]                                    ; $7f05: $1a
    nop                                           ; $7f06: $00
    rst $38                                       ; $7f07: $ff
    add hl, bc                                    ; $7f08: $09
    ld [bc], a                                    ; $7f09: $02
    rst $30                                       ; $7f0a: $f7
    ld [$06f5], sp                                ; $7f0b: $08 $f5 $06
    cp $f1                                        ; $7f0e: $fe $f1
    cp $f4                                        ; $7f10: $fe $f4
    adc b                                         ; $7f12: $88
    ld a, b                                       ; $7f13: $78
    ld l, b                                       ; $7f14: $68
    or a                                          ; $7f15: $b7
    rst $08                                       ; $7f16: $cf
    xor a                                         ; $7f17: $af
    ret c                                         ; $7f18: $d8

    ld l, d                                       ; $7f19: $6a
    ld a, e                                       ; $7f1a: $7b
    inc e                                         ; $7f1b: $1c
    nop                                           ; $7f1c: $00
    add d                                         ; $7f1d: $82
    inc bc                                        ; $7f1e: $03
    rlca                                          ; $7f1f: $07
    ld [bc], a                                    ; $7f20: $02
    inc b                                         ; $7f21: $04
    jr jr_0eb_7f24                                ; $7f22: $18 $00

jr_0eb_7f24:
    rst $38                                       ; $7f24: $ff
    dec bc                                        ; $7f25: $0b
    inc bc                                        ; $7f26: $03
    rst $30                                       ; $7f27: $f7
    ld [$06f5], sp                                ; $7f28: $08 $f5 $06
    db $fc                                        ; $7f2b: $fc
    pop af                                        ; $7f2c: $f1
    db $fc                                        ; $7f2d: $fc

jr_0eb_7f2e:
    ld sp, hl                                     ; $7f2e: $f9
    db $fc                                        ; $7f2f: $fc
    ld a, [$3902]                                 ; $7f30: $fa $02 $39
    adc d                                         ; $7f33: $8a
    ld h, [hl]                                    ; $7f34: $66
    ld a, a                                       ; $7f35: $7f
    or e                                          ; $7f36: $b3

jr_0eb_7f37:
    adc $bc                                       ; $7f37: $ce $bc
    rst $00                                       ; $7f39: $c7
    push de                                       ; $7f3a: $d5
    xor $42                                       ; $7f3b: $ee $42
    ld a, a                                       ; $7f3d: $7f
    ld [bc], a                                    ; $7f3e: $02
    dec l                                         ; $7f3f: $2d
    ld [de], a                                    ; $7f40: $12
    nop                                           ; $7f41: $00
    ld [bc], a                                    ; $7f42: $02
    ld b, b                                       ; $7f43: $40
    adc d                                         ; $7f44: $8a
    jr nc, jr_0eb_7f37                            ; $7f45: $30 $f0

    xor $1e                                       ; $7f47: $ee $1e
    ld sp, hl                                     ; $7f49: $f9
    rlca                                          ; $7f4a: $07
    sub e                                         ; $7f4b: $93
    ld l, a                                       ; $7f4c: $6f
    ld e, h                                       ; $7f4d: $5c
    db $fc                                        ; $7f4e: $fc
    ld [bc], a                                    ; $7f4f: $02
    ret nz                                        ; $7f50: $c0

    ld a, [de]                                    ; $7f51: $1a
    nop                                           ; $7f52: $00
    ld [bc], a                                    ; $7f53: $02
    ld bc, $0016                                  ; $7f54: $01 $16 $00
    rst $38                                       ; $7f57: $ff
    dec c                                         ; $7f58: $0d
    inc b                                         ; $7f59: $04
    rst $30                                       ; $7f5a: $f7
    ld [$06f5], sp                                ; $7f5b: $08 $f5 $06
    db $fc                                        ; $7f5e: $fc
    pop af                                        ; $7f5f: $f1
    db $fc                                        ; $7f60: $fc
    ld sp, hl                                     ; $7f61: $f9
    db $fc                                        ; $7f62: $fc
    ld bc, $02fc                                  ; $7f63: $01 $fc $02
    ld [bc], a                                    ; $7f66: $02
    add hl, sp                                    ; $7f67: $39
    adc d                                         ; $7f68: $8a
    ld h, [hl]                                    ; $7f69: $66
    ld a, a                                       ; $7f6a: $7f
    sbc d                                         ; $7f6b: $9a
    rst $20                                       ; $7f6c: $e7
    cp l                                          ; $7f6d: $bd
    add $d5                                       ; $7f6e: $c6 $d5
    xor $42                                       ; $7f70: $ee $42
    ld a, a                                       ; $7f72: $7f
    ld [bc], a                                    ; $7f73: $02
    dec l                                         ; $7f74: $2d
    ld [de], a                                    ; $7f75: $12
    nop                                           ; $7f76: $00
    ld [bc], a                                    ; $7f77: $02
    ld c, d                                       ; $7f78: $4a
    adc d                                         ; $7f79: $8a
    ld sp, $d6ff                                  ; $7f7a: $31 $ff $d6
    add hl, sp                                    ; $7f7d: $39
    rst $28                                       ; $7f7e: $ef
    jr nc, jr_0eb_7f2e                            ; $7f7f: $30 $ad

    ld [hl], d                                    ; $7f81: $72
    ld d, d                                       ; $7f82: $52
    rst $38                                       ; $7f83: $ff
    ld [bc], a                                    ; $7f84: $02
    ld c, [hl]                                    ; $7f85: $4e
    inc d                                         ; $7f86: $14
    nop                                           ; $7f87: $00
    ld [bc], a                                    ; $7f88: $02
    and b                                         ; $7f89: $a0
    add [hl]                                      ; $7f8a: $86
    ld e, a                                       ; $7f8b: $5f
    cp a                                          ; $7f8c: $bf
    db $ec                                        ; $7f8d: $ec
    inc d                                         ; $7f8e: $14
    inc bc                                        ; $7f8f: $03
    rst $38                                       ; $7f90: $ff
    ld [bc], a                                    ; $7f91: $02
    xor h                                         ; $7f92: $ac
    inc e                                         ; $7f93: $1c
    nop                                           ; $7f94: $00
    ld [bc], a                                    ; $7f95: $02
    ld bc, $0016                                  ; $7f96: $01 $16 $00
    rst $38                                       ; $7f99: $ff
    dec c                                         ; $7f9a: $0d
    inc b                                         ; $7f9b: $04
    rst $30                                       ; $7f9c: $f7
    ld [$06f5], sp                                ; $7f9d: $08 $f5 $06
    db $fc                                        ; $7fa0: $fc
    pop af                                        ; $7fa1: $f1
    db $fc                                        ; $7fa2: $fc
    ld sp, hl                                     ; $7fa3: $f9
    db $fc                                        ; $7fa4: $fc
    ld bc, $05fc                                  ; $7fa5: $01 $fc $05
    ld [bc], a                                    ; $7fa8: $02
    inc [hl]                                      ; $7fa9: $34
    adc d                                         ; $7faa: $8a
    ld d, e                                       ; $7fab: $53
    ld a, a                                       ; $7fac: $7f
    sbc $e3                                       ; $7fad: $de $e3
    cp l                                          ; $7faf: $bd
    jp nz, Jump_0eb_675a                          ; $7fb0: $c2 $5a $67

    ld d, l                                       ; $7fb3: $55

jr_0eb_7fb4:
    ld l, e                                       ; $7fb4: $6b
    ld [bc], a                                    ; $7fb5: $02
    ld a, [hl-]                                   ; $7fb6: $3a
    ld [de], a                                    ; $7fb7: $12
    nop                                           ; $7fb8: $00
    ld [bc], a                                    ; $7fb9: $02
    and [hl]                                      ; $7fba: $a6
    adc d                                         ; $7fbb: $8a
    ld e, c                                       ; $7fbc: $59
    cp [hl]                                       ; $7fbd: $be
    rst $30                                       ; $7fbe: $f7
    jr jr_0eb_7fb4                                ; $7fbf: $18 $f3

    inc e                                         ; $7fc1: $1c
    xor a                                         ; $7fc2: $af
    ld e, b                                       ; $7fc3: $58
    ld [$02ff], sp                                ; $7fc4: $08 $ff $02
    ld [hl], a                                    ; $7fc7: $77
    ld [de], a                                    ; $7fc8: $12
    nop                                           ; $7fc9: $00
    ld [bc], a                                    ; $7fca: $02
    ret nz                                        ; $7fcb: $c0

    adc b                                         ; $7fcc: $88
    ld [hl], h                                    ; $7fcd: $74
    db $f4                                        ; $7fce: $f4
    sub e                                         ; $7fcf: $93
    ld l, a                                       ; $7fd0: $6f
    ld c, l                                       ; $7fd1: $4d
    or d                                          ; $7fd2: $b2
    inc l                                         ; $7fd3: $2c
    rst $18                                       ; $7fd4: $df
    ld [bc], a                                    ; $7fd5: $02
    or e                                          ; $7fd6: $b3
    jr jr_0eb_7fd9                                ; $7fd7: $18 $00

jr_0eb_7fd9:
    ld [bc], a                                    ; $7fd9: $02
    ld c, $02                                     ; $7fda: $0e $02
    ld [$0782], sp                                ; $7fdc: $08 $82 $07
    rrca                                          ; $7fdf: $0f
    ld [bc], a                                    ; $7fe0: $02
    ld [$0014], sp                                ; $7fe1: $08 $14 $00
    rst $38                                       ; $7fe4: $ff

    db $07, $01, $f7

    ld [$06f5], sp                                ; $7fe8: $08 $f5 $06

    db $fc, $fb, $02, $0c, $88, $16, $1e, $35, $3f, $1b, $1f, $1a, $1e, $02, $04, $14
    db $00, $ff

    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
