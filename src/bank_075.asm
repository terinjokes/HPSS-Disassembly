; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $075", ROMX[$4000], BANK[$75]

    db $75

    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, jr_075_4043                             ; $4008: $38 $39

    jr nc, jr_075_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    add b                                         ; $4010: $80
    nop                                           ; $4011: $00
    inc bc                                        ; $4012: $03
    nop                                           ; $4013: $00
    ld h, c                                       ; $4014: $61
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    rlca                                          ; $4018: $07
    nop                                           ; $4019: $00
    rst $38                                       ; $401a: $ff
    nop                                           ; $401b: $00
    nop                                           ; $401c: $00
    nop                                           ; $401d: $00
    ldh a, [rP1]                                  ; $401e: $f0 $00
    ld h, c                                       ; $4020: $61
    nop                                           ; $4021: $00
    call z, $e600                                 ; $4022: $cc $00 $e6
    nop                                           ; $4025: $00
    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    sbc [hl]                                      ; $4028: $9e
    nop                                           ; $4029: $00
    jr nc, jr_075_402c                            ; $402a: $30 $00

jr_075_402c:
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    ccf                                           ; $402e: $3f
    nop                                           ; $402f: $00
    rst $38                                       ; $4030: $ff
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    rst $38                                       ; $4034: $ff
    nop                                           ; $4035: $00
    ccf                                           ; $4036: $3f
    nop                                           ; $4037: $00
    rst $38                                       ; $4038: $ff
    nop                                           ; $4039: $00
    inc a                                         ; $403a: $3c
    nop                                           ; $403b: $00
    rst $38                                       ; $403c: $ff

jr_075_403d:
    nop                                           ; $403d: $00
    jp $8100                                      ; $403e: $c3 $00 $81


    nop                                           ; $4041: $00
    db $fc                                        ; $4042: $fc

jr_075_4043:
    nop                                           ; $4043: $00
    rst $38                                       ; $4044: $ff
    nop                                           ; $4045: $00

jr_075_4046:
    jr nc, jr_075_4048                            ; $4046: $30 $00

jr_075_4048:
    ld sp, hl                                     ; $4048: $f9
    nop                                           ; $4049: $00
    jp $f900                                      ; $404a: $c3 $00 $f9


    nop                                           ; $404d: $00
    rst $08                                       ; $404e: $cf
    nop                                           ; $404f: $00
    cp $01                                        ; $4050: $fe $01
    inc a                                         ; $4052: $3c
    jp Jump_000_00ff                              ; $4053: $c3 $ff $00


    db $fc                                        ; $4056: $fc
    inc bc                                        ; $4057: $03
    sbc a                                         ; $4058: $9f
    ld h, b                                       ; $4059: $60
    rrca                                          ; $405a: $0f
    ldh a, [$86]                                  ; $405b: $f0 $86
    ld a, c                                       ; $405d: $79
    ccf                                           ; $405e: $3f
    ret nz                                        ; $405f: $c0

    ld a, c                                       ; $4060: $79
    add [hl]                                      ; $4061: $86
    rst $08                                       ; $4062: $cf
    jr nc, jr_075_4046                            ; $4063: $30 $e1

    ld e, $ff                                     ; $4065: $1e $ff
    nop                                           ; $4067: $00
    add a                                         ; $4068: $87
    ld a, b                                       ; $4069: $78
    rst $38                                       ; $406a: $ff
    nop                                           ; $406b: $00
    add hl, de                                    ; $406c: $19
    and $f3                                       ; $406d: $e6 $f3
    inc c                                         ; $406f: $0c
    ld hl, sp+$07                                 ; $4070: $f8 $07
    inc sp                                        ; $4072: $33
    call z, $ff00                                 ; $4073: $cc $00 $ff
    ccf                                           ; $4076: $3f
    ret nz                                        ; $4077: $c0

    nop                                           ; $4078: $00
    rst $38                                       ; $4079: $ff
    di                                            ; $407a: $f3
    inc c                                         ; $407b: $0c
    add hl, de                                    ; $407c: $19
    and $c0                                       ; $407d: $e6 $c0
    ccf                                           ; $407f: $3f
    ld bc, $3cfe                                  ; $4080: $01 $fe $3c
    jp $e11e                                      ; $4083: $c3 $1e $e1


    ret nz                                        ; $4086: $c0

    ccf                                           ; $4087: $3f
    nop                                           ; $4088: $00
    rst $38                                       ; $4089: $ff
    nop                                           ; $408a: $00
    rst $38                                       ; $408b: $ff
    sbc b                                         ; $408c: $98
    ld h, a                                       ; $408d: $67
    nop                                           ; $408e: $00
    rst $38                                       ; $408f: $ff
    jr @+$01                                      ; $4090: $18 $ff

    jp Jump_000_00ff                              ; $4092: $c3 $ff $00


    rst $38                                       ; $4095: $ff
    inc a                                         ; $4096: $3c
    rst $38                                       ; $4097: $ff
    nop                                           ; $4098: $00
    rst $38                                       ; $4099: $ff
    nop                                           ; $409a: $00
    rst $38                                       ; $409b: $ff
    ld hl, sp-$01                                 ; $409c: $f8 $ff
    nop                                           ; $409e: $00
    rst $38                                       ; $409f: $ff
    nop                                           ; $40a0: $00
    rst $38                                       ; $40a1: $ff
    call z, Call_000_00ff                         ; $40a2: $cc $ff $00
    rst $38                                       ; $40a5: $ff
    ldh a, [rIE]                                  ; $40a6: $f0 $ff
    ld e, $ff                                     ; $40a8: $1e $ff
    ret nz                                        ; $40aa: $c0

    rst $38                                       ; $40ab: $ff
    ld bc, $f0ff                                  ; $40ac: $01 $ff $f0
    rst $38                                       ; $40af: $ff
    rst $38                                       ; $40b0: $ff
    rst $38                                       ; $40b1: $ff
    ret nz                                        ; $40b2: $c0

    rst $38                                       ; $40b3: $ff
    ld h, a                                       ; $40b4: $67
    rst $38                                       ; $40b5: $ff
    call z, $ffff                                 ; $40b6: $cc $ff $ff
    rst $38                                       ; $40b9: $ff
    call z, $e6ff                                 ; $40ba: $cc $ff $e6
    rst $38                                       ; $40bd: $ff
    inc a                                         ; $40be: $3c
    rst $38                                       ; $40bf: $ff
    add c                                         ; $40c0: $81
    rst $38                                       ; $40c1: $ff
    ccf                                           ; $40c2: $3f
    rst $38                                       ; $40c3: $ff
    and $ff                                       ; $40c4: $e6 $ff
    ccf                                           ; $40c6: $3f
    rst $38                                       ; $40c7: $ff
    sbc a                                         ; $40c8: $9f
    rst $38                                       ; $40c9: $ff
    db $fc                                        ; $40ca: $fc
    rst $38                                       ; $40cb: $ff
    ld a, a                                       ; $40cc: $7f
    rst $38                                       ; $40cd: $ff
    rst $38                                       ; $40ce: $ff
    rst $38                                       ; $40cf: $ff
    add c                                         ; $40d0: $81
    nop                                           ; $40d1: $00
    jr nc, jr_075_40d4                            ; $40d2: $30 $00

jr_075_40d4:
    sbc [hl]                                      ; $40d4: $9e
    nop                                           ; $40d5: $00
    nop                                           ; $40d6: $00
    nop                                           ; $40d7: $00
    ld a, b                                       ; $40d8: $78
    nop                                           ; $40d9: $00
    nop                                           ; $40da: $00
    nop                                           ; $40db: $00
    and $00                                       ; $40dc: $e6 $00
    inc c                                         ; $40de: $0c
    nop                                           ; $40df: $00
    add c                                         ; $40e0: $81
    nop                                           ; $40e1: $00
    inc sp                                        ; $40e2: $33
    nop                                           ; $40e3: $00
    ld bc, $0300                                  ; $40e4: $01 $00 $03
    nop                                           ; $40e7: $00
    ld h, b                                       ; $40e8: $60
    nop                                           ; $40e9: $00
    ldh a, [rP1]                                  ; $40ea: $f0 $00
    ld a, c                                       ; $40ec: $79
    nop                                           ; $40ed: $00
    ret nz                                        ; $40ee: $c0

    nop                                           ; $40ef: $00
    add c                                         ; $40f0: $81
    nop                                           ; $40f1: $00
    di                                            ; $40f2: $f3
    nop                                           ; $40f3: $00
    ld a, a                                       ; $40f4: $7f
    nop                                           ; $40f5: $00
    ldh a, [rP1]                                  ; $40f6: $f0 $00
    rst $38                                       ; $40f8: $ff
    nop                                           ; $40f9: $00
    jp Jump_075_7e00                              ; $40fa: $c3 $00 $7e


    nop                                           ; $40fd: $00
    rst $08                                       ; $40fe: $cf
    nop                                           ; $40ff: $00
    rst $38                                       ; $4100: $ff
    nop                                           ; $4101: $00
    jr nc, jr_075_4104                            ; $4102: $30 $00

jr_075_4104:
    ld hl, sp+$00                                 ; $4104: $f8 $00
    rrca                                          ; $4106: $0f
    nop                                           ; $4107: $00
    rst $38                                       ; $4108: $ff
    nop                                           ; $4109: $00
    rst $38                                       ; $410a: $ff
    nop                                           ; $410b: $00
    ld e, $00                                     ; $410c: $1e $00
    rst $38                                       ; $410e: $ff

jr_075_410f:
    nop                                           ; $410f: $00
    ld sp, hl                                     ; $4110: $f9
    ld b, $33                                     ; $4111: $06 $33
    call z, $619e                                 ; $4113: $cc $9e $61
    ldh a, [rIF]                                  ; $4116: $f0 $0f
    ld a, a                                       ; $4118: $7f
    add b                                         ; $4119: $80
    rst $38                                       ; $411a: $ff
    nop                                           ; $411b: $00
    add c                                         ; $411c: $81
    ld a, [hl]                                    ; $411d: $7e
    rst $38                                       ; $411e: $ff
    nop                                           ; $411f: $00
    rst $38                                       ; $4120: $ff
    nop                                           ; $4121: $00
    rst $08                                       ; $4122: $cf
    jr nc, jr_075_41a4                            ; $4123: $30 $7f

    add b                                         ; $4125: $80
    jp $f83c                                      ; $4126: $c3 $3c $f8


    rlca                                          ; $4129: $07
    rst $08                                       ; $412a: $cf
    jr nc, @+$01                                  ; $412b: $30 $ff

    nop                                           ; $412d: $00
    jp $803c                                      ; $412e: $c3 $3c $80


    ld a, a                                       ; $4131: $7f
    rrca                                          ; $4132: $0f
    ldh a, [$66]                                  ; $4133: $f0 $66
    sbc c                                         ; $4135: $99
    inc c                                         ; $4136: $0c
    di                                            ; $4137: $f3
    ld b, $f9                                     ; $4138: $06 $f9
    ldh a, [rIF]                                  ; $413a: $f0 $0f
    ld b, $f9                                     ; $413c: $06 $f9
    jr nc, jr_075_410f                            ; $413e: $30 $cf

    rra                                           ; $4140: $1f
    ldh [$f0], a                                  ; $4141: $e0 $f0
    rrca                                          ; $4143: $0f
    ld b, $f9                                     ; $4144: $06 $f9
    ldh a, [rIF]                                  ; $4146: $f0 $0f
    nop                                           ; $4148: $00
    rst $38                                       ; $4149: $ff
    nop                                           ; $414a: $00
    rst $38                                       ; $414b: $ff
    nop                                           ; $414c: $00
    rst $38                                       ; $414d: $ff
    nop                                           ; $414e: $00
    rst $38                                       ; $414f: $ff
    ld b, $ff                                     ; $4150: $06 $ff
    jr nc, @+$01                                  ; $4152: $30 $ff

    rlca                                          ; $4154: $07
    rst $38                                       ; $4155: $ff
    nop                                           ; $4156: $00
    rst $38                                       ; $4157: $ff
    ld a, b                                       ; $4158: $78
    rst $38                                       ; $4159: $ff
    nop                                           ; $415a: $00
    rst $38                                       ; $415b: $ff
    ld a, a                                       ; $415c: $7f
    rst $38                                       ; $415d: $ff
    nop                                           ; $415e: $00
    rst $38                                       ; $415f: $ff
    jr @+$01                                      ; $4160: $18 $ff

    ret nz                                        ; $4162: $c0

    rst $38                                       ; $4163: $ff
    ld hl, sp-$01                                 ; $4164: $f8 $ff
    nop                                           ; $4166: $00
    rst $38                                       ; $4167: $ff
    ld h, [hl]                                    ; $4168: $66
    rst $38                                       ; $4169: $ff
    call z, $f8ff                                 ; $416a: $cc $ff $f8
    rst $38                                       ; $416d: $ff
    nop                                           ; $416e: $00
    rst $38                                       ; $416f: $ff
    ret nz                                        ; $4170: $c0

    rst $38                                       ; $4171: $ff
    sbc [hl]                                      ; $4172: $9e
    rst $38                                       ; $4173: $ff
    ldh a, [rIE]                                  ; $4174: $f0 $ff
    rst $38                                       ; $4176: $ff
    rst $38                                       ; $4177: $ff
    nop                                           ; $4178: $00
    rst $38                                       ; $4179: $ff
    ld a, a                                       ; $417a: $7f
    rst $38                                       ; $417b: $ff
    ret nz                                        ; $417c: $c0

    rst $38                                       ; $417d: $ff
    sbc c                                         ; $417e: $99
    rst $38                                       ; $417f: $ff
    inc a                                         ; $4180: $3c
    rst $38                                       ; $4181: $ff
    ld a, a                                       ; $4182: $7f
    rst $38                                       ; $4183: $ff
    inc sp                                        ; $4184: $33
    rst $38                                       ; $4185: $ff
    add a                                         ; $4186: $87
    rst $38                                       ; $4187: $ff
    rst $38                                       ; $4188: $ff
    rst $38                                       ; $4189: $ff
    cp $ff                                        ; $418a: $fe $ff
    rst $08                                       ; $418c: $cf
    rst $38                                       ; $418d: $ff
    rst $38                                       ; $418e: $ff
    rst $38                                       ; $418f: $ff
    add [hl]                                      ; $4190: $86
    nop                                           ; $4191: $00
    jr nc, jr_075_4194                            ; $4192: $30 $00

jr_075_4194:
    ld bc, $f000                                  ; $4194: $01 $00 $f0
    nop                                           ; $4197: $00
    ld e, $00                                     ; $4198: $1e $00
    ret nz                                        ; $419a: $c0

    nop                                           ; $419b: $00
    ld bc, $f000                                  ; $419c: $01 $00 $f0
    nop                                           ; $419f: $00
    ld bc, $0300                                  ; $41a0: $01 $00 $03
    nop                                           ; $41a3: $00

jr_075_41a4:
    add b                                         ; $41a4: $80
    nop                                           ; $41a5: $00
    inc a                                         ; $41a6: $3c
    nop                                           ; $41a7: $00
    nop                                           ; $41a8: $00
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    nop                                           ; $41ab: $00
    ld hl, sp+$00                                 ; $41ac: $f8 $00
    nop                                           ; $41ae: $00
    nop                                           ; $41af: $00
    add c                                         ; $41b0: $81
    nop                                           ; $41b1: $00
    ccf                                           ; $41b2: $3f
    nop                                           ; $41b3: $00
    and $00                                       ; $41b4: $e6 $00
    ccf                                           ; $41b6: $3f
    nop                                           ; $41b7: $00
    add a                                         ; $41b8: $87
    nop                                           ; $41b9: $00
    rst $38                                       ; $41ba: $ff
    nop                                           ; $41bb: $00
    rst $38                                       ; $41bc: $ff
    nop                                           ; $41bd: $00
    rst $38                                       ; $41be: $ff
    nop                                           ; $41bf: $00
    rst $38                                       ; $41c0: $ff
    nop                                           ; $41c1: $00
    ret nz                                        ; $41c2: $c0

    nop                                           ; $41c3: $00
    ld h, a                                       ; $41c4: $67
    nop                                           ; $41c5: $00
    call z, $ff00                                 ; $41c6: $cc $00 $ff
    nop                                           ; $41c9: $00
    ccf                                           ; $41ca: $3f
    nop                                           ; $41cb: $00
    rst $38                                       ; $41cc: $ff
    nop                                           ; $41cd: $00
    rst $38                                       ; $41ce: $ff
    nop                                           ; $41cf: $00
    nop                                           ; $41d0: $00
    nop                                           ; $41d1: $00
    rlca                                          ; $41d2: $07
    nop                                           ; $41d3: $00
    add e                                         ; $41d4: $83
    nop                                           ; $41d5: $00
    nop                                           ; $41d6: $00
    nop                                           ; $41d7: $00
    rrca                                          ; $41d8: $0f
    nop                                           ; $41d9: $00
    cp $00                                        ; $41da: $fe $00
    nop                                           ; $41dc: $00
    nop                                           ; $41dd: $00
    ldh [rP1], a                                  ; $41de: $e0 $00
    jp $9800                                      ; $41e0: $c3 $00 $98


    nop                                           ; $41e3: $00
    call z, RST_00                                ; $41e4: $cc $00 $00
    nop                                           ; $41e7: $00
    inc a                                         ; $41e8: $3c
    nop                                           ; $41e9: $00
    ld h, c                                       ; $41ea: $61
    nop                                           ; $41eb: $00
    nop                                           ; $41ec: $00
    nop                                           ; $41ed: $00
    ld a, a                                       ; $41ee: $7f
    nop                                           ; $41ef: $00
    rst $38                                       ; $41f0: $ff
    nop                                           ; $41f1: $00
    ld bc, $ff00                                  ; $41f2: $01 $00 $ff
    nop                                           ; $41f5: $00
    cp $00                                        ; $41f6: $fe $00
    rst $38                                       ; $41f8: $ff
    nop                                           ; $41f9: $00
    ld sp, hl                                     ; $41fa: $f9
    nop                                           ; $41fb: $00
    rst $38                                       ; $41fc: $ff
    nop                                           ; $41fd: $00
    rlca                                          ; $41fe: $07
    nop                                           ; $41ff: $00
    inc bc                                        ; $4200: $03
    nop                                           ; $4201: $00
    ld hl, sp+$00                                 ; $4202: $f8 $00
    rst $38                                       ; $4204: $ff
    nop                                           ; $4205: $00
    ld h, b                                       ; $4206: $60
    nop                                           ; $4207: $00
    di                                            ; $4208: $f3
    nop                                           ; $4209: $00
    add [hl]                                      ; $420a: $86
    nop                                           ; $420b: $00
    di                                            ; $420c: $f3
    nop                                           ; $420d: $00
    sbc a                                         ; $420e: $9f
    nop                                           ; $420f: $00
    db $fc                                        ; $4210: $fc
    inc bc                                        ; $4211: $03
    ld sp, hl                                     ; $4212: $f9
    ld b, $ff                                     ; $4213: $06 $ff
    nop                                           ; $4215: $00
    ld sp, hl                                     ; $4216: $f9
    ld b, $7f                                     ; $4217: $06 $7f
    add b                                         ; $4219: $80
    rra                                           ; $421a: $1f
    ldh [$0c], a                                  ; $421b: $e0 $0c
    di                                            ; $421d: $f3
    rst $38                                       ; $421e: $ff
    nop                                           ; $421f: $00
    di                                            ; $4220: $f3
    inc c                                         ; $4221: $0c
    sbc [hl]                                      ; $4222: $9e
    ld h, c                                       ; $4223: $61
    jp $ff3c                                      ; $4224: $c3 $3c $ff


    nop                                           ; $4227: $00
    rrca                                          ; $4228: $0f
    ldh a, [$fe]                                  ; $4229: $f0 $fe
    ld bc, $cc33                                  ; $422b: $01 $33 $cc
    and $19                                       ; $422e: $e6 $19
    ldh a, [rIF]                                  ; $4230: $f0 $0f
    ld h, [hl]                                    ; $4232: $66
    sbc c                                         ; $4233: $99
    nop                                           ; $4234: $00
    rst $38                                       ; $4235: $ff
    ld a, a                                       ; $4236: $7f
    add b                                         ; $4237: $80
    nop                                           ; $4238: $00
    rst $38                                       ; $4239: $ff
    and $19                                       ; $423a: $e6 $19
    inc sp                                        ; $423c: $33
    call z, $7f80                                 ; $423d: $cc $80 $7f
    inc bc                                        ; $4240: $03
    db $fc                                        ; $4241: $fc
    ld a, b                                       ; $4242: $78
    add a                                         ; $4243: $87
    inc a                                         ; $4244: $3c
    jp $7f80                                      ; $4245: $c3 $80 $7f


    nop                                           ; $4248: $00
    rst $38                                       ; $4249: $ff
    ld bc, $30fe                                  ; $424a: $01 $fe $30
    rst $08                                       ; $424d: $cf
    ld bc, $30fe                                  ; $424e: $01 $fe $30
    rst $38                                       ; $4251: $ff
    add a                                         ; $4252: $87
    rst $38                                       ; $4253: $ff
    nop                                           ; $4254: $00
    rst $38                                       ; $4255: $ff
    ld a, c                                       ; $4256: $79
    rst $38                                       ; $4257: $ff
    nop                                           ; $4258: $00
    rst $38                                       ; $4259: $ff
    ld bc, $f0ff                                  ; $425a: $01 $ff $f0
    rst $38                                       ; $425d: $ff
    ld bc, $00ff                                  ; $425e: $01 $ff $00
    rst $38                                       ; $4261: $ff
    sbc c                                         ; $4262: $99
    rst $38                                       ; $4263: $ff
    nop                                           ; $4264: $00
    rst $38                                       ; $4265: $ff
    ldh [rIE], a                                  ; $4266: $e0 $ff
    inc a                                         ; $4268: $3c
    rst $38                                       ; $4269: $ff
    add b                                         ; $426a: $80
    rst $38                                       ; $426b: $ff
    inc bc                                        ; $426c: $03
    rst $38                                       ; $426d: $ff
    ldh [rIE], a                                  ; $426e: $e0 $ff
    rst $38                                       ; $4270: $ff
    rst $38                                       ; $4271: $ff
    add b                                         ; $4272: $80
    rst $38                                       ; $4273: $ff
    rst $08                                       ; $4274: $cf
    rst $38                                       ; $4275: $ff
    sbc b                                         ; $4276: $98
    rst $38                                       ; $4277: $ff
    rst $38                                       ; $4278: $ff
    rst $38                                       ; $4279: $ff
    sbc c                                         ; $427a: $99
    rst $38                                       ; $427b: $ff
    call z, Call_075_79ff                         ; $427c: $cc $ff $79
    rst $38                                       ; $427f: $ff
    inc bc                                        ; $4280: $03
    rst $38                                       ; $4281: $ff
    ld a, a                                       ; $4282: $7f
    rst $38                                       ; $4283: $ff
    call z, Call_075_7fff                         ; $4284: $cc $ff $7f
    rst $38                                       ; $4287: $ff
    ccf                                           ; $4288: $3f
    rst $38                                       ; $4289: $ff
    ld sp, hl                                     ; $428a: $f9
    rst $38                                       ; $428b: $ff
    rst $38                                       ; $428c: $ff
    rst $38                                       ; $428d: $ff
    cp $ff                                        ; $428e: $fe $ff
    inc bc                                        ; $4290: $03
    nop                                           ; $4291: $00
    ld h, b                                       ; $4292: $60
    nop                                           ; $4293: $00
    inc a                                         ; $4294: $3c
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    ldh a, [rP1]                                  ; $4298: $f0 $00
    ld bc, $cc00                                  ; $429a: $01 $00 $cc
    nop                                           ; $429d: $00
    add hl, de                                    ; $429e: $19
    nop                                           ; $429f: $00
    inc bc                                        ; $42a0: $03
    nop                                           ; $42a1: $00
    ld h, [hl]                                    ; $42a2: $66
    nop                                           ; $42a3: $00
    inc bc                                        ; $42a4: $03
    nop                                           ; $42a5: $00
    ld b, $00                                     ; $42a6: $06 $00
    ret nz                                        ; $42a8: $c0

    nop                                           ; $42a9: $00
    ldh [rP1], a                                  ; $42aa: $e0 $00
    di                                            ; $42ac: $f3
    nop                                           ; $42ad: $00
    add b                                         ; $42ae: $80
    nop                                           ; $42af: $00
    add c                                         ; $42b0: $81
    nop                                           ; $42b1: $00
    di                                            ; $42b2: $f3
    nop                                           ; $42b3: $00
    ld a, a                                       ; $42b4: $7f
    nop                                           ; $42b5: $00
    ldh a, [rP1]                                  ; $42b6: $f0 $00
    rst $38                                       ; $42b8: $ff
    nop                                           ; $42b9: $00
    jp Jump_075_7e00                              ; $42ba: $c3 $00 $7e


    nop                                           ; $42bd: $00
    rst $08                                       ; $42be: $cf
    nop                                           ; $42bf: $00
    rst $38                                       ; $42c0: $ff
    nop                                           ; $42c1: $00
    jr nc, jr_075_42c4                            ; $42c2: $30 $00

jr_075_42c4:
    ld hl, sp+$00                                 ; $42c4: $f8 $00
    rrca                                          ; $42c6: $0f
    nop                                           ; $42c7: $00
    rst $38                                       ; $42c8: $ff
    nop                                           ; $42c9: $00
    rst $38                                       ; $42ca: $ff
    nop                                           ; $42cb: $00
    ld e, $00                                     ; $42cc: $1e $00
    rst $38                                       ; $42ce: $ff

jr_075_42cf:
    nop                                           ; $42cf: $00
    ld sp, hl                                     ; $42d0: $f9
    ld b, $33                                     ; $42d1: $06 $33
    call z, $619e                                 ; $42d3: $cc $9e $61
    ldh a, [rIF]                                  ; $42d6: $f0 $0f
    ld a, a                                       ; $42d8: $7f
    add b                                         ; $42d9: $80
    rst $38                                       ; $42da: $ff
    nop                                           ; $42db: $00
    add c                                         ; $42dc: $81
    ld a, [hl]                                    ; $42dd: $7e
    rst $38                                       ; $42de: $ff
    nop                                           ; $42df: $00
    rst $38                                       ; $42e0: $ff
    nop                                           ; $42e1: $00
    rst $08                                       ; $42e2: $cf
    jr nc, jr_075_4364                            ; $42e3: $30 $7f

    add b                                         ; $42e5: $80
    jp $f83c                                      ; $42e6: $c3 $3c $f8


    rlca                                          ; $42e9: $07
    rst $08                                       ; $42ea: $cf
    jr nc, @+$01                                  ; $42eb: $30 $ff

    nop                                           ; $42ed: $00
    jp $803c                                      ; $42ee: $c3 $3c $80


    ld a, a                                       ; $42f1: $7f
    rrca                                          ; $42f2: $0f
    ldh a, [$66]                                  ; $42f3: $f0 $66
    sbc c                                         ; $42f5: $99
    inc c                                         ; $42f6: $0c
    di                                            ; $42f7: $f3
    ld b, $f9                                     ; $42f8: $06 $f9
    ldh a, [rIF]                                  ; $42fa: $f0 $0f
    ld b, $f9                                     ; $42fc: $06 $f9
    jr nc, jr_075_42cf                            ; $42fe: $30 $cf

    rra                                           ; $4300: $1f
    ldh [$f0], a                                  ; $4301: $e0 $f0
    rrca                                          ; $4303: $0f
    ld b, $f9                                     ; $4304: $06 $f9
    ldh a, [rIF]                                  ; $4306: $f0 $0f
    nop                                           ; $4308: $00
    rst $38                                       ; $4309: $ff
    nop                                           ; $430a: $00
    rst $38                                       ; $430b: $ff
    nop                                           ; $430c: $00
    rst $38                                       ; $430d: $ff
    nop                                           ; $430e: $00
    rst $38                                       ; $430f: $ff
    ld b, $ff                                     ; $4310: $06 $ff
    jr nc, @+$01                                  ; $4312: $30 $ff

    rlca                                          ; $4314: $07
    rst $38                                       ; $4315: $ff
    nop                                           ; $4316: $00
    rst $38                                       ; $4317: $ff
    ld a, b                                       ; $4318: $78
    rst $38                                       ; $4319: $ff
    nop                                           ; $431a: $00
    rst $38                                       ; $431b: $ff
    ld a, a                                       ; $431c: $7f
    rst $38                                       ; $431d: $ff
    nop                                           ; $431e: $00
    rst $38                                       ; $431f: $ff
    jr @+$01                                      ; $4320: $18 $ff

    ret nz                                        ; $4322: $c0

    rst $38                                       ; $4323: $ff
    ld hl, sp-$01                                 ; $4324: $f8 $ff
    nop                                           ; $4326: $00
    rst $38                                       ; $4327: $ff
    ld h, [hl]                                    ; $4328: $66
    rst $38                                       ; $4329: $ff
    call z, $f8ff                                 ; $432a: $cc $ff $f8
    rst $38                                       ; $432d: $ff
    nop                                           ; $432e: $00
    rst $38                                       ; $432f: $ff
    add b                                         ; $4330: $80
    rst $38                                       ; $4331: $ff
    inc a                                         ; $4332: $3c
    rst $38                                       ; $4333: $ff
    ldh [rIE], a                                  ; $4334: $e0 $ff
    rst $38                                       ; $4336: $ff
    rst $38                                       ; $4337: $ff
    ld bc, $ffff                                  ; $4338: $01 $ff $ff
    rst $38                                       ; $433b: $ff
    add c                                         ; $433c: $81
    rst $38                                       ; $433d: $ff
    inc sp                                        ; $433e: $33
    rst $38                                       ; $433f: $ff
    ld a, c                                       ; $4340: $79
    rst $38                                       ; $4341: $ff
    rst $38                                       ; $4342: $ff
    rst $38                                       ; $4343: $ff
    ld h, a                                       ; $4344: $67
    rst $38                                       ; $4345: $ff
    rrca                                          ; $4346: $0f
    rst $38                                       ; $4347: $ff
    cp $ff                                        ; $4348: $fe $ff
    db $fc                                        ; $434a: $fc
    rst $38                                       ; $434b: $ff
    sbc a                                         ; $434c: $9f
    rst $38                                       ; $434d: $ff
    rst $38                                       ; $434e: $ff
    rst $38                                       ; $434f: $ff
    inc c                                         ; $4350: $0c
    nop                                           ; $4351: $00
    ld h, b                                       ; $4352: $60
    nop                                           ; $4353: $00
    inc bc                                        ; $4354: $03
    nop                                           ; $4355: $00
    ldh [rP1], a                                  ; $4356: $e0 $00
    inc a                                         ; $4358: $3c
    nop                                           ; $4359: $00
    add b                                         ; $435a: $80
    nop                                           ; $435b: $00
    inc bc                                        ; $435c: $03
    nop                                           ; $435d: $00
    ldh [rP1], a                                  ; $435e: $e0 $00
    inc bc                                        ; $4360: $03
    nop                                           ; $4361: $00
    ld b, $00                                     ; $4362: $06 $00

jr_075_4364:
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    ld a, c                                       ; $4366: $79
    nop                                           ; $4367: $00
    nop                                           ; $4368: $00
    nop                                           ; $4369: $00
    ld bc, $f000                                  ; $436a: $01 $00 $f0
    nop                                           ; $436d: $00
    ld bc, $0300                                  ; $436e: $01 $00 $03
    nop                                           ; $4371: $00
    ld a, a                                       ; $4372: $7f
    nop                                           ; $4373: $00
    call z, Call_075_7f00                         ; $4374: $cc $00 $7f
    nop                                           ; $4377: $00
    rrca                                          ; $4378: $0f
    nop                                           ; $4379: $00
    cp $00                                        ; $437a: $fe $00
    rst $38                                       ; $437c: $ff
    nop                                           ; $437d: $00
    rst $38                                       ; $437e: $ff
    nop                                           ; $437f: $00
    rst $38                                       ; $4380: $ff
    nop                                           ; $4381: $00
    add b                                         ; $4382: $80
    nop                                           ; $4383: $00
    rst $08                                       ; $4384: $cf
    nop                                           ; $4385: $00
    sbc b                                         ; $4386: $98
    nop                                           ; $4387: $00
    rst $38                                       ; $4388: $ff
    nop                                           ; $4389: $00
    ld a, a                                       ; $438a: $7f
    nop                                           ; $438b: $00
    rst $38                                       ; $438c: $ff
    nop                                           ; $438d: $00
    rst $38                                       ; $438e: $ff
    nop                                           ; $438f: $00
    ld bc, $0f00                                  ; $4390: $01 $00 $0f
    nop                                           ; $4393: $00
    rlca                                          ; $4394: $07
    nop                                           ; $4395: $00
    nop                                           ; $4396: $00
    nop                                           ; $4397: $00
    ld e, $00                                     ; $4398: $1e $00
    db $fc                                        ; $439a: $fc
    nop                                           ; $439b: $00
    nop                                           ; $439c: $00
    nop                                           ; $439d: $00
    ret nz                                        ; $439e: $c0

    nop                                           ; $439f: $00
    add [hl]                                      ; $43a0: $86
    nop                                           ; $43a1: $00
    jr nc, jr_075_43a4                            ; $43a2: $30 $00

jr_075_43a4:
    sbc c                                         ; $43a4: $99
    nop                                           ; $43a5: $00
    nop                                           ; $43a6: $00
    nop                                           ; $43a7: $00
    ld a, b                                       ; $43a8: $78
    nop                                           ; $43a9: $00
    jp RST_00                                     ; $43aa: $c3 $00 $00


    nop                                           ; $43ad: $00
    rst $38                                       ; $43ae: $ff
    nop                                           ; $43af: $00
    cp $00                                        ; $43b0: $fe $00
    inc bc                                        ; $43b2: $03
    nop                                           ; $43b3: $00
    rst $38                                       ; $43b4: $ff
    nop                                           ; $43b5: $00
    db $fc                                        ; $43b6: $fc
    nop                                           ; $43b7: $00
    rst $38                                       ; $43b8: $ff
    nop                                           ; $43b9: $00
    di                                            ; $43ba: $f3
    nop                                           ; $43bb: $00
    rst $38                                       ; $43bc: $ff
    nop                                           ; $43bd: $00
    rrca                                          ; $43be: $0f
    nop                                           ; $43bf: $00
    rlca                                          ; $43c0: $07
    nop                                           ; $43c1: $00
    ldh a, [rP1]                                  ; $43c2: $f0 $00
    rst $38                                       ; $43c4: $ff

jr_075_43c5:
    nop                                           ; $43c5: $00
    ret nz                                        ; $43c6: $c0

    nop                                           ; $43c7: $00
    rst $20                                       ; $43c8: $e7
    nop                                           ; $43c9: $00
    inc c                                         ; $43ca: $0c
    nop                                           ; $43cb: $00
    rst $20                                       ; $43cc: $e7
    nop                                           ; $43cd: $00
    ccf                                           ; $43ce: $3f
    nop                                           ; $43cf: $00
    ld sp, hl                                     ; $43d0: $f9
    ld b, $f3                                     ; $43d1: $06 $f3
    inc c                                         ; $43d3: $0c
    rst $38                                       ; $43d4: $ff
    nop                                           ; $43d5: $00
    di                                            ; $43d6: $f3
    inc c                                         ; $43d7: $0c
    cp $01                                        ; $43d8: $fe $01
    ccf                                           ; $43da: $3f
    ret nz                                        ; $43db: $c0

    jr jr_075_43c5                                ; $43dc: $18 $e7

    rst $38                                       ; $43de: $ff
    nop                                           ; $43df: $00
    rst $20                                       ; $43e0: $e7
    jr jr_075_441f                                ; $43e1: $18 $3c

    jp Jump_075_7887                              ; $43e3: $c3 $87 $78


    rst $38                                       ; $43e6: $ff
    nop                                           ; $43e7: $00
    ld e, $e1                                     ; $43e8: $1e $e1
    db $fc                                        ; $43ea: $fc
    inc bc                                        ; $43eb: $03
    ld h, [hl]                                    ; $43ec: $66
    sbc c                                         ; $43ed: $99
    call z, $e033                                 ; $43ee: $cc $33 $e0
    rra                                           ; $43f1: $1f
    call z, $0033                                 ; $43f2: $cc $33 $00
    rst $38                                       ; $43f5: $ff
    rst $38                                       ; $43f6: $ff
    nop                                           ; $43f7: $00
    nop                                           ; $43f8: $00
    rst $38                                       ; $43f9: $ff
    call z, Call_075_6633                         ; $43fa: $cc $33 $66
    sbc c                                         ; $43fd: $99
    nop                                           ; $43fe: $00
    rst $38                                       ; $43ff: $ff
    rlca                                          ; $4400: $07
    ld hl, sp-$10                                 ; $4401: $f8 $f0
    rrca                                          ; $4403: $0f
    ld a, b                                       ; $4404: $78
    add a                                         ; $4405: $87
    nop                                           ; $4406: $00
    rst $38                                       ; $4407: $ff
    nop                                           ; $4408: $00
    rst $38                                       ; $4409: $ff
    inc bc                                        ; $440a: $03
    db $fc                                        ; $440b: $fc
    ld h, b                                       ; $440c: $60
    sbc a                                         ; $440d: $9f
    inc bc                                        ; $440e: $03
    db $fc                                        ; $440f: $fc
    ld h, b                                       ; $4410: $60
    rst $38                                       ; $4411: $ff
    rrca                                          ; $4412: $0f
    rst $38                                       ; $4413: $ff
    nop                                           ; $4414: $00
    rst $38                                       ; $4415: $ff
    di                                            ; $4416: $f3
    rst $38                                       ; $4417: $ff
    nop                                           ; $4418: $00
    rst $38                                       ; $4419: $ff
    inc bc                                        ; $441a: $03
    rst $38                                       ; $441b: $ff
    ldh [rIE], a                                  ; $441c: $e0 $ff
    inc bc                                        ; $441e: $03

jr_075_441f:
    rst $38                                       ; $441f: $ff
    nop                                           ; $4420: $00
    rst $38                                       ; $4421: $ff
    inc sp                                        ; $4422: $33
    rst $38                                       ; $4423: $ff
    nop                                           ; $4424: $00
    rst $38                                       ; $4425: $ff
    ret nz                                        ; $4426: $c0

    rst $38                                       ; $4427: $ff
    ld a, b                                       ; $4428: $78
    rst $38                                       ; $4429: $ff
    nop                                           ; $442a: $00
    rst $38                                       ; $442b: $ff
    rlca                                          ; $442c: $07
    rst $38                                       ; $442d: $ff
    ret nz                                        ; $442e: $c0

    rst $38                                       ; $442f: $ff
    cp $ff                                        ; $4430: $fe $ff
    nop                                           ; $4432: $00
    rst $38                                       ; $4433: $ff
    sbc a                                         ; $4434: $9f
    rst $38                                       ; $4435: $ff
    jr nc, @+$01                                  ; $4436: $30 $ff

    cp $ff                                        ; $4438: $fe $ff
    inc sp                                        ; $443a: $33
    rst $38                                       ; $443b: $ff
    sbc c                                         ; $443c: $99
    rst $38                                       ; $443d: $ff
    di                                            ; $443e: $f3
    rst $38                                       ; $443f: $ff
    rlca                                          ; $4440: $07
    rst $38                                       ; $4441: $ff
    rst $38                                       ; $4442: $ff
    rst $38                                       ; $4443: $ff
    sbc c                                         ; $4444: $99
    rst $38                                       ; $4445: $ff
    rst $38                                       ; $4446: $ff
    rst $38                                       ; $4447: $ff
    ld a, a                                       ; $4448: $7f
    rst $38                                       ; $4449: $ff
    di                                            ; $444a: $f3
    rst $38                                       ; $444b: $ff
    rst $38                                       ; $444c: $ff
    rst $38                                       ; $444d: $ff
    db $fc                                        ; $444e: $fc
    rst $38                                       ; $444f: $ff
    ld b, $00                                     ; $4450: $06 $00
    ret nz                                        ; $4452: $c0

    nop                                           ; $4453: $00
    ld a, b                                       ; $4454: $78
    nop                                           ; $4455: $00
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    pop hl                                        ; $4458: $e1
    nop                                           ; $4459: $00
    inc bc                                        ; $445a: $03
    nop                                           ; $445b: $00
    sbc c                                         ; $445c: $99
    nop                                           ; $445d: $00
    inc sp                                        ; $445e: $33
    nop                                           ; $445f: $00
    ld b, $00                                     ; $4460: $06 $00
    call z, $0600                                 ; $4462: $cc $00 $06
    nop                                           ; $4465: $00
    inc c                                         ; $4466: $0c
    nop                                           ; $4467: $00
    add c                                         ; $4468: $81
    nop                                           ; $4469: $00
    ret nz                                        ; $446a: $c0

    nop                                           ; $446b: $00
    rst $20                                       ; $446c: $e7
    nop                                           ; $446d: $00
    nop                                           ; $446e: $00
    nop                                           ; $446f: $00
    inc bc                                        ; $4470: $03
    nop                                           ; $4471: $00
    and $00                                       ; $4472: $e6 $00
    rst $38                                       ; $4474: $ff
    nop                                           ; $4475: $00
    ldh [rP1], a                                  ; $4476: $e0 $00
    rst $38                                       ; $4478: $ff
    nop                                           ; $4479: $00
    add a                                         ; $447a: $87
    nop                                           ; $447b: $00
    db $fc                                        ; $447c: $fc
    nop                                           ; $447d: $00
    sbc a                                         ; $447e: $9f
    nop                                           ; $447f: $00
    rst $38                                       ; $4480: $ff
    nop                                           ; $4481: $00
    ld h, c                                       ; $4482: $61
    nop                                           ; $4483: $00
    ldh a, [rP1]                                  ; $4484: $f0 $00
    rra                                           ; $4486: $1f
    nop                                           ; $4487: $00
    rst $38                                       ; $4488: $ff
    nop                                           ; $4489: $00
    rst $38                                       ; $448a: $ff
    nop                                           ; $448b: $00
    inc a                                         ; $448c: $3c
    nop                                           ; $448d: $00
    rst $38                                       ; $448e: $ff
    nop                                           ; $448f: $00
    di                                            ; $4490: $f3
    inc c                                         ; $4491: $0c
    ld h, a                                       ; $4492: $67
    sbc b                                         ; $4493: $98
    inc a                                         ; $4494: $3c
    jp $1ee1                                      ; $4495: $c3 $e1 $1e


    rst $38                                       ; $4498: $ff
    nop                                           ; $4499: $00
    rst $38                                       ; $449a: $ff
    nop                                           ; $449b: $00
    inc bc                                        ; $449c: $03
    db $fc                                        ; $449d: $fc
    rst $38                                       ; $449e: $ff
    nop                                           ; $449f: $00
    rst $38                                       ; $44a0: $ff
    nop                                           ; $44a1: $00
    sbc [hl]                                      ; $44a2: $9e
    ld h, c                                       ; $44a3: $61
    rst $38                                       ; $44a4: $ff
    nop                                           ; $44a5: $00
    add a                                         ; $44a6: $87
    ld a, b                                       ; $44a7: $78
    ldh a, [rIF]                                  ; $44a8: $f0 $0f
    sbc a                                         ; $44aa: $9f
    ld h, b                                       ; $44ab: $60
    rst $38                                       ; $44ac: $ff
    nop                                           ; $44ad: $00
    add a                                         ; $44ae: $87
    ld a, b                                       ; $44af: $78
    nop                                           ; $44b0: $00
    rst $38                                       ; $44b1: $ff
    rra                                           ; $44b2: $1f
    ldh [$cc], a                                  ; $44b3: $e0 $cc
    inc sp                                        ; $44b5: $33
    add hl, de                                    ; $44b6: $19
    and $0c                                       ; $44b7: $e6 $0c
    di                                            ; $44b9: $f3
    ldh [$1f], a                                  ; $44ba: $e0 $1f
    inc c                                         ; $44bc: $0c
    di                                            ; $44bd: $f3
    ld h, b                                       ; $44be: $60
    sbc a                                         ; $44bf: $9f
    ccf                                           ; $44c0: $3f
    ret nz                                        ; $44c1: $c0

    ldh [$1f], a                                  ; $44c2: $e0 $1f
    inc c                                         ; $44c4: $0c
    di                                            ; $44c5: $f3
    ldh [$1f], a                                  ; $44c6: $e0 $1f
    nop                                           ; $44c8: $00
    rst $38                                       ; $44c9: $ff
    ld bc, $00fe                                  ; $44ca: $01 $fe $00
    rst $38                                       ; $44cd: $ff
    nop                                           ; $44ce: $00
    rst $38                                       ; $44cf: $ff
    inc c                                         ; $44d0: $0c
    rst $38                                       ; $44d1: $ff
    ld h, c                                       ; $44d2: $61
    rst $38                                       ; $44d3: $ff
    rrca                                          ; $44d4: $0f
    rst $38                                       ; $44d5: $ff
    nop                                           ; $44d6: $00
    rst $38                                       ; $44d7: $ff
    ldh a, [rIE]                                  ; $44d8: $f0 $ff
    ld bc, $ffff                                  ; $44da: $01 $ff $ff
    rst $38                                       ; $44dd: $ff
    nop                                           ; $44de: $00
    rst $38                                       ; $44df: $ff
    jr nc, @+$01                                  ; $44e0: $30 $ff

    add b                                         ; $44e2: $80
    rst $38                                       ; $44e3: $ff
    ldh a, [rIE]                                  ; $44e4: $f0 $ff
    nop                                           ; $44e6: $00
    rst $38                                       ; $44e7: $ff
    call z, $98ff                                 ; $44e8: $cc $ff $98
    rst $38                                       ; $44eb: $ff
    ldh a, [rIE]                                  ; $44ec: $f0 $ff
    nop                                           ; $44ee: $00
    rst $38                                       ; $44ef: $ff
    nop                                           ; $44f0: $00
    rst $38                                       ; $44f1: $ff
    ld a, c                                       ; $44f2: $79
    rst $38                                       ; $44f3: $ff
    ret nz                                        ; $44f4: $c0

    rst $38                                       ; $44f5: $ff
    cp $ff                                        ; $44f6: $fe $ff
    inc bc                                        ; $44f8: $03
    rst $38                                       ; $44f9: $ff
    rst $38                                       ; $44fa: $ff
    rst $38                                       ; $44fb: $ff
    inc bc                                        ; $44fc: $03
    rst $38                                       ; $44fd: $ff
    ld h, a                                       ; $44fe: $67
    rst $38                                       ; $44ff: $ff
    di                                            ; $4500: $f3
    rst $38                                       ; $4501: $ff
    cp $ff                                        ; $4502: $fe $ff
    rst $08                                       ; $4504: $cf
    rst $38                                       ; $4505: $ff
    rra                                           ; $4506: $1f
    rst $38                                       ; $4507: $ff
    db $fc                                        ; $4508: $fc
    rst $38                                       ; $4509: $ff
    ld sp, hl                                     ; $450a: $f9
    rst $38                                       ; $450b: $ff
    ccf                                           ; $450c: $3f
    rst $38                                       ; $450d: $ff
    cp $ff                                        ; $450e: $fe $ff
    jr jr_075_4512                                ; $4510: $18 $00

jr_075_4512:
    ret nz                                        ; $4512: $c0

    nop                                           ; $4513: $00
    ld b, $00                                     ; $4514: $06 $00
    ret nz                                        ; $4516: $c0

    nop                                           ; $4517: $00
    ld a, b                                       ; $4518: $78
    nop                                           ; $4519: $00
    nop                                           ; $451a: $00
    nop                                           ; $451b: $00
    rlca                                          ; $451c: $07
    nop                                           ; $451d: $00
    ret nz                                        ; $451e: $c0

    nop                                           ; $451f: $00
    ld b, $00                                     ; $4520: $06 $00
    inc c                                         ; $4522: $0c
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00
    di                                            ; $4526: $f3
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    inc bc                                        ; $452a: $03
    nop                                           ; $452b: $00
    ldh [rP1], a                                  ; $452c: $e0 $00
    inc bc                                        ; $452e: $03
    nop                                           ; $452f: $00
    rlca                                          ; $4530: $07
    nop                                           ; $4531: $00
    rst $38                                       ; $4532: $ff
    nop                                           ; $4533: $00
    sbc c                                         ; $4534: $99
    nop                                           ; $4535: $00
    rst $38                                       ; $4536: $ff
    nop                                           ; $4537: $00
    rra                                           ; $4538: $1f
    nop                                           ; $4539: $00
    db $fc                                        ; $453a: $fc
    nop                                           ; $453b: $00
    rst $38                                       ; $453c: $ff
    nop                                           ; $453d: $00
    rst $38                                       ; $453e: $ff
    nop                                           ; $453f: $00
    cp $00                                        ; $4540: $fe $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    sbc a                                         ; $4544: $9f
    nop                                           ; $4545: $00
    jr nc, jr_075_4548                            ; $4546: $30 $00

jr_075_4548:
    cp $00                                        ; $4548: $fe $00
    rst $38                                       ; $454a: $ff
    nop                                           ; $454b: $00
    rst $38                                       ; $454c: $ff
    nop                                           ; $454d: $00
    rst $38                                       ; $454e: $ff
    nop                                           ; $454f: $00
    ld b, $00                                     ; $4550: $06 $00
    inc a                                         ; $4552: $3c
    nop                                           ; $4553: $00
    ld e, $00                                     ; $4554: $1e $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    ld a, c                                       ; $4558: $79
    nop                                           ; $4559: $00
    di                                            ; $455a: $f3
    nop                                           ; $455b: $00
    nop                                           ; $455c: $00
    nop                                           ; $455d: $00
    inc bc                                        ; $455e: $03

jr_075_455f:
    nop                                           ; $455f: $00
    jr jr_075_4562                                ; $4560: $18 $00

jr_075_4562:
    ret nz                                        ; $4562: $c0

    nop                                           ; $4563: $00
    ld h, [hl]                                    ; $4564: $66
    nop                                           ; $4565: $00
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    ldh [rP1], a                                  ; $4568: $e0 $00
    rrca                                          ; $456a: $0f
    nop                                           ; $456b: $00
    nop                                           ; $456c: $00
    nop                                           ; $456d: $00
    rst $38                                       ; $456e: $ff
    nop                                           ; $456f: $00
    ld hl, sp+$00                                 ; $4570: $f8 $00
    rrca                                          ; $4572: $0f
    nop                                           ; $4573: $00
    rst $38                                       ; $4574: $ff
    nop                                           ; $4575: $00
    di                                            ; $4576: $f3
    nop                                           ; $4577: $00
    rst $38                                       ; $4578: $ff
    nop                                           ; $4579: $00
    call z, $ff00                                 ; $457a: $cc $00 $ff
    nop                                           ; $457d: $00
    inc a                                         ; $457e: $3c
    nop                                           ; $457f: $00
    rra                                           ; $4580: $1f
    nop                                           ; $4581: $00
    ret nz                                        ; $4582: $c0

    nop                                           ; $4583: $00
    rst $38                                       ; $4584: $ff
    nop                                           ; $4585: $00
    inc bc                                        ; $4586: $03
    nop                                           ; $4587: $00
    sbc a                                         ; $4588: $9f
    nop                                           ; $4589: $00
    inc sp                                        ; $458a: $33
    nop                                           ; $458b: $00
    sbc a                                         ; $458c: $9f
    nop                                           ; $458d: $00
    db $fc                                        ; $458e: $fc
    nop                                           ; $458f: $00
    rst $20                                       ; $4590: $e7

jr_075_4591:
    jr jr_075_455f                                ; $4591: $18 $cc

    inc sp                                        ; $4593: $33
    cp $01                                        ; $4594: $fe $01
    rst $08                                       ; $4596: $cf
    jr nc, jr_075_4591                            ; $4597: $30 $f8

    rlca                                          ; $4599: $07
    rst $38                                       ; $459a: $ff
    nop                                           ; $459b: $00
    ld h, c                                       ; $459c: $61
    sbc [hl]                                      ; $459d: $9e
    rst $38                                       ; $459e: $ff
    nop                                           ; $459f: $00
    sbc a                                         ; $45a0: $9f
    ld h, b                                       ; $45a1: $60
    di                                            ; $45a2: $f3
    inc c                                         ; $45a3: $0c
    rra                                           ; $45a4: $1f
    ldh [rIE], a                                  ; $45a5: $e0 $ff
    nop                                           ; $45a7: $00
    ld a, c                                       ; $45a8: $79
    add [hl]                                      ; $45a9: $86
    ldh a, [rIF]                                  ; $45aa: $f0 $0f
    sbc b                                         ; $45ac: $98
    ld h, a                                       ; $45ad: $67
    inc sp                                        ; $45ae: $33
    call z, $3fc0                                 ; $45af: $cc $c0 $3f
    sbc c                                         ; $45b2: $99
    ld h, [hl]                                    ; $45b3: $66
    nop                                           ; $45b4: $00
    rst $38                                       ; $45b5: $ff
    cp $01                                        ; $45b6: $fe $01
    nop                                           ; $45b8: $00
    rst $38                                       ; $45b9: $ff
    sbc b                                         ; $45ba: $98
    ld h, a                                       ; $45bb: $67
    call z, $0033                                 ; $45bc: $cc $33 $00
    rst $38                                       ; $45bf: $ff
    rrca                                          ; $45c0: $0f
    ldh a, [$e1]                                  ; $45c1: $f0 $e1
    ld e, $f0                                     ; $45c3: $1e $f0
    rrca                                          ; $45c5: $0f
    ld bc, $00fe                                  ; $45c6: $01 $fe $00
    rst $38                                       ; $45c9: $ff
    rlca                                          ; $45ca: $07
    ld hl, sp-$40                                 ; $45cb: $f8 $c0
    ccf                                           ; $45cd: $3f
    ld b, $f9                                     ; $45ce: $06 $f9
    ret nz                                        ; $45d0: $c0

    rst $38                                       ; $45d1: $ff
    ld e, $ff                                     ; $45d2: $1e $ff
    nop                                           ; $45d4: $00
    rst $38                                       ; $45d5: $ff
    rst $20                                       ; $45d6: $e7
    rst $38                                       ; $45d7: $ff
    nop                                           ; $45d8: $00
    rst $38                                       ; $45d9: $ff
    ld b, $ff                                     ; $45da: $06 $ff
    ret nz                                        ; $45dc: $c0

    rst $38                                       ; $45dd: $ff
    rlca                                          ; $45de: $07
    rst $38                                       ; $45df: $ff
    nop                                           ; $45e0: $00
    rst $38                                       ; $45e1: $ff
    ld h, [hl]                                    ; $45e2: $66
    rst $38                                       ; $45e3: $ff
    nop                                           ; $45e4: $00
    rst $38                                       ; $45e5: $ff
    add c                                         ; $45e6: $81
    rst $38                                       ; $45e7: $ff
    ldh a, [rIE]                                  ; $45e8: $f0 $ff
    nop                                           ; $45ea: $00
    rst $38                                       ; $45eb: $ff
    rrca                                          ; $45ec: $0f
    rst $38                                       ; $45ed: $ff
    add b                                         ; $45ee: $80
    rst $38                                       ; $45ef: $ff
    db $fc                                        ; $45f0: $fc
    rst $38                                       ; $45f1: $ff
    ld bc, $3fff                                  ; $45f2: $01 $ff $3f
    rst $38                                       ; $45f5: $ff
    ld h, c                                       ; $45f6: $61
    rst $38                                       ; $45f7: $ff
    db $fc                                        ; $45f8: $fc
    rst $38                                       ; $45f9: $ff
    ld h, a                                       ; $45fa: $67
    rst $38                                       ; $45fb: $ff
    inc sp                                        ; $45fc: $33
    rst $38                                       ; $45fd: $ff
    rst $20                                       ; $45fe: $e7
    rst $38                                       ; $45ff: $ff
    rrca                                          ; $4600: $0f
    rst $38                                       ; $4601: $ff
    cp $ff                                        ; $4602: $fe $ff
    inc sp                                        ; $4604: $33
    rst $38                                       ; $4605: $ff
    cp $ff                                        ; $4606: $fe $ff
    rst $38                                       ; $4608: $ff
    rst $38                                       ; $4609: $ff
    and $ff                                       ; $460a: $e6 $ff
    rst $38                                       ; $460c: $ff
    rst $38                                       ; $460d: $ff
    ld sp, hl                                     ; $460e: $f9
    rst $38                                       ; $460f: $ff
    inc c                                         ; $4610: $0c
    nop                                           ; $4611: $00
    add c                                         ; $4612: $81
    nop                                           ; $4613: $00
    ldh a, [rP1]                                  ; $4614: $f0 $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    jp $0700                                      ; $4618: $c3 $00 $07


    nop                                           ; $461b: $00
    inc sp                                        ; $461c: $33
    nop                                           ; $461d: $00
    ld h, [hl]                                    ; $461e: $66
    nop                                           ; $461f: $00
    inc c                                         ; $4620: $0c
    nop                                           ; $4621: $00
    sbc c                                         ; $4622: $99
    nop                                           ; $4623: $00
    inc c                                         ; $4624: $0c
    nop                                           ; $4625: $00
    jr jr_075_4628                                ; $4626: $18 $00

jr_075_4628:
    inc bc                                        ; $4628: $03
    nop                                           ; $4629: $00
    add b                                         ; $462a: $80
    nop                                           ; $462b: $00
    rst $08                                       ; $462c: $cf
    nop                                           ; $462d: $00
    nop                                           ; $462e: $00
    nop                                           ; $462f: $00
    inc bc                                        ; $4630: $03
    nop                                           ; $4631: $00
    and $00                                       ; $4632: $e6 $00
    rst $38                                       ; $4634: $ff
    nop                                           ; $4635: $00
    ldh [rP1], a                                  ; $4636: $e0 $00
    rst $38                                       ; $4638: $ff
    nop                                           ; $4639: $00
    add a                                         ; $463a: $87
    nop                                           ; $463b: $00
    db $fc                                        ; $463c: $fc
    nop                                           ; $463d: $00
    sbc a                                         ; $463e: $9f
    nop                                           ; $463f: $00
    rst $38                                       ; $4640: $ff
    nop                                           ; $4641: $00
    ld h, c                                       ; $4642: $61
    nop                                           ; $4643: $00
    ldh a, [rP1]                                  ; $4644: $f0 $00
    rra                                           ; $4646: $1f
    nop                                           ; $4647: $00
    rst $38                                       ; $4648: $ff
    nop                                           ; $4649: $00
    rst $38                                       ; $464a: $ff
    nop                                           ; $464b: $00
    inc a                                         ; $464c: $3c
    nop                                           ; $464d: $00
    rst $38                                       ; $464e: $ff
    nop                                           ; $464f: $00
    di                                            ; $4650: $f3
    inc c                                         ; $4651: $0c
    ld h, a                                       ; $4652: $67
    sbc b                                         ; $4653: $98
    inc a                                         ; $4654: $3c
    jp $1ee1                                      ; $4655: $c3 $e1 $1e


    rst $38                                       ; $4658: $ff
    nop                                           ; $4659: $00
    rst $38                                       ; $465a: $ff
    nop                                           ; $465b: $00
    inc bc                                        ; $465c: $03
    db $fc                                        ; $465d: $fc
    rst $38                                       ; $465e: $ff
    nop                                           ; $465f: $00
    rst $38                                       ; $4660: $ff
    nop                                           ; $4661: $00
    sbc [hl]                                      ; $4662: $9e
    ld h, c                                       ; $4663: $61
    rst $38                                       ; $4664: $ff
    nop                                           ; $4665: $00
    add a                                         ; $4666: $87
    ld a, b                                       ; $4667: $78
    ldh a, [rIF]                                  ; $4668: $f0 $0f
    sbc a                                         ; $466a: $9f
    ld h, b                                       ; $466b: $60
    rst $38                                       ; $466c: $ff
    nop                                           ; $466d: $00
    add a                                         ; $466e: $87
    ld a, b                                       ; $466f: $78
    nop                                           ; $4670: $00
    rst $38                                       ; $4671: $ff
    rra                                           ; $4672: $1f
    ldh [$cc], a                                  ; $4673: $e0 $cc
    inc sp                                        ; $4675: $33
    add hl, de                                    ; $4676: $19
    and $0c                                       ; $4677: $e6 $0c
    di                                            ; $4679: $f3
    ldh [$1f], a                                  ; $467a: $e0 $1f
    inc c                                         ; $467c: $0c
    di                                            ; $467d: $f3
    ld h, b                                       ; $467e: $60
    sbc a                                         ; $467f: $9f
    ccf                                           ; $4680: $3f
    ret nz                                        ; $4681: $c0

    ldh [$1f], a                                  ; $4682: $e0 $1f
    inc c                                         ; $4684: $0c
    di                                            ; $4685: $f3
    ldh [$1f], a                                  ; $4686: $e0 $1f
    nop                                           ; $4688: $00
    rst $38                                       ; $4689: $ff
    ld bc, $00fe                                  ; $468a: $01 $fe $00
    rst $38                                       ; $468d: $ff
    nop                                           ; $468e: $00
    rst $38                                       ; $468f: $ff
    inc c                                         ; $4690: $0c
    rst $38                                       ; $4691: $ff
    ld h, c                                       ; $4692: $61
    rst $38                                       ; $4693: $ff
    rrca                                          ; $4694: $0f
    rst $38                                       ; $4695: $ff
    nop                                           ; $4696: $00
    rst $38                                       ; $4697: $ff
    ldh a, [rIE]                                  ; $4698: $f0 $ff
    ld bc, $ffff                                  ; $469a: $01 $ff $ff
    rst $38                                       ; $469d: $ff
    nop                                           ; $469e: $00
    rst $38                                       ; $469f: $ff
    jr nc, @+$01                                  ; $46a0: $30 $ff

    add b                                         ; $46a2: $80
    rst $38                                       ; $46a3: $ff
    ldh a, [rIE]                                  ; $46a4: $f0 $ff
    nop                                           ; $46a6: $00
    rst $38                                       ; $46a7: $ff
    call z, $98ff                                 ; $46a8: $cc $ff $98
    rst $38                                       ; $46ab: $ff
    ldh a, [rIE]                                  ; $46ac: $f0 $ff
    nop                                           ; $46ae: $00
    rst $38                                       ; $46af: $ff
    ld bc, $f3ff                                  ; $46b0: $01 $ff $f3
    rst $38                                       ; $46b3: $ff
    add c                                         ; $46b4: $81
    rst $38                                       ; $46b5: $ff
    db $fc                                        ; $46b6: $fc
    rst $38                                       ; $46b7: $ff
    rlca                                          ; $46b8: $07
    rst $38                                       ; $46b9: $ff
    rst $38                                       ; $46ba: $ff
    rst $38                                       ; $46bb: $ff
    ld b, $ff                                     ; $46bc: $06 $ff
    rst $08                                       ; $46be: $cf
    rst $38                                       ; $46bf: $ff
    and $ff                                       ; $46c0: $e6 $ff
    db $fc                                        ; $46c2: $fc
    rst $38                                       ; $46c3: $ff
    sbc a                                         ; $46c4: $9f
    rst $38                                       ; $46c5: $ff
    ccf                                           ; $46c6: $3f
    rst $38                                       ; $46c7: $ff
    ld hl, sp-$01                                 ; $46c8: $f8 $ff
    di                                            ; $46ca: $f3
    rst $38                                       ; $46cb: $ff
    ld a, [hl]                                    ; $46cc: $7e
    rst $38                                       ; $46cd: $ff
    db $fc                                        ; $46ce: $fc
    rst $38                                       ; $46cf: $ff
    ld h, b                                       ; $46d0: $60
    nop                                           ; $46d1: $00
    nop                                           ; $46d2: $00
    nop                                           ; $46d3: $00
    jr jr_075_46d6                                ; $46d4: $18 $00

jr_075_46d6:
    inc bc                                        ; $46d6: $03
    nop                                           ; $46d7: $00
    ldh [rP1], a                                  ; $46d8: $e0 $00
    nop                                           ; $46da: $00
    nop                                           ; $46db: $00
    rra                                           ; $46dc: $1f
    nop                                           ; $46dd: $00
    nop                                           ; $46de: $00
    nop                                           ; $46df: $00
    jr jr_075_46e2                                ; $46e0: $18 $00

jr_075_46e2:
    inc sp                                        ; $46e2: $33
    nop                                           ; $46e3: $00
    nop                                           ; $46e4: $00
    nop                                           ; $46e5: $00
    rst $08                                       ; $46e6: $cf
    nop                                           ; $46e7: $00
    ld bc, $0c00                                  ; $46e8: $01 $00 $0c
    nop                                           ; $46eb: $00

jr_075_46ec:
    add b                                         ; $46ec: $80
    nop                                           ; $46ed: $00
    rrca                                          ; $46ee: $0f
    nop                                           ; $46ef: $00
    rra                                           ; $46f0: $1f
    nop                                           ; $46f1: $00
    db $fc                                        ; $46f2: $fc
    nop                                           ; $46f3: $00
    ld h, [hl]                                    ; $46f4: $66
    nop                                           ; $46f5: $00
    db $fc                                        ; $46f6: $fc
    nop                                           ; $46f7: $00
    ld a, a                                       ; $46f8: $7f
    nop                                           ; $46f9: $00
    di                                            ; $46fa: $f3
    nop                                           ; $46fb: $00
    rst $38                                       ; $46fc: $ff
    nop                                           ; $46fd: $00
    rst $38                                       ; $46fe: $ff
    nop                                           ; $46ff: $00
    ld hl, sp+$00                                 ; $4700: $f8 $00
    inc bc                                        ; $4702: $03
    nop                                           ; $4703: $00
    ld a, [hl]                                    ; $4704: $7e
    nop                                           ; $4705: $00
    jp $f800                                      ; $4706: $c3 $00 $f8


    nop                                           ; $4709: $00
    rst $38                                       ; $470a: $ff
    nop                                           ; $470b: $00
    rst $38                                       ; $470c: $ff
    nop                                           ; $470d: $00
    rst $38                                       ; $470e: $ff
    nop                                           ; $470f: $00
    inc c                                         ; $4710: $0c
    nop                                           ; $4711: $00
    ld a, c                                       ; $4712: $79
    nop                                           ; $4713: $00
    inc a                                         ; $4714: $3c
    nop                                           ; $4715: $00
    nop                                           ; $4716: $00
    nop                                           ; $4717: $00
    di                                            ; $4718: $f3
    nop                                           ; $4719: $00
    and $00                                       ; $471a: $e6 $00
    nop                                           ; $471c: $00
    nop                                           ; $471d: $00
    rlca                                          ; $471e: $07
    nop                                           ; $471f: $00
    jr nc, jr_075_4722                            ; $4720: $30 $00

jr_075_4722:
    add b                                         ; $4722: $80
    nop                                           ; $4723: $00
    call z, RST_00                                ; $4724: $cc $00 $00
    nop                                           ; $4727: $00
    ret nz                                        ; $4728: $c0

    nop                                           ; $4729: $00
    rra                                           ; $472a: $1f
    nop                                           ; $472b: $00
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    cp $00                                        ; $472e: $fe $00
    ldh a, [rP1]                                  ; $4730: $f0 $00
    rra                                           ; $4732: $1f
    nop                                           ; $4733: $00
    rst $38                                       ; $4734: $ff
    nop                                           ; $4735: $00
    and $00                                       ; $4736: $e6 $00
    rst $38                                       ; $4738: $ff
    nop                                           ; $4739: $00
    sbc b                                         ; $473a: $98
    nop                                           ; $473b: $00
    rst $38                                       ; $473c: $ff
    nop                                           ; $473d: $00
    ld a, c                                       ; $473e: $79
    nop                                           ; $473f: $00
    ccf                                           ; $4740: $3f
    nop                                           ; $4741: $00
    add b                                         ; $4742: $80
    nop                                           ; $4743: $00
    rst $38                                       ; $4744: $ff
    nop                                           ; $4745: $00
    rlca                                          ; $4746: $07
    nop                                           ; $4747: $00
    ccf                                           ; $4748: $3f
    nop                                           ; $4749: $00
    ld h, a                                       ; $474a: $67

jr_075_474b:
    nop                                           ; $474b: $00
    ccf                                           ; $474c: $3f
    nop                                           ; $474d: $00
    ld hl, sp+$00                                 ; $474e: $f8 $00
    rst $08                                       ; $4750: $cf
    jr nc, jr_075_46ec                            ; $4751: $30 $99

    ld h, [hl]                                    ; $4753: $66
    db $fc                                        ; $4754: $fc
    inc bc                                        ; $4755: $03
    sbc a                                         ; $4756: $9f
    ld h, b                                       ; $4757: $60
    ldh a, [rIF]                                  ; $4758: $f0 $0f
    rst $38                                       ; $475a: $ff
    nop                                           ; $475b: $00
    jp $fe3c                                      ; $475c: $c3 $3c $fe


    ld bc, $c03f                                  ; $475f: $01 $3f $c0
    rst $20                                       ; $4762: $e7
    jr jr_075_47a4                                ; $4763: $18 $3f

    ret nz                                        ; $4765: $c0

    rst $38                                       ; $4766: $ff
    nop                                           ; $4767: $00
    di                                            ; $4768: $f3
    inc c                                         ; $4769: $0c
    pop hl                                        ; $476a: $e1
    ld e, $30                                     ; $476b: $1e $30
    rst $08                                       ; $476d: $cf
    ld h, a                                       ; $476e: $67
    sbc b                                         ; $476f: $98
    add b                                         ; $4770: $80
    ld a, a                                       ; $4771: $7f
    inc sp                                        ; $4772: $33
    call z, $fe01                                 ; $4773: $cc $01 $fe
    db $fc                                        ; $4776: $fc
    inc bc                                        ; $4777: $03
    nop                                           ; $4778: $00
    rst $38                                       ; $4779: $ff
    jr nc, jr_075_474b                            ; $477a: $30 $cf

    sbc c                                         ; $477c: $99
    ld h, [hl]                                    ; $477d: $66
    nop                                           ; $477e: $00
    rst $38                                       ; $477f: $ff
    rra                                           ; $4780: $1f
    ldh [$c3], a                                  ; $4781: $e0 $c3
    inc a                                         ; $4783: $3c
    ldh [$1f], a                                  ; $4784: $e0 $1f
    inc bc                                        ; $4786: $03
    db $fc                                        ; $4787: $fc
    nop                                           ; $4788: $00
    rst $38                                       ; $4789: $ff
    rrca                                          ; $478a: $0f
    ldh a, [$81]                                  ; $478b: $f0 $81
    ld a, [hl]                                    ; $478d: $7e
    inc c                                         ; $478e: $0c
    di                                            ; $478f: $f3
    add b                                         ; $4790: $80
    rst $38                                       ; $4791: $ff
    inc a                                         ; $4792: $3c
    rst $38                                       ; $4793: $ff
    nop                                           ; $4794: $00
    rst $38                                       ; $4795: $ff
    rst $08                                       ; $4796: $cf
    rst $38                                       ; $4797: $ff
    ld bc, $0cff                                  ; $4798: $01 $ff $0c
    rst $38                                       ; $479b: $ff
    add b                                         ; $479c: $80
    rst $38                                       ; $479d: $ff
    rrca                                          ; $479e: $0f
    rst $38                                       ; $479f: $ff
    ld bc, $ccff                                  ; $47a0: $01 $ff $cc
    rst $38                                       ; $47a3: $ff

jr_075_47a4:
    nop                                           ; $47a4: $00
    rst $38                                       ; $47a5: $ff
    inc bc                                        ; $47a6: $03
    rst $38                                       ; $47a7: $ff
    ldh [rIE], a                                  ; $47a8: $e0 $ff
    nop                                           ; $47aa: $00
    rst $38                                       ; $47ab: $ff
    rra                                           ; $47ac: $1f
    rst $38                                       ; $47ad: $ff
    nop                                           ; $47ae: $00
    rst $38                                       ; $47af: $ff
    ld hl, sp-$01                                 ; $47b0: $f8 $ff
    inc bc                                        ; $47b2: $03
    rst $38                                       ; $47b3: $ff
    ld a, [hl]                                    ; $47b4: $7e
    rst $38                                       ; $47b5: $ff
    jp $f9ff                                      ; $47b6: $c3 $ff $f9


    rst $38                                       ; $47b9: $ff
    rst $08                                       ; $47ba: $cf
    rst $38                                       ; $47bb: $ff
    ld h, a                                       ; $47bc: $67
    rst $38                                       ; $47bd: $ff
    rst $08                                       ; $47be: $cf
    rst $38                                       ; $47bf: $ff
    rra                                           ; $47c0: $1f
    rst $38                                       ; $47c1: $ff
    db $fc                                        ; $47c2: $fc
    rst $38                                       ; $47c3: $ff
    ld h, [hl]                                    ; $47c4: $66
    rst $38                                       ; $47c5: $ff
    db $fc                                        ; $47c6: $fc
    rst $38                                       ; $47c7: $ff
    rst $38                                       ; $47c8: $ff
    rst $38                                       ; $47c9: $ff
    call z, $feff                                 ; $47ca: $cc $ff $fe
    rst $38                                       ; $47cd: $ff
    di                                            ; $47ce: $f3
    rst $38                                       ; $47cf: $ff
    jr jr_075_47d2                                ; $47d0: $18 $00

jr_075_47d2:
    inc bc                                        ; $47d2: $03
    nop                                           ; $47d3: $00
    ldh [rP1], a                                  ; $47d4: $e0 $00
    nop                                           ; $47d6: $00
    nop                                           ; $47d7: $00
    add [hl]                                      ; $47d8: $86
    nop                                           ; $47d9: $00
    rrca                                          ; $47da: $0f
    nop                                           ; $47db: $00
    ld h, a                                       ; $47dc: $67
    nop                                           ; $47dd: $00
    call z, $1800                                 ; $47de: $cc $00 $18
    nop                                           ; $47e1: $00

jr_075_47e2:
    inc sp                                        ; $47e2: $33
    nop                                           ; $47e3: $00
    add hl, de                                    ; $47e4: $19
    nop                                           ; $47e5: $00
    jr nc, jr_075_47e8                            ; $47e6: $30 $00

jr_075_47e8:
    rlca                                          ; $47e8: $07
    nop                                           ; $47e9: $00
    nop                                           ; $47ea: $00
    nop                                           ; $47eb: $00
    sbc [hl]                                      ; $47ec: $9e
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    nop                                           ; $47ef: $00
    rlca                                          ; $47f0: $07
    nop                                           ; $47f1: $00
    call z, $ff00                                 ; $47f2: $cc $00 $ff
    nop                                           ; $47f5: $00
    ret nz                                        ; $47f6: $c0

    nop                                           ; $47f7: $00
    rst $38                                       ; $47f8: $ff
    nop                                           ; $47f9: $00
    rrca                                          ; $47fa: $0f
    nop                                           ; $47fb: $00
    ld hl, sp+$00                                 ; $47fc: $f8 $00
    ccf                                           ; $47fe: $3f
    nop                                           ; $47ff: $00
    cp $00                                        ; $4800: $fe $00
    jp $e100                                      ; $4802: $c3 $00 $e1


    nop                                           ; $4805: $00
    ccf                                           ; $4806: $3f
    nop                                           ; $4807: $00
    rst $38                                       ; $4808: $ff
    nop                                           ; $4809: $00
    rst $38                                       ; $480a: $ff
    nop                                           ; $480b: $00
    ld a, c                                       ; $480c: $79
    nop                                           ; $480d: $00
    rst $38                                       ; $480e: $ff
    nop                                           ; $480f: $00
    rst $20                                       ; $4810: $e7
    jr jr_075_47e2                                ; $4811: $18 $cf

    jr nc, jr_075_488e                            ; $4813: $30 $79

    add [hl]                                      ; $4815: $86
    jp $ff3c                                      ; $4816: $c3 $3c $ff


    nop                                           ; $4819: $00
    rst $38                                       ; $481a: $ff
    nop                                           ; $481b: $00
    rlca                                          ; $481c: $07
    ld hl, sp-$01                                 ; $481d: $f8 $ff
    nop                                           ; $481f: $00
    rst $38                                       ; $4820: $ff
    nop                                           ; $4821: $00
    inc a                                         ; $4822: $3c
    jp $01fe                                      ; $4823: $c3 $fe $01


    rrca                                          ; $4826: $0f
    ldh a, [$e1]                                  ; $4827: $f0 $e1
    ld e, $3f                                     ; $4829: $1e $3f
    ret nz                                        ; $482b: $c0

    cp $01                                        ; $482c: $fe $01
    rrca                                          ; $482e: $0f
    ldh a, [rP1]                                  ; $482f: $f0 $00
    rst $38                                       ; $4831: $ff
    ccf                                           ; $4832: $3f
    ret nz                                        ; $4833: $c0

    sbc b                                         ; $4834: $98
    ld h, a                                       ; $4835: $67
    inc sp                                        ; $4836: $33
    call z, $e718                                 ; $4837: $cc $18 $e7
    ret nz                                        ; $483a: $c0

    ccf                                           ; $483b: $3f
    jr @-$17                                      ; $483c: $18 $e7

    ret nz                                        ; $483e: $c0

    ccf                                           ; $483f: $3f
    ld a, [hl]                                    ; $4840: $7e
    add c                                         ; $4841: $81
    ret nz                                        ; $4842: $c0

    ccf                                           ; $4843: $3f
    add hl, de                                    ; $4844: $19
    and $c0                                       ; $4845: $e6 $c0
    ccf                                           ; $4847: $3f
    nop                                           ; $4848: $00
    rst $38                                       ; $4849: $ff
    inc bc                                        ; $484a: $03
    db $fc                                        ; $484b: $fc
    nop                                           ; $484c: $00
    rst $38                                       ; $484d: $ff
    nop                                           ; $484e: $00
    rst $38                                       ; $484f: $ff
    jr @+$01                                      ; $4850: $18 $ff

    jp $1fff                                      ; $4852: $c3 $ff $1f


    rst $38                                       ; $4855: $ff
    nop                                           ; $4856: $00
    rst $38                                       ; $4857: $ff
    pop hl                                        ; $4858: $e1
    rst $38                                       ; $4859: $ff
    inc bc                                        ; $485a: $03
    rst $38                                       ; $485b: $ff
    rst $38                                       ; $485c: $ff
    rst $38                                       ; $485d: $ff
    nop                                           ; $485e: $00
    rst $38                                       ; $485f: $ff
    ld h, b                                       ; $4860: $60
    rst $38                                       ; $4861: $ff
    nop                                           ; $4862: $00
    rst $38                                       ; $4863: $ff
    ldh [rIE], a                                  ; $4864: $e0 $ff
    nop                                           ; $4866: $00
    rst $38                                       ; $4867: $ff
    sbc c                                         ; $4868: $99
    rst $38                                       ; $4869: $ff
    jr nc, @+$01                                  ; $486a: $30 $ff

    pop hl                                        ; $486c: $e1
    rst $38                                       ; $486d: $ff
    nop                                           ; $486e: $00
    rst $38                                       ; $486f: $ff
    inc bc                                        ; $4870: $03
    rst $38                                       ; $4871: $ff
    rst $20                                       ; $4872: $e7
    rst $38                                       ; $4873: $ff
    inc bc                                        ; $4874: $03
    rst $38                                       ; $4875: $ff
    ld hl, sp-$01                                 ; $4876: $f8 $ff
    rrca                                          ; $4878: $0f
    rst $38                                       ; $4879: $ff
    rst $38                                       ; $487a: $ff
    rst $38                                       ; $487b: $ff
    inc c                                         ; $487c: $0c
    rst $38                                       ; $487d: $ff
    sbc a                                         ; $487e: $9f
    rst $38                                       ; $487f: $ff
    call z, $f9ff                                 ; $4880: $cc $ff $f9
    rst $38                                       ; $4883: $ff
    ccf                                           ; $4884: $3f
    rst $38                                       ; $4885: $ff
    ld a, a                                       ; $4886: $7f
    rst $38                                       ; $4887: $ff
    ldh a, [rIE]                                  ; $4888: $f0 $ff
    rst $20                                       ; $488a: $e7
    rst $38                                       ; $488b: $ff
    db $fc                                        ; $488c: $fc
    rst $38                                       ; $488d: $ff

jr_075_488e:
    ld sp, hl                                     ; $488e: $f9
    rst $38                                       ; $488f: $ff
    ret nz                                        ; $4890: $c0

    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    nop                                           ; $4893: $00
    jr nc, jr_075_4896                            ; $4894: $30 $00

jr_075_4896:
    rlca                                          ; $4896: $07
    nop                                           ; $4897: $00
    ret nz                                        ; $4898: $c0

    nop                                           ; $4899: $00
    nop                                           ; $489a: $00
    nop                                           ; $489b: $00
    ccf                                           ; $489c: $3f
    nop                                           ; $489d: $00
    nop                                           ; $489e: $00
    nop                                           ; $489f: $00
    jr nc, jr_075_48a2                            ; $48a0: $30 $00

jr_075_48a2:
    ld h, [hl]                                    ; $48a2: $66
    nop                                           ; $48a3: $00
    nop                                           ; $48a4: $00
    nop                                           ; $48a5: $00
    sbc [hl]                                      ; $48a6: $9e
    nop                                           ; $48a7: $00
    inc bc                                        ; $48a8: $03
    nop                                           ; $48a9: $00
    jr jr_075_48ac                                ; $48aa: $18 $00

jr_075_48ac:
    nop                                           ; $48ac: $00
    nop                                           ; $48ad: $00
    ld e, $00                                     ; $48ae: $1e $00
    ccf                                           ; $48b0: $3f
    nop                                           ; $48b1: $00
    ld hl, sp+$00                                 ; $48b2: $f8 $00
    call z, $f900                                 ; $48b4: $cc $00 $f9
    nop                                           ; $48b7: $00
    rst $38                                       ; $48b8: $ff
    nop                                           ; $48b9: $00
    rst $20                                       ; $48ba: $e7
    nop                                           ; $48bb: $00
    rst $38                                       ; $48bc: $ff
    nop                                           ; $48bd: $00
    rst $38                                       ; $48be: $ff
    nop                                           ; $48bf: $00
    ldh a, [rP1]                                  ; $48c0: $f0 $00
    rlca                                          ; $48c2: $07
    nop                                           ; $48c3: $00
    db $fc                                        ; $48c4: $fc
    nop                                           ; $48c5: $00
    add a                                         ; $48c6: $87
    nop                                           ; $48c7: $00
    ldh a, [rP1]                                  ; $48c8: $f0 $00
    rst $38                                       ; $48ca: $ff
    nop                                           ; $48cb: $00
    rst $38                                       ; $48cc: $ff
    nop                                           ; $48cd: $00
    rst $38                                       ; $48ce: $ff
    nop                                           ; $48cf: $00
    jr jr_075_48d2                                ; $48d0: $18 $00

jr_075_48d2:
    di                                            ; $48d2: $f3
    nop                                           ; $48d3: $00
    ld a, c                                       ; $48d4: $79
    nop                                           ; $48d5: $00
    nop                                           ; $48d6: $00
    nop                                           ; $48d7: $00
    rst $20                                       ; $48d8: $e7
    nop                                           ; $48d9: $00
    call z, RST_00                                ; $48da: $cc $00 $00
    nop                                           ; $48dd: $00
    rrca                                          ; $48de: $0f
    nop                                           ; $48df: $00
    ld h, b                                       ; $48e0: $60
    nop                                           ; $48e1: $00
    nop                                           ; $48e2: $00
    nop                                           ; $48e3: $00
    sbc b                                         ; $48e4: $98
    nop                                           ; $48e5: $00
    nop                                           ; $48e6: $00
    nop                                           ; $48e7: $00
    add c                                         ; $48e8: $81
    nop                                           ; $48e9: $00
    ccf                                           ; $48ea: $3f
    nop                                           ; $48eb: $00
    nop                                           ; $48ec: $00
    nop                                           ; $48ed: $00

jr_075_48ee:
    db $fc                                        ; $48ee: $fc
    nop                                           ; $48ef: $00
    ldh [rP1], a                                  ; $48f0: $e0 $00
    ccf                                           ; $48f2: $3f
    nop                                           ; $48f3: $00
    rst $38                                       ; $48f4: $ff
    nop                                           ; $48f5: $00
    call z, $fe00                                 ; $48f6: $cc $00 $fe
    nop                                           ; $48f9: $00
    jr nc, jr_075_48fc                            ; $48fa: $30 $00

jr_075_48fc:
    cp $00                                        ; $48fc: $fe $00
    di                                            ; $48fe: $f3
    nop                                           ; $48ff: $00
    ld a, a                                       ; $4900: $7f
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    rst $38                                       ; $4904: $ff
    nop                                           ; $4905: $00
    rrca                                          ; $4906: $0f
    nop                                           ; $4907: $00
    ld a, a                                       ; $4908: $7f
    nop                                           ; $4909: $00
    rst $08                                       ; $490a: $cf
    nop                                           ; $490b: $00
    ld a, a                                       ; $490c: $7f
    nop                                           ; $490d: $00
    ldh a, [rP1]                                  ; $490e: $f0 $00
    sbc [hl]                                      ; $4910: $9e
    ld h, c                                       ; $4911: $61
    inc sp                                        ; $4912: $33
    call z, $07f8                                 ; $4913: $cc $f8 $07
    ccf                                           ; $4916: $3f
    ret nz                                        ; $4917: $c0

    pop hl                                        ; $4918: $e1
    ld e, $ff                                     ; $4919: $1e $ff
    nop                                           ; $491b: $00
    add [hl]                                      ; $491c: $86
    ld a, c                                       ; $491d: $79
    db $fc                                        ; $491e: $fc
    inc bc                                        ; $491f: $03
    ld a, a                                       ; $4920: $7f
    add b                                         ; $4921: $80
    rst $08                                       ; $4922: $cf
    jr nc, jr_075_49a4                            ; $4923: $30 $7f

    add b                                         ; $4925: $80
    rst $38                                       ; $4926: $ff
    nop                                           ; $4927: $00
    rst $20                                       ; $4928: $e7
    jr jr_075_48ee                                ; $4929: $18 $c3

    inc a                                         ; $492b: $3c
    ld h, c                                       ; $492c: $61
    sbc [hl]                                      ; $492d: $9e
    rst $08                                       ; $492e: $cf
    jr nc, jr_075_4931                            ; $492f: $30 $00

jr_075_4931:
    rst $38                                       ; $4931: $ff
    ld h, a                                       ; $4932: $67
    sbc b                                         ; $4933: $98
    inc bc                                        ; $4934: $03
    db $fc                                        ; $4935: $fc
    ld hl, sp+$07                                 ; $4936: $f8 $07
    nop                                           ; $4938: $00
    rst $38                                       ; $4939: $ff
    ld h, b                                       ; $493a: $60
    sbc a                                         ; $493b: $9f
    inc sp                                        ; $493c: $33
    call z, $ff00                                 ; $493d: $cc $00 $ff
    ccf                                           ; $4940: $3f
    ret nz                                        ; $4941: $c0

    add [hl]                                      ; $4942: $86
    ld a, c                                       ; $4943: $79
    ret nz                                        ; $4944: $c0

    ccf                                           ; $4945: $3f
    rlca                                          ; $4946: $07
    ld hl, sp+$00                                 ; $4947: $f8 $00
    rst $38                                       ; $4949: $ff
    ld e, $e1                                     ; $494a: $1e $e1
    inc bc                                        ; $494c: $03
    db $fc                                        ; $494d: $fc
    jr @-$17                                      ; $494e: $18 $e7

    nop                                           ; $4950: $00
    rst $38                                       ; $4951: $ff
    ld a, c                                       ; $4952: $79
    rst $38                                       ; $4953: $ff
    nop                                           ; $4954: $00
    rst $38                                       ; $4955: $ff
    sbc [hl]                                      ; $4956: $9e
    rst $38                                       ; $4957: $ff
    inc bc                                        ; $4958: $03
    rst $38                                       ; $4959: $ff
    jr @+$01                                      ; $495a: $18 $ff

    nop                                           ; $495c: $00
    rst $38                                       ; $495d: $ff
    ld e, $ff                                     ; $495e: $1e $ff
    inc bc                                        ; $4960: $03
    rst $38                                       ; $4961: $ff
    sbc b                                         ; $4962: $98
    rst $38                                       ; $4963: $ff
    nop                                           ; $4964: $00
    rst $38                                       ; $4965: $ff
    rlca                                          ; $4966: $07
    rst $38                                       ; $4967: $ff
    ret nz                                        ; $4968: $c0

    rst $38                                       ; $4969: $ff
    nop                                           ; $496a: $00
    rst $38                                       ; $496b: $ff
    ccf                                           ; $496c: $3f
    rst $38                                       ; $496d: $ff
    nop                                           ; $496e: $00
    rst $38                                       ; $496f: $ff
    ldh a, [rIE]                                  ; $4970: $f0 $ff
    rlca                                          ; $4972: $07
    rst $38                                       ; $4973: $ff
    db $fc                                        ; $4974: $fc
    rst $38                                       ; $4975: $ff
    add a                                         ; $4976: $87
    rst $38                                       ; $4977: $ff
    di                                            ; $4978: $f3
    rst $38                                       ; $4979: $ff
    sbc a                                         ; $497a: $9f
    rst $38                                       ; $497b: $ff
    rst $08                                       ; $497c: $cf
    rst $38                                       ; $497d: $ff
    sbc a                                         ; $497e: $9f
    rst $38                                       ; $497f: $ff
    ccf                                           ; $4980: $3f
    rst $38                                       ; $4981: $ff
    ld hl, sp-$01                                 ; $4982: $f8 $ff
    call z, $f9ff                                 ; $4984: $cc $ff $f9
    rst $38                                       ; $4987: $ff
    rst $38                                       ; $4988: $ff
    rst $38                                       ; $4989: $ff
    sbc c                                         ; $498a: $99
    rst $38                                       ; $498b: $ff
    db $fc                                        ; $498c: $fc
    rst $38                                       ; $498d: $ff
    rst $20                                       ; $498e: $e7
    rst $38                                       ; $498f: $ff
    jr nc, jr_075_4992                            ; $4990: $30 $00

jr_075_4992:
    ld b, $00                                     ; $4992: $06 $00
    ret nz                                        ; $4994: $c0

    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    inc c                                         ; $4998: $0c
    nop                                           ; $4999: $00
    ld e, $00                                     ; $499a: $1e $00
    rst $08                                       ; $499c: $cf
    nop                                           ; $499d: $00
    sbc b                                         ; $499e: $98
    nop                                           ; $499f: $00
    jr nc, jr_075_49a2                            ; $49a0: $30 $00

jr_075_49a2:
    ld h, [hl]                                    ; $49a2: $66
    nop                                           ; $49a3: $00

jr_075_49a4:
    inc sp                                        ; $49a4: $33
    nop                                           ; $49a5: $00
    ld h, b                                       ; $49a6: $60
    nop                                           ; $49a7: $00
    rrca                                          ; $49a8: $0f
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    nop                                           ; $49ab: $00
    inc a                                         ; $49ac: $3c
    nop                                           ; $49ad: $00
    ld bc, $0700                                  ; $49ae: $01 $00 $07
    nop                                           ; $49b1: $00
    call z, $ff00                                 ; $49b2: $cc $00 $ff
    nop                                           ; $49b5: $00
    ret nz                                        ; $49b6: $c0

    nop                                           ; $49b7: $00
    rst $38                                       ; $49b8: $ff
    nop                                           ; $49b9: $00
    rrca                                          ; $49ba: $0f
    nop                                           ; $49bb: $00
    ld hl, sp+$00                                 ; $49bc: $f8 $00
    ccf                                           ; $49be: $3f
    nop                                           ; $49bf: $00
    cp $00                                        ; $49c0: $fe $00
    jp $e100                                      ; $49c2: $c3 $00 $e1


    nop                                           ; $49c5: $00
    ccf                                           ; $49c6: $3f
    nop                                           ; $49c7: $00
    rst $38                                       ; $49c8: $ff
    nop                                           ; $49c9: $00
    rst $38                                       ; $49ca: $ff
    nop                                           ; $49cb: $00
    ld a, c                                       ; $49cc: $79
    nop                                           ; $49cd: $00
    rst $38                                       ; $49ce: $ff
    nop                                           ; $49cf: $00
    rst $20                                       ; $49d0: $e7
    jr jr_075_49a2                                ; $49d1: $18 $cf

    jr nc, jr_075_4a4e                            ; $49d3: $30 $79

    add [hl]                                      ; $49d5: $86
    jp $ff3c                                      ; $49d6: $c3 $3c $ff


    nop                                           ; $49d9: $00
    rst $38                                       ; $49da: $ff
    nop                                           ; $49db: $00
    rlca                                          ; $49dc: $07
    ld hl, sp-$01                                 ; $49dd: $f8 $ff
    nop                                           ; $49df: $00
    rst $38                                       ; $49e0: $ff
    nop                                           ; $49e1: $00
    inc a                                         ; $49e2: $3c
    jp $01fe                                      ; $49e3: $c3 $fe $01


    rrca                                          ; $49e6: $0f
    ldh a, [$e1]                                  ; $49e7: $f0 $e1
    ld e, $3f                                     ; $49e9: $1e $3f
    ret nz                                        ; $49eb: $c0

    cp $01                                        ; $49ec: $fe $01
    rrca                                          ; $49ee: $0f
    ldh a, [rP1]                                  ; $49ef: $f0 $00
    rst $38                                       ; $49f1: $ff
    ccf                                           ; $49f2: $3f
    ret nz                                        ; $49f3: $c0

    sbc b                                         ; $49f4: $98
    ld h, a                                       ; $49f5: $67
    inc sp                                        ; $49f6: $33
    call z, $e718                                 ; $49f7: $cc $18 $e7
    ret nz                                        ; $49fa: $c0

    ccf                                           ; $49fb: $3f
    jr @-$17                                      ; $49fc: $18 $e7

    ret nz                                        ; $49fe: $c0

    ccf                                           ; $49ff: $3f
    ld a, [hl]                                    ; $4a00: $7e
    add c                                         ; $4a01: $81
    ret nz                                        ; $4a02: $c0

    ccf                                           ; $4a03: $3f
    add hl, de                                    ; $4a04: $19
    and $c0                                       ; $4a05: $e6 $c0
    ccf                                           ; $4a07: $3f
    nop                                           ; $4a08: $00
    rst $38                                       ; $4a09: $ff
    inc bc                                        ; $4a0a: $03
    db $fc                                        ; $4a0b: $fc
    nop                                           ; $4a0c: $00
    rst $38                                       ; $4a0d: $ff
    nop                                           ; $4a0e: $00
    rst $38                                       ; $4a0f: $ff
    jr @+$01                                      ; $4a10: $18 $ff

    jp $1fff                                      ; $4a12: $c3 $ff $1f


    rst $38                                       ; $4a15: $ff
    nop                                           ; $4a16: $00
    rst $38                                       ; $4a17: $ff
    pop hl                                        ; $4a18: $e1
    rst $38                                       ; $4a19: $ff
    inc bc                                        ; $4a1a: $03
    rst $38                                       ; $4a1b: $ff
    rst $38                                       ; $4a1c: $ff
    rst $38                                       ; $4a1d: $ff
    nop                                           ; $4a1e: $00
    rst $38                                       ; $4a1f: $ff
    ld h, b                                       ; $4a20: $60
    rst $38                                       ; $4a21: $ff
    nop                                           ; $4a22: $00
    rst $38                                       ; $4a23: $ff
    ldh [rIE], a                                  ; $4a24: $e0 $ff
    nop                                           ; $4a26: $00
    rst $38                                       ; $4a27: $ff
    sbc c                                         ; $4a28: $99
    rst $38                                       ; $4a29: $ff
    jr nc, @+$01                                  ; $4a2a: $30 $ff

    pop hl                                        ; $4a2c: $e1
    rst $38                                       ; $4a2d: $ff
    nop                                           ; $4a2e: $00
    rst $38                                       ; $4a2f: $ff
    rlca                                          ; $4a30: $07
    rst $38                                       ; $4a31: $ff
    rst $08                                       ; $4a32: $cf
    rst $38                                       ; $4a33: $ff
    ld b, $ff                                     ; $4a34: $06 $ff
    ldh a, [rIE]                                  ; $4a36: $f0 $ff
    rra                                           ; $4a38: $1f
    rst $38                                       ; $4a39: $ff
    rst $38                                       ; $4a3a: $ff
    rst $38                                       ; $4a3b: $ff
    add hl, de                                    ; $4a3c: $19
    rst $38                                       ; $4a3d: $ff
    ccf                                           ; $4a3e: $3f
    rst $38                                       ; $4a3f: $ff
    sbc b                                         ; $4a40: $98
    rst $38                                       ; $4a41: $ff
    di                                            ; $4a42: $f3
    rst $38                                       ; $4a43: $ff
    ld a, [hl]                                    ; $4a44: $7e
    rst $38                                       ; $4a45: $ff
    rst $38                                       ; $4a46: $ff
    rst $38                                       ; $4a47: $ff
    ldh [rIE], a                                  ; $4a48: $e0 $ff
    rst $08                                       ; $4a4a: $cf
    rst $38                                       ; $4a4b: $ff
    ld hl, sp-$01                                 ; $4a4c: $f8 $ff

jr_075_4a4e:
    di                                            ; $4a4e: $f3
    rst $38                                       ; $4a4f: $ff
    add b                                         ; $4a50: $80
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    ld h, b                                       ; $4a54: $60
    nop                                           ; $4a55: $00
    rrca                                          ; $4a56: $0f
    nop                                           ; $4a57: $00
    add b                                         ; $4a58: $80
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    nop                                           ; $4a5b: $00
    ld a, [hl]                                    ; $4a5c: $7e
    nop                                           ; $4a5d: $00
    nop                                           ; $4a5e: $00
    nop                                           ; $4a5f: $00
    ld h, c                                       ; $4a60: $61
    nop                                           ; $4a61: $00
    call z, RST_00                                ; $4a62: $cc $00 $00
    nop                                           ; $4a65: $00
    inc a                                         ; $4a66: $3c
    nop                                           ; $4a67: $00
    rlca                                          ; $4a68: $07
    nop                                           ; $4a69: $00
    jr nc, jr_075_4a6c                            ; $4a6a: $30 $00

jr_075_4a6c:
    nop                                           ; $4a6c: $00
    nop                                           ; $4a6d: $00
    inc a                                         ; $4a6e: $3c
    nop                                           ; $4a6f: $00
    ld a, a                                       ; $4a70: $7f
    nop                                           ; $4a71: $00

jr_075_4a72:
    ldh a, [rP1]                                  ; $4a72: $f0 $00
    sbc c                                         ; $4a74: $99
    nop                                           ; $4a75: $00
    di                                            ; $4a76: $f3
    nop                                           ; $4a77: $00
    rst $38                                       ; $4a78: $ff
    nop                                           ; $4a79: $00
    rst $08                                       ; $4a7a: $cf
    nop                                           ; $4a7b: $00
    rst $38                                       ; $4a7c: $ff
    nop                                           ; $4a7d: $00
    rst $38                                       ; $4a7e: $ff
    nop                                           ; $4a7f: $00
    ldh [rP1], a                                  ; $4a80: $e0 $00
    rrca                                          ; $4a82: $0f
    nop                                           ; $4a83: $00
    ld sp, hl                                     ; $4a84: $f9
    nop                                           ; $4a85: $00
    rrca                                          ; $4a86: $0f
    nop                                           ; $4a87: $00
    pop hl                                        ; $4a88: $e1
    nop                                           ; $4a89: $00
    rst $38                                       ; $4a8a: $ff
    nop                                           ; $4a8b: $00
    rst $38                                       ; $4a8c: $ff
    nop                                           ; $4a8d: $00
    rst $38                                       ; $4a8e: $ff
    nop                                           ; $4a8f: $00
    jr nc, jr_075_4a92                            ; $4a90: $30 $00

jr_075_4a92:
    and $00                                       ; $4a92: $e6 $00
    di                                            ; $4a94: $f3
    nop                                           ; $4a95: $00
    nop                                           ; $4a96: $00
    nop                                           ; $4a97: $00
    rst $08                                       ; $4a98: $cf
    nop                                           ; $4a99: $00
    sbc b                                         ; $4a9a: $98
    nop                                           ; $4a9b: $00
    nop                                           ; $4a9c: $00
    nop                                           ; $4a9d: $00
    rra                                           ; $4a9e: $1f
    nop                                           ; $4a9f: $00
    ret nz                                        ; $4aa0: $c0

    nop                                           ; $4aa1: $00
    ld bc, $3000                                  ; $4aa2: $01 $00 $30
    nop                                           ; $4aa5: $00
    nop                                           ; $4aa6: $00
    nop                                           ; $4aa7: $00
    inc bc                                        ; $4aa8: $03
    nop                                           ; $4aa9: $00
    ld a, a                                       ; $4aaa: $7f
    nop                                           ; $4aab: $00
    nop                                           ; $4aac: $00
    nop                                           ; $4aad: $00
    ld hl, sp+$00                                 ; $4aae: $f8 $00
    ret nz                                        ; $4ab0: $c0

    nop                                           ; $4ab1: $00
    ld a, [hl]                                    ; $4ab2: $7e
    nop                                           ; $4ab3: $00
    rst $38                                       ; $4ab4: $ff
    nop                                           ; $4ab5: $00
    sbc b                                         ; $4ab6: $98
    nop                                           ; $4ab7: $00
    db $fc                                        ; $4ab8: $fc
    nop                                           ; $4ab9: $00
    ld h, c                                       ; $4aba: $61
    nop                                           ; $4abb: $00
    db $fc                                        ; $4abc: $fc
    nop                                           ; $4abd: $00
    rst $20                                       ; $4abe: $e7
    nop                                           ; $4abf: $00
    rst $38                                       ; $4ac0: $ff
    nop                                           ; $4ac1: $00
    nop                                           ; $4ac2: $00
    nop                                           ; $4ac3: $00
    rst $38                                       ; $4ac4: $ff
    nop                                           ; $4ac5: $00
    rra                                           ; $4ac6: $1f
    nop                                           ; $4ac7: $00
    rst $38                                       ; $4ac8: $ff
    nop                                           ; $4ac9: $00
    sbc [hl]                                      ; $4aca: $9e
    nop                                           ; $4acb: $00
    rst $38                                       ; $4acc: $ff
    nop                                           ; $4acd: $00
    pop hl                                        ; $4ace: $e1
    nop                                           ; $4acf: $00
    inc a                                         ; $4ad0: $3c
    jp $9867                                      ; $4ad1: $c3 $67 $98


    ldh a, [rIF]                                  ; $4ad4: $f0 $0f
    ld a, a                                       ; $4ad6: $7f
    add b                                         ; $4ad7: $80
    jp $ff3c                                      ; $4ad8: $c3 $3c $ff


    nop                                           ; $4adb: $00
    inc c                                         ; $4adc: $0c
    di                                            ; $4add: $f3
    ld sp, hl                                     ; $4ade: $f9

jr_075_4adf:
    ld b, $ff                                     ; $4adf: $06 $ff
    nop                                           ; $4ae1: $00
    sbc [hl]                                      ; $4ae2: $9e
    ld h, c                                       ; $4ae3: $61
    rst $38                                       ; $4ae4: $ff
    nop                                           ; $4ae5: $00
    cp $01                                        ; $4ae6: $fe $01
    rst $08                                       ; $4ae8: $cf
    jr nc, jr_075_4a72                            ; $4ae9: $30 $87

    ld a, b                                       ; $4aeb: $78
    jp $9f3c                                      ; $4aec: $c3 $3c $9f


    ld h, b                                       ; $4aef: $60
    nop                                           ; $4af0: $00
    rst $38                                       ; $4af1: $ff
    rst $08                                       ; $4af2: $cf
    jr nc, jr_075_4afc                            ; $4af3: $30 $07

    ld hl, sp-$10                                 ; $4af5: $f8 $f0
    rrca                                          ; $4af7: $0f
    nop                                           ; $4af8: $00
    rst $38                                       ; $4af9: $ff
    ret nz                                        ; $4afa: $c0

    ccf                                           ; $4afb: $3f

jr_075_4afc:
    ld h, [hl]                                    ; $4afc: $66
    sbc c                                         ; $4afd: $99
    nop                                           ; $4afe: $00
    rst $38                                       ; $4aff: $ff
    ld a, [hl]                                    ; $4b00: $7e
    add c                                         ; $4b01: $81
    inc c                                         ; $4b02: $0c
    di                                            ; $4b03: $f3
    add b                                         ; $4b04: $80
    ld a, a                                       ; $4b05: $7f
    rrca                                          ; $4b06: $0f
    ldh a, [rP1]                                  ; $4b07: $f0 $00
    rst $38                                       ; $4b09: $ff
    inc a                                         ; $4b0a: $3c
    jp $f906                                      ; $4b0b: $c3 $06 $f9


    jr nc, jr_075_4adf                            ; $4b0e: $30 $cf

    nop                                           ; $4b10: $00
    rst $38                                       ; $4b11: $ff
    di                                            ; $4b12: $f3
    rst $38                                       ; $4b13: $ff
    nop                                           ; $4b14: $00
    rst $38                                       ; $4b15: $ff
    inc a                                         ; $4b16: $3c
    rst $38                                       ; $4b17: $ff
    rlca                                          ; $4b18: $07
    rst $38                                       ; $4b19: $ff
    jr nc, @+$01                                  ; $4b1a: $30 $ff

    nop                                           ; $4b1c: $00
    rst $38                                       ; $4b1d: $ff
    inc a                                         ; $4b1e: $3c
    rst $38                                       ; $4b1f: $ff
    ld b, $ff                                     ; $4b20: $06 $ff
    jr nc, @+$01                                  ; $4b22: $30 $ff

    nop                                           ; $4b24: $00
    rst $38                                       ; $4b25: $ff
    rrca                                          ; $4b26: $0f
    rst $38                                       ; $4b27: $ff
    add b                                         ; $4b28: $80
    rst $38                                       ; $4b29: $ff
    nop                                           ; $4b2a: $00
    rst $38                                       ; $4b2b: $ff
    ld a, [hl]                                    ; $4b2c: $7e
    rst $38                                       ; $4b2d: $ff
    nop                                           ; $4b2e: $00
    rst $38                                       ; $4b2f: $ff
    ldh [rIE], a                                  ; $4b30: $e0 $ff
    rrca                                          ; $4b32: $0f
    rst $38                                       ; $4b33: $ff
    ld sp, hl                                     ; $4b34: $f9
    rst $38                                       ; $4b35: $ff
    rrca                                          ; $4b36: $0f
    rst $38                                       ; $4b37: $ff
    rst $20                                       ; $4b38: $e7
    rst $38                                       ; $4b39: $ff
    ccf                                           ; $4b3a: $3f
    rst $38                                       ; $4b3b: $ff
    sbc a                                         ; $4b3c: $9f
    rst $38                                       ; $4b3d: $ff
    ccf                                           ; $4b3e: $3f
    rst $38                                       ; $4b3f: $ff
    ld a, a                                       ; $4b40: $7f
    rst $38                                       ; $4b41: $ff
    ldh a, [rIE]                                  ; $4b42: $f0 $ff
    sbc c                                         ; $4b44: $99
    rst $38                                       ; $4b45: $ff
    di                                            ; $4b46: $f3
    rst $38                                       ; $4b47: $ff
    rst $38                                       ; $4b48: $ff
    rst $38                                       ; $4b49: $ff
    inc sp                                        ; $4b4a: $33
    rst $38                                       ; $4b4b: $ff
    ld sp, hl                                     ; $4b4c: $f9
    rst $38                                       ; $4b4d: $ff
    rst $08                                       ; $4b4e: $cf
    rst $38                                       ; $4b4f: $ff
    ld h, b                                       ; $4b50: $60
    nop                                           ; $4b51: $00
    inc c                                         ; $4b52: $0c
    nop                                           ; $4b53: $00
    add b                                         ; $4b54: $80
    nop                                           ; $4b55: $00
    nop                                           ; $4b56: $00
    nop                                           ; $4b57: $00
    jr jr_075_4b5a                                ; $4b58: $18 $00

jr_075_4b5a:
    inc a                                         ; $4b5a: $3c
    nop                                           ; $4b5b: $00
    sbc [hl]                                      ; $4b5c: $9e
    nop                                           ; $4b5d: $00
    jr nc, jr_075_4b60                            ; $4b5e: $30 $00

jr_075_4b60:
    ld h, b                                       ; $4b60: $60
    nop                                           ; $4b61: $00
    call z, Call_075_6700                         ; $4b62: $cc $00 $67
    nop                                           ; $4b65: $00
    ret nz                                        ; $4b66: $c0

    nop                                           ; $4b67: $00
    ld e, $00                                     ; $4b68: $1e $00
    nop                                           ; $4b6a: $00
    nop                                           ; $4b6b: $00
    ld a, c                                       ; $4b6c: $79
    nop                                           ; $4b6d: $00
    inc bc                                        ; $4b6e: $03
    nop                                           ; $4b6f: $00
    rrca                                          ; $4b70: $0f
    nop                                           ; $4b71: $00
    sbc c                                         ; $4b72: $99
    nop                                           ; $4b73: $00
    rst $38                                       ; $4b74: $ff
    nop                                           ; $4b75: $00
    add b                                         ; $4b76: $80
    nop                                           ; $4b77: $00
    rst $38                                       ; $4b78: $ff
    nop                                           ; $4b79: $00
    rra                                           ; $4b7a: $1f
    nop                                           ; $4b7b: $00
    ldh a, [rP1]                                  ; $4b7c: $f0 $00
    ld a, a                                       ; $4b7e: $7f
    nop                                           ; $4b7f: $00
    db $fc                                        ; $4b80: $fc
    nop                                           ; $4b81: $00
    add a                                         ; $4b82: $87
    nop                                           ; $4b83: $00
    jp Jump_075_7f00                              ; $4b84: $c3 $00 $7f


    nop                                           ; $4b87: $00
    rst $38                                       ; $4b88: $ff

jr_075_4b89:
    nop                                           ; $4b89: $00
    cp $00                                        ; $4b8a: $fe $00
    di                                            ; $4b8c: $f3

jr_075_4b8d:
    nop                                           ; $4b8d: $00
    cp $00                                        ; $4b8e: $fe $00
    rst $08                                       ; $4b90: $cf
    jr nc, @-$60                                  ; $4b91: $30 $9e

    ld h, c                                       ; $4b93: $61
    di                                            ; $4b94: $f3
    inc c                                         ; $4b95: $0c
    add [hl]                                      ; $4b96: $86
    ld a, c                                       ; $4b97: $79
    rst $38                                       ; $4b98: $ff
    nop                                           ; $4b99: $00
    cp $01                                        ; $4b9a: $fe $01
    rrca                                          ; $4b9c: $0f
    ldh a, [$fe]                                  ; $4b9d: $f0 $fe
    ld bc, $00ff                                  ; $4b9f: $01 $ff $00
    ld a, c                                       ; $4ba2: $79
    add [hl]                                      ; $4ba3: $86
    db $fc                                        ; $4ba4: $fc
    inc bc                                        ; $4ba5: $03
    rra                                           ; $4ba6: $1f
    ldh [$c3], a                                  ; $4ba7: $e0 $c3
    inc a                                         ; $4ba9: $3c
    ld a, a                                       ; $4baa: $7f
    add b                                         ; $4bab: $80
    db $fc                                        ; $4bac: $fc
    inc bc                                        ; $4bad: $03
    rra                                           ; $4bae: $1f
    ldh [rP1], a                                  ; $4baf: $e0 $00
    rst $38                                       ; $4bb1: $ff
    ld a, a                                       ; $4bb2: $7f
    add b                                         ; $4bb3: $80
    jr nc, @-$2f                                  ; $4bb4: $30 $cf

    ld h, a                                       ; $4bb6: $67
    sbc b                                         ; $4bb7: $98
    jr nc, jr_075_4b89                            ; $4bb8: $30 $cf

    add b                                         ; $4bba: $80
    ld a, a                                       ; $4bbb: $7f
    jr nc, jr_075_4b8d                            ; $4bbc: $30 $cf

    add b                                         ; $4bbe: $80
    ld a, a                                       ; $4bbf: $7f
    db $fc                                        ; $4bc0: $fc
    inc bc                                        ; $4bc1: $03
    add b                                         ; $4bc2: $80
    ld a, a                                       ; $4bc3: $7f
    inc sp                                        ; $4bc4: $33
    call z, $7f80                                 ; $4bc5: $cc $80 $7f
    nop                                           ; $4bc8: $00
    rst $38                                       ; $4bc9: $ff
    rlca                                          ; $4bca: $07
    ld hl, sp+$00                                 ; $4bcb: $f8 $00
    rst $38                                       ; $4bcd: $ff
    ld bc, $30fe                                  ; $4bce: $01 $fe $30
    rst $38                                       ; $4bd1: $ff
    add [hl]                                      ; $4bd2: $86
    rst $38                                       ; $4bd3: $ff
    ccf                                           ; $4bd4: $3f
    rst $38                                       ; $4bd5: $ff
    nop                                           ; $4bd6: $00
    rst $38                                       ; $4bd7: $ff
    jp Jump_000_06ff                              ; $4bd8: $c3 $ff $06


    rst $38                                       ; $4bdb: $ff
    rst $38                                       ; $4bdc: $ff
    rst $38                                       ; $4bdd: $ff
    nop                                           ; $4bde: $00
    rst $38                                       ; $4bdf: $ff
    ret nz                                        ; $4be0: $c0

    rst $38                                       ; $4be1: $ff
    ld bc, $c0ff                                  ; $4be2: $01 $ff $c0
    rst $38                                       ; $4be5: $ff
    nop                                           ; $4be6: $00
    rst $38                                       ; $4be7: $ff
    inc sp                                        ; $4be8: $33
    rst $38                                       ; $4be9: $ff
    ld h, b                                       ; $4bea: $60
    rst $38                                       ; $4beb: $ff
    jp Jump_000_00ff                              ; $4bec: $c3 $ff $00


    rst $38                                       ; $4bef: $ff
    rrca                                          ; $4bf0: $0f
    rst $38                                       ; $4bf1: $ff
    sbc a                                         ; $4bf2: $9f
    rst $38                                       ; $4bf3: $ff
    inc c                                         ; $4bf4: $0c
    rst $38                                       ; $4bf5: $ff
    pop hl                                        ; $4bf6: $e1
    rst $38                                       ; $4bf7: $ff
    ccf                                           ; $4bf8: $3f
    rst $38                                       ; $4bf9: $ff
    rst $38                                       ; $4bfa: $ff
    rst $38                                       ; $4bfb: $ff
    inc sp                                        ; $4bfc: $33
    rst $38                                       ; $4bfd: $ff
    ld a, a                                       ; $4bfe: $7f
    rst $38                                       ; $4bff: $ff
    jr nc, @+$01                                  ; $4c00: $30 $ff

    rst $20                                       ; $4c02: $e7
    rst $38                                       ; $4c03: $ff
    db $fc                                        ; $4c04: $fc
    rst $38                                       ; $4c05: $ff
    rst $38                                       ; $4c06: $ff
    rst $38                                       ; $4c07: $ff
    ret nz                                        ; $4c08: $c0

    rst $38                                       ; $4c09: $ff
    sbc a                                         ; $4c0a: $9f
    rst $38                                       ; $4c0b: $ff
    ldh a, [rIE]                                  ; $4c0c: $f0 $ff
    and $ff                                       ; $4c0e: $e6 $ff
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    ld bc, $c000                                  ; $4c12: $01 $00 $c0
    nop                                           ; $4c15: $00
    ld e, $00                                     ; $4c16: $1e $00
    nop                                           ; $4c18: $00
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    nop                                           ; $4c1b: $00
    db $fc                                        ; $4c1c: $fc
    nop                                           ; $4c1d: $00
    nop                                           ; $4c1e: $00
    nop                                           ; $4c1f: $00
    jp $9800                                      ; $4c20: $c3 $00 $98


    nop                                           ; $4c23: $00
    nop                                           ; $4c24: $00
    nop                                           ; $4c25: $00
    ld a, b                                       ; $4c26: $78
    nop                                           ; $4c27: $00
    rrca                                          ; $4c28: $0f
    nop                                           ; $4c29: $00
    ld h, b                                       ; $4c2a: $60
    nop                                           ; $4c2b: $00
    nop                                           ; $4c2c: $00
    nop                                           ; $4c2d: $00
    ld a, b                                       ; $4c2e: $78
    nop                                           ; $4c2f: $00
    rst $38                                       ; $4c30: $ff
    nop                                           ; $4c31: $00
    ldh [rP1], a                                  ; $4c32: $e0 $00
    inc sp                                        ; $4c34: $33
    nop                                           ; $4c35: $00
    and $00                                       ; $4c36: $e6 $00
    rst $38                                       ; $4c38: $ff
    nop                                           ; $4c39: $00
    sbc a                                         ; $4c3a: $9f
    nop                                           ; $4c3b: $00
    rst $38                                       ; $4c3c: $ff
    nop                                           ; $4c3d: $00
    rst $38                                       ; $4c3e: $ff
    nop                                           ; $4c3f: $00
    ret nz                                        ; $4c40: $c0

    nop                                           ; $4c41: $00
    rra                                           ; $4c42: $1f
    nop                                           ; $4c43: $00
    di                                            ; $4c44: $f3
    nop                                           ; $4c45: $00
    rra                                           ; $4c46: $1f
    nop                                           ; $4c47: $00
    jp $ff00                                      ; $4c48: $c3 $00 $ff


    nop                                           ; $4c4b: $00
    rst $38                                       ; $4c4c: $ff
    nop                                           ; $4c4d: $00
    rst $38                                       ; $4c4e: $ff
    nop                                           ; $4c4f: $00
    jp $9800                                      ; $4c50: $c3 $00 $98


    nop                                           ; $4c53: $00
    call z, RST_00                                ; $4c54: $cc $00 $00
    nop                                           ; $4c57: $00
    inc a                                         ; $4c58: $3c
    nop                                           ; $4c59: $00
    ld h, c                                       ; $4c5a: $61
    nop                                           ; $4c5b: $00
    nop                                           ; $4c5c: $00
    nop                                           ; $4c5d: $00
    ld a, a                                       ; $4c5e: $7f
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    rlca                                          ; $4c62: $07
    nop                                           ; $4c63: $00
    jp RST_00                                     ; $4c64: $c3 $00 $00


    nop                                           ; $4c67: $00
    rrca                                          ; $4c68: $0f
    nop                                           ; $4c69: $00
    cp $00                                        ; $4c6a: $fe $00
    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00
    ldh [rP1], a                                  ; $4c6e: $e0 $00
    inc bc                                        ; $4c70: $03
    nop                                           ; $4c71: $00
    ld hl, sp+$00                                 ; $4c72: $f8 $00
    rst $38                                       ; $4c74: $ff
    nop                                           ; $4c75: $00
    ld h, b                                       ; $4c76: $60
    nop                                           ; $4c77: $00
    di                                            ; $4c78: $f3
    nop                                           ; $4c79: $00
    add [hl]                                      ; $4c7a: $86
    nop                                           ; $4c7b: $00
    di                                            ; $4c7c: $f3
    nop                                           ; $4c7d: $00
    sbc a                                         ; $4c7e: $9f
    nop                                           ; $4c7f: $00
    rst $38                                       ; $4c80: $ff
    nop                                           ; $4c81: $00
    ld bc, $ff00                                  ; $4c82: $01 $00 $ff
    nop                                           ; $4c85: $00
    ld a, [hl]                                    ; $4c86: $7e
    nop                                           ; $4c87: $00
    rst $38                                       ; $4c88: $ff
    nop                                           ; $4c89: $00
    ld a, c                                       ; $4c8a: $79
    nop                                           ; $4c8b: $00
    rst $38                                       ; $4c8c: $ff
    nop                                           ; $4c8d: $00
    add a                                         ; $4c8e: $87
    nop                                           ; $4c8f: $00
    di                                            ; $4c90: $f3
    inc c                                         ; $4c91: $0c
    sbc [hl]                                      ; $4c92: $9e
    ld h, c                                       ; $4c93: $61
    jp $ff3c                                      ; $4c94: $c3 $3c $ff


    nop                                           ; $4c97: $00
    rrca                                          ; $4c98: $0f
    ldh a, [$fe]                                  ; $4c99: $f0 $fe
    ld bc, $cc33                                  ; $4c9b: $01 $33 $cc
    and $19                                       ; $4c9e: $e6 $19
    db $fc                                        ; $4ca0: $fc
    inc bc                                        ; $4ca1: $03
    ld a, c                                       ; $4ca2: $79
    add [hl]                                      ; $4ca3: $86
    rst $38                                       ; $4ca4: $ff
    nop                                           ; $4ca5: $00
    ld sp, hl                                     ; $4ca6: $f9
    ld b, $3f                                     ; $4ca7: $06 $3f
    ret nz                                        ; $4ca9: $c0

    rra                                           ; $4caa: $1f
    ldh [$0c], a                                  ; $4cab: $e0 $0c
    di                                            ; $4cad: $f3
    ld a, a                                       ; $4cae: $7f
    add b                                         ; $4caf: $80
    nop                                           ; $4cb0: $00
    rst $38                                       ; $4cb1: $ff
    sbc [hl]                                      ; $4cb2: $9e
    ld h, c                                       ; $4cb3: $61
    rrca                                          ; $4cb4: $0f
    ldh a, [$e0]                                  ; $4cb5: $f0 $e0
    rra                                           ; $4cb7: $1f
    nop                                           ; $4cb8: $00
    rst $38                                       ; $4cb9: $ff
    add b                                         ; $4cba: $80
    ld a, a                                       ; $4cbb: $7f
    call z, $0033                                 ; $4cbc: $cc $33 $00
    rst $38                                       ; $4cbf: $ff
    db $fc                                        ; $4cc0: $fc
    inc bc                                        ; $4cc1: $03
    add hl, de                                    ; $4cc2: $19
    and $00                                       ; $4cc3: $e6 $00
    rst $38                                       ; $4cc5: $ff
    rra                                           ; $4cc6: $1f
    ldh [rP1], a                                  ; $4cc7: $e0 $00
    rst $38                                       ; $4cc9: $ff
    ld a, c                                       ; $4cca: $79
    add [hl]                                      ; $4ccb: $86
    inc c                                         ; $4ccc: $0c
    di                                            ; $4ccd: $f3
    ld h, b                                       ; $4cce: $60
    sbc a                                         ; $4ccf: $9f
    nop                                           ; $4cd0: $00
    rst $38                                       ; $4cd1: $ff
    and $ff                                       ; $4cd2: $e6 $ff
    nop                                           ; $4cd4: $00
    rst $38                                       ; $4cd5: $ff
    ld a, b                                       ; $4cd6: $78
    rst $38                                       ; $4cd7: $ff
    rrca                                          ; $4cd8: $0f
    rst $38                                       ; $4cd9: $ff
    ld h, b                                       ; $4cda: $60
    rst $38                                       ; $4cdb: $ff
    nop                                           ; $4cdc: $00
    rst $38                                       ; $4cdd: $ff
    ld a, b                                       ; $4cde: $78
    rst $38                                       ; $4cdf: $ff
    inc c                                         ; $4ce0: $0c
    rst $38                                       ; $4ce1: $ff
    ld h, c                                       ; $4ce2: $61
    rst $38                                       ; $4ce3: $ff
    nop                                           ; $4ce4: $00
    rst $38                                       ; $4ce5: $ff
    ld e, $ff                                     ; $4ce6: $1e $ff
    nop                                           ; $4ce8: $00
    rst $38                                       ; $4ce9: $ff
    nop                                           ; $4cea: $00
    rst $38                                       ; $4ceb: $ff
    db $fc                                        ; $4cec: $fc
    rst $38                                       ; $4ced: $ff
    nop                                           ; $4cee: $00
    rst $38                                       ; $4cef: $ff
    ret nz                                        ; $4cf0: $c0

jr_075_4cf1:
    rst $38                                       ; $4cf1: $ff
    rra                                           ; $4cf2: $1f
    rst $38                                       ; $4cf3: $ff
    di                                            ; $4cf4: $f3
    rst $38                                       ; $4cf5: $ff
    rra                                           ; $4cf6: $1f
    rst $38                                       ; $4cf7: $ff
    rst $08                                       ; $4cf8: $cf
    rst $38                                       ; $4cf9: $ff
    ld a, [hl]                                    ; $4cfa: $7e
    rst $38                                       ; $4cfb: $ff
    ccf                                           ; $4cfc: $3f
    rst $38                                       ; $4cfd: $ff
    ld a, a                                       ; $4cfe: $7f
    rst $38                                       ; $4cff: $ff
    rst $38                                       ; $4d00: $ff
    rst $38                                       ; $4d01: $ff
    ldh [rIE], a                                  ; $4d02: $e0 $ff
    inc sp                                        ; $4d04: $33
    rst $38                                       ; $4d05: $ff
    and $ff                                       ; $4d06: $e6 $ff
    rst $38                                       ; $4d08: $ff
    rst $38                                       ; $4d09: $ff
    ld h, [hl]                                    ; $4d0a: $66
    rst $38                                       ; $4d0b: $ff
    di                                            ; $4d0c: $f3
    rst $38                                       ; $4d0d: $ff
    sbc [hl]                                      ; $4d0e: $9e
    rst $38                                       ; $4d0f: $ff
    ret nz                                        ; $4d10: $c0

    nop                                           ; $4d11: $00
    add hl, de                                    ; $4d12: $19
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    ld bc, $3000                                  ; $4d16: $01 $00 $30
    nop                                           ; $4d19: $00
    ld a, b                                       ; $4d1a: $78
    nop                                           ; $4d1b: $00
    inc a                                         ; $4d1c: $3c
    nop                                           ; $4d1d: $00
    ld h, b                                       ; $4d1e: $60
    nop                                           ; $4d1f: $00
    ret nz                                        ; $4d20: $c0

    nop                                           ; $4d21: $00
    sbc b                                         ; $4d22: $98
    nop                                           ; $4d23: $00
    rst $08                                       ; $4d24: $cf
    nop                                           ; $4d25: $00
    add b                                         ; $4d26: $80
    nop                                           ; $4d27: $00
    inc a                                         ; $4d28: $3c
    nop                                           ; $4d29: $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    di                                            ; $4d2c: $f3
    nop                                           ; $4d2d: $00
    ld b, $00                                     ; $4d2e: $06 $00
    rrca                                          ; $4d30: $0f
    nop                                           ; $4d31: $00
    sbc c                                         ; $4d32: $99
    nop                                           ; $4d33: $00
    rst $38                                       ; $4d34: $ff
    nop                                           ; $4d35: $00
    add b                                         ; $4d36: $80
    nop                                           ; $4d37: $00
    rst $38                                       ; $4d38: $ff
    nop                                           ; $4d39: $00
    rra                                           ; $4d3a: $1f
    nop                                           ; $4d3b: $00
    ldh a, [rP1]                                  ; $4d3c: $f0 $00
    ld a, a                                       ; $4d3e: $7f
    nop                                           ; $4d3f: $00
    db $fc                                        ; $4d40: $fc
    nop                                           ; $4d41: $00
    add a                                         ; $4d42: $87
    nop                                           ; $4d43: $00
    jp Jump_075_7f00                              ; $4d44: $c3 $00 $7f


    nop                                           ; $4d47: $00
    rst $38                                       ; $4d48: $ff

jr_075_4d49:
    nop                                           ; $4d49: $00
    cp $00                                        ; $4d4a: $fe $00
    di                                            ; $4d4c: $f3

jr_075_4d4d:
    nop                                           ; $4d4d: $00
    cp $00                                        ; $4d4e: $fe $00
    rst $08                                       ; $4d50: $cf
    jr nc, jr_075_4cf1                            ; $4d51: $30 $9e

    ld h, c                                       ; $4d53: $61
    di                                            ; $4d54: $f3
    inc c                                         ; $4d55: $0c
    add [hl]                                      ; $4d56: $86
    ld a, c                                       ; $4d57: $79
    rst $38                                       ; $4d58: $ff
    nop                                           ; $4d59: $00
    cp $01                                        ; $4d5a: $fe $01
    rrca                                          ; $4d5c: $0f
    ldh a, [$fe]                                  ; $4d5d: $f0 $fe
    ld bc, $00ff                                  ; $4d5f: $01 $ff $00
    ld a, c                                       ; $4d62: $79
    add [hl]                                      ; $4d63: $86
    db $fc                                        ; $4d64: $fc
    inc bc                                        ; $4d65: $03
    rra                                           ; $4d66: $1f
    ldh [$c3], a                                  ; $4d67: $e0 $c3
    inc a                                         ; $4d69: $3c
    ld a, a                                       ; $4d6a: $7f
    add b                                         ; $4d6b: $80
    db $fc                                        ; $4d6c: $fc
    inc bc                                        ; $4d6d: $03
    rra                                           ; $4d6e: $1f
    ldh [rP1], a                                  ; $4d6f: $e0 $00
    rst $38                                       ; $4d71: $ff
    ld a, a                                       ; $4d72: $7f
    add b                                         ; $4d73: $80
    jr nc, @-$2f                                  ; $4d74: $30 $cf

    ld h, a                                       ; $4d76: $67
    sbc b                                         ; $4d77: $98
    jr nc, jr_075_4d49                            ; $4d78: $30 $cf

    add b                                         ; $4d7a: $80
    ld a, a                                       ; $4d7b: $7f
    jr nc, jr_075_4d4d                            ; $4d7c: $30 $cf

    add b                                         ; $4d7e: $80
    ld a, a                                       ; $4d7f: $7f
    db $fc                                        ; $4d80: $fc
    inc bc                                        ; $4d81: $03
    add b                                         ; $4d82: $80
    ld a, a                                       ; $4d83: $7f
    inc sp                                        ; $4d84: $33
    call z, $7f80                                 ; $4d85: $cc $80 $7f
    nop                                           ; $4d88: $00
    rst $38                                       ; $4d89: $ff
    rlca                                          ; $4d8a: $07
    ld hl, sp+$00                                 ; $4d8b: $f8 $00
    rst $38                                       ; $4d8d: $ff
    ld bc, $30fe                                  ; $4d8e: $01 $fe $30
    rst $38                                       ; $4d91: $ff
    add [hl]                                      ; $4d92: $86
    rst $38                                       ; $4d93: $ff
    ccf                                           ; $4d94: $3f
    rst $38                                       ; $4d95: $ff
    nop                                           ; $4d96: $00
    rst $38                                       ; $4d97: $ff
    jp Jump_000_06ff                              ; $4d98: $c3 $ff $06


    rst $38                                       ; $4d9b: $ff
    rst $38                                       ; $4d9c: $ff
    rst $38                                       ; $4d9d: $ff
    nop                                           ; $4d9e: $00
    rst $38                                       ; $4d9f: $ff
    ret nz                                        ; $4da0: $c0

    rst $38                                       ; $4da1: $ff
    ld bc, $c0ff                                  ; $4da2: $01 $ff $c0
    rst $38                                       ; $4da5: $ff
    nop                                           ; $4da6: $00
    rst $38                                       ; $4da7: $ff
    inc sp                                        ; $4da8: $33
    rst $38                                       ; $4da9: $ff
    ld h, b                                       ; $4daa: $60
    rst $38                                       ; $4dab: $ff
    jp Jump_000_00ff                              ; $4dac: $c3 $ff $00


    rst $38                                       ; $4daf: $ff
    ld e, $ff                                     ; $4db0: $1e $ff
    ccf                                           ; $4db2: $3f
    rst $38                                       ; $4db3: $ff
    add hl, de                                    ; $4db4: $19
    rst $38                                       ; $4db5: $ff
    jp Jump_075_7fff                              ; $4db6: $c3 $ff $7f


    rst $38                                       ; $4db9: $ff
    rst $38                                       ; $4dba: $ff
    rst $38                                       ; $4dbb: $ff
    ld h, a                                       ; $4dbc: $67
    rst $38                                       ; $4dbd: $ff
    rst $38                                       ; $4dbe: $ff
    rst $38                                       ; $4dbf: $ff
    ld h, b                                       ; $4dc0: $60
    rst $38                                       ; $4dc1: $ff
    rst $08                                       ; $4dc2: $cf
    rst $38                                       ; $4dc3: $ff
    ld hl, sp-$01                                 ; $4dc4: $f8 $ff
    rst $38                                       ; $4dc6: $ff
    rst $38                                       ; $4dc7: $ff
    add b                                         ; $4dc8: $80
    rst $38                                       ; $4dc9: $ff
    ccf                                           ; $4dca: $3f
    rst $38                                       ; $4dcb: $ff
    ldh [rIE], a                                  ; $4dcc: $e0 $ff
    call z, $03ff                                 ; $4dce: $cc $ff $03
    nop                                           ; $4dd1: $00
    ld b, $00                                     ; $4dd2: $06 $00
    nop                                           ; $4dd4: $00
    nop                                           ; $4dd5: $00
    ld a, c                                       ; $4dd6: $79
    nop                                           ; $4dd7: $00
    nop                                           ; $4dd8: $00
    nop                                           ; $4dd9: $00
    ld bc, $f000                                  ; $4dda: $01 $00 $f0
    nop                                           ; $4ddd: $00
    ld bc, $0c00                                  ; $4dde: $01 $00 $0c
    nop                                           ; $4de1: $00
    ld h, b                                       ; $4de2: $60
    nop                                           ; $4de3: $00
    inc bc                                        ; $4de4: $03
    nop                                           ; $4de5: $00
    ldh [rP1], a                                  ; $4de6: $e0 $00
    inc a                                         ; $4de8: $3c
    nop                                           ; $4de9: $00
    add b                                         ; $4dea: $80
    nop                                           ; $4deb: $00
    inc bc                                        ; $4dec: $03
    nop                                           ; $4ded: $00
    ldh [rP1], a                                  ; $4dee: $e0 $00
    rst $38                                       ; $4df0: $ff
    nop                                           ; $4df1: $00
    add b                                         ; $4df2: $80
    nop                                           ; $4df3: $00
    rst $08                                       ; $4df4: $cf
    nop                                           ; $4df5: $00
    sbc b                                         ; $4df6: $98
    nop                                           ; $4df7: $00
    rst $38                                       ; $4df8: $ff
    nop                                           ; $4df9: $00
    ld a, a                                       ; $4dfa: $7f
    nop                                           ; $4dfb: $00
    rst $38                                       ; $4dfc: $ff
    nop                                           ; $4dfd: $00
    rst $38                                       ; $4dfe: $ff
    nop                                           ; $4dff: $00
    inc bc                                        ; $4e00: $03
    nop                                           ; $4e01: $00
    ld a, a                                       ; $4e02: $7f
    nop                                           ; $4e03: $00
    call z, Call_075_7f00                         ; $4e04: $cc $00 $7f
    nop                                           ; $4e07: $00
    rrca                                          ; $4e08: $0f
    nop                                           ; $4e09: $00
    cp $00                                        ; $4e0a: $fe $00
    rst $38                                       ; $4e0c: $ff
    nop                                           ; $4e0d: $00
    rst $38                                       ; $4e0e: $ff
    nop                                           ; $4e0f: $00
    add [hl]                                      ; $4e10: $86
    nop                                           ; $4e11: $00
    jr nc, jr_075_4e14                            ; $4e12: $30 $00

jr_075_4e14:
    sbc c                                         ; $4e14: $99
    nop                                           ; $4e15: $00
    nop                                           ; $4e16: $00
    nop                                           ; $4e17: $00
    ld a, b                                       ; $4e18: $78
    nop                                           ; $4e19: $00
    jp RST_00                                     ; $4e1a: $c3 $00 $00


    nop                                           ; $4e1d: $00
    rst $38                                       ; $4e1e: $ff
    nop                                           ; $4e1f: $00
    ld bc, $0f00                                  ; $4e20: $01 $00 $0f
    nop                                           ; $4e23: $00
    add a                                         ; $4e24: $87
    nop                                           ; $4e25: $00
    nop                                           ; $4e26: $00
    nop                                           ; $4e27: $00
    ld e, $00                                     ; $4e28: $1e $00
    db $fc                                        ; $4e2a: $fc
    nop                                           ; $4e2b: $00
    nop                                           ; $4e2c: $00
    nop                                           ; $4e2d: $00
    ret nz                                        ; $4e2e: $c0

    nop                                           ; $4e2f: $00
    rlca                                          ; $4e30: $07
    nop                                           ; $4e31: $00
    ldh a, [rP1]                                  ; $4e32: $f0 $00
    rst $38                                       ; $4e34: $ff
    nop                                           ; $4e35: $00
    ret nz                                        ; $4e36: $c0

    nop                                           ; $4e37: $00
    rst $20                                       ; $4e38: $e7
    nop                                           ; $4e39: $00
    inc c                                         ; $4e3a: $0c
    nop                                           ; $4e3b: $00
    rst $20                                       ; $4e3c: $e7
    nop                                           ; $4e3d: $00
    ccf                                           ; $4e3e: $3f
    nop                                           ; $4e3f: $00
    cp $00                                        ; $4e40: $fe $00
    inc bc                                        ; $4e42: $03
    nop                                           ; $4e43: $00
    rst $38                                       ; $4e44: $ff
    nop                                           ; $4e45: $00
    db $fc                                        ; $4e46: $fc
    nop                                           ; $4e47: $00
    rst $38                                       ; $4e48: $ff
    nop                                           ; $4e49: $00
    di                                            ; $4e4a: $f3
    nop                                           ; $4e4b: $00
    rst $38                                       ; $4e4c: $ff
    nop                                           ; $4e4d: $00
    rrca                                          ; $4e4e: $0f
    nop                                           ; $4e4f: $00
    rst $20                                       ; $4e50: $e7
    jr jr_075_4e8f                                ; $4e51: $18 $3c

    jp Jump_075_7887                              ; $4e53: $c3 $87 $78


    rst $38                                       ; $4e56: $ff
    nop                                           ; $4e57: $00
    ld e, $e1                                     ; $4e58: $1e $e1
    db $fc                                        ; $4e5a: $fc
    inc bc                                        ; $4e5b: $03
    ld h, [hl]                                    ; $4e5c: $66
    sbc c                                         ; $4e5d: $99
    call z, $f933                                 ; $4e5e: $cc $33 $f9
    ld b, $f3                                     ; $4e61: $06 $f3
    inc c                                         ; $4e63: $0c
    rst $38                                       ; $4e64: $ff
    nop                                           ; $4e65: $00
    di                                            ; $4e66: $f3
    inc c                                         ; $4e67: $0c
    ld a, [hl]                                    ; $4e68: $7e
    add c                                         ; $4e69: $81
    ccf                                           ; $4e6a: $3f
    ret nz                                        ; $4e6b: $c0

    jr @-$17                                      ; $4e6c: $18 $e7

    rst $38                                       ; $4e6e: $ff
    nop                                           ; $4e6f: $00
    ld bc, $3cfe                                  ; $4e70: $01 $fe $3c
    jp $e11e                                      ; $4e73: $c3 $1e $e1


    ret nz                                        ; $4e76: $c0

    ccf                                           ; $4e77: $3f
    nop                                           ; $4e78: $00
    rst $38                                       ; $4e79: $ff
    nop                                           ; $4e7a: $00
    rst $38                                       ; $4e7b: $ff
    sbc b                                         ; $4e7c: $98
    ld h, a                                       ; $4e7d: $67
    nop                                           ; $4e7e: $00
    rst $38                                       ; $4e7f: $ff
    ld hl, sp+$07                                 ; $4e80: $f8 $07
    inc sp                                        ; $4e82: $33
    call z, $ff00                                 ; $4e83: $cc $00 $ff
    ccf                                           ; $4e86: $3f
    ret nz                                        ; $4e87: $c0

    nop                                           ; $4e88: $00
    rst $38                                       ; $4e89: $ff
    di                                            ; $4e8a: $f3
    inc c                                         ; $4e8b: $0c
    add hl, de                                    ; $4e8c: $19
    and $c0                                       ; $4e8d: $e6 $c0

jr_075_4e8f:
    ccf                                           ; $4e8f: $3f
    nop                                           ; $4e90: $00
    rst $38                                       ; $4e91: $ff
    call z, Call_000_00ff                         ; $4e92: $cc $ff $00
    rst $38                                       ; $4e95: $ff
    ldh a, [rIE]                                  ; $4e96: $f0 $ff
    ld e, $ff                                     ; $4e98: $1e $ff
    ret nz                                        ; $4e9a: $c0

    rst $38                                       ; $4e9b: $ff
    ld bc, $f0ff                                  ; $4e9c: $01 $ff $f0
    rst $38                                       ; $4e9f: $ff
    jr @+$01                                      ; $4ea0: $18 $ff

    jp Jump_000_00ff                              ; $4ea2: $c3 $ff $00


    rst $38                                       ; $4ea5: $ff
    inc a                                         ; $4ea6: $3c
    rst $38                                       ; $4ea7: $ff
    nop                                           ; $4ea8: $00
    rst $38                                       ; $4ea9: $ff
    nop                                           ; $4eaa: $00
    rst $38                                       ; $4eab: $ff
    ld hl, sp-$01                                 ; $4eac: $f8 $ff
    nop                                           ; $4eae: $00
    rst $38                                       ; $4eaf: $ff
    add c                                         ; $4eb0: $81
    rst $38                                       ; $4eb1: $ff
    ccf                                           ; $4eb2: $3f
    rst $38                                       ; $4eb3: $ff
    and $ff                                       ; $4eb4: $e6 $ff
    ccf                                           ; $4eb6: $3f
    rst $38                                       ; $4eb7: $ff
    sbc a                                         ; $4eb8: $9f
    rst $38                                       ; $4eb9: $ff
    db $fc                                        ; $4eba: $fc
    rst $38                                       ; $4ebb: $ff
    ld a, a                                       ; $4ebc: $7f
    rst $38                                       ; $4ebd: $ff
    rst $38                                       ; $4ebe: $ff
    rst $38                                       ; $4ebf: $ff
    rst $38                                       ; $4ec0: $ff
    rst $38                                       ; $4ec1: $ff
    ret nz                                        ; $4ec2: $c0

    rst $38                                       ; $4ec3: $ff
    ld h, a                                       ; $4ec4: $67
    rst $38                                       ; $4ec5: $ff
    call z, $ffff                                 ; $4ec6: $cc $ff $ff
    rst $38                                       ; $4ec9: $ff
    call z, $e6ff                                 ; $4eca: $cc $ff $e6
    rst $38                                       ; $4ecd: $ff
    inc a                                         ; $4ece: $3c
    rst $38                                       ; $4ecf: $ff
    add c                                         ; $4ed0: $81
    nop                                           ; $4ed1: $00
    inc sp                                        ; $4ed2: $33
    nop                                           ; $4ed3: $00
    ld bc, $0300                                  ; $4ed4: $01 $00 $03
    nop                                           ; $4ed7: $00
    ld h, b                                       ; $4ed8: $60
    nop                                           ; $4ed9: $00
    ldh a, [rP1]                                  ; $4eda: $f0 $00
    ld a, c                                       ; $4edc: $79
    nop                                           ; $4edd: $00
    ret nz                                        ; $4ede: $c0

    nop                                           ; $4edf: $00
    add c                                         ; $4ee0: $81
    nop                                           ; $4ee1: $00
    jr nc, jr_075_4ee4                            ; $4ee2: $30 $00

jr_075_4ee4:
    sbc [hl]                                      ; $4ee4: $9e
    nop                                           ; $4ee5: $00
    nop                                           ; $4ee6: $00
    nop                                           ; $4ee7: $00
    ld a, b                                       ; $4ee8: $78
    nop                                           ; $4ee9: $00
    nop                                           ; $4eea: $00
    nop                                           ; $4eeb: $00
    and $00                                       ; $4eec: $e6 $00
    inc c                                         ; $4eee: $0c
    nop                                           ; $4eef: $00
    rra                                           ; $4ef0: $1f
    nop                                           ; $4ef1: $00
    inc sp                                        ; $4ef2: $33
    nop                                           ; $4ef3: $00
    rst $38                                       ; $4ef4: $ff
    nop                                           ; $4ef5: $00
    nop                                           ; $4ef6: $00
    nop                                           ; $4ef7: $00
    rst $38                                       ; $4ef8: $ff
    nop                                           ; $4ef9: $00
    ccf                                           ; $4efa: $3f
    nop                                           ; $4efb: $00
    pop hl                                        ; $4efc: $e1
    nop                                           ; $4efd: $00
    rst $38                                       ; $4efe: $ff
    nop                                           ; $4eff: $00
    ld hl, sp+$00                                 ; $4f00: $f8 $00
    rrca                                          ; $4f02: $0f
    nop                                           ; $4f03: $00
    add a                                         ; $4f04: $87
    nop                                           ; $4f05: $00
    rst $38                                       ; $4f06: $ff
    nop                                           ; $4f07: $00
    rst $38                                       ; $4f08: $ff
    nop                                           ; $4f09: $00
    db $fc                                        ; $4f0a: $fc
    nop                                           ; $4f0b: $00
    rst $20                                       ; $4f0c: $e7
    nop                                           ; $4f0d: $00
    db $fc                                        ; $4f0e: $fc
    nop                                           ; $4f0f: $00
    sbc a                                         ; $4f10: $9f
    ld h, b                                       ; $4f11: $60
    inc a                                         ; $4f12: $3c
    jp Jump_000_18e7                              ; $4f13: $c3 $e7 $18


    inc c                                         ; $4f16: $0c
    di                                            ; $4f17: $f3
    rst $38                                       ; $4f18: $ff
    nop                                           ; $4f19: $00
    db $fc                                        ; $4f1a: $fc
    inc bc                                        ; $4f1b: $03
    rra                                           ; $4f1c: $1f
    ldh [$fc], a                                  ; $4f1d: $e0 $fc
    inc bc                                        ; $4f1f: $03
    rst $38                                       ; $4f20: $ff
    nop                                           ; $4f21: $00
    di                                            ; $4f22: $f3
    inc c                                         ; $4f23: $0c
    ld sp, hl                                     ; $4f24: $f9
    ld b, $3f                                     ; $4f25: $06 $3f
    ret nz                                        ; $4f27: $c0

    add a                                         ; $4f28: $87
    ld a, b                                       ; $4f29: $78
    rst $38                                       ; $4f2a: $ff
    nop                                           ; $4f2b: $00
    ld hl, sp+$07                                 ; $4f2c: $f8 $07
    ccf                                           ; $4f2e: $3f
    ret nz                                        ; $4f2f: $c0

    ld bc, $fffe                                  ; $4f30: $01 $fe $ff
    nop                                           ; $4f33: $00
    ld h, b                                       ; $4f34: $60
    sbc a                                         ; $4f35: $9f
    rst $08                                       ; $4f36: $cf
    jr nc, jr_075_4f99                            ; $4f37: $30 $60

    sbc a                                         ; $4f39: $9f
    nop                                           ; $4f3a: $00
    rst $38                                       ; $4f3b: $ff
    ld h, b                                       ; $4f3c: $60
    sbc a                                         ; $4f3d: $9f
    nop                                           ; $4f3e: $00
    rst $38                                       ; $4f3f: $ff
    ld hl, sp+$07                                 ; $4f40: $f8 $07
    nop                                           ; $4f42: $00
    rst $38                                       ; $4f43: $ff
    ld h, [hl]                                    ; $4f44: $66
    sbc c                                         ; $4f45: $99
    nop                                           ; $4f46: $00
    rst $38                                       ; $4f47: $ff
    nop                                           ; $4f48: $00
    rst $38                                       ; $4f49: $ff
    rrca                                          ; $4f4a: $0f
    ldh a, [rP1]                                  ; $4f4b: $f0 $00
    rst $38                                       ; $4f4d: $ff
    inc bc                                        ; $4f4e: $03
    db $fc                                        ; $4f4f: $fc
    ld h, c                                       ; $4f50: $61
    rst $38                                       ; $4f51: $ff
    inc c                                         ; $4f52: $0c
    rst $38                                       ; $4f53: $ff
    ld a, a                                       ; $4f54: $7f
    rst $38                                       ; $4f55: $ff
    nop                                           ; $4f56: $00
    rst $38                                       ; $4f57: $ff
    add [hl]                                      ; $4f58: $86
    rst $38                                       ; $4f59: $ff
    inc c                                         ; $4f5a: $0c
    rst $38                                       ; $4f5b: $ff
    rst $38                                       ; $4f5c: $ff
    rst $38                                       ; $4f5d: $ff
    nop                                           ; $4f5e: $00
    rst $38                                       ; $4f5f: $ff
    add b                                         ; $4f60: $80
    rst $38                                       ; $4f61: $ff
    inc bc                                        ; $4f62: $03
    rst $38                                       ; $4f63: $ff
    add b                                         ; $4f64: $80
    rst $38                                       ; $4f65: $ff
    nop                                           ; $4f66: $00
    rst $38                                       ; $4f67: $ff
    ld h, a                                       ; $4f68: $67
    rst $38                                       ; $4f69: $ff
    ret nz                                        ; $4f6a: $c0

    rst $38                                       ; $4f6b: $ff
    add a                                         ; $4f6c: $87
    rst $38                                       ; $4f6d: $ff
    nop                                           ; $4f6e: $00
    rst $38                                       ; $4f6f: $ff
    inc a                                         ; $4f70: $3c
    rst $38                                       ; $4f71: $ff
    ld a, a                                       ; $4f72: $7f
    rst $38                                       ; $4f73: $ff
    inc sp                                        ; $4f74: $33
    rst $38                                       ; $4f75: $ff
    add a                                         ; $4f76: $87
    rst $38                                       ; $4f77: $ff
    rst $38                                       ; $4f78: $ff
    rst $38                                       ; $4f79: $ff
    cp $ff                                        ; $4f7a: $fe $ff
    rst $08                                       ; $4f7c: $cf
    rst $38                                       ; $4f7d: $ff
    rst $38                                       ; $4f7e: $ff
    rst $38                                       ; $4f7f: $ff
    ret nz                                        ; $4f80: $c0

    rst $38                                       ; $4f81: $ff
    sbc [hl]                                      ; $4f82: $9e
    rst $38                                       ; $4f83: $ff
    ldh a, [rIE]                                  ; $4f84: $f0 $ff
    rst $38                                       ; $4f86: $ff
    rst $38                                       ; $4f87: $ff
    nop                                           ; $4f88: $00
    rst $38                                       ; $4f89: $ff
    ld a, a                                       ; $4f8a: $7f
    rst $38                                       ; $4f8b: $ff
    ret nz                                        ; $4f8c: $c0

    rst $38                                       ; $4f8d: $ff
    sbc c                                         ; $4f8e: $99
    rst $38                                       ; $4f8f: $ff
    ld b, $00                                     ; $4f90: $06 $00
    inc c                                         ; $4f92: $0c
    nop                                           ; $4f93: $00
    nop                                           ; $4f94: $00
    nop                                           ; $4f95: $00
    di                                            ; $4f96: $f3
    nop                                           ; $4f97: $00
    nop                                           ; $4f98: $00

jr_075_4f99:
    nop                                           ; $4f99: $00
    inc bc                                        ; $4f9a: $03
    nop                                           ; $4f9b: $00
    ldh [rP1], a                                  ; $4f9c: $e0 $00
    inc bc                                        ; $4f9e: $03
    nop                                           ; $4f9f: $00
    jr jr_075_4fa2                                ; $4fa0: $18 $00

jr_075_4fa2:
    ret nz                                        ; $4fa2: $c0

    nop                                           ; $4fa3: $00
    ld b, $00                                     ; $4fa4: $06 $00
    ret nz                                        ; $4fa6: $c0

    nop                                           ; $4fa7: $00
    ld a, b                                       ; $4fa8: $78
    nop                                           ; $4fa9: $00
    nop                                           ; $4faa: $00
    nop                                           ; $4fab: $00
    rlca                                          ; $4fac: $07
    nop                                           ; $4fad: $00
    ret nz                                        ; $4fae: $c0

    nop                                           ; $4faf: $00
    cp $00                                        ; $4fb0: $fe $00
    nop                                           ; $4fb2: $00
    nop                                           ; $4fb3: $00
    sbc a                                         ; $4fb4: $9f
    nop                                           ; $4fb5: $00
    jr nc, jr_075_4fb8                            ; $4fb6: $30 $00

jr_075_4fb8:
    cp $00                                        ; $4fb8: $fe $00
    rst $38                                       ; $4fba: $ff
    nop                                           ; $4fbb: $00
    rst $38                                       ; $4fbc: $ff
    nop                                           ; $4fbd: $00
    rst $38                                       ; $4fbe: $ff
    nop                                           ; $4fbf: $00
    rlca                                          ; $4fc0: $07
    nop                                           ; $4fc1: $00
    rst $38                                       ; $4fc2: $ff
    nop                                           ; $4fc3: $00
    sbc c                                         ; $4fc4: $99
    nop                                           ; $4fc5: $00
    rst $38                                       ; $4fc6: $ff
    nop                                           ; $4fc7: $00
    rra                                           ; $4fc8: $1f
    nop                                           ; $4fc9: $00
    db $fc                                        ; $4fca: $fc
    nop                                           ; $4fcb: $00
    rst $38                                       ; $4fcc: $ff
    nop                                           ; $4fcd: $00
    rst $38                                       ; $4fce: $ff
    nop                                           ; $4fcf: $00
    inc c                                         ; $4fd0: $0c
    nop                                           ; $4fd1: $00
    ld h, b                                       ; $4fd2: $60
    nop                                           ; $4fd3: $00
    inc sp                                        ; $4fd4: $33
    nop                                           ; $4fd5: $00
    nop                                           ; $4fd6: $00
    nop                                           ; $4fd7: $00
    ldh a, [rP1]                                  ; $4fd8: $f0 $00
    add a                                         ; $4fda: $87
    nop                                           ; $4fdb: $00
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    rst $38                                       ; $4fde: $ff
    nop                                           ; $4fdf: $00
    inc bc                                        ; $4fe0: $03
    nop                                           ; $4fe1: $00
    ld e, $00                                     ; $4fe2: $1e $00
    rrca                                          ; $4fe4: $0f
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    nop                                           ; $4fe7: $00
    inc a                                         ; $4fe8: $3c
    nop                                           ; $4fe9: $00
    ld sp, hl                                     ; $4fea: $f9
    nop                                           ; $4feb: $00
    nop                                           ; $4fec: $00
    nop                                           ; $4fed: $00
    add c                                         ; $4fee: $81
    nop                                           ; $4fef: $00
    rrca                                          ; $4ff0: $0f
    nop                                           ; $4ff1: $00
    ldh [rP1], a                                  ; $4ff2: $e0 $00
    rst $38                                       ; $4ff4: $ff
    nop                                           ; $4ff5: $00
    add c                                         ; $4ff6: $81
    nop                                           ; $4ff7: $00
    rst $08                                       ; $4ff8: $cf
    nop                                           ; $4ff9: $00
    add hl, de                                    ; $4ffa: $19
    nop                                           ; $4ffb: $00
    rst $08                                       ; $4ffc: $cf

jr_075_4ffd:
    nop                                           ; $4ffd: $00
    ld a, [hl]                                    ; $4ffe: $7e
    nop                                           ; $4fff: $00
    db $fc                                        ; $5000: $fc
    nop                                           ; $5001: $00
    rlca                                          ; $5002: $07
    nop                                           ; $5003: $00
    rst $38                                       ; $5004: $ff
    nop                                           ; $5005: $00
    ld sp, hl                                     ; $5006: $f9
    nop                                           ; $5007: $00
    rst $38                                       ; $5008: $ff
    nop                                           ; $5009: $00
    and $00                                       ; $500a: $e6 $00
    rst $38                                       ; $500c: $ff
    nop                                           ; $500d: $00
    ld e, $00                                     ; $500e: $1e $00
    rst $08                                       ; $5010: $cf
    jr nc, jr_075_508c                            ; $5011: $30 $79

    add [hl]                                      ; $5013: $86
    rrca                                          ; $5014: $0f
    ldh a, [rIE]                                  ; $5015: $f0 $ff
    nop                                           ; $5017: $00
    inc a                                         ; $5018: $3c
    jp $07f8                                      ; $5019: $c3 $f8 $07


    call z, $9933                                 ; $501c: $cc $33 $99
    ld h, [hl]                                    ; $501f: $66
    di                                            ; $5020: $f3
    inc c                                         ; $5021: $0c
    and $19                                       ; $5022: $e6 $19
    rst $38                                       ; $5024: $ff

jr_075_5025:
    nop                                           ; $5025: $00
    rst $20                                       ; $5026: $e7
    jr jr_075_5025                                ; $5027: $18 $fc

    inc bc                                        ; $5029: $03
    ld a, a                                       ; $502a: $7f
    add b                                         ; $502b: $80
    jr nc, jr_075_4ffd                            ; $502c: $30 $cf

    rst $38                                       ; $502e: $ff
    nop                                           ; $502f: $00
    inc bc                                        ; $5030: $03
    db $fc                                        ; $5031: $fc
    ld a, b                                       ; $5032: $78
    add a                                         ; $5033: $87
    inc a                                         ; $5034: $3c
    jp $7f80                                      ; $5035: $c3 $80 $7f


    nop                                           ; $5038: $00
    rst $38                                       ; $5039: $ff
    ld bc, $30fe                                  ; $503a: $01 $fe $30
    rst $08                                       ; $503d: $cf
    ld bc, $f0fe                                  ; $503e: $01 $fe $f0
    rrca                                          ; $5041: $0f
    ld h, [hl]                                    ; $5042: $66
    sbc c                                         ; $5043: $99
    nop                                           ; $5044: $00
    rst $38                                       ; $5045: $ff
    ld a, a                                       ; $5046: $7f
    add b                                         ; $5047: $80
    nop                                           ; $5048: $00
    rst $38                                       ; $5049: $ff
    and $19                                       ; $504a: $e6 $19
    inc sp                                        ; $504c: $33
    call z, $7f80                                 ; $504d: $cc $80 $7f
    nop                                           ; $5050: $00
    rst $38                                       ; $5051: $ff
    sbc c                                         ; $5052: $99
    rst $38                                       ; $5053: $ff
    nop                                           ; $5054: $00
    rst $38                                       ; $5055: $ff
    ldh [rIE], a                                  ; $5056: $e0 $ff
    inc a                                         ; $5058: $3c
    rst $38                                       ; $5059: $ff
    add b                                         ; $505a: $80
    rst $38                                       ; $505b: $ff
    inc bc                                        ; $505c: $03
    rst $38                                       ; $505d: $ff
    ldh [rIE], a                                  ; $505e: $e0 $ff
    jr nc, @+$01                                  ; $5060: $30 $ff

    add a                                         ; $5062: $87
    rst $38                                       ; $5063: $ff
    nop                                           ; $5064: $00
    rst $38                                       ; $5065: $ff
    ld a, c                                       ; $5066: $79
    rst $38                                       ; $5067: $ff
    nop                                           ; $5068: $00
    rst $38                                       ; $5069: $ff
    ld bc, $f0ff                                  ; $506a: $01 $ff $f0
    rst $38                                       ; $506d: $ff
    ld bc, $03ff                                  ; $506e: $01 $ff $03
    rst $38                                       ; $5071: $ff
    ld a, a                                       ; $5072: $7f
    rst $38                                       ; $5073: $ff
    call z, Call_075_7fff                         ; $5074: $cc $ff $7f
    rst $38                                       ; $5077: $ff
    ccf                                           ; $5078: $3f
    rst $38                                       ; $5079: $ff
    ld sp, hl                                     ; $507a: $f9
    rst $38                                       ; $507b: $ff
    rst $38                                       ; $507c: $ff
    rst $38                                       ; $507d: $ff
    cp $ff                                        ; $507e: $fe $ff
    rst $38                                       ; $5080: $ff
    rst $38                                       ; $5081: $ff
    add b                                         ; $5082: $80
    rst $38                                       ; $5083: $ff
    rst $08                                       ; $5084: $cf
    rst $38                                       ; $5085: $ff
    sbc b                                         ; $5086: $98
    rst $38                                       ; $5087: $ff
    rst $38                                       ; $5088: $ff
    rst $38                                       ; $5089: $ff
    sbc c                                         ; $508a: $99
    rst $38                                       ; $508b: $ff

jr_075_508c:
    call z, Call_075_79ff                         ; $508c: $cc $ff $79
    rst $38                                       ; $508f: $ff
    inc bc                                        ; $5090: $03
    nop                                           ; $5091: $00
    ld h, [hl]                                    ; $5092: $66
    nop                                           ; $5093: $00
    inc bc                                        ; $5094: $03
    nop                                           ; $5095: $00
    ld b, $00                                     ; $5096: $06 $00
    ret nz                                        ; $5098: $c0

    nop                                           ; $5099: $00
    ldh [rP1], a                                  ; $509a: $e0 $00
    di                                            ; $509c: $f3
    nop                                           ; $509d: $00
    add b                                         ; $509e: $80
    nop                                           ; $509f: $00
    inc bc                                        ; $50a0: $03
    nop                                           ; $50a1: $00
    ld h, b                                       ; $50a2: $60
    nop                                           ; $50a3: $00
    inc a                                         ; $50a4: $3c
    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    nop                                           ; $50a7: $00
    ldh a, [rP1]                                  ; $50a8: $f0 $00
    ld bc, $cc00                                  ; $50aa: $01 $00 $cc
    nop                                           ; $50ad: $00
    add hl, de                                    ; $50ae: $19
    nop                                           ; $50af: $00
    rra                                           ; $50b0: $1f
    nop                                           ; $50b1: $00
    inc sp                                        ; $50b2: $33
    nop                                           ; $50b3: $00
    rst $38                                       ; $50b4: $ff
    nop                                           ; $50b5: $00
    nop                                           ; $50b6: $00
    nop                                           ; $50b7: $00
    rst $38                                       ; $50b8: $ff
    nop                                           ; $50b9: $00
    ccf                                           ; $50ba: $3f
    nop                                           ; $50bb: $00
    pop hl                                        ; $50bc: $e1
    nop                                           ; $50bd: $00
    rst $38                                       ; $50be: $ff
    nop                                           ; $50bf: $00
    ld hl, sp+$00                                 ; $50c0: $f8 $00
    rrca                                          ; $50c2: $0f
    nop                                           ; $50c3: $00
    add a                                         ; $50c4: $87
    nop                                           ; $50c5: $00
    rst $38                                       ; $50c6: $ff
    nop                                           ; $50c7: $00
    rst $38                                       ; $50c8: $ff
    nop                                           ; $50c9: $00
    db $fc                                        ; $50ca: $fc
    nop                                           ; $50cb: $00
    rst $20                                       ; $50cc: $e7
    nop                                           ; $50cd: $00
    db $fc                                        ; $50ce: $fc
    nop                                           ; $50cf: $00
    sbc a                                         ; $50d0: $9f
    ld h, b                                       ; $50d1: $60
    inc a                                         ; $50d2: $3c
    jp Jump_000_18e7                              ; $50d3: $c3 $e7 $18


    inc c                                         ; $50d6: $0c
    di                                            ; $50d7: $f3
    rst $38                                       ; $50d8: $ff
    nop                                           ; $50d9: $00
    db $fc                                        ; $50da: $fc
    inc bc                                        ; $50db: $03
    rra                                           ; $50dc: $1f
    ldh [$fc], a                                  ; $50dd: $e0 $fc
    inc bc                                        ; $50df: $03
    rst $38                                       ; $50e0: $ff
    nop                                           ; $50e1: $00
    di                                            ; $50e2: $f3
    inc c                                         ; $50e3: $0c
    ld sp, hl                                     ; $50e4: $f9
    ld b, $3f                                     ; $50e5: $06 $3f
    ret nz                                        ; $50e7: $c0

    add a                                         ; $50e8: $87
    ld a, b                                       ; $50e9: $78
    rst $38                                       ; $50ea: $ff
    nop                                           ; $50eb: $00
    ld hl, sp+$07                                 ; $50ec: $f8 $07
    ccf                                           ; $50ee: $3f
    ret nz                                        ; $50ef: $c0

    ld bc, $fffe                                  ; $50f0: $01 $fe $ff
    nop                                           ; $50f3: $00
    ld h, b                                       ; $50f4: $60
    sbc a                                         ; $50f5: $9f
    rst $08                                       ; $50f6: $cf
    jr nc, jr_075_5159                            ; $50f7: $30 $60

    sbc a                                         ; $50f9: $9f
    nop                                           ; $50fa: $00
    rst $38                                       ; $50fb: $ff
    ld h, b                                       ; $50fc: $60
    sbc a                                         ; $50fd: $9f
    nop                                           ; $50fe: $00
    rst $38                                       ; $50ff: $ff
    ld hl, sp+$07                                 ; $5100: $f8 $07
    nop                                           ; $5102: $00
    rst $38                                       ; $5103: $ff
    ld h, [hl]                                    ; $5104: $66
    sbc c                                         ; $5105: $99
    nop                                           ; $5106: $00
    rst $38                                       ; $5107: $ff
    nop                                           ; $5108: $00
    rst $38                                       ; $5109: $ff
    rrca                                          ; $510a: $0f
    ldh a, [rP1]                                  ; $510b: $f0 $00
    rst $38                                       ; $510d: $ff
    inc bc                                        ; $510e: $03
    db $fc                                        ; $510f: $fc
    ld h, c                                       ; $5110: $61
    rst $38                                       ; $5111: $ff
    inc c                                         ; $5112: $0c
    rst $38                                       ; $5113: $ff
    ld a, a                                       ; $5114: $7f
    rst $38                                       ; $5115: $ff
    nop                                           ; $5116: $00
    rst $38                                       ; $5117: $ff
    add [hl]                                      ; $5118: $86
    rst $38                                       ; $5119: $ff
    inc c                                         ; $511a: $0c
    rst $38                                       ; $511b: $ff
    rst $38                                       ; $511c: $ff
    rst $38                                       ; $511d: $ff
    nop                                           ; $511e: $00
    rst $38                                       ; $511f: $ff
    add b                                         ; $5120: $80
    rst $38                                       ; $5121: $ff
    inc bc                                        ; $5122: $03
    rst $38                                       ; $5123: $ff
    add b                                         ; $5124: $80
    rst $38                                       ; $5125: $ff
    nop                                           ; $5126: $00
    rst $38                                       ; $5127: $ff
    ld h, a                                       ; $5128: $67
    rst $38                                       ; $5129: $ff
    ret nz                                        ; $512a: $c0

    rst $38                                       ; $512b: $ff
    add a                                         ; $512c: $87
    rst $38                                       ; $512d: $ff
    nop                                           ; $512e: $00
    rst $38                                       ; $512f: $ff
    ld a, c                                       ; $5130: $79
    rst $38                                       ; $5131: $ff
    rst $38                                       ; $5132: $ff
    rst $38                                       ; $5133: $ff
    ld h, a                                       ; $5134: $67
    rst $38                                       ; $5135: $ff
    rrca                                          ; $5136: $0f
    rst $38                                       ; $5137: $ff
    cp $ff                                        ; $5138: $fe $ff
    db $fc                                        ; $513a: $fc
    rst $38                                       ; $513b: $ff
    sbc a                                         ; $513c: $9f
    rst $38                                       ; $513d: $ff
    rst $38                                       ; $513e: $ff
    rst $38                                       ; $513f: $ff
    add b                                         ; $5140: $80
    rst $38                                       ; $5141: $ff
    inc a                                         ; $5142: $3c
    rst $38                                       ; $5143: $ff
    ldh [rIE], a                                  ; $5144: $e0 $ff
    rst $38                                       ; $5146: $ff
    rst $38                                       ; $5147: $ff
    ld bc, $ffff                                  ; $5148: $01 $ff $ff
    rst $38                                       ; $514b: $ff
    add c                                         ; $514c: $81
    rst $38                                       ; $514d: $ff
    inc sp                                        ; $514e: $33
    rst $38                                       ; $514f: $ff
    inc c                                         ; $5150: $0c
    nop                                           ; $5151: $00
    add hl, de                                    ; $5152: $19
    nop                                           ; $5153: $00
    nop                                           ; $5154: $00
    nop                                           ; $5155: $00
    rst $20                                       ; $5156: $e7
    nop                                           ; $5157: $00
    nop                                           ; $5158: $00

jr_075_5159:
    nop                                           ; $5159: $00
    ld b, $00                                     ; $515a: $06 $00
    ret nz                                        ; $515c: $c0

    nop                                           ; $515d: $00
    rlca                                          ; $515e: $07
    nop                                           ; $515f: $00
    jr nc, jr_075_5162                            ; $5160: $30 $00

jr_075_5162:
    add b                                         ; $5162: $80
    nop                                           ; $5163: $00
    inc c                                         ; $5164: $0c
    nop                                           ; $5165: $00
    add c                                         ; $5166: $81
    nop                                           ; $5167: $00
    ldh a, [rP1]                                  ; $5168: $f0 $00
    nop                                           ; $516a: $00
    nop                                           ; $516b: $00
    rrca                                          ; $516c: $0f
    nop                                           ; $516d: $00
    add b                                         ; $516e: $80
    nop                                           ; $516f: $00
    db $fc                                        ; $5170: $fc
    nop                                           ; $5171: $00
    ld bc, $3f00                                  ; $5172: $01 $00 $3f
    nop                                           ; $5175: $00
    ld h, c                                       ; $5176: $61
    nop                                           ; $5177: $00
    db $fc                                        ; $5178: $fc
    nop                                           ; $5179: $00
    rst $38                                       ; $517a: $ff
    nop                                           ; $517b: $00
    rst $38                                       ; $517c: $ff
    nop                                           ; $517d: $00
    rst $38                                       ; $517e: $ff
    nop                                           ; $517f: $00
    rrca                                          ; $5180: $0f
    nop                                           ; $5181: $00
    cp $00                                        ; $5182: $fe $00
    inc sp                                        ; $5184: $33
    nop                                           ; $5185: $00
    cp $00                                        ; $5186: $fe $00
    ccf                                           ; $5188: $3f
    nop                                           ; $5189: $00
    ld sp, hl                                     ; $518a: $f9
    nop                                           ; $518b: $00
    rst $38                                       ; $518c: $ff
    nop                                           ; $518d: $00
    rst $38                                       ; $518e: $ff
    nop                                           ; $518f: $00
    jr jr_075_5192                                ; $5190: $18 $00

jr_075_5192:
    ret nz                                        ; $5192: $c0

    nop                                           ; $5193: $00
    ld h, [hl]                                    ; $5194: $66
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    ldh [rP1], a                                  ; $5198: $e0 $00
    rrca                                          ; $519a: $0f
    nop                                           ; $519b: $00
    nop                                           ; $519c: $00
    nop                                           ; $519d: $00
    rst $38                                       ; $519e: $ff
    nop                                           ; $519f: $00
    ld b, $00                                     ; $51a0: $06 $00
    inc a                                         ; $51a2: $3c
    nop                                           ; $51a3: $00
    ld e, $00                                     ; $51a4: $1e $00
    nop                                           ; $51a6: $00
    nop                                           ; $51a7: $00
    ld a, c                                       ; $51a8: $79
    nop                                           ; $51a9: $00
    di                                            ; $51aa: $f3
    nop                                           ; $51ab: $00
    nop                                           ; $51ac: $00
    nop                                           ; $51ad: $00
    inc bc                                        ; $51ae: $03
    nop                                           ; $51af: $00
    rra                                           ; $51b0: $1f
    nop                                           ; $51b1: $00
    ret nz                                        ; $51b2: $c0

    nop                                           ; $51b3: $00
    rst $38                                       ; $51b4: $ff
    nop                                           ; $51b5: $00
    inc bc                                        ; $51b6: $03
    nop                                           ; $51b7: $00
    sbc a                                         ; $51b8: $9f
    nop                                           ; $51b9: $00
    inc sp                                        ; $51ba: $33
    nop                                           ; $51bb: $00
    sbc a                                         ; $51bc: $9f
    nop                                           ; $51bd: $00
    db $fc                                        ; $51be: $fc
    nop                                           ; $51bf: $00
    ld hl, sp+$00                                 ; $51c0: $f8 $00
    rrca                                          ; $51c2: $0f
    nop                                           ; $51c3: $00
    rst $38                                       ; $51c4: $ff
    nop                                           ; $51c5: $00
    di                                            ; $51c6: $f3
    nop                                           ; $51c7: $00
    rst $38                                       ; $51c8: $ff
    nop                                           ; $51c9: $00
    call z, $ff00                                 ; $51ca: $cc $00 $ff
    nop                                           ; $51cd: $00
    inc a                                         ; $51ce: $3c
    nop                                           ; $51cf: $00
    sbc a                                         ; $51d0: $9f
    ld h, b                                       ; $51d1: $60
    di                                            ; $51d2: $f3
    inc c                                         ; $51d3: $0c
    rra                                           ; $51d4: $1f
    ldh [rIE], a                                  ; $51d5: $e0 $ff
    nop                                           ; $51d7: $00
    ld a, c                                       ; $51d8: $79
    add [hl]                                      ; $51d9: $86
    ldh a, [rIF]                                  ; $51da: $f0 $0f
    sbc b                                         ; $51dc: $98
    ld h, a                                       ; $51dd: $67
    inc sp                                        ; $51de: $33
    call z, Call_000_18e7                         ; $51df: $cc $e7 $18
    call z, $fe33                                 ; $51e2: $cc $33 $fe
    ld bc, $30cf                                  ; $51e5: $01 $cf $30
    ld hl, sp+$07                                 ; $51e8: $f8 $07
    rst $38                                       ; $51ea: $ff
    nop                                           ; $51eb: $00
    ld h, c                                       ; $51ec: $61
    sbc [hl]                                      ; $51ed: $9e
    rst $38                                       ; $51ee: $ff
    nop                                           ; $51ef: $00
    rlca                                          ; $51f0: $07
    ld hl, sp-$10                                 ; $51f1: $f8 $f0
    rrca                                          ; $51f3: $0f
    ld a, b                                       ; $51f4: $78
    add a                                         ; $51f5: $87
    nop                                           ; $51f6: $00
    rst $38                                       ; $51f7: $ff
    nop                                           ; $51f8: $00
    rst $38                                       ; $51f9: $ff
    inc bc                                        ; $51fa: $03
    db $fc                                        ; $51fb: $fc
    ld h, b                                       ; $51fc: $60
    sbc a                                         ; $51fd: $9f
    inc bc                                        ; $51fe: $03
    db $fc                                        ; $51ff: $fc
    ldh [$1f], a                                  ; $5200: $e0 $1f
    call z, $0033                                 ; $5202: $cc $33 $00
    rst $38                                       ; $5205: $ff
    rst $38                                       ; $5206: $ff
    nop                                           ; $5207: $00
    nop                                           ; $5208: $00
    rst $38                                       ; $5209: $ff
    call z, Call_075_6633                         ; $520a: $cc $33 $66
    sbc c                                         ; $520d: $99
    nop                                           ; $520e: $00
    rst $38                                       ; $520f: $ff
    nop                                           ; $5210: $00
    rst $38                                       ; $5211: $ff
    inc sp                                        ; $5212: $33
    rst $38                                       ; $5213: $ff
    nop                                           ; $5214: $00
    rst $38                                       ; $5215: $ff
    ret nz                                        ; $5216: $c0

    rst $38                                       ; $5217: $ff
    ld a, b                                       ; $5218: $78
    rst $38                                       ; $5219: $ff
    nop                                           ; $521a: $00
    rst $38                                       ; $521b: $ff
    rlca                                          ; $521c: $07
    rst $38                                       ; $521d: $ff
    ret nz                                        ; $521e: $c0

    rst $38                                       ; $521f: $ff
    ld h, b                                       ; $5220: $60
    rst $38                                       ; $5221: $ff
    rrca                                          ; $5222: $0f
    rst $38                                       ; $5223: $ff
    nop                                           ; $5224: $00
    rst $38                                       ; $5225: $ff
    di                                            ; $5226: $f3
    rst $38                                       ; $5227: $ff
    nop                                           ; $5228: $00
    rst $38                                       ; $5229: $ff
    inc bc                                        ; $522a: $03
    rst $38                                       ; $522b: $ff
    ldh [rIE], a                                  ; $522c: $e0 $ff
    inc bc                                        ; $522e: $03
    rst $38                                       ; $522f: $ff
    rlca                                          ; $5230: $07
    rst $38                                       ; $5231: $ff
    rst $38                                       ; $5232: $ff
    rst $38                                       ; $5233: $ff
    sbc c                                         ; $5234: $99
    rst $38                                       ; $5235: $ff
    rst $38                                       ; $5236: $ff
    rst $38                                       ; $5237: $ff
    ld a, a                                       ; $5238: $7f
    rst $38                                       ; $5239: $ff
    di                                            ; $523a: $f3
    rst $38                                       ; $523b: $ff
    rst $38                                       ; $523c: $ff
    rst $38                                       ; $523d: $ff
    db $fc                                        ; $523e: $fc
    rst $38                                       ; $523f: $ff
    cp $ff                                        ; $5240: $fe $ff
    nop                                           ; $5242: $00
    rst $38                                       ; $5243: $ff
    sbc a                                         ; $5244: $9f
    rst $38                                       ; $5245: $ff
    jr nc, @+$01                                  ; $5246: $30 $ff

    cp $ff                                        ; $5248: $fe $ff
    inc sp                                        ; $524a: $33
    rst $38                                       ; $524b: $ff
    sbc c                                         ; $524c: $99
    rst $38                                       ; $524d: $ff
    di                                            ; $524e: $f3
    rst $38                                       ; $524f: $ff
    ld b, $00                                     ; $5250: $06 $00
    call z, $0600                                 ; $5252: $cc $00 $06
    nop                                           ; $5255: $00
    inc c                                         ; $5256: $0c
    nop                                           ; $5257: $00
    add c                                         ; $5258: $81
    nop                                           ; $5259: $00
    ret nz                                        ; $525a: $c0

    nop                                           ; $525b: $00
    rst $20                                       ; $525c: $e7
    nop                                           ; $525d: $00
    nop                                           ; $525e: $00
    nop                                           ; $525f: $00
    ld b, $00                                     ; $5260: $06 $00
    ret nz                                        ; $5262: $c0

    nop                                           ; $5263: $00
    ld a, b                                       ; $5264: $78
    nop                                           ; $5265: $00
    nop                                           ; $5266: $00
    nop                                           ; $5267: $00
    pop hl                                        ; $5268: $e1
    nop                                           ; $5269: $00
    inc bc                                        ; $526a: $03
    nop                                           ; $526b: $00
    sbc c                                         ; $526c: $99
    nop                                           ; $526d: $00
    inc sp                                        ; $526e: $33
    nop                                           ; $526f: $00
    ccf                                           ; $5270: $3f
    nop                                           ; $5271: $00
    ld h, [hl]                                    ; $5272: $66
    nop                                           ; $5273: $00
    rst $38                                       ; $5274: $ff
    nop                                           ; $5275: $00
    ld bc, $ff00                                  ; $5276: $01 $00 $ff
    nop                                           ; $5279: $00
    ld a, a                                       ; $527a: $7f
    nop                                           ; $527b: $00
    jp $ff00                                      ; $527c: $c3 $00 $ff


    nop                                           ; $527f: $00
    ldh a, [rP1]                                  ; $5280: $f0 $00
    ld e, $00                                     ; $5282: $1e $00
    rrca                                          ; $5284: $0f
    nop                                           ; $5285: $00
    cp $00                                        ; $5286: $fe $00
    rst $38                                       ; $5288: $ff
    nop                                           ; $5289: $00
    ld hl, sp+$00                                 ; $528a: $f8 $00
    rst $08                                       ; $528c: $cf
    nop                                           ; $528d: $00
    ld sp, hl                                     ; $528e: $f9
    nop                                           ; $528f: $00
    ccf                                           ; $5290: $3f
    ret nz                                        ; $5291: $c0

    ld a, c                                       ; $5292: $79
    add [hl]                                      ; $5293: $86
    rst $08                                       ; $5294: $cf
    jr nc, jr_075_52af                            ; $5295: $30 $18

    rst $20                                       ; $5297: $e7
    rst $38                                       ; $5298: $ff
    nop                                           ; $5299: $00
    ld sp, hl                                     ; $529a: $f9
    ld b, $3f                                     ; $529b: $06 $3f
    ret nz                                        ; $529d: $c0

    ld hl, sp+$07                                 ; $529e: $f8 $07
    rst $38                                       ; $52a0: $ff
    nop                                           ; $52a1: $00
    and $19                                       ; $52a2: $e6 $19
    di                                            ; $52a4: $f3
    inc c                                         ; $52a5: $0c
    ld a, [hl]                                    ; $52a6: $7e
    add c                                         ; $52a7: $81
    rrca                                          ; $52a8: $0f
    ldh a, [rIE]                                  ; $52a9: $f0 $ff
    nop                                           ; $52ab: $00
    ldh a, [rIF]                                  ; $52ac: $f0 $0f
    ld a, a                                       ; $52ae: $7f

jr_075_52af:
    add b                                         ; $52af: $80
    inc bc                                        ; $52b0: $03
    db $fc                                        ; $52b1: $fc
    cp $01                                        ; $52b2: $fe $01
    ret nz                                        ; $52b4: $c0

    ccf                                           ; $52b5: $3f
    sbc [hl]                                      ; $52b6: $9e
    ld h, c                                       ; $52b7: $61
    ret nz                                        ; $52b8: $c0

    ccf                                           ; $52b9: $3f
    nop                                           ; $52ba: $00
    rst $38                                       ; $52bb: $ff
    ret nz                                        ; $52bc: $c0

    ccf                                           ; $52bd: $3f
    nop                                           ; $52be: $00
    rst $38                                       ; $52bf: $ff
    ldh a, [rIF]                                  ; $52c0: $f0 $0f
    ld bc, $ccfe                                  ; $52c2: $01 $fe $cc
    inc sp                                        ; $52c5: $33
    ld bc, $00fe                                  ; $52c6: $01 $fe $00
    rst $38                                       ; $52c9: $ff
    ld e, $e1                                     ; $52ca: $1e $e1
    nop                                           ; $52cc: $00
    rst $38                                       ; $52cd: $ff
    ld b, $f9                                     ; $52ce: $06 $f9
    jp Jump_000_18ff                              ; $52d0: $c3 $ff $18


    rst $38                                       ; $52d3: $ff
    rst $38                                       ; $52d4: $ff
    rst $38                                       ; $52d5: $ff
    nop                                           ; $52d6: $00
    rst $38                                       ; $52d7: $ff
    inc c                                         ; $52d8: $0c
    rst $38                                       ; $52d9: $ff
    add hl, de                                    ; $52da: $19
    rst $38                                       ; $52db: $ff
    rst $38                                       ; $52dc: $ff
    rst $38                                       ; $52dd: $ff
    nop                                           ; $52de: $00
    rst $38                                       ; $52df: $ff
    nop                                           ; $52e0: $00
    rst $38                                       ; $52e1: $ff
    ld b, $ff                                     ; $52e2: $06 $ff
    nop                                           ; $52e4: $00
    rst $38                                       ; $52e5: $ff
    nop                                           ; $52e6: $00
    rst $38                                       ; $52e7: $ff
    rst $08                                       ; $52e8: $cf
    rst $38                                       ; $52e9: $ff
    add b                                         ; $52ea: $80
    rst $38                                       ; $52eb: $ff
    rrca                                          ; $52ec: $0f
    rst $38                                       ; $52ed: $ff
    nop                                           ; $52ee: $00
    rst $38                                       ; $52ef: $ff
    di                                            ; $52f0: $f3
    rst $38                                       ; $52f1: $ff
    cp $ff                                        ; $52f2: $fe $ff
    rst $08                                       ; $52f4: $cf
    rst $38                                       ; $52f5: $ff
    rra                                           ; $52f6: $1f
    rst $38                                       ; $52f7: $ff
    db $fc                                        ; $52f8: $fc
    rst $38                                       ; $52f9: $ff
    ld sp, hl                                     ; $52fa: $f9
    rst $38                                       ; $52fb: $ff
    ccf                                           ; $52fc: $3f
    rst $38                                       ; $52fd: $ff
    cp $ff                                        ; $52fe: $fe $ff
    nop                                           ; $5300: $00
    rst $38                                       ; $5301: $ff
    ld a, c                                       ; $5302: $79
    rst $38                                       ; $5303: $ff
    ret nz                                        ; $5304: $c0

    rst $38                                       ; $5305: $ff
    cp $ff                                        ; $5306: $fe $ff
    inc bc                                        ; $5308: $03
    rst $38                                       ; $5309: $ff
    rst $38                                       ; $530a: $ff
    rst $38                                       ; $530b: $ff
    inc bc                                        ; $530c: $03
    rst $38                                       ; $530d: $ff
    ld h, a                                       ; $530e: $67
    rst $38                                       ; $530f: $ff
    jr jr_075_5312                                ; $5310: $18 $00

jr_075_5312:
    inc sp                                        ; $5312: $33
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    rst $08                                       ; $5316: $cf
    nop                                           ; $5317: $00
    ld bc, $0c00                                  ; $5318: $01 $00 $0c
    nop                                           ; $531b: $00
    add b                                         ; $531c: $80
    nop                                           ; $531d: $00
    rrca                                          ; $531e: $0f
    nop                                           ; $531f: $00
    ld h, b                                       ; $5320: $60
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    jr jr_075_5326                                ; $5324: $18 $00

jr_075_5326:
    inc bc                                        ; $5326: $03
    nop                                           ; $5327: $00
    ldh [rP1], a                                  ; $5328: $e0 $00
    nop                                           ; $532a: $00
    nop                                           ; $532b: $00
    rra                                           ; $532c: $1f
    nop                                           ; $532d: $00
    nop                                           ; $532e: $00
    nop                                           ; $532f: $00
    ld hl, sp+$00                                 ; $5330: $f8 $00
    inc bc                                        ; $5332: $03
    nop                                           ; $5333: $00
    ld a, [hl]                                    ; $5334: $7e
    nop                                           ; $5335: $00
    jp $f800                                      ; $5336: $c3 $00 $f8


    nop                                           ; $5339: $00
    rst $38                                       ; $533a: $ff
    nop                                           ; $533b: $00
    rst $38                                       ; $533c: $ff
    nop                                           ; $533d: $00
    rst $38                                       ; $533e: $ff

jr_075_533f:
    nop                                           ; $533f: $00
    rra                                           ; $5340: $1f
    nop                                           ; $5341: $00
    db $fc                                        ; $5342: $fc
    nop                                           ; $5343: $00
    ld h, [hl]                                    ; $5344: $66
    nop                                           ; $5345: $00
    db $fc                                        ; $5346: $fc
    nop                                           ; $5347: $00
    ld a, a                                       ; $5348: $7f
    nop                                           ; $5349: $00
    di                                            ; $534a: $f3
    nop                                           ; $534b: $00
    rst $38                                       ; $534c: $ff
    nop                                           ; $534d: $00
    rst $38                                       ; $534e: $ff
    nop                                           ; $534f: $00
    ld h, b                                       ; $5350: $60
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    sbc b                                         ; $5354: $98
    nop                                           ; $5355: $00
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    add c                                         ; $5358: $81
    nop                                           ; $5359: $00
    ccf                                           ; $535a: $3f
    nop                                           ; $535b: $00
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00

jr_075_535e:
    db $fc                                        ; $535e: $fc
    nop                                           ; $535f: $00
    jr jr_075_5362                                ; $5360: $18 $00

jr_075_5362:
    di                                            ; $5362: $f3
    nop                                           ; $5363: $00
    ld a, c                                       ; $5364: $79
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    rst $20                                       ; $5368: $e7
    nop                                           ; $5369: $00
    call z, RST_00                                ; $536a: $cc $00 $00
    nop                                           ; $536d: $00
    rrca                                          ; $536e: $0f
    nop                                           ; $536f: $00
    ld a, a                                       ; $5370: $7f
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    rst $38                                       ; $5374: $ff
    nop                                           ; $5375: $00
    rrca                                          ; $5376: $0f
    nop                                           ; $5377: $00
    ld a, a                                       ; $5378: $7f
    nop                                           ; $5379: $00
    rst $08                                       ; $537a: $cf
    nop                                           ; $537b: $00
    ld a, a                                       ; $537c: $7f
    nop                                           ; $537d: $00
    ldh a, [rP1]                                  ; $537e: $f0 $00
    ldh [rP1], a                                  ; $5380: $e0 $00
    ccf                                           ; $5382: $3f
    nop                                           ; $5383: $00
    rst $38                                       ; $5384: $ff
    nop                                           ; $5385: $00
    call z, $fe00                                 ; $5386: $cc $00 $fe
    nop                                           ; $5389: $00
    jr nc, jr_075_538c                            ; $538a: $30 $00

jr_075_538c:
    cp $00                                        ; $538c: $fe $00
    di                                            ; $538e: $f3
    nop                                           ; $538f: $00
    ld a, a                                       ; $5390: $7f
    add b                                         ; $5391: $80
    rst $08                                       ; $5392: $cf
    jr nc, jr_075_5414                            ; $5393: $30 $7f

    add b                                         ; $5395: $80
    rst $38                                       ; $5396: $ff
    nop                                           ; $5397: $00
    rst $20                                       ; $5398: $e7
    jr jr_075_535e                                ; $5399: $18 $c3

    inc a                                         ; $539b: $3c
    ld h, c                                       ; $539c: $61
    sbc [hl]                                      ; $539d: $9e
    rst $08                                       ; $539e: $cf
    jr nc, jr_075_533f                            ; $539f: $30 $9e

    ld h, c                                       ; $53a1: $61
    inc sp                                        ; $53a2: $33
    call z, $07f8                                 ; $53a3: $cc $f8 $07
    ccf                                           ; $53a6: $3f
    ret nz                                        ; $53a7: $c0

    pop hl                                        ; $53a8: $e1
    ld e, $ff                                     ; $53a9: $1e $ff
    nop                                           ; $53ab: $00
    add [hl]                                      ; $53ac: $86
    ld a, c                                       ; $53ad: $79
    db $fc                                        ; $53ae: $fc
    inc bc                                        ; $53af: $03
    rrca                                          ; $53b0: $0f
    ldh a, [$e1]                                  ; $53b1: $f0 $e1
    ld e, $f0                                     ; $53b3: $1e $f0
    rrca                                          ; $53b5: $0f
    ld bc, $00fe                                  ; $53b6: $01 $fe $00
    rst $38                                       ; $53b9: $ff
    rlca                                          ; $53ba: $07
    ld hl, sp-$40                                 ; $53bb: $f8 $c0
    ccf                                           ; $53bd: $3f
    ld b, $f9                                     ; $53be: $06 $f9
    ret nz                                        ; $53c0: $c0

    ccf                                           ; $53c1: $3f
    sbc c                                         ; $53c2: $99
    ld h, [hl]                                    ; $53c3: $66
    nop                                           ; $53c4: $00
    rst $38                                       ; $53c5: $ff
    cp $01                                        ; $53c6: $fe $01
    nop                                           ; $53c8: $00
    rst $38                                       ; $53c9: $ff
    sbc b                                         ; $53ca: $98
    ld h, a                                       ; $53cb: $67
    call z, $0033                                 ; $53cc: $cc $33 $00
    rst $38                                       ; $53cf: $ff
    nop                                           ; $53d0: $00
    rst $38                                       ; $53d1: $ff
    ld h, [hl]                                    ; $53d2: $66
    rst $38                                       ; $53d3: $ff
    nop                                           ; $53d4: $00
    rst $38                                       ; $53d5: $ff
    add c                                         ; $53d6: $81
    rst $38                                       ; $53d7: $ff
    ldh a, [rIE]                                  ; $53d8: $f0 $ff
    nop                                           ; $53da: $00
    rst $38                                       ; $53db: $ff
    rrca                                          ; $53dc: $0f
    rst $38                                       ; $53dd: $ff
    add b                                         ; $53de: $80
    rst $38                                       ; $53df: $ff
    ret nz                                        ; $53e0: $c0

    rst $38                                       ; $53e1: $ff
    ld e, $ff                                     ; $53e2: $1e $ff
    nop                                           ; $53e4: $00
    rst $38                                       ; $53e5: $ff
    rst $20                                       ; $53e6: $e7
    rst $38                                       ; $53e7: $ff
    nop                                           ; $53e8: $00
    rst $38                                       ; $53e9: $ff
    ld b, $ff                                     ; $53ea: $06 $ff
    ret nz                                        ; $53ec: $c0

    rst $38                                       ; $53ed: $ff
    rlca                                          ; $53ee: $07
    rst $38                                       ; $53ef: $ff
    rrca                                          ; $53f0: $0f
    rst $38                                       ; $53f1: $ff
    cp $ff                                        ; $53f2: $fe $ff
    inc sp                                        ; $53f4: $33
    rst $38                                       ; $53f5: $ff
    cp $ff                                        ; $53f6: $fe $ff
    rst $38                                       ; $53f8: $ff
    rst $38                                       ; $53f9: $ff
    and $ff                                       ; $53fa: $e6 $ff
    rst $38                                       ; $53fc: $ff
    rst $38                                       ; $53fd: $ff
    ld sp, hl                                     ; $53fe: $f9
    rst $38                                       ; $53ff: $ff
    db $fc                                        ; $5400: $fc
    rst $38                                       ; $5401: $ff
    ld bc, $3fff                                  ; $5402: $01 $ff $3f
    rst $38                                       ; $5405: $ff
    ld h, c                                       ; $5406: $61
    rst $38                                       ; $5407: $ff
    db $fc                                        ; $5408: $fc
    rst $38                                       ; $5409: $ff
    ld h, a                                       ; $540a: $67
    rst $38                                       ; $540b: $ff
    inc sp                                        ; $540c: $33
    rst $38                                       ; $540d: $ff
    rst $20                                       ; $540e: $e7
    rst $38                                       ; $540f: $ff
    inc c                                         ; $5410: $0c
    nop                                           ; $5411: $00
    sbc c                                         ; $5412: $99
    nop                                           ; $5413: $00

jr_075_5414:
    inc c                                         ; $5414: $0c
    nop                                           ; $5415: $00
    jr jr_075_5418                                ; $5416: $18 $00

jr_075_5418:
    inc bc                                        ; $5418: $03
    nop                                           ; $5419: $00
    add b                                         ; $541a: $80
    nop                                           ; $541b: $00
    rst $08                                       ; $541c: $cf
    nop                                           ; $541d: $00
    nop                                           ; $541e: $00
    nop                                           ; $541f: $00
    inc c                                         ; $5420: $0c
    nop                                           ; $5421: $00
    add c                                         ; $5422: $81
    nop                                           ; $5423: $00
    ldh a, [rP1]                                  ; $5424: $f0 $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    jp $0700                                      ; $5428: $c3 $00 $07


    nop                                           ; $542b: $00
    inc sp                                        ; $542c: $33
    nop                                           ; $542d: $00
    ld h, [hl]                                    ; $542e: $66
    nop                                           ; $542f: $00
    ccf                                           ; $5430: $3f
    nop                                           ; $5431: $00
    ld h, [hl]                                    ; $5432: $66
    nop                                           ; $5433: $00
    rst $38                                       ; $5434: $ff
    nop                                           ; $5435: $00
    ld bc, $ff00                                  ; $5436: $01 $00 $ff
    nop                                           ; $5439: $00
    ld a, a                                       ; $543a: $7f
    nop                                           ; $543b: $00
    jp $ff00                                      ; $543c: $c3 $00 $ff


    nop                                           ; $543f: $00
    ldh a, [rP1]                                  ; $5440: $f0 $00
    ld e, $00                                     ; $5442: $1e $00
    rrca                                          ; $5444: $0f
    nop                                           ; $5445: $00
    cp $00                                        ; $5446: $fe $00
    rst $38                                       ; $5448: $ff
    nop                                           ; $5449: $00
    ld hl, sp+$00                                 ; $544a: $f8 $00
    rst $08                                       ; $544c: $cf
    nop                                           ; $544d: $00
    ld sp, hl                                     ; $544e: $f9
    nop                                           ; $544f: $00
    ccf                                           ; $5450: $3f
    ret nz                                        ; $5451: $c0

    ld a, c                                       ; $5452: $79
    add [hl]                                      ; $5453: $86
    rst $08                                       ; $5454: $cf
    jr nc, jr_075_546f                            ; $5455: $30 $18

    rst $20                                       ; $5457: $e7
    rst $38                                       ; $5458: $ff
    nop                                           ; $5459: $00
    ld sp, hl                                     ; $545a: $f9
    ld b, $3f                                     ; $545b: $06 $3f
    ret nz                                        ; $545d: $c0

    ld hl, sp+$07                                 ; $545e: $f8 $07
    rst $38                                       ; $5460: $ff
    nop                                           ; $5461: $00
    and $19                                       ; $5462: $e6 $19
    di                                            ; $5464: $f3
    inc c                                         ; $5465: $0c
    ld a, [hl]                                    ; $5466: $7e
    add c                                         ; $5467: $81
    rrca                                          ; $5468: $0f
    ldh a, [rIE]                                  ; $5469: $f0 $ff
    nop                                           ; $546b: $00
    ldh a, [rIF]                                  ; $546c: $f0 $0f
    ld a, a                                       ; $546e: $7f

jr_075_546f:
    add b                                         ; $546f: $80
    inc bc                                        ; $5470: $03
    db $fc                                        ; $5471: $fc
    cp $01                                        ; $5472: $fe $01
    ret nz                                        ; $5474: $c0

    ccf                                           ; $5475: $3f
    sbc [hl]                                      ; $5476: $9e
    ld h, c                                       ; $5477: $61
    ret nz                                        ; $5478: $c0

    ccf                                           ; $5479: $3f
    nop                                           ; $547a: $00
    rst $38                                       ; $547b: $ff
    ret nz                                        ; $547c: $c0

    ccf                                           ; $547d: $3f
    nop                                           ; $547e: $00
    rst $38                                       ; $547f: $ff
    ldh a, [rIF]                                  ; $5480: $f0 $0f
    ld bc, $ccfe                                  ; $5482: $01 $fe $cc
    inc sp                                        ; $5485: $33
    ld bc, $00fe                                  ; $5486: $01 $fe $00
    rst $38                                       ; $5489: $ff
    ld e, $e1                                     ; $548a: $1e $e1
    nop                                           ; $548c: $00
    rst $38                                       ; $548d: $ff
    ld b, $f9                                     ; $548e: $06 $f9
    jp Jump_000_18ff                              ; $5490: $c3 $ff $18


    rst $38                                       ; $5493: $ff
    rst $38                                       ; $5494: $ff
    rst $38                                       ; $5495: $ff
    nop                                           ; $5496: $00
    rst $38                                       ; $5497: $ff
    inc c                                         ; $5498: $0c
    rst $38                                       ; $5499: $ff
    add hl, de                                    ; $549a: $19
    rst $38                                       ; $549b: $ff
    rst $38                                       ; $549c: $ff
    rst $38                                       ; $549d: $ff
    nop                                           ; $549e: $00
    rst $38                                       ; $549f: $ff
    nop                                           ; $54a0: $00
    rst $38                                       ; $54a1: $ff
    ld b, $ff                                     ; $54a2: $06 $ff
    nop                                           ; $54a4: $00
    rst $38                                       ; $54a5: $ff
    nop                                           ; $54a6: $00
    rst $38                                       ; $54a7: $ff
    rst $08                                       ; $54a8: $cf
    rst $38                                       ; $54a9: $ff
    add b                                         ; $54aa: $80
    rst $38                                       ; $54ab: $ff
    rrca                                          ; $54ac: $0f
    rst $38                                       ; $54ad: $ff
    nop                                           ; $54ae: $00
    rst $38                                       ; $54af: $ff
    and $ff                                       ; $54b0: $e6 $ff
    db $fc                                        ; $54b2: $fc
    rst $38                                       ; $54b3: $ff
    sbc a                                         ; $54b4: $9f
    rst $38                                       ; $54b5: $ff
    ccf                                           ; $54b6: $3f
    rst $38                                       ; $54b7: $ff
    ld hl, sp-$01                                 ; $54b8: $f8 $ff
    di                                            ; $54ba: $f3
    rst $38                                       ; $54bb: $ff
    ld a, [hl]                                    ; $54bc: $7e
    rst $38                                       ; $54bd: $ff
    db $fc                                        ; $54be: $fc
    rst $38                                       ; $54bf: $ff
    ld bc, $f3ff                                  ; $54c0: $01 $ff $f3
    rst $38                                       ; $54c3: $ff
    add c                                         ; $54c4: $81
    rst $38                                       ; $54c5: $ff
    db $fc                                        ; $54c6: $fc
    rst $38                                       ; $54c7: $ff
    rlca                                          ; $54c8: $07
    rst $38                                       ; $54c9: $ff
    rst $38                                       ; $54ca: $ff
    rst $38                                       ; $54cb: $ff
    ld b, $ff                                     ; $54cc: $06 $ff
    rst $08                                       ; $54ce: $cf
    rst $38                                       ; $54cf: $ff
    ld h, c                                       ; $54d0: $61
    nop                                           ; $54d1: $00
    call z, RST_00                                ; $54d2: $cc $00 $00
    nop                                           ; $54d5: $00
    inc a                                         ; $54d6: $3c
    nop                                           ; $54d7: $00
    rlca                                          ; $54d8: $07
    nop                                           ; $54d9: $00
    jr nc, jr_075_54dc                            ; $54da: $30 $00

jr_075_54dc:
    nop                                           ; $54dc: $00
    nop                                           ; $54dd: $00
    inc a                                         ; $54de: $3c
    nop                                           ; $54df: $00
    add b                                         ; $54e0: $80
    nop                                           ; $54e1: $00

jr_075_54e2:
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    ld h, b                                       ; $54e4: $60
    nop                                           ; $54e5: $00
    rrca                                          ; $54e6: $0f
    nop                                           ; $54e7: $00
    add b                                         ; $54e8: $80
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    nop                                           ; $54eb: $00
    ld a, [hl]                                    ; $54ec: $7e
    nop                                           ; $54ed: $00
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    ldh [rP1], a                                  ; $54f0: $e0 $00
    rrca                                          ; $54f2: $0f
    nop                                           ; $54f3: $00
    ld sp, hl                                     ; $54f4: $f9
    nop                                           ; $54f5: $00
    rrca                                          ; $54f6: $0f
    nop                                           ; $54f7: $00
    pop hl                                        ; $54f8: $e1
    nop                                           ; $54f9: $00
    rst $38                                       ; $54fa: $ff
    nop                                           ; $54fb: $00
    rst $38                                       ; $54fc: $ff
    nop                                           ; $54fd: $00
    rst $38                                       ; $54fe: $ff
    nop                                           ; $54ff: $00
    ld a, a                                       ; $5500: $7f
    nop                                           ; $5501: $00
    ldh a, [rP1]                                  ; $5502: $f0 $00
    sbc c                                         ; $5504: $99
    nop                                           ; $5505: $00
    di                                            ; $5506: $f3
    nop                                           ; $5507: $00
    rst $38                                       ; $5508: $ff
    nop                                           ; $5509: $00
    rst $08                                       ; $550a: $cf
    nop                                           ; $550b: $00
    rst $38                                       ; $550c: $ff
    nop                                           ; $550d: $00
    rst $38                                       ; $550e: $ff
    nop                                           ; $550f: $00
    ret nz                                        ; $5510: $c0

    nop                                           ; $5511: $00
    ld bc, $3000                                  ; $5512: $01 $00 $30
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    inc bc                                        ; $5518: $03
    nop                                           ; $5519: $00
    ld a, a                                       ; $551a: $7f
    nop                                           ; $551b: $00
    nop                                           ; $551c: $00
    nop                                           ; $551d: $00
    ld hl, sp+$00                                 ; $551e: $f8 $00
    jr nc, jr_075_5522                            ; $5520: $30 $00

jr_075_5522:
    and $00                                       ; $5522: $e6 $00
    di                                            ; $5524: $f3
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    rst $08                                       ; $5528: $cf
    nop                                           ; $5529: $00
    sbc b                                         ; $552a: $98
    nop                                           ; $552b: $00
    nop                                           ; $552c: $00
    nop                                           ; $552d: $00
    rra                                           ; $552e: $1f
    nop                                           ; $552f: $00
    rst $38                                       ; $5530: $ff
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    rst $38                                       ; $5534: $ff
    nop                                           ; $5535: $00
    rra                                           ; $5536: $1f
    nop                                           ; $5537: $00
    rst $38                                       ; $5538: $ff
    nop                                           ; $5539: $00
    sbc [hl]                                      ; $553a: $9e
    nop                                           ; $553b: $00
    rst $38                                       ; $553c: $ff
    nop                                           ; $553d: $00
    pop hl                                        ; $553e: $e1
    nop                                           ; $553f: $00
    ret nz                                        ; $5540: $c0

    nop                                           ; $5541: $00
    ld a, [hl]                                    ; $5542: $7e
    nop                                           ; $5543: $00
    rst $38                                       ; $5544: $ff
    nop                                           ; $5545: $00
    sbc b                                         ; $5546: $98
    nop                                           ; $5547: $00
    db $fc                                        ; $5548: $fc
    nop                                           ; $5549: $00
    ld h, c                                       ; $554a: $61
    nop                                           ; $554b: $00
    db $fc                                        ; $554c: $fc
    nop                                           ; $554d: $00
    rst $20                                       ; $554e: $e7
    nop                                           ; $554f: $00
    rst $38                                       ; $5550: $ff
    nop                                           ; $5551: $00
    sbc [hl]                                      ; $5552: $9e
    ld h, c                                       ; $5553: $61
    rst $38                                       ; $5554: $ff
    nop                                           ; $5555: $00
    cp $01                                        ; $5556: $fe $01
    rst $08                                       ; $5558: $cf
    jr nc, jr_075_54e2                            ; $5559: $30 $87

jr_075_555b:
    ld a, b                                       ; $555b: $78
    jp $9f3c                                      ; $555c: $c3 $3c $9f


    ld h, b                                       ; $555f: $60
    inc a                                         ; $5560: $3c
    jp $9867                                      ; $5561: $c3 $67 $98


    ldh a, [rIF]                                  ; $5564: $f0 $0f
    ld a, a                                       ; $5566: $7f
    add b                                         ; $5567: $80
    jp $ff3c                                      ; $5568: $c3 $3c $ff


    nop                                           ; $556b: $00
    inc c                                         ; $556c: $0c
    di                                            ; $556d: $f3
    ld sp, hl                                     ; $556e: $f9
    ld b, $1f                                     ; $556f: $06 $1f
    ldh [$c3], a                                  ; $5571: $e0 $c3
    inc a                                         ; $5573: $3c
    ldh [$1f], a                                  ; $5574: $e0 $1f
    inc bc                                        ; $5576: $03
    db $fc                                        ; $5577: $fc
    nop                                           ; $5578: $00
    rst $38                                       ; $5579: $ff
    rrca                                          ; $557a: $0f
    ldh a, [$81]                                  ; $557b: $f0 $81
    ld a, [hl]                                    ; $557d: $7e
    inc c                                         ; $557e: $0c
    di                                            ; $557f: $f3
    add b                                         ; $5580: $80
    ld a, a                                       ; $5581: $7f
    inc sp                                        ; $5582: $33
    call z, $fe01                                 ; $5583: $cc $01 $fe
    db $fc                                        ; $5586: $fc
    inc bc                                        ; $5587: $03
    nop                                           ; $5588: $00
    rst $38                                       ; $5589: $ff
    jr nc, jr_075_555b                            ; $558a: $30 $cf

    sbc c                                         ; $558c: $99
    ld h, [hl]                                    ; $558d: $66
    nop                                           ; $558e: $00
    rst $38                                       ; $558f: $ff
    ld bc, $ccff                                  ; $5590: $01 $ff $cc
    rst $38                                       ; $5593: $ff
    nop                                           ; $5594: $00
    rst $38                                       ; $5595: $ff
    inc bc                                        ; $5596: $03
    rst $38                                       ; $5597: $ff
    ldh [rIE], a                                  ; $5598: $e0 $ff
    nop                                           ; $559a: $00
    rst $38                                       ; $559b: $ff
    rra                                           ; $559c: $1f
    rst $38                                       ; $559d: $ff
    nop                                           ; $559e: $00
    rst $38                                       ; $559f: $ff
    add b                                         ; $55a0: $80
    rst $38                                       ; $55a1: $ff
    inc a                                         ; $55a2: $3c
    rst $38                                       ; $55a3: $ff
    nop                                           ; $55a4: $00
    rst $38                                       ; $55a5: $ff
    rst $08                                       ; $55a6: $cf
    rst $38                                       ; $55a7: $ff
    ld bc, $0cff                                  ; $55a8: $01 $ff $0c
    rst $38                                       ; $55ab: $ff
    add b                                         ; $55ac: $80
    rst $38                                       ; $55ad: $ff
    rrca                                          ; $55ae: $0f
    rst $38                                       ; $55af: $ff
    rra                                           ; $55b0: $1f
    rst $38                                       ; $55b1: $ff
    db $fc                                        ; $55b2: $fc
    rst $38                                       ; $55b3: $ff
    ld h, [hl]                                    ; $55b4: $66
    rst $38                                       ; $55b5: $ff
    db $fc                                        ; $55b6: $fc
    rst $38                                       ; $55b7: $ff
    rst $38                                       ; $55b8: $ff
    rst $38                                       ; $55b9: $ff
    call z, $feff                                 ; $55ba: $cc $ff $fe
    rst $38                                       ; $55bd: $ff
    di                                            ; $55be: $f3
    rst $38                                       ; $55bf: $ff
    ld hl, sp-$01                                 ; $55c0: $f8 $ff
    inc bc                                        ; $55c2: $03
    rst $38                                       ; $55c3: $ff
    ld a, [hl]                                    ; $55c4: $7e
    rst $38                                       ; $55c5: $ff
    jp $f9ff                                      ; $55c6: $c3 $ff $f9


    rst $38                                       ; $55c9: $ff
    rst $08                                       ; $55ca: $cf
    rst $38                                       ; $55cb: $ff
    ld h, a                                       ; $55cc: $67
    rst $38                                       ; $55cd: $ff
    rst $08                                       ; $55ce: $cf
    rst $38                                       ; $55cf: $ff
    jr jr_075_55d2                                ; $55d0: $18 $00

jr_075_55d2:
    inc sp                                        ; $55d2: $33
    nop                                           ; $55d3: $00
    add hl, de                                    ; $55d4: $19
    nop                                           ; $55d5: $00
    jr nc, jr_075_55d8                            ; $55d6: $30 $00

jr_075_55d8:
    rlca                                          ; $55d8: $07
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    nop                                           ; $55db: $00
    sbc [hl]                                      ; $55dc: $9e
    nop                                           ; $55dd: $00
    nop                                           ; $55de: $00
    nop                                           ; $55df: $00
    jr jr_075_55e2                                ; $55e0: $18 $00

jr_075_55e2:
    inc bc                                        ; $55e2: $03
    nop                                           ; $55e3: $00
    ldh [rP1], a                                  ; $55e4: $e0 $00
    nop                                           ; $55e6: $00

jr_075_55e7:
    nop                                           ; $55e7: $00
    add [hl]                                      ; $55e8: $86
    nop                                           ; $55e9: $00
    rrca                                          ; $55ea: $0f
    nop                                           ; $55eb: $00
    ld h, a                                       ; $55ec: $67
    nop                                           ; $55ed: $00
    call z, Call_075_7f00                         ; $55ee: $cc $00 $7f
    nop                                           ; $55f1: $00
    call z, $fe00                                 ; $55f2: $cc $00 $fe
    nop                                           ; $55f5: $00
    inc bc                                        ; $55f6: $03
    nop                                           ; $55f7: $00
    rst $38                                       ; $55f8: $ff
    nop                                           ; $55f9: $00
    rst $38                                       ; $55fa: $ff
    nop                                           ; $55fb: $00
    add a                                         ; $55fc: $87
    nop                                           ; $55fd: $00
    rst $38                                       ; $55fe: $ff
    nop                                           ; $55ff: $00
    ldh [rP1], a                                  ; $5600: $e0 $00
    inc a                                         ; $5602: $3c
    nop                                           ; $5603: $00
    rra                                           ; $5604: $1f
    nop                                           ; $5605: $00
    db $fc                                        ; $5606: $fc
    nop                                           ; $5607: $00
    rst $38                                       ; $5608: $ff
    nop                                           ; $5609: $00
    ldh a, [rP1]                                  ; $560a: $f0 $00
    sbc a                                         ; $560c: $9f
    nop                                           ; $560d: $00
    di                                            ; $560e: $f3
    nop                                           ; $560f: $00
    ld a, a                                       ; $5610: $7f
    add b                                         ; $5611: $80
    di                                            ; $5612: $f3
    inc c                                         ; $5613: $0c
    sbc a                                         ; $5614: $9f
    ld h, b                                       ; $5615: $60
    jr nc, jr_075_55e7                            ; $5616: $30 $cf

    cp $01                                        ; $5618: $fe $01
    di                                            ; $561a: $f3
    inc c                                         ; $561b: $0c
    ld a, a                                       ; $561c: $7f
    add b                                         ; $561d: $80
    ldh a, [rIF]                                  ; $561e: $f0 $0f
    cp $01                                        ; $5620: $fe $01
    call z, $e733                                 ; $5622: $cc $33 $e7
    jr @-$02                                      ; $5625: $18 $fc

    inc bc                                        ; $5627: $03
    rra                                           ; $5628: $1f
    ldh [rIE], a                                  ; $5629: $e0 $ff
    nop                                           ; $562b: $00
    ldh [$1f], a                                  ; $562c: $e0 $1f
    rst $38                                       ; $562e: $ff
    nop                                           ; $562f: $00
    rlca                                          ; $5630: $07
    ld hl, sp-$04                                 ; $5631: $f8 $fc
    inc bc                                        ; $5633: $03
    add c                                         ; $5634: $81
    ld a, [hl]                                    ; $5635: $7e
    inc a                                         ; $5636: $3c
    jp $7f80                                      ; $5637: $c3 $80 $7f


    nop                                           ; $563a: $00
    rst $38                                       ; $563b: $ff
    add b                                         ; $563c: $80
    ld a, a                                       ; $563d: $7f
    nop                                           ; $563e: $00
    rst $38                                       ; $563f: $ff
    ldh [$1f], a                                  ; $5640: $e0 $1f
    inc bc                                        ; $5642: $03
    db $fc                                        ; $5643: $fc
    sbc c                                         ; $5644: $99
    ld h, [hl]                                    ; $5645: $66
    inc bc                                        ; $5646: $03
    db $fc                                        ; $5647: $fc
    ld bc, $3cfe                                  ; $5648: $01 $fe $3c
    jp $fe01                                      ; $564b: $c3 $01 $fe


    inc c                                         ; $564e: $0c
    di                                            ; $564f: $f3
    add [hl]                                      ; $5650: $86
    rst $38                                       ; $5651: $ff
    jr nc, @+$01                                  ; $5652: $30 $ff

    cp $ff                                        ; $5654: $fe $ff
    nop                                           ; $5656: $00
    rst $38                                       ; $5657: $ff
    add hl, de                                    ; $5658: $19
    rst $38                                       ; $5659: $ff
    inc sp                                        ; $565a: $33
    rst $38                                       ; $565b: $ff
    cp $ff                                        ; $565c: $fe $ff
    nop                                           ; $565e: $00
    rst $38                                       ; $565f: $ff
    ld bc, $0cff                                  ; $5660: $01 $ff $0c
    rst $38                                       ; $5663: $ff
    ld bc, $00ff                                  ; $5664: $01 $ff $00
    rst $38                                       ; $5667: $ff
    sbc [hl]                                      ; $5668: $9e
    rst $38                                       ; $5669: $ff
    nop                                           ; $566a: $00
    rst $38                                       ; $566b: $ff
    rra                                           ; $566c: $1f
    rst $38                                       ; $566d: $ff
    nop                                           ; $566e: $00
    rst $38                                       ; $566f: $ff
    call z, $f9ff                                 ; $5670: $cc $ff $f9
    rst $38                                       ; $5673: $ff
    ccf                                           ; $5674: $3f
    rst $38                                       ; $5675: $ff
    ld a, a                                       ; $5676: $7f
    rst $38                                       ; $5677: $ff
    ldh a, [rIE]                                  ; $5678: $f0 $ff
    rst $20                                       ; $567a: $e7
    rst $38                                       ; $567b: $ff
    db $fc                                        ; $567c: $fc
    rst $38                                       ; $567d: $ff
    ld sp, hl                                     ; $567e: $f9
    rst $38                                       ; $567f: $ff
    inc bc                                        ; $5680: $03
    rst $38                                       ; $5681: $ff
    rst $20                                       ; $5682: $e7
    rst $38                                       ; $5683: $ff
    inc bc                                        ; $5684: $03
    rst $38                                       ; $5685: $ff
    ld hl, sp-$01                                 ; $5686: $f8 $ff
    rrca                                          ; $5688: $0f
    rst $38                                       ; $5689: $ff
    rst $38                                       ; $568a: $ff
    rst $38                                       ; $568b: $ff
    inc c                                         ; $568c: $0c
    rst $38                                       ; $568d: $ff
    sbc a                                         ; $568e: $9f
    rst $38                                       ; $568f: $ff
    jp $9800                                      ; $5690: $c3 $00 $98


    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    ld a, b                                       ; $5696: $78
    nop                                           ; $5697: $00
    rrca                                          ; $5698: $0f
    nop                                           ; $5699: $00
    ld h, b                                       ; $569a: $60
    nop                                           ; $569b: $00
    nop                                           ; $569c: $00
    nop                                           ; $569d: $00
    ld a, b                                       ; $569e: $78
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    nop                                           ; $56a1: $00
    ld bc, $c000                                  ; $56a2: $01 $00 $c0
    nop                                           ; $56a5: $00
    ld e, $00                                     ; $56a6: $1e $00
    nop                                           ; $56a8: $00
    nop                                           ; $56a9: $00
    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    db $fc                                        ; $56ac: $fc
    nop                                           ; $56ad: $00
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    ret nz                                        ; $56b0: $c0

    nop                                           ; $56b1: $00
    rra                                           ; $56b2: $1f
    nop                                           ; $56b3: $00
    di                                            ; $56b4: $f3
    nop                                           ; $56b5: $00
    rra                                           ; $56b6: $1f
    nop                                           ; $56b7: $00
    jp $ff00                                      ; $56b8: $c3 $00 $ff


    nop                                           ; $56bb: $00
    rst $38                                       ; $56bc: $ff
    nop                                           ; $56bd: $00
    rst $38                                       ; $56be: $ff
    nop                                           ; $56bf: $00
    rst $38                                       ; $56c0: $ff
    nop                                           ; $56c1: $00
    ldh [rP1], a                                  ; $56c2: $e0 $00
    inc sp                                        ; $56c4: $33
    nop                                           ; $56c5: $00
    and $00                                       ; $56c6: $e6 $00
    rst $38                                       ; $56c8: $ff
    nop                                           ; $56c9: $00
    sbc a                                         ; $56ca: $9f
    nop                                           ; $56cb: $00
    rst $38                                       ; $56cc: $ff
    nop                                           ; $56cd: $00
    rst $38                                       ; $56ce: $ff
    nop                                           ; $56cf: $00
    add b                                         ; $56d0: $80
    nop                                           ; $56d1: $00
    inc bc                                        ; $56d2: $03
    nop                                           ; $56d3: $00
    ld h, c                                       ; $56d4: $61
    nop                                           ; $56d5: $00
    nop                                           ; $56d6: $00
    nop                                           ; $56d7: $00
    rlca                                          ; $56d8: $07
    nop                                           ; $56d9: $00
    rst $38                                       ; $56da: $ff
    nop                                           ; $56db: $00
    nop                                           ; $56dc: $00
    nop                                           ; $56dd: $00
    ldh a, [rP1]                                  ; $56de: $f0 $00
    ld h, c                                       ; $56e0: $61
    nop                                           ; $56e1: $00
    call z, $e600                                 ; $56e2: $cc $00 $e6
    nop                                           ; $56e5: $00
    nop                                           ; $56e6: $00
    nop                                           ; $56e7: $00
    sbc [hl]                                      ; $56e8: $9e
    nop                                           ; $56e9: $00
    jr nc, jr_075_56ec                            ; $56ea: $30 $00

jr_075_56ec:
    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    ccf                                           ; $56ee: $3f
    nop                                           ; $56ef: $00
    rst $38                                       ; $56f0: $ff
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    nop                                           ; $56f3: $00
    rst $38                                       ; $56f4: $ff
    nop                                           ; $56f5: $00
    ccf                                           ; $56f6: $3f
    nop                                           ; $56f7: $00
    rst $38                                       ; $56f8: $ff
    nop                                           ; $56f9: $00
    inc a                                         ; $56fa: $3c
    nop                                           ; $56fb: $00
    rst $38                                       ; $56fc: $ff
    nop                                           ; $56fd: $00
    jp $8100                                      ; $56fe: $c3 $00 $81


    nop                                           ; $5701: $00
    db $fc                                        ; $5702: $fc
    nop                                           ; $5703: $00
    rst $38                                       ; $5704: $ff
    nop                                           ; $5705: $00

jr_075_5706:
    jr nc, jr_075_5708                            ; $5706: $30 $00

jr_075_5708:
    ld sp, hl                                     ; $5708: $f9
    nop                                           ; $5709: $00
    jp $f900                                      ; $570a: $c3 $00 $f9


    nop                                           ; $570d: $00
    rst $08                                       ; $570e: $cf
    nop                                           ; $570f: $00
    cp $01                                        ; $5710: $fe $01
    inc a                                         ; $5712: $3c
    jp Jump_000_00ff                              ; $5713: $c3 $ff $00


    db $fc                                        ; $5716: $fc
    inc bc                                        ; $5717: $03
    sbc a                                         ; $5718: $9f
    ld h, b                                       ; $5719: $60
    rrca                                          ; $571a: $0f
    ldh a, [$86]                                  ; $571b: $f0 $86
    ld a, c                                       ; $571d: $79
    ccf                                           ; $571e: $3f
    ret nz                                        ; $571f: $c0

    ld a, c                                       ; $5720: $79
    add [hl]                                      ; $5721: $86
    rst $08                                       ; $5722: $cf
    jr nc, jr_075_5706                            ; $5723: $30 $e1

    ld e, $ff                                     ; $5725: $1e $ff

jr_075_5727:
    nop                                           ; $5727: $00
    add a                                         ; $5728: $87
    ld a, b                                       ; $5729: $78
    rst $38                                       ; $572a: $ff
    nop                                           ; $572b: $00
    add hl, de                                    ; $572c: $19
    and $f3                                       ; $572d: $e6 $f3
    inc c                                         ; $572f: $0c
    ccf                                           ; $5730: $3f
    ret nz                                        ; $5731: $c0

    add [hl]                                      ; $5732: $86
    ld a, c                                       ; $5733: $79
    ret nz                                        ; $5734: $c0

    ccf                                           ; $5735: $3f
    rlca                                          ; $5736: $07
    ld hl, sp+$00                                 ; $5737: $f8 $00
    rst $38                                       ; $5739: $ff
    ld e, $e1                                     ; $573a: $1e $e1
    inc bc                                        ; $573c: $03
    db $fc                                        ; $573d: $fc
    jr jr_075_5727                                ; $573e: $18 $e7

    nop                                           ; $5740: $00
    rst $38                                       ; $5741: $ff
    ld h, a                                       ; $5742: $67
    sbc b                                         ; $5743: $98
    inc bc                                        ; $5744: $03
    db $fc                                        ; $5745: $fc
    ld hl, sp+$07                                 ; $5746: $f8 $07
    nop                                           ; $5748: $00
    rst $38                                       ; $5749: $ff
    ld h, b                                       ; $574a: $60
    sbc a                                         ; $574b: $9f
    inc sp                                        ; $574c: $33
    call z, $ff00                                 ; $574d: $cc $00 $ff
    inc bc                                        ; $5750: $03
    rst $38                                       ; $5751: $ff
    sbc b                                         ; $5752: $98
    rst $38                                       ; $5753: $ff
    nop                                           ; $5754: $00
    rst $38                                       ; $5755: $ff
    rlca                                          ; $5756: $07
    rst $38                                       ; $5757: $ff
    ret nz                                        ; $5758: $c0

    rst $38                                       ; $5759: $ff
    nop                                           ; $575a: $00
    rst $38                                       ; $575b: $ff
    ccf                                           ; $575c: $3f
    rst $38                                       ; $575d: $ff
    nop                                           ; $575e: $00
    rst $38                                       ; $575f: $ff
    nop                                           ; $5760: $00
    rst $38                                       ; $5761: $ff
    ld a, c                                       ; $5762: $79
    rst $38                                       ; $5763: $ff
    nop                                           ; $5764: $00
    rst $38                                       ; $5765: $ff
    sbc [hl]                                      ; $5766: $9e
    rst $38                                       ; $5767: $ff
    inc bc                                        ; $5768: $03
    rst $38                                       ; $5769: $ff
    jr @+$01                                      ; $576a: $18 $ff

    nop                                           ; $576c: $00
    rst $38                                       ; $576d: $ff
    ld e, $ff                                     ; $576e: $1e $ff
    ccf                                           ; $5770: $3f
    rst $38                                       ; $5771: $ff
    ld hl, sp-$01                                 ; $5772: $f8 $ff
    call z, $f9ff                                 ; $5774: $cc $ff $f9
    rst $38                                       ; $5777: $ff
    rst $38                                       ; $5778: $ff
    rst $38                                       ; $5779: $ff
    sbc c                                         ; $577a: $99
    rst $38                                       ; $577b: $ff
    db $fc                                        ; $577c: $fc
    rst $38                                       ; $577d: $ff
    rst $20                                       ; $577e: $e7
    rst $38                                       ; $577f: $ff
    ldh a, [rIE]                                  ; $5780: $f0 $ff
    rlca                                          ; $5782: $07
    rst $38                                       ; $5783: $ff
    db $fc                                        ; $5784: $fc
    rst $38                                       ; $5785: $ff
    add a                                         ; $5786: $87
    rst $38                                       ; $5787: $ff
    di                                            ; $5788: $f3
    rst $38                                       ; $5789: $ff
    sbc a                                         ; $578a: $9f
    rst $38                                       ; $578b: $ff
    rst $08                                       ; $578c: $cf
    rst $38                                       ; $578d: $ff
    sbc a                                         ; $578e: $9f
    rst $38                                       ; $578f: $ff
    jr nc, jr_075_5792                            ; $5790: $30 $00

jr_075_5792:
    ld h, [hl]                                    ; $5792: $66
    nop                                           ; $5793: $00
    inc sp                                        ; $5794: $33
    nop                                           ; $5795: $00
    ld h, b                                       ; $5796: $60
    nop                                           ; $5797: $00
    rrca                                          ; $5798: $0f
    nop                                           ; $5799: $00
    nop                                           ; $579a: $00
    nop                                           ; $579b: $00
    inc a                                         ; $579c: $3c
    nop                                           ; $579d: $00
    ld bc, $3000                                  ; $579e: $01 $00 $30
    nop                                           ; $57a1: $00
    ld b, $00                                     ; $57a2: $06 $00
    ret nz                                        ; $57a4: $c0

    nop                                           ; $57a5: $00
    nop                                           ; $57a6: $00

jr_075_57a7:
    nop                                           ; $57a7: $00
    inc c                                         ; $57a8: $0c
    nop                                           ; $57a9: $00
    ld e, $00                                     ; $57aa: $1e $00
    rst $08                                       ; $57ac: $cf
    nop                                           ; $57ad: $00
    sbc b                                         ; $57ae: $98
    nop                                           ; $57af: $00
    ld a, a                                       ; $57b0: $7f
    nop                                           ; $57b1: $00
    call z, $fe00                                 ; $57b2: $cc $00 $fe
    nop                                           ; $57b5: $00
    inc bc                                        ; $57b6: $03
    nop                                           ; $57b7: $00
    rst $38                                       ; $57b8: $ff
    nop                                           ; $57b9: $00
    rst $38                                       ; $57ba: $ff
    nop                                           ; $57bb: $00
    add a                                         ; $57bc: $87
    nop                                           ; $57bd: $00
    rst $38                                       ; $57be: $ff
    nop                                           ; $57bf: $00
    ldh [rP1], a                                  ; $57c0: $e0 $00
    inc a                                         ; $57c2: $3c
    nop                                           ; $57c3: $00
    rra                                           ; $57c4: $1f
    nop                                           ; $57c5: $00
    db $fc                                        ; $57c6: $fc
    nop                                           ; $57c7: $00
    rst $38                                       ; $57c8: $ff
    nop                                           ; $57c9: $00
    ldh a, [rP1]                                  ; $57ca: $f0 $00
    sbc a                                         ; $57cc: $9f
    nop                                           ; $57cd: $00
    di                                            ; $57ce: $f3
    nop                                           ; $57cf: $00
    ld a, a                                       ; $57d0: $7f
    add b                                         ; $57d1: $80
    di                                            ; $57d2: $f3
    inc c                                         ; $57d3: $0c
    sbc a                                         ; $57d4: $9f
    ld h, b                                       ; $57d5: $60
    jr nc, jr_075_57a7                            ; $57d6: $30 $cf

    cp $01                                        ; $57d8: $fe $01
    di                                            ; $57da: $f3
    inc c                                         ; $57db: $0c
    ld a, a                                       ; $57dc: $7f
    add b                                         ; $57dd: $80
    ldh a, [rIF]                                  ; $57de: $f0 $0f
    cp $01                                        ; $57e0: $fe $01
    call z, $e733                                 ; $57e2: $cc $33 $e7
    jr @-$02                                      ; $57e5: $18 $fc

    inc bc                                        ; $57e7: $03
    rra                                           ; $57e8: $1f
    ldh [rIE], a                                  ; $57e9: $e0 $ff
    nop                                           ; $57eb: $00
    ldh [$1f], a                                  ; $57ec: $e0 $1f
    rst $38                                       ; $57ee: $ff
    nop                                           ; $57ef: $00
    rlca                                          ; $57f0: $07
    ld hl, sp-$04                                 ; $57f1: $f8 $fc
    inc bc                                        ; $57f3: $03
    add c                                         ; $57f4: $81
    ld a, [hl]                                    ; $57f5: $7e
    inc a                                         ; $57f6: $3c
    jp $7f80                                      ; $57f7: $c3 $80 $7f


    nop                                           ; $57fa: $00
    rst $38                                       ; $57fb: $ff
    add b                                         ; $57fc: $80
    ld a, a                                       ; $57fd: $7f
    nop                                           ; $57fe: $00
    rst $38                                       ; $57ff: $ff
    ldh [$1f], a                                  ; $5800: $e0 $1f
    inc bc                                        ; $5802: $03
    db $fc                                        ; $5803: $fc
    sbc c                                         ; $5804: $99
    ld h, [hl]                                    ; $5805: $66
    inc bc                                        ; $5806: $03
    db $fc                                        ; $5807: $fc
    ld bc, $3cfe                                  ; $5808: $01 $fe $3c
    jp $fe01                                      ; $580b: $c3 $01 $fe


    inc c                                         ; $580e: $0c
    di                                            ; $580f: $f3
    add [hl]                                      ; $5810: $86
    rst $38                                       ; $5811: $ff
    jr nc, @+$01                                  ; $5812: $30 $ff

    cp $ff                                        ; $5814: $fe $ff
    nop                                           ; $5816: $00
    rst $38                                       ; $5817: $ff
    add hl, de                                    ; $5818: $19
    rst $38                                       ; $5819: $ff
    inc sp                                        ; $581a: $33
    rst $38                                       ; $581b: $ff
    cp $ff                                        ; $581c: $fe $ff
    nop                                           ; $581e: $00
    rst $38                                       ; $581f: $ff
    ld bc, $0cff                                  ; $5820: $01 $ff $0c
    rst $38                                       ; $5823: $ff
    ld bc, $00ff                                  ; $5824: $01 $ff $00
    rst $38                                       ; $5827: $ff
    sbc [hl]                                      ; $5828: $9e
    rst $38                                       ; $5829: $ff
    nop                                           ; $582a: $00
    rst $38                                       ; $582b: $ff
    rra                                           ; $582c: $1f
    rst $38                                       ; $582d: $ff
    nop                                           ; $582e: $00
    rst $38                                       ; $582f: $ff
    sbc b                                         ; $5830: $98
    rst $38                                       ; $5831: $ff
    di                                            ; $5832: $f3
    rst $38                                       ; $5833: $ff
    ld a, [hl]                                    ; $5834: $7e
    rst $38                                       ; $5835: $ff
    rst $38                                       ; $5836: $ff
    rst $38                                       ; $5837: $ff
    ldh [rIE], a                                  ; $5838: $e0 $ff
    rst $08                                       ; $583a: $cf
    rst $38                                       ; $583b: $ff
    ld hl, sp-$01                                 ; $583c: $f8 $ff
    di                                            ; $583e: $f3
    rst $38                                       ; $583f: $ff
    rlca                                          ; $5840: $07
    rst $38                                       ; $5841: $ff
    rst $08                                       ; $5842: $cf
    rst $38                                       ; $5843: $ff
    ld b, $ff                                     ; $5844: $06 $ff
    ldh a, [rIE]                                  ; $5846: $f0 $ff
    rra                                           ; $5848: $1f
    rst $38                                       ; $5849: $ff
    rst $38                                       ; $584a: $ff
    rst $38                                       ; $584b: $ff
    add hl, de                                    ; $584c: $19
    rst $38                                       ; $584d: $ff
    ccf                                           ; $584e: $3f
    rst $38                                       ; $584f: $ff
    add [hl]                                      ; $5850: $86
    nop                                           ; $5851: $00
    jr nc, jr_075_5854                            ; $5852: $30 $00

jr_075_5854:
    ld bc, $f000                                  ; $5854: $01 $00 $f0
    nop                                           ; $5857: $00
    ld e, $00                                     ; $5858: $1e $00
    ret nz                                        ; $585a: $c0

    nop                                           ; $585b: $00
    ld bc, $f000                                  ; $585c: $01 $00 $f0
    nop                                           ; $585f: $00
    ld bc, $0300                                  ; $5860: $01 $00 $03
    nop                                           ; $5863: $00
    add b                                         ; $5864: $80
    nop                                           ; $5865: $00
    inc a                                         ; $5866: $3c
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    ld hl, sp+$00                                 ; $586c: $f8 $00
    nop                                           ; $586e: $00
    nop                                           ; $586f: $00
    add c                                         ; $5870: $81
    nop                                           ; $5871: $00
    ccf                                           ; $5872: $3f
    nop                                           ; $5873: $00
    and $00                                       ; $5874: $e6 $00
    ccf                                           ; $5876: $3f
    nop                                           ; $5877: $00
    add a                                         ; $5878: $87
    nop                                           ; $5879: $00
    rst $38                                       ; $587a: $ff
    nop                                           ; $587b: $00
    rst $38                                       ; $587c: $ff
    nop                                           ; $587d: $00
    rst $38                                       ; $587e: $ff
    nop                                           ; $587f: $00
    rst $38                                       ; $5880: $ff
    nop                                           ; $5881: $00
    ret nz                                        ; $5882: $c0

    nop                                           ; $5883: $00
    ld h, a                                       ; $5884: $67
    nop                                           ; $5885: $00
    call z, $ff00                                 ; $5886: $cc $00 $ff
    nop                                           ; $5889: $00
    ccf                                           ; $588a: $3f
    nop                                           ; $588b: $00
    rst $38                                       ; $588c: $ff
    nop                                           ; $588d: $00
    rst $38                                       ; $588e: $ff
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    rlca                                          ; $5892: $07
    nop                                           ; $5893: $00
    jp RST_00                                     ; $5894: $c3 $00 $00


    nop                                           ; $5897: $00
    rrca                                          ; $5898: $0f
    nop                                           ; $5899: $00
    cp $00                                        ; $589a: $fe $00
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    ldh [rP1], a                                  ; $589e: $e0 $00
    jp $9800                                      ; $58a0: $c3 $00 $98


    nop                                           ; $58a3: $00
    call z, RST_00                                ; $58a4: $cc $00 $00
    nop                                           ; $58a7: $00
    inc a                                         ; $58a8: $3c
    nop                                           ; $58a9: $00
    ld h, c                                       ; $58aa: $61
    nop                                           ; $58ab: $00
    nop                                           ; $58ac: $00
    nop                                           ; $58ad: $00
    ld a, a                                       ; $58ae: $7f
    nop                                           ; $58af: $00
    rst $38                                       ; $58b0: $ff
    nop                                           ; $58b1: $00
    ld bc, $ff00                                  ; $58b2: $01 $00 $ff
    nop                                           ; $58b5: $00
    ld a, [hl]                                    ; $58b6: $7e
    nop                                           ; $58b7: $00
    rst $38                                       ; $58b8: $ff
    nop                                           ; $58b9: $00
    ld a, c                                       ; $58ba: $79
    nop                                           ; $58bb: $00
    rst $38                                       ; $58bc: $ff
    nop                                           ; $58bd: $00
    add a                                         ; $58be: $87
    nop                                           ; $58bf: $00
    inc bc                                        ; $58c0: $03
    nop                                           ; $58c1: $00
    ld hl, sp+$00                                 ; $58c2: $f8 $00
    rst $38                                       ; $58c4: $ff
    nop                                           ; $58c5: $00
    ld h, b                                       ; $58c6: $60
    nop                                           ; $58c7: $00
    di                                            ; $58c8: $f3
    nop                                           ; $58c9: $00
    add [hl]                                      ; $58ca: $86
    nop                                           ; $58cb: $00
    di                                            ; $58cc: $f3
    nop                                           ; $58cd: $00
    sbc a                                         ; $58ce: $9f

jr_075_58cf:
    nop                                           ; $58cf: $00
    db $fc                                        ; $58d0: $fc
    inc bc                                        ; $58d1: $03
    ld a, c                                       ; $58d2: $79
    add [hl]                                      ; $58d3: $86
    rst $38                                       ; $58d4: $ff
    nop                                           ; $58d5: $00
    ld sp, hl                                     ; $58d6: $f9
    ld b, $3f                                     ; $58d7: $06 $3f
    ret nz                                        ; $58d9: $c0

    rra                                           ; $58da: $1f
    ldh [$0c], a                                  ; $58db: $e0 $0c
    di                                            ; $58dd: $f3
    ld a, a                                       ; $58de: $7f
    add b                                         ; $58df: $80
    di                                            ; $58e0: $f3
    inc c                                         ; $58e1: $0c
    sbc [hl]                                      ; $58e2: $9e
    ld h, c                                       ; $58e3: $61
    jp $ff3c                                      ; $58e4: $c3 $3c $ff


    nop                                           ; $58e7: $00
    rrca                                          ; $58e8: $0f
    ldh a, [$fe]                                  ; $58e9: $f0 $fe
    ld bc, $cc33                                  ; $58eb: $01 $33 $cc
    and $19                                       ; $58ee: $e6 $19
    ld a, [hl]                                    ; $58f0: $7e
    add c                                         ; $58f1: $81
    inc c                                         ; $58f2: $0c
    di                                            ; $58f3: $f3
    add b                                         ; $58f4: $80
    ld a, a                                       ; $58f5: $7f
    rrca                                          ; $58f6: $0f
    ldh a, [rP1]                                  ; $58f7: $f0 $00
    rst $38                                       ; $58f9: $ff
    inc a                                         ; $58fa: $3c
    jp $f906                                      ; $58fb: $c3 $06 $f9


    jr nc, jr_075_58cf                            ; $58fe: $30 $cf

    nop                                           ; $5900: $00
    rst $38                                       ; $5901: $ff
    rst $08                                       ; $5902: $cf
    jr nc, jr_075_590c                            ; $5903: $30 $07

    ld hl, sp-$10                                 ; $5905: $f8 $f0
    rrca                                          ; $5907: $0f
    nop                                           ; $5908: $00
    rst $38                                       ; $5909: $ff
    ret nz                                        ; $590a: $c0

    ccf                                           ; $590b: $3f

jr_075_590c:
    ld h, [hl]                                    ; $590c: $66
    sbc c                                         ; $590d: $99
    nop                                           ; $590e: $00
    rst $38                                       ; $590f: $ff
    ld b, $ff                                     ; $5910: $06 $ff
    jr nc, @+$01                                  ; $5912: $30 $ff

    nop                                           ; $5914: $00
    rst $38                                       ; $5915: $ff
    rrca                                          ; $5916: $0f
    rst $38                                       ; $5917: $ff
    add b                                         ; $5918: $80
    rst $38                                       ; $5919: $ff
    nop                                           ; $591a: $00
    rst $38                                       ; $591b: $ff
    ld a, [hl]                                    ; $591c: $7e
    rst $38                                       ; $591d: $ff
    nop                                           ; $591e: $00
    rst $38                                       ; $591f: $ff
    nop                                           ; $5920: $00
    rst $38                                       ; $5921: $ff
    di                                            ; $5922: $f3
    rst $38                                       ; $5923: $ff
    nop                                           ; $5924: $00
    rst $38                                       ; $5925: $ff
    inc a                                         ; $5926: $3c
    rst $38                                       ; $5927: $ff
    rlca                                          ; $5928: $07
    rst $38                                       ; $5929: $ff
    jr nc, @+$01                                  ; $592a: $30 $ff

    nop                                           ; $592c: $00
    rst $38                                       ; $592d: $ff
    inc a                                         ; $592e: $3c
    rst $38                                       ; $592f: $ff
    ld a, a                                       ; $5930: $7f
    rst $38                                       ; $5931: $ff
    ldh a, [rIE]                                  ; $5932: $f0 $ff
    sbc c                                         ; $5934: $99
    rst $38                                       ; $5935: $ff
    di                                            ; $5936: $f3
    rst $38                                       ; $5937: $ff
    rst $38                                       ; $5938: $ff
    rst $38                                       ; $5939: $ff
    inc sp                                        ; $593a: $33
    rst $38                                       ; $593b: $ff
    ld sp, hl                                     ; $593c: $f9
    rst $38                                       ; $593d: $ff
    rst $08                                       ; $593e: $cf
    rst $38                                       ; $593f: $ff
    ldh [rIE], a                                  ; $5940: $e0 $ff
    rrca                                          ; $5942: $0f
    rst $38                                       ; $5943: $ff
    ld sp, hl                                     ; $5944: $f9
    rst $38                                       ; $5945: $ff
    rrca                                          ; $5946: $0f
    rst $38                                       ; $5947: $ff
    rst $20                                       ; $5948: $e7
    rst $38                                       ; $5949: $ff
    ccf                                           ; $594a: $3f
    rst $38                                       ; $594b: $ff
    sbc a                                         ; $594c: $9f
    rst $38                                       ; $594d: $ff
    ccf                                           ; $594e: $3f
    rst $38                                       ; $594f: $ff
    ld h, b                                       ; $5950: $60
    nop                                           ; $5951: $00
    call z, Call_075_6700                         ; $5952: $cc $00 $67
    nop                                           ; $5955: $00
    ret nz                                        ; $5956: $c0

    nop                                           ; $5957: $00
    ld e, $00                                     ; $5958: $1e $00
    nop                                           ; $595a: $00
    nop                                           ; $595b: $00
    ld a, c                                       ; $595c: $79
    nop                                           ; $595d: $00
    inc bc                                        ; $595e: $03
    nop                                           ; $595f: $00
    ld h, b                                       ; $5960: $60
    nop                                           ; $5961: $00
    inc c                                         ; $5962: $0c
    nop                                           ; $5963: $00
    add b                                         ; $5964: $80
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    jr jr_075_596a                                ; $5968: $18 $00

jr_075_596a:
    inc a                                         ; $596a: $3c
    nop                                           ; $596b: $00
    sbc [hl]                                      ; $596c: $9e
    nop                                           ; $596d: $00
    jr nc, jr_075_5970                            ; $596e: $30 $00

jr_075_5970:
    rst $38                                       ; $5970: $ff
    nop                                           ; $5971: $00
    sbc b                                         ; $5972: $98
    nop                                           ; $5973: $00
    db $fc                                        ; $5974: $fc
    nop                                           ; $5975: $00
    rlca                                          ; $5976: $07
    nop                                           ; $5977: $00
    rst $38                                       ; $5978: $ff
    nop                                           ; $5979: $00
    rst $38                                       ; $597a: $ff
    nop                                           ; $597b: $00
    rrca                                          ; $597c: $0f
    nop                                           ; $597d: $00
    rst $38                                       ; $597e: $ff
    nop                                           ; $597f: $00
    ret nz                                        ; $5980: $c0

    nop                                           ; $5981: $00
    ld a, c                                       ; $5982: $79
    nop                                           ; $5983: $00
    ccf                                           ; $5984: $3f
    nop                                           ; $5985: $00
    ld hl, sp+$00                                 ; $5986: $f8 $00
    rst $38                                       ; $5988: $ff
    nop                                           ; $5989: $00
    pop hl                                        ; $598a: $e1
    nop                                           ; $598b: $00
    ccf                                           ; $598c: $3f
    nop                                           ; $598d: $00
    rst $20                                       ; $598e: $e7
    nop                                           ; $598f: $00
    rst $38                                       ; $5990: $ff
    nop                                           ; $5991: $00
    rst $20                                       ; $5992: $e7
    jr jr_075_59d4                                ; $5993: $18 $3f

    ret nz                                        ; $5995: $c0

    ld h, c                                       ; $5996: $61
    sbc [hl]                                      ; $5997: $9e
    db $fc                                        ; $5998: $fc
    inc bc                                        ; $5999: $03
    rst $20                                       ; $599a: $e7
    jr @+$01                                      ; $599b: $18 $ff

    nop                                           ; $599d: $00
    pop hl                                        ; $599e: $e1

jr_075_599f:
    ld e, $fc                                     ; $599f: $1e $fc
    inc bc                                        ; $59a1: $03
    sbc c                                         ; $59a2: $99
    ld h, [hl]                                    ; $59a3: $66
    rst $08                                       ; $59a4: $cf
    jr nc, jr_075_599f                            ; $59a5: $30 $f8

    rlca                                          ; $59a7: $07
    ccf                                           ; $59a8: $3f
    ret nz                                        ; $59a9: $c0

    rst $38                                       ; $59aa: $ff
    nop                                           ; $59ab: $00
    ret nz                                        ; $59ac: $c0

    ccf                                           ; $59ad: $3f
    rst $38                                       ; $59ae: $ff
    nop                                           ; $59af: $00
    rrca                                          ; $59b0: $0f
    ldh a, [$f8]                                  ; $59b1: $f0 $f8
    rlca                                          ; $59b3: $07
    inc bc                                        ; $59b4: $03
    db $fc                                        ; $59b5: $fc
    ld a, b                                       ; $59b6: $78

jr_075_59b7:
    add a                                         ; $59b7: $87
    nop                                           ; $59b8: $00
    rst $38                                       ; $59b9: $ff
    nop                                           ; $59ba: $00
    rst $38                                       ; $59bb: $ff
    nop                                           ; $59bc: $00
    rst $38                                       ; $59bd: $ff
    nop                                           ; $59be: $00
    rst $38                                       ; $59bf: $ff
    ret nz                                        ; $59c0: $c0

    ccf                                           ; $59c1: $3f
    rlca                                          ; $59c2: $07
    ld hl, sp+$33                                 ; $59c3: $f8 $33
    call z, $f906                                 ; $59c5: $cc $06 $f9
    inc bc                                        ; $59c8: $03
    db $fc                                        ; $59c9: $fc
    ld a, b                                       ; $59ca: $78
    add a                                         ; $59cb: $87
    inc bc                                        ; $59cc: $03
    db $fc                                        ; $59cd: $fc
    jr jr_075_59b7                                ; $59ce: $18 $e7

    inc c                                         ; $59d0: $0c
    rst $38                                       ; $59d1: $ff
    ld h, b                                       ; $59d2: $60
    rst $38                                       ; $59d3: $ff

jr_075_59d4:
    db $fc                                        ; $59d4: $fc
    rst $38                                       ; $59d5: $ff
    nop                                           ; $59d6: $00
    rst $38                                       ; $59d7: $ff
    inc sp                                        ; $59d8: $33
    rst $38                                       ; $59d9: $ff
    ld h, [hl]                                    ; $59da: $66
    rst $38                                       ; $59db: $ff
    db $fc                                        ; $59dc: $fc
    rst $38                                       ; $59dd: $ff
    nop                                           ; $59de: $00
    rst $38                                       ; $59df: $ff
    inc bc                                        ; $59e0: $03
    rst $38                                       ; $59e1: $ff
    jr @+$01                                      ; $59e2: $18 $ff

    inc bc                                        ; $59e4: $03
    rst $38                                       ; $59e5: $ff
    nop                                           ; $59e6: $00
    rst $38                                       ; $59e7: $ff
    inc a                                         ; $59e8: $3c
    rst $38                                       ; $59e9: $ff
    nop                                           ; $59ea: $00
    rst $38                                       ; $59eb: $ff
    ccf                                           ; $59ec: $3f
    rst $38                                       ; $59ed: $ff
    nop                                           ; $59ee: $00
    rst $38                                       ; $59ef: $ff
    jr nc, @+$01                                  ; $59f0: $30 $ff

    rst $20                                       ; $59f2: $e7
    rst $38                                       ; $59f3: $ff
    db $fc                                        ; $59f4: $fc
    rst $38                                       ; $59f5: $ff
    rst $38                                       ; $59f6: $ff
    rst $38                                       ; $59f7: $ff
    ret nz                                        ; $59f8: $c0

    rst $38                                       ; $59f9: $ff
    sbc a                                         ; $59fa: $9f
    rst $38                                       ; $59fb: $ff
    ldh a, [rIE]                                  ; $59fc: $f0 $ff
    and $ff                                       ; $59fe: $e6 $ff
    rrca                                          ; $5a00: $0f
    rst $38                                       ; $5a01: $ff
    sbc a                                         ; $5a02: $9f
    rst $38                                       ; $5a03: $ff
    inc c                                         ; $5a04: $0c
    rst $38                                       ; $5a05: $ff
    pop hl                                        ; $5a06: $e1
    rst $38                                       ; $5a07: $ff
    ccf                                           ; $5a08: $3f
    rst $38                                       ; $5a09: $ff
    rst $38                                       ; $5a0a: $ff
    rst $38                                       ; $5a0b: $ff
    inc sp                                        ; $5a0c: $33
    rst $38                                       ; $5a0d: $ff
    ld a, a                                       ; $5a0e: $7f
    rst $38                                       ; $5a0f: $ff
    inc c                                         ; $5a10: $0c
    nop                                           ; $5a11: $00
    ld h, b                                       ; $5a12: $60
    nop                                           ; $5a13: $00
    inc bc                                        ; $5a14: $03
    nop                                           ; $5a15: $00
    ldh [rP1], a                                  ; $5a16: $e0 $00
    inc a                                         ; $5a18: $3c
    nop                                           ; $5a19: $00
    add b                                         ; $5a1a: $80
    nop                                           ; $5a1b: $00
    inc bc                                        ; $5a1c: $03
    nop                                           ; $5a1d: $00
    ldh [rP1], a                                  ; $5a1e: $e0 $00
    inc bc                                        ; $5a20: $03
    nop                                           ; $5a21: $00
    ld b, $00                                     ; $5a22: $06 $00
    nop                                           ; $5a24: $00
    nop                                           ; $5a25: $00
    ld a, c                                       ; $5a26: $79
    nop                                           ; $5a27: $00
    nop                                           ; $5a28: $00
    nop                                           ; $5a29: $00
    ld bc, $f000                                  ; $5a2a: $01 $00 $f0
    nop                                           ; $5a2d: $00
    ld bc, $0300                                  ; $5a2e: $01 $00 $03
    nop                                           ; $5a31: $00
    ld a, a                                       ; $5a32: $7f
    nop                                           ; $5a33: $00
    call z, Call_075_7f00                         ; $5a34: $cc $00 $7f
    nop                                           ; $5a37: $00
    rrca                                          ; $5a38: $0f
    nop                                           ; $5a39: $00
    cp $00                                        ; $5a3a: $fe $00
    rst $38                                       ; $5a3c: $ff
    nop                                           ; $5a3d: $00
    rst $38                                       ; $5a3e: $ff
    nop                                           ; $5a3f: $00
    rst $38                                       ; $5a40: $ff
    nop                                           ; $5a41: $00
    add b                                         ; $5a42: $80
    nop                                           ; $5a43: $00
    rst $08                                       ; $5a44: $cf
    nop                                           ; $5a45: $00
    sbc b                                         ; $5a46: $98
    nop                                           ; $5a47: $00
    rst $38                                       ; $5a48: $ff
    nop                                           ; $5a49: $00
    ld a, a                                       ; $5a4a: $7f
    nop                                           ; $5a4b: $00
    rst $38                                       ; $5a4c: $ff
    nop                                           ; $5a4d: $00
    rst $38                                       ; $5a4e: $ff
    nop                                           ; $5a4f: $00
    inc bc                                        ; $5a50: $03
    nop                                           ; $5a51: $00
    ld e, $00                                     ; $5a52: $1e $00
    rrca                                          ; $5a54: $0f
    nop                                           ; $5a55: $00
    nop                                           ; $5a56: $00
    nop                                           ; $5a57: $00
    inc a                                         ; $5a58: $3c
    nop                                           ; $5a59: $00
    ld sp, hl                                     ; $5a5a: $f9
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    add c                                         ; $5a5e: $81
    nop                                           ; $5a5f: $00
    inc c                                         ; $5a60: $0c
    nop                                           ; $5a61: $00
    ld h, b                                       ; $5a62: $60
    nop                                           ; $5a63: $00
    inc sp                                        ; $5a64: $33
    nop                                           ; $5a65: $00
    nop                                           ; $5a66: $00
    nop                                           ; $5a67: $00
    ldh a, [rP1]                                  ; $5a68: $f0 $00
    add a                                         ; $5a6a: $87
    nop                                           ; $5a6b: $00
    nop                                           ; $5a6c: $00

jr_075_5a6d:
    nop                                           ; $5a6d: $00
    rst $38                                       ; $5a6e: $ff
    nop                                           ; $5a6f: $00
    db $fc                                        ; $5a70: $fc
    nop                                           ; $5a71: $00
    rlca                                          ; $5a72: $07
    nop                                           ; $5a73: $00
    rst $38                                       ; $5a74: $ff
    nop                                           ; $5a75: $00
    ld sp, hl                                     ; $5a76: $f9
    nop                                           ; $5a77: $00
    rst $38                                       ; $5a78: $ff
    nop                                           ; $5a79: $00
    and $00                                       ; $5a7a: $e6 $00
    rst $38                                       ; $5a7c: $ff
    nop                                           ; $5a7d: $00
    ld e, $00                                     ; $5a7e: $1e $00
    rrca                                          ; $5a80: $0f
    nop                                           ; $5a81: $00
    ldh [rP1], a                                  ; $5a82: $e0 $00
    rst $38                                       ; $5a84: $ff
    nop                                           ; $5a85: $00
    add c                                         ; $5a86: $81
    nop                                           ; $5a87: $00
    rst $08                                       ; $5a88: $cf
    nop                                           ; $5a89: $00
    add hl, de                                    ; $5a8a: $19
    nop                                           ; $5a8b: $00
    rst $08                                       ; $5a8c: $cf
    nop                                           ; $5a8d: $00
    ld a, [hl]                                    ; $5a8e: $7e
    nop                                           ; $5a8f: $00
    di                                            ; $5a90: $f3
    inc c                                         ; $5a91: $0c
    and $19                                       ; $5a92: $e6 $19
    rst $38                                       ; $5a94: $ff

jr_075_5a95:
    nop                                           ; $5a95: $00
    rst $20                                       ; $5a96: $e7
    jr jr_075_5a95                                ; $5a97: $18 $fc

    inc bc                                        ; $5a99: $03
    ld a, a                                       ; $5a9a: $7f
    add b                                         ; $5a9b: $80
    jr nc, jr_075_5a6d                            ; $5a9c: $30 $cf

    rst $38                                       ; $5a9e: $ff
    nop                                           ; $5a9f: $00
    rst $08                                       ; $5aa0: $cf
    jr nc, jr_075_5b1c                            ; $5aa1: $30 $79

    add [hl]                                      ; $5aa3: $86
    rrca                                          ; $5aa4: $0f
    ldh a, [rIE]                                  ; $5aa5: $f0 $ff
    nop                                           ; $5aa7: $00
    inc a                                         ; $5aa8: $3c
    jp $07f8                                      ; $5aa9: $c3 $f8 $07


    call z, $9933                                 ; $5aac: $cc $33 $99
    ld h, [hl]                                    ; $5aaf: $66
    db $fc                                        ; $5ab0: $fc
    inc bc                                        ; $5ab1: $03
    add hl, de                                    ; $5ab2: $19
    and $00                                       ; $5ab3: $e6 $00
    rst $38                                       ; $5ab5: $ff
    rra                                           ; $5ab6: $1f
    ldh [rP1], a                                  ; $5ab7: $e0 $00
    rst $38                                       ; $5ab9: $ff
    ld a, c                                       ; $5aba: $79
    add [hl]                                      ; $5abb: $86
    inc c                                         ; $5abc: $0c
    di                                            ; $5abd: $f3
    ld h, b                                       ; $5abe: $60
    sbc a                                         ; $5abf: $9f
    nop                                           ; $5ac0: $00
    rst $38                                       ; $5ac1: $ff
    sbc [hl]                                      ; $5ac2: $9e
    ld h, c                                       ; $5ac3: $61
    rrca                                          ; $5ac4: $0f
    ldh a, [$e0]                                  ; $5ac5: $f0 $e0
    rra                                           ; $5ac7: $1f
    nop                                           ; $5ac8: $00
    rst $38                                       ; $5ac9: $ff
    add b                                         ; $5aca: $80
    ld a, a                                       ; $5acb: $7f
    call z, $0033                                 ; $5acc: $cc $33 $00
    rst $38                                       ; $5acf: $ff
    inc c                                         ; $5ad0: $0c
    rst $38                                       ; $5ad1: $ff
    ld h, c                                       ; $5ad2: $61
    rst $38                                       ; $5ad3: $ff
    nop                                           ; $5ad4: $00
    rst $38                                       ; $5ad5: $ff
    ld e, $ff                                     ; $5ad6: $1e $ff
    nop                                           ; $5ad8: $00
    rst $38                                       ; $5ad9: $ff
    nop                                           ; $5ada: $00
    rst $38                                       ; $5adb: $ff
    db $fc                                        ; $5adc: $fc
    rst $38                                       ; $5add: $ff
    nop                                           ; $5ade: $00
    rst $38                                       ; $5adf: $ff
    nop                                           ; $5ae0: $00
    rst $38                                       ; $5ae1: $ff
    and $ff                                       ; $5ae2: $e6 $ff
    nop                                           ; $5ae4: $00
    rst $38                                       ; $5ae5: $ff
    ld a, b                                       ; $5ae6: $78
    rst $38                                       ; $5ae7: $ff
    rrca                                          ; $5ae8: $0f
    rst $38                                       ; $5ae9: $ff
    ld h, b                                       ; $5aea: $60
    rst $38                                       ; $5aeb: $ff
    nop                                           ; $5aec: $00
    rst $38                                       ; $5aed: $ff
    ld a, b                                       ; $5aee: $78
    rst $38                                       ; $5aef: $ff
    rst $38                                       ; $5af0: $ff
    rst $38                                       ; $5af1: $ff
    ldh [rIE], a                                  ; $5af2: $e0 $ff
    inc sp                                        ; $5af4: $33
    rst $38                                       ; $5af5: $ff
    and $ff                                       ; $5af6: $e6 $ff
    rst $38                                       ; $5af8: $ff
    rst $38                                       ; $5af9: $ff
    ld h, [hl]                                    ; $5afa: $66
    rst $38                                       ; $5afb: $ff
    di                                            ; $5afc: $f3
    rst $38                                       ; $5afd: $ff
    sbc [hl]                                      ; $5afe: $9e
    rst $38                                       ; $5aff: $ff
    ret nz                                        ; $5b00: $c0

    rst $38                                       ; $5b01: $ff
    rra                                           ; $5b02: $1f
    rst $38                                       ; $5b03: $ff
    di                                            ; $5b04: $f3
    rst $38                                       ; $5b05: $ff
    rra                                           ; $5b06: $1f
    rst $38                                       ; $5b07: $ff
    rst $08                                       ; $5b08: $cf
    rst $38                                       ; $5b09: $ff
    ld a, [hl]                                    ; $5b0a: $7e
    rst $38                                       ; $5b0b: $ff
    ccf                                           ; $5b0c: $3f
    rst $38                                       ; $5b0d: $ff
    ld a, a                                       ; $5b0e: $7f
    rst $38                                       ; $5b0f: $ff
    ret nz                                        ; $5b10: $c0

    nop                                           ; $5b11: $00
    sbc b                                         ; $5b12: $98
    nop                                           ; $5b13: $00
    rst $08                                       ; $5b14: $cf
    nop                                           ; $5b15: $00
    add b                                         ; $5b16: $80
    nop                                           ; $5b17: $00
    inc a                                         ; $5b18: $3c
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    nop                                           ; $5b1b: $00

jr_075_5b1c:
    di                                            ; $5b1c: $f3
    nop                                           ; $5b1d: $00
    ld b, $00                                     ; $5b1e: $06 $00
    ret nz                                        ; $5b20: $c0

    nop                                           ; $5b21: $00
    add hl, de                                    ; $5b22: $19
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    ld bc, $3000                                  ; $5b26: $01 $00 $30
    nop                                           ; $5b29: $00
    ld a, b                                       ; $5b2a: $78
    nop                                           ; $5b2b: $00
    inc a                                         ; $5b2c: $3c
    nop                                           ; $5b2d: $00
    ld h, b                                       ; $5b2e: $60
    nop                                           ; $5b2f: $00
    rst $38                                       ; $5b30: $ff
    nop                                           ; $5b31: $00
    sbc b                                         ; $5b32: $98
    nop                                           ; $5b33: $00
    db $fc                                        ; $5b34: $fc
    nop                                           ; $5b35: $00
    rlca                                          ; $5b36: $07
    nop                                           ; $5b37: $00
    rst $38                                       ; $5b38: $ff
    nop                                           ; $5b39: $00
    rst $38                                       ; $5b3a: $ff
    nop                                           ; $5b3b: $00
    rrca                                          ; $5b3c: $0f
    nop                                           ; $5b3d: $00
    rst $38                                       ; $5b3e: $ff
    nop                                           ; $5b3f: $00
    ret nz                                        ; $5b40: $c0

    nop                                           ; $5b41: $00
    ld a, c                                       ; $5b42: $79
    nop                                           ; $5b43: $00
    ccf                                           ; $5b44: $3f
    nop                                           ; $5b45: $00
    ld hl, sp+$00                                 ; $5b46: $f8 $00
    rst $38                                       ; $5b48: $ff
    nop                                           ; $5b49: $00
    pop hl                                        ; $5b4a: $e1
    nop                                           ; $5b4b: $00
    ccf                                           ; $5b4c: $3f
    nop                                           ; $5b4d: $00
    rst $20                                       ; $5b4e: $e7
    nop                                           ; $5b4f: $00
    rst $38                                       ; $5b50: $ff
    nop                                           ; $5b51: $00
    rst $20                                       ; $5b52: $e7
    jr jr_075_5b94                                ; $5b53: $18 $3f

    ret nz                                        ; $5b55: $c0

    ld h, c                                       ; $5b56: $61
    sbc [hl]                                      ; $5b57: $9e
    db $fc                                        ; $5b58: $fc
    inc bc                                        ; $5b59: $03
    rst $20                                       ; $5b5a: $e7
    jr @+$01                                      ; $5b5b: $18 $ff

    nop                                           ; $5b5d: $00
    pop hl                                        ; $5b5e: $e1

jr_075_5b5f:
    ld e, $fc                                     ; $5b5f: $1e $fc
    inc bc                                        ; $5b61: $03
    sbc c                                         ; $5b62: $99
    ld h, [hl]                                    ; $5b63: $66
    rst $08                                       ; $5b64: $cf
    jr nc, jr_075_5b5f                            ; $5b65: $30 $f8

    rlca                                          ; $5b67: $07
    ccf                                           ; $5b68: $3f
    ret nz                                        ; $5b69: $c0

    rst $38                                       ; $5b6a: $ff
    nop                                           ; $5b6b: $00
    ret nz                                        ; $5b6c: $c0

    ccf                                           ; $5b6d: $3f
    rst $38                                       ; $5b6e: $ff
    nop                                           ; $5b6f: $00
    rrca                                          ; $5b70: $0f
    ldh a, [$f8]                                  ; $5b71: $f0 $f8
    rlca                                          ; $5b73: $07
    inc bc                                        ; $5b74: $03
    db $fc                                        ; $5b75: $fc
    ld a, b                                       ; $5b76: $78

jr_075_5b77:
    add a                                         ; $5b77: $87
    nop                                           ; $5b78: $00
    rst $38                                       ; $5b79: $ff
    nop                                           ; $5b7a: $00
    rst $38                                       ; $5b7b: $ff
    nop                                           ; $5b7c: $00
    rst $38                                       ; $5b7d: $ff
    nop                                           ; $5b7e: $00
    rst $38                                       ; $5b7f: $ff
    ret nz                                        ; $5b80: $c0

    ccf                                           ; $5b81: $3f
    rlca                                          ; $5b82: $07
    ld hl, sp+$33                                 ; $5b83: $f8 $33
    call z, $f906                                 ; $5b85: $cc $06 $f9
    inc bc                                        ; $5b88: $03
    db $fc                                        ; $5b89: $fc
    ld a, b                                       ; $5b8a: $78
    add a                                         ; $5b8b: $87
    inc bc                                        ; $5b8c: $03
    db $fc                                        ; $5b8d: $fc
    jr jr_075_5b77                                ; $5b8e: $18 $e7

    inc c                                         ; $5b90: $0c
    rst $38                                       ; $5b91: $ff
    ld h, b                                       ; $5b92: $60
    rst $38                                       ; $5b93: $ff

jr_075_5b94:
    db $fc                                        ; $5b94: $fc
    rst $38                                       ; $5b95: $ff
    nop                                           ; $5b96: $00
    rst $38                                       ; $5b97: $ff
    inc sp                                        ; $5b98: $33
    rst $38                                       ; $5b99: $ff
    ld h, [hl]                                    ; $5b9a: $66
    rst $38                                       ; $5b9b: $ff
    db $fc                                        ; $5b9c: $fc
    rst $38                                       ; $5b9d: $ff
    nop                                           ; $5b9e: $00
    rst $38                                       ; $5b9f: $ff
    inc bc                                        ; $5ba0: $03
    rst $38                                       ; $5ba1: $ff
    jr @+$01                                      ; $5ba2: $18 $ff

    inc bc                                        ; $5ba4: $03
    rst $38                                       ; $5ba5: $ff
    nop                                           ; $5ba6: $00
    rst $38                                       ; $5ba7: $ff
    inc a                                         ; $5ba8: $3c
    rst $38                                       ; $5ba9: $ff
    nop                                           ; $5baa: $00
    rst $38                                       ; $5bab: $ff
    ccf                                           ; $5bac: $3f
    rst $38                                       ; $5bad: $ff
    nop                                           ; $5bae: $00
    rst $38                                       ; $5baf: $ff
    ld h, b                                       ; $5bb0: $60
    rst $38                                       ; $5bb1: $ff
    rst $08                                       ; $5bb2: $cf
    rst $38                                       ; $5bb3: $ff
    ld hl, sp-$01                                 ; $5bb4: $f8 $ff
    rst $38                                       ; $5bb6: $ff
    rst $38                                       ; $5bb7: $ff
    add b                                         ; $5bb8: $80
    rst $38                                       ; $5bb9: $ff
    ccf                                           ; $5bba: $3f
    rst $38                                       ; $5bbb: $ff
    ldh [rIE], a                                  ; $5bbc: $e0 $ff
    call z, $1eff                                 ; $5bbe: $cc $ff $1e
    rst $38                                       ; $5bc1: $ff
    ccf                                           ; $5bc2: $3f
    rst $38                                       ; $5bc3: $ff
    add hl, de                                    ; $5bc4: $19
    rst $38                                       ; $5bc5: $ff
    jp Jump_075_7fff                              ; $5bc6: $c3 $ff $7f


    rst $38                                       ; $5bc9: $ff
    rst $38                                       ; $5bca: $ff
    rst $38                                       ; $5bcb: $ff
    ld h, a                                       ; $5bcc: $67
    rst $38                                       ; $5bcd: $ff
    rst $38                                       ; $5bce: $ff
    rst $38                                       ; $5bcf: $ff
    jr nc, jr_075_5bd2                            ; $5bd0: $30 $00

jr_075_5bd2:
    add b                                         ; $5bd2: $80
    nop                                           ; $5bd3: $00
    inc c                                         ; $5bd4: $0c
    nop                                           ; $5bd5: $00
    add c                                         ; $5bd6: $81
    nop                                           ; $5bd7: $00
    ldh a, [rP1]                                  ; $5bd8: $f0 $00
    nop                                           ; $5bda: $00
    nop                                           ; $5bdb: $00
    rrca                                          ; $5bdc: $0f
    nop                                           ; $5bdd: $00
    add b                                         ; $5bde: $80
    nop                                           ; $5bdf: $00
    inc c                                         ; $5be0: $0c
    nop                                           ; $5be1: $00
    add hl, de                                    ; $5be2: $19
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    rst $20                                       ; $5be6: $e7
    nop                                           ; $5be7: $00
    nop                                           ; $5be8: $00
    nop                                           ; $5be9: $00
    ld b, $00                                     ; $5bea: $06 $00
    ret nz                                        ; $5bec: $c0

    nop                                           ; $5bed: $00
    rlca                                          ; $5bee: $07
    nop                                           ; $5bef: $00
    rrca                                          ; $5bf0: $0f
    nop                                           ; $5bf1: $00
    cp $00                                        ; $5bf2: $fe $00
    inc sp                                        ; $5bf4: $33
    nop                                           ; $5bf5: $00
    cp $00                                        ; $5bf6: $fe $00
    ccf                                           ; $5bf8: $3f
    nop                                           ; $5bf9: $00
    ld sp, hl                                     ; $5bfa: $f9
    nop                                           ; $5bfb: $00
    rst $38                                       ; $5bfc: $ff
    nop                                           ; $5bfd: $00
    rst $38                                       ; $5bfe: $ff
    nop                                           ; $5bff: $00
    db $fc                                        ; $5c00: $fc
    nop                                           ; $5c01: $00
    ld bc, $3f00                                  ; $5c02: $01 $00 $3f
    nop                                           ; $5c05: $00
    ld h, c                                       ; $5c06: $61
    nop                                           ; $5c07: $00
    db $fc                                        ; $5c08: $fc
    nop                                           ; $5c09: $00
    rst $38                                       ; $5c0a: $ff
    nop                                           ; $5c0b: $00
    rst $38                                       ; $5c0c: $ff
    nop                                           ; $5c0d: $00
    rst $38                                       ; $5c0e: $ff
    nop                                           ; $5c0f: $00
    ld b, $00                                     ; $5c10: $06 $00
    inc a                                         ; $5c12: $3c
    nop                                           ; $5c13: $00
    ld e, $00                                     ; $5c14: $1e $00
    nop                                           ; $5c16: $00
    nop                                           ; $5c17: $00
    ld a, c                                       ; $5c18: $79
    nop                                           ; $5c19: $00
    di                                            ; $5c1a: $f3
    nop                                           ; $5c1b: $00
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    inc bc                                        ; $5c1e: $03

jr_075_5c1f:
    nop                                           ; $5c1f: $00
    jr jr_075_5c22                                ; $5c20: $18 $00

jr_075_5c22:
    ret nz                                        ; $5c22: $c0

    nop                                           ; $5c23: $00
    ld h, [hl]                                    ; $5c24: $66
    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00
    ldh [rP1], a                                  ; $5c28: $e0 $00
    rrca                                          ; $5c2a: $0f
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    rst $38                                       ; $5c2e: $ff
    nop                                           ; $5c2f: $00
    ld hl, sp+$00                                 ; $5c30: $f8 $00
    rrca                                          ; $5c32: $0f
    nop                                           ; $5c33: $00
    rst $38                                       ; $5c34: $ff
    nop                                           ; $5c35: $00
    di                                            ; $5c36: $f3
    nop                                           ; $5c37: $00
    rst $38                                       ; $5c38: $ff
    nop                                           ; $5c39: $00
    call z, $ff00                                 ; $5c3a: $cc $00 $ff
    nop                                           ; $5c3d: $00
    inc a                                         ; $5c3e: $3c
    nop                                           ; $5c3f: $00
    rra                                           ; $5c40: $1f
    nop                                           ; $5c41: $00
    ret nz                                        ; $5c42: $c0

    nop                                           ; $5c43: $00
    rst $38                                       ; $5c44: $ff
    nop                                           ; $5c45: $00
    inc bc                                        ; $5c46: $03
    nop                                           ; $5c47: $00
    sbc a                                         ; $5c48: $9f
    nop                                           ; $5c49: $00
    inc sp                                        ; $5c4a: $33
    nop                                           ; $5c4b: $00
    sbc a                                         ; $5c4c: $9f
    nop                                           ; $5c4d: $00
    db $fc                                        ; $5c4e: $fc
    nop                                           ; $5c4f: $00
    rst $20                                       ; $5c50: $e7

jr_075_5c51:
    jr jr_075_5c1f                                ; $5c51: $18 $cc

    inc sp                                        ; $5c53: $33
    cp $01                                        ; $5c54: $fe $01
    rst $08                                       ; $5c56: $cf
    jr nc, jr_075_5c51                            ; $5c57: $30 $f8

    rlca                                          ; $5c59: $07
    rst $38                                       ; $5c5a: $ff
    nop                                           ; $5c5b: $00
    ld h, c                                       ; $5c5c: $61
    sbc [hl]                                      ; $5c5d: $9e
    rst $38                                       ; $5c5e: $ff
    nop                                           ; $5c5f: $00
    sbc a                                         ; $5c60: $9f
    ld h, b                                       ; $5c61: $60
    di                                            ; $5c62: $f3
    inc c                                         ; $5c63: $0c
    rra                                           ; $5c64: $1f
    ldh [rIE], a                                  ; $5c65: $e0 $ff
    nop                                           ; $5c67: $00
    ld a, c                                       ; $5c68: $79
    add [hl]                                      ; $5c69: $86
    ldh a, [rIF]                                  ; $5c6a: $f0 $0f
    sbc b                                         ; $5c6c: $98
    ld h, a                                       ; $5c6d: $67
    inc sp                                        ; $5c6e: $33
    call z, $07f8                                 ; $5c6f: $cc $f8 $07
    inc sp                                        ; $5c72: $33
    call z, $ff00                                 ; $5c73: $cc $00 $ff
    ccf                                           ; $5c76: $3f
    ret nz                                        ; $5c77: $c0

    nop                                           ; $5c78: $00
    rst $38                                       ; $5c79: $ff
    di                                            ; $5c7a: $f3
    inc c                                         ; $5c7b: $0c
    add hl, de                                    ; $5c7c: $19
    and $c0                                       ; $5c7d: $e6 $c0
    ccf                                           ; $5c7f: $3f
    ld bc, $3cfe                                  ; $5c80: $01 $fe $3c
    jp $e11e                                      ; $5c83: $c3 $1e $e1


    ret nz                                        ; $5c86: $c0

    ccf                                           ; $5c87: $3f
    nop                                           ; $5c88: $00
    rst $38                                       ; $5c89: $ff
    nop                                           ; $5c8a: $00
    rst $38                                       ; $5c8b: $ff
    sbc b                                         ; $5c8c: $98
    ld h, a                                       ; $5c8d: $67
    nop                                           ; $5c8e: $00
    rst $38                                       ; $5c8f: $ff
    jr @+$01                                      ; $5c90: $18 $ff

    jp Jump_000_00ff                              ; $5c92: $c3 $ff $00


    rst $38                                       ; $5c95: $ff
    inc a                                         ; $5c96: $3c
    rst $38                                       ; $5c97: $ff
    nop                                           ; $5c98: $00
    rst $38                                       ; $5c99: $ff
    nop                                           ; $5c9a: $00
    rst $38                                       ; $5c9b: $ff
    ld hl, sp-$01                                 ; $5c9c: $f8 $ff
    nop                                           ; $5c9e: $00
    rst $38                                       ; $5c9f: $ff
    nop                                           ; $5ca0: $00
    rst $38                                       ; $5ca1: $ff
    call z, Call_000_00ff                         ; $5ca2: $cc $ff $00
    rst $38                                       ; $5ca5: $ff
    ldh a, [rIE]                                  ; $5ca6: $f0 $ff
    ld e, $ff                                     ; $5ca8: $1e $ff
    ret nz                                        ; $5caa: $c0

    rst $38                                       ; $5cab: $ff
    ld bc, $f0ff                                  ; $5cac: $01 $ff $f0
    rst $38                                       ; $5caf: $ff
    rst $38                                       ; $5cb0: $ff
    rst $38                                       ; $5cb1: $ff
    ret nz                                        ; $5cb2: $c0

    rst $38                                       ; $5cb3: $ff
    ld h, a                                       ; $5cb4: $67
    rst $38                                       ; $5cb5: $ff
    call z, $ffff                                 ; $5cb6: $cc $ff $ff
    rst $38                                       ; $5cb9: $ff
    call z, $e6ff                                 ; $5cba: $cc $ff $e6
    rst $38                                       ; $5cbd: $ff
    inc a                                         ; $5cbe: $3c
    rst $38                                       ; $5cbf: $ff
    add c                                         ; $5cc0: $81
    rst $38                                       ; $5cc1: $ff
    ccf                                           ; $5cc2: $3f
    rst $38                                       ; $5cc3: $ff
    and $ff                                       ; $5cc4: $e6 $ff
    ccf                                           ; $5cc6: $3f
    rst $38                                       ; $5cc7: $ff
    sbc a                                         ; $5cc8: $9f
    rst $38                                       ; $5cc9: $ff
    db $fc                                        ; $5cca: $fc
    rst $38                                       ; $5ccb: $ff
    ld a, a                                       ; $5ccc: $7f
    rst $38                                       ; $5ccd: $ff
    rst $38                                       ; $5cce: $ff
    rst $38                                       ; $5ccf: $ff
    add c                                         ; $5cd0: $81
    nop                                           ; $5cd1: $00
    jr nc, jr_075_5cd4                            ; $5cd2: $30 $00

jr_075_5cd4:
    sbc [hl]                                      ; $5cd4: $9e
    nop                                           ; $5cd5: $00
    nop                                           ; $5cd6: $00
    nop                                           ; $5cd7: $00
    ld a, b                                       ; $5cd8: $78
    nop                                           ; $5cd9: $00
    nop                                           ; $5cda: $00
    nop                                           ; $5cdb: $00
    and $00                                       ; $5cdc: $e6 $00
    inc c                                         ; $5cde: $0c
    nop                                           ; $5cdf: $00
    add c                                         ; $5ce0: $81
    nop                                           ; $5ce1: $00
    inc sp                                        ; $5ce2: $33
    nop                                           ; $5ce3: $00
    ld bc, $0300                                  ; $5ce4: $01 $00 $03
    nop                                           ; $5ce7: $00
    ld h, b                                       ; $5ce8: $60
    nop                                           ; $5ce9: $00
    ldh a, [rP1]                                  ; $5cea: $f0 $00
    ld a, c                                       ; $5cec: $79
    nop                                           ; $5ced: $00
    ret nz                                        ; $5cee: $c0

    nop                                           ; $5cef: $00
    rst $38                                       ; $5cf0: $ff
    nop                                           ; $5cf1: $00
    jr nc, jr_075_5cf4                            ; $5cf2: $30 $00

jr_075_5cf4:
    ld hl, sp+$00                                 ; $5cf4: $f8 $00
    rrca                                          ; $5cf6: $0f
    nop                                           ; $5cf7: $00
    rst $38                                       ; $5cf8: $ff
    nop                                           ; $5cf9: $00
    rst $38                                       ; $5cfa: $ff
    nop                                           ; $5cfb: $00
    ld e, $00                                     ; $5cfc: $1e $00
    rst $38                                       ; $5cfe: $ff
    nop                                           ; $5cff: $00
    add c                                         ; $5d00: $81
    nop                                           ; $5d01: $00
    di                                            ; $5d02: $f3
    nop                                           ; $5d03: $00
    ld a, a                                       ; $5d04: $7f
    nop                                           ; $5d05: $00
    ldh a, [rP1]                                  ; $5d06: $f0 $00
    rst $38                                       ; $5d08: $ff
    nop                                           ; $5d09: $00
    jp Jump_075_7e00                              ; $5d0a: $c3 $00 $7e


    nop                                           ; $5d0d: $00
    rst $08                                       ; $5d0e: $cf
    nop                                           ; $5d0f: $00
    rst $38                                       ; $5d10: $ff
    nop                                           ; $5d11: $00
    rst $08                                       ; $5d12: $cf
    jr nc, jr_075_5d94                            ; $5d13: $30 $7f

    add b                                         ; $5d15: $80
    jp $f83c                                      ; $5d16: $c3 $3c $f8


    rlca                                          ; $5d19: $07
    rst $08                                       ; $5d1a: $cf
    jr nc, @+$01                                  ; $5d1b: $30 $ff

    nop                                           ; $5d1d: $00
    jp $f93c                                      ; $5d1e: $c3 $3c $f9


    ld b, $33                                     ; $5d21: $06 $33
    call z, $619e                                 ; $5d23: $cc $9e $61
    ldh a, [rIF]                                  ; $5d26: $f0 $0f
    ld a, a                                       ; $5d28: $7f
    add b                                         ; $5d29: $80
    rst $38                                       ; $5d2a: $ff
    nop                                           ; $5d2b: $00
    add c                                         ; $5d2c: $81
    ld a, [hl]                                    ; $5d2d: $7e
    rst $38                                       ; $5d2e: $ff
    nop                                           ; $5d2f: $00
    rra                                           ; $5d30: $1f
    ldh [$f0], a                                  ; $5d31: $e0 $f0
    rrca                                          ; $5d33: $0f
    ld b, $f9                                     ; $5d34: $06 $f9
    ldh a, [rIF]                                  ; $5d36: $f0 $0f
    nop                                           ; $5d38: $00
    rst $38                                       ; $5d39: $ff
    nop                                           ; $5d3a: $00
    rst $38                                       ; $5d3b: $ff
    nop                                           ; $5d3c: $00
    rst $38                                       ; $5d3d: $ff
    nop                                           ; $5d3e: $00
    rst $38                                       ; $5d3f: $ff
    add b                                         ; $5d40: $80
    ld a, a                                       ; $5d41: $7f
    rrca                                          ; $5d42: $0f
    ldh a, [$66]                                  ; $5d43: $f0 $66
    sbc c                                         ; $5d45: $99
    inc c                                         ; $5d46: $0c
    di                                            ; $5d47: $f3
    ld b, $f9                                     ; $5d48: $06 $f9
    ldh a, [rIF]                                  ; $5d4a: $f0 $0f
    ld b, $f9                                     ; $5d4c: $06 $f9
    jr nc, @-$2f                                  ; $5d4e: $30 $cf

    jr @+$01                                      ; $5d50: $18 $ff

    ret nz                                        ; $5d52: $c0

    rst $38                                       ; $5d53: $ff
    ld hl, sp-$01                                 ; $5d54: $f8 $ff
    nop                                           ; $5d56: $00
    rst $38                                       ; $5d57: $ff
    ld h, [hl]                                    ; $5d58: $66
    rst $38                                       ; $5d59: $ff
    call z, $f8ff                                 ; $5d5a: $cc $ff $f8
    rst $38                                       ; $5d5d: $ff
    nop                                           ; $5d5e: $00
    rst $38                                       ; $5d5f: $ff
    ld b, $ff                                     ; $5d60: $06 $ff
    jr nc, @+$01                                  ; $5d62: $30 $ff

    rlca                                          ; $5d64: $07
    rst $38                                       ; $5d65: $ff
    nop                                           ; $5d66: $00
    rst $38                                       ; $5d67: $ff
    ld a, b                                       ; $5d68: $78
    rst $38                                       ; $5d69: $ff
    nop                                           ; $5d6a: $00
    rst $38                                       ; $5d6b: $ff
    ld a, a                                       ; $5d6c: $7f
    rst $38                                       ; $5d6d: $ff
    nop                                           ; $5d6e: $00
    rst $38                                       ; $5d6f: $ff
    ret nz                                        ; $5d70: $c0

    rst $38                                       ; $5d71: $ff
    sbc [hl]                                      ; $5d72: $9e
    rst $38                                       ; $5d73: $ff
    ldh a, [rIE]                                  ; $5d74: $f0 $ff
    rst $38                                       ; $5d76: $ff
    rst $38                                       ; $5d77: $ff
    nop                                           ; $5d78: $00
    rst $38                                       ; $5d79: $ff
    ld a, a                                       ; $5d7a: $7f
    rst $38                                       ; $5d7b: $ff
    ret nz                                        ; $5d7c: $c0

    rst $38                                       ; $5d7d: $ff
    sbc c                                         ; $5d7e: $99
    rst $38                                       ; $5d7f: $ff
    inc a                                         ; $5d80: $3c
    rst $38                                       ; $5d81: $ff
    ld a, a                                       ; $5d82: $7f
    rst $38                                       ; $5d83: $ff
    inc sp                                        ; $5d84: $33
    rst $38                                       ; $5d85: $ff
    add a                                         ; $5d86: $87
    rst $38                                       ; $5d87: $ff
    rst $38                                       ; $5d88: $ff
    rst $38                                       ; $5d89: $ff
    cp $ff                                        ; $5d8a: $fe $ff
    rst $08                                       ; $5d8c: $cf
    rst $38                                       ; $5d8d: $ff
    rst $38                                       ; $5d8e: $ff
    rst $38                                       ; $5d8f: $ff
    ld h, b                                       ; $5d90: $60
    nop                                           ; $5d91: $00
    nop                                           ; $5d92: $00
    nop                                           ; $5d93: $00

jr_075_5d94:
    jr jr_075_5d96                                ; $5d94: $18 $00

jr_075_5d96:
    inc bc                                        ; $5d96: $03
    nop                                           ; $5d97: $00
    ldh [rP1], a                                  ; $5d98: $e0 $00
    nop                                           ; $5d9a: $00
    nop                                           ; $5d9b: $00
    rra                                           ; $5d9c: $1f
    nop                                           ; $5d9d: $00
    nop                                           ; $5d9e: $00
    nop                                           ; $5d9f: $00
    jr jr_075_5da2                                ; $5da0: $18 $00

jr_075_5da2:
    inc sp                                        ; $5da2: $33
    nop                                           ; $5da3: $00
    nop                                           ; $5da4: $00
    nop                                           ; $5da5: $00
    rst $08                                       ; $5da6: $cf
    nop                                           ; $5da7: $00
    ld bc, $0c00                                  ; $5da8: $01 $00 $0c
    nop                                           ; $5dab: $00

jr_075_5dac:
    add b                                         ; $5dac: $80
    nop                                           ; $5dad: $00
    rrca                                          ; $5dae: $0f
    nop                                           ; $5daf: $00
    rra                                           ; $5db0: $1f
    nop                                           ; $5db1: $00
    db $fc                                        ; $5db2: $fc
    nop                                           ; $5db3: $00
    ld h, [hl]                                    ; $5db4: $66
    nop                                           ; $5db5: $00
    db $fc                                        ; $5db6: $fc
    nop                                           ; $5db7: $00
    ld a, a                                       ; $5db8: $7f
    nop                                           ; $5db9: $00
    di                                            ; $5dba: $f3
    nop                                           ; $5dbb: $00
    rst $38                                       ; $5dbc: $ff
    nop                                           ; $5dbd: $00
    rst $38                                       ; $5dbe: $ff
    nop                                           ; $5dbf: $00
    ld hl, sp+$00                                 ; $5dc0: $f8 $00
    inc bc                                        ; $5dc2: $03
    nop                                           ; $5dc3: $00
    ld a, [hl]                                    ; $5dc4: $7e
    nop                                           ; $5dc5: $00
    jp $f800                                      ; $5dc6: $c3 $00 $f8


    nop                                           ; $5dc9: $00
    rst $38                                       ; $5dca: $ff
    nop                                           ; $5dcb: $00
    rst $38                                       ; $5dcc: $ff
    nop                                           ; $5dcd: $00
    rst $38                                       ; $5dce: $ff
    nop                                           ; $5dcf: $00
    inc c                                         ; $5dd0: $0c
    nop                                           ; $5dd1: $00
    ld a, c                                       ; $5dd2: $79
    nop                                           ; $5dd3: $00
    inc a                                         ; $5dd4: $3c
    nop                                           ; $5dd5: $00
    nop                                           ; $5dd6: $00
    nop                                           ; $5dd7: $00
    di                                            ; $5dd8: $f3
    nop                                           ; $5dd9: $00
    and $00                                       ; $5dda: $e6 $00
    nop                                           ; $5ddc: $00
    nop                                           ; $5ddd: $00
    rlca                                          ; $5dde: $07
    nop                                           ; $5ddf: $00
    jr nc, jr_075_5de2                            ; $5de0: $30 $00

jr_075_5de2:
    add b                                         ; $5de2: $80
    nop                                           ; $5de3: $00
    call z, RST_00                                ; $5de4: $cc $00 $00
    nop                                           ; $5de7: $00
    ret nz                                        ; $5de8: $c0

    nop                                           ; $5de9: $00
    rra                                           ; $5dea: $1f
    nop                                           ; $5deb: $00
    nop                                           ; $5dec: $00
    nop                                           ; $5ded: $00
    cp $00                                        ; $5dee: $fe $00
    ldh a, [rP1]                                  ; $5df0: $f0 $00
    rra                                           ; $5df2: $1f
    nop                                           ; $5df3: $00
    rst $38                                       ; $5df4: $ff
    nop                                           ; $5df5: $00
    and $00                                       ; $5df6: $e6 $00
    rst $38                                       ; $5df8: $ff
    nop                                           ; $5df9: $00
    sbc b                                         ; $5dfa: $98
    nop                                           ; $5dfb: $00
    rst $38                                       ; $5dfc: $ff
    nop                                           ; $5dfd: $00
    ld a, c                                       ; $5dfe: $79
    nop                                           ; $5dff: $00
    ccf                                           ; $5e00: $3f
    nop                                           ; $5e01: $00
    add b                                         ; $5e02: $80
    nop                                           ; $5e03: $00
    rst $38                                       ; $5e04: $ff
    nop                                           ; $5e05: $00
    rlca                                          ; $5e06: $07
    nop                                           ; $5e07: $00
    ccf                                           ; $5e08: $3f
    nop                                           ; $5e09: $00
    ld h, a                                       ; $5e0a: $67
    nop                                           ; $5e0b: $00
    ccf                                           ; $5e0c: $3f
    nop                                           ; $5e0d: $00
    ld hl, sp+$00                                 ; $5e0e: $f8 $00
    rst $08                                       ; $5e10: $cf
    jr nc, jr_075_5dac                            ; $5e11: $30 $99

    ld h, [hl]                                    ; $5e13: $66
    db $fc                                        ; $5e14: $fc
    inc bc                                        ; $5e15: $03
    sbc a                                         ; $5e16: $9f
    ld h, b                                       ; $5e17: $60
    ldh a, [rIF]                                  ; $5e18: $f0 $0f
    rst $38                                       ; $5e1a: $ff
    nop                                           ; $5e1b: $00
    jp $fe3c                                      ; $5e1c: $c3 $3c $fe


    ld bc, $c03f                                  ; $5e1f: $01 $3f $c0
    rst $20                                       ; $5e22: $e7
    jr jr_075_5e64                                ; $5e23: $18 $3f

    ret nz                                        ; $5e25: $c0

    rst $38                                       ; $5e26: $ff
    nop                                           ; $5e27: $00
    di                                            ; $5e28: $f3
    inc c                                         ; $5e29: $0c
    pop hl                                        ; $5e2a: $e1
    ld e, $30                                     ; $5e2b: $1e $30
    rst $08                                       ; $5e2d: $cf
    ld h, a                                       ; $5e2e: $67
    sbc b                                         ; $5e2f: $98
    ldh a, [rIF]                                  ; $5e30: $f0 $0f
    ld h, [hl]                                    ; $5e32: $66
    sbc c                                         ; $5e33: $99
    nop                                           ; $5e34: $00
    rst $38                                       ; $5e35: $ff
    ld a, a                                       ; $5e36: $7f
    add b                                         ; $5e37: $80
    nop                                           ; $5e38: $00
    rst $38                                       ; $5e39: $ff
    and $19                                       ; $5e3a: $e6 $19
    inc sp                                        ; $5e3c: $33
    call z, $7f80                                 ; $5e3d: $cc $80 $7f
    inc bc                                        ; $5e40: $03
    db $fc                                        ; $5e41: $fc
    ld a, b                                       ; $5e42: $78
    add a                                         ; $5e43: $87
    inc a                                         ; $5e44: $3c
    jp $7f80                                      ; $5e45: $c3 $80 $7f


    nop                                           ; $5e48: $00
    rst $38                                       ; $5e49: $ff
    ld bc, $30fe                                  ; $5e4a: $01 $fe $30
    rst $08                                       ; $5e4d: $cf
    ld bc, $30fe                                  ; $5e4e: $01 $fe $30
    rst $38                                       ; $5e51: $ff
    add a                                         ; $5e52: $87
    rst $38                                       ; $5e53: $ff
    nop                                           ; $5e54: $00
    rst $38                                       ; $5e55: $ff
    ld a, c                                       ; $5e56: $79
    rst $38                                       ; $5e57: $ff
    nop                                           ; $5e58: $00
    rst $38                                       ; $5e59: $ff
    ld bc, $f0ff                                  ; $5e5a: $01 $ff $f0
    rst $38                                       ; $5e5d: $ff
    ld bc, $00ff                                  ; $5e5e: $01 $ff $00
    rst $38                                       ; $5e61: $ff
    sbc c                                         ; $5e62: $99
    rst $38                                       ; $5e63: $ff

jr_075_5e64:
    nop                                           ; $5e64: $00
    rst $38                                       ; $5e65: $ff
    ldh [rIE], a                                  ; $5e66: $e0 $ff
    inc a                                         ; $5e68: $3c
    rst $38                                       ; $5e69: $ff
    add b                                         ; $5e6a: $80
    rst $38                                       ; $5e6b: $ff
    inc bc                                        ; $5e6c: $03
    rst $38                                       ; $5e6d: $ff
    ldh [rIE], a                                  ; $5e6e: $e0 $ff
    rst $38                                       ; $5e70: $ff
    rst $38                                       ; $5e71: $ff
    add b                                         ; $5e72: $80
    rst $38                                       ; $5e73: $ff
    rst $08                                       ; $5e74: $cf
    rst $38                                       ; $5e75: $ff
    sbc b                                         ; $5e76: $98
    rst $38                                       ; $5e77: $ff
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    sbc c                                         ; $5e7a: $99
    rst $38                                       ; $5e7b: $ff
    call z, Call_075_79ff                         ; $5e7c: $cc $ff $79
    rst $38                                       ; $5e7f: $ff
    inc bc                                        ; $5e80: $03
    rst $38                                       ; $5e81: $ff
    ld a, a                                       ; $5e82: $7f
    rst $38                                       ; $5e83: $ff
    call z, Call_075_7fff                         ; $5e84: $cc $ff $7f
    rst $38                                       ; $5e87: $ff
    ccf                                           ; $5e88: $3f
    rst $38                                       ; $5e89: $ff
    ld sp, hl                                     ; $5e8a: $f9
    rst $38                                       ; $5e8b: $ff
    rst $38                                       ; $5e8c: $ff
    rst $38                                       ; $5e8d: $ff
    cp $ff                                        ; $5e8e: $fe $ff
    inc bc                                        ; $5e90: $03
    nop                                           ; $5e91: $00
    ld h, b                                       ; $5e92: $60
    nop                                           ; $5e93: $00
    inc a                                         ; $5e94: $3c
    nop                                           ; $5e95: $00
    nop                                           ; $5e96: $00
    nop                                           ; $5e97: $00
    ldh a, [rP1]                                  ; $5e98: $f0 $00
    ld bc, $cc00                                  ; $5e9a: $01 $00 $cc
    nop                                           ; $5e9d: $00
    add hl, de                                    ; $5e9e: $19
    nop                                           ; $5e9f: $00
    inc bc                                        ; $5ea0: $03
    nop                                           ; $5ea1: $00
    ld h, [hl]                                    ; $5ea2: $66
    nop                                           ; $5ea3: $00
    inc bc                                        ; $5ea4: $03
    nop                                           ; $5ea5: $00
    ld b, $00                                     ; $5ea6: $06 $00
    ret nz                                        ; $5ea8: $c0

    nop                                           ; $5ea9: $00
    ldh [rP1], a                                  ; $5eaa: $e0 $00
    di                                            ; $5eac: $f3
    nop                                           ; $5ead: $00
    add b                                         ; $5eae: $80
    nop                                           ; $5eaf: $00
    rst $38                                       ; $5eb0: $ff
    nop                                           ; $5eb1: $00
    jr nc, jr_075_5eb4                            ; $5eb2: $30 $00

jr_075_5eb4:
    ld hl, sp+$00                                 ; $5eb4: $f8 $00
    rrca                                          ; $5eb6: $0f
    nop                                           ; $5eb7: $00
    rst $38                                       ; $5eb8: $ff
    nop                                           ; $5eb9: $00
    rst $38                                       ; $5eba: $ff
    nop                                           ; $5ebb: $00
    ld e, $00                                     ; $5ebc: $1e $00
    rst $38                                       ; $5ebe: $ff
    nop                                           ; $5ebf: $00
    add c                                         ; $5ec0: $81
    nop                                           ; $5ec1: $00
    di                                            ; $5ec2: $f3
    nop                                           ; $5ec3: $00
    ld a, a                                       ; $5ec4: $7f
    nop                                           ; $5ec5: $00
    ldh a, [rP1]                                  ; $5ec6: $f0 $00
    rst $38                                       ; $5ec8: $ff
    nop                                           ; $5ec9: $00
    jp Jump_075_7e00                              ; $5eca: $c3 $00 $7e


    nop                                           ; $5ecd: $00
    rst $08                                       ; $5ece: $cf
    nop                                           ; $5ecf: $00
    rst $38                                       ; $5ed0: $ff
    nop                                           ; $5ed1: $00
    rst $08                                       ; $5ed2: $cf
    jr nc, jr_075_5f54                            ; $5ed3: $30 $7f

    add b                                         ; $5ed5: $80
    jp $f83c                                      ; $5ed6: $c3 $3c $f8


    rlca                                          ; $5ed9: $07
    rst $08                                       ; $5eda: $cf
    jr nc, @+$01                                  ; $5edb: $30 $ff

    nop                                           ; $5edd: $00
    jp $f93c                                      ; $5ede: $c3 $3c $f9


    ld b, $33                                     ; $5ee1: $06 $33
    call z, $619e                                 ; $5ee3: $cc $9e $61
    ldh a, [rIF]                                  ; $5ee6: $f0 $0f
    ld a, a                                       ; $5ee8: $7f
    add b                                         ; $5ee9: $80
    rst $38                                       ; $5eea: $ff
    nop                                           ; $5eeb: $00
    add c                                         ; $5eec: $81
    ld a, [hl]                                    ; $5eed: $7e
    rst $38                                       ; $5eee: $ff
    nop                                           ; $5eef: $00
    rra                                           ; $5ef0: $1f
    ldh [$f0], a                                  ; $5ef1: $e0 $f0
    rrca                                          ; $5ef3: $0f
    ld b, $f9                                     ; $5ef4: $06 $f9
    ldh a, [rIF]                                  ; $5ef6: $f0 $0f
    nop                                           ; $5ef8: $00
    rst $38                                       ; $5ef9: $ff
    nop                                           ; $5efa: $00
    rst $38                                       ; $5efb: $ff
    nop                                           ; $5efc: $00
    rst $38                                       ; $5efd: $ff
    nop                                           ; $5efe: $00
    rst $38                                       ; $5eff: $ff
    add b                                         ; $5f00: $80
    ld a, a                                       ; $5f01: $7f
    rrca                                          ; $5f02: $0f
    ldh a, [$66]                                  ; $5f03: $f0 $66
    sbc c                                         ; $5f05: $99
    inc c                                         ; $5f06: $0c
    di                                            ; $5f07: $f3
    ld b, $f9                                     ; $5f08: $06 $f9
    ldh a, [rIF]                                  ; $5f0a: $f0 $0f
    ld b, $f9                                     ; $5f0c: $06 $f9
    jr nc, @-$2f                                  ; $5f0e: $30 $cf

    jr @+$01                                      ; $5f10: $18 $ff

    ret nz                                        ; $5f12: $c0

    rst $38                                       ; $5f13: $ff
    ld hl, sp-$01                                 ; $5f14: $f8 $ff
    nop                                           ; $5f16: $00
    rst $38                                       ; $5f17: $ff
    ld h, [hl]                                    ; $5f18: $66
    rst $38                                       ; $5f19: $ff
    call z, $f8ff                                 ; $5f1a: $cc $ff $f8
    rst $38                                       ; $5f1d: $ff
    nop                                           ; $5f1e: $00
    rst $38                                       ; $5f1f: $ff
    ld b, $ff                                     ; $5f20: $06 $ff
    jr nc, @+$01                                  ; $5f22: $30 $ff

    rlca                                          ; $5f24: $07
    rst $38                                       ; $5f25: $ff
    nop                                           ; $5f26: $00
    rst $38                                       ; $5f27: $ff
    ld a, b                                       ; $5f28: $78
    rst $38                                       ; $5f29: $ff
    nop                                           ; $5f2a: $00
    rst $38                                       ; $5f2b: $ff
    ld a, a                                       ; $5f2c: $7f
    rst $38                                       ; $5f2d: $ff
    nop                                           ; $5f2e: $00
    rst $38                                       ; $5f2f: $ff
    add b                                         ; $5f30: $80
    rst $38                                       ; $5f31: $ff
    inc a                                         ; $5f32: $3c
    rst $38                                       ; $5f33: $ff
    ldh [rIE], a                                  ; $5f34: $e0 $ff
    rst $38                                       ; $5f36: $ff
    rst $38                                       ; $5f37: $ff
    ld bc, $ffff                                  ; $5f38: $01 $ff $ff
    rst $38                                       ; $5f3b: $ff
    add c                                         ; $5f3c: $81
    rst $38                                       ; $5f3d: $ff
    inc sp                                        ; $5f3e: $33
    rst $38                                       ; $5f3f: $ff
    ld a, c                                       ; $5f40: $79
    rst $38                                       ; $5f41: $ff
    rst $38                                       ; $5f42: $ff
    rst $38                                       ; $5f43: $ff
    ld h, a                                       ; $5f44: $67
    rst $38                                       ; $5f45: $ff
    rrca                                          ; $5f46: $0f
    rst $38                                       ; $5f47: $ff
    cp $ff                                        ; $5f48: $fe $ff
    db $fc                                        ; $5f4a: $fc
    rst $38                                       ; $5f4b: $ff
    sbc a                                         ; $5f4c: $9f
    rst $38                                       ; $5f4d: $ff
    rst $38                                       ; $5f4e: $ff
    rst $38                                       ; $5f4f: $ff
    ret nz                                        ; $5f50: $c0

    nop                                           ; $5f51: $00
    nop                                           ; $5f52: $00
    nop                                           ; $5f53: $00

jr_075_5f54:
    jr nc, jr_075_5f56                            ; $5f54: $30 $00

jr_075_5f56:
    rlca                                          ; $5f56: $07
    nop                                           ; $5f57: $00
    ret nz                                        ; $5f58: $c0

    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    nop                                           ; $5f5b: $00
    ccf                                           ; $5f5c: $3f
    nop                                           ; $5f5d: $00
    nop                                           ; $5f5e: $00
    nop                                           ; $5f5f: $00
    jr nc, jr_075_5f62                            ; $5f60: $30 $00

jr_075_5f62:
    ld h, [hl]                                    ; $5f62: $66
    nop                                           ; $5f63: $00
    nop                                           ; $5f64: $00
    nop                                           ; $5f65: $00
    sbc [hl]                                      ; $5f66: $9e
    nop                                           ; $5f67: $00
    inc bc                                        ; $5f68: $03
    nop                                           ; $5f69: $00
    jr jr_075_5f6c                                ; $5f6a: $18 $00

jr_075_5f6c:
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    ld e, $00                                     ; $5f6e: $1e $00
    ccf                                           ; $5f70: $3f
    nop                                           ; $5f71: $00
    ld hl, sp+$00                                 ; $5f72: $f8 $00
    call z, $f900                                 ; $5f74: $cc $00 $f9
    nop                                           ; $5f77: $00
    rst $38                                       ; $5f78: $ff
    nop                                           ; $5f79: $00
    rst $20                                       ; $5f7a: $e7
    nop                                           ; $5f7b: $00
    rst $38                                       ; $5f7c: $ff
    nop                                           ; $5f7d: $00
    rst $38                                       ; $5f7e: $ff
    nop                                           ; $5f7f: $00
    ldh a, [rP1]                                  ; $5f80: $f0 $00
    rlca                                          ; $5f82: $07
    nop                                           ; $5f83: $00
    db $fc                                        ; $5f84: $fc
    nop                                           ; $5f85: $00
    add a                                         ; $5f86: $87
    nop                                           ; $5f87: $00
    ldh a, [rP1]                                  ; $5f88: $f0 $00
    rst $38                                       ; $5f8a: $ff
    nop                                           ; $5f8b: $00
    rst $38                                       ; $5f8c: $ff
    nop                                           ; $5f8d: $00
    rst $38                                       ; $5f8e: $ff
    nop                                           ; $5f8f: $00
    jr jr_075_5f92                                ; $5f90: $18 $00

jr_075_5f92:
    di                                            ; $5f92: $f3
    nop                                           ; $5f93: $00
    ld a, c                                       ; $5f94: $79
    nop                                           ; $5f95: $00
    nop                                           ; $5f96: $00
    nop                                           ; $5f97: $00
    rst $20                                       ; $5f98: $e7
    nop                                           ; $5f99: $00
    call z, RST_00                                ; $5f9a: $cc $00 $00
    nop                                           ; $5f9d: $00
    rrca                                          ; $5f9e: $0f
    nop                                           ; $5f9f: $00
    ld h, b                                       ; $5fa0: $60
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00
    nop                                           ; $5fa3: $00
    sbc b                                         ; $5fa4: $98
    nop                                           ; $5fa5: $00
    nop                                           ; $5fa6: $00
    nop                                           ; $5fa7: $00
    add c                                         ; $5fa8: $81
    nop                                           ; $5fa9: $00
    ccf                                           ; $5faa: $3f
    nop                                           ; $5fab: $00
    nop                                           ; $5fac: $00
    nop                                           ; $5fad: $00

jr_075_5fae:
    db $fc                                        ; $5fae: $fc
    nop                                           ; $5faf: $00
    ldh [rP1], a                                  ; $5fb0: $e0 $00
    ccf                                           ; $5fb2: $3f
    nop                                           ; $5fb3: $00
    rst $38                                       ; $5fb4: $ff
    nop                                           ; $5fb5: $00
    call z, $fe00                                 ; $5fb6: $cc $00 $fe
    nop                                           ; $5fb9: $00
    jr nc, jr_075_5fbc                            ; $5fba: $30 $00

jr_075_5fbc:
    cp $00                                        ; $5fbc: $fe $00
    di                                            ; $5fbe: $f3
    nop                                           ; $5fbf: $00
    ld a, a                                       ; $5fc0: $7f
    nop                                           ; $5fc1: $00
    nop                                           ; $5fc2: $00
    nop                                           ; $5fc3: $00
    rst $38                                       ; $5fc4: $ff
    nop                                           ; $5fc5: $00
    rrca                                          ; $5fc6: $0f
    nop                                           ; $5fc7: $00
    ld a, a                                       ; $5fc8: $7f
    nop                                           ; $5fc9: $00
    rst $08                                       ; $5fca: $cf
    nop                                           ; $5fcb: $00
    ld a, a                                       ; $5fcc: $7f
    nop                                           ; $5fcd: $00
    ldh a, [rP1]                                  ; $5fce: $f0 $00
    sbc [hl]                                      ; $5fd0: $9e

jr_075_5fd1:
    ld h, c                                       ; $5fd1: $61
    inc sp                                        ; $5fd2: $33
    call z, $07f8                                 ; $5fd3: $cc $f8 $07
    ccf                                           ; $5fd6: $3f
    ret nz                                        ; $5fd7: $c0

    pop hl                                        ; $5fd8: $e1
    ld e, $ff                                     ; $5fd9: $1e $ff
    nop                                           ; $5fdb: $00
    add [hl]                                      ; $5fdc: $86
    ld a, c                                       ; $5fdd: $79
    db $fc                                        ; $5fde: $fc
    inc bc                                        ; $5fdf: $03
    ld a, a                                       ; $5fe0: $7f
    add b                                         ; $5fe1: $80
    rst $08                                       ; $5fe2: $cf
    jr nc, @+$81                                  ; $5fe3: $30 $7f

    add b                                         ; $5fe5: $80
    rst $38                                       ; $5fe6: $ff
    nop                                           ; $5fe7: $00
    rst $20                                       ; $5fe8: $e7
    jr jr_075_5fae                                ; $5fe9: $18 $c3

    inc a                                         ; $5feb: $3c
    ld h, c                                       ; $5fec: $61
    sbc [hl]                                      ; $5fed: $9e
    rst $08                                       ; $5fee: $cf
    jr nc, jr_075_5fd1                            ; $5fef: $30 $e0

    rra                                           ; $5ff1: $1f
    call z, $0033                                 ; $5ff2: $cc $33 $00
    rst $38                                       ; $5ff5: $ff
    rst $38                                       ; $5ff6: $ff
    nop                                           ; $5ff7: $00
    nop                                           ; $5ff8: $00
    rst $38                                       ; $5ff9: $ff
    call z, Call_075_6633                         ; $5ffa: $cc $33 $66
    sbc c                                         ; $5ffd: $99
    nop                                           ; $5ffe: $00
    rst $38                                       ; $5fff: $ff
    rlca                                          ; $6000: $07
    ld hl, sp-$10                                 ; $6001: $f8 $f0
    rrca                                          ; $6003: $0f
    ld a, b                                       ; $6004: $78
    add a                                         ; $6005: $87
    nop                                           ; $6006: $00
    rst $38                                       ; $6007: $ff
    nop                                           ; $6008: $00
    rst $38                                       ; $6009: $ff
    inc bc                                        ; $600a: $03
    db $fc                                        ; $600b: $fc
    ld h, b                                       ; $600c: $60
    sbc a                                         ; $600d: $9f
    inc bc                                        ; $600e: $03
    db $fc                                        ; $600f: $fc
    ld h, b                                       ; $6010: $60
    rst $38                                       ; $6011: $ff
    rrca                                          ; $6012: $0f
    rst $38                                       ; $6013: $ff
    nop                                           ; $6014: $00
    rst $38                                       ; $6015: $ff
    di                                            ; $6016: $f3
    rst $38                                       ; $6017: $ff
    nop                                           ; $6018: $00
    rst $38                                       ; $6019: $ff
    inc bc                                        ; $601a: $03
    rst $38                                       ; $601b: $ff
    ldh [rIE], a                                  ; $601c: $e0 $ff
    inc bc                                        ; $601e: $03
    rst $38                                       ; $601f: $ff
    nop                                           ; $6020: $00
    rst $38                                       ; $6021: $ff
    inc sp                                        ; $6022: $33
    rst $38                                       ; $6023: $ff
    nop                                           ; $6024: $00
    rst $38                                       ; $6025: $ff
    ret nz                                        ; $6026: $c0

    rst $38                                       ; $6027: $ff
    ld a, b                                       ; $6028: $78
    rst $38                                       ; $6029: $ff
    nop                                           ; $602a: $00
    rst $38                                       ; $602b: $ff
    rlca                                          ; $602c: $07
    rst $38                                       ; $602d: $ff
    ret nz                                        ; $602e: $c0

    rst $38                                       ; $602f: $ff
    cp $ff                                        ; $6030: $fe $ff
    nop                                           ; $6032: $00
    rst $38                                       ; $6033: $ff
    sbc a                                         ; $6034: $9f
    rst $38                                       ; $6035: $ff
    jr nc, @+$01                                  ; $6036: $30 $ff

    cp $ff                                        ; $6038: $fe $ff
    inc sp                                        ; $603a: $33
    rst $38                                       ; $603b: $ff
    sbc c                                         ; $603c: $99
    rst $38                                       ; $603d: $ff
    di                                            ; $603e: $f3
    rst $38                                       ; $603f: $ff
    rlca                                          ; $6040: $07
    rst $38                                       ; $6041: $ff
    rst $38                                       ; $6042: $ff
    rst $38                                       ; $6043: $ff
    sbc c                                         ; $6044: $99
    rst $38                                       ; $6045: $ff
    rst $38                                       ; $6046: $ff
    rst $38                                       ; $6047: $ff
    ld a, a                                       ; $6048: $7f
    rst $38                                       ; $6049: $ff
    di                                            ; $604a: $f3
    rst $38                                       ; $604b: $ff
    rst $38                                       ; $604c: $ff
    rst $38                                       ; $604d: $ff
    db $fc                                        ; $604e: $fc
    rst $38                                       ; $604f: $ff
    ld b, $00                                     ; $6050: $06 $00
    ret nz                                        ; $6052: $c0

    nop                                           ; $6053: $00
    ld a, b                                       ; $6054: $78
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    pop hl                                        ; $6058: $e1
    nop                                           ; $6059: $00
    inc bc                                        ; $605a: $03
    nop                                           ; $605b: $00
    sbc c                                         ; $605c: $99
    nop                                           ; $605d: $00
    inc sp                                        ; $605e: $33
    nop                                           ; $605f: $00
    ld b, $00                                     ; $6060: $06 $00
    call z, $0600                                 ; $6062: $cc $00 $06
    nop                                           ; $6065: $00
    inc c                                         ; $6066: $0c
    nop                                           ; $6067: $00
    add c                                         ; $6068: $81
    nop                                           ; $6069: $00
    ret nz                                        ; $606a: $c0

    nop                                           ; $606b: $00
    rst $20                                       ; $606c: $e7
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    rst $38                                       ; $6070: $ff
    nop                                           ; $6071: $00
    ld h, c                                       ; $6072: $61
    nop                                           ; $6073: $00
    ldh a, [rP1]                                  ; $6074: $f0 $00
    rra                                           ; $6076: $1f
    nop                                           ; $6077: $00
    rst $38                                       ; $6078: $ff
    nop                                           ; $6079: $00
    rst $38                                       ; $607a: $ff
    nop                                           ; $607b: $00
    inc a                                         ; $607c: $3c
    nop                                           ; $607d: $00
    rst $38                                       ; $607e: $ff
    nop                                           ; $607f: $00
    inc bc                                        ; $6080: $03
    nop                                           ; $6081: $00
    and $00                                       ; $6082: $e6 $00
    rst $38                                       ; $6084: $ff
    nop                                           ; $6085: $00
    ldh [rP1], a                                  ; $6086: $e0 $00
    rst $38                                       ; $6088: $ff
    nop                                           ; $6089: $00
    add a                                         ; $608a: $87
    nop                                           ; $608b: $00
    db $fc                                        ; $608c: $fc
    nop                                           ; $608d: $00
    sbc a                                         ; $608e: $9f
    nop                                           ; $608f: $00
    rst $38                                       ; $6090: $ff
    nop                                           ; $6091: $00
    sbc [hl]                                      ; $6092: $9e
    ld h, c                                       ; $6093: $61
    rst $38                                       ; $6094: $ff
    nop                                           ; $6095: $00
    add a                                         ; $6096: $87
    ld a, b                                       ; $6097: $78
    ldh a, [rIF]                                  ; $6098: $f0 $0f
    sbc a                                         ; $609a: $9f
    ld h, b                                       ; $609b: $60
    rst $38                                       ; $609c: $ff
    nop                                           ; $609d: $00
    add a                                         ; $609e: $87
    ld a, b                                       ; $609f: $78
    di                                            ; $60a0: $f3
    inc c                                         ; $60a1: $0c
    ld h, a                                       ; $60a2: $67
    sbc b                                         ; $60a3: $98
    inc a                                         ; $60a4: $3c
    jp $1ee1                                      ; $60a5: $c3 $e1 $1e


    rst $38                                       ; $60a8: $ff
    nop                                           ; $60a9: $00
    rst $38                                       ; $60aa: $ff
    nop                                           ; $60ab: $00
    inc bc                                        ; $60ac: $03
    db $fc                                        ; $60ad: $fc
    rst $38                                       ; $60ae: $ff
    nop                                           ; $60af: $00
    ccf                                           ; $60b0: $3f
    ret nz                                        ; $60b1: $c0

    ldh [$1f], a                                  ; $60b2: $e0 $1f
    inc c                                         ; $60b4: $0c
    di                                            ; $60b5: $f3
    ldh [$1f], a                                  ; $60b6: $e0 $1f
    nop                                           ; $60b8: $00
    rst $38                                       ; $60b9: $ff
    ld bc, $00fe                                  ; $60ba: $01 $fe $00
    rst $38                                       ; $60bd: $ff
    nop                                           ; $60be: $00
    rst $38                                       ; $60bf: $ff
    nop                                           ; $60c0: $00
    rst $38                                       ; $60c1: $ff
    rra                                           ; $60c2: $1f
    ldh [$cc], a                                  ; $60c3: $e0 $cc
    inc sp                                        ; $60c5: $33
    add hl, de                                    ; $60c6: $19
    and $0c                                       ; $60c7: $e6 $0c
    di                                            ; $60c9: $f3
    ldh [$1f], a                                  ; $60ca: $e0 $1f
    inc c                                         ; $60cc: $0c
    di                                            ; $60cd: $f3
    ld h, b                                       ; $60ce: $60
    sbc a                                         ; $60cf: $9f
    jr nc, @+$01                                  ; $60d0: $30 $ff

    add b                                         ; $60d2: $80
    rst $38                                       ; $60d3: $ff
    ldh a, [rIE]                                  ; $60d4: $f0 $ff
    nop                                           ; $60d6: $00
    rst $38                                       ; $60d7: $ff
    call z, $98ff                                 ; $60d8: $cc $ff $98
    rst $38                                       ; $60db: $ff
    ldh a, [rIE]                                  ; $60dc: $f0 $ff
    nop                                           ; $60de: $00
    rst $38                                       ; $60df: $ff
    inc c                                         ; $60e0: $0c
    rst $38                                       ; $60e1: $ff
    ld h, c                                       ; $60e2: $61
    rst $38                                       ; $60e3: $ff
    rrca                                          ; $60e4: $0f
    rst $38                                       ; $60e5: $ff
    nop                                           ; $60e6: $00
    rst $38                                       ; $60e7: $ff
    ldh a, [rIE]                                  ; $60e8: $f0 $ff
    ld bc, $ffff                                  ; $60ea: $01 $ff $ff
    rst $38                                       ; $60ed: $ff
    nop                                           ; $60ee: $00
    rst $38                                       ; $60ef: $ff
    nop                                           ; $60f0: $00
    rst $38                                       ; $60f1: $ff
    ld a, c                                       ; $60f2: $79
    rst $38                                       ; $60f3: $ff
    ret nz                                        ; $60f4: $c0

    rst $38                                       ; $60f5: $ff
    cp $ff                                        ; $60f6: $fe $ff
    inc bc                                        ; $60f8: $03
    rst $38                                       ; $60f9: $ff
    rst $38                                       ; $60fa: $ff
    rst $38                                       ; $60fb: $ff
    inc bc                                        ; $60fc: $03
    rst $38                                       ; $60fd: $ff
    ld h, a                                       ; $60fe: $67
    rst $38                                       ; $60ff: $ff
    di                                            ; $6100: $f3
    rst $38                                       ; $6101: $ff
    cp $ff                                        ; $6102: $fe $ff
    rst $08                                       ; $6104: $cf
    rst $38                                       ; $6105: $ff
    rra                                           ; $6106: $1f
    rst $38                                       ; $6107: $ff
    db $fc                                        ; $6108: $fc
    rst $38                                       ; $6109: $ff
    ld sp, hl                                     ; $610a: $f9
    rst $38                                       ; $610b: $ff
    ccf                                           ; $610c: $3f
    rst $38                                       ; $610d: $ff
    cp $ff                                        ; $610e: $fe $ff
    add b                                         ; $6110: $80
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    ld h, b                                       ; $6114: $60
    nop                                           ; $6115: $00
    rrca                                          ; $6116: $0f
    nop                                           ; $6117: $00
    add b                                         ; $6118: $80
    nop                                           ; $6119: $00
    nop                                           ; $611a: $00
    nop                                           ; $611b: $00
    ld a, [hl]                                    ; $611c: $7e
    nop                                           ; $611d: $00
    nop                                           ; $611e: $00
    nop                                           ; $611f: $00
    ld h, c                                       ; $6120: $61
    nop                                           ; $6121: $00
    call z, RST_00                                ; $6122: $cc $00 $00
    nop                                           ; $6125: $00
    inc a                                         ; $6126: $3c
    nop                                           ; $6127: $00
    rlca                                          ; $6128: $07
    nop                                           ; $6129: $00
    jr nc, jr_075_612c                            ; $612a: $30 $00

jr_075_612c:
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    inc a                                         ; $612e: $3c
    nop                                           ; $612f: $00
    ld a, a                                       ; $6130: $7f
    nop                                           ; $6131: $00
    ldh a, [rP1]                                  ; $6132: $f0 $00
    sbc c                                         ; $6134: $99
    nop                                           ; $6135: $00
    di                                            ; $6136: $f3
    nop                                           ; $6137: $00
    rst $38                                       ; $6138: $ff
    nop                                           ; $6139: $00
    rst $08                                       ; $613a: $cf
    nop                                           ; $613b: $00
    rst $38                                       ; $613c: $ff
    nop                                           ; $613d: $00
    rst $38                                       ; $613e: $ff
    nop                                           ; $613f: $00
    ldh [rP1], a                                  ; $6140: $e0 $00
    rrca                                          ; $6142: $0f
    nop                                           ; $6143: $00
    ld sp, hl                                     ; $6144: $f9
    nop                                           ; $6145: $00
    rrca                                          ; $6146: $0f
    nop                                           ; $6147: $00
    pop hl                                        ; $6148: $e1
    nop                                           ; $6149: $00
    rst $38                                       ; $614a: $ff
    nop                                           ; $614b: $00
    rst $38                                       ; $614c: $ff
    nop                                           ; $614d: $00
    rst $38                                       ; $614e: $ff
    nop                                           ; $614f: $00
    ld h, c                                       ; $6150: $61
    nop                                           ; $6151: $00
    call z, $e600                                 ; $6152: $cc $00 $e6
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    sbc [hl]                                      ; $6158: $9e
    nop                                           ; $6159: $00
    jr nc, jr_075_615c                            ; $615a: $30 $00

jr_075_615c:
    nop                                           ; $615c: $00
    nop                                           ; $615d: $00
    ccf                                           ; $615e: $3f
    nop                                           ; $615f: $00
    add b                                         ; $6160: $80
    nop                                           ; $6161: $00
    inc bc                                        ; $6162: $03
    nop                                           ; $6163: $00
    ld h, c                                       ; $6164: $61
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    rlca                                          ; $6168: $07
    nop                                           ; $6169: $00
    rst $38                                       ; $616a: $ff
    nop                                           ; $616b: $00
    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    ldh a, [rP1]                                  ; $616e: $f0 $00
    add c                                         ; $6170: $81
    nop                                           ; $6171: $00
    db $fc                                        ; $6172: $fc
    nop                                           ; $6173: $00
    rst $38                                       ; $6174: $ff
    nop                                           ; $6175: $00

jr_075_6176:
    jr nc, jr_075_6178                            ; $6176: $30 $00

jr_075_6178:
    ld sp, hl                                     ; $6178: $f9
    nop                                           ; $6179: $00
    jp $f900                                      ; $617a: $c3 $00 $f9


    nop                                           ; $617d: $00
    rst $08                                       ; $617e: $cf
    nop                                           ; $617f: $00
    rst $38                                       ; $6180: $ff
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    rst $38                                       ; $6184: $ff
    nop                                           ; $6185: $00
    ccf                                           ; $6186: $3f
    nop                                           ; $6187: $00
    rst $38                                       ; $6188: $ff
    nop                                           ; $6189: $00
    inc a                                         ; $618a: $3c
    nop                                           ; $618b: $00
    rst $38                                       ; $618c: $ff
    nop                                           ; $618d: $00
    jp Jump_075_7900                              ; $618e: $c3 $00 $79


    add [hl]                                      ; $6191: $86
    rst $08                                       ; $6192: $cf
    jr nc, jr_075_6176                            ; $6193: $30 $e1

    ld e, $ff                                     ; $6195: $1e $ff
    nop                                           ; $6197: $00
    add a                                         ; $6198: $87
    ld a, b                                       ; $6199: $78
    rst $38                                       ; $619a: $ff
    nop                                           ; $619b: $00
    add hl, de                                    ; $619c: $19
    and $f3                                       ; $619d: $e6 $f3
    inc c                                         ; $619f: $0c
    cp $01                                        ; $61a0: $fe $01
    inc a                                         ; $61a2: $3c
    jp Jump_000_00ff                              ; $61a3: $c3 $ff $00


    db $fc                                        ; $61a6: $fc
    inc bc                                        ; $61a7: $03
    sbc a                                         ; $61a8: $9f
    ld h, b                                       ; $61a9: $60
    rrca                                          ; $61aa: $0f
    ldh a, [$86]                                  ; $61ab: $f0 $86
    ld a, c                                       ; $61ad: $79
    ccf                                           ; $61ae: $3f
    ret nz                                        ; $61af: $c0

    ret nz                                        ; $61b0: $c0

    ccf                                           ; $61b1: $3f
    sbc c                                         ; $61b2: $99
    ld h, [hl]                                    ; $61b3: $66
    nop                                           ; $61b4: $00
    rst $38                                       ; $61b5: $ff
    cp $01                                        ; $61b6: $fe $01
    nop                                           ; $61b8: $00
    rst $38                                       ; $61b9: $ff
    sbc b                                         ; $61ba: $98
    ld h, a                                       ; $61bb: $67
    call z, $0033                                 ; $61bc: $cc $33 $00
    rst $38                                       ; $61bf: $ff
    rrca                                          ; $61c0: $0f
    ldh a, [$e1]                                  ; $61c1: $f0 $e1
    ld e, $f0                                     ; $61c3: $1e $f0
    rrca                                          ; $61c5: $0f
    ld bc, $00fe                                  ; $61c6: $01 $fe $00
    rst $38                                       ; $61c9: $ff
    rlca                                          ; $61ca: $07
    ld hl, sp-$40                                 ; $61cb: $f8 $c0
    ccf                                           ; $61cd: $3f
    ld b, $f9                                     ; $61ce: $06 $f9
    ret nz                                        ; $61d0: $c0

    rst $38                                       ; $61d1: $ff
    ld e, $ff                                     ; $61d2: $1e $ff
    nop                                           ; $61d4: $00
    rst $38                                       ; $61d5: $ff
    rst $20                                       ; $61d6: $e7
    rst $38                                       ; $61d7: $ff
    nop                                           ; $61d8: $00
    rst $38                                       ; $61d9: $ff
    ld b, $ff                                     ; $61da: $06 $ff
    ret nz                                        ; $61dc: $c0

    rst $38                                       ; $61dd: $ff
    rlca                                          ; $61de: $07
    rst $38                                       ; $61df: $ff
    nop                                           ; $61e0: $00
    rst $38                                       ; $61e1: $ff
    ld h, [hl]                                    ; $61e2: $66
    rst $38                                       ; $61e3: $ff
    nop                                           ; $61e4: $00
    rst $38                                       ; $61e5: $ff
    add c                                         ; $61e6: $81
    rst $38                                       ; $61e7: $ff
    ldh a, [rIE]                                  ; $61e8: $f0 $ff
    nop                                           ; $61ea: $00
    rst $38                                       ; $61eb: $ff
    rrca                                          ; $61ec: $0f
    rst $38                                       ; $61ed: $ff
    add b                                         ; $61ee: $80
    rst $38                                       ; $61ef: $ff
    db $fc                                        ; $61f0: $fc
    rst $38                                       ; $61f1: $ff
    ld bc, $3fff                                  ; $61f2: $01 $ff $3f
    rst $38                                       ; $61f5: $ff
    ld h, c                                       ; $61f6: $61
    rst $38                                       ; $61f7: $ff
    db $fc                                        ; $61f8: $fc
    rst $38                                       ; $61f9: $ff
    ld h, a                                       ; $61fa: $67
    rst $38                                       ; $61fb: $ff
    inc sp                                        ; $61fc: $33
    rst $38                                       ; $61fd: $ff
    rst $20                                       ; $61fe: $e7
    rst $38                                       ; $61ff: $ff
    rrca                                          ; $6200: $0f
    rst $38                                       ; $6201: $ff
    cp $ff                                        ; $6202: $fe $ff
    inc sp                                        ; $6204: $33
    rst $38                                       ; $6205: $ff
    cp $ff                                        ; $6206: $fe $ff
    rst $38                                       ; $6208: $ff
    rst $38                                       ; $6209: $ff
    and $ff                                       ; $620a: $e6 $ff
    rst $38                                       ; $620c: $ff
    rst $38                                       ; $620d: $ff
    ld sp, hl                                     ; $620e: $f9
    rst $38                                       ; $620f: $ff
    inc c                                         ; $6210: $0c
    nop                                           ; $6211: $00
    add c                                         ; $6212: $81
    nop                                           ; $6213: $00
    ldh a, [rP1]                                  ; $6214: $f0 $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
    jp $0700                                      ; $6218: $c3 $00 $07


    nop                                           ; $621b: $00
    inc sp                                        ; $621c: $33
    nop                                           ; $621d: $00
    ld h, [hl]                                    ; $621e: $66
    nop                                           ; $621f: $00
    inc c                                         ; $6220: $0c
    nop                                           ; $6221: $00
    sbc c                                         ; $6222: $99
    nop                                           ; $6223: $00
    inc c                                         ; $6224: $0c
    nop                                           ; $6225: $00
    jr jr_075_6228                                ; $6226: $18 $00

jr_075_6228:
    inc bc                                        ; $6228: $03
    nop                                           ; $6229: $00
    add b                                         ; $622a: $80
    nop                                           ; $622b: $00
    rst $08                                       ; $622c: $cf
    nop                                           ; $622d: $00
    nop                                           ; $622e: $00
    nop                                           ; $622f: $00
    rst $38                                       ; $6230: $ff
    nop                                           ; $6231: $00
    ld h, c                                       ; $6232: $61
    nop                                           ; $6233: $00
    ldh a, [rP1]                                  ; $6234: $f0 $00
    rra                                           ; $6236: $1f
    nop                                           ; $6237: $00
    rst $38                                       ; $6238: $ff
    nop                                           ; $6239: $00
    rst $38                                       ; $623a: $ff
    nop                                           ; $623b: $00
    inc a                                         ; $623c: $3c
    nop                                           ; $623d: $00
    rst $38                                       ; $623e: $ff
    nop                                           ; $623f: $00
    inc bc                                        ; $6240: $03
    nop                                           ; $6241: $00
    and $00                                       ; $6242: $e6 $00
    rst $38                                       ; $6244: $ff
    nop                                           ; $6245: $00
    ldh [rP1], a                                  ; $6246: $e0 $00
    rst $38                                       ; $6248: $ff
    nop                                           ; $6249: $00
    add a                                         ; $624a: $87
    nop                                           ; $624b: $00
    db $fc                                        ; $624c: $fc
    nop                                           ; $624d: $00
    sbc a                                         ; $624e: $9f
    nop                                           ; $624f: $00
    rst $38                                       ; $6250: $ff
    nop                                           ; $6251: $00
    sbc [hl]                                      ; $6252: $9e
    ld h, c                                       ; $6253: $61
    rst $38                                       ; $6254: $ff
    nop                                           ; $6255: $00
    add a                                         ; $6256: $87
    ld a, b                                       ; $6257: $78
    ldh a, [rIF]                                  ; $6258: $f0 $0f
    sbc a                                         ; $625a: $9f
    ld h, b                                       ; $625b: $60
    rst $38                                       ; $625c: $ff
    nop                                           ; $625d: $00
    add a                                         ; $625e: $87
    ld a, b                                       ; $625f: $78
    di                                            ; $6260: $f3
    inc c                                         ; $6261: $0c
    ld h, a                                       ; $6262: $67
    sbc b                                         ; $6263: $98
    inc a                                         ; $6264: $3c
    jp $1ee1                                      ; $6265: $c3 $e1 $1e


    rst $38                                       ; $6268: $ff
    nop                                           ; $6269: $00
    rst $38                                       ; $626a: $ff
    nop                                           ; $626b: $00
    inc bc                                        ; $626c: $03
    db $fc                                        ; $626d: $fc
    rst $38                                       ; $626e: $ff
    nop                                           ; $626f: $00
    ccf                                           ; $6270: $3f
    ret nz                                        ; $6271: $c0

    ldh [$1f], a                                  ; $6272: $e0 $1f
    inc c                                         ; $6274: $0c
    di                                            ; $6275: $f3
    ldh [$1f], a                                  ; $6276: $e0 $1f
    nop                                           ; $6278: $00
    rst $38                                       ; $6279: $ff
    ld bc, $00fe                                  ; $627a: $01 $fe $00
    rst $38                                       ; $627d: $ff
    nop                                           ; $627e: $00
    rst $38                                       ; $627f: $ff
    nop                                           ; $6280: $00
    rst $38                                       ; $6281: $ff
    rra                                           ; $6282: $1f
    ldh [$cc], a                                  ; $6283: $e0 $cc
    inc sp                                        ; $6285: $33
    add hl, de                                    ; $6286: $19
    and $0c                                       ; $6287: $e6 $0c
    di                                            ; $6289: $f3
    ldh [$1f], a                                  ; $628a: $e0 $1f
    inc c                                         ; $628c: $0c
    di                                            ; $628d: $f3
    ld h, b                                       ; $628e: $60
    sbc a                                         ; $628f: $9f
    jr nc, @+$01                                  ; $6290: $30 $ff

    add b                                         ; $6292: $80
    rst $38                                       ; $6293: $ff
    ldh a, [rIE]                                  ; $6294: $f0 $ff
    nop                                           ; $6296: $00
    rst $38                                       ; $6297: $ff
    call z, $98ff                                 ; $6298: $cc $ff $98
    rst $38                                       ; $629b: $ff
    ldh a, [rIE]                                  ; $629c: $f0 $ff
    nop                                           ; $629e: $00
    rst $38                                       ; $629f: $ff
    inc c                                         ; $62a0: $0c
    rst $38                                       ; $62a1: $ff
    ld h, c                                       ; $62a2: $61
    rst $38                                       ; $62a3: $ff
    rrca                                          ; $62a4: $0f
    rst $38                                       ; $62a5: $ff
    nop                                           ; $62a6: $00
    rst $38                                       ; $62a7: $ff
    ldh a, [rIE]                                  ; $62a8: $f0 $ff
    ld bc, $ffff                                  ; $62aa: $01 $ff $ff
    rst $38                                       ; $62ad: $ff
    nop                                           ; $62ae: $00
    rst $38                                       ; $62af: $ff
    ld bc, $f3ff                                  ; $62b0: $01 $ff $f3
    rst $38                                       ; $62b3: $ff
    add c                                         ; $62b4: $81
    rst $38                                       ; $62b5: $ff
    db $fc                                        ; $62b6: $fc
    rst $38                                       ; $62b7: $ff
    rlca                                          ; $62b8: $07
    rst $38                                       ; $62b9: $ff
    rst $38                                       ; $62ba: $ff
    rst $38                                       ; $62bb: $ff
    ld b, $ff                                     ; $62bc: $06 $ff
    rst $08                                       ; $62be: $cf
    rst $38                                       ; $62bf: $ff
    and $ff                                       ; $62c0: $e6 $ff
    db $fc                                        ; $62c2: $fc
    rst $38                                       ; $62c3: $ff
    sbc a                                         ; $62c4: $9f
    rst $38                                       ; $62c5: $ff
    ccf                                           ; $62c6: $3f
    rst $38                                       ; $62c7: $ff
    ld hl, sp-$01                                 ; $62c8: $f8 $ff
    di                                            ; $62ca: $f3
    rst $38                                       ; $62cb: $ff
    ld a, [hl]                                    ; $62cc: $7e
    rst $38                                       ; $62cd: $ff
    db $fc                                        ; $62ce: $fc
    rst $38                                       ; $62cf: $ff
    ld bc, $0300                                  ; $62d0: $01 $00 $03
    nop                                           ; $62d3: $00
    add b                                         ; $62d4: $80
    nop                                           ; $62d5: $00
    inc a                                         ; $62d6: $3c
    nop                                           ; $62d7: $00
    nop                                           ; $62d8: $00
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    nop                                           ; $62db: $00
    ld hl, sp+$00                                 ; $62dc: $f8 $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    add [hl]                                      ; $62e0: $86
    nop                                           ; $62e1: $00
    jr nc, jr_075_62e4                            ; $62e2: $30 $00

jr_075_62e4:
    ld bc, $f000                                  ; $62e4: $01 $00 $f0
    nop                                           ; $62e7: $00
    ld e, $00                                     ; $62e8: $1e $00
    ret nz                                        ; $62ea: $c0

    nop                                           ; $62eb: $00
    ld bc, $f000                                  ; $62ec: $01 $00 $f0
    nop                                           ; $62ef: $00
    rst $38                                       ; $62f0: $ff
    nop                                           ; $62f1: $00
    ret nz                                        ; $62f2: $c0

    nop                                           ; $62f3: $00
    ld h, a                                       ; $62f4: $67
    nop                                           ; $62f5: $00
    call z, $ff00                                 ; $62f6: $cc $00 $ff
    nop                                           ; $62f9: $00
    ccf                                           ; $62fa: $3f
    nop                                           ; $62fb: $00
    rst $38                                       ; $62fc: $ff
    nop                                           ; $62fd: $00
    rst $38                                       ; $62fe: $ff
    nop                                           ; $62ff: $00
    add c                                         ; $6300: $81
    nop                                           ; $6301: $00
    ccf                                           ; $6302: $3f
    nop                                           ; $6303: $00
    and $00                                       ; $6304: $e6 $00
    ccf                                           ; $6306: $3f
    nop                                           ; $6307: $00
    add a                                         ; $6308: $87
    nop                                           ; $6309: $00
    rst $38                                       ; $630a: $ff
    nop                                           ; $630b: $00
    rst $38                                       ; $630c: $ff
    nop                                           ; $630d: $00
    rst $38                                       ; $630e: $ff
    nop                                           ; $630f: $00
    jp $9800                                      ; $6310: $c3 $00 $98


    nop                                           ; $6313: $00
    call z, RST_00                                ; $6314: $cc $00 $00
    nop                                           ; $6317: $00
    inc a                                         ; $6318: $3c
    nop                                           ; $6319: $00
    ld h, c                                       ; $631a: $61
    nop                                           ; $631b: $00
    nop                                           ; $631c: $00
    nop                                           ; $631d: $00
    ld a, a                                       ; $631e: $7f
    nop                                           ; $631f: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    rlca                                          ; $6322: $07
    nop                                           ; $6323: $00
    jp RST_00                                     ; $6324: $c3 $00 $00


    nop                                           ; $6327: $00
    rrca                                          ; $6328: $0f
    nop                                           ; $6329: $00
    cp $00                                        ; $632a: $fe $00
    nop                                           ; $632c: $00
    nop                                           ; $632d: $00
    ldh [rP1], a                                  ; $632e: $e0 $00
    inc bc                                        ; $6330: $03
    nop                                           ; $6331: $00
    ld hl, sp+$00                                 ; $6332: $f8 $00
    rst $38                                       ; $6334: $ff
    nop                                           ; $6335: $00
    ld h, b                                       ; $6336: $60
    nop                                           ; $6337: $00
    di                                            ; $6338: $f3
    nop                                           ; $6339: $00
    add [hl]                                      ; $633a: $86
    nop                                           ; $633b: $00
    di                                            ; $633c: $f3
    nop                                           ; $633d: $00
    sbc a                                         ; $633e: $9f
    nop                                           ; $633f: $00
    rst $38                                       ; $6340: $ff
    nop                                           ; $6341: $00
    ld bc, $ff00                                  ; $6342: $01 $00 $ff
    nop                                           ; $6345: $00
    ld a, [hl]                                    ; $6346: $7e
    nop                                           ; $6347: $00
    rst $38                                       ; $6348: $ff
    nop                                           ; $6349: $00
    ld a, c                                       ; $634a: $79

jr_075_634b:
    nop                                           ; $634b: $00
    rst $38                                       ; $634c: $ff
    nop                                           ; $634d: $00
    add a                                         ; $634e: $87
    nop                                           ; $634f: $00
    di                                            ; $6350: $f3
    inc c                                         ; $6351: $0c
    sbc [hl]                                      ; $6352: $9e
    ld h, c                                       ; $6353: $61
    jp $ff3c                                      ; $6354: $c3 $3c $ff


    nop                                           ; $6357: $00
    rrca                                          ; $6358: $0f
    ldh a, [$fe]                                  ; $6359: $f0 $fe
    ld bc, $cc33                                  ; $635b: $01 $33 $cc
    and $19                                       ; $635e: $e6 $19
    db $fc                                        ; $6360: $fc
    inc bc                                        ; $6361: $03
    ld a, c                                       ; $6362: $79
    add [hl]                                      ; $6363: $86
    rst $38                                       ; $6364: $ff
    nop                                           ; $6365: $00
    ld sp, hl                                     ; $6366: $f9
    ld b, $3f                                     ; $6367: $06 $3f
    ret nz                                        ; $6369: $c0

    rra                                           ; $636a: $1f
    ldh [$0c], a                                  ; $636b: $e0 $0c
    di                                            ; $636d: $f3
    ld a, a                                       ; $636e: $7f
    add b                                         ; $636f: $80
    add b                                         ; $6370: $80
    ld a, a                                       ; $6371: $7f
    inc sp                                        ; $6372: $33
    call z, $fe01                                 ; $6373: $cc $01 $fe
    db $fc                                        ; $6376: $fc
    inc bc                                        ; $6377: $03
    nop                                           ; $6378: $00
    rst $38                                       ; $6379: $ff
    jr nc, jr_075_634b                            ; $637a: $30 $cf

    sbc c                                         ; $637c: $99
    ld h, [hl]                                    ; $637d: $66
    nop                                           ; $637e: $00
    rst $38                                       ; $637f: $ff
    rra                                           ; $6380: $1f
    ldh [$c3], a                                  ; $6381: $e0 $c3
    inc a                                         ; $6383: $3c
    ldh [$1f], a                                  ; $6384: $e0 $1f
    inc bc                                        ; $6386: $03
    db $fc                                        ; $6387: $fc
    nop                                           ; $6388: $00
    rst $38                                       ; $6389: $ff
    rrca                                          ; $638a: $0f
    ldh a, [$81]                                  ; $638b: $f0 $81
    ld a, [hl]                                    ; $638d: $7e
    inc c                                         ; $638e: $0c
    di                                            ; $638f: $f3
    add b                                         ; $6390: $80
    rst $38                                       ; $6391: $ff
    inc a                                         ; $6392: $3c
    rst $38                                       ; $6393: $ff
    nop                                           ; $6394: $00
    rst $38                                       ; $6395: $ff
    rst $08                                       ; $6396: $cf
    rst $38                                       ; $6397: $ff
    ld bc, $0cff                                  ; $6398: $01 $ff $0c
    rst $38                                       ; $639b: $ff
    add b                                         ; $639c: $80
    rst $38                                       ; $639d: $ff
    rrca                                          ; $639e: $0f
    rst $38                                       ; $639f: $ff
    ld bc, $ccff                                  ; $63a0: $01 $ff $cc
    rst $38                                       ; $63a3: $ff
    nop                                           ; $63a4: $00
    rst $38                                       ; $63a5: $ff
    inc bc                                        ; $63a6: $03
    rst $38                                       ; $63a7: $ff
    ldh [rIE], a                                  ; $63a8: $e0 $ff
    nop                                           ; $63aa: $00
    rst $38                                       ; $63ab: $ff
    rra                                           ; $63ac: $1f
    rst $38                                       ; $63ad: $ff
    nop                                           ; $63ae: $00
    rst $38                                       ; $63af: $ff
    ld hl, sp-$01                                 ; $63b0: $f8 $ff
    inc bc                                        ; $63b2: $03
    rst $38                                       ; $63b3: $ff
    ld a, [hl]                                    ; $63b4: $7e
    rst $38                                       ; $63b5: $ff
    jp $f9ff                                      ; $63b6: $c3 $ff $f9


    rst $38                                       ; $63b9: $ff
    rst $08                                       ; $63ba: $cf
    rst $38                                       ; $63bb: $ff
    ld h, a                                       ; $63bc: $67
    rst $38                                       ; $63bd: $ff
    rst $08                                       ; $63be: $cf
    rst $38                                       ; $63bf: $ff
    rra                                           ; $63c0: $1f
    rst $38                                       ; $63c1: $ff
    db $fc                                        ; $63c2: $fc
    rst $38                                       ; $63c3: $ff
    ld h, [hl]                                    ; $63c4: $66
    rst $38                                       ; $63c5: $ff
    db $fc                                        ; $63c6: $fc
    rst $38                                       ; $63c7: $ff
    rst $38                                       ; $63c8: $ff
    rst $38                                       ; $63c9: $ff
    call z, $feff                                 ; $63ca: $cc $ff $fe
    rst $38                                       ; $63cd: $ff
    di                                            ; $63ce: $f3
    rst $38                                       ; $63cf: $ff
    jr jr_075_63d2                                ; $63d0: $18 $00

jr_075_63d2:
    inc bc                                        ; $63d2: $03
    nop                                           ; $63d3: $00
    ldh [rP1], a                                  ; $63d4: $e0 $00
    nop                                           ; $63d6: $00
    nop                                           ; $63d7: $00
    add [hl]                                      ; $63d8: $86
    nop                                           ; $63d9: $00
    rrca                                          ; $63da: $0f
    nop                                           ; $63db: $00
    ld h, a                                       ; $63dc: $67
    nop                                           ; $63dd: $00
    call z, $1800                                 ; $63de: $cc $00 $18
    nop                                           ; $63e1: $00
    inc sp                                        ; $63e2: $33
    nop                                           ; $63e3: $00
    add hl, de                                    ; $63e4: $19
    nop                                           ; $63e5: $00
    jr nc, jr_075_63e8                            ; $63e6: $30 $00

jr_075_63e8:
    rlca                                          ; $63e8: $07
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    nop                                           ; $63eb: $00
    sbc [hl]                                      ; $63ec: $9e
    nop                                           ; $63ed: $00
    nop                                           ; $63ee: $00
    nop                                           ; $63ef: $00
    cp $00                                        ; $63f0: $fe $00

jr_075_63f2:
    jp $e100                                      ; $63f2: $c3 $00 $e1


    nop                                           ; $63f5: $00
    ccf                                           ; $63f6: $3f
    nop                                           ; $63f7: $00
    rst $38                                       ; $63f8: $ff
    nop                                           ; $63f9: $00
    rst $38                                       ; $63fa: $ff
    nop                                           ; $63fb: $00
    ld a, c                                       ; $63fc: $79
    nop                                           ; $63fd: $00
    rst $38                                       ; $63fe: $ff
    nop                                           ; $63ff: $00
    rlca                                          ; $6400: $07
    nop                                           ; $6401: $00
    call z, $ff00                                 ; $6402: $cc $00 $ff
    nop                                           ; $6405: $00
    ret nz                                        ; $6406: $c0

    nop                                           ; $6407: $00
    rst $38                                       ; $6408: $ff
    nop                                           ; $6409: $00
    rrca                                          ; $640a: $0f
    nop                                           ; $640b: $00
    ld hl, sp+$00                                 ; $640c: $f8 $00
    ccf                                           ; $640e: $3f
    nop                                           ; $640f: $00
    rst $38                                       ; $6410: $ff
    nop                                           ; $6411: $00
    inc a                                         ; $6412: $3c
    jp $01fe                                      ; $6413: $c3 $fe $01


    rrca                                          ; $6416: $0f
    ldh a, [$e1]                                  ; $6417: $f0 $e1
    ld e, $3f                                     ; $6419: $1e $3f
    ret nz                                        ; $641b: $c0

    cp $01                                        ; $641c: $fe $01
    rrca                                          ; $641e: $0f
    ldh a, [$e7]                                  ; $641f: $f0 $e7
    jr jr_075_63f2                                ; $6421: $18 $cf

    jr nc, jr_075_649e                            ; $6423: $30 $79

    add [hl]                                      ; $6425: $86
    jp $ff3c                                      ; $6426: $c3 $3c $ff


    nop                                           ; $6429: $00
    rst $38                                       ; $642a: $ff
    nop                                           ; $642b: $00
    rlca                                          ; $642c: $07
    ld hl, sp-$01                                 ; $642d: $f8 $ff
    nop                                           ; $642f: $00
    ld a, [hl]                                    ; $6430: $7e
    add c                                         ; $6431: $81
    ret nz                                        ; $6432: $c0

    ccf                                           ; $6433: $3f
    add hl, de                                    ; $6434: $19

jr_075_6435:
    and $c0                                       ; $6435: $e6 $c0
    ccf                                           ; $6437: $3f
    nop                                           ; $6438: $00
    rst $38                                       ; $6439: $ff
    inc bc                                        ; $643a: $03
    db $fc                                        ; $643b: $fc
    nop                                           ; $643c: $00
    rst $38                                       ; $643d: $ff
    nop                                           ; $643e: $00
    rst $38                                       ; $643f: $ff
    nop                                           ; $6440: $00
    rst $38                                       ; $6441: $ff
    ccf                                           ; $6442: $3f
    ret nz                                        ; $6443: $c0

    sbc b                                         ; $6444: $98
    ld h, a                                       ; $6445: $67
    inc sp                                        ; $6446: $33
    call z, $e718                                 ; $6447: $cc $18 $e7
    ret nz                                        ; $644a: $c0

    ccf                                           ; $644b: $3f
    jr jr_075_6435                                ; $644c: $18 $e7

    ret nz                                        ; $644e: $c0

    ccf                                           ; $644f: $3f
    ld h, b                                       ; $6450: $60
    rst $38                                       ; $6451: $ff
    nop                                           ; $6452: $00
    rst $38                                       ; $6453: $ff
    ldh [rIE], a                                  ; $6454: $e0 $ff
    nop                                           ; $6456: $00
    rst $38                                       ; $6457: $ff
    sbc c                                         ; $6458: $99
    rst $38                                       ; $6459: $ff
    jr nc, @+$01                                  ; $645a: $30 $ff

    pop hl                                        ; $645c: $e1
    rst $38                                       ; $645d: $ff
    nop                                           ; $645e: $00
    rst $38                                       ; $645f: $ff
    jr @+$01                                      ; $6460: $18 $ff

    jp $1fff                                      ; $6462: $c3 $ff $1f


    rst $38                                       ; $6465: $ff
    nop                                           ; $6466: $00
    rst $38                                       ; $6467: $ff
    pop hl                                        ; $6468: $e1
    rst $38                                       ; $6469: $ff
    inc bc                                        ; $646a: $03
    rst $38                                       ; $646b: $ff
    rst $38                                       ; $646c: $ff
    rst $38                                       ; $646d: $ff
    nop                                           ; $646e: $00
    rst $38                                       ; $646f: $ff
    inc bc                                        ; $6470: $03
    rst $38                                       ; $6471: $ff
    rst $20                                       ; $6472: $e7
    rst $38                                       ; $6473: $ff
    inc bc                                        ; $6474: $03
    rst $38                                       ; $6475: $ff
    ld hl, sp-$01                                 ; $6476: $f8 $ff
    rrca                                          ; $6478: $0f
    rst $38                                       ; $6479: $ff
    rst $38                                       ; $647a: $ff
    rst $38                                       ; $647b: $ff
    inc c                                         ; $647c: $0c
    rst $38                                       ; $647d: $ff
    sbc a                                         ; $647e: $9f
    rst $38                                       ; $647f: $ff
    call z, $f9ff                                 ; $6480: $cc $ff $f9
    rst $38                                       ; $6483: $ff
    ccf                                           ; $6484: $3f
    rst $38                                       ; $6485: $ff
    ld a, a                                       ; $6486: $7f
    rst $38                                       ; $6487: $ff
    ldh a, [rIE]                                  ; $6488: $f0 $ff
    rst $20                                       ; $648a: $e7
    rst $38                                       ; $648b: $ff
    db $fc                                        ; $648c: $fc
    rst $38                                       ; $648d: $ff
    ld sp, hl                                     ; $648e: $f9
    rst $38                                       ; $648f: $ff
    inc bc                                        ; $6490: $03
    nop                                           ; $6491: $00
    ld b, $00                                     ; $6492: $06 $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    ld a, c                                       ; $6496: $79
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    ld bc, $f000                                  ; $649a: $01 $00 $f0
    nop                                           ; $649d: $00

jr_075_649e:
    ld bc, $0c00                                  ; $649e: $01 $00 $0c
    nop                                           ; $64a1: $00
    ld h, b                                       ; $64a2: $60
    nop                                           ; $64a3: $00
    inc bc                                        ; $64a4: $03
    nop                                           ; $64a5: $00
    ldh [rP1], a                                  ; $64a6: $e0 $00
    inc a                                         ; $64a8: $3c
    nop                                           ; $64a9: $00
    add b                                         ; $64aa: $80
    nop                                           ; $64ab: $00
    inc bc                                        ; $64ac: $03
    nop                                           ; $64ad: $00
    ldh [rP1], a                                  ; $64ae: $e0 $00
    rst $38                                       ; $64b0: $ff
    nop                                           ; $64b1: $00
    add b                                         ; $64b2: $80
    nop                                           ; $64b3: $00
    rst $08                                       ; $64b4: $cf
    nop                                           ; $64b5: $00
    sbc b                                         ; $64b6: $98
    nop                                           ; $64b7: $00
    rst $38                                       ; $64b8: $ff
    nop                                           ; $64b9: $00
    ld a, a                                       ; $64ba: $7f
    nop                                           ; $64bb: $00
    rst $38                                       ; $64bc: $ff
    nop                                           ; $64bd: $00
    rst $38                                       ; $64be: $ff
    nop                                           ; $64bf: $00
    inc bc                                        ; $64c0: $03
    nop                                           ; $64c1: $00
    ld a, a                                       ; $64c2: $7f
    nop                                           ; $64c3: $00
    call z, Call_075_7f00                         ; $64c4: $cc $00 $7f
    nop                                           ; $64c7: $00
    rrca                                          ; $64c8: $0f
    nop                                           ; $64c9: $00
    cp $00                                        ; $64ca: $fe $00
    rst $38                                       ; $64cc: $ff
    nop                                           ; $64cd: $00
    rst $38                                       ; $64ce: $ff
    nop                                           ; $64cf: $00
    add [hl]                                      ; $64d0: $86
    nop                                           ; $64d1: $00
    jr nc, jr_075_64d4                            ; $64d2: $30 $00

jr_075_64d4:
    sbc c                                         ; $64d4: $99
    nop                                           ; $64d5: $00
    nop                                           ; $64d6: $00
    nop                                           ; $64d7: $00
    ld a, b                                       ; $64d8: $78
    nop                                           ; $64d9: $00
    jp RST_00                                     ; $64da: $c3 $00 $00


    nop                                           ; $64dd: $00
    rst $38                                       ; $64de: $ff
    nop                                           ; $64df: $00
    ld bc, $0f00                                  ; $64e0: $01 $00 $0f
    nop                                           ; $64e3: $00
    add a                                         ; $64e4: $87
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    ld e, $00                                     ; $64e8: $1e $00
    db $fc                                        ; $64ea: $fc
    nop                                           ; $64eb: $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    ret nz                                        ; $64ee: $c0

    nop                                           ; $64ef: $00
    rlca                                          ; $64f0: $07
    nop                                           ; $64f1: $00
    ldh a, [rP1]                                  ; $64f2: $f0 $00
    rst $38                                       ; $64f4: $ff
    nop                                           ; $64f5: $00
    ret nz                                        ; $64f6: $c0

    nop                                           ; $64f7: $00
    rst $20                                       ; $64f8: $e7
    nop                                           ; $64f9: $00
    inc c                                         ; $64fa: $0c
    nop                                           ; $64fb: $00
    rst $20                                       ; $64fc: $e7
    nop                                           ; $64fd: $00
    ccf                                           ; $64fe: $3f
    nop                                           ; $64ff: $00
    cp $00                                        ; $6500: $fe $00
    inc bc                                        ; $6502: $03
    nop                                           ; $6503: $00
    rst $38                                       ; $6504: $ff
    nop                                           ; $6505: $00
    db $fc                                        ; $6506: $fc
    nop                                           ; $6507: $00
    rst $38                                       ; $6508: $ff
    nop                                           ; $6509: $00
    di                                            ; $650a: $f3
    nop                                           ; $650b: $00
    rst $38                                       ; $650c: $ff
    nop                                           ; $650d: $00
    rrca                                          ; $650e: $0f
    nop                                           ; $650f: $00
    rst $20                                       ; $6510: $e7
    jr @+$3e                                      ; $6511: $18 $3c

    jp Jump_075_7887                              ; $6513: $c3 $87 $78


    rst $38                                       ; $6516: $ff
    nop                                           ; $6517: $00
    ld e, $e1                                     ; $6518: $1e $e1
    db $fc                                        ; $651a: $fc
    inc bc                                        ; $651b: $03
    ld h, [hl]                                    ; $651c: $66
    sbc c                                         ; $651d: $99
    call z, $f933                                 ; $651e: $cc $33 $f9
    ld b, $f3                                     ; $6521: $06 $f3
    inc c                                         ; $6523: $0c
    rst $38                                       ; $6524: $ff
    nop                                           ; $6525: $00
    di                                            ; $6526: $f3
    inc c                                         ; $6527: $0c
    ld a, [hl]                                    ; $6528: $7e
    add c                                         ; $6529: $81
    ccf                                           ; $652a: $3f
    ret nz                                        ; $652b: $c0

    jr @-$17                                      ; $652c: $18 $e7

    rst $38                                       ; $652e: $ff
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    rst $38                                       ; $6531: $ff
    ld h, a                                       ; $6532: $67
    sbc b                                         ; $6533: $98
    inc bc                                        ; $6534: $03
    db $fc                                        ; $6535: $fc
    ld hl, sp+$07                                 ; $6536: $f8 $07
    nop                                           ; $6538: $00
    rst $38                                       ; $6539: $ff
    ld h, b                                       ; $653a: $60
    sbc a                                         ; $653b: $9f
    inc sp                                        ; $653c: $33
    call z, $ff00                                 ; $653d: $cc $00 $ff
    ccf                                           ; $6540: $3f
    ret nz                                        ; $6541: $c0

    add [hl]                                      ; $6542: $86
    ld a, c                                       ; $6543: $79
    ret nz                                        ; $6544: $c0

    ccf                                           ; $6545: $3f
    rlca                                          ; $6546: $07
    ld hl, sp+$00                                 ; $6547: $f8 $00
    rst $38                                       ; $6549: $ff
    ld e, $e1                                     ; $654a: $1e $e1
    inc bc                                        ; $654c: $03
    db $fc                                        ; $654d: $fc
    jr @-$17                                      ; $654e: $18 $e7

    nop                                           ; $6550: $00
    rst $38                                       ; $6551: $ff
    ld a, c                                       ; $6552: $79
    rst $38                                       ; $6553: $ff
    nop                                           ; $6554: $00
    rst $38                                       ; $6555: $ff
    sbc [hl]                                      ; $6556: $9e
    rst $38                                       ; $6557: $ff
    inc bc                                        ; $6558: $03
    rst $38                                       ; $6559: $ff
    jr @+$01                                      ; $655a: $18 $ff

    nop                                           ; $655c: $00
    rst $38                                       ; $655d: $ff
    ld e, $ff                                     ; $655e: $1e $ff
    inc bc                                        ; $6560: $03
    rst $38                                       ; $6561: $ff
    sbc b                                         ; $6562: $98
    rst $38                                       ; $6563: $ff
    nop                                           ; $6564: $00
    rst $38                                       ; $6565: $ff
    rlca                                          ; $6566: $07
    rst $38                                       ; $6567: $ff
    ret nz                                        ; $6568: $c0

    rst $38                                       ; $6569: $ff
    nop                                           ; $656a: $00
    rst $38                                       ; $656b: $ff
    ccf                                           ; $656c: $3f
    rst $38                                       ; $656d: $ff
    nop                                           ; $656e: $00
    rst $38                                       ; $656f: $ff
    ldh a, [rIE]                                  ; $6570: $f0 $ff
    rlca                                          ; $6572: $07
    rst $38                                       ; $6573: $ff
    db $fc                                        ; $6574: $fc
    rst $38                                       ; $6575: $ff
    add a                                         ; $6576: $87
    rst $38                                       ; $6577: $ff
    di                                            ; $6578: $f3
    rst $38                                       ; $6579: $ff
    sbc a                                         ; $657a: $9f
    rst $38                                       ; $657b: $ff
    rst $08                                       ; $657c: $cf
    rst $38                                       ; $657d: $ff
    sbc a                                         ; $657e: $9f
    rst $38                                       ; $657f: $ff
    ccf                                           ; $6580: $3f
    rst $38                                       ; $6581: $ff
    ld hl, sp-$01                                 ; $6582: $f8 $ff
    call z, $f9ff                                 ; $6584: $cc $ff $f9
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    sbc c                                         ; $658a: $99
    rst $38                                       ; $658b: $ff
    db $fc                                        ; $658c: $fc
    rst $38                                       ; $658d: $ff
    rst $20                                       ; $658e: $e7
    rst $38                                       ; $658f: $ff
    jr nc, jr_075_6592                            ; $6590: $30 $00

jr_075_6592:
    ld b, $00                                     ; $6592: $06 $00
    ret nz                                        ; $6594: $c0

    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    inc c                                         ; $6598: $0c
    nop                                           ; $6599: $00
    ld e, $00                                     ; $659a: $1e $00
    rst $08                                       ; $659c: $cf
    nop                                           ; $659d: $00
    sbc b                                         ; $659e: $98
    nop                                           ; $659f: $00
    jr nc, jr_075_65a2                            ; $65a0: $30 $00

jr_075_65a2:
    ld h, [hl]                                    ; $65a2: $66
    nop                                           ; $65a3: $00
    inc sp                                        ; $65a4: $33
    nop                                           ; $65a5: $00
    ld h, b                                       ; $65a6: $60
    nop                                           ; $65a7: $00
    rrca                                          ; $65a8: $0f
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    inc a                                         ; $65ac: $3c
    nop                                           ; $65ad: $00
    ld bc, $fe00                                  ; $65ae: $01 $00 $fe
    nop                                           ; $65b1: $00

jr_075_65b2:
    jp $e100                                      ; $65b2: $c3 $00 $e1


    nop                                           ; $65b5: $00
    ccf                                           ; $65b6: $3f
    nop                                           ; $65b7: $00
    rst $38                                       ; $65b8: $ff
    nop                                           ; $65b9: $00
    rst $38                                       ; $65ba: $ff
    nop                                           ; $65bb: $00
    ld a, c                                       ; $65bc: $79
    nop                                           ; $65bd: $00
    rst $38                                       ; $65be: $ff
    nop                                           ; $65bf: $00
    rlca                                          ; $65c0: $07
    nop                                           ; $65c1: $00
    call z, $ff00                                 ; $65c2: $cc $00 $ff
    nop                                           ; $65c5: $00
    ret nz                                        ; $65c6: $c0

    nop                                           ; $65c7: $00
    rst $38                                       ; $65c8: $ff
    nop                                           ; $65c9: $00
    rrca                                          ; $65ca: $0f
    nop                                           ; $65cb: $00
    ld hl, sp+$00                                 ; $65cc: $f8 $00
    ccf                                           ; $65ce: $3f
    nop                                           ; $65cf: $00
    rst $38                                       ; $65d0: $ff
    nop                                           ; $65d1: $00
    inc a                                         ; $65d2: $3c
    jp $01fe                                      ; $65d3: $c3 $fe $01


    rrca                                          ; $65d6: $0f
    ldh a, [$e1]                                  ; $65d7: $f0 $e1
    ld e, $3f                                     ; $65d9: $1e $3f
    ret nz                                        ; $65db: $c0

    cp $01                                        ; $65dc: $fe $01
    rrca                                          ; $65de: $0f
    ldh a, [$e7]                                  ; $65df: $f0 $e7
    jr jr_075_65b2                                ; $65e1: $18 $cf

    jr nc, jr_075_665e                            ; $65e3: $30 $79

    add [hl]                                      ; $65e5: $86
    jp $ff3c                                      ; $65e6: $c3 $3c $ff


    nop                                           ; $65e9: $00
    rst $38                                       ; $65ea: $ff
    nop                                           ; $65eb: $00
    rlca                                          ; $65ec: $07
    ld hl, sp-$01                                 ; $65ed: $f8 $ff
    nop                                           ; $65ef: $00
    ld a, [hl]                                    ; $65f0: $7e
    add c                                         ; $65f1: $81
    ret nz                                        ; $65f2: $c0

    ccf                                           ; $65f3: $3f
    add hl, de                                    ; $65f4: $19

jr_075_65f5:
    and $c0                                       ; $65f5: $e6 $c0
    ccf                                           ; $65f7: $3f
    nop                                           ; $65f8: $00
    rst $38                                       ; $65f9: $ff
    inc bc                                        ; $65fa: $03
    db $fc                                        ; $65fb: $fc
    nop                                           ; $65fc: $00
    rst $38                                       ; $65fd: $ff
    nop                                           ; $65fe: $00
    rst $38                                       ; $65ff: $ff
    nop                                           ; $6600: $00
    rst $38                                       ; $6601: $ff
    ccf                                           ; $6602: $3f
    ret nz                                        ; $6603: $c0

    sbc b                                         ; $6604: $98
    ld h, a                                       ; $6605: $67
    inc sp                                        ; $6606: $33
    call z, $e718                                 ; $6607: $cc $18 $e7
    ret nz                                        ; $660a: $c0

    ccf                                           ; $660b: $3f
    jr jr_075_65f5                                ; $660c: $18 $e7

    ret nz                                        ; $660e: $c0

    ccf                                           ; $660f: $3f
    ld h, b                                       ; $6610: $60
    rst $38                                       ; $6611: $ff
    nop                                           ; $6612: $00
    rst $38                                       ; $6613: $ff
    ldh [rIE], a                                  ; $6614: $e0 $ff
    nop                                           ; $6616: $00
    rst $38                                       ; $6617: $ff
    sbc c                                         ; $6618: $99
    rst $38                                       ; $6619: $ff
    jr nc, @+$01                                  ; $661a: $30 $ff

    pop hl                                        ; $661c: $e1
    rst $38                                       ; $661d: $ff
    nop                                           ; $661e: $00
    rst $38                                       ; $661f: $ff
    jr @+$01                                      ; $6620: $18 $ff

    jp $1fff                                      ; $6622: $c3 $ff $1f


    rst $38                                       ; $6625: $ff
    nop                                           ; $6626: $00
    rst $38                                       ; $6627: $ff
    pop hl                                        ; $6628: $e1
    rst $38                                       ; $6629: $ff
    inc bc                                        ; $662a: $03
    rst $38                                       ; $662b: $ff
    rst $38                                       ; $662c: $ff
    rst $38                                       ; $662d: $ff
    nop                                           ; $662e: $00
    rst $38                                       ; $662f: $ff
    rlca                                          ; $6630: $07
    rst $38                                       ; $6631: $ff
    rst $08                                       ; $6632: $cf

Call_075_6633:
    rst $38                                       ; $6633: $ff
    ld b, $ff                                     ; $6634: $06 $ff
    ldh a, [rIE]                                  ; $6636: $f0 $ff
    rra                                           ; $6638: $1f
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    rst $38                                       ; $663b: $ff
    add hl, de                                    ; $663c: $19
    rst $38                                       ; $663d: $ff
    ccf                                           ; $663e: $3f
    rst $38                                       ; $663f: $ff
    sbc b                                         ; $6640: $98
    rst $38                                       ; $6641: $ff
    di                                            ; $6642: $f3
    rst $38                                       ; $6643: $ff
    ld a, [hl]                                    ; $6644: $7e
    rst $38                                       ; $6645: $ff
    rst $38                                       ; $6646: $ff
    rst $38                                       ; $6647: $ff
    ldh [rIE], a                                  ; $6648: $e0 $ff
    rst $08                                       ; $664a: $cf
    rst $38                                       ; $664b: $ff
    ld hl, sp-$01                                 ; $664c: $f8 $ff
    di                                            ; $664e: $f3
    rst $38                                       ; $664f: $ff
    ld b, $00                                     ; $6650: $06 $00
    inc c                                         ; $6652: $0c
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    di                                            ; $6656: $f3
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    inc bc                                        ; $665a: $03
    nop                                           ; $665b: $00
    ldh [rP1], a                                  ; $665c: $e0 $00

jr_075_665e:
    inc bc                                        ; $665e: $03
    nop                                           ; $665f: $00
    jr jr_075_6662                                ; $6660: $18 $00

jr_075_6662:
    ret nz                                        ; $6662: $c0

    nop                                           ; $6663: $00
    ld b, $00                                     ; $6664: $06 $00
    ret nz                                        ; $6666: $c0

    nop                                           ; $6667: $00
    ld a, b                                       ; $6668: $78
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    nop                                           ; $666b: $00
    rlca                                          ; $666c: $07
    nop                                           ; $666d: $00
    ret nz                                        ; $666e: $c0

    nop                                           ; $666f: $00
    cp $00                                        ; $6670: $fe $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    sbc a                                         ; $6674: $9f
    nop                                           ; $6675: $00
    jr nc, jr_075_6678                            ; $6676: $30 $00

jr_075_6678:
    cp $00                                        ; $6678: $fe $00
    rst $38                                       ; $667a: $ff
    nop                                           ; $667b: $00
    rst $38                                       ; $667c: $ff
    nop                                           ; $667d: $00
    rst $38                                       ; $667e: $ff
    nop                                           ; $667f: $00
    rlca                                          ; $6680: $07
    nop                                           ; $6681: $00
    rst $38                                       ; $6682: $ff
    nop                                           ; $6683: $00
    sbc c                                         ; $6684: $99
    nop                                           ; $6685: $00
    rst $38                                       ; $6686: $ff
    nop                                           ; $6687: $00
    rra                                           ; $6688: $1f
    nop                                           ; $6689: $00
    db $fc                                        ; $668a: $fc
    nop                                           ; $668b: $00
    rst $38                                       ; $668c: $ff
    nop                                           ; $668d: $00
    rst $38                                       ; $668e: $ff
    nop                                           ; $668f: $00
    inc c                                         ; $6690: $0c
    nop                                           ; $6691: $00
    ld h, b                                       ; $6692: $60
    nop                                           ; $6693: $00
    inc sp                                        ; $6694: $33
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    ldh a, [rP1]                                  ; $6698: $f0 $00
    add a                                         ; $669a: $87
    nop                                           ; $669b: $00
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    rst $38                                       ; $669e: $ff
    nop                                           ; $669f: $00
    inc bc                                        ; $66a0: $03
    nop                                           ; $66a1: $00
    ld e, $00                                     ; $66a2: $1e $00
    rrca                                          ; $66a4: $0f
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    nop                                           ; $66a7: $00
    inc a                                         ; $66a8: $3c
    nop                                           ; $66a9: $00
    ld sp, hl                                     ; $66aa: $f9
    nop                                           ; $66ab: $00
    nop                                           ; $66ac: $00
    nop                                           ; $66ad: $00
    add c                                         ; $66ae: $81
    nop                                           ; $66af: $00
    rrca                                          ; $66b0: $0f
    nop                                           ; $66b1: $00
    ldh [rP1], a                                  ; $66b2: $e0 $00
    rst $38                                       ; $66b4: $ff
    nop                                           ; $66b5: $00
    add c                                         ; $66b6: $81
    nop                                           ; $66b7: $00
    rst $08                                       ; $66b8: $cf
    nop                                           ; $66b9: $00
    add hl, de                                    ; $66ba: $19
    nop                                           ; $66bb: $00
    rst $08                                       ; $66bc: $cf

jr_075_66bd:
    nop                                           ; $66bd: $00
    ld a, [hl]                                    ; $66be: $7e
    nop                                           ; $66bf: $00
    db $fc                                        ; $66c0: $fc
    nop                                           ; $66c1: $00
    rlca                                          ; $66c2: $07
    nop                                           ; $66c3: $00
    rst $38                                       ; $66c4: $ff
    nop                                           ; $66c5: $00
    ld sp, hl                                     ; $66c6: $f9
    nop                                           ; $66c7: $00
    rst $38                                       ; $66c8: $ff
    nop                                           ; $66c9: $00
    and $00                                       ; $66ca: $e6 $00
    rst $38                                       ; $66cc: $ff
    nop                                           ; $66cd: $00
    ld e, $00                                     ; $66ce: $1e $00
    rst $08                                       ; $66d0: $cf
    jr nc, jr_075_674c                            ; $66d1: $30 $79

    add [hl]                                      ; $66d3: $86
    rrca                                          ; $66d4: $0f
    ldh a, [rIE]                                  ; $66d5: $f0 $ff
    nop                                           ; $66d7: $00
    inc a                                         ; $66d8: $3c
    jp $07f8                                      ; $66d9: $c3 $f8 $07


    call z, $9933                                 ; $66dc: $cc $33 $99

jr_075_66df:
    ld h, [hl]                                    ; $66df: $66
    di                                            ; $66e0: $f3
    inc c                                         ; $66e1: $0c
    and $19                                       ; $66e2: $e6 $19
    rst $38                                       ; $66e4: $ff

jr_075_66e5:
    nop                                           ; $66e5: $00
    rst $20                                       ; $66e6: $e7
    jr jr_075_66e5                                ; $66e7: $18 $fc

    inc bc                                        ; $66e9: $03
    ld a, a                                       ; $66ea: $7f
    add b                                         ; $66eb: $80
    jr nc, jr_075_66bd                            ; $66ec: $30 $cf

    rst $38                                       ; $66ee: $ff
    nop                                           ; $66ef: $00
    nop                                           ; $66f0: $00
    rst $38                                       ; $66f1: $ff
    rst $08                                       ; $66f2: $cf
    jr nc, jr_075_66fc                            ; $66f3: $30 $07

    ld hl, sp-$10                                 ; $66f5: $f8 $f0
    rrca                                          ; $66f7: $0f
    nop                                           ; $66f8: $00
    rst $38                                       ; $66f9: $ff
    ret nz                                        ; $66fa: $c0

    ccf                                           ; $66fb: $3f

jr_075_66fc:
    ld h, [hl]                                    ; $66fc: $66
    sbc c                                         ; $66fd: $99
    nop                                           ; $66fe: $00
    rst $38                                       ; $66ff: $ff

Call_075_6700:
    ld a, [hl]                                    ; $6700: $7e
    add c                                         ; $6701: $81
    inc c                                         ; $6702: $0c
    di                                            ; $6703: $f3
    add b                                         ; $6704: $80
    ld a, a                                       ; $6705: $7f
    rrca                                          ; $6706: $0f
    ldh a, [rP1]                                  ; $6707: $f0 $00
    rst $38                                       ; $6709: $ff
    inc a                                         ; $670a: $3c
    jp $f906                                      ; $670b: $c3 $06 $f9


    jr nc, jr_075_66df                            ; $670e: $30 $cf

    nop                                           ; $6710: $00
    rst $38                                       ; $6711: $ff
    di                                            ; $6712: $f3
    rst $38                                       ; $6713: $ff
    nop                                           ; $6714: $00
    rst $38                                       ; $6715: $ff
    inc a                                         ; $6716: $3c
    rst $38                                       ; $6717: $ff
    rlca                                          ; $6718: $07
    rst $38                                       ; $6719: $ff
    jr nc, @+$01                                  ; $671a: $30 $ff

    nop                                           ; $671c: $00
    rst $38                                       ; $671d: $ff
    inc a                                         ; $671e: $3c
    rst $38                                       ; $671f: $ff
    ld b, $ff                                     ; $6720: $06 $ff
    jr nc, @+$01                                  ; $6722: $30 $ff

    nop                                           ; $6724: $00
    rst $38                                       ; $6725: $ff
    rrca                                          ; $6726: $0f
    rst $38                                       ; $6727: $ff
    add b                                         ; $6728: $80
    rst $38                                       ; $6729: $ff
    nop                                           ; $672a: $00
    rst $38                                       ; $672b: $ff
    ld a, [hl]                                    ; $672c: $7e
    rst $38                                       ; $672d: $ff
    nop                                           ; $672e: $00
    rst $38                                       ; $672f: $ff
    ldh [rIE], a                                  ; $6730: $e0 $ff
    rrca                                          ; $6732: $0f
    rst $38                                       ; $6733: $ff
    ld sp, hl                                     ; $6734: $f9
    rst $38                                       ; $6735: $ff
    rrca                                          ; $6736: $0f
    rst $38                                       ; $6737: $ff
    rst $20                                       ; $6738: $e7
    rst $38                                       ; $6739: $ff
    ccf                                           ; $673a: $3f
    rst $38                                       ; $673b: $ff
    sbc a                                         ; $673c: $9f
    rst $38                                       ; $673d: $ff
    ccf                                           ; $673e: $3f
    rst $38                                       ; $673f: $ff
    ld a, a                                       ; $6740: $7f

jr_075_6741:
    rst $38                                       ; $6741: $ff
    ldh a, [rIE]                                  ; $6742: $f0 $ff
    sbc c                                         ; $6744: $99
    rst $38                                       ; $6745: $ff
    di                                            ; $6746: $f3
    rst $38                                       ; $6747: $ff
    rst $38                                       ; $6748: $ff
    rst $38                                       ; $6749: $ff
    inc sp                                        ; $674a: $33
    rst $38                                       ; $674b: $ff

jr_075_674c:
    ld sp, hl                                     ; $674c: $f9
    rst $38                                       ; $674d: $ff
    rst $08                                       ; $674e: $cf
    rst $38                                       ; $674f: $ff
    ld h, b                                       ; $6750: $60
    nop                                           ; $6751: $00
    inc c                                         ; $6752: $0c
    nop                                           ; $6753: $00
    add b                                         ; $6754: $80
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    jr jr_075_675a                                ; $6758: $18 $00

jr_075_675a:
    inc a                                         ; $675a: $3c
    nop                                           ; $675b: $00
    sbc [hl]                                      ; $675c: $9e
    nop                                           ; $675d: $00
    jr nc, jr_075_6760                            ; $675e: $30 $00

jr_075_6760:
    ld h, b                                       ; $6760: $60
    nop                                           ; $6761: $00
    call z, Call_075_6700                         ; $6762: $cc $00 $67
    nop                                           ; $6765: $00
    ret nz                                        ; $6766: $c0

    nop                                           ; $6767: $00
    ld e, $00                                     ; $6768: $1e $00
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    ld a, c                                       ; $676c: $79
    nop                                           ; $676d: $00
    inc bc                                        ; $676e: $03
    nop                                           ; $676f: $00
    db $fc                                        ; $6770: $fc
    nop                                           ; $6771: $00
    add a                                         ; $6772: $87
    nop                                           ; $6773: $00
    jp Jump_075_7f00                              ; $6774: $c3 $00 $7f


    nop                                           ; $6777: $00
    rst $38                                       ; $6778: $ff
    nop                                           ; $6779: $00
    cp $00                                        ; $677a: $fe $00
    di                                            ; $677c: $f3
    nop                                           ; $677d: $00
    cp $00                                        ; $677e: $fe $00
    rrca                                          ; $6780: $0f
    nop                                           ; $6781: $00
    sbc c                                         ; $6782: $99
    nop                                           ; $6783: $00
    rst $38                                       ; $6784: $ff
    nop                                           ; $6785: $00
    add b                                         ; $6786: $80
    nop                                           ; $6787: $00
    rst $38                                       ; $6788: $ff
    nop                                           ; $6789: $00
    rra                                           ; $678a: $1f
    nop                                           ; $678b: $00
    ldh a, [rP1]                                  ; $678c: $f0 $00
    ld a, a                                       ; $678e: $7f
    nop                                           ; $678f: $00
    rst $38                                       ; $6790: $ff
    nop                                           ; $6791: $00
    ld a, c                                       ; $6792: $79
    add [hl]                                      ; $6793: $86
    db $fc                                        ; $6794: $fc

jr_075_6795:
    inc bc                                        ; $6795: $03
    rra                                           ; $6796: $1f
    ldh [$c3], a                                  ; $6797: $e0 $c3

jr_075_6799:
    inc a                                         ; $6799: $3c
    ld a, a                                       ; $679a: $7f
    add b                                         ; $679b: $80
    db $fc                                        ; $679c: $fc

jr_075_679d:
    inc bc                                        ; $679d: $03
    rra                                           ; $679e: $1f
    ldh [$cf], a                                  ; $679f: $e0 $cf
    jr nc, jr_075_6741                            ; $67a1: $30 $9e

    ld h, c                                       ; $67a3: $61
    di                                            ; $67a4: $f3
    inc c                                         ; $67a5: $0c
    add [hl]                                      ; $67a6: $86
    ld a, c                                       ; $67a7: $79
    rst $38                                       ; $67a8: $ff
    nop                                           ; $67a9: $00
    cp $01                                        ; $67aa: $fe $01
    rrca                                          ; $67ac: $0f
    ldh a, [$fe]                                  ; $67ad: $f0 $fe
    ld bc, $03fc                                  ; $67af: $01 $fc $03
    add b                                         ; $67b2: $80
    ld a, a                                       ; $67b3: $7f
    inc sp                                        ; $67b4: $33
    call z, $7f80                                 ; $67b5: $cc $80 $7f
    nop                                           ; $67b8: $00
    rst $38                                       ; $67b9: $ff
    rlca                                          ; $67ba: $07
    ld hl, sp+$00                                 ; $67bb: $f8 $00
    rst $38                                       ; $67bd: $ff
    ld bc, $00fe                                  ; $67be: $01 $fe $00
    rst $38                                       ; $67c1: $ff
    ld a, a                                       ; $67c2: $7f
    add b                                         ; $67c3: $80
    jr nc, jr_075_6795                            ; $67c4: $30 $cf

    ld h, a                                       ; $67c6: $67
    sbc b                                         ; $67c7: $98
    jr nc, jr_075_6799                            ; $67c8: $30 $cf

    add b                                         ; $67ca: $80
    ld a, a                                       ; $67cb: $7f
    jr nc, jr_075_679d                            ; $67cc: $30 $cf

    add b                                         ; $67ce: $80
    ld a, a                                       ; $67cf: $7f
    ret nz                                        ; $67d0: $c0

    rst $38                                       ; $67d1: $ff
    ld bc, $c0ff                                  ; $67d2: $01 $ff $c0
    rst $38                                       ; $67d5: $ff
    nop                                           ; $67d6: $00
    rst $38                                       ; $67d7: $ff
    inc sp                                        ; $67d8: $33
    rst $38                                       ; $67d9: $ff
    ld h, b                                       ; $67da: $60
    rst $38                                       ; $67db: $ff
    jp Jump_000_00ff                              ; $67dc: $c3 $ff $00


    rst $38                                       ; $67df: $ff
    jr nc, @+$01                                  ; $67e0: $30 $ff

    add [hl]                                      ; $67e2: $86
    rst $38                                       ; $67e3: $ff
    ccf                                           ; $67e4: $3f
    rst $38                                       ; $67e5: $ff
    nop                                           ; $67e6: $00
    rst $38                                       ; $67e7: $ff
    jp Jump_000_06ff                              ; $67e8: $c3 $ff $06


    rst $38                                       ; $67eb: $ff
    rst $38                                       ; $67ec: $ff
    rst $38                                       ; $67ed: $ff
    nop                                           ; $67ee: $00
    rst $38                                       ; $67ef: $ff
    rrca                                          ; $67f0: $0f
    rst $38                                       ; $67f1: $ff
    sbc a                                         ; $67f2: $9f
    rst $38                                       ; $67f3: $ff
    inc c                                         ; $67f4: $0c
    rst $38                                       ; $67f5: $ff
    pop hl                                        ; $67f6: $e1
    rst $38                                       ; $67f7: $ff
    ccf                                           ; $67f8: $3f
    rst $38                                       ; $67f9: $ff
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
    inc sp                                        ; $67fc: $33
    rst $38                                       ; $67fd: $ff
    ld a, a                                       ; $67fe: $7f
    rst $38                                       ; $67ff: $ff
    jr nc, @+$01                                  ; $6800: $30 $ff

    rst $20                                       ; $6802: $e7
    rst $38                                       ; $6803: $ff
    db $fc                                        ; $6804: $fc
    rst $38                                       ; $6805: $ff
    rst $38                                       ; $6806: $ff
    rst $38                                       ; $6807: $ff
    ret nz                                        ; $6808: $c0

    rst $38                                       ; $6809: $ff
    sbc a                                         ; $680a: $9f
    rst $38                                       ; $680b: $ff
    ldh a, [rIE]                                  ; $680c: $f0 $ff
    and $ff                                       ; $680e: $e6 $ff
    inc c                                         ; $6810: $0c
    nop                                           ; $6811: $00
    add hl, de                                    ; $6812: $19
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    rst $20                                       ; $6816: $e7
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    ld b, $00                                     ; $681a: $06 $00
    ret nz                                        ; $681c: $c0

    nop                                           ; $681d: $00
    rlca                                          ; $681e: $07
    nop                                           ; $681f: $00
    jr nc, jr_075_6822                            ; $6820: $30 $00

jr_075_6822:
    add b                                         ; $6822: $80
    nop                                           ; $6823: $00
    inc c                                         ; $6824: $0c
    nop                                           ; $6825: $00
    add c                                         ; $6826: $81
    nop                                           ; $6827: $00
    ldh a, [rP1]                                  ; $6828: $f0 $00
    nop                                           ; $682a: $00
    nop                                           ; $682b: $00
    rrca                                          ; $682c: $0f
    nop                                           ; $682d: $00
    add b                                         ; $682e: $80
    nop                                           ; $682f: $00
    db $fc                                        ; $6830: $fc
    nop                                           ; $6831: $00
    ld bc, $3f00                                  ; $6832: $01 $00 $3f
    nop                                           ; $6835: $00
    ld h, c                                       ; $6836: $61
    nop                                           ; $6837: $00
    db $fc                                        ; $6838: $fc
    nop                                           ; $6839: $00
    rst $38                                       ; $683a: $ff
    nop                                           ; $683b: $00

jr_075_683c:
    rst $38                                       ; $683c: $ff
    nop                                           ; $683d: $00
    rst $38                                       ; $683e: $ff
    nop                                           ; $683f: $00
    rrca                                          ; $6840: $0f
    nop                                           ; $6841: $00
    cp $00                                        ; $6842: $fe $00
    inc sp                                        ; $6844: $33
    nop                                           ; $6845: $00
    cp $00                                        ; $6846: $fe $00
    ccf                                           ; $6848: $3f
    nop                                           ; $6849: $00
    ld sp, hl                                     ; $684a: $f9
    nop                                           ; $684b: $00
    rst $38                                       ; $684c: $ff
    nop                                           ; $684d: $00
    rst $38                                       ; $684e: $ff
    nop                                           ; $684f: $00
    jr nc, jr_075_6852                            ; $6850: $30 $00

jr_075_6852:
    add b                                         ; $6852: $80
    nop                                           ; $6853: $00
    call z, RST_00                                ; $6854: $cc $00 $00
    nop                                           ; $6857: $00
    ret nz                                        ; $6858: $c0

    nop                                           ; $6859: $00
    rra                                           ; $685a: $1f
    nop                                           ; $685b: $00
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    cp $00                                        ; $685e: $fe $00
    inc c                                         ; $6860: $0c
    nop                                           ; $6861: $00
    ld a, c                                       ; $6862: $79
    nop                                           ; $6863: $00
    inc a                                         ; $6864: $3c
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    di                                            ; $6868: $f3
    nop                                           ; $6869: $00
    and $00                                       ; $686a: $e6 $00
    nop                                           ; $686c: $00
    nop                                           ; $686d: $00
    rlca                                          ; $686e: $07
    nop                                           ; $686f: $00
    ccf                                           ; $6870: $3f
    nop                                           ; $6871: $00
    add b                                         ; $6872: $80
    nop                                           ; $6873: $00
    rst $38                                       ; $6874: $ff
    nop                                           ; $6875: $00
    rlca                                          ; $6876: $07
    nop                                           ; $6877: $00
    ccf                                           ; $6878: $3f
    nop                                           ; $6879: $00
    ld h, a                                       ; $687a: $67
    nop                                           ; $687b: $00
    ccf                                           ; $687c: $3f
    nop                                           ; $687d: $00
    ld hl, sp+$00                                 ; $687e: $f8 $00
    ldh a, [rP1]                                  ; $6880: $f0 $00
    rra                                           ; $6882: $1f
    nop                                           ; $6883: $00
    rst $38                                       ; $6884: $ff
    nop                                           ; $6885: $00
    and $00                                       ; $6886: $e6 $00
    rst $38                                       ; $6888: $ff
    nop                                           ; $6889: $00
    sbc b                                         ; $688a: $98
    nop                                           ; $688b: $00
    rst $38                                       ; $688c: $ff
    nop                                           ; $688d: $00
    ld a, c                                       ; $688e: $79
    nop                                           ; $688f: $00
    ccf                                           ; $6890: $3f
    ret nz                                        ; $6891: $c0

    rst $20                                       ; $6892: $e7
    jr jr_075_68d4                                ; $6893: $18 $3f

    ret nz                                        ; $6895: $c0

    rst $38                                       ; $6896: $ff
    nop                                           ; $6897: $00
    di                                            ; $6898: $f3
    inc c                                         ; $6899: $0c
    pop hl                                        ; $689a: $e1
    ld e, $30                                     ; $689b: $1e $30
    rst $08                                       ; $689d: $cf
    ld h, a                                       ; $689e: $67
    sbc b                                         ; $689f: $98
    rst $08                                       ; $68a0: $cf
    jr nc, jr_075_683c                            ; $68a1: $30 $99

    ld h, [hl]                                    ; $68a3: $66
    db $fc                                        ; $68a4: $fc
    inc bc                                        ; $68a5: $03
    sbc a                                         ; $68a6: $9f
    ld h, b                                       ; $68a7: $60
    ldh a, [rIF]                                  ; $68a8: $f0 $0f
    rst $38                                       ; $68aa: $ff
    nop                                           ; $68ab: $00
    jp $fe3c                                      ; $68ac: $c3 $3c $fe


    ld bc, $ff00                                  ; $68af: $01 $00 $ff
    sbc [hl]                                      ; $68b2: $9e
    ld h, c                                       ; $68b3: $61
    rrca                                          ; $68b4: $0f
    ldh a, [$e0]                                  ; $68b5: $f0 $e0
    rra                                           ; $68b7: $1f
    nop                                           ; $68b8: $00
    rst $38                                       ; $68b9: $ff
    add b                                         ; $68ba: $80
    ld a, a                                       ; $68bb: $7f
    call z, $0033                                 ; $68bc: $cc $33 $00
    rst $38                                       ; $68bf: $ff
    db $fc                                        ; $68c0: $fc
    inc bc                                        ; $68c1: $03
    add hl, de                                    ; $68c2: $19
    and $00                                       ; $68c3: $e6 $00
    rst $38                                       ; $68c5: $ff
    rra                                           ; $68c6: $1f
    ldh [rP1], a                                  ; $68c7: $e0 $00
    rst $38                                       ; $68c9: $ff
    ld a, c                                       ; $68ca: $79
    add [hl]                                      ; $68cb: $86
    inc c                                         ; $68cc: $0c
    di                                            ; $68cd: $f3
    ld h, b                                       ; $68ce: $60
    sbc a                                         ; $68cf: $9f
    nop                                           ; $68d0: $00
    rst $38                                       ; $68d1: $ff
    and $ff                                       ; $68d2: $e6 $ff

jr_075_68d4:
    nop                                           ; $68d4: $00
    rst $38                                       ; $68d5: $ff
    ld a, b                                       ; $68d6: $78
    rst $38                                       ; $68d7: $ff
    rrca                                          ; $68d8: $0f
    rst $38                                       ; $68d9: $ff
    ld h, b                                       ; $68da: $60
    rst $38                                       ; $68db: $ff
    nop                                           ; $68dc: $00
    rst $38                                       ; $68dd: $ff
    ld a, b                                       ; $68de: $78
    rst $38                                       ; $68df: $ff
    inc c                                         ; $68e0: $0c
    rst $38                                       ; $68e1: $ff
    ld h, c                                       ; $68e2: $61
    rst $38                                       ; $68e3: $ff
    nop                                           ; $68e4: $00
    rst $38                                       ; $68e5: $ff
    ld e, $ff                                     ; $68e6: $1e $ff
    nop                                           ; $68e8: $00
    rst $38                                       ; $68e9: $ff
    nop                                           ; $68ea: $00
    rst $38                                       ; $68eb: $ff
    db $fc                                        ; $68ec: $fc
    rst $38                                       ; $68ed: $ff
    nop                                           ; $68ee: $00
    rst $38                                       ; $68ef: $ff
    ret nz                                        ; $68f0: $c0

    rst $38                                       ; $68f1: $ff
    rra                                           ; $68f2: $1f
    rst $38                                       ; $68f3: $ff
    di                                            ; $68f4: $f3
    rst $38                                       ; $68f5: $ff
    rra                                           ; $68f6: $1f
    rst $38                                       ; $68f7: $ff
    rst $08                                       ; $68f8: $cf
    rst $38                                       ; $68f9: $ff
    ld a, [hl]                                    ; $68fa: $7e
    rst $38                                       ; $68fb: $ff
    ccf                                           ; $68fc: $3f
    rst $38                                       ; $68fd: $ff
    ld a, a                                       ; $68fe: $7f
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff

jr_075_6901:
    rst $38                                       ; $6901: $ff
    ldh [rIE], a                                  ; $6902: $e0 $ff
    inc sp                                        ; $6904: $33
    rst $38                                       ; $6905: $ff
    and $ff                                       ; $6906: $e6 $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    ld h, [hl]                                    ; $690a: $66
    rst $38                                       ; $690b: $ff
    di                                            ; $690c: $f3
    rst $38                                       ; $690d: $ff
    sbc [hl]                                      ; $690e: $9e
    rst $38                                       ; $690f: $ff
    ret nz                                        ; $6910: $c0

    nop                                           ; $6911: $00
    add hl, de                                    ; $6912: $19
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    ld bc, $3000                                  ; $6916: $01 $00 $30
    nop                                           ; $6919: $00
    ld a, b                                       ; $691a: $78
    nop                                           ; $691b: $00
    inc a                                         ; $691c: $3c
    nop                                           ; $691d: $00
    ld h, b                                       ; $691e: $60
    nop                                           ; $691f: $00
    ret nz                                        ; $6920: $c0

    nop                                           ; $6921: $00
    sbc b                                         ; $6922: $98
    nop                                           ; $6923: $00
    rst $08                                       ; $6924: $cf
    nop                                           ; $6925: $00
    add b                                         ; $6926: $80
    nop                                           ; $6927: $00
    inc a                                         ; $6928: $3c
    nop                                           ; $6929: $00
    nop                                           ; $692a: $00
    nop                                           ; $692b: $00
    di                                            ; $692c: $f3
    nop                                           ; $692d: $00
    ld b, $00                                     ; $692e: $06 $00
    db $fc                                        ; $6930: $fc
    nop                                           ; $6931: $00
    add a                                         ; $6932: $87
    nop                                           ; $6933: $00
    jp Jump_075_7f00                              ; $6934: $c3 $00 $7f


    nop                                           ; $6937: $00
    rst $38                                       ; $6938: $ff
    nop                                           ; $6939: $00
    cp $00                                        ; $693a: $fe $00
    di                                            ; $693c: $f3
    nop                                           ; $693d: $00
    cp $00                                        ; $693e: $fe $00
    rrca                                          ; $6940: $0f
    nop                                           ; $6941: $00
    sbc c                                         ; $6942: $99
    nop                                           ; $6943: $00
    rst $38                                       ; $6944: $ff
    nop                                           ; $6945: $00
    add b                                         ; $6946: $80
    nop                                           ; $6947: $00
    rst $38                                       ; $6948: $ff
    nop                                           ; $6949: $00
    rra                                           ; $694a: $1f
    nop                                           ; $694b: $00
    ldh a, [rP1]                                  ; $694c: $f0 $00
    ld a, a                                       ; $694e: $7f
    nop                                           ; $694f: $00
    rst $38                                       ; $6950: $ff
    nop                                           ; $6951: $00
    ld a, c                                       ; $6952: $79
    add [hl]                                      ; $6953: $86
    db $fc                                        ; $6954: $fc

jr_075_6955:
    inc bc                                        ; $6955: $03
    rra                                           ; $6956: $1f
    ldh [$c3], a                                  ; $6957: $e0 $c3

jr_075_6959:
    inc a                                         ; $6959: $3c
    ld a, a                                       ; $695a: $7f
    add b                                         ; $695b: $80
    db $fc                                        ; $695c: $fc

jr_075_695d:
    inc bc                                        ; $695d: $03
    rra                                           ; $695e: $1f
    ldh [$cf], a                                  ; $695f: $e0 $cf
    jr nc, jr_075_6901                            ; $6961: $30 $9e

    ld h, c                                       ; $6963: $61
    di                                            ; $6964: $f3
    inc c                                         ; $6965: $0c
    add [hl]                                      ; $6966: $86
    ld a, c                                       ; $6967: $79
    rst $38                                       ; $6968: $ff
    nop                                           ; $6969: $00
    cp $01                                        ; $696a: $fe $01
    rrca                                          ; $696c: $0f
    ldh a, [$fe]                                  ; $696d: $f0 $fe
    ld bc, $03fc                                  ; $696f: $01 $fc $03
    add b                                         ; $6972: $80
    ld a, a                                       ; $6973: $7f
    inc sp                                        ; $6974: $33
    call z, $7f80                                 ; $6975: $cc $80 $7f
    nop                                           ; $6978: $00
    rst $38                                       ; $6979: $ff
    rlca                                          ; $697a: $07
    ld hl, sp+$00                                 ; $697b: $f8 $00
    rst $38                                       ; $697d: $ff
    ld bc, $00fe                                  ; $697e: $01 $fe $00
    rst $38                                       ; $6981: $ff
    ld a, a                                       ; $6982: $7f
    add b                                         ; $6983: $80
    jr nc, jr_075_6955                            ; $6984: $30 $cf

    ld h, a                                       ; $6986: $67
    sbc b                                         ; $6987: $98
    jr nc, jr_075_6959                            ; $6988: $30 $cf

    add b                                         ; $698a: $80
    ld a, a                                       ; $698b: $7f
    jr nc, jr_075_695d                            ; $698c: $30 $cf

    add b                                         ; $698e: $80
    ld a, a                                       ; $698f: $7f
    ret nz                                        ; $6990: $c0

    rst $38                                       ; $6991: $ff
    ld bc, $c0ff                                  ; $6992: $01 $ff $c0
    rst $38                                       ; $6995: $ff
    nop                                           ; $6996: $00
    rst $38                                       ; $6997: $ff
    inc sp                                        ; $6998: $33
    rst $38                                       ; $6999: $ff
    ld h, b                                       ; $699a: $60
    rst $38                                       ; $699b: $ff
    jp Jump_000_00ff                              ; $699c: $c3 $ff $00


    rst $38                                       ; $699f: $ff
    jr nc, @+$01                                  ; $69a0: $30 $ff

    add [hl]                                      ; $69a2: $86
    rst $38                                       ; $69a3: $ff
    ccf                                           ; $69a4: $3f
    rst $38                                       ; $69a5: $ff
    nop                                           ; $69a6: $00
    rst $38                                       ; $69a7: $ff
    jp Jump_000_06ff                              ; $69a8: $c3 $ff $06


    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff
    nop                                           ; $69ae: $00
    rst $38                                       ; $69af: $ff
    ld e, $ff                                     ; $69b0: $1e $ff
    ccf                                           ; $69b2: $3f
    rst $38                                       ; $69b3: $ff
    add hl, de                                    ; $69b4: $19
    rst $38                                       ; $69b5: $ff
    jp Jump_075_7fff                              ; $69b6: $c3 $ff $7f


    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    ld h, a                                       ; $69bc: $67
    rst $38                                       ; $69bd: $ff
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    ld h, b                                       ; $69c0: $60
    rst $38                                       ; $69c1: $ff
    rst $08                                       ; $69c2: $cf
    rst $38                                       ; $69c3: $ff
    ld hl, sp-$01                                 ; $69c4: $f8 $ff
    rst $38                                       ; $69c6: $ff
    rst $38                                       ; $69c7: $ff
    add b                                         ; $69c8: $80
    rst $38                                       ; $69c9: $ff
    ccf                                           ; $69ca: $3f
    rst $38                                       ; $69cb: $ff
    ldh [rIE], a                                  ; $69cc: $e0 $ff
    call z, $30ff                                 ; $69ce: $cc $ff $30
    nop                                           ; $69d1: $00
    ld h, [hl]                                    ; $69d2: $66
    nop                                           ; $69d3: $00
    nop                                           ; $69d4: $00
    nop                                           ; $69d5: $00
    sbc [hl]                                      ; $69d6: $9e
    nop                                           ; $69d7: $00
    inc bc                                        ; $69d8: $03
    nop                                           ; $69d9: $00
    jr jr_075_69dc                                ; $69da: $18 $00

jr_075_69dc:
    nop                                           ; $69dc: $00
    nop                                           ; $69dd: $00
    ld e, $00                                     ; $69de: $1e $00
    ret nz                                        ; $69e0: $c0

    nop                                           ; $69e1: $00
    nop                                           ; $69e2: $00
    nop                                           ; $69e3: $00
    jr nc, jr_075_69e6                            ; $69e4: $30 $00

jr_075_69e6:
    rlca                                          ; $69e6: $07
    nop                                           ; $69e7: $00
    ret nz                                        ; $69e8: $c0

    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    nop                                           ; $69eb: $00
    ccf                                           ; $69ec: $3f
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    ldh a, [rP1]                                  ; $69f0: $f0 $00
    rlca                                          ; $69f2: $07
    nop                                           ; $69f3: $00
    db $fc                                        ; $69f4: $fc
    nop                                           ; $69f5: $00
    add a                                         ; $69f6: $87
    nop                                           ; $69f7: $00
    ldh a, [rP1]                                  ; $69f8: $f0 $00
    rst $38                                       ; $69fa: $ff
    nop                                           ; $69fb: $00
    rst $38                                       ; $69fc: $ff
    nop                                           ; $69fd: $00
    rst $38                                       ; $69fe: $ff

jr_075_69ff:
    nop                                           ; $69ff: $00
    ccf                                           ; $6a00: $3f
    nop                                           ; $6a01: $00
    ld hl, sp+$00                                 ; $6a02: $f8 $00
    call z, $f900                                 ; $6a04: $cc $00 $f9
    nop                                           ; $6a07: $00
    rst $38                                       ; $6a08: $ff
    nop                                           ; $6a09: $00
    rst $20                                       ; $6a0a: $e7
    nop                                           ; $6a0b: $00
    rst $38                                       ; $6a0c: $ff
    nop                                           ; $6a0d: $00
    rst $38                                       ; $6a0e: $ff
    nop                                           ; $6a0f: $00
    ld h, b                                       ; $6a10: $60
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    nop                                           ; $6a13: $00
    sbc b                                         ; $6a14: $98
    nop                                           ; $6a15: $00
    nop                                           ; $6a16: $00
    nop                                           ; $6a17: $00
    add c                                         ; $6a18: $81
    nop                                           ; $6a19: $00
    ccf                                           ; $6a1a: $3f
    nop                                           ; $6a1b: $00
    nop                                           ; $6a1c: $00
    nop                                           ; $6a1d: $00

jr_075_6a1e:
    db $fc                                        ; $6a1e: $fc
    nop                                           ; $6a1f: $00
    jr jr_075_6a22                                ; $6a20: $18 $00

jr_075_6a22:
    di                                            ; $6a22: $f3
    nop                                           ; $6a23: $00
    ld a, c                                       ; $6a24: $79
    nop                                           ; $6a25: $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    rst $20                                       ; $6a28: $e7
    nop                                           ; $6a29: $00
    call z, RST_00                                ; $6a2a: $cc $00 $00
    nop                                           ; $6a2d: $00
    rrca                                          ; $6a2e: $0f
    nop                                           ; $6a2f: $00
    ld a, a                                       ; $6a30: $7f
    nop                                           ; $6a31: $00
    nop                                           ; $6a32: $00
    nop                                           ; $6a33: $00
    rst $38                                       ; $6a34: $ff
    nop                                           ; $6a35: $00
    rrca                                          ; $6a36: $0f
    nop                                           ; $6a37: $00
    ld a, a                                       ; $6a38: $7f
    nop                                           ; $6a39: $00
    rst $08                                       ; $6a3a: $cf
    nop                                           ; $6a3b: $00
    ld a, a                                       ; $6a3c: $7f
    nop                                           ; $6a3d: $00
    ldh a, [rP1]                                  ; $6a3e: $f0 $00
    ldh [rP1], a                                  ; $6a40: $e0 $00
    ccf                                           ; $6a42: $3f
    nop                                           ; $6a43: $00
    rst $38                                       ; $6a44: $ff
    nop                                           ; $6a45: $00
    call z, $fe00                                 ; $6a46: $cc $00 $fe
    nop                                           ; $6a49: $00
    jr nc, jr_075_6a4c                            ; $6a4a: $30 $00

jr_075_6a4c:
    cp $00                                        ; $6a4c: $fe $00
    di                                            ; $6a4e: $f3
    nop                                           ; $6a4f: $00
    ld a, a                                       ; $6a50: $7f
    add b                                         ; $6a51: $80
    rst $08                                       ; $6a52: $cf
    jr nc, jr_075_6ad4                            ; $6a53: $30 $7f

    add b                                         ; $6a55: $80
    rst $38                                       ; $6a56: $ff
    nop                                           ; $6a57: $00
    rst $20                                       ; $6a58: $e7
    jr jr_075_6a1e                                ; $6a59: $18 $c3

    inc a                                         ; $6a5b: $3c
    ld h, c                                       ; $6a5c: $61
    sbc [hl]                                      ; $6a5d: $9e
    rst $08                                       ; $6a5e: $cf
    jr nc, jr_075_69ff                            ; $6a5f: $30 $9e

    ld h, c                                       ; $6a61: $61
    inc sp                                        ; $6a62: $33
    call z, $07f8                                 ; $6a63: $cc $f8 $07
    ccf                                           ; $6a66: $3f
    ret nz                                        ; $6a67: $c0

    pop hl                                        ; $6a68: $e1
    ld e, $ff                                     ; $6a69: $1e $ff
    nop                                           ; $6a6b: $00
    add [hl]                                      ; $6a6c: $86
    ld a, c                                       ; $6a6d: $79
    db $fc                                        ; $6a6e: $fc
    inc bc                                        ; $6a6f: $03
    ld bc, $3cfe                                  ; $6a70: $01 $fe $3c
    jp $e11e                                      ; $6a73: $c3 $1e $e1


    ret nz                                        ; $6a76: $c0

    ccf                                           ; $6a77: $3f
    nop                                           ; $6a78: $00
    rst $38                                       ; $6a79: $ff
    nop                                           ; $6a7a: $00
    rst $38                                       ; $6a7b: $ff
    sbc b                                         ; $6a7c: $98
    ld h, a                                       ; $6a7d: $67
    nop                                           ; $6a7e: $00
    rst $38                                       ; $6a7f: $ff
    ld hl, sp+$07                                 ; $6a80: $f8 $07
    inc sp                                        ; $6a82: $33
    call z, $ff00                                 ; $6a83: $cc $00 $ff
    ccf                                           ; $6a86: $3f
    ret nz                                        ; $6a87: $c0

    nop                                           ; $6a88: $00
    rst $38                                       ; $6a89: $ff
    di                                            ; $6a8a: $f3
    inc c                                         ; $6a8b: $0c
    add hl, de                                    ; $6a8c: $19
    and $c0                                       ; $6a8d: $e6 $c0
    ccf                                           ; $6a8f: $3f
    nop                                           ; $6a90: $00
    rst $38                                       ; $6a91: $ff
    call z, Call_000_00ff                         ; $6a92: $cc $ff $00
    rst $38                                       ; $6a95: $ff
    ldh a, [rIE]                                  ; $6a96: $f0 $ff
    ld e, $ff                                     ; $6a98: $1e $ff
    ret nz                                        ; $6a9a: $c0

    rst $38                                       ; $6a9b: $ff
    ld bc, $f0ff                                  ; $6a9c: $01 $ff $f0
    rst $38                                       ; $6a9f: $ff
    jr @+$01                                      ; $6aa0: $18 $ff

    jp Jump_000_00ff                              ; $6aa2: $c3 $ff $00


    rst $38                                       ; $6aa5: $ff
    inc a                                         ; $6aa6: $3c
    rst $38                                       ; $6aa7: $ff
    nop                                           ; $6aa8: $00
    rst $38                                       ; $6aa9: $ff
    nop                                           ; $6aaa: $00
    rst $38                                       ; $6aab: $ff
    ld hl, sp-$01                                 ; $6aac: $f8 $ff
    nop                                           ; $6aae: $00
    rst $38                                       ; $6aaf: $ff
    add c                                         ; $6ab0: $81
    rst $38                                       ; $6ab1: $ff
    ccf                                           ; $6ab2: $3f
    rst $38                                       ; $6ab3: $ff
    and $ff                                       ; $6ab4: $e6 $ff
    ccf                                           ; $6ab6: $3f
    rst $38                                       ; $6ab7: $ff
    sbc a                                         ; $6ab8: $9f
    rst $38                                       ; $6ab9: $ff
    db $fc                                        ; $6aba: $fc
    rst $38                                       ; $6abb: $ff
    ld a, a                                       ; $6abc: $7f
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    ret nz                                        ; $6ac2: $c0

    rst $38                                       ; $6ac3: $ff
    ld h, a                                       ; $6ac4: $67
    rst $38                                       ; $6ac5: $ff
    call z, $ffff                                 ; $6ac6: $cc $ff $ff
    rst $38                                       ; $6ac9: $ff
    call z, $e6ff                                 ; $6aca: $cc $ff $e6
    rst $38                                       ; $6acd: $ff
    inc a                                         ; $6ace: $3c
    rst $38                                       ; $6acf: $ff
    add c                                         ; $6ad0: $81
    nop                                           ; $6ad1: $00
    inc sp                                        ; $6ad2: $33
    nop                                           ; $6ad3: $00

jr_075_6ad4:
    ld bc, $0300                                  ; $6ad4: $01 $00 $03
    nop                                           ; $6ad7: $00
    ld h, b                                       ; $6ad8: $60
    nop                                           ; $6ad9: $00
    ldh a, [rP1]                                  ; $6ada: $f0 $00
    ld a, c                                       ; $6adc: $79
    nop                                           ; $6add: $00
    ret nz                                        ; $6ade: $c0

    nop                                           ; $6adf: $00
    add c                                         ; $6ae0: $81
    nop                                           ; $6ae1: $00
    jr nc, jr_075_6ae4                            ; $6ae2: $30 $00

jr_075_6ae4:
    sbc [hl]                                      ; $6ae4: $9e
    nop                                           ; $6ae5: $00
    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    ld a, b                                       ; $6ae8: $78
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    and $00                                       ; $6aec: $e6 $00
    inc c                                         ; $6aee: $0c
    nop                                           ; $6aef: $00
    ld hl, sp+$00                                 ; $6af0: $f8 $00
    rrca                                          ; $6af2: $0f
    nop                                           ; $6af3: $00
    add a                                         ; $6af4: $87
    nop                                           ; $6af5: $00
    rst $38                                       ; $6af6: $ff
    nop                                           ; $6af7: $00
    rst $38                                       ; $6af8: $ff
    nop                                           ; $6af9: $00
    db $fc                                        ; $6afa: $fc
    nop                                           ; $6afb: $00
    rst $20                                       ; $6afc: $e7
    nop                                           ; $6afd: $00
    db $fc                                        ; $6afe: $fc
    nop                                           ; $6aff: $00
    rra                                           ; $6b00: $1f
    nop                                           ; $6b01: $00
    inc sp                                        ; $6b02: $33
    nop                                           ; $6b03: $00
    rst $38                                       ; $6b04: $ff
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    nop                                           ; $6b07: $00
    rst $38                                       ; $6b08: $ff
    nop                                           ; $6b09: $00
    ccf                                           ; $6b0a: $3f
    nop                                           ; $6b0b: $00
    pop hl                                        ; $6b0c: $e1
    nop                                           ; $6b0d: $00
    rst $38                                       ; $6b0e: $ff
    nop                                           ; $6b0f: $00
    rst $38                                       ; $6b10: $ff
    nop                                           ; $6b11: $00
    di                                            ; $6b12: $f3
    inc c                                         ; $6b13: $0c
    ld sp, hl                                     ; $6b14: $f9
    ld b, $3f                                     ; $6b15: $06 $3f
    ret nz                                        ; $6b17: $c0

    add a                                         ; $6b18: $87
    ld a, b                                       ; $6b19: $78
    rst $38                                       ; $6b1a: $ff
    nop                                           ; $6b1b: $00
    ld hl, sp+$07                                 ; $6b1c: $f8 $07
    ccf                                           ; $6b1e: $3f
    ret nz                                        ; $6b1f: $c0

    sbc a                                         ; $6b20: $9f
    ld h, b                                       ; $6b21: $60
    inc a                                         ; $6b22: $3c
    jp Jump_000_18e7                              ; $6b23: $c3 $e7 $18


    inc c                                         ; $6b26: $0c
    di                                            ; $6b27: $f3
    rst $38                                       ; $6b28: $ff
    nop                                           ; $6b29: $00
    db $fc                                        ; $6b2a: $fc
    inc bc                                        ; $6b2b: $03
    rra                                           ; $6b2c: $1f
    ldh [$fc], a                                  ; $6b2d: $e0 $fc
    inc bc                                        ; $6b2f: $03
    ld hl, sp+$07                                 ; $6b30: $f8 $07
    nop                                           ; $6b32: $00
    rst $38                                       ; $6b33: $ff
    ld h, [hl]                                    ; $6b34: $66
    sbc c                                         ; $6b35: $99
    nop                                           ; $6b36: $00
    rst $38                                       ; $6b37: $ff
    nop                                           ; $6b38: $00
    rst $38                                       ; $6b39: $ff
    rrca                                          ; $6b3a: $0f
    ldh a, [rP1]                                  ; $6b3b: $f0 $00
    rst $38                                       ; $6b3d: $ff
    inc bc                                        ; $6b3e: $03
    db $fc                                        ; $6b3f: $fc
    ld bc, $fffe                                  ; $6b40: $01 $fe $ff
    nop                                           ; $6b43: $00
    ld h, b                                       ; $6b44: $60
    sbc a                                         ; $6b45: $9f
    rst $08                                       ; $6b46: $cf
    jr nc, jr_075_6ba9                            ; $6b47: $30 $60

    sbc a                                         ; $6b49: $9f
    nop                                           ; $6b4a: $00
    rst $38                                       ; $6b4b: $ff
    ld h, b                                       ; $6b4c: $60
    sbc a                                         ; $6b4d: $9f
    nop                                           ; $6b4e: $00
    rst $38                                       ; $6b4f: $ff
    add b                                         ; $6b50: $80
    rst $38                                       ; $6b51: $ff
    inc bc                                        ; $6b52: $03
    rst $38                                       ; $6b53: $ff
    add b                                         ; $6b54: $80
    rst $38                                       ; $6b55: $ff
    nop                                           ; $6b56: $00
    rst $38                                       ; $6b57: $ff
    ld h, a                                       ; $6b58: $67
    rst $38                                       ; $6b59: $ff
    ret nz                                        ; $6b5a: $c0

    rst $38                                       ; $6b5b: $ff
    add a                                         ; $6b5c: $87
    rst $38                                       ; $6b5d: $ff
    nop                                           ; $6b5e: $00
    rst $38                                       ; $6b5f: $ff
    ld h, c                                       ; $6b60: $61
    rst $38                                       ; $6b61: $ff
    inc c                                         ; $6b62: $0c
    rst $38                                       ; $6b63: $ff
    ld a, a                                       ; $6b64: $7f
    rst $38                                       ; $6b65: $ff
    nop                                           ; $6b66: $00
    rst $38                                       ; $6b67: $ff
    add [hl]                                      ; $6b68: $86
    rst $38                                       ; $6b69: $ff
    inc c                                         ; $6b6a: $0c
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    nop                                           ; $6b6e: $00
    rst $38                                       ; $6b6f: $ff
    inc a                                         ; $6b70: $3c
    rst $38                                       ; $6b71: $ff
    ld a, a                                       ; $6b72: $7f
    rst $38                                       ; $6b73: $ff
    inc sp                                        ; $6b74: $33
    rst $38                                       ; $6b75: $ff
    add a                                         ; $6b76: $87
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    cp $ff                                        ; $6b7a: $fe $ff
    rst $08                                       ; $6b7c: $cf
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    ret nz                                        ; $6b80: $c0

    rst $38                                       ; $6b81: $ff
    sbc [hl]                                      ; $6b82: $9e
    rst $38                                       ; $6b83: $ff
    ldh a, [rIE]                                  ; $6b84: $f0 $ff
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    nop                                           ; $6b88: $00
    rst $38                                       ; $6b89: $ff
    ld a, a                                       ; $6b8a: $7f
    rst $38                                       ; $6b8b: $ff
    ret nz                                        ; $6b8c: $c0

    rst $38                                       ; $6b8d: $ff
    sbc c                                         ; $6b8e: $99
    rst $38                                       ; $6b8f: $ff
    ld h, c                                       ; $6b90: $61
    nop                                           ; $6b91: $00
    call z, RST_00                                ; $6b92: $cc $00 $00
    nop                                           ; $6b95: $00
    inc a                                         ; $6b96: $3c
    nop                                           ; $6b97: $00
    rlca                                          ; $6b98: $07
    nop                                           ; $6b99: $00
    jr nc, jr_075_6b9c                            ; $6b9a: $30 $00

jr_075_6b9c:
    nop                                           ; $6b9c: $00
    nop                                           ; $6b9d: $00
    inc a                                         ; $6b9e: $3c
    nop                                           ; $6b9f: $00
    add b                                         ; $6ba0: $80
    nop                                           ; $6ba1: $00

jr_075_6ba2:
    nop                                           ; $6ba2: $00
    nop                                           ; $6ba3: $00
    ld h, b                                       ; $6ba4: $60
    nop                                           ; $6ba5: $00
    rrca                                          ; $6ba6: $0f
    nop                                           ; $6ba7: $00
    add b                                         ; $6ba8: $80

jr_075_6ba9:
    nop                                           ; $6ba9: $00
    nop                                           ; $6baa: $00
    nop                                           ; $6bab: $00
    ld a, [hl]                                    ; $6bac: $7e
    nop                                           ; $6bad: $00
    nop                                           ; $6bae: $00
    nop                                           ; $6baf: $00
    ldh [rP1], a                                  ; $6bb0: $e0 $00
    rrca                                          ; $6bb2: $0f
    nop                                           ; $6bb3: $00
    ld sp, hl                                     ; $6bb4: $f9
    nop                                           ; $6bb5: $00
    rrca                                          ; $6bb6: $0f
    nop                                           ; $6bb7: $00
    pop hl                                        ; $6bb8: $e1
    nop                                           ; $6bb9: $00
    rst $38                                       ; $6bba: $ff
    nop                                           ; $6bbb: $00
    rst $38                                       ; $6bbc: $ff
    nop                                           ; $6bbd: $00
    rst $38                                       ; $6bbe: $ff
    nop                                           ; $6bbf: $00
    ld a, a                                       ; $6bc0: $7f
    nop                                           ; $6bc1: $00
    ldh a, [rP1]                                  ; $6bc2: $f0 $00
    sbc c                                         ; $6bc4: $99
    nop                                           ; $6bc5: $00
    di                                            ; $6bc6: $f3
    nop                                           ; $6bc7: $00
    rst $38                                       ; $6bc8: $ff
    nop                                           ; $6bc9: $00
    rst $08                                       ; $6bca: $cf
    nop                                           ; $6bcb: $00
    rst $38                                       ; $6bcc: $ff
    nop                                           ; $6bcd: $00
    rst $38                                       ; $6bce: $ff
    nop                                           ; $6bcf: $00
    ret nz                                        ; $6bd0: $c0

    nop                                           ; $6bd1: $00
    ld bc, $3000                                  ; $6bd2: $01 $00 $30
    nop                                           ; $6bd5: $00
    nop                                           ; $6bd6: $00
    nop                                           ; $6bd7: $00
    inc bc                                        ; $6bd8: $03
    nop                                           ; $6bd9: $00
    ld a, a                                       ; $6bda: $7f
    nop                                           ; $6bdb: $00
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    ld hl, sp+$00                                 ; $6bde: $f8 $00
    jr nc, jr_075_6be2                            ; $6be0: $30 $00

jr_075_6be2:
    and $00                                       ; $6be2: $e6 $00
    di                                            ; $6be4: $f3
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    nop                                           ; $6be7: $00
    rst $08                                       ; $6be8: $cf
    nop                                           ; $6be9: $00
    sbc b                                         ; $6bea: $98
    nop                                           ; $6beb: $00
    nop                                           ; $6bec: $00
    nop                                           ; $6bed: $00
    rra                                           ; $6bee: $1f
    nop                                           ; $6bef: $00
    rst $38                                       ; $6bf0: $ff
    nop                                           ; $6bf1: $00
    nop                                           ; $6bf2: $00
    nop                                           ; $6bf3: $00
    rst $38                                       ; $6bf4: $ff
    nop                                           ; $6bf5: $00
    rra                                           ; $6bf6: $1f
    nop                                           ; $6bf7: $00
    rst $38                                       ; $6bf8: $ff
    nop                                           ; $6bf9: $00
    sbc [hl]                                      ; $6bfa: $9e
    nop                                           ; $6bfb: $00
    rst $38                                       ; $6bfc: $ff
    nop                                           ; $6bfd: $00
    pop hl                                        ; $6bfe: $e1
    nop                                           ; $6bff: $00
    ret nz                                        ; $6c00: $c0

    nop                                           ; $6c01: $00
    ld a, [hl]                                    ; $6c02: $7e
    nop                                           ; $6c03: $00
    rst $38                                       ; $6c04: $ff
    nop                                           ; $6c05: $00
    sbc b                                         ; $6c06: $98
    nop                                           ; $6c07: $00
    db $fc                                        ; $6c08: $fc
    nop                                           ; $6c09: $00
    ld h, c                                       ; $6c0a: $61
    nop                                           ; $6c0b: $00
    db $fc                                        ; $6c0c: $fc
    nop                                           ; $6c0d: $00
    rst $20                                       ; $6c0e: $e7
    nop                                           ; $6c0f: $00
    rst $38                                       ; $6c10: $ff
    nop                                           ; $6c11: $00
    sbc [hl]                                      ; $6c12: $9e
    ld h, c                                       ; $6c13: $61
    rst $38                                       ; $6c14: $ff
    nop                                           ; $6c15: $00
    cp $01                                        ; $6c16: $fe $01
    rst $08                                       ; $6c18: $cf
    jr nc, jr_075_6ba2                            ; $6c19: $30 $87

    ld a, b                                       ; $6c1b: $78
    jp $9f3c                                      ; $6c1c: $c3 $3c $9f


    ld h, b                                       ; $6c1f: $60
    inc a                                         ; $6c20: $3c
    jp $9867                                      ; $6c21: $c3 $67 $98


    ldh a, [rIF]                                  ; $6c24: $f0 $0f
    ld a, a                                       ; $6c26: $7f
    add b                                         ; $6c27: $80
    jp $ff3c                                      ; $6c28: $c3 $3c $ff


    nop                                           ; $6c2b: $00
    inc c                                         ; $6c2c: $0c
    di                                            ; $6c2d: $f3
    ld sp, hl                                     ; $6c2e: $f9
    ld b, $03                                     ; $6c2f: $06 $03
    db $fc                                        ; $6c31: $fc
    ld a, b                                       ; $6c32: $78
    add a                                         ; $6c33: $87
    inc a                                         ; $6c34: $3c
    jp $7f80                                      ; $6c35: $c3 $80 $7f


    nop                                           ; $6c38: $00
    rst $38                                       ; $6c39: $ff
    ld bc, $30fe                                  ; $6c3a: $01 $fe $30
    rst $08                                       ; $6c3d: $cf
    ld bc, $f0fe                                  ; $6c3e: $01 $fe $f0
    rrca                                          ; $6c41: $0f
    ld h, [hl]                                    ; $6c42: $66
    sbc c                                         ; $6c43: $99
    nop                                           ; $6c44: $00
    rst $38                                       ; $6c45: $ff
    ld a, a                                       ; $6c46: $7f
    add b                                         ; $6c47: $80
    nop                                           ; $6c48: $00
    rst $38                                       ; $6c49: $ff
    and $19                                       ; $6c4a: $e6 $19
    inc sp                                        ; $6c4c: $33
    call z, $7f80                                 ; $6c4d: $cc $80 $7f
    nop                                           ; $6c50: $00
    rst $38                                       ; $6c51: $ff
    sbc c                                         ; $6c52: $99
    rst $38                                       ; $6c53: $ff
    nop                                           ; $6c54: $00
    rst $38                                       ; $6c55: $ff
    ldh [rIE], a                                  ; $6c56: $e0 $ff
    inc a                                         ; $6c58: $3c
    rst $38                                       ; $6c59: $ff
    add b                                         ; $6c5a: $80
    rst $38                                       ; $6c5b: $ff
    inc bc                                        ; $6c5c: $03
    rst $38                                       ; $6c5d: $ff
    ldh [rIE], a                                  ; $6c5e: $e0 $ff
    jr nc, @+$01                                  ; $6c60: $30 $ff

    add a                                         ; $6c62: $87
    rst $38                                       ; $6c63: $ff
    nop                                           ; $6c64: $00
    rst $38                                       ; $6c65: $ff
    ld a, c                                       ; $6c66: $79
    rst $38                                       ; $6c67: $ff
    nop                                           ; $6c68: $00
    rst $38                                       ; $6c69: $ff
    ld bc, $f0ff                                  ; $6c6a: $01 $ff $f0
    rst $38                                       ; $6c6d: $ff
    ld bc, $03ff                                  ; $6c6e: $01 $ff $03
    rst $38                                       ; $6c71: $ff
    ld a, a                                       ; $6c72: $7f
    rst $38                                       ; $6c73: $ff
    call z, Call_075_7fff                         ; $6c74: $cc $ff $7f
    rst $38                                       ; $6c77: $ff
    ccf                                           ; $6c78: $3f
    rst $38                                       ; $6c79: $ff
    ld sp, hl                                     ; $6c7a: $f9
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    cp $ff                                        ; $6c7e: $fe $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    add b                                         ; $6c82: $80
    rst $38                                       ; $6c83: $ff
    rst $08                                       ; $6c84: $cf
    rst $38                                       ; $6c85: $ff
    sbc b                                         ; $6c86: $98
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    sbc c                                         ; $6c8a: $99
    rst $38                                       ; $6c8b: $ff
    call z, Call_075_79ff                         ; $6c8c: $cc $ff $79
    rst $38                                       ; $6c8f: $ff
    inc bc                                        ; $6c90: $03
    nop                                           ; $6c91: $00
    ld h, [hl]                                    ; $6c92: $66
    nop                                           ; $6c93: $00
    inc bc                                        ; $6c94: $03
    nop                                           ; $6c95: $00
    ld b, $00                                     ; $6c96: $06 $00
    ret nz                                        ; $6c98: $c0

    nop                                           ; $6c99: $00
    ldh [rP1], a                                  ; $6c9a: $e0 $00
    di                                            ; $6c9c: $f3
    nop                                           ; $6c9d: $00
    add b                                         ; $6c9e: $80
    nop                                           ; $6c9f: $00
    inc bc                                        ; $6ca0: $03
    nop                                           ; $6ca1: $00
    ld h, b                                       ; $6ca2: $60
    nop                                           ; $6ca3: $00
    inc a                                         ; $6ca4: $3c
    nop                                           ; $6ca5: $00
    nop                                           ; $6ca6: $00
    nop                                           ; $6ca7: $00
    ldh a, [rP1]                                  ; $6ca8: $f0 $00
    ld bc, $cc00                                  ; $6caa: $01 $00 $cc
    nop                                           ; $6cad: $00
    add hl, de                                    ; $6cae: $19
    nop                                           ; $6caf: $00
    ld hl, sp+$00                                 ; $6cb0: $f8 $00
    rrca                                          ; $6cb2: $0f
    nop                                           ; $6cb3: $00
    add a                                         ; $6cb4: $87
    nop                                           ; $6cb5: $00
    rst $38                                       ; $6cb6: $ff
    nop                                           ; $6cb7: $00
    rst $38                                       ; $6cb8: $ff
    nop                                           ; $6cb9: $00
    db $fc                                        ; $6cba: $fc
    nop                                           ; $6cbb: $00
    rst $20                                       ; $6cbc: $e7
    nop                                           ; $6cbd: $00
    db $fc                                        ; $6cbe: $fc
    nop                                           ; $6cbf: $00
    rra                                           ; $6cc0: $1f
    nop                                           ; $6cc1: $00
    inc sp                                        ; $6cc2: $33
    nop                                           ; $6cc3: $00
    rst $38                                       ; $6cc4: $ff
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    rst $38                                       ; $6cc8: $ff
    nop                                           ; $6cc9: $00
    ccf                                           ; $6cca: $3f
    nop                                           ; $6ccb: $00
    pop hl                                        ; $6ccc: $e1
    nop                                           ; $6ccd: $00
    rst $38                                       ; $6cce: $ff
    nop                                           ; $6ccf: $00
    rst $38                                       ; $6cd0: $ff
    nop                                           ; $6cd1: $00
    di                                            ; $6cd2: $f3
    inc c                                         ; $6cd3: $0c
    ld sp, hl                                     ; $6cd4: $f9
    ld b, $3f                                     ; $6cd5: $06 $3f
    ret nz                                        ; $6cd7: $c0

    add a                                         ; $6cd8: $87
    ld a, b                                       ; $6cd9: $78
    rst $38                                       ; $6cda: $ff
    nop                                           ; $6cdb: $00
    ld hl, sp+$07                                 ; $6cdc: $f8 $07
    ccf                                           ; $6cde: $3f
    ret nz                                        ; $6cdf: $c0

    sbc a                                         ; $6ce0: $9f
    ld h, b                                       ; $6ce1: $60
    inc a                                         ; $6ce2: $3c
    jp Jump_000_18e7                              ; $6ce3: $c3 $e7 $18


    inc c                                         ; $6ce6: $0c
    di                                            ; $6ce7: $f3
    rst $38                                       ; $6ce8: $ff
    nop                                           ; $6ce9: $00
    db $fc                                        ; $6cea: $fc
    inc bc                                        ; $6ceb: $03
    rra                                           ; $6cec: $1f
    ldh [$fc], a                                  ; $6ced: $e0 $fc
    inc bc                                        ; $6cef: $03
    ld hl, sp+$07                                 ; $6cf0: $f8 $07
    nop                                           ; $6cf2: $00
    rst $38                                       ; $6cf3: $ff
    ld h, [hl]                                    ; $6cf4: $66
    sbc c                                         ; $6cf5: $99
    nop                                           ; $6cf6: $00
    rst $38                                       ; $6cf7: $ff
    nop                                           ; $6cf8: $00
    rst $38                                       ; $6cf9: $ff
    rrca                                          ; $6cfa: $0f
    ldh a, [rP1]                                  ; $6cfb: $f0 $00
    rst $38                                       ; $6cfd: $ff
    inc bc                                        ; $6cfe: $03
    db $fc                                        ; $6cff: $fc
    ld bc, $fffe                                  ; $6d00: $01 $fe $ff
    nop                                           ; $6d03: $00
    ld h, b                                       ; $6d04: $60
    sbc a                                         ; $6d05: $9f
    rst $08                                       ; $6d06: $cf
    jr nc, jr_075_6d69                            ; $6d07: $30 $60

    sbc a                                         ; $6d09: $9f
    nop                                           ; $6d0a: $00
    rst $38                                       ; $6d0b: $ff
    ld h, b                                       ; $6d0c: $60
    sbc a                                         ; $6d0d: $9f
    nop                                           ; $6d0e: $00
    rst $38                                       ; $6d0f: $ff
    add b                                         ; $6d10: $80
    rst $38                                       ; $6d11: $ff
    inc bc                                        ; $6d12: $03
    rst $38                                       ; $6d13: $ff
    add b                                         ; $6d14: $80
    rst $38                                       ; $6d15: $ff
    nop                                           ; $6d16: $00
    rst $38                                       ; $6d17: $ff
    ld h, a                                       ; $6d18: $67
    rst $38                                       ; $6d19: $ff
    ret nz                                        ; $6d1a: $c0

    rst $38                                       ; $6d1b: $ff
    add a                                         ; $6d1c: $87
    rst $38                                       ; $6d1d: $ff
    nop                                           ; $6d1e: $00
    rst $38                                       ; $6d1f: $ff
    ld h, c                                       ; $6d20: $61
    rst $38                                       ; $6d21: $ff
    inc c                                         ; $6d22: $0c
    rst $38                                       ; $6d23: $ff
    ld a, a                                       ; $6d24: $7f
    rst $38                                       ; $6d25: $ff
    nop                                           ; $6d26: $00
    rst $38                                       ; $6d27: $ff
    add [hl]                                      ; $6d28: $86
    rst $38                                       ; $6d29: $ff
    inc c                                         ; $6d2a: $0c
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    nop                                           ; $6d2e: $00
    rst $38                                       ; $6d2f: $ff
    ld a, c                                       ; $6d30: $79
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    ld h, a                                       ; $6d34: $67
    rst $38                                       ; $6d35: $ff
    rrca                                          ; $6d36: $0f
    rst $38                                       ; $6d37: $ff
    cp $ff                                        ; $6d38: $fe $ff
    db $fc                                        ; $6d3a: $fc
    rst $38                                       ; $6d3b: $ff
    sbc a                                         ; $6d3c: $9f
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    add b                                         ; $6d40: $80
    rst $38                                       ; $6d41: $ff
    inc a                                         ; $6d42: $3c
    rst $38                                       ; $6d43: $ff
    ldh [rIE], a                                  ; $6d44: $e0 $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    ld bc, $ffff                                  ; $6d48: $01 $ff $ff
    rst $38                                       ; $6d4b: $ff
    add c                                         ; $6d4c: $81
    rst $38                                       ; $6d4d: $ff
    inc sp                                        ; $6d4e: $33
    rst $38                                       ; $6d4f: $ff
    jp $9800                                      ; $6d50: $c3 $00 $98


    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    nop                                           ; $6d55: $00
    ld a, b                                       ; $6d56: $78
    nop                                           ; $6d57: $00
    rrca                                          ; $6d58: $0f
    nop                                           ; $6d59: $00
    ld h, b                                       ; $6d5a: $60
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    ld a, b                                       ; $6d5e: $78
    nop                                           ; $6d5f: $00
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    ld bc, $c000                                  ; $6d62: $01 $00 $c0
    nop                                           ; $6d65: $00
    ld e, $00                                     ; $6d66: $1e $00
    nop                                           ; $6d68: $00

jr_075_6d69:
    nop                                           ; $6d69: $00
    nop                                           ; $6d6a: $00
    nop                                           ; $6d6b: $00
    db $fc                                        ; $6d6c: $fc
    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    nop                                           ; $6d6f: $00
    ret nz                                        ; $6d70: $c0

    nop                                           ; $6d71: $00
    rra                                           ; $6d72: $1f
    nop                                           ; $6d73: $00
    di                                            ; $6d74: $f3
    nop                                           ; $6d75: $00
    rra                                           ; $6d76: $1f
    nop                                           ; $6d77: $00
    jp $ff00                                      ; $6d78: $c3 $00 $ff


    nop                                           ; $6d7b: $00
    rst $38                                       ; $6d7c: $ff
    nop                                           ; $6d7d: $00
    rst $38                                       ; $6d7e: $ff
    nop                                           ; $6d7f: $00
    rst $38                                       ; $6d80: $ff
    nop                                           ; $6d81: $00
    ldh [rP1], a                                  ; $6d82: $e0 $00
    inc sp                                        ; $6d84: $33
    nop                                           ; $6d85: $00
    and $00                                       ; $6d86: $e6 $00
    rst $38                                       ; $6d88: $ff
    nop                                           ; $6d89: $00
    sbc a                                         ; $6d8a: $9f
    nop                                           ; $6d8b: $00
    rst $38                                       ; $6d8c: $ff
    nop                                           ; $6d8d: $00
    rst $38                                       ; $6d8e: $ff
    nop                                           ; $6d8f: $00
    add b                                         ; $6d90: $80
    nop                                           ; $6d91: $00
    inc bc                                        ; $6d92: $03
    nop                                           ; $6d93: $00
    ld h, c                                       ; $6d94: $61
    nop                                           ; $6d95: $00
    nop                                           ; $6d96: $00
    nop                                           ; $6d97: $00
    rlca                                          ; $6d98: $07
    nop                                           ; $6d99: $00
    rst $38                                       ; $6d9a: $ff
    nop                                           ; $6d9b: $00
    nop                                           ; $6d9c: $00
    nop                                           ; $6d9d: $00
    ldh a, [rP1]                                  ; $6d9e: $f0 $00
    ld h, c                                       ; $6da0: $61
    nop                                           ; $6da1: $00
    call z, $e600                                 ; $6da2: $cc $00 $e6
    nop                                           ; $6da5: $00
    nop                                           ; $6da6: $00
    nop                                           ; $6da7: $00
    sbc [hl]                                      ; $6da8: $9e
    nop                                           ; $6da9: $00
    jr nc, jr_075_6dac                            ; $6daa: $30 $00

jr_075_6dac:
    nop                                           ; $6dac: $00
    nop                                           ; $6dad: $00
    ccf                                           ; $6dae: $3f
    nop                                           ; $6daf: $00
    rst $38                                       ; $6db0: $ff
    nop                                           ; $6db1: $00
    nop                                           ; $6db2: $00
    nop                                           ; $6db3: $00
    rst $38                                       ; $6db4: $ff
    nop                                           ; $6db5: $00
    ccf                                           ; $6db6: $3f
    nop                                           ; $6db7: $00
    rst $38                                       ; $6db8: $ff
    nop                                           ; $6db9: $00
    inc a                                         ; $6dba: $3c
    nop                                           ; $6dbb: $00
    rst $38                                       ; $6dbc: $ff
    nop                                           ; $6dbd: $00
    jp $8100                                      ; $6dbe: $c3 $00 $81


    nop                                           ; $6dc1: $00
    db $fc                                        ; $6dc2: $fc
    nop                                           ; $6dc3: $00
    rst $38                                       ; $6dc4: $ff
    nop                                           ; $6dc5: $00

jr_075_6dc6:
    jr nc, jr_075_6dc8                            ; $6dc6: $30 $00

jr_075_6dc8:
    ld sp, hl                                     ; $6dc8: $f9
    nop                                           ; $6dc9: $00
    jp $f900                                      ; $6dca: $c3 $00 $f9


    nop                                           ; $6dcd: $00
    rst $08                                       ; $6dce: $cf
    nop                                           ; $6dcf: $00
    cp $01                                        ; $6dd0: $fe $01
    inc a                                         ; $6dd2: $3c
    jp Jump_000_00ff                              ; $6dd3: $c3 $ff $00


    db $fc                                        ; $6dd6: $fc
    inc bc                                        ; $6dd7: $03
    sbc a                                         ; $6dd8: $9f
    ld h, b                                       ; $6dd9: $60
    rrca                                          ; $6dda: $0f
    ldh a, [$86]                                  ; $6ddb: $f0 $86
    ld a, c                                       ; $6ddd: $79
    ccf                                           ; $6dde: $3f
    ret nz                                        ; $6ddf: $c0

    ld a, c                                       ; $6de0: $79
    add [hl]                                      ; $6de1: $86
    rst $08                                       ; $6de2: $cf
    jr nc, jr_075_6dc6                            ; $6de3: $30 $e1

    ld e, $ff                                     ; $6de5: $1e $ff
    nop                                           ; $6de7: $00
    add a                                         ; $6de8: $87
    ld a, b                                       ; $6de9: $78
    rst $38                                       ; $6dea: $ff
    nop                                           ; $6deb: $00
    add hl, de                                    ; $6dec: $19
    and $f3                                       ; $6ded: $e6 $f3
    inc c                                         ; $6def: $0c
    rlca                                          ; $6df0: $07
    ld hl, sp-$10                                 ; $6df1: $f8 $f0
    rrca                                          ; $6df3: $0f
    ld a, b                                       ; $6df4: $78
    add a                                         ; $6df5: $87
    nop                                           ; $6df6: $00
    rst $38                                       ; $6df7: $ff
    nop                                           ; $6df8: $00
    rst $38                                       ; $6df9: $ff
    inc bc                                        ; $6dfa: $03
    db $fc                                        ; $6dfb: $fc
    ld h, b                                       ; $6dfc: $60
    sbc a                                         ; $6dfd: $9f
    inc bc                                        ; $6dfe: $03
    db $fc                                        ; $6dff: $fc
    ldh [$1f], a                                  ; $6e00: $e0 $1f
    call z, $0033                                 ; $6e02: $cc $33 $00
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    nop                                           ; $6e07: $00
    nop                                           ; $6e08: $00
    rst $38                                       ; $6e09: $ff
    call z, Call_075_6633                         ; $6e0a: $cc $33 $66
    sbc c                                         ; $6e0d: $99
    nop                                           ; $6e0e: $00
    rst $38                                       ; $6e0f: $ff
    nop                                           ; $6e10: $00
    rst $38                                       ; $6e11: $ff
    inc sp                                        ; $6e12: $33
    rst $38                                       ; $6e13: $ff
    nop                                           ; $6e14: $00
    rst $38                                       ; $6e15: $ff
    ret nz                                        ; $6e16: $c0

    rst $38                                       ; $6e17: $ff
    ld a, b                                       ; $6e18: $78
    rst $38                                       ; $6e19: $ff
    nop                                           ; $6e1a: $00
    rst $38                                       ; $6e1b: $ff
    rlca                                          ; $6e1c: $07
    rst $38                                       ; $6e1d: $ff
    ret nz                                        ; $6e1e: $c0

    rst $38                                       ; $6e1f: $ff
    ld h, b                                       ; $6e20: $60
    rst $38                                       ; $6e21: $ff
    rrca                                          ; $6e22: $0f
    rst $38                                       ; $6e23: $ff
    nop                                           ; $6e24: $00
    rst $38                                       ; $6e25: $ff
    di                                            ; $6e26: $f3
    rst $38                                       ; $6e27: $ff
    nop                                           ; $6e28: $00
    rst $38                                       ; $6e29: $ff
    inc bc                                        ; $6e2a: $03
    rst $38                                       ; $6e2b: $ff
    ldh [rIE], a                                  ; $6e2c: $e0 $ff
    inc bc                                        ; $6e2e: $03
    rst $38                                       ; $6e2f: $ff
    rlca                                          ; $6e30: $07
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    sbc c                                         ; $6e34: $99
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    ld a, a                                       ; $6e38: $7f
    rst $38                                       ; $6e39: $ff
    di                                            ; $6e3a: $f3
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    db $fc                                        ; $6e3e: $fc
    rst $38                                       ; $6e3f: $ff
    cp $ff                                        ; $6e40: $fe $ff
    nop                                           ; $6e42: $00
    rst $38                                       ; $6e43: $ff
    sbc a                                         ; $6e44: $9f
    rst $38                                       ; $6e45: $ff
    jr nc, @+$01                                  ; $6e46: $30 $ff

    cp $ff                                        ; $6e48: $fe $ff
    inc sp                                        ; $6e4a: $33
    rst $38                                       ; $6e4b: $ff
    sbc c                                         ; $6e4c: $99
    rst $38                                       ; $6e4d: $ff
    di                                            ; $6e4e: $f3
    rst $38                                       ; $6e4f: $ff
    ld b, $00                                     ; $6e50: $06 $00
    call z, $0600                                 ; $6e52: $cc $00 $06
    nop                                           ; $6e55: $00
    inc c                                         ; $6e56: $0c
    nop                                           ; $6e57: $00
    add c                                         ; $6e58: $81
    nop                                           ; $6e59: $00
    ret nz                                        ; $6e5a: $c0

    nop                                           ; $6e5b: $00
    rst $20                                       ; $6e5c: $e7
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    ld b, $00                                     ; $6e60: $06 $00
    ret nz                                        ; $6e62: $c0

    nop                                           ; $6e63: $00
    ld a, b                                       ; $6e64: $78
    nop                                           ; $6e65: $00
    nop                                           ; $6e66: $00
    nop                                           ; $6e67: $00
    pop hl                                        ; $6e68: $e1
    nop                                           ; $6e69: $00
    inc bc                                        ; $6e6a: $03
    nop                                           ; $6e6b: $00
    sbc c                                         ; $6e6c: $99
    nop                                           ; $6e6d: $00
    inc sp                                        ; $6e6e: $33
    nop                                           ; $6e6f: $00
    ldh a, [rP1]                                  ; $6e70: $f0 $00
    ld e, $00                                     ; $6e72: $1e $00
    rrca                                          ; $6e74: $0f
    nop                                           ; $6e75: $00
    cp $00                                        ; $6e76: $fe $00
    rst $38                                       ; $6e78: $ff
    nop                                           ; $6e79: $00
    ld hl, sp+$00                                 ; $6e7a: $f8 $00
    rst $08                                       ; $6e7c: $cf
    nop                                           ; $6e7d: $00
    ld sp, hl                                     ; $6e7e: $f9
    nop                                           ; $6e7f: $00
    ccf                                           ; $6e80: $3f
    nop                                           ; $6e81: $00
    ld h, [hl]                                    ; $6e82: $66
    nop                                           ; $6e83: $00
    rst $38                                       ; $6e84: $ff
    nop                                           ; $6e85: $00
    ld bc, $ff00                                  ; $6e86: $01 $00 $ff
    nop                                           ; $6e89: $00
    ld a, a                                       ; $6e8a: $7f
    nop                                           ; $6e8b: $00
    jp $ff00                                      ; $6e8c: $c3 $00 $ff


    nop                                           ; $6e8f: $00
    rst $38                                       ; $6e90: $ff
    nop                                           ; $6e91: $00
    and $19                                       ; $6e92: $e6 $19
    di                                            ; $6e94: $f3
    inc c                                         ; $6e95: $0c
    ld a, [hl]                                    ; $6e96: $7e
    add c                                         ; $6e97: $81
    rrca                                          ; $6e98: $0f
    ldh a, [rIE]                                  ; $6e99: $f0 $ff
    nop                                           ; $6e9b: $00
    ldh a, [rIF]                                  ; $6e9c: $f0 $0f
    ld a, a                                       ; $6e9e: $7f
    add b                                         ; $6e9f: $80
    ccf                                           ; $6ea0: $3f
    ret nz                                        ; $6ea1: $c0

    ld a, c                                       ; $6ea2: $79
    add [hl]                                      ; $6ea3: $86
    rst $08                                       ; $6ea4: $cf
    jr nc, @+$1a                                  ; $6ea5: $30 $18

    rst $20                                       ; $6ea7: $e7
    rst $38                                       ; $6ea8: $ff
    nop                                           ; $6ea9: $00
    ld sp, hl                                     ; $6eaa: $f9
    ld b, $3f                                     ; $6eab: $06 $3f
    ret nz                                        ; $6ead: $c0

    ld hl, sp+$07                                 ; $6eae: $f8 $07
    ldh a, [rIF]                                  ; $6eb0: $f0 $0f
    ld bc, $ccfe                                  ; $6eb2: $01 $fe $cc
    inc sp                                        ; $6eb5: $33
    ld bc, $00fe                                  ; $6eb6: $01 $fe $00
    rst $38                                       ; $6eb9: $ff
    ld e, $e1                                     ; $6eba: $1e $e1
    nop                                           ; $6ebc: $00
    rst $38                                       ; $6ebd: $ff
    ld b, $f9                                     ; $6ebe: $06 $f9
    inc bc                                        ; $6ec0: $03
    db $fc                                        ; $6ec1: $fc
    cp $01                                        ; $6ec2: $fe $01
    ret nz                                        ; $6ec4: $c0

    ccf                                           ; $6ec5: $3f
    sbc [hl]                                      ; $6ec6: $9e
    ld h, c                                       ; $6ec7: $61
    ret nz                                        ; $6ec8: $c0

    ccf                                           ; $6ec9: $3f
    nop                                           ; $6eca: $00
    rst $38                                       ; $6ecb: $ff
    ret nz                                        ; $6ecc: $c0

    ccf                                           ; $6ecd: $3f
    nop                                           ; $6ece: $00
    rst $38                                       ; $6ecf: $ff
    nop                                           ; $6ed0: $00
    rst $38                                       ; $6ed1: $ff
    ld b, $ff                                     ; $6ed2: $06 $ff
    nop                                           ; $6ed4: $00
    rst $38                                       ; $6ed5: $ff
    nop                                           ; $6ed6: $00
    rst $38                                       ; $6ed7: $ff
    rst $08                                       ; $6ed8: $cf
    rst $38                                       ; $6ed9: $ff
    add b                                         ; $6eda: $80
    rst $38                                       ; $6edb: $ff
    rrca                                          ; $6edc: $0f
    rst $38                                       ; $6edd: $ff
    nop                                           ; $6ede: $00
    rst $38                                       ; $6edf: $ff
    jp Jump_000_18ff                              ; $6ee0: $c3 $ff $18


    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    nop                                           ; $6ee6: $00
    rst $38                                       ; $6ee7: $ff
    inc c                                         ; $6ee8: $0c
    rst $38                                       ; $6ee9: $ff
    add hl, de                                    ; $6eea: $19
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    nop                                           ; $6eee: $00
    rst $38                                       ; $6eef: $ff
    di                                            ; $6ef0: $f3
    rst $38                                       ; $6ef1: $ff
    cp $ff                                        ; $6ef2: $fe $ff
    rst $08                                       ; $6ef4: $cf
    rst $38                                       ; $6ef5: $ff
    rra                                           ; $6ef6: $1f
    rst $38                                       ; $6ef7: $ff
    db $fc                                        ; $6ef8: $fc
    rst $38                                       ; $6ef9: $ff
    ld sp, hl                                     ; $6efa: $f9
    rst $38                                       ; $6efb: $ff
    ccf                                           ; $6efc: $3f
    rst $38                                       ; $6efd: $ff
    cp $ff                                        ; $6efe: $fe $ff
    nop                                           ; $6f00: $00
    rst $38                                       ; $6f01: $ff
    ld a, c                                       ; $6f02: $79
    rst $38                                       ; $6f03: $ff
    ret nz                                        ; $6f04: $c0

    rst $38                                       ; $6f05: $ff
    cp $ff                                        ; $6f06: $fe $ff
    inc bc                                        ; $6f08: $03
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    inc bc                                        ; $6f0c: $03
    rst $38                                       ; $6f0d: $ff
    ld h, a                                       ; $6f0e: $67
    rst $38                                       ; $6f0f: $ff
    add [hl]                                      ; $6f10: $86
    nop                                           ; $6f11: $00
    jr nc, jr_075_6f14                            ; $6f12: $30 $00

jr_075_6f14:
    ld bc, $f000                                  ; $6f14: $01 $00 $f0
    nop                                           ; $6f17: $00
    ld e, $00                                     ; $6f18: $1e $00
    ret nz                                        ; $6f1a: $c0

    nop                                           ; $6f1b: $00
    ld bc, $f000                                  ; $6f1c: $01 $00 $f0
    nop                                           ; $6f1f: $00
    ld bc, $0300                                  ; $6f20: $01 $00 $03
    nop                                           ; $6f23: $00
    add b                                         ; $6f24: $80
    nop                                           ; $6f25: $00
    inc a                                         ; $6f26: $3c
    nop                                           ; $6f27: $00
    nop                                           ; $6f28: $00
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    ld hl, sp+$00                                 ; $6f2c: $f8 $00
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    add c                                         ; $6f30: $81
    nop                                           ; $6f31: $00
    ccf                                           ; $6f32: $3f
    nop                                           ; $6f33: $00
    and $00                                       ; $6f34: $e6 $00
    ccf                                           ; $6f36: $3f
    nop                                           ; $6f37: $00
    add a                                         ; $6f38: $87
    nop                                           ; $6f39: $00
    rst $38                                       ; $6f3a: $ff
    nop                                           ; $6f3b: $00
    rst $38                                       ; $6f3c: $ff
    nop                                           ; $6f3d: $00
    rst $38                                       ; $6f3e: $ff
    nop                                           ; $6f3f: $00
    rst $38                                       ; $6f40: $ff
    nop                                           ; $6f41: $00
    ret nz                                        ; $6f42: $c0

    nop                                           ; $6f43: $00
    ld h, a                                       ; $6f44: $67
    nop                                           ; $6f45: $00
    call z, $ff00                                 ; $6f46: $cc $00 $ff
    nop                                           ; $6f49: $00
    ccf                                           ; $6f4a: $3f
    nop                                           ; $6f4b: $00
    rst $38                                       ; $6f4c: $ff
    nop                                           ; $6f4d: $00
    rst $38                                       ; $6f4e: $ff
    nop                                           ; $6f4f: $00
    ld bc, $0f00                                  ; $6f50: $01 $00 $0f
    nop                                           ; $6f53: $00
    add a                                         ; $6f54: $87
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    ld e, $00                                     ; $6f58: $1e $00
    db $fc                                        ; $6f5a: $fc
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    nop                                           ; $6f5d: $00
    ret nz                                        ; $6f5e: $c0

    nop                                           ; $6f5f: $00
    add [hl]                                      ; $6f60: $86
    nop                                           ; $6f61: $00
    jr nc, jr_075_6f64                            ; $6f62: $30 $00

jr_075_6f64:
    sbc c                                         ; $6f64: $99
    nop                                           ; $6f65: $00
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    ld a, b                                       ; $6f68: $78
    nop                                           ; $6f69: $00
    jp RST_00                                     ; $6f6a: $c3 $00 $00


    nop                                           ; $6f6d: $00
    rst $38                                       ; $6f6e: $ff
    nop                                           ; $6f6f: $00
    cp $00                                        ; $6f70: $fe $00
    inc bc                                        ; $6f72: $03
    nop                                           ; $6f73: $00
    rst $38                                       ; $6f74: $ff
    nop                                           ; $6f75: $00
    db $fc                                        ; $6f76: $fc
    nop                                           ; $6f77: $00
    rst $38                                       ; $6f78: $ff
    nop                                           ; $6f79: $00
    di                                            ; $6f7a: $f3
    nop                                           ; $6f7b: $00
    rst $38                                       ; $6f7c: $ff
    nop                                           ; $6f7d: $00
    rrca                                          ; $6f7e: $0f
    nop                                           ; $6f7f: $00
    rlca                                          ; $6f80: $07
    nop                                           ; $6f81: $00
    ldh a, [rP1]                                  ; $6f82: $f0 $00
    rst $38                                       ; $6f84: $ff

jr_075_6f85:
    nop                                           ; $6f85: $00
    ret nz                                        ; $6f86: $c0

    nop                                           ; $6f87: $00
    rst $20                                       ; $6f88: $e7
    nop                                           ; $6f89: $00
    inc c                                         ; $6f8a: $0c
    nop                                           ; $6f8b: $00
    rst $20                                       ; $6f8c: $e7
    nop                                           ; $6f8d: $00
    ccf                                           ; $6f8e: $3f
    nop                                           ; $6f8f: $00
    ld sp, hl                                     ; $6f90: $f9
    ld b, $f3                                     ; $6f91: $06 $f3
    inc c                                         ; $6f93: $0c
    rst $38                                       ; $6f94: $ff
    nop                                           ; $6f95: $00
    di                                            ; $6f96: $f3
    inc c                                         ; $6f97: $0c
    ld a, [hl]                                    ; $6f98: $7e
    add c                                         ; $6f99: $81
    ccf                                           ; $6f9a: $3f
    ret nz                                        ; $6f9b: $c0

    jr jr_075_6f85                                ; $6f9c: $18 $e7

    rst $38                                       ; $6f9e: $ff
    nop                                           ; $6f9f: $00
    rst $20                                       ; $6fa0: $e7
    jr jr_075_6fdf                                ; $6fa1: $18 $3c

    jp Jump_075_7887                              ; $6fa3: $c3 $87 $78


    rst $38                                       ; $6fa6: $ff
    nop                                           ; $6fa7: $00
    ld e, $e1                                     ; $6fa8: $1e $e1
    db $fc                                        ; $6faa: $fc
    inc bc                                        ; $6fab: $03
    ld h, [hl]                                    ; $6fac: $66
    sbc c                                         ; $6fad: $99
    call z, Call_000_0f33                         ; $6fae: $cc $33 $0f
    ldh a, [$e1]                                  ; $6fb1: $f0 $e1
    ld e, $f0                                     ; $6fb3: $1e $f0
    rrca                                          ; $6fb5: $0f
    ld bc, $00fe                                  ; $6fb6: $01 $fe $00
    rst $38                                       ; $6fb9: $ff
    rlca                                          ; $6fba: $07
    ld hl, sp-$40                                 ; $6fbb: $f8 $c0
    ccf                                           ; $6fbd: $3f
    ld b, $f9                                     ; $6fbe: $06 $f9
    ret nz                                        ; $6fc0: $c0

    ccf                                           ; $6fc1: $3f
    sbc c                                         ; $6fc2: $99
    ld h, [hl]                                    ; $6fc3: $66
    nop                                           ; $6fc4: $00
    rst $38                                       ; $6fc5: $ff
    cp $01                                        ; $6fc6: $fe $01
    nop                                           ; $6fc8: $00
    rst $38                                       ; $6fc9: $ff
    sbc b                                         ; $6fca: $98
    ld h, a                                       ; $6fcb: $67
    call z, $0033                                 ; $6fcc: $cc $33 $00
    rst $38                                       ; $6fcf: $ff
    nop                                           ; $6fd0: $00
    rst $38                                       ; $6fd1: $ff
    ld h, [hl]                                    ; $6fd2: $66
    rst $38                                       ; $6fd3: $ff
    nop                                           ; $6fd4: $00
    rst $38                                       ; $6fd5: $ff
    add c                                         ; $6fd6: $81
    rst $38                                       ; $6fd7: $ff
    ldh a, [rIE]                                  ; $6fd8: $f0 $ff
    nop                                           ; $6fda: $00
    rst $38                                       ; $6fdb: $ff
    rrca                                          ; $6fdc: $0f
    rst $38                                       ; $6fdd: $ff
    add b                                         ; $6fde: $80

jr_075_6fdf:
    rst $38                                       ; $6fdf: $ff
    ret nz                                        ; $6fe0: $c0

    rst $38                                       ; $6fe1: $ff
    ld e, $ff                                     ; $6fe2: $1e $ff
    nop                                           ; $6fe4: $00
    rst $38                                       ; $6fe5: $ff
    rst $20                                       ; $6fe6: $e7
    rst $38                                       ; $6fe7: $ff
    nop                                           ; $6fe8: $00
    rst $38                                       ; $6fe9: $ff
    ld b, $ff                                     ; $6fea: $06 $ff
    ret nz                                        ; $6fec: $c0

    rst $38                                       ; $6fed: $ff
    rlca                                          ; $6fee: $07
    rst $38                                       ; $6fef: $ff
    rrca                                          ; $6ff0: $0f
    rst $38                                       ; $6ff1: $ff
    cp $ff                                        ; $6ff2: $fe $ff
    inc sp                                        ; $6ff4: $33
    rst $38                                       ; $6ff5: $ff
    cp $ff                                        ; $6ff6: $fe $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    and $ff                                       ; $6ffa: $e6 $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    ld sp, hl                                     ; $6ffe: $f9
    rst $38                                       ; $6fff: $ff
    db $fc                                        ; $7000: $fc
    rst $38                                       ; $7001: $ff
    ld bc, $3fff                                  ; $7002: $01 $ff $3f
    rst $38                                       ; $7005: $ff
    ld h, c                                       ; $7006: $61
    rst $38                                       ; $7007: $ff
    db $fc                                        ; $7008: $fc
    rst $38                                       ; $7009: $ff
    ld h, a                                       ; $700a: $67
    rst $38                                       ; $700b: $ff
    inc sp                                        ; $700c: $33
    rst $38                                       ; $700d: $ff
    rst $20                                       ; $700e: $e7
    rst $38                                       ; $700f: $ff
    inc c                                         ; $7010: $0c
    nop                                           ; $7011: $00
    sbc c                                         ; $7012: $99
    nop                                           ; $7013: $00
    inc c                                         ; $7014: $0c
    nop                                           ; $7015: $00
    jr jr_075_7018                                ; $7016: $18 $00

jr_075_7018:
    inc bc                                        ; $7018: $03
    nop                                           ; $7019: $00
    add b                                         ; $701a: $80
    nop                                           ; $701b: $00
    rst $08                                       ; $701c: $cf
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    nop                                           ; $701f: $00
    inc c                                         ; $7020: $0c
    nop                                           ; $7021: $00
    add c                                         ; $7022: $81
    nop                                           ; $7023: $00
    ldh a, [rP1]                                  ; $7024: $f0 $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    jp $0700                                      ; $7028: $c3 $00 $07


    nop                                           ; $702b: $00
    inc sp                                        ; $702c: $33
    nop                                           ; $702d: $00
    ld h, [hl]                                    ; $702e: $66
    nop                                           ; $702f: $00
    ldh a, [rP1]                                  ; $7030: $f0 $00
    ld e, $00                                     ; $7032: $1e $00
    rrca                                          ; $7034: $0f
    nop                                           ; $7035: $00
    cp $00                                        ; $7036: $fe $00
    rst $38                                       ; $7038: $ff
    nop                                           ; $7039: $00
    ld hl, sp+$00                                 ; $703a: $f8 $00
    rst $08                                       ; $703c: $cf
    nop                                           ; $703d: $00
    ld sp, hl                                     ; $703e: $f9
    nop                                           ; $703f: $00
    ccf                                           ; $7040: $3f
    nop                                           ; $7041: $00
    ld h, [hl]                                    ; $7042: $66
    nop                                           ; $7043: $00
    rst $38                                       ; $7044: $ff
    nop                                           ; $7045: $00
    ld bc, $ff00                                  ; $7046: $01 $00 $ff
    nop                                           ; $7049: $00
    ld a, a                                       ; $704a: $7f
    nop                                           ; $704b: $00
    jp $ff00                                      ; $704c: $c3 $00 $ff


    nop                                           ; $704f: $00
    rst $38                                       ; $7050: $ff
    nop                                           ; $7051: $00
    and $19                                       ; $7052: $e6 $19
    di                                            ; $7054: $f3
    inc c                                         ; $7055: $0c
    ld a, [hl]                                    ; $7056: $7e
    add c                                         ; $7057: $81
    rrca                                          ; $7058: $0f
    ldh a, [rIE]                                  ; $7059: $f0 $ff
    nop                                           ; $705b: $00
    ldh a, [rIF]                                  ; $705c: $f0 $0f
    ld a, a                                       ; $705e: $7f
    add b                                         ; $705f: $80
    ccf                                           ; $7060: $3f
    ret nz                                        ; $7061: $c0

    ld a, c                                       ; $7062: $79
    add [hl]                                      ; $7063: $86
    rst $08                                       ; $7064: $cf
    jr nc, @+$1a                                  ; $7065: $30 $18

    rst $20                                       ; $7067: $e7
    rst $38                                       ; $7068: $ff
    nop                                           ; $7069: $00
    ld sp, hl                                     ; $706a: $f9
    ld b, $3f                                     ; $706b: $06 $3f
    ret nz                                        ; $706d: $c0

    ld hl, sp+$07                                 ; $706e: $f8 $07
    ldh a, [rIF]                                  ; $7070: $f0 $0f
    ld bc, $ccfe                                  ; $7072: $01 $fe $cc
    inc sp                                        ; $7075: $33
    ld bc, $00fe                                  ; $7076: $01 $fe $00
    rst $38                                       ; $7079: $ff
    ld e, $e1                                     ; $707a: $1e $e1
    nop                                           ; $707c: $00
    rst $38                                       ; $707d: $ff
    ld b, $f9                                     ; $707e: $06 $f9
    inc bc                                        ; $7080: $03
    db $fc                                        ; $7081: $fc
    cp $01                                        ; $7082: $fe $01
    ret nz                                        ; $7084: $c0

    ccf                                           ; $7085: $3f
    sbc [hl]                                      ; $7086: $9e
    ld h, c                                       ; $7087: $61
    ret nz                                        ; $7088: $c0

    ccf                                           ; $7089: $3f
    nop                                           ; $708a: $00
    rst $38                                       ; $708b: $ff
    ret nz                                        ; $708c: $c0

    ccf                                           ; $708d: $3f
    nop                                           ; $708e: $00
    rst $38                                       ; $708f: $ff
    nop                                           ; $7090: $00
    rst $38                                       ; $7091: $ff
    ld b, $ff                                     ; $7092: $06 $ff
    nop                                           ; $7094: $00
    rst $38                                       ; $7095: $ff
    nop                                           ; $7096: $00
    rst $38                                       ; $7097: $ff
    rst $08                                       ; $7098: $cf
    rst $38                                       ; $7099: $ff
    add b                                         ; $709a: $80
    rst $38                                       ; $709b: $ff
    rrca                                          ; $709c: $0f
    rst $38                                       ; $709d: $ff
    nop                                           ; $709e: $00
    rst $38                                       ; $709f: $ff
    jp Jump_000_18ff                              ; $70a0: $c3 $ff $18


    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    nop                                           ; $70a6: $00
    rst $38                                       ; $70a7: $ff
    inc c                                         ; $70a8: $0c
    rst $38                                       ; $70a9: $ff
    add hl, de                                    ; $70aa: $19
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    nop                                           ; $70ae: $00
    rst $38                                       ; $70af: $ff
    and $ff                                       ; $70b0: $e6 $ff
    db $fc                                        ; $70b2: $fc
    rst $38                                       ; $70b3: $ff
    sbc a                                         ; $70b4: $9f
    rst $38                                       ; $70b5: $ff
    ccf                                           ; $70b6: $3f
    rst $38                                       ; $70b7: $ff
    ld hl, sp-$01                                 ; $70b8: $f8 $ff
    di                                            ; $70ba: $f3
    rst $38                                       ; $70bb: $ff
    ld a, [hl]                                    ; $70bc: $7e
    rst $38                                       ; $70bd: $ff
    db $fc                                        ; $70be: $fc
    rst $38                                       ; $70bf: $ff
    ld bc, $f3ff                                  ; $70c0: $01 $ff $f3
    rst $38                                       ; $70c3: $ff
    add c                                         ; $70c4: $81
    rst $38                                       ; $70c5: $ff
    db $fc                                        ; $70c6: $fc
    rst $38                                       ; $70c7: $ff
    rlca                                          ; $70c8: $07
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    ld b, $ff                                     ; $70cc: $06 $ff
    rst $08                                       ; $70ce: $cf
    rst $38                                       ; $70cf: $ff
    jr jr_075_70d2                                ; $70d0: $18 $00

jr_075_70d2:
    ret nz                                        ; $70d2: $c0

    nop                                           ; $70d3: $00
    ld b, $00                                     ; $70d4: $06 $00
    ret nz                                        ; $70d6: $c0

    nop                                           ; $70d7: $00
    ld a, b                                       ; $70d8: $78
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    rlca                                          ; $70dc: $07
    nop                                           ; $70dd: $00
    ret nz                                        ; $70de: $c0

    nop                                           ; $70df: $00
    ld b, $00                                     ; $70e0: $06 $00
    inc c                                         ; $70e2: $0c
    nop                                           ; $70e3: $00
    nop                                           ; $70e4: $00
    nop                                           ; $70e5: $00
    di                                            ; $70e6: $f3
    nop                                           ; $70e7: $00
    nop                                           ; $70e8: $00
    nop                                           ; $70e9: $00
    inc bc                                        ; $70ea: $03
    nop                                           ; $70eb: $00
    ldh [rP1], a                                  ; $70ec: $e0 $00
    inc bc                                        ; $70ee: $03
    nop                                           ; $70ef: $00
    rlca                                          ; $70f0: $07
    nop                                           ; $70f1: $00
    rst $38                                       ; $70f2: $ff
    nop                                           ; $70f3: $00
    sbc c                                         ; $70f4: $99
    nop                                           ; $70f5: $00
    rst $38                                       ; $70f6: $ff
    nop                                           ; $70f7: $00
    rra                                           ; $70f8: $1f
    nop                                           ; $70f9: $00
    db $fc                                        ; $70fa: $fc
    nop                                           ; $70fb: $00
    rst $38                                       ; $70fc: $ff
    nop                                           ; $70fd: $00
    rst $38                                       ; $70fe: $ff
    nop                                           ; $70ff: $00
    cp $00                                        ; $7100: $fe $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    sbc a                                         ; $7104: $9f
    nop                                           ; $7105: $00
    jr nc, jr_075_7108                            ; $7106: $30 $00

jr_075_7108:
    cp $00                                        ; $7108: $fe $00
    rst $38                                       ; $710a: $ff
    nop                                           ; $710b: $00
    rst $38                                       ; $710c: $ff
    nop                                           ; $710d: $00
    rst $38                                       ; $710e: $ff
    nop                                           ; $710f: $00
    inc bc                                        ; $7110: $03
    nop                                           ; $7111: $00
    ld e, $00                                     ; $7112: $1e $00
    rrca                                          ; $7114: $0f
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    inc a                                         ; $7118: $3c
    nop                                           ; $7119: $00
    ld sp, hl                                     ; $711a: $f9
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    add c                                         ; $711e: $81
    nop                                           ; $711f: $00
    inc c                                         ; $7120: $0c
    nop                                           ; $7121: $00
    ld h, b                                       ; $7122: $60
    nop                                           ; $7123: $00
    inc sp                                        ; $7124: $33
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    ldh a, [rP1]                                  ; $7128: $f0 $00
    add a                                         ; $712a: $87
    nop                                           ; $712b: $00
    nop                                           ; $712c: $00

jr_075_712d:
    nop                                           ; $712d: $00
    rst $38                                       ; $712e: $ff
    nop                                           ; $712f: $00
    db $fc                                        ; $7130: $fc
    nop                                           ; $7131: $00
    rlca                                          ; $7132: $07
    nop                                           ; $7133: $00
    rst $38                                       ; $7134: $ff
    nop                                           ; $7135: $00
    ld sp, hl                                     ; $7136: $f9
    nop                                           ; $7137: $00
    rst $38                                       ; $7138: $ff
    nop                                           ; $7139: $00
    and $00                                       ; $713a: $e6 $00
    rst $38                                       ; $713c: $ff
    nop                                           ; $713d: $00
    ld e, $00                                     ; $713e: $1e $00
    rrca                                          ; $7140: $0f
    nop                                           ; $7141: $00
    ldh [rP1], a                                  ; $7142: $e0 $00
    rst $38                                       ; $7144: $ff
    nop                                           ; $7145: $00
    add c                                         ; $7146: $81
    nop                                           ; $7147: $00
    rst $08                                       ; $7148: $cf
    nop                                           ; $7149: $00
    add hl, de                                    ; $714a: $19
    nop                                           ; $714b: $00
    rst $08                                       ; $714c: $cf
    nop                                           ; $714d: $00
    ld a, [hl]                                    ; $714e: $7e
    nop                                           ; $714f: $00
    di                                            ; $7150: $f3
    inc c                                         ; $7151: $0c
    and $19                                       ; $7152: $e6 $19
    rst $38                                       ; $7154: $ff

jr_075_7155:
    nop                                           ; $7155: $00
    rst $20                                       ; $7156: $e7
    jr jr_075_7155                                ; $7157: $18 $fc

    inc bc                                        ; $7159: $03
    ld a, a                                       ; $715a: $7f

jr_075_715b:
    add b                                         ; $715b: $80
    jr nc, jr_075_712d                            ; $715c: $30 $cf

    rst $38                                       ; $715e: $ff
    nop                                           ; $715f: $00
    rst $08                                       ; $7160: $cf
    jr nc, jr_075_71dc                            ; $7161: $30 $79

    add [hl]                                      ; $7163: $86
    rrca                                          ; $7164: $0f
    ldh a, [rIE]                                  ; $7165: $f0 $ff
    nop                                           ; $7167: $00
    inc a                                         ; $7168: $3c
    jp $07f8                                      ; $7169: $c3 $f8 $07


    call z, $9933                                 ; $716c: $cc $33 $99
    ld h, [hl]                                    ; $716f: $66
    rra                                           ; $7170: $1f
    ldh [$c3], a                                  ; $7171: $e0 $c3
    inc a                                         ; $7173: $3c
    ldh [$1f], a                                  ; $7174: $e0 $1f
    inc bc                                        ; $7176: $03
    db $fc                                        ; $7177: $fc
    nop                                           ; $7178: $00
    rst $38                                       ; $7179: $ff
    rrca                                          ; $717a: $0f
    ldh a, [$81]                                  ; $717b: $f0 $81
    ld a, [hl]                                    ; $717d: $7e
    inc c                                         ; $717e: $0c
    di                                            ; $717f: $f3
    add b                                         ; $7180: $80
    ld a, a                                       ; $7181: $7f
    inc sp                                        ; $7182: $33
    call z, $fe01                                 ; $7183: $cc $01 $fe
    db $fc                                        ; $7186: $fc
    inc bc                                        ; $7187: $03
    nop                                           ; $7188: $00
    rst $38                                       ; $7189: $ff
    jr nc, jr_075_715b                            ; $718a: $30 $cf

    sbc c                                         ; $718c: $99
    ld h, [hl]                                    ; $718d: $66
    nop                                           ; $718e: $00
    rst $38                                       ; $718f: $ff
    ld bc, $ccff                                  ; $7190: $01 $ff $cc
    rst $38                                       ; $7193: $ff
    nop                                           ; $7194: $00
    rst $38                                       ; $7195: $ff
    inc bc                                        ; $7196: $03
    rst $38                                       ; $7197: $ff
    ldh [rIE], a                                  ; $7198: $e0 $ff
    nop                                           ; $719a: $00
    rst $38                                       ; $719b: $ff
    rra                                           ; $719c: $1f
    rst $38                                       ; $719d: $ff
    nop                                           ; $719e: $00
    rst $38                                       ; $719f: $ff
    add b                                         ; $71a0: $80
    rst $38                                       ; $71a1: $ff
    inc a                                         ; $71a2: $3c
    rst $38                                       ; $71a3: $ff
    nop                                           ; $71a4: $00
    rst $38                                       ; $71a5: $ff
    rst $08                                       ; $71a6: $cf
    rst $38                                       ; $71a7: $ff
    ld bc, $0cff                                  ; $71a8: $01 $ff $0c
    rst $38                                       ; $71ab: $ff
    add b                                         ; $71ac: $80
    rst $38                                       ; $71ad: $ff
    rrca                                          ; $71ae: $0f
    rst $38                                       ; $71af: $ff
    rra                                           ; $71b0: $1f
    rst $38                                       ; $71b1: $ff
    db $fc                                        ; $71b2: $fc
    rst $38                                       ; $71b3: $ff
    ld h, [hl]                                    ; $71b4: $66
    rst $38                                       ; $71b5: $ff
    db $fc                                        ; $71b6: $fc
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    call z, $feff                                 ; $71ba: $cc $ff $fe
    rst $38                                       ; $71bd: $ff
    di                                            ; $71be: $f3
    rst $38                                       ; $71bf: $ff
    ld hl, sp-$01                                 ; $71c0: $f8 $ff
    inc bc                                        ; $71c2: $03
    rst $38                                       ; $71c3: $ff
    ld a, [hl]                                    ; $71c4: $7e
    rst $38                                       ; $71c5: $ff
    jp $f9ff                                      ; $71c6: $c3 $ff $f9


    rst $38                                       ; $71c9: $ff
    rst $08                                       ; $71ca: $cf
    rst $38                                       ; $71cb: $ff
    ld h, a                                       ; $71cc: $67
    rst $38                                       ; $71cd: $ff
    rst $08                                       ; $71ce: $cf
    rst $38                                       ; $71cf: $ff
    jr jr_075_71d2                                ; $71d0: $18 $00

jr_075_71d2:
    inc sp                                        ; $71d2: $33
    nop                                           ; $71d3: $00
    add hl, de                                    ; $71d4: $19
    nop                                           ; $71d5: $00
    jr nc, jr_075_71d8                            ; $71d6: $30 $00

jr_075_71d8:
    rlca                                          ; $71d8: $07
    nop                                           ; $71d9: $00
    nop                                           ; $71da: $00
    nop                                           ; $71db: $00

jr_075_71dc:
    sbc [hl]                                      ; $71dc: $9e
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    jr jr_075_71e2                                ; $71e0: $18 $00

jr_075_71e2:
    inc bc                                        ; $71e2: $03
    nop                                           ; $71e3: $00
    ldh [rP1], a                                  ; $71e4: $e0 $00
    nop                                           ; $71e6: $00
    nop                                           ; $71e7: $00
    add [hl]                                      ; $71e8: $86
    nop                                           ; $71e9: $00
    rrca                                          ; $71ea: $0f
    nop                                           ; $71eb: $00
    ld h, a                                       ; $71ec: $67
    nop                                           ; $71ed: $00
    call z, $e000                                 ; $71ee: $cc $00 $e0
    nop                                           ; $71f1: $00
    inc a                                         ; $71f2: $3c
    nop                                           ; $71f3: $00
    rra                                           ; $71f4: $1f
    nop                                           ; $71f5: $00
    db $fc                                        ; $71f6: $fc

jr_075_71f7:
    nop                                           ; $71f7: $00
    rst $38                                       ; $71f8: $ff
    nop                                           ; $71f9: $00
    ldh a, [rP1]                                  ; $71fa: $f0 $00
    sbc a                                         ; $71fc: $9f
    nop                                           ; $71fd: $00
    di                                            ; $71fe: $f3
    nop                                           ; $71ff: $00
    ld a, a                                       ; $7200: $7f
    nop                                           ; $7201: $00
    call z, $fe00                                 ; $7202: $cc $00 $fe
    nop                                           ; $7205: $00
    inc bc                                        ; $7206: $03
    nop                                           ; $7207: $00
    rst $38                                       ; $7208: $ff
    nop                                           ; $7209: $00
    rst $38                                       ; $720a: $ff
    nop                                           ; $720b: $00
    add a                                         ; $720c: $87
    nop                                           ; $720d: $00
    rst $38                                       ; $720e: $ff
    nop                                           ; $720f: $00
    cp $01                                        ; $7210: $fe $01
    call z, $e733                                 ; $7212: $cc $33 $e7
    jr @-$02                                      ; $7215: $18 $fc

    inc bc                                        ; $7217: $03
    rra                                           ; $7218: $1f
    ldh [rIE], a                                  ; $7219: $e0 $ff
    nop                                           ; $721b: $00
    ldh [$1f], a                                  ; $721c: $e0 $1f
    rst $38                                       ; $721e: $ff
    nop                                           ; $721f: $00
    ld a, a                                       ; $7220: $7f
    add b                                         ; $7221: $80
    di                                            ; $7222: $f3
    inc c                                         ; $7223: $0c
    sbc a                                         ; $7224: $9f
    ld h, b                                       ; $7225: $60
    jr nc, jr_075_71f7                            ; $7226: $30 $cf

    cp $01                                        ; $7228: $fe $01
    di                                            ; $722a: $f3
    inc c                                         ; $722b: $0c
    ld a, a                                       ; $722c: $7f
    add b                                         ; $722d: $80
    ldh a, [rIF]                                  ; $722e: $f0 $0f
    ldh [$1f], a                                  ; $7230: $e0 $1f
    inc bc                                        ; $7232: $03
    db $fc                                        ; $7233: $fc
    sbc c                                         ; $7234: $99
    ld h, [hl]                                    ; $7235: $66
    inc bc                                        ; $7236: $03
    db $fc                                        ; $7237: $fc
    ld bc, $3cfe                                  ; $7238: $01 $fe $3c
    jp $fe01                                      ; $723b: $c3 $01 $fe


    inc c                                         ; $723e: $0c
    di                                            ; $723f: $f3
    rlca                                          ; $7240: $07
    ld hl, sp-$04                                 ; $7241: $f8 $fc
    inc bc                                        ; $7243: $03
    add c                                         ; $7244: $81
    ld a, [hl]                                    ; $7245: $7e
    inc a                                         ; $7246: $3c
    jp $7f80                                      ; $7247: $c3 $80 $7f


    nop                                           ; $724a: $00
    rst $38                                       ; $724b: $ff
    add b                                         ; $724c: $80
    ld a, a                                       ; $724d: $7f
    nop                                           ; $724e: $00
    rst $38                                       ; $724f: $ff
    ld bc, $0cff                                  ; $7250: $01 $ff $0c
    rst $38                                       ; $7253: $ff
    ld bc, $00ff                                  ; $7254: $01 $ff $00
    rst $38                                       ; $7257: $ff
    sbc [hl]                                      ; $7258: $9e
    rst $38                                       ; $7259: $ff
    nop                                           ; $725a: $00
    rst $38                                       ; $725b: $ff
    rra                                           ; $725c: $1f
    rst $38                                       ; $725d: $ff
    nop                                           ; $725e: $00
    rst $38                                       ; $725f: $ff
    add [hl]                                      ; $7260: $86
    rst $38                                       ; $7261: $ff
    jr nc, @+$01                                  ; $7262: $30 $ff

    cp $ff                                        ; $7264: $fe $ff
    nop                                           ; $7266: $00
    rst $38                                       ; $7267: $ff
    add hl, de                                    ; $7268: $19
    rst $38                                       ; $7269: $ff
    inc sp                                        ; $726a: $33
    rst $38                                       ; $726b: $ff
    cp $ff                                        ; $726c: $fe $ff
    nop                                           ; $726e: $00
    rst $38                                       ; $726f: $ff
    call z, $f9ff                                 ; $7270: $cc $ff $f9
    rst $38                                       ; $7273: $ff
    ccf                                           ; $7274: $3f
    rst $38                                       ; $7275: $ff
    ld a, a                                       ; $7276: $7f
    rst $38                                       ; $7277: $ff
    ldh a, [rIE]                                  ; $7278: $f0 $ff
    rst $20                                       ; $727a: $e7
    rst $38                                       ; $727b: $ff
    db $fc                                        ; $727c: $fc
    rst $38                                       ; $727d: $ff
    ld sp, hl                                     ; $727e: $f9
    rst $38                                       ; $727f: $ff
    inc bc                                        ; $7280: $03
    rst $38                                       ; $7281: $ff
    rst $20                                       ; $7282: $e7
    rst $38                                       ; $7283: $ff
    inc bc                                        ; $7284: $03
    rst $38                                       ; $7285: $ff
    ld hl, sp-$01                                 ; $7286: $f8 $ff
    rrca                                          ; $7288: $0f
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    inc c                                         ; $728c: $0c
    rst $38                                       ; $728d: $ff
    sbc a                                         ; $728e: $9f
    rst $38                                       ; $728f: $ff
    jr nc, jr_075_7292                            ; $7290: $30 $00

jr_075_7292:
    add b                                         ; $7292: $80
    nop                                           ; $7293: $00
    inc c                                         ; $7294: $0c
    nop                                           ; $7295: $00
    add c                                         ; $7296: $81
    nop                                           ; $7297: $00
    ldh a, [rP1]                                  ; $7298: $f0 $00
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    rrca                                          ; $729c: $0f
    nop                                           ; $729d: $00
    add b                                         ; $729e: $80
    nop                                           ; $729f: $00
    inc c                                         ; $72a0: $0c
    nop                                           ; $72a1: $00
    add hl, de                                    ; $72a2: $19
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    nop                                           ; $72a5: $00
    rst $20                                       ; $72a6: $e7
    nop                                           ; $72a7: $00
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    ld b, $00                                     ; $72aa: $06 $00
    ret nz                                        ; $72ac: $c0

    nop                                           ; $72ad: $00
    rlca                                          ; $72ae: $07
    nop                                           ; $72af: $00
    rrca                                          ; $72b0: $0f
    nop                                           ; $72b1: $00
    cp $00                                        ; $72b2: $fe $00
    inc sp                                        ; $72b4: $33
    nop                                           ; $72b5: $00
    cp $00                                        ; $72b6: $fe $00
    ccf                                           ; $72b8: $3f
    nop                                           ; $72b9: $00
    ld sp, hl                                     ; $72ba: $f9
    nop                                           ; $72bb: $00
    rst $38                                       ; $72bc: $ff
    nop                                           ; $72bd: $00
    rst $38                                       ; $72be: $ff
    nop                                           ; $72bf: $00
    db $fc                                        ; $72c0: $fc
    nop                                           ; $72c1: $00
    ld bc, $3f00                                  ; $72c2: $01 $00 $3f
    nop                                           ; $72c5: $00
    ld h, c                                       ; $72c6: $61
    nop                                           ; $72c7: $00
    db $fc                                        ; $72c8: $fc
    nop                                           ; $72c9: $00
    rst $38                                       ; $72ca: $ff
    nop                                           ; $72cb: $00
    rst $38                                       ; $72cc: $ff
    nop                                           ; $72cd: $00
    rst $38                                       ; $72ce: $ff
    nop                                           ; $72cf: $00
    db $fd                                        ; $72d0: $fd
    rst $38                                       ; $72d1: $ff
    ld a, h                                       ; $72d2: $7c
    rst $38                                       ; $72d3: $ff
    db $fc                                        ; $72d4: $fc
    rst $38                                       ; $72d5: $ff
    db $fd                                        ; $72d6: $fd
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    cp a                                          ; $72de: $bf
    rst $38                                       ; $72df: $ff
    rst $30                                       ; $72e0: $f7
    rst $38                                       ; $72e1: $ff
    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    db $fd                                        ; $72f0: $fd
    rst $38                                       ; $72f1: $ff
    db $fc                                        ; $72f2: $fc
    rst $38                                       ; $72f3: $ff
    xor $ff                                       ; $72f4: $ee $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $28                                       ; $72fb: $ef
    rst $38                                       ; $72fc: $ff
    rst $08                                       ; $72fd: $cf
    rst $38                                       ; $72fe: $ff
    rst $08                                       ; $72ff: $cf
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $18                                       ; $7309: $df
    rst $38                                       ; $730a: $ff
    rst $18                                       ; $730b: $df
    rst $38                                       ; $730c: $ff
    sbc a                                         ; $730d: $9f
    db $fd                                        ; $730e: $fd
    adc a                                         ; $730f: $8f
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    ld a, e                                       ; $7312: $7b
    rst $38                                       ; $7313: $ff
    ld a, a                                       ; $7314: $7f
    rst $38                                       ; $7315: $ff
    ld a, a                                       ; $7316: $7f
    rst $38                                       ; $7317: $ff
    daa                                           ; $7318: $27
    rst $30                                       ; $7319: $f7
    ret nc                                        ; $731a: $d0

    and e                                         ; $731b: $a3
    ldh a, [$c0]                                  ; $731c: $f0 $c0
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $28                                       ; $7322: $ef
    rst $28                                       ; $7323: $ef
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    db $fd                                        ; $7326: $fd
    db $fd                                        ; $7327: $fd
    db $fc                                        ; $7328: $fc
    db $fc                                        ; $7329: $fc
    nop                                           ; $732a: $00
    ld hl, sp+$01                                 ; $732b: $f8 $01
    nop                                           ; $732d: $00
    di                                            ; $732e: $f3
    ld a, [c]                                     ; $732f: $f2
    rst $38                                       ; $7330: $ff
    rst $08                                       ; $7331: $cf
    rst $38                                       ; $7332: $ff
    rst $28                                       ; $7333: $ef
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    cp a                                          ; $733a: $bf
    rst $38                                       ; $733b: $ff
    and b                                         ; $733c: $a0
    ld e, a                                       ; $733d: $5f
    ret nz                                        ; $733e: $c0

    nop                                           ; $733f: $00
    rst $38                                       ; $7340: $ff
    adc a                                         ; $7341: $8f
    cp $cf                                        ; $7342: $fe $cf
    cp $ff                                        ; $7344: $fe $ff
    cp [hl]                                       ; $7346: $be
    rst $38                                       ; $7347: $ff
    cp $ff                                        ; $7348: $fe $ff
    db $f4                                        ; $734a: $f4
    rst $38                                       ; $734b: $ff
    dec bc                                        ; $734c: $0b
    pop af                                        ; $734d: $f1
    rrca                                          ; $734e: $0f
    inc bc                                        ; $734f: $03
    ld d, l                                       ; $7350: $55
    rst $38                                       ; $7351: $ff
    and b                                         ; $7352: $a0
    rst $38                                       ; $7353: $ff
    ld d, d                                       ; $7354: $52
    db $ed                                        ; $7355: $ed
    and l                                         ; $7356: $a5
    ld e, d                                       ; $7357: $5a
    ld c, e                                       ; $7358: $4b
    or h                                          ; $7359: $b4
    cp a                                          ; $735a: $bf

jr_075_735b:
    ld b, b                                       ; $735b: $40
    ld l, a                                       ; $735c: $6f
    sub b                                         ; $735d: $90
    rst $18                                       ; $735e: $df
    jr nz, jr_075_73b6                            ; $735f: $20 $55

    rst $38                                       ; $7361: $ff
    jr z, jr_075_735b                             ; $7362: $28 $f7

    sub c                                         ; $7364: $91
    ld l, a                                       ; $7365: $6f
    inc [hl]                                      ; $7366: $34
    bit 7, e                                      ; $7367: $cb $7b
    add l                                         ; $7369: $85
    or h                                          ; $736a: $b4
    ld c, e                                       ; $736b: $4b
    ld l, e                                       ; $736c: $6b
    sub l                                         ; $736d: $95
    db $fc                                        ; $736e: $fc
    inc bc                                        ; $736f: $03
    or a                                          ; $7370: $b7
    res 5, d                                      ; $7371: $cb $aa
    rst $18                                       ; $7373: $df
    rst $10                                       ; $7374: $d7
    cp $7d                                        ; $7375: $fe $7d
    cp $56                                        ; $7377: $fe $56
    rst $28                                       ; $7379: $ef
    cp e                                          ; $737a: $bb
    rst $00                                       ; $737b: $c7
    jp nc, $a5af                                  ; $737c: $d2 $af $a5

    sbc $6e                                       ; $737f: $de $6e
    pop af                                        ; $7381: $f1
    and l                                         ; $7382: $a5
    ld a, d                                       ; $7383: $7a
    xor d                                         ; $7384: $aa
    ld a, a                                       ; $7385: $7f
    ld d, l                                       ; $7386: $55
    rst $38                                       ; $7387: $ff
    cp a                                          ; $7388: $bf
    rst $38                                       ; $7389: $ff
    ei                                            ; $738a: $fb
    db $fc                                        ; $738b: $fc
    or l                                          ; $738c: $b5
    ld a, d                                       ; $738d: $7a
    db $f4                                        ; $738e: $f4
    rra                                           ; $738f: $1f
    ld e, l                                       ; $7390: $5d
    db $e3                                        ; $7391: $e3
    ld a, [hl]                                    ; $7392: $7e
    pop bc                                        ; $7393: $c1
    cp a                                          ; $7394: $bf
    ret nz                                        ; $7395: $c0

    sub [hl]                                      ; $7396: $96
    jp hl                                         ; $7397: $e9


    xor l                                         ; $7398: $ad
    di                                            ; $7399: $f3
    ld d, d                                       ; $739a: $52
    rst $38                                       ; $739b: $ff
    cp l                                          ; $739c: $bd
    ld a, a                                       ; $739d: $7f
    ld h, $f9                                     ; $739e: $26 $f9
    jp c, $95e5                                   ; $73a0: $da $e5 $95

    ld [$ffc0], a                                 ; $73a3: $ea $c0 $ff
    db $f4                                        ; $73a6: $f4
    rst $38                                       ; $73a7: $ff
    ld a, e                                       ; $73a8: $7b
    rst $38                                       ; $73a9: $ff
    ld l, a                                       ; $73aa: $6f
    sbc a                                         ; $73ab: $9f
    inc l                                         ; $73ac: $2c
    rst $18                                       ; $73ad: $df
    adc e                                         ; $73ae: $8b
    db $ec                                        ; $73af: $ec
    ld c, [hl]                                    ; $73b0: $4e
    pop af                                        ; $73b1: $f1
    ld d, l                                       ; $73b2: $55
    db $eb                                        ; $73b3: $eb
    ld h, c                                       ; $73b4: $61
    rst $38                                       ; $73b5: $ff

jr_075_73b6:
    di                                            ; $73b6: $f3
    rst $38                                       ; $73b7: $ff
    db $fc                                        ; $73b8: $fc
    rst $38                                       ; $73b9: $ff
    xor $f1                                       ; $73ba: $ee $f1
    ld l, h                                       ; $73bc: $6c
    di                                            ; $73bd: $f3
    and c                                         ; $73be: $a1
    ld a, a                                       ; $73bf: $7f
    rst $10                                       ; $73c0: $d7
    rst $38                                       ; $73c1: $ff
    xor [hl]                                      ; $73c2: $ae
    rst $38                                       ; $73c3: $ff
    dec b                                         ; $73c4: $05
    cp $a8                                        ; $73c5: $fe $a8
    rst $10                                       ; $73c7: $d7
    ld d, l                                       ; $73c8: $55
    xor e                                         ; $73c9: $ab
    xor b                                         ; $73ca: $a8
    rst $10                                       ; $73cb: $d7
    ld b, l                                       ; $73cc: $45
    cp [hl]                                       ; $73cd: $be
    xor d                                         ; $73ce: $aa
    push de                                       ; $73cf: $d5
    cp l                                          ; $73d0: $bd
    rst $38                                       ; $73d1: $ff
    db $fd                                        ; $73d2: $fd
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    cp a                                          ; $73de: $bf
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $28                                       ; $73f2: $ef
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $28                                       ; $73f9: $ef
    rst $38                                       ; $73fa: $ff
    rst $08                                       ; $73fb: $cf
    rst $38                                       ; $73fc: $ff
    rst $08                                       ; $73fd: $cf
    rst $38                                       ; $73fe: $ff
    rst $28                                       ; $73ff: $ef
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $28                                       ; $7407: $ef
    rst $38                                       ; $7408: $ff
    rst $28                                       ; $7409: $ef
    rst $38                                       ; $740a: $ff
    rst $00                                       ; $740b: $c7
    rst $38                                       ; $740c: $ff
    rst $00                                       ; $740d: $c7
    db $fd                                        ; $740e: $fd
    rst $00                                       ; $740f: $c7
    ei                                            ; $7410: $fb
    rst $38                                       ; $7411: $ff
    ld a, a                                       ; $7412: $7f
    rst $38                                       ; $7413: $ff
    ld [hl], a                                    ; $7414: $77
    rst $30                                       ; $7415: $f7
    ld h, a                                       ; $7416: $67
    rst $20                                       ; $7417: $e7
    daa                                           ; $7418: $27
    rst $20                                       ; $7419: $e7
    jp $ffb7                                      ; $741a: $c3 $b7 $ff


    ret nz                                        ; $741d: $c0

    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    db $ed                                        ; $7420: $ed
    db $ed                                        ; $7421: $ed
    ld sp, hl                                     ; $7422: $f9
    ld sp, hl                                     ; $7423: $f9
    ld hl, sp-$08                                 ; $7424: $f8 $f8
    ld hl, sp-$08                                 ; $7426: $f8 $f8
    db $fc                                        ; $7428: $fc
    db $fc                                        ; $7429: $fc
    db $fd                                        ; $742a: $fd
    db $fd                                        ; $742b: $fd
    ld a, [$ff05]                                 ; $742c: $fa $05 $ff
    cp $ff                                        ; $742f: $fe $ff
    rst $28                                       ; $7431: $ef
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    adc e                                         ; $743c: $8b
    ld a, a                                       ; $743d: $7f
    rst $38                                       ; $743e: $ff
    nop                                           ; $743f: $00
    rst $38                                       ; $7440: $ff
    rst $08                                       ; $7441: $cf
    cp $ff                                        ; $7442: $fe $ff
    ld a, [hl]                                    ; $7444: $7e
    rst $38                                       ; $7445: $ff
    cp $ff                                        ; $7446: $fe $ff
    cp $ff                                        ; $7448: $fe $ff
    ldh a, [$fb]                                  ; $744a: $f0 $fb
    xor e                                         ; $744c: $ab
    push af                                       ; $744d: $f5
    rst $38                                       ; $744e: $ff
    inc bc                                        ; $744f: $03
    ld d, l                                       ; $7450: $55
    rst $38                                       ; $7451: $ff
    and b                                         ; $7452: $a0
    rst $38                                       ; $7453: $ff
    ld d, d                                       ; $7454: $52
    db $ed                                        ; $7455: $ed
    and l                                         ; $7456: $a5
    ld e, d                                       ; $7457: $5a
    ld c, e                                       ; $7458: $4b
    or h                                          ; $7459: $b4
    cp a                                          ; $745a: $bf

jr_075_745b:
    ld b, b                                       ; $745b: $40
    ld l, a                                       ; $745c: $6f
    sub b                                         ; $745d: $90
    rst $18                                       ; $745e: $df
    jr nz, jr_075_74b6                            ; $745f: $20 $55

    rst $38                                       ; $7461: $ff
    jr z, jr_075_745b                             ; $7462: $28 $f7

    sub c                                         ; $7464: $91
    ld l, a                                       ; $7465: $6f
    inc [hl]                                      ; $7466: $34
    bit 7, e                                      ; $7467: $cb $7b
    add l                                         ; $7469: $85
    or h                                          ; $746a: $b4
    ld c, e                                       ; $746b: $4b
    ld l, e                                       ; $746c: $6b
    sub l                                         ; $746d: $95
    db $fc                                        ; $746e: $fc
    inc bc                                        ; $746f: $03
    or a                                          ; $7470: $b7
    res 5, d                                      ; $7471: $cb $aa
    rst $18                                       ; $7473: $df
    rst $10                                       ; $7474: $d7
    cp $7d                                        ; $7475: $fe $7d
    cp $56                                        ; $7477: $fe $56
    rst $28                                       ; $7479: $ef
    cp e                                          ; $747a: $bb
    rst $00                                       ; $747b: $c7
    jp nc, $a5af                                  ; $747c: $d2 $af $a5

    sbc $6e                                       ; $747f: $de $6e
    pop af                                        ; $7481: $f1
    and l                                         ; $7482: $a5
    ld a, d                                       ; $7483: $7a
    xor d                                         ; $7484: $aa
    ld a, a                                       ; $7485: $7f
    ld d, l                                       ; $7486: $55
    rst $38                                       ; $7487: $ff
    cp a                                          ; $7488: $bf
    rst $38                                       ; $7489: $ff
    ei                                            ; $748a: $fb
    db $fc                                        ; $748b: $fc
    or l                                          ; $748c: $b5
    ld a, d                                       ; $748d: $7a
    db $f4                                        ; $748e: $f4
    rra                                           ; $748f: $1f
    ld e, l                                       ; $7490: $5d
    db $e3                                        ; $7491: $e3
    ld a, [hl]                                    ; $7492: $7e
    pop bc                                        ; $7493: $c1
    cp a                                          ; $7494: $bf
    ret nz                                        ; $7495: $c0

    sub [hl]                                      ; $7496: $96
    jp hl                                         ; $7497: $e9


    xor l                                         ; $7498: $ad
    di                                            ; $7499: $f3
    ld d, d                                       ; $749a: $52
    rst $38                                       ; $749b: $ff
    cp l                                          ; $749c: $bd
    ld a, a                                       ; $749d: $7f
    ld h, $f9                                     ; $749e: $26 $f9
    jp c, $95e5                                   ; $74a0: $da $e5 $95

    ld [$ffc0], a                                 ; $74a3: $ea $c0 $ff
    db $f4                                        ; $74a6: $f4
    rst $38                                       ; $74a7: $ff
    ld a, e                                       ; $74a8: $7b
    rst $38                                       ; $74a9: $ff
    ld l, a                                       ; $74aa: $6f
    sbc a                                         ; $74ab: $9f
    inc l                                         ; $74ac: $2c
    rst $18                                       ; $74ad: $df
    adc e                                         ; $74ae: $8b
    db $ec                                        ; $74af: $ec
    ld c, [hl]                                    ; $74b0: $4e
    pop af                                        ; $74b1: $f1
    ld d, l                                       ; $74b2: $55
    db $eb                                        ; $74b3: $eb
    ld h, c                                       ; $74b4: $61
    rst $38                                       ; $74b5: $ff

jr_075_74b6:
    di                                            ; $74b6: $f3
    rst $38                                       ; $74b7: $ff
    db $fc                                        ; $74b8: $fc
    rst $38                                       ; $74b9: $ff
    xor $f1                                       ; $74ba: $ee $f1
    ld l, h                                       ; $74bc: $6c
    di                                            ; $74bd: $f3
    and c                                         ; $74be: $a1
    ld a, a                                       ; $74bf: $7f
    rst $10                                       ; $74c0: $d7
    rst $38                                       ; $74c1: $ff
    xor [hl]                                      ; $74c2: $ae
    rst $38                                       ; $74c3: $ff
    dec b                                         ; $74c4: $05
    cp $a8                                        ; $74c5: $fe $a8
    rst $10                                       ; $74c7: $d7
    ld d, l                                       ; $74c8: $55
    xor e                                         ; $74c9: $ab
    xor b                                         ; $74ca: $a8
    rst $10                                       ; $74cb: $d7
    ld b, l                                       ; $74cc: $45
    cp [hl]                                       ; $74cd: $be
    xor d                                         ; $74ce: $aa
    push de                                       ; $74cf: $d5
    rst $38                                       ; $74d0: $ff
    rst $38                                       ; $74d1: $ff
    rst $38                                       ; $74d2: $ff
    rst $38                                       ; $74d3: $ff
    rst $38                                       ; $74d4: $ff
    rst $38                                       ; $74d5: $ff
    rst $38                                       ; $74d6: $ff
    rst $38                                       ; $74d7: $ff
    rst $38                                       ; $74d8: $ff
    rst $38                                       ; $74d9: $ff
    rst $38                                       ; $74da: $ff
    rst $38                                       ; $74db: $ff
    rst $38                                       ; $74dc: $ff
    rst $38                                       ; $74dd: $ff
    cp e                                          ; $74de: $bb
    rst $38                                       ; $74df: $ff
    rst $38                                       ; $74e0: $ff
    rst $38                                       ; $74e1: $ff
    rst $38                                       ; $74e2: $ff
    rst $38                                       ; $74e3: $ff
    rst $38                                       ; $74e4: $ff
    rst $38                                       ; $74e5: $ff
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    rst $38                                       ; $74e8: $ff
    rst $38                                       ; $74e9: $ff
    rst $38                                       ; $74ea: $ff
    rst $38                                       ; $74eb: $ff
    db $fd                                        ; $74ec: $fd
    db $fd                                        ; $74ed: $fd
    ld sp, hl                                     ; $74ee: $f9
    reti                                          ; $74ef: $d9


    rst $18                                       ; $74f0: $df
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $30                                       ; $74f5: $f7
    rst $38                                       ; $74f6: $ff
    di                                            ; $74f7: $f3
    rst $38                                       ; $74f8: $ff
    db $e3                                        ; $74f9: $e3
    rst $38                                       ; $74fa: $ff
    db $e3                                        ; $74fb: $e3
    rst $38                                       ; $74fc: $ff
    di                                            ; $74fd: $f3
    rst $38                                       ; $74fe: $ff
    rst $30                                       ; $74ff: $f7
    rst $38                                       ; $7500: $ff
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $28                                       ; $7504: $ef
    rst $38                                       ; $7505: $ff
    rst $08                                       ; $7506: $cf
    rst $38                                       ; $7507: $ff
    rst $00                                       ; $7508: $c7
    rst $38                                       ; $7509: $ff
    rst $00                                       ; $750a: $c7
    rst $38                                       ; $750b: $ff
    rst $08                                       ; $750c: $cf
    rst $38                                       ; $750d: $ff
    db $fd                                        ; $750e: $fd
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    ld [hl], e                                    ; $7512: $73
    di                                            ; $7513: $f3
    ld [hl], e                                    ; $7514: $73
    di                                            ; $7515: $f3
    ld h, a                                       ; $7516: $67
    rst $20                                       ; $7517: $e7
    daa                                           ; $7518: $27
    rst $20                                       ; $7519: $e7
    sbc a                                         ; $751a: $9f
    rst $38                                       ; $751b: $ff
    ret nz                                        ; $751c: $c0

    rst $38                                       ; $751d: $ff
    rst $18                                       ; $751e: $df
    rst $18                                       ; $751f: $df
    ld hl, sp-$08                                 ; $7520: $f8 $f8
    ld hl, sp-$08                                 ; $7522: $f8 $f8
    ld hl, sp-$08                                 ; $7524: $f8 $f8
    db $fc                                        ; $7526: $fc
    db $fc                                        ; $7527: $fc
    db $fc                                        ; $7528: $fc
    db $fc                                        ; $7529: $fc
    cp $fe                                        ; $752a: $fe $fe
    ld bc, $feff                                  ; $752c: $01 $ff $fe
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    ld a, a                                       ; $7534: $7f
    ld a, a                                       ; $7535: $7f
    ld a, a                                       ; $7536: $7f
    ld a, a                                       ; $7537: $7f
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    ld a, a                                       ; $753c: $7f
    rst $38                                       ; $753d: $ff
    nop                                           ; $753e: $00
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    ld a, [hl]                                    ; $7542: $7e
    rst $38                                       ; $7543: $ff
    cp $ff                                        ; $7544: $fe $ff
    cp $ff                                        ; $7546: $fe $ff
    ld a, [$fcfb]                                 ; $7548: $fa $fb $fc
    rst $38                                       ; $754b: $ff
    ld sp, hl                                     ; $754c: $f9
    rst $38                                       ; $754d: $ff
    inc bc                                        ; $754e: $03
    rst $38                                       ; $754f: $ff
    ld d, l                                       ; $7550: $55
    rst $38                                       ; $7551: $ff
    and b                                         ; $7552: $a0
    rst $38                                       ; $7553: $ff
    ld d, d                                       ; $7554: $52
    db $ed                                        ; $7555: $ed
    and l                                         ; $7556: $a5
    ld e, d                                       ; $7557: $5a
    ld c, e                                       ; $7558: $4b
    or h                                          ; $7559: $b4
    cp a                                          ; $755a: $bf

jr_075_755b:
    ld b, b                                       ; $755b: $40
    ld l, a                                       ; $755c: $6f
    sub b                                         ; $755d: $90
    rst $18                                       ; $755e: $df
    jr nz, jr_075_75b6                            ; $755f: $20 $55

    rst $38                                       ; $7561: $ff
    jr z, jr_075_755b                             ; $7562: $28 $f7

    sub c                                         ; $7564: $91
    ld l, a                                       ; $7565: $6f
    inc [hl]                                      ; $7566: $34
    bit 7, e                                      ; $7567: $cb $7b
    add l                                         ; $7569: $85
    or h                                          ; $756a: $b4
    ld c, e                                       ; $756b: $4b
    ld l, e                                       ; $756c: $6b
    sub l                                         ; $756d: $95
    db $fc                                        ; $756e: $fc
    inc bc                                        ; $756f: $03
    or a                                          ; $7570: $b7
    res 5, d                                      ; $7571: $cb $aa
    rst $18                                       ; $7573: $df
    rst $10                                       ; $7574: $d7
    cp $7d                                        ; $7575: $fe $7d
    cp $56                                        ; $7577: $fe $56
    rst $28                                       ; $7579: $ef
    cp e                                          ; $757a: $bb
    rst $00                                       ; $757b: $c7
    jp nc, $a5af                                  ; $757c: $d2 $af $a5

    sbc $6e                                       ; $757f: $de $6e
    pop af                                        ; $7581: $f1
    and l                                         ; $7582: $a5
    ld a, d                                       ; $7583: $7a
    xor d                                         ; $7584: $aa
    ld a, a                                       ; $7585: $7f
    ld d, l                                       ; $7586: $55
    rst $38                                       ; $7587: $ff
    cp a                                          ; $7588: $bf
    rst $38                                       ; $7589: $ff
    ei                                            ; $758a: $fb
    db $fc                                        ; $758b: $fc
    or l                                          ; $758c: $b5
    ld a, d                                       ; $758d: $7a
    db $f4                                        ; $758e: $f4
    rra                                           ; $758f: $1f
    ld e, l                                       ; $7590: $5d
    db $e3                                        ; $7591: $e3
    ld a, [hl]                                    ; $7592: $7e
    pop bc                                        ; $7593: $c1
    cp a                                          ; $7594: $bf
    ret nz                                        ; $7595: $c0

    sub [hl]                                      ; $7596: $96
    jp hl                                         ; $7597: $e9


    xor l                                         ; $7598: $ad
    di                                            ; $7599: $f3
    ld d, d                                       ; $759a: $52
    rst $38                                       ; $759b: $ff
    cp l                                          ; $759c: $bd
    ld a, a                                       ; $759d: $7f
    ld h, $f9                                     ; $759e: $26 $f9
    jp c, $95e5                                   ; $75a0: $da $e5 $95

    ld [$ffc0], a                                 ; $75a3: $ea $c0 $ff
    db $f4                                        ; $75a6: $f4
    rst $38                                       ; $75a7: $ff
    ld a, e                                       ; $75a8: $7b
    rst $38                                       ; $75a9: $ff
    ld l, a                                       ; $75aa: $6f
    sbc a                                         ; $75ab: $9f
    inc l                                         ; $75ac: $2c
    rst $18                                       ; $75ad: $df
    adc e                                         ; $75ae: $8b
    db $ec                                        ; $75af: $ec
    ld c, [hl]                                    ; $75b0: $4e
    pop af                                        ; $75b1: $f1
    ld d, l                                       ; $75b2: $55
    db $eb                                        ; $75b3: $eb
    ld h, c                                       ; $75b4: $61
    rst $38                                       ; $75b5: $ff

jr_075_75b6:
    di                                            ; $75b6: $f3
    rst $38                                       ; $75b7: $ff
    db $fc                                        ; $75b8: $fc
    rst $38                                       ; $75b9: $ff
    xor $f1                                       ; $75ba: $ee $f1
    ld l, h                                       ; $75bc: $6c
    di                                            ; $75bd: $f3
    and c                                         ; $75be: $a1
    ld a, a                                       ; $75bf: $7f
    rst $10                                       ; $75c0: $d7
    rst $38                                       ; $75c1: $ff
    xor [hl]                                      ; $75c2: $ae
    rst $38                                       ; $75c3: $ff
    dec b                                         ; $75c4: $05
    cp $a8                                        ; $75c5: $fe $a8
    rst $10                                       ; $75c7: $d7
    ld d, l                                       ; $75c8: $55
    xor e                                         ; $75c9: $ab
    xor b                                         ; $75ca: $a8
    rst $10                                       ; $75cb: $d7
    ld b, l                                       ; $75cc: $45
    cp [hl]                                       ; $75cd: $be
    xor d                                         ; $75ce: $aa
    push de                                       ; $75cf: $d5
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $30                                       ; $75dc: $f7
    rst $38                                       ; $75dd: $ff
    or a                                          ; $75de: $b7
    rst $30                                       ; $75df: $f7
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    db $fd                                        ; $75eb: $fd
    rst $38                                       ; $75ec: $ff
    reti                                          ; $75ed: $d9


    rst $38                                       ; $75ee: $ff
    di                                            ; $75ef: $f3
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $30                                       ; $75f2: $f7
    rst $38                                       ; $75f3: $ff
    di                                            ; $75f4: $f3
    rst $38                                       ; $75f5: $ff
    db $e3                                        ; $75f6: $e3
    rst $38                                       ; $75f7: $ff
    db $e3                                        ; $75f8: $e3
    rst $38                                       ; $75f9: $ff
    rst $30                                       ; $75fa: $f7
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $18                                       ; $7602: $df
    rst $38                                       ; $7603: $ff
    sbc a                                         ; $7604: $9f
    rst $38                                       ; $7605: $ff
    adc a                                         ; $7606: $8f
    rst $38                                       ; $7607: $ff
    adc a                                         ; $7608: $8f
    rst $38                                       ; $7609: $ff
    rst $08                                       ; $760a: $cf
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    db $fd                                        ; $760e: $fd
    rst $38                                       ; $760f: $ff
    rst $30                                       ; $7610: $f7
    rst $30                                       ; $7611: $f7
    ld [hl], e                                    ; $7612: $73
    di                                            ; $7613: $f3
    ld [hl], e                                    ; $7614: $73
    di                                            ; $7615: $f3
    ld h, a                                       ; $7616: $67
    rst $20                                       ; $7617: $e7
    ccf                                           ; $7618: $3f
    rst $38                                       ; $7619: $ff
    res 7, a                                      ; $761a: $cb $bf
    cp a                                          ; $761c: $bf
    add b                                         ; $761d: $80
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    pop af                                        ; $7621: $f1
    rst $38                                       ; $7622: $ff
    pop af                                        ; $7623: $f1
    rst $38                                       ; $7624: $ff
    ld sp, hl                                     ; $7625: $f9
    rst $38                                       ; $7626: $ff
    db $fd                                        ; $7627: $fd
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $28                                       ; $762a: $ef
    rst $38                                       ; $762b: $ff
    ld a, [$ff05]                                 ; $762c: $fa $05 $ff
    cp $ff                                        ; $762f: $fe $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    adc e                                         ; $763c: $8b
    ld a, a                                       ; $763d: $7f
    rst $28                                       ; $763e: $ef
    nop                                           ; $763f: $00
    ld a, a                                       ; $7640: $7f
    rst $38                                       ; $7641: $ff
    cp $ff                                        ; $7642: $fe $ff
    cp $ff                                        ; $7644: $fe $ff
    or $f7                                        ; $7646: $f6 $f7
    cp $ff                                        ; $7648: $fe $ff
    db $f4                                        ; $764a: $f4
    rst $38                                       ; $764b: $ff
    xor e                                         ; $764c: $ab
    push af                                       ; $764d: $f5
    rst $38                                       ; $764e: $ff
    inc bc                                        ; $764f: $03
    ld d, l                                       ; $7650: $55
    rst $38                                       ; $7651: $ff
    and b                                         ; $7652: $a0
    rst $38                                       ; $7653: $ff
    ld d, d                                       ; $7654: $52
    db $ed                                        ; $7655: $ed
    and l                                         ; $7656: $a5
    ld e, d                                       ; $7657: $5a
    ld c, e                                       ; $7658: $4b
    or h                                          ; $7659: $b4
    cp a                                          ; $765a: $bf

jr_075_765b:
    ld b, b                                       ; $765b: $40
    ld l, a                                       ; $765c: $6f
    sub b                                         ; $765d: $90
    rst $18                                       ; $765e: $df
    jr nz, jr_075_76b6                            ; $765f: $20 $55

    rst $38                                       ; $7661: $ff
    jr z, jr_075_765b                             ; $7662: $28 $f7

    sub c                                         ; $7664: $91
    ld l, a                                       ; $7665: $6f
    inc [hl]                                      ; $7666: $34
    bit 7, e                                      ; $7667: $cb $7b
    add l                                         ; $7669: $85
    or h                                          ; $766a: $b4
    ld c, e                                       ; $766b: $4b
    ld l, e                                       ; $766c: $6b
    sub l                                         ; $766d: $95
    db $fc                                        ; $766e: $fc
    inc bc                                        ; $766f: $03
    or a                                          ; $7670: $b7
    res 5, d                                      ; $7671: $cb $aa
    rst $18                                       ; $7673: $df
    rst $10                                       ; $7674: $d7
    cp $7d                                        ; $7675: $fe $7d
    cp $56                                        ; $7677: $fe $56
    rst $28                                       ; $7679: $ef
    cp e                                          ; $767a: $bb
    rst $00                                       ; $767b: $c7
    jp nc, $a5af                                  ; $767c: $d2 $af $a5

    sbc $6e                                       ; $767f: $de $6e
    pop af                                        ; $7681: $f1
    and l                                         ; $7682: $a5
    ld a, d                                       ; $7683: $7a
    xor d                                         ; $7684: $aa
    ld a, a                                       ; $7685: $7f
    ld d, l                                       ; $7686: $55
    rst $38                                       ; $7687: $ff
    cp a                                          ; $7688: $bf
    rst $38                                       ; $7689: $ff
    ei                                            ; $768a: $fb
    db $fc                                        ; $768b: $fc
    or l                                          ; $768c: $b5
    ld a, d                                       ; $768d: $7a
    db $f4                                        ; $768e: $f4
    rra                                           ; $768f: $1f
    ld e, l                                       ; $7690: $5d
    db $e3                                        ; $7691: $e3
    ld a, [hl]                                    ; $7692: $7e
    pop bc                                        ; $7693: $c1
    cp a                                          ; $7694: $bf
    ret nz                                        ; $7695: $c0

    sub [hl]                                      ; $7696: $96
    jp hl                                         ; $7697: $e9


    xor l                                         ; $7698: $ad
    di                                            ; $7699: $f3
    ld d, d                                       ; $769a: $52
    rst $38                                       ; $769b: $ff
    cp l                                          ; $769c: $bd
    ld a, a                                       ; $769d: $7f
    ld h, $f9                                     ; $769e: $26 $f9
    jp c, $95e5                                   ; $76a0: $da $e5 $95

    ld [$ffc0], a                                 ; $76a3: $ea $c0 $ff
    db $f4                                        ; $76a6: $f4
    rst $38                                       ; $76a7: $ff
    ld a, e                                       ; $76a8: $7b
    rst $38                                       ; $76a9: $ff
    ld l, a                                       ; $76aa: $6f
    sbc a                                         ; $76ab: $9f
    inc l                                         ; $76ac: $2c
    rst $18                                       ; $76ad: $df
    adc e                                         ; $76ae: $8b
    db $ec                                        ; $76af: $ec
    ld c, [hl]                                    ; $76b0: $4e
    pop af                                        ; $76b1: $f1
    ld d, l                                       ; $76b2: $55
    db $eb                                        ; $76b3: $eb
    ld h, c                                       ; $76b4: $61
    rst $38                                       ; $76b5: $ff

jr_075_76b6:
    di                                            ; $76b6: $f3
    rst $38                                       ; $76b7: $ff
    db $fc                                        ; $76b8: $fc
    rst $38                                       ; $76b9: $ff
    xor $f1                                       ; $76ba: $ee $f1
    ld l, h                                       ; $76bc: $6c
    di                                            ; $76bd: $f3
    and c                                         ; $76be: $a1
    ld a, a                                       ; $76bf: $7f
    rst $10                                       ; $76c0: $d7
    rst $38                                       ; $76c1: $ff
    xor [hl]                                      ; $76c2: $ae
    rst $38                                       ; $76c3: $ff
    dec b                                         ; $76c4: $05
    cp $a8                                        ; $76c5: $fe $a8
    rst $10                                       ; $76c7: $d7
    ld d, l                                       ; $76c8: $55
    xor e                                         ; $76c9: $ab
    xor b                                         ; $76ca: $a8
    rst $10                                       ; $76cb: $d7
    ld b, l                                       ; $76cc: $45
    cp [hl]                                       ; $76cd: $be
    xor d                                         ; $76ce: $aa
    push de                                       ; $76cf: $d5
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $30                                       ; $76da: $f7
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $30                                       ; $76dd: $f7
    cp a                                          ; $76de: $bf
    di                                            ; $76df: $f3
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    cp $ff                                        ; $76e7: $fe $ff
    cp $ff                                        ; $76e9: $fe $ff
    sbc $ff                                       ; $76eb: $de $ff
    db $fc                                        ; $76ed: $fc
    rst $38                                       ; $76ee: $ff
    ld hl, sp-$09                                 ; $76ef: $f8 $f7
    rst $38                                       ; $76f1: $ff
    di                                            ; $76f2: $f3
    rst $38                                       ; $76f3: $ff
    di                                            ; $76f4: $f3
    rst $38                                       ; $76f5: $ff
    rst $30                                       ; $76f6: $f7
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    ld a, a                                       ; $76f9: $7f
    rst $38                                       ; $76fa: $ff
    ld a, a                                       ; $76fb: $7f
    rst $38                                       ; $76fc: $ff
    ld a, a                                       ; $76fd: $7f
    rst $38                                       ; $76fe: $ff
    ld a, a                                       ; $76ff: $7f
    rst $18                                       ; $7700: $df
    rst $38                                       ; $7701: $ff
    rst $18                                       ; $7702: $df
    rst $38                                       ; $7703: $ff
    sbc a                                         ; $7704: $9f
    rst $38                                       ; $7705: $ff
    sbc a                                         ; $7706: $9f
    rst $38                                       ; $7707: $ff
    rst $18                                       ; $7708: $df
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    ld a, l                                       ; $770e: $7d
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    di                                            ; $7711: $f3
    ld a, a                                       ; $7712: $7f
    ei                                            ; $7713: $fb
    ld a, a                                       ; $7714: $7f
    rst $38                                       ; $7715: $ff
    ld a, a                                       ; $7716: $7f
    rst $38                                       ; $7717: $ff
    ld l, $fe                                     ; $7718: $2e $fe
    sub b                                         ; $771a: $90
    xor [hl]                                      ; $771b: $ae
    ldh a, [$c0]                                  ; $771c: $f0 $c0
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    ld hl, sp-$01                                 ; $7721: $f8 $ff
    db $fc                                        ; $7723: $fc
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $28                                       ; $7728: $ef
    rst $38                                       ; $7729: $ff
    ld [bc], a                                    ; $772a: $02
    rst $38                                       ; $772b: $ff
    rlca                                          ; $772c: $07
    nop                                           ; $772d: $00
    ld a, a                                       ; $772e: $7f
    ld a, [hl]                                    ; $772f: $7e
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    cp a                                          ; $773a: $bf
    rst $38                                       ; $773b: $ff
    and b                                         ; $773c: $a0
    ld d, a                                       ; $773d: $57
    ret nz                                        ; $773e: $c0

    nop                                           ; $773f: $00
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    cp $ff                                        ; $7742: $fe $ff
    or $f7                                        ; $7744: $f6 $f7
    cp $ff                                        ; $7746: $fe $ff
    cp $ff                                        ; $7748: $fe $ff
    db $f4                                        ; $774a: $f4
    rst $38                                       ; $774b: $ff
    dec bc                                        ; $774c: $0b
    push af                                       ; $774d: $f5
    rrca                                          ; $774e: $0f
    inc bc                                        ; $774f: $03
    ld d, l                                       ; $7750: $55
    rst $38                                       ; $7751: $ff
    and b                                         ; $7752: $a0
    rst $38                                       ; $7753: $ff
    ld d, d                                       ; $7754: $52
    db $ed                                        ; $7755: $ed
    and l                                         ; $7756: $a5
    ld e, d                                       ; $7757: $5a
    ld c, e                                       ; $7758: $4b
    or h                                          ; $7759: $b4
    cp a                                          ; $775a: $bf

jr_075_775b:
    ld b, b                                       ; $775b: $40
    ld l, a                                       ; $775c: $6f
    sub b                                         ; $775d: $90
    rst $18                                       ; $775e: $df
    jr nz, jr_075_77b6                            ; $775f: $20 $55

    rst $38                                       ; $7761: $ff
    jr z, jr_075_775b                             ; $7762: $28 $f7

    sub c                                         ; $7764: $91
    ld l, a                                       ; $7765: $6f
    inc [hl]                                      ; $7766: $34
    bit 7, e                                      ; $7767: $cb $7b
    add l                                         ; $7769: $85
    or h                                          ; $776a: $b4
    ld c, e                                       ; $776b: $4b
    ld l, e                                       ; $776c: $6b
    sub l                                         ; $776d: $95
    db $fc                                        ; $776e: $fc
    inc bc                                        ; $776f: $03
    or a                                          ; $7770: $b7
    res 5, d                                      ; $7771: $cb $aa
    rst $18                                       ; $7773: $df
    rst $10                                       ; $7774: $d7
    cp $7d                                        ; $7775: $fe $7d
    cp $56                                        ; $7777: $fe $56
    rst $28                                       ; $7779: $ef
    cp e                                          ; $777a: $bb
    rst $00                                       ; $777b: $c7
    jp nc, $a5af                                  ; $777c: $d2 $af $a5

    sbc $6e                                       ; $777f: $de $6e
    pop af                                        ; $7781: $f1
    and l                                         ; $7782: $a5
    ld a, d                                       ; $7783: $7a
    xor d                                         ; $7784: $aa
    ld a, a                                       ; $7785: $7f
    ld d, l                                       ; $7786: $55
    rst $38                                       ; $7787: $ff
    cp a                                          ; $7788: $bf
    rst $38                                       ; $7789: $ff
    ei                                            ; $778a: $fb
    db $fc                                        ; $778b: $fc
    or l                                          ; $778c: $b5
    ld a, d                                       ; $778d: $7a
    db $f4                                        ; $778e: $f4
    rra                                           ; $778f: $1f
    ld e, l                                       ; $7790: $5d
    db $e3                                        ; $7791: $e3
    ld a, [hl]                                    ; $7792: $7e
    pop bc                                        ; $7793: $c1
    cp a                                          ; $7794: $bf
    ret nz                                        ; $7795: $c0

    sub [hl]                                      ; $7796: $96
    jp hl                                         ; $7797: $e9


    xor l                                         ; $7798: $ad
    di                                            ; $7799: $f3
    ld d, d                                       ; $779a: $52
    rst $38                                       ; $779b: $ff
    cp l                                          ; $779c: $bd
    ld a, a                                       ; $779d: $7f
    ld h, $f9                                     ; $779e: $26 $f9
    jp c, $95e5                                   ; $77a0: $da $e5 $95

    ld [$ffc0], a                                 ; $77a3: $ea $c0 $ff
    db $f4                                        ; $77a6: $f4
    rst $38                                       ; $77a7: $ff
    ld a, e                                       ; $77a8: $7b
    rst $38                                       ; $77a9: $ff
    ld l, a                                       ; $77aa: $6f
    sbc a                                         ; $77ab: $9f
    inc l                                         ; $77ac: $2c
    rst $18                                       ; $77ad: $df
    adc e                                         ; $77ae: $8b
    db $ec                                        ; $77af: $ec
    ld c, [hl]                                    ; $77b0: $4e
    pop af                                        ; $77b1: $f1
    ld d, l                                       ; $77b2: $55
    db $eb                                        ; $77b3: $eb
    ld h, c                                       ; $77b4: $61
    rst $38                                       ; $77b5: $ff

jr_075_77b6:
    di                                            ; $77b6: $f3
    rst $38                                       ; $77b7: $ff
    db $fc                                        ; $77b8: $fc
    rst $38                                       ; $77b9: $ff
    xor $f1                                       ; $77ba: $ee $f1
    ld l, h                                       ; $77bc: $6c
    di                                            ; $77bd: $f3
    and c                                         ; $77be: $a1
    ld a, a                                       ; $77bf: $7f
    rst $10                                       ; $77c0: $d7
    rst $38                                       ; $77c1: $ff
    xor [hl]                                      ; $77c2: $ae
    rst $38                                       ; $77c3: $ff
    dec b                                         ; $77c4: $05
    cp $a8                                        ; $77c5: $fe $a8
    rst $10                                       ; $77c7: $d7
    ld d, l                                       ; $77c8: $55
    xor e                                         ; $77c9: $ab
    xor b                                         ; $77ca: $a8
    rst $10                                       ; $77cb: $d7
    ld b, l                                       ; $77cc: $45
    cp [hl]                                       ; $77cd: $be
    xor d                                         ; $77ce: $aa
    push de                                       ; $77cf: $d5
    rst $38                                       ; $77d0: $ff
    rst $38                                       ; $77d1: $ff
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $30                                       ; $77d9: $f7
    rst $38                                       ; $77da: $ff
    rst $20                                       ; $77db: $e7
    rst $38                                       ; $77dc: $ff
    rst $20                                       ; $77dd: $e7
    cp a                                          ; $77de: $bf
    rst $20                                       ; $77df: $e7
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    cp $ff                                        ; $77e2: $fe $ff
    cp $ff                                        ; $77e4: $fe $ff
    cp $ff                                        ; $77e6: $fe $ff
    cp $bf                                        ; $77e8: $fe $bf
    cp $ff                                        ; $77ea: $fe $ff
    cp $ff                                        ; $77ec: $fe $ff
    cp $ff                                        ; $77ee: $fe $ff
    rst $30                                       ; $77f0: $f7
    rst $30                                       ; $77f1: $f7
    rst $30                                       ; $77f2: $f7
    rst $30                                       ; $77f3: $f7
    ld a, a                                       ; $77f4: $7f
    rst $38                                       ; $77f5: $ff
    ccf                                           ; $77f6: $3f
    rst $38                                       ; $77f7: $ff
    ccf                                           ; $77f8: $3f
    rst $38                                       ; $77f9: $ff
    ccf                                           ; $77fa: $3f
    rst $38                                       ; $77fb: $ff
    ld a, a                                       ; $77fc: $7f
    rst $38                                       ; $77fd: $ff
    ld a, a                                       ; $77fe: $7f
    rst $38                                       ; $77ff: $ff
    rst $18                                       ; $7800: $df
    rst $38                                       ; $7801: $ff
    sbc a                                         ; $7802: $9f
    rst $38                                       ; $7803: $ff
    cp a                                          ; $7804: $bf
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    cp a                                          ; $780c: $bf
    rst $38                                       ; $780d: $ff
    db $fd                                        ; $780e: $fd
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    di                                            ; $7811: $f3
    ld a, a                                       ; $7812: $7f
    ei                                            ; $7813: $fb
    ld a, [hl]                                    ; $7814: $7e
    cp $7e                                        ; $7815: $fe $7e
    cp $3c                                        ; $7817: $fe $3c
    ld a, h                                       ; $7819: $7c
    ret z                                         ; $781a: $c8

    cp h                                          ; $781b: $bc
    cp $c0                                        ; $781c: $fe $c0
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    ld [hl], a                                    ; $7826: $77
    ld a, a                                       ; $7827: $7f
    ld a, a                                       ; $7828: $7f
    ld a, a                                       ; $7829: $7f
    ld a, a                                       ; $782a: $7f
    ld a, a                                       ; $782b: $7f
    ld a, d                                       ; $782c: $7a
    dec b                                         ; $782d: $05
    ld a, a                                       ; $782e: $7f
    ld a, [hl]                                    ; $782f: $7e
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $30                                       ; $783a: $f7
    rst $30                                       ; $783b: $f7
    adc e                                         ; $783c: $8b
    ld a, a                                       ; $783d: $7f
    rst $38                                       ; $783e: $ff
    nop                                           ; $783f: $00
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    ld a, [$fefb]                                 ; $7842: $fa $fb $fe
    rst $38                                       ; $7845: $ff
    cp $ff                                        ; $7846: $fe $ff
    cp $ff                                        ; $7848: $fe $ff
    db $f4                                        ; $784a: $f4
    rst $38                                       ; $784b: $ff
    xor e                                         ; $784c: $ab
    push af                                       ; $784d: $f5
    rst $38                                       ; $784e: $ff
    inc bc                                        ; $784f: $03
    ld d, l                                       ; $7850: $55
    rst $38                                       ; $7851: $ff
    and b                                         ; $7852: $a0
    rst $38                                       ; $7853: $ff
    ld d, d                                       ; $7854: $52
    db $ed                                        ; $7855: $ed
    and l                                         ; $7856: $a5
    ld e, d                                       ; $7857: $5a
    ld c, e                                       ; $7858: $4b
    or h                                          ; $7859: $b4
    cp a                                          ; $785a: $bf

jr_075_785b:
    ld b, b                                       ; $785b: $40
    ld l, a                                       ; $785c: $6f
    sub b                                         ; $785d: $90
    rst $18                                       ; $785e: $df
    jr nz, jr_075_78b6                            ; $785f: $20 $55

    rst $38                                       ; $7861: $ff
    jr z, jr_075_785b                             ; $7862: $28 $f7

    sub c                                         ; $7864: $91
    ld l, a                                       ; $7865: $6f
    inc [hl]                                      ; $7866: $34
    bit 7, e                                      ; $7867: $cb $7b
    add l                                         ; $7869: $85
    or h                                          ; $786a: $b4
    ld c, e                                       ; $786b: $4b
    ld l, e                                       ; $786c: $6b
    sub l                                         ; $786d: $95
    db $fc                                        ; $786e: $fc
    inc bc                                        ; $786f: $03
    or a                                          ; $7870: $b7
    res 5, d                                      ; $7871: $cb $aa
    rst $18                                       ; $7873: $df
    rst $10                                       ; $7874: $d7
    cp $7d                                        ; $7875: $fe $7d
    cp $56                                        ; $7877: $fe $56
    rst $28                                       ; $7879: $ef
    cp e                                          ; $787a: $bb
    rst $00                                       ; $787b: $c7
    jp nc, $a5af                                  ; $787c: $d2 $af $a5

    sbc $6e                                       ; $787f: $de $6e
    pop af                                        ; $7881: $f1
    and l                                         ; $7882: $a5
    ld a, d                                       ; $7883: $7a
    xor d                                         ; $7884: $aa
    ld a, a                                       ; $7885: $7f
    ld d, l                                       ; $7886: $55

Jump_075_7887:
    rst $38                                       ; $7887: $ff
    cp a                                          ; $7888: $bf
    rst $38                                       ; $7889: $ff
    ei                                            ; $788a: $fb
    db $fc                                        ; $788b: $fc
    or l                                          ; $788c: $b5
    ld a, d                                       ; $788d: $7a
    db $f4                                        ; $788e: $f4
    rra                                           ; $788f: $1f
    ld e, l                                       ; $7890: $5d
    db $e3                                        ; $7891: $e3
    ld a, [hl]                                    ; $7892: $7e
    pop bc                                        ; $7893: $c1
    cp a                                          ; $7894: $bf
    ret nz                                        ; $7895: $c0

    sub [hl]                                      ; $7896: $96
    jp hl                                         ; $7897: $e9


    xor l                                         ; $7898: $ad
    di                                            ; $7899: $f3
    ld d, d                                       ; $789a: $52
    rst $38                                       ; $789b: $ff
    cp l                                          ; $789c: $bd
    ld a, a                                       ; $789d: $7f
    ld h, $f9                                     ; $789e: $26 $f9
    jp c, $95e5                                   ; $78a0: $da $e5 $95

    ld [$ffc0], a                                 ; $78a3: $ea $c0 $ff
    db $f4                                        ; $78a6: $f4
    rst $38                                       ; $78a7: $ff
    ld a, e                                       ; $78a8: $7b
    rst $38                                       ; $78a9: $ff
    ld l, a                                       ; $78aa: $6f
    sbc a                                         ; $78ab: $9f
    inc l                                         ; $78ac: $2c
    rst $18                                       ; $78ad: $df
    adc e                                         ; $78ae: $8b
    db $ec                                        ; $78af: $ec
    ld c, [hl]                                    ; $78b0: $4e
    pop af                                        ; $78b1: $f1
    ld d, l                                       ; $78b2: $55
    db $eb                                        ; $78b3: $eb
    ld h, c                                       ; $78b4: $61
    rst $38                                       ; $78b5: $ff

jr_075_78b6:
    di                                            ; $78b6: $f3
    rst $38                                       ; $78b7: $ff
    db $fc                                        ; $78b8: $fc
    rst $38                                       ; $78b9: $ff
    xor $f1                                       ; $78ba: $ee $f1
    ld l, h                                       ; $78bc: $6c
    di                                            ; $78bd: $f3
    and c                                         ; $78be: $a1
    ld a, a                                       ; $78bf: $7f
    rst $10                                       ; $78c0: $d7
    rst $38                                       ; $78c1: $ff
    xor [hl]                                      ; $78c2: $ae
    rst $38                                       ; $78c3: $ff
    dec b                                         ; $78c4: $05
    cp $a8                                        ; $78c5: $fe $a8
    rst $10                                       ; $78c7: $d7
    ld d, l                                       ; $78c8: $55
    xor e                                         ; $78c9: $ab
    xor b                                         ; $78ca: $a8
    rst $10                                       ; $78cb: $d7
    ld b, l                                       ; $78cc: $45
    cp [hl]                                       ; $78cd: $be
    xor d                                         ; $78ce: $aa
    push de                                       ; $78cf: $d5
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $30                                       ; $78d7: $f7
    rst $38                                       ; $78d8: $ff
    rst $20                                       ; $78d9: $e7
    rst $38                                       ; $78da: $ff
    rst $20                                       ; $78db: $e7
    rst $38                                       ; $78dc: $ff
    rst $20                                       ; $78dd: $e7
    cp a                                          ; $78de: $bf
    rst $30                                       ; $78df: $f7
    db $fd                                        ; $78e0: $fd
    rst $38                                       ; $78e1: $ff
    db $fd                                        ; $78e2: $fd
    rst $38                                       ; $78e3: $ff
    ld sp, hl                                     ; $78e4: $f9
    rst $38                                       ; $78e5: $ff
    cp b                                          ; $78e6: $b8
    rst $38                                       ; $78e7: $ff
    ld hl, sp-$01                                 ; $78e8: $f8 $ff
    db $fc                                        ; $78ea: $fc
    rst $38                                       ; $78eb: $ff
    cp $ff                                        ; $78ec: $fe $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    ld a, a                                       ; $78fa: $7f
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff

Jump_075_7900:
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    cp a                                          ; $790a: $bf
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    db $fd                                        ; $790e: $fd
    rst $38                                       ; $790f: $ff
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    ld a, [hl]                                    ; $7912: $7e
    cp $7c                                        ; $7913: $fe $7c
    db $fc                                        ; $7915: $fc
    ld a, h                                       ; $7916: $7c
    ld a, h                                       ; $7917: $7c
    ld a, $fe                                     ; $7918: $3e $fe
    sbc a                                         ; $791a: $9f
    rst $38                                       ; $791b: $ff
    ret nz                                        ; $791c: $c0

    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    ld a, a                                       ; $7920: $7f
    ld a, a                                       ; $7921: $7f
    ld a, a                                       ; $7922: $7f
    ld a, a                                       ; $7923: $7f
    ld [hl], a                                    ; $7924: $77
    ld a, a                                       ; $7925: $7f
    ld a, a                                       ; $7926: $7f
    ld a, a                                       ; $7927: $7f
    ld a, [hl]                                    ; $7928: $7e
    ld a, [hl]                                    ; $7929: $7e
    ld a, [hl]                                    ; $792a: $7e
    ld a, [hl]                                    ; $792b: $7e
    ld bc, $feff                                  ; $792c: $01 $ff $fe
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $30                                       ; $7938: $f7
    rst $30                                       ; $7939: $f7
    ld a, a                                       ; $793a: $7f
    ld a, a                                       ; $793b: $7f
    ld a, a                                       ; $793c: $7f
    ld a, a                                       ; $793d: $7f
    nop                                           ; $793e: $00
    rst $38                                       ; $793f: $ff
    ei                                            ; $7940: $fb
    ei                                            ; $7941: $fb
    cp $ff                                        ; $7942: $fe $ff
    cp $ff                                        ; $7944: $fe $ff
    cp $ff                                        ; $7946: $fe $ff
    cp $ff                                        ; $7948: $fe $ff
    db $fc                                        ; $794a: $fc
    rst $38                                       ; $794b: $ff
    ld sp, hl                                     ; $794c: $f9
    rst $38                                       ; $794d: $ff
    inc bc                                        ; $794e: $03
    rst $38                                       ; $794f: $ff
    ld d, l                                       ; $7950: $55
    rst $38                                       ; $7951: $ff
    and b                                         ; $7952: $a0
    rst $38                                       ; $7953: $ff
    ld d, d                                       ; $7954: $52
    db $ed                                        ; $7955: $ed
    and l                                         ; $7956: $a5
    ld e, d                                       ; $7957: $5a
    ld c, e                                       ; $7958: $4b
    or h                                          ; $7959: $b4
    cp a                                          ; $795a: $bf

jr_075_795b:
    ld b, b                                       ; $795b: $40
    ld l, a                                       ; $795c: $6f
    sub b                                         ; $795d: $90
    rst $18                                       ; $795e: $df
    jr nz, jr_075_79b6                            ; $795f: $20 $55

    rst $38                                       ; $7961: $ff
    jr z, jr_075_795b                             ; $7962: $28 $f7

    sub c                                         ; $7964: $91
    ld l, a                                       ; $7965: $6f
    inc [hl]                                      ; $7966: $34
    bit 7, e                                      ; $7967: $cb $7b
    add l                                         ; $7969: $85
    or h                                          ; $796a: $b4
    ld c, e                                       ; $796b: $4b
    ld l, e                                       ; $796c: $6b
    sub l                                         ; $796d: $95
    db $fc                                        ; $796e: $fc
    inc bc                                        ; $796f: $03
    or a                                          ; $7970: $b7
    res 5, d                                      ; $7971: $cb $aa
    rst $18                                       ; $7973: $df
    rst $10                                       ; $7974: $d7
    cp $7d                                        ; $7975: $fe $7d
    cp $56                                        ; $7977: $fe $56
    rst $28                                       ; $7979: $ef
    cp e                                          ; $797a: $bb
    rst $00                                       ; $797b: $c7
    jp nc, $a5af                                  ; $797c: $d2 $af $a5

    sbc $6e                                       ; $797f: $de $6e
    pop af                                        ; $7981: $f1
    and l                                         ; $7982: $a5
    ld a, d                                       ; $7983: $7a
    xor d                                         ; $7984: $aa
    ld a, a                                       ; $7985: $7f
    ld d, l                                       ; $7986: $55
    rst $38                                       ; $7987: $ff
    cp a                                          ; $7988: $bf
    rst $38                                       ; $7989: $ff
    ei                                            ; $798a: $fb
    db $fc                                        ; $798b: $fc
    or l                                          ; $798c: $b5
    ld a, d                                       ; $798d: $7a
    db $f4                                        ; $798e: $f4
    rra                                           ; $798f: $1f
    ld e, l                                       ; $7990: $5d
    db $e3                                        ; $7991: $e3
    ld a, [hl]                                    ; $7992: $7e
    pop bc                                        ; $7993: $c1
    cp a                                          ; $7994: $bf
    ret nz                                        ; $7995: $c0

    sub [hl]                                      ; $7996: $96
    jp hl                                         ; $7997: $e9


    xor l                                         ; $7998: $ad
    di                                            ; $7999: $f3
    ld d, d                                       ; $799a: $52
    rst $38                                       ; $799b: $ff
    cp l                                          ; $799c: $bd
    ld a, a                                       ; $799d: $7f
    ld h, $f9                                     ; $799e: $26 $f9
    jp c, $95e5                                   ; $79a0: $da $e5 $95

    ld [$ffc0], a                                 ; $79a3: $ea $c0 $ff
    db $f4                                        ; $79a6: $f4
    rst $38                                       ; $79a7: $ff
    ld a, e                                       ; $79a8: $7b
    rst $38                                       ; $79a9: $ff
    ld l, a                                       ; $79aa: $6f
    sbc a                                         ; $79ab: $9f
    inc l                                         ; $79ac: $2c
    rst $18                                       ; $79ad: $df
    adc e                                         ; $79ae: $8b
    db $ec                                        ; $79af: $ec
    ld c, [hl]                                    ; $79b0: $4e
    pop af                                        ; $79b1: $f1
    ld d, l                                       ; $79b2: $55
    db $eb                                        ; $79b3: $eb
    ld h, c                                       ; $79b4: $61
    rst $38                                       ; $79b5: $ff

jr_075_79b6:
    di                                            ; $79b6: $f3
    rst $38                                       ; $79b7: $ff
    db $fc                                        ; $79b8: $fc
    rst $38                                       ; $79b9: $ff
    xor $f1                                       ; $79ba: $ee $f1
    ld l, h                                       ; $79bc: $6c
    di                                            ; $79bd: $f3
    and c                                         ; $79be: $a1
    ld a, a                                       ; $79bf: $7f
    rst $10                                       ; $79c0: $d7
    rst $38                                       ; $79c1: $ff
    xor [hl]                                      ; $79c2: $ae
    rst $38                                       ; $79c3: $ff
    dec b                                         ; $79c4: $05
    cp $a8                                        ; $79c5: $fe $a8
    rst $10                                       ; $79c7: $d7
    ld d, l                                       ; $79c8: $55
    xor e                                         ; $79c9: $ab
    xor b                                         ; $79ca: $a8
    rst $10                                       ; $79cb: $d7
    ld b, l                                       ; $79cc: $45
    cp [hl]                                       ; $79cd: $be
    xor d                                         ; $79ce: $aa
    push de                                       ; $79cf: $d5
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $30                                       ; $79d4: $f7
    rst $38                                       ; $79d5: $ff
    rst $20                                       ; $79d6: $e7
    rst $38                                       ; $79d7: $ff
    rst $20                                       ; $79d8: $e7
    rst $38                                       ; $79d9: $ff
    rst $30                                       ; $79da: $f7
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    cp a                                          ; $79de: $bf
    rst $38                                       ; $79df: $ff
    db $fc                                        ; $79e0: $fc
    rst $38                                       ; $79e1: $ff
    db $fc                                        ; $79e2: $fc
    rst $38                                       ; $79e3: $ff
    cp h                                          ; $79e4: $bc
    rst $38                                       ; $79e5: $ff
    cp $ff                                        ; $79e6: $fe $ff
    cp $ff                                        ; $79e8: $fe $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    ld a, a                                       ; $79ed: $7f
    rst $38                                       ; $79ee: $ff
    ccf                                           ; $79ef: $3f
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff

Call_075_79ff:
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    cp a                                          ; $7a08: $bf
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    db $fd                                        ; $7a0e: $fd
    ei                                            ; $7a0f: $fb
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    ld a, a                                       ; $7a12: $7f
    rst $38                                       ; $7a13: $ff
    ld a, a                                       ; $7a14: $7f
    ld a, [hl]                                    ; $7a15: $7e
    ld a, a                                       ; $7a16: $7f
    rst $38                                       ; $7a17: $ff
    ccf                                           ; $7a18: $3f
    rst $38                                       ; $7a19: $ff
    res 7, a                                      ; $7a1a: $cb $bf
    rst $38                                       ; $7a1c: $ff
    ret nz                                        ; $7a1d: $c0

    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rra                                           ; $7a21: $1f
    or $1e                                        ; $7a22: $f6 $1e
    cp $1e                                        ; $7a24: $fe $1e
    cp $3e                                        ; $7a26: $fe $3e
    cp $7e                                        ; $7a28: $fe $7e
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    ld a, [$ff05]                                 ; $7a2c: $fa $05 $ff
    cp $ff                                        ; $7a2f: $fe $ff
    rst $38                                       ; $7a31: $ff
    rst $38                                       ; $7a32: $ff
    rst $38                                       ; $7a33: $ff
    ld a, a                                       ; $7a34: $7f
    ld a, a                                       ; $7a35: $7f
    ld [hl], a                                    ; $7a36: $77
    ld [hl], a                                    ; $7a37: $77
    ccf                                           ; $7a38: $3f
    ccf                                           ; $7a39: $3f
    ld a, a                                       ; $7a3a: $7f
    ld a, a                                       ; $7a3b: $7f
    adc e                                         ; $7a3c: $8b
    ld a, a                                       ; $7a3d: $7f
    rst $38                                       ; $7a3e: $ff
    nop                                           ; $7a3f: $00
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    cp $ff                                        ; $7a42: $fe $ff
    cp $ff                                        ; $7a44: $fe $ff
    cp $ff                                        ; $7a46: $fe $ff
    cp $ff                                        ; $7a48: $fe $ff
    db $f4                                        ; $7a4a: $f4
    rst $38                                       ; $7a4b: $ff
    xor e                                         ; $7a4c: $ab
    push af                                       ; $7a4d: $f5
    rst $38                                       ; $7a4e: $ff
    inc bc                                        ; $7a4f: $03
    ld d, l                                       ; $7a50: $55
    rst $38                                       ; $7a51: $ff
    and b                                         ; $7a52: $a0
    rst $38                                       ; $7a53: $ff
    ld d, d                                       ; $7a54: $52
    db $ed                                        ; $7a55: $ed
    and l                                         ; $7a56: $a5
    ld e, d                                       ; $7a57: $5a
    ld c, e                                       ; $7a58: $4b
    or h                                          ; $7a59: $b4
    cp a                                          ; $7a5a: $bf

jr_075_7a5b:
    ld b, b                                       ; $7a5b: $40
    ld l, a                                       ; $7a5c: $6f
    sub b                                         ; $7a5d: $90
    rst $18                                       ; $7a5e: $df
    jr nz, jr_075_7ab6                            ; $7a5f: $20 $55

    rst $38                                       ; $7a61: $ff
    jr z, jr_075_7a5b                             ; $7a62: $28 $f7

    sub c                                         ; $7a64: $91
    ld l, a                                       ; $7a65: $6f
    inc [hl]                                      ; $7a66: $34
    bit 7, e                                      ; $7a67: $cb $7b
    add l                                         ; $7a69: $85
    or h                                          ; $7a6a: $b4
    ld c, e                                       ; $7a6b: $4b
    ld l, e                                       ; $7a6c: $6b
    sub l                                         ; $7a6d: $95
    db $fc                                        ; $7a6e: $fc
    inc bc                                        ; $7a6f: $03
    or a                                          ; $7a70: $b7
    res 5, d                                      ; $7a71: $cb $aa
    rst $18                                       ; $7a73: $df
    rst $10                                       ; $7a74: $d7
    cp $7d                                        ; $7a75: $fe $7d
    cp $56                                        ; $7a77: $fe $56
    rst $28                                       ; $7a79: $ef
    cp e                                          ; $7a7a: $bb
    rst $00                                       ; $7a7b: $c7
    jp nc, $a5af                                  ; $7a7c: $d2 $af $a5

    sbc $6e                                       ; $7a7f: $de $6e
    pop af                                        ; $7a81: $f1
    and l                                         ; $7a82: $a5
    ld a, d                                       ; $7a83: $7a
    xor d                                         ; $7a84: $aa
    ld a, a                                       ; $7a85: $7f
    ld d, l                                       ; $7a86: $55
    rst $38                                       ; $7a87: $ff
    cp a                                          ; $7a88: $bf
    rst $38                                       ; $7a89: $ff
    ei                                            ; $7a8a: $fb
    db $fc                                        ; $7a8b: $fc
    or l                                          ; $7a8c: $b5
    ld a, d                                       ; $7a8d: $7a
    db $f4                                        ; $7a8e: $f4
    rra                                           ; $7a8f: $1f
    ld e, l                                       ; $7a90: $5d
    db $e3                                        ; $7a91: $e3
    ld a, [hl]                                    ; $7a92: $7e
    pop bc                                        ; $7a93: $c1
    cp a                                          ; $7a94: $bf
    ret nz                                        ; $7a95: $c0

    sub [hl]                                      ; $7a96: $96
    jp hl                                         ; $7a97: $e9


    xor l                                         ; $7a98: $ad
    di                                            ; $7a99: $f3
    ld d, d                                       ; $7a9a: $52
    rst $38                                       ; $7a9b: $ff
    cp l                                          ; $7a9c: $bd
    ld a, a                                       ; $7a9d: $7f
    ld h, $f9                                     ; $7a9e: $26 $f9
    jp c, $95e5                                   ; $7aa0: $da $e5 $95

    ld [$ffc0], a                                 ; $7aa3: $ea $c0 $ff
    db $f4                                        ; $7aa6: $f4
    rst $38                                       ; $7aa7: $ff
    ld a, e                                       ; $7aa8: $7b
    rst $38                                       ; $7aa9: $ff
    ld l, a                                       ; $7aaa: $6f
    sbc a                                         ; $7aab: $9f
    inc l                                         ; $7aac: $2c
    rst $18                                       ; $7aad: $df
    adc e                                         ; $7aae: $8b
    db $ec                                        ; $7aaf: $ec
    ld c, [hl]                                    ; $7ab0: $4e
    pop af                                        ; $7ab1: $f1
    ld d, l                                       ; $7ab2: $55
    db $eb                                        ; $7ab3: $eb
    ld h, c                                       ; $7ab4: $61
    rst $38                                       ; $7ab5: $ff

jr_075_7ab6:
    di                                            ; $7ab6: $f3
    rst $38                                       ; $7ab7: $ff
    db $fc                                        ; $7ab8: $fc
    rst $38                                       ; $7ab9: $ff
    xor $f1                                       ; $7aba: $ee $f1
    ld l, h                                       ; $7abc: $6c
    di                                            ; $7abd: $f3
    and c                                         ; $7abe: $a1
    ld a, a                                       ; $7abf: $7f
    rst $10                                       ; $7ac0: $d7
    rst $38                                       ; $7ac1: $ff
    xor [hl]                                      ; $7ac2: $ae
    rst $38                                       ; $7ac3: $ff
    dec b                                         ; $7ac4: $05
    cp $a8                                        ; $7ac5: $fe $a8
    rst $10                                       ; $7ac7: $d7
    ld d, l                                       ; $7ac8: $55
    xor e                                         ; $7ac9: $ab
    xor b                                         ; $7aca: $a8
    rst $10                                       ; $7acb: $d7
    ld b, l                                       ; $7acc: $45
    cp [hl]                                       ; $7acd: $be
    xor d                                         ; $7ace: $aa
    push de                                       ; $7acf: $d5
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    ei                                            ; $7ad2: $fb
    rst $38                                       ; $7ad3: $ff
    di                                            ; $7ad4: $f3
    rst $38                                       ; $7ad5: $ff
    rst $30                                       ; $7ad6: $f7
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    cp a                                          ; $7ade: $bf
    rst $38                                       ; $7adf: $ff
    cp $ff                                        ; $7ae0: $fe $ff
    cp [hl]                                       ; $7ae2: $be
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    ld a, a                                       ; $7ae9: $7f
    rst $38                                       ; $7aea: $ff
    ccf                                           ; $7aeb: $3f
    rst $38                                       ; $7aec: $ff
    sbc a                                         ; $7aed: $9f
    rst $38                                       ; $7aee: $ff
    sbc a                                         ; $7aef: $9f
    rst $38                                       ; $7af0: $ff
    rst $38                                       ; $7af1: $ff
    rst $38                                       ; $7af2: $ff
    rst $38                                       ; $7af3: $ff
    rst $38                                       ; $7af4: $ff
    rst $38                                       ; $7af5: $ff
    rst $38                                       ; $7af6: $ff
    rst $38                                       ; $7af7: $ff
    rst $38                                       ; $7af8: $ff
    rst $38                                       ; $7af9: $ff
    rst $38                                       ; $7afa: $ff
    rst $38                                       ; $7afb: $ff
    rst $38                                       ; $7afc: $ff
    rst $38                                       ; $7afd: $ff
    rst $38                                       ; $7afe: $ff
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    cp a                                          ; $7b06: $bf
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $30                                       ; $7b0d: $f7
    db $fd                                        ; $7b0e: $fd
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    ccf                                           ; $7b12: $3f
    cp a                                          ; $7b13: $bf
    ld a, a                                       ; $7b14: $7f
    rst $38                                       ; $7b15: $ff
    ld a, a                                       ; $7b16: $7f
    rst $38                                       ; $7b17: $ff
    ld l, $fe                                     ; $7b18: $2e $fe
    ret nc                                        ; $7b1a: $d0

    xor h                                         ; $7b1b: $ac
    ldh a, [$c0]                                  ; $7b1c: $f0 $c0
    cp $fe                                        ; $7b1e: $fe $fe
    rst $30                                       ; $7b20: $f7
    sbc a                                         ; $7b21: $9f
    rst $38                                       ; $7b22: $ff
    cp a                                          ; $7b23: $bf
    cp $fe                                        ; $7b24: $fe $fe
    cp $fe                                        ; $7b26: $fe $fe
    cp $fe                                        ; $7b28: $fe $fe
    ld [bc], a                                    ; $7b2a: $02
    rst $38                                       ; $7b2b: $ff
    rlca                                          ; $7b2c: $07
    nop                                           ; $7b2d: $00
    rst $38                                       ; $7b2e: $ff
    cp $7f                                        ; $7b2f: $fe $7f
    ld a, a                                       ; $7b31: $7f
    ccf                                           ; $7b32: $3f
    ccf                                           ; $7b33: $3f
    cpl                                           ; $7b34: $2f
    cpl                                           ; $7b35: $2f
    dec sp                                        ; $7b36: $3b
    dec sp                                        ; $7b37: $3b
    ld a, c                                       ; $7b38: $79
    ld a, c                                       ; $7b39: $79
    cp c                                          ; $7b3a: $b9
    ld sp, hl                                     ; $7b3b: $f9
    and b                                         ; $7b3c: $a0
    ld e, l                                       ; $7b3d: $5d
    ret nz                                        ; $7b3e: $c0

    nop                                           ; $7b3f: $00
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    cp $ff                                        ; $7b42: $fe $ff
    cp $ff                                        ; $7b44: $fe $ff
    cp $ff                                        ; $7b46: $fe $ff
    cp $ff                                        ; $7b48: $fe $ff
    db $f4                                        ; $7b4a: $f4
    rst $38                                       ; $7b4b: $ff
    dec bc                                        ; $7b4c: $0b
    push af                                       ; $7b4d: $f5
    rrca                                          ; $7b4e: $0f
    inc bc                                        ; $7b4f: $03
    ld d, l                                       ; $7b50: $55
    rst $38                                       ; $7b51: $ff
    and b                                         ; $7b52: $a0
    rst $38                                       ; $7b53: $ff
    ld d, d                                       ; $7b54: $52
    db $ed                                        ; $7b55: $ed
    and l                                         ; $7b56: $a5
    ld e, d                                       ; $7b57: $5a
    ld c, e                                       ; $7b58: $4b
    or h                                          ; $7b59: $b4
    cp a                                          ; $7b5a: $bf

jr_075_7b5b:
    ld b, b                                       ; $7b5b: $40
    ld l, a                                       ; $7b5c: $6f
    sub b                                         ; $7b5d: $90
    rst $18                                       ; $7b5e: $df
    jr nz, jr_075_7bb6                            ; $7b5f: $20 $55

    rst $38                                       ; $7b61: $ff
    jr z, jr_075_7b5b                             ; $7b62: $28 $f7

    sub c                                         ; $7b64: $91
    ld l, a                                       ; $7b65: $6f
    inc [hl]                                      ; $7b66: $34
    bit 7, e                                      ; $7b67: $cb $7b
    add l                                         ; $7b69: $85
    or h                                          ; $7b6a: $b4
    ld c, e                                       ; $7b6b: $4b
    ld l, e                                       ; $7b6c: $6b
    sub l                                         ; $7b6d: $95
    db $fc                                        ; $7b6e: $fc
    inc bc                                        ; $7b6f: $03
    or a                                          ; $7b70: $b7
    res 5, d                                      ; $7b71: $cb $aa
    rst $18                                       ; $7b73: $df
    rst $10                                       ; $7b74: $d7
    cp $7d                                        ; $7b75: $fe $7d
    cp $56                                        ; $7b77: $fe $56
    rst $28                                       ; $7b79: $ef
    cp e                                          ; $7b7a: $bb
    rst $00                                       ; $7b7b: $c7
    jp nc, $a5af                                  ; $7b7c: $d2 $af $a5

    sbc $6e                                       ; $7b7f: $de $6e
    pop af                                        ; $7b81: $f1
    and l                                         ; $7b82: $a5
    ld a, d                                       ; $7b83: $7a
    xor d                                         ; $7b84: $aa
    ld a, a                                       ; $7b85: $7f
    ld d, l                                       ; $7b86: $55
    rst $38                                       ; $7b87: $ff
    cp a                                          ; $7b88: $bf
    rst $38                                       ; $7b89: $ff
    ei                                            ; $7b8a: $fb
    db $fc                                        ; $7b8b: $fc
    or l                                          ; $7b8c: $b5
    ld a, d                                       ; $7b8d: $7a
    db $f4                                        ; $7b8e: $f4
    rra                                           ; $7b8f: $1f
    ld e, l                                       ; $7b90: $5d
    db $e3                                        ; $7b91: $e3
    ld a, [hl]                                    ; $7b92: $7e
    pop bc                                        ; $7b93: $c1
    cp a                                          ; $7b94: $bf
    ret nz                                        ; $7b95: $c0

    sub [hl]                                      ; $7b96: $96
    jp hl                                         ; $7b97: $e9


    xor l                                         ; $7b98: $ad
    di                                            ; $7b99: $f3
    ld d, d                                       ; $7b9a: $52
    rst $38                                       ; $7b9b: $ff
    cp l                                          ; $7b9c: $bd
    ld a, a                                       ; $7b9d: $7f
    ld h, $f9                                     ; $7b9e: $26 $f9
    jp c, $95e5                                   ; $7ba0: $da $e5 $95

    ld [$ffc0], a                                 ; $7ba3: $ea $c0 $ff
    db $f4                                        ; $7ba6: $f4
    rst $38                                       ; $7ba7: $ff
    ld a, e                                       ; $7ba8: $7b
    rst $38                                       ; $7ba9: $ff
    ld l, a                                       ; $7baa: $6f
    sbc a                                         ; $7bab: $9f
    inc l                                         ; $7bac: $2c
    rst $18                                       ; $7bad: $df
    adc e                                         ; $7bae: $8b
    db $ec                                        ; $7baf: $ec
    ld c, [hl]                                    ; $7bb0: $4e
    pop af                                        ; $7bb1: $f1
    ld d, l                                       ; $7bb2: $55
    db $eb                                        ; $7bb3: $eb
    ld h, c                                       ; $7bb4: $61
    rst $38                                       ; $7bb5: $ff

jr_075_7bb6:
    di                                            ; $7bb6: $f3
    rst $38                                       ; $7bb7: $ff
    db $fc                                        ; $7bb8: $fc
    rst $38                                       ; $7bb9: $ff
    xor $f1                                       ; $7bba: $ee $f1
    ld l, h                                       ; $7bbc: $6c
    di                                            ; $7bbd: $f3
    and c                                         ; $7bbe: $a1
    ld a, a                                       ; $7bbf: $7f
    rst $10                                       ; $7bc0: $d7
    rst $38                                       ; $7bc1: $ff
    xor [hl]                                      ; $7bc2: $ae
    rst $38                                       ; $7bc3: $ff
    dec b                                         ; $7bc4: $05
    cp $a8                                        ; $7bc5: $fe $a8
    rst $10                                       ; $7bc7: $d7
    ld d, l                                       ; $7bc8: $55
    xor e                                         ; $7bc9: $ab
    xor b                                         ; $7bca: $a8
    rst $10                                       ; $7bcb: $d7
    ld b, l                                       ; $7bcc: $45
    cp [hl]                                       ; $7bcd: $be
    xor d                                         ; $7bce: $aa
    push de                                       ; $7bcf: $d5
    ei                                            ; $7bd0: $fb
    rst $38                                       ; $7bd1: $ff
    ei                                            ; $7bd2: $fb
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $38                                       ; $7bd7: $ff
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    cp a                                          ; $7bde: $bf
    rst $38                                       ; $7bdf: $ff
    rst $18                                       ; $7be0: $df
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    ld a, a                                       ; $7be7: $7f
    rst $38                                       ; $7be8: $ff
    ld a, a                                       ; $7be9: $7f
    rst $38                                       ; $7bea: $ff
    ccf                                           ; $7beb: $3f
    rst $38                                       ; $7bec: $ff
    rra                                           ; $7bed: $1f
    rst $28                                       ; $7bee: $ef
    rra                                           ; $7bef: $1f
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    rst $38                                       ; $7bf6: $ff
    rst $38                                       ; $7bf7: $ff
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    ld a, a                                       ; $7bfd: $7f
    rst $38                                       ; $7bfe: $ff
    ld a, a                                       ; $7bff: $7f
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rst $38                                       ; $7c02: $ff
    rst $38                                       ; $7c03: $ff
    ld a, a                                       ; $7c04: $7f
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    rst $38                                       ; $7c08: $ff
    rst $38                                       ; $7c09: $ff
    rst $38                                       ; $7c0a: $ff
    rst $30                                       ; $7c0b: $f7
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    db $fd                                        ; $7c0e: $fd
    rst $38                                       ; $7c0f: $ff
    cp a                                          ; $7c10: $bf
    cp a                                          ; $7c11: $bf

jr_075_7c12:
    ld a, a                                       ; $7c12: $7f
    rst $38                                       ; $7c13: $ff
    ld a, [hl]                                    ; $7c14: $7e
    cp $7c                                        ; $7c15: $fe $7c
    db $fc                                        ; $7c17: $fc
    jr c, jr_075_7c12                             ; $7c18: $38 $f8

    ret z                                         ; $7c1a: $c8

    cp b                                          ; $7c1b: $b8
    db $fc                                        ; $7c1c: $fc
    ret nz                                        ; $7c1d: $c0

    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    cp a                                          ; $7c21: $bf
    rst $38                                       ; $7c22: $ff
    cp $ff                                        ; $7c23: $fe $ff
    cp $ff                                        ; $7c25: $fe $ff
    cp $ff                                        ; $7c27: $fe $ff
    rst $38                                       ; $7c29: $ff
    rst $38                                       ; $7c2a: $ff
    rst $38                                       ; $7c2b: $ff
    ld a, [$ff05]                                 ; $7c2c: $fa $05 $ff
    cp $ff                                        ; $7c2f: $fe $ff
    ccf                                           ; $7c31: $3f
    db $ed                                        ; $7c32: $ed
    dec l                                         ; $7c33: $2d
    ld sp, hl                                     ; $7c34: $f9
    add hl, sp                                    ; $7c35: $39
    ld sp, hl                                     ; $7c36: $f9
    add hl, sp                                    ; $7c37: $39
    ld sp, hl                                     ; $7c38: $f9
    ld a, c                                       ; $7c39: $79
    db $fd                                        ; $7c3a: $fd
    db $fd                                        ; $7c3b: $fd
    adc e                                         ; $7c3c: $8b
    ld a, a                                       ; $7c3d: $7f
    rst $38                                       ; $7c3e: $ff
    nop                                           ; $7c3f: $00
    rst $38                                       ; $7c40: $ff
    rst $38                                       ; $7c41: $ff
    cp $ff                                        ; $7c42: $fe $ff
    cp $ff                                        ; $7c44: $fe $ff
    cp $ff                                        ; $7c46: $fe $ff
    cp $ff                                        ; $7c48: $fe $ff
    db $f4                                        ; $7c4a: $f4
    rst $38                                       ; $7c4b: $ff
    xor e                                         ; $7c4c: $ab
    push af                                       ; $7c4d: $f5
    rst $38                                       ; $7c4e: $ff
    inc bc                                        ; $7c4f: $03
    ld d, l                                       ; $7c50: $55
    rst $38                                       ; $7c51: $ff
    and b                                         ; $7c52: $a0
    rst $38                                       ; $7c53: $ff
    ld d, d                                       ; $7c54: $52
    db $ed                                        ; $7c55: $ed
    and l                                         ; $7c56: $a5
    ld e, d                                       ; $7c57: $5a
    ld c, e                                       ; $7c58: $4b
    or h                                          ; $7c59: $b4
    cp a                                          ; $7c5a: $bf

jr_075_7c5b:
    ld b, b                                       ; $7c5b: $40
    ld l, a                                       ; $7c5c: $6f
    sub b                                         ; $7c5d: $90
    rst $18                                       ; $7c5e: $df
    jr nz, jr_075_7cb6                            ; $7c5f: $20 $55

    rst $38                                       ; $7c61: $ff
    jr z, jr_075_7c5b                             ; $7c62: $28 $f7

    sub c                                         ; $7c64: $91
    ld l, a                                       ; $7c65: $6f
    inc [hl]                                      ; $7c66: $34
    bit 7, e                                      ; $7c67: $cb $7b
    add l                                         ; $7c69: $85
    or h                                          ; $7c6a: $b4
    ld c, e                                       ; $7c6b: $4b
    ld l, e                                       ; $7c6c: $6b
    sub l                                         ; $7c6d: $95
    db $fc                                        ; $7c6e: $fc
    inc bc                                        ; $7c6f: $03
    or a                                          ; $7c70: $b7
    res 5, d                                      ; $7c71: $cb $aa
    rst $18                                       ; $7c73: $df
    rst $10                                       ; $7c74: $d7
    cp $7d                                        ; $7c75: $fe $7d
    cp $56                                        ; $7c77: $fe $56
    rst $28                                       ; $7c79: $ef
    cp e                                          ; $7c7a: $bb
    rst $00                                       ; $7c7b: $c7
    jp nc, $a5af                                  ; $7c7c: $d2 $af $a5

    sbc $6e                                       ; $7c7f: $de $6e
    pop af                                        ; $7c81: $f1
    and l                                         ; $7c82: $a5
    ld a, d                                       ; $7c83: $7a
    xor d                                         ; $7c84: $aa
    ld a, a                                       ; $7c85: $7f
    ld d, l                                       ; $7c86: $55
    rst $38                                       ; $7c87: $ff
    cp a                                          ; $7c88: $bf
    rst $38                                       ; $7c89: $ff
    ei                                            ; $7c8a: $fb
    db $fc                                        ; $7c8b: $fc
    or l                                          ; $7c8c: $b5
    ld a, d                                       ; $7c8d: $7a
    db $f4                                        ; $7c8e: $f4
    rra                                           ; $7c8f: $1f
    ld e, l                                       ; $7c90: $5d
    db $e3                                        ; $7c91: $e3
    ld a, [hl]                                    ; $7c92: $7e
    pop bc                                        ; $7c93: $c1
    cp a                                          ; $7c94: $bf
    ret nz                                        ; $7c95: $c0

    sub [hl]                                      ; $7c96: $96
    jp hl                                         ; $7c97: $e9


    xor l                                         ; $7c98: $ad
    di                                            ; $7c99: $f3
    ld d, d                                       ; $7c9a: $52
    rst $38                                       ; $7c9b: $ff
    cp l                                          ; $7c9c: $bd
    ld a, a                                       ; $7c9d: $7f
    ld h, $f9                                     ; $7c9e: $26 $f9
    jp c, $95e5                                   ; $7ca0: $da $e5 $95

    ld [$ffc0], a                                 ; $7ca3: $ea $c0 $ff
    db $f4                                        ; $7ca6: $f4
    rst $38                                       ; $7ca7: $ff
    ld a, e                                       ; $7ca8: $7b
    rst $38                                       ; $7ca9: $ff
    ld l, a                                       ; $7caa: $6f
    sbc a                                         ; $7cab: $9f
    inc l                                         ; $7cac: $2c
    rst $18                                       ; $7cad: $df
    adc e                                         ; $7cae: $8b
    db $ec                                        ; $7caf: $ec
    ld c, [hl]                                    ; $7cb0: $4e
    pop af                                        ; $7cb1: $f1
    ld d, l                                       ; $7cb2: $55
    db $eb                                        ; $7cb3: $eb
    ld h, c                                       ; $7cb4: $61
    rst $38                                       ; $7cb5: $ff

jr_075_7cb6:
    di                                            ; $7cb6: $f3
    rst $38                                       ; $7cb7: $ff
    db $fc                                        ; $7cb8: $fc
    rst $38                                       ; $7cb9: $ff
    xor $f1                                       ; $7cba: $ee $f1
    ld l, h                                       ; $7cbc: $6c
    di                                            ; $7cbd: $f3
    and c                                         ; $7cbe: $a1
    ld a, a                                       ; $7cbf: $7f
    rst $10                                       ; $7cc0: $d7
    rst $38                                       ; $7cc1: $ff
    xor [hl]                                      ; $7cc2: $ae
    rst $38                                       ; $7cc3: $ff
    dec b                                         ; $7cc4: $05
    cp $a8                                        ; $7cc5: $fe $a8
    rst $10                                       ; $7cc7: $d7
    ld d, l                                       ; $7cc8: $55
    xor e                                         ; $7cc9: $ab
    xor b                                         ; $7cca: $a8
    rst $10                                       ; $7ccb: $d7
    ld b, l                                       ; $7ccc: $45
    cp [hl]                                       ; $7ccd: $be
    xor d                                         ; $7cce: $aa
    push de                                       ; $7ccf: $d5
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    cp $ff                                        ; $7cd6: $fe $ff
    cp $ff                                        ; $7cd8: $fe $ff
    cp $ff                                        ; $7cda: $fe $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    sbc a                                         ; $7cde: $9f
    rst $18                                       ; $7cdf: $df
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    ld a, a                                       ; $7ce4: $7f
    rst $38                                       ; $7ce5: $ff
    ld a, a                                       ; $7ce6: $7f
    rst $38                                       ; $7ce7: $ff
    ld a, a                                       ; $7ce8: $7f
    rst $38                                       ; $7ce9: $ff
    ccf                                           ; $7cea: $3f
    rst $38                                       ; $7ceb: $ff
    cpl                                           ; $7cec: $2f
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff
    rst $38                                       ; $7cef: $ff
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    rst $38                                       ; $7cf2: $ff
    rst $38                                       ; $7cf3: $ff
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    rst $38                                       ; $7cfa: $ff
    ld a, a                                       ; $7cfb: $7f
    rst $38                                       ; $7cfc: $ff
    ccf                                           ; $7cfd: $3f
    rst $38                                       ; $7cfe: $ff
    ccf                                           ; $7cff: $3f
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    ld a, a                                       ; $7d02: $7f
    rst $38                                       ; $7d03: $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    rst $38                                       ; $7d06: $ff
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $30                                       ; $7d09: $f7
    rst $38                                       ; $7d0a: $ff
    rst $38                                       ; $7d0b: $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    db $fd                                        ; $7d0e: $fd
    rst $38                                       ; $7d0f: $ff
    cp $fe                                        ; $7d10: $fe $fe
    ld a, [hl]                                    ; $7d12: $7e
    cp $7c                                        ; $7d13: $fe $7c
    db $fc                                        ; $7d15: $fc
    ld a, h                                       ; $7d16: $7c
    db $fc                                        ; $7d17: $fc
    inc a                                         ; $7d18: $3c
    db $fc                                        ; $7d19: $fc
    sbc [hl]                                      ; $7d1a: $9e
    cp $c0                                        ; $7d1b: $fe $c0
    rst $38                                       ; $7d1d: $ff
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    ld a, a                                       ; $7d24: $7f
    ld a, a                                       ; $7d25: $7f
    ld a, a                                       ; $7d26: $7f
    ld a, a                                       ; $7d27: $7f
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    ld bc, $beff                                  ; $7d2c: $01 $ff $be
    cp a                                          ; $7d2f: $bf
    xor $0e                                       ; $7d30: $ee $0e
    db $fd                                        ; $7d32: $fd
    dec a                                         ; $7d33: $3d
    ld sp, hl                                     ; $7d34: $f9
    ld a, c                                       ; $7d35: $79
    ld sp, hl                                     ; $7d36: $f9
    ld sp, hl                                     ; $7d37: $f9
    db $fd                                        ; $7d38: $fd
    db $fd                                        ; $7d39: $fd
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    ld a, a                                       ; $7d3c: $7f
    rst $38                                       ; $7d3d: $ff
    nop                                           ; $7d3e: $00
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    cp $ff                                        ; $7d42: $fe $ff
    cp $ff                                        ; $7d44: $fe $ff
    cp $ff                                        ; $7d46: $fe $ff
    cp $ff                                        ; $7d48: $fe $ff
    db $fc                                        ; $7d4a: $fc
    rst $38                                       ; $7d4b: $ff
    ld sp, hl                                     ; $7d4c: $f9
    rst $38                                       ; $7d4d: $ff
    inc bc                                        ; $7d4e: $03
    rst $38                                       ; $7d4f: $ff
    ld d, l                                       ; $7d50: $55
    rst $38                                       ; $7d51: $ff
    and b                                         ; $7d52: $a0
    rst $38                                       ; $7d53: $ff
    ld d, d                                       ; $7d54: $52
    db $ed                                        ; $7d55: $ed
    and l                                         ; $7d56: $a5
    ld e, d                                       ; $7d57: $5a
    ld c, e                                       ; $7d58: $4b
    or h                                          ; $7d59: $b4
    cp a                                          ; $7d5a: $bf

jr_075_7d5b:
    ld b, b                                       ; $7d5b: $40
    ld l, a                                       ; $7d5c: $6f
    sub b                                         ; $7d5d: $90
    rst $18                                       ; $7d5e: $df
    jr nz, jr_075_7db6                            ; $7d5f: $20 $55

    rst $38                                       ; $7d61: $ff
    jr z, jr_075_7d5b                             ; $7d62: $28 $f7

    sub c                                         ; $7d64: $91
    ld l, a                                       ; $7d65: $6f
    inc [hl]                                      ; $7d66: $34
    bit 7, e                                      ; $7d67: $cb $7b
    add l                                         ; $7d69: $85
    or h                                          ; $7d6a: $b4
    ld c, e                                       ; $7d6b: $4b
    ld l, e                                       ; $7d6c: $6b
    sub l                                         ; $7d6d: $95
    db $fc                                        ; $7d6e: $fc
    inc bc                                        ; $7d6f: $03
    or a                                          ; $7d70: $b7
    res 5, d                                      ; $7d71: $cb $aa
    rst $18                                       ; $7d73: $df
    rst $10                                       ; $7d74: $d7
    cp $7d                                        ; $7d75: $fe $7d
    cp $56                                        ; $7d77: $fe $56
    rst $28                                       ; $7d79: $ef
    cp e                                          ; $7d7a: $bb
    rst $00                                       ; $7d7b: $c7
    jp nc, $a5af                                  ; $7d7c: $d2 $af $a5

    sbc $6e                                       ; $7d7f: $de $6e
    pop af                                        ; $7d81: $f1
    and l                                         ; $7d82: $a5
    ld a, d                                       ; $7d83: $7a
    xor d                                         ; $7d84: $aa
    ld a, a                                       ; $7d85: $7f
    ld d, l                                       ; $7d86: $55
    rst $38                                       ; $7d87: $ff
    cp a                                          ; $7d88: $bf
    rst $38                                       ; $7d89: $ff
    ei                                            ; $7d8a: $fb
    db $fc                                        ; $7d8b: $fc
    or l                                          ; $7d8c: $b5
    ld a, d                                       ; $7d8d: $7a
    db $f4                                        ; $7d8e: $f4
    rra                                           ; $7d8f: $1f
    ld e, l                                       ; $7d90: $5d
    db $e3                                        ; $7d91: $e3
    ld a, [hl]                                    ; $7d92: $7e
    pop bc                                        ; $7d93: $c1
    cp a                                          ; $7d94: $bf
    ret nz                                        ; $7d95: $c0

    sub [hl]                                      ; $7d96: $96
    jp hl                                         ; $7d97: $e9


    xor l                                         ; $7d98: $ad
    di                                            ; $7d99: $f3
    ld d, d                                       ; $7d9a: $52
    rst $38                                       ; $7d9b: $ff
    cp l                                          ; $7d9c: $bd
    ld a, a                                       ; $7d9d: $7f
    ld h, $f9                                     ; $7d9e: $26 $f9
    jp c, $95e5                                   ; $7da0: $da $e5 $95

    ld [$ffc0], a                                 ; $7da3: $ea $c0 $ff
    db $f4                                        ; $7da6: $f4
    rst $38                                       ; $7da7: $ff
    ld a, e                                       ; $7da8: $7b
    rst $38                                       ; $7da9: $ff
    ld l, a                                       ; $7daa: $6f
    sbc a                                         ; $7dab: $9f
    inc l                                         ; $7dac: $2c
    rst $18                                       ; $7dad: $df
    adc e                                         ; $7dae: $8b
    db $ec                                        ; $7daf: $ec
    ld c, [hl]                                    ; $7db0: $4e
    pop af                                        ; $7db1: $f1
    ld d, l                                       ; $7db2: $55
    db $eb                                        ; $7db3: $eb
    ld h, c                                       ; $7db4: $61
    rst $38                                       ; $7db5: $ff

jr_075_7db6:
    di                                            ; $7db6: $f3
    rst $38                                       ; $7db7: $ff
    db $fc                                        ; $7db8: $fc
    rst $38                                       ; $7db9: $ff
    xor $f1                                       ; $7dba: $ee $f1
    ld l, h                                       ; $7dbc: $6c
    di                                            ; $7dbd: $f3
    and c                                         ; $7dbe: $a1
    ld a, a                                       ; $7dbf: $7f
    rst $10                                       ; $7dc0: $d7
    rst $38                                       ; $7dc1: $ff
    xor [hl]                                      ; $7dc2: $ae
    rst $38                                       ; $7dc3: $ff
    dec b                                         ; $7dc4: $05
    cp $a8                                        ; $7dc5: $fe $a8
    rst $10                                       ; $7dc7: $d7
    ld d, l                                       ; $7dc8: $55
    xor e                                         ; $7dc9: $ab
    xor b                                         ; $7dca: $a8
    rst $10                                       ; $7dcb: $d7
    ld b, l                                       ; $7dcc: $45
    cp [hl]                                       ; $7dcd: $be
    xor d                                         ; $7dce: $aa
    push de                                       ; $7dcf: $d5
    rst $38                                       ; $7dd0: $ff
    rst $38                                       ; $7dd1: $ff
    rst $38                                       ; $7dd2: $ff
    rst $38                                       ; $7dd3: $ff
    cp $ff                                        ; $7dd4: $fe $ff
    cp $ff                                        ; $7dd6: $fe $ff
    cp $ff                                        ; $7dd8: $fe $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    sbc $de                                       ; $7ddc: $de $de
    cp [hl]                                       ; $7dde: $be
    cp $ff                                        ; $7ddf: $fe $ff
    rst $38                                       ; $7de1: $ff
    ccf                                           ; $7de2: $3f
    rst $38                                       ; $7de3: $ff
    ld a, a                                       ; $7de4: $7f
    rst $38                                       ; $7de5: $ff
    ld a, a                                       ; $7de6: $7f
    rst $38                                       ; $7de7: $ff
    ld a, a                                       ; $7de8: $7f
    rst $38                                       ; $7de9: $ff
    cpl                                           ; $7dea: $2f
    rst $38                                       ; $7deb: $ff
    rst $38                                       ; $7dec: $ff
    cp $ff                                        ; $7ded: $fe $ff
    cp $fe                                        ; $7def: $fe $fe
    rst $38                                       ; $7df1: $ff
    rst $38                                       ; $7df2: $ff
    rst $38                                       ; $7df3: $ff
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    rst $38                                       ; $7df8: $ff
    ld a, a                                       ; $7df9: $7f
    rst $38                                       ; $7dfa: $ff
    ld a, a                                       ; $7dfb: $7f
    cp $7e                                        ; $7dfc: $fe $7e
    cp $2e                                        ; $7dfe: $fe $2e

Jump_075_7e00:
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $30                                       ; $7e06: $f7
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    ld a, l                                       ; $7e0e: $7d
    ld a, a                                       ; $7e0f: $7f
    cp $fe                                        ; $7e10: $fe $fe
    ld a, [hl]                                    ; $7e12: $7e
    cp $7e                                        ; $7e13: $fe $7e
    cp $7e                                        ; $7e15: $fe $7e
    cp $3f                                        ; $7e17: $fe $3f
    rst $38                                       ; $7e19: $ff
    res 7, a                                      ; $7e1a: $cb $bf
    ei                                            ; $7e1c: $fb
    call nz, $ffff                                ; $7e1d: $c4 $ff $ff
    ld a, a                                       ; $7e20: $7f
    ld a, [hl]                                    ; $7e21: $7e
    ld a, a                                       ; $7e22: $7f
    ld a, a                                       ; $7e23: $7f
    ld a, a                                       ; $7e24: $7f
    ld a, a                                       ; $7e25: $7f
    rst $38                                       ; $7e26: $ff
    rst $38                                       ; $7e27: $ff
    rst $38                                       ; $7e28: $ff
    rst $38                                       ; $7e29: $ff
    rst $38                                       ; $7e2a: $ff
    rst $38                                       ; $7e2b: $ff
    jp c, $ff05                                   ; $7e2c: $da $05 $ff

    cp $fe                                        ; $7e2f: $fe $fe
    ld a, $fc                                     ; $7e31: $3e $fc
    ld a, h                                       ; $7e33: $7c
    db $fc                                        ; $7e34: $fc
    db $fc                                        ; $7e35: $fc
    db $fd                                        ; $7e36: $fd
    db $fd                                        ; $7e37: $fd
    rst $38                                       ; $7e38: $ff
    rst $38                                       ; $7e39: $ff
    rst $38                                       ; $7e3a: $ff
    rst $38                                       ; $7e3b: $ff
    adc e                                         ; $7e3c: $8b
    ld a, a                                       ; $7e3d: $7f
    rst $38                                       ; $7e3e: $ff
    nop                                           ; $7e3f: $00
    ld a, a                                       ; $7e40: $7f
    ld a, a                                       ; $7e41: $7f
    ld a, [hl]                                    ; $7e42: $7e
    ld a, a                                       ; $7e43: $7f
    cp $ff                                        ; $7e44: $fe $ff
    cp $ff                                        ; $7e46: $fe $ff
    cp $ff                                        ; $7e48: $fe $ff
    db $f4                                        ; $7e4a: $f4
    rst $38                                       ; $7e4b: $ff
    xor e                                         ; $7e4c: $ab
    push af                                       ; $7e4d: $f5
    rst $38                                       ; $7e4e: $ff
    inc bc                                        ; $7e4f: $03
    ld d, l                                       ; $7e50: $55
    rst $38                                       ; $7e51: $ff
    and b                                         ; $7e52: $a0
    rst $38                                       ; $7e53: $ff
    ld d, d                                       ; $7e54: $52
    db $ed                                        ; $7e55: $ed
    and l                                         ; $7e56: $a5
    ld e, d                                       ; $7e57: $5a
    ld c, e                                       ; $7e58: $4b
    or h                                          ; $7e59: $b4
    cp a                                          ; $7e5a: $bf

jr_075_7e5b:
    ld b, b                                       ; $7e5b: $40
    ld l, a                                       ; $7e5c: $6f
    sub b                                         ; $7e5d: $90
    rst $18                                       ; $7e5e: $df
    jr nz, jr_075_7eb6                            ; $7e5f: $20 $55

    rst $38                                       ; $7e61: $ff
    jr z, jr_075_7e5b                             ; $7e62: $28 $f7

    sub c                                         ; $7e64: $91
    ld l, a                                       ; $7e65: $6f
    inc [hl]                                      ; $7e66: $34
    bit 7, e                                      ; $7e67: $cb $7b
    add l                                         ; $7e69: $85
    or h                                          ; $7e6a: $b4
    ld c, e                                       ; $7e6b: $4b
    ld l, e                                       ; $7e6c: $6b
    sub l                                         ; $7e6d: $95
    db $fc                                        ; $7e6e: $fc
    inc bc                                        ; $7e6f: $03
    or a                                          ; $7e70: $b7
    res 5, d                                      ; $7e71: $cb $aa
    rst $18                                       ; $7e73: $df
    rst $10                                       ; $7e74: $d7
    cp $7d                                        ; $7e75: $fe $7d
    cp $56                                        ; $7e77: $fe $56
    rst $28                                       ; $7e79: $ef
    cp e                                          ; $7e7a: $bb
    rst $00                                       ; $7e7b: $c7
    jp nc, $a5af                                  ; $7e7c: $d2 $af $a5

    sbc $6e                                       ; $7e7f: $de $6e
    pop af                                        ; $7e81: $f1
    and l                                         ; $7e82: $a5
    ld a, d                                       ; $7e83: $7a
    xor d                                         ; $7e84: $aa
    ld a, a                                       ; $7e85: $7f
    ld d, l                                       ; $7e86: $55
    rst $38                                       ; $7e87: $ff
    cp a                                          ; $7e88: $bf
    rst $38                                       ; $7e89: $ff
    ei                                            ; $7e8a: $fb
    db $fc                                        ; $7e8b: $fc
    or l                                          ; $7e8c: $b5
    ld a, d                                       ; $7e8d: $7a
    db $f4                                        ; $7e8e: $f4
    rra                                           ; $7e8f: $1f
    ld e, l                                       ; $7e90: $5d
    db $e3                                        ; $7e91: $e3
    ld a, [hl]                                    ; $7e92: $7e
    pop bc                                        ; $7e93: $c1
    cp a                                          ; $7e94: $bf
    ret nz                                        ; $7e95: $c0

    sub [hl]                                      ; $7e96: $96
    jp hl                                         ; $7e97: $e9


    xor l                                         ; $7e98: $ad
    di                                            ; $7e99: $f3
    ld d, d                                       ; $7e9a: $52
    rst $38                                       ; $7e9b: $ff
    cp l                                          ; $7e9c: $bd
    ld a, a                                       ; $7e9d: $7f
    ld h, $f9                                     ; $7e9e: $26 $f9
    jp c, $95e5                                   ; $7ea0: $da $e5 $95

    ld [$ffc0], a                                 ; $7ea3: $ea $c0 $ff
    db $f4                                        ; $7ea6: $f4
    rst $38                                       ; $7ea7: $ff
    ld a, e                                       ; $7ea8: $7b
    rst $38                                       ; $7ea9: $ff
    ld l, a                                       ; $7eaa: $6f
    sbc a                                         ; $7eab: $9f
    inc l                                         ; $7eac: $2c
    rst $18                                       ; $7ead: $df
    adc e                                         ; $7eae: $8b
    db $ec                                        ; $7eaf: $ec
    ld c, [hl]                                    ; $7eb0: $4e
    pop af                                        ; $7eb1: $f1
    ld d, l                                       ; $7eb2: $55
    db $eb                                        ; $7eb3: $eb
    ld h, c                                       ; $7eb4: $61
    rst $38                                       ; $7eb5: $ff

jr_075_7eb6:
    di                                            ; $7eb6: $f3
    rst $38                                       ; $7eb7: $ff
    db $fc                                        ; $7eb8: $fc
    rst $38                                       ; $7eb9: $ff
    xor $f1                                       ; $7eba: $ee $f1
    ld l, h                                       ; $7ebc: $6c
    di                                            ; $7ebd: $f3
    and c                                         ; $7ebe: $a1
    ld a, a                                       ; $7ebf: $7f
    rst $10                                       ; $7ec0: $d7
    rst $38                                       ; $7ec1: $ff
    xor [hl]                                      ; $7ec2: $ae
    rst $38                                       ; $7ec3: $ff
    dec b                                         ; $7ec4: $05
    cp $a8                                        ; $7ec5: $fe $a8
    rst $10                                       ; $7ec7: $d7
    ld d, l                                       ; $7ec8: $55
    xor e                                         ; $7ec9: $ab
    xor b                                         ; $7eca: $a8
    rst $10                                       ; $7ecb: $d7
    ld b, l                                       ; $7ecc: $45
    cp [hl]                                       ; $7ecd: $be
    xor d                                         ; $7ece: $aa
    push de                                       ; $7ecf: $d5
    rst $38                                       ; $7ed0: $ff
    rst $38                                       ; $7ed1: $ff
    rst $38                                       ; $7ed2: $ff
    rst $38                                       ; $7ed3: $ff
    rst $38                                       ; $7ed4: $ff
    rst $38                                       ; $7ed5: $ff
    cp $ff                                        ; $7ed6: $fe $ff
    rst $38                                       ; $7ed8: $ff
    rst $38                                       ; $7ed9: $ff
    rst $38                                       ; $7eda: $ff
    sbc $ff                                       ; $7edb: $de $ff
    cp $bf                                        ; $7edd: $fe $bf
    cp $3f                                        ; $7edf: $fe $3f
    rst $38                                       ; $7ee1: $ff
    ccf                                           ; $7ee2: $3f
    rst $38                                       ; $7ee3: $ff
    ld a, a                                       ; $7ee4: $7f
    rst $38                                       ; $7ee5: $ff
    ld a, a                                       ; $7ee6: $7f
    rst $38                                       ; $7ee7: $ff
    xor $ff                                       ; $7ee8: $ee $ff
    db $fc                                        ; $7eea: $fc
    rst $38                                       ; $7eeb: $ff
    db $fc                                        ; $7eec: $fc
    ld a, a                                       ; $7eed: $7f
    cp $7f                                        ; $7eee: $fe $7f
    rst $38                                       ; $7ef0: $ff
    rst $38                                       ; $7ef1: $ff
    rst $38                                       ; $7ef2: $ff
    rst $38                                       ; $7ef3: $ff
    rst $38                                       ; $7ef4: $ff
    rst $38                                       ; $7ef5: $ff
    ld a, a                                       ; $7ef6: $7f
    rst $38                                       ; $7ef7: $ff
    ld a, a                                       ; $7ef8: $7f
    db $fd                                        ; $7ef9: $fd
    ld a, a                                       ; $7efa: $7f
    db $fc                                        ; $7efb: $fc
    ld a, a                                       ; $7efc: $7f
    call c, $fc7f                                 ; $7efd: $dc $7f $fc

Call_075_7f00:
Jump_075_7f00:
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    rst $38                                       ; $7f03: $ff
    ei                                            ; $7f04: $fb
    rst $38                                       ; $7f05: $ff
    rst $38                                       ; $7f06: $ff
    rst $38                                       ; $7f07: $ff
    rst $38                                       ; $7f08: $ff
    rst $38                                       ; $7f09: $ff
    rst $38                                       ; $7f0a: $ff
    rst $38                                       ; $7f0b: $ff
    rst $38                                       ; $7f0c: $ff
    ld a, a                                       ; $7f0d: $7f
    db $fd                                        ; $7f0e: $fd
    ld a, a                                       ; $7f0f: $7f
    rst $38                                       ; $7f10: $ff
    cp $7f                                        ; $7f11: $fe $7f
    cp $7f                                        ; $7f13: $fe $7f
    rst $38                                       ; $7f15: $ff
    ld a, a                                       ; $7f16: $7f
    rst $38                                       ; $7f17: $ff
    cpl                                           ; $7f18: $2f
    rst $38                                       ; $7f19: $ff
    ret nc                                        ; $7f1a: $d0

    xor a                                         ; $7f1b: $af
    ldh a, [$c0]                                  ; $7f1c: $f0 $c0
    rst $38                                       ; $7f1e: $ff
    rst $38                                       ; $7f1f: $ff
    rst $38                                       ; $7f20: $ff
    ld a, a                                       ; $7f21: $7f
    rst $38                                       ; $7f22: $ff
    rst $38                                       ; $7f23: $ff
    rst $38                                       ; $7f24: $ff
    rst $38                                       ; $7f25: $ff
    rst $38                                       ; $7f26: $ff
    rst $38                                       ; $7f27: $ff
    rst $38                                       ; $7f28: $ff
    rst $38                                       ; $7f29: $ff
    ld [bc], a                                    ; $7f2a: $02
    rst $18                                       ; $7f2b: $df
    rlca                                          ; $7f2c: $07
    nop                                           ; $7f2d: $00
    rst $38                                       ; $7f2e: $ff
    cp $7f                                        ; $7f2f: $fe $7f
    db $fc                                        ; $7f31: $fc
    rst $38                                       ; $7f32: $ff
    cp $ff                                        ; $7f33: $fe $ff
    rst $38                                       ; $7f35: $ff
    rst $38                                       ; $7f36: $ff
    rst $38                                       ; $7f37: $ff
    rst $38                                       ; $7f38: $ff
    rst $38                                       ; $7f39: $ff
    cp a                                          ; $7f3a: $bf
    rst $38                                       ; $7f3b: $ff
    and b                                         ; $7f3c: $a0
    ld e, a                                       ; $7f3d: $5f
    ret nz                                        ; $7f3e: $c0

    nop                                           ; $7f3f: $00
    rst $38                                       ; $7f40: $ff
    ld a, a                                       ; $7f41: $7f
    cp $ff                                        ; $7f42: $fe $ff
    cp $ff                                        ; $7f44: $fe $ff
    cp $ff                                        ; $7f46: $fe $ff
    or $f7                                        ; $7f48: $f6 $f7
    db $e4                                        ; $7f4a: $e4
    rst $20                                       ; $7f4b: $e7
    inc bc                                        ; $7f4c: $03
    push hl                                       ; $7f4d: $e5
    rrca                                          ; $7f4e: $0f
    add e                                         ; $7f4f: $83
    ld d, l                                       ; $7f50: $55
    rst $38                                       ; $7f51: $ff
    and b                                         ; $7f52: $a0
    rst $38                                       ; $7f53: $ff
    ld d, d                                       ; $7f54: $52
    db $ed                                        ; $7f55: $ed
    and l                                         ; $7f56: $a5
    ld e, d                                       ; $7f57: $5a
    ld c, e                                       ; $7f58: $4b
    or h                                          ; $7f59: $b4
    cp a                                          ; $7f5a: $bf

jr_075_7f5b:
    ld b, b                                       ; $7f5b: $40
    ld l, a                                       ; $7f5c: $6f
    sub b                                         ; $7f5d: $90
    rst $18                                       ; $7f5e: $df
    jr nz, jr_075_7fb6                            ; $7f5f: $20 $55

    rst $38                                       ; $7f61: $ff
    jr z, jr_075_7f5b                             ; $7f62: $28 $f7

    sub c                                         ; $7f64: $91
    ld l, a                                       ; $7f65: $6f
    inc [hl]                                      ; $7f66: $34
    bit 7, e                                      ; $7f67: $cb $7b
    add l                                         ; $7f69: $85
    or h                                          ; $7f6a: $b4
    ld c, e                                       ; $7f6b: $4b
    ld l, e                                       ; $7f6c: $6b
    sub l                                         ; $7f6d: $95
    db $fc                                        ; $7f6e: $fc
    inc bc                                        ; $7f6f: $03
    or a                                          ; $7f70: $b7
    res 5, d                                      ; $7f71: $cb $aa
    rst $18                                       ; $7f73: $df
    rst $10                                       ; $7f74: $d7
    cp $7d                                        ; $7f75: $fe $7d
    cp $56                                        ; $7f77: $fe $56
    rst $28                                       ; $7f79: $ef
    cp e                                          ; $7f7a: $bb
    rst $00                                       ; $7f7b: $c7
    jp nc, $a5af                                  ; $7f7c: $d2 $af $a5

    sbc $6e                                       ; $7f7f: $de $6e
    pop af                                        ; $7f81: $f1
    and l                                         ; $7f82: $a5
    ld a, d                                       ; $7f83: $7a
    xor d                                         ; $7f84: $aa
    ld a, a                                       ; $7f85: $7f
    ld d, l                                       ; $7f86: $55
    rst $38                                       ; $7f87: $ff
    cp a                                          ; $7f88: $bf
    rst $38                                       ; $7f89: $ff
    ei                                            ; $7f8a: $fb
    db $fc                                        ; $7f8b: $fc
    or l                                          ; $7f8c: $b5
    ld a, d                                       ; $7f8d: $7a
    db $f4                                        ; $7f8e: $f4
    rra                                           ; $7f8f: $1f
    ld e, l                                       ; $7f90: $5d
    db $e3                                        ; $7f91: $e3
    ld a, [hl]                                    ; $7f92: $7e
    pop bc                                        ; $7f93: $c1
    cp a                                          ; $7f94: $bf
    ret nz                                        ; $7f95: $c0

    sub [hl]                                      ; $7f96: $96
    jp hl                                         ; $7f97: $e9


    xor l                                         ; $7f98: $ad
    di                                            ; $7f99: $f3
    ld d, d                                       ; $7f9a: $52
    rst $38                                       ; $7f9b: $ff
    cp l                                          ; $7f9c: $bd
    ld a, a                                       ; $7f9d: $7f
    ld h, $f9                                     ; $7f9e: $26 $f9
    jp c, $95e5                                   ; $7fa0: $da $e5 $95

    ld [$ffc0], a                                 ; $7fa3: $ea $c0 $ff
    db $f4                                        ; $7fa6: $f4
    rst $38                                       ; $7fa7: $ff
    ld a, e                                       ; $7fa8: $7b
    rst $38                                       ; $7fa9: $ff
    ld l, a                                       ; $7faa: $6f
    sbc a                                         ; $7fab: $9f
    inc l                                         ; $7fac: $2c
    rst $18                                       ; $7fad: $df
    adc e                                         ; $7fae: $8b
    db $ec                                        ; $7faf: $ec
    ld c, [hl]                                    ; $7fb0: $4e
    pop af                                        ; $7fb1: $f1
    ld d, l                                       ; $7fb2: $55
    db $eb                                        ; $7fb3: $eb
    ld h, c                                       ; $7fb4: $61
    rst $38                                       ; $7fb5: $ff

jr_075_7fb6:
    di                                            ; $7fb6: $f3
    rst $38                                       ; $7fb7: $ff
    db $fc                                        ; $7fb8: $fc
    rst $38                                       ; $7fb9: $ff
    xor $f1                                       ; $7fba: $ee $f1
    ld l, h                                       ; $7fbc: $6c
    di                                            ; $7fbd: $f3
    and c                                         ; $7fbe: $a1
    ld a, a                                       ; $7fbf: $7f
    rst $10                                       ; $7fc0: $d7
    rst $38                                       ; $7fc1: $ff
    xor [hl]                                      ; $7fc2: $ae
    rst $38                                       ; $7fc3: $ff
    dec b                                         ; $7fc4: $05
    cp $a8                                        ; $7fc5: $fe $a8
    rst $10                                       ; $7fc7: $d7
    ld d, l                                       ; $7fc8: $55
    xor e                                         ; $7fc9: $ab
    xor b                                         ; $7fca: $a8
    rst $10                                       ; $7fcb: $d7
    ld b, l                                       ; $7fcc: $45
    cp [hl]                                       ; $7fcd: $be
    xor d                                         ; $7fce: $aa
    push de                                       ; $7fcf: $d5

    db $09, $00, $00

    dec de                                        ; $7fd3: $1b
    nop                                           ; $7fd4: $00
    inc bc                                        ; $7fd5: $03
    dec de                                        ; $7fd6: $1b
    nop                                           ; $7fd7: $00
    inc bc                                        ; $7fd8: $03

    db $08, $05, $2c, $00, $3f, $00, $0c, $01, $2c, $00, $4c, $00, $02, $00, $30, $00
    db $79, $00, $ff, $ff, $ff, $ff, $ff, $ff, $10, $00, $02, $00, $40, $00, $01, $60

    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff

Call_075_7fff:
Jump_075_7fff:
    rst $38                                       ; $7fff: $ff
