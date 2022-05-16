; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $073", ROMX[$4000], BANK[$73]

    ld [hl], e                                    ; $4000: $73
    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, jr_073_4043                             ; $4008: $38 $39

    jr nc, jr_073_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    nop                                           ; $4010: $00
    rst $38                                       ; $4011: $ff
    nop                                           ; $4012: $00
    rst $38                                       ; $4013: $ff
    nop                                           ; $4014: $00
    rst $38                                       ; $4015: $ff
    nop                                           ; $4016: $00
    rst $38                                       ; $4017: $ff
    nop                                           ; $4018: $00
    rst $38                                       ; $4019: $ff
    nop                                           ; $401a: $00
    rst $38                                       ; $401b: $ff
    nop                                           ; $401c: $00
    rst $38                                       ; $401d: $ff
    nop                                           ; $401e: $00
    rst $38                                       ; $401f: $ff
    nop                                           ; $4020: $00
    rst $38                                       ; $4021: $ff
    ld de, $00ee                                  ; $4022: $11 $ee $00
    rst $38                                       ; $4025: $ff
    ld b, h                                       ; $4026: $44
    cp e                                          ; $4027: $bb
    nop                                           ; $4028: $00
    rst $38                                       ; $4029: $ff
    xor d                                         ; $402a: $aa
    ld d, l                                       ; $402b: $55
    ld d, l                                       ; $402c: $55
    xor d                                         ; $402d: $aa
    rst $38                                       ; $402e: $ff
    nop                                           ; $402f: $00
    rst $38                                       ; $4030: $ff
    nop                                           ; $4031: $00
    rst $38                                       ; $4032: $ff
    nop                                           ; $4033: $00
    rst $38                                       ; $4034: $ff
    nop                                           ; $4035: $00
    rst $38                                       ; $4036: $ff
    nop                                           ; $4037: $00
    ld [hl], a                                    ; $4038: $77
    nop                                           ; $4039: $00
    rst $38                                       ; $403a: $ff
    nop                                           ; $403b: $00
    ld d, l                                       ; $403c: $55

jr_073_403d:
    nop                                           ; $403d: $00
    xor d                                         ; $403e: $aa
    nop                                           ; $403f: $00
    rst $38                                       ; $4040: $ff
    rst $38                                       ; $4041: $ff
    rst $38                                       ; $4042: $ff

jr_073_4043:
    rst $38                                       ; $4043: $ff
    rst $38                                       ; $4044: $ff
    rst $38                                       ; $4045: $ff
    rst $38                                       ; $4046: $ff
    rst $38                                       ; $4047: $ff
    rst $38                                       ; $4048: $ff
    rst $38                                       ; $4049: $ff
    rst $38                                       ; $404a: $ff
    rst $38                                       ; $404b: $ff
    rst $38                                       ; $404c: $ff
    rst $38                                       ; $404d: $ff
    rst $38                                       ; $404e: $ff
    rst $38                                       ; $404f: $ff
    rst $38                                       ; $4050: $ff
    pop hl                                        ; $4051: $e1
    rst $38                                       ; $4052: $ff
    add b                                         ; $4053: $80
    rst $38                                       ; $4054: $ff
    nop                                           ; $4055: $00
    rst $30                                       ; $4056: $f7
    nop                                           ; $4057: $00
    rst $30                                       ; $4058: $f7
    nop                                           ; $4059: $00
    stop                                          ; $405a: $10 $00
    add $00                                       ; $405c: $c6 $00
    ld a, e                                       ; $405e: $7b
    add h                                         ; $405f: $84
    rst $38                                       ; $4060: $ff
    rst $38                                       ; $4061: $ff
    rst $38                                       ; $4062: $ff
    ld a, a                                       ; $4063: $7f
    rst $38                                       ; $4064: $ff
    ld e, $ff                                     ; $4065: $1e $ff
    nop                                           ; $4067: $00
    rst $38                                       ; $4068: $ff
    nop                                           ; $4069: $00
    rst $08                                       ; $406a: $cf
    nop                                           ; $406b: $00
    ld h, d                                       ; $406c: $62
    nop                                           ; $406d: $00
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    rst $38                                       ; $4070: $ff
    pop hl                                        ; $4071: $e1
    rst $38                                       ; $4072: $ff
    add b                                         ; $4073: $80
    rst $38                                       ; $4074: $ff
    nop                                           ; $4075: $00
    rst $30                                       ; $4076: $f7
    nop                                           ; $4077: $00
    rst $30                                       ; $4078: $f7
    nop                                           ; $4079: $00
    ret nz                                        ; $407a: $c0

    nop                                           ; $407b: $00
    ccf                                           ; $407c: $3f
    nop                                           ; $407d: $00
    db $ed                                        ; $407e: $ed
    ld [de], a                                    ; $407f: $12
    rst $38                                       ; $4080: $ff
    rst $38                                       ; $4081: $ff
    rst $38                                       ; $4082: $ff
    ld a, a                                       ; $4083: $7f
    rst $38                                       ; $4084: $ff
    ld e, $ff                                     ; $4085: $1e $ff
    nop                                           ; $4087: $00
    rst $38                                       ; $4088: $ff
    nop                                           ; $4089: $00
    ld a, [$6100]                                 ; $408a: $fa $00 $61
    nop                                           ; $408d: $00
    add e                                         ; $408e: $83
    nop                                           ; $408f: $00
    ld c, e                                       ; $4090: $4b
    or h                                          ; $4091: $b4
    cp l                                          ; $4092: $bd
    ld b, d                                       ; $4093: $42
    ret z                                         ; $4094: $c8

    rlca                                          ; $4095: $07
    xor $01                                       ; $4096: $ee $01
    ld b, a                                       ; $4098: $47
    nop                                           ; $4099: $00
    nop                                           ; $409a: $00
    nop                                           ; $409b: $00
    nop                                           ; $409c: $00
    nop                                           ; $409d: $00
    nop                                           ; $409e: $00
    nop                                           ; $409f: $00
    jp $ff00                                      ; $40a0: $c3 $00 $ff


    nop                                           ; $40a3: $00
    ld [hl], d                                    ; $40a4: $72
    adc l                                         ; $40a5: $8d
    ld e, h                                       ; $40a6: $5c
    and e                                         ; $40a7: $a3
    adc l                                         ; $40a8: $8d
    ld h, d                                       ; $40a9: $62
    and $00                                       ; $40aa: $e6 $00
    nop                                           ; $40ac: $00
    nop                                           ; $40ad: $00
    nop                                           ; $40ae: $00
    nop                                           ; $40af: $00
    or [hl]                                       ; $40b0: $b6
    ld c, c                                       ; $40b1: $49
    ld [hl], a                                    ; $40b2: $77
    adc b                                         ; $40b3: $88
    cp e                                          ; $40b4: $bb
    inc b                                         ; $40b5: $04
    sub e                                         ; $40b6: $93
    inc c                                         ; $40b7: $0c
    sbc d                                         ; $40b8: $9a
    inc b                                         ; $40b9: $04
    ld [bc], a                                    ; $40ba: $02
    nop                                           ; $40bb: $00
    nop                                           ; $40bc: $00
    nop                                           ; $40bd: $00
    nop                                           ; $40be: $00
    nop                                           ; $40bf: $00
    rst $20                                       ; $40c0: $e7
    nop                                           ; $40c1: $00
    inc [hl]                                      ; $40c2: $34
    res 7, d                                      ; $40c3: $cb $ba
    ld b, l                                       ; $40c5: $45
    sbc c                                         ; $40c6: $99
    ld h, [hl]                                    ; $40c7: $66
    rst $28                                       ; $40c8: $ef
    db $10                                        ; $40c9: $10
    ld e, h                                       ; $40ca: $5c
    jr nz, jr_073_40cd                            ; $40cb: $20 $00

jr_073_40cd:
    nop                                           ; $40cd: $00
    nop                                           ; $40ce: $00
    nop                                           ; $40cf: $00
    ldh a, [rP1]                                  ; $40d0: $f0 $00
    add $0f                                       ; $40d2: $c6 $0f
    ld [bc], a                                    ; $40d4: $02
    ccf                                           ; $40d5: $3f
    inc l                                         ; $40d6: $2c
    rst $38                                       ; $40d7: $ff
    ld b, b                                       ; $40d8: $40
    rst $38                                       ; $40d9: $ff
    nop                                           ; $40da: $00
    rst $38                                       ; $40db: $ff
    nop                                           ; $40dc: $00
    rst $38                                       ; $40dd: $ff
    nop                                           ; $40de: $00
    rst $38                                       ; $40df: $ff

jr_073_40e0:
    inc bc                                        ; $40e0: $03
    nop                                           ; $40e1: $00
    jr jr_073_40e0                                ; $40e2: $18 $fc

    call z, $8aff                                 ; $40e4: $cc $ff $8a
    rst $38                                       ; $40e7: $ff
    inc b                                         ; $40e8: $04
    rst $38                                       ; $40e9: $ff
    nop                                           ; $40ea: $00
    rst $38                                       ; $40eb: $ff
    nop                                           ; $40ec: $00
    rst $38                                       ; $40ed: $ff
    nop                                           ; $40ee: $00
    rst $38                                       ; $40ef: $ff
    ldh a, [rP1]                                  ; $40f0: $f0 $00
    jp Jump_000_140f                              ; $40f2: $c3 $0f $14


    ccf                                           ; $40f5: $3f
    ld [$00ff], sp                                ; $40f6: $08 $ff $00
    rst $38                                       ; $40f9: $ff
    nop                                           ; $40fa: $00
    rst $38                                       ; $40fb: $ff
    nop                                           ; $40fc: $00
    rst $38                                       ; $40fd: $ff
    nop                                           ; $40fe: $00
    rst $38                                       ; $40ff: $ff
    rlca                                          ; $4100: $07
    nop                                           ; $4101: $00
    ld [hl], e                                    ; $4102: $73
    ld hl, sp-$40                                 ; $4103: $f8 $c0
    db $fc                                        ; $4105: $fc
    jr @+$01                                      ; $4106: $18 $ff

    ld bc, $00ff                                  ; $4108: $01 $ff $00
    rst $38                                       ; $410b: $ff
    nop                                           ; $410c: $00
    rst $38                                       ; $410d: $ff
    nop                                           ; $410e: $00
    rst $38                                       ; $410f: $ff
    rst $38                                       ; $4110: $ff
    nop                                           ; $4111: $00
    rst $38                                       ; $4112: $ff
    nop                                           ; $4113: $00
    cp a                                          ; $4114: $bf
    nop                                           ; $4115: $00
    scf                                           ; $4116: $37
    nop                                           ; $4117: $00
    ld [hl], $00                                  ; $4118: $36 $00
    ld b, c                                       ; $411a: $41
    nop                                           ; $411b: $00
    add [hl]                                      ; $411c: $86
    nop                                           ; $411d: $00
    nop                                           ; $411e: $00

jr_073_411f:
    nop                                           ; $411f: $00
    rst $38                                       ; $4120: $ff
    nop                                           ; $4121: $00
    ld a, a                                       ; $4122: $7f
    ld b, b                                       ; $4123: $40
    rst $10                                       ; $4124: $d7
    ld b, b                                       ; $4125: $40
    or $e0                                        ; $4126: $f6 $e0
    ldh [rLCDC], a                                ; $4128: $e0 $40
    ld d, b                                       ; $412a: $50
    nop                                           ; $412b: $00
    ld h, b                                       ; $412c: $60
    jr nz, jr_073_411f                            ; $412d: $20 $f0

    ld [hl], b                                    ; $412f: $70
    rst $38                                       ; $4130: $ff
    nop                                           ; $4131: $00
    rst $38                                       ; $4132: $ff
    nop                                           ; $4133: $00
    scf                                           ; $4134: $37
    nop                                           ; $4135: $00
    ld [hl], a                                    ; $4136: $77
    nop                                           ; $4137: $00
    ld [hl-], a                                   ; $4138: $32
    nop                                           ; $4139: $00
    ld b, c                                       ; $413a: $41
    nop                                           ; $413b: $00
    ld b, $00                                     ; $413c: $06 $00
    nop                                           ; $413e: $00

jr_073_413f:
    nop                                           ; $413f: $00
    ei                                            ; $4140: $fb
    inc b                                         ; $4141: $04
    ld [hl], e                                    ; $4142: $73
    ld b, b                                       ; $4143: $40
    rst $00                                       ; $4144: $c7
    ld b, b                                       ; $4145: $40
    rst $30                                       ; $4146: $f7
    ldh [$e0], a                                  ; $4147: $e0 $e0
    ld b, b                                       ; $4149: $40
    ld b, b                                       ; $414a: $40
    nop                                           ; $414b: $00
    ld h, h                                       ; $414c: $64
    jr nz, jr_073_413f                            ; $414d: $20 $f0

    ld [hl], b                                    ; $414f: $70
    ld b, $00                                     ; $4150: $06 $00
    inc bc                                        ; $4152: $03
    nop                                           ; $4153: $00
    add hl, bc                                    ; $4154: $09
    ld bc, $000c                                  ; $4155: $01 $0c $00
    ld de, $0b00                                  ; $4158: $11 $00 $0b
    nop                                           ; $415b: $00
    ld de, $3300                                  ; $415c: $11 $00 $33
    nop                                           ; $415f: $00
    ld h, b                                       ; $4160: $60
    nop                                           ; $4161: $00
    adc b                                         ; $4162: $88
    nop                                           ; $4163: $00
    add b                                         ; $4164: $80
    add b                                         ; $4165: $80
    db $f4                                        ; $4166: $f4
    ld d, b                                       ; $4167: $50
    ld hl, sp+$38                                 ; $4168: $f8 $38
    ldh a, [$f0]                                  ; $416a: $f0 $f0
    ld a, [hl]                                    ; $416c: $7e
    call z, $30f0                                 ; $416d: $cc $f0 $30
    ld a, [hl+]                                   ; $4170: $2a
    ld bc, $0027                                  ; $4171: $01 $27 $00
    ld bc, $1300                                  ; $4174: $01 $00 $13
    nop                                           ; $4177: $00
    add hl, hl                                    ; $4178: $29
    ld bc, $000a                                  ; $4179: $01 $0a $00
    ld sp, $0b00                                  ; $417c: $31 $00 $0b
    nop                                           ; $417f: $00
    ei                                            ; $4180: $fb
    ld [hl+], a                                   ; $4181: $22
    cp $78                                        ; $4182: $fe $78
    ld a, l                                       ; $4184: $7d
    adc h                                         ; $4185: $8c
    cp l                                          ; $4186: $bd
    ld d, h                                       ; $4187: $54
    ld a, [c]                                     ; $4188: $f2
    and b                                         ; $4189: $a0
    db $f4                                        ; $418a: $f4
    ld d, h                                       ; $418b: $54
    ld hl, sp+$30                                 ; $418c: $f8 $30
    ld [hl], b                                    ; $418e: $70
    or b                                          ; $418f: $b0
    db $10                                        ; $4190: $10
    ld bc, $0132                                  ; $4191: $01 $32 $01
    ld [$0301], sp                                ; $4194: $08 $01 $03
    nop                                           ; $4197: $00
    ld h, c                                       ; $4198: $61
    nop                                           ; $4199: $00
    rla                                           ; $419a: $17
    nop                                           ; $419b: $00
    add hl, hl                                    ; $419c: $29
    nop                                           ; $419d: $00
    dec sp                                        ; $419e: $3b
    add hl, bc                                    ; $419f: $09
    ld a, [hl]                                    ; $41a0: $7e
    xor h                                         ; $41a1: $ac
    ldh a, [rSVBK]                                ; $41a2: $f0 $70
    ei                                            ; $41a4: $fb
    ld [de], a                                    ; $41a5: $12
    cp $68                                        ; $41a6: $fe $68
    ld a, l                                       ; $41a8: $7d
    xor h                                         ; $41a9: $ac
    dec a                                         ; $41aa: $3d
    reti                                          ; $41ab: $d9


    ld a, d                                       ; $41ac: $7a
    add b                                         ; $41ad: $80
    cp $3c                                        ; $41ae: $fe $3c
    dec bc                                        ; $41b0: $0b
    ld [bc], a                                    ; $41b1: $02
    inc e                                         ; $41b2: $1c
    inc bc                                        ; $41b3: $03
    inc c                                         ; $41b4: $0c
    inc bc                                        ; $41b5: $03
    nop                                           ; $41b6: $00
    inc bc                                        ; $41b7: $03
    jr nz, jr_073_41dd                            ; $41b8: $20 $23

    ld a, b                                       ; $41ba: $78
    ld a, e                                       ; $41bb: $7b
    cp $ff                                        ; $41bc: $fe $ff
    rst $38                                       ; $41be: $ff
    rst $38                                       ; $41bf: $ff
    ld hl, sp-$18                                 ; $41c0: $f8 $e8
    add sp, $20                                   ; $41c2: $e8 $20
    ldh [rP1], a                                  ; $41c4: $e0 $00
    nop                                           ; $41c6: $00
    ldh [rTMA], a                                 ; $41c7: $e0 $06
    and $0f                                       ; $41c9: $e6 $0f
    rst $38                                       ; $41cb: $ff
    ccf                                           ; $41cc: $3f
    rst $38                                       ; $41cd: $ff
    rst $38                                       ; $41ce: $ff
    rst $38                                       ; $41cf: $ff
    nop                                           ; $41d0: $00
    rst $38                                       ; $41d1: $ff
    nop                                           ; $41d2: $00
    rst $38                                       ; $41d3: $ff
    nop                                           ; $41d4: $00
    rst $38                                       ; $41d5: $ff
    nop                                           ; $41d6: $00
    rst $38                                       ; $41d7: $ff
    nop                                           ; $41d8: $00
    rst $38                                       ; $41d9: $ff
    nop                                           ; $41da: $00
    rst $38                                       ; $41db: $ff
    nop                                           ; $41dc: $00

jr_073_41dd:
    rst $38                                       ; $41dd: $ff
    nop                                           ; $41de: $00
    rst $38                                       ; $41df: $ff
    nop                                           ; $41e0: $00
    rst $38                                       ; $41e1: $ff
    ld de, $00ee                                  ; $41e2: $11 $ee $00
    rst $38                                       ; $41e5: $ff
    ld b, h                                       ; $41e6: $44
    cp e                                          ; $41e7: $bb
    nop                                           ; $41e8: $00
    rst $38                                       ; $41e9: $ff
    xor d                                         ; $41ea: $aa
    ld d, l                                       ; $41eb: $55
    ld d, l                                       ; $41ec: $55
    xor d                                         ; $41ed: $aa
    rst $38                                       ; $41ee: $ff
    nop                                           ; $41ef: $00
    rst $38                                       ; $41f0: $ff
    nop                                           ; $41f1: $00
    rst $38                                       ; $41f2: $ff
    nop                                           ; $41f3: $00
    rst $38                                       ; $41f4: $ff
    nop                                           ; $41f5: $00
    rst $38                                       ; $41f6: $ff
    nop                                           ; $41f7: $00
    ld [hl], a                                    ; $41f8: $77
    nop                                           ; $41f9: $00
    rst $38                                       ; $41fa: $ff
    nop                                           ; $41fb: $00
    ld d, l                                       ; $41fc: $55
    nop                                           ; $41fd: $00
    xor d                                         ; $41fe: $aa
    nop                                           ; $41ff: $00
    rst $38                                       ; $4200: $ff
    rst $38                                       ; $4201: $ff
    rst $38                                       ; $4202: $ff
    rst $38                                       ; $4203: $ff
    rst $38                                       ; $4204: $ff
    rst $38                                       ; $4205: $ff
    rst $38                                       ; $4206: $ff
    rst $38                                       ; $4207: $ff
    rst $38                                       ; $4208: $ff
    rst $38                                       ; $4209: $ff
    rst $38                                       ; $420a: $ff
    rst $38                                       ; $420b: $ff
    rst $38                                       ; $420c: $ff
    rst $38                                       ; $420d: $ff
    rst $38                                       ; $420e: $ff
    rst $38                                       ; $420f: $ff
    rst $38                                       ; $4210: $ff
    ld hl, sp-$01                                 ; $4211: $f8 $ff
    ldh [rIE], a                                  ; $4213: $e0 $ff
    add b                                         ; $4215: $80
    db $fd                                        ; $4216: $fd
    nop                                           ; $4217: $00
    db $fd                                        ; $4218: $fd
    nop                                           ; $4219: $00
    inc d                                         ; $421a: $14
    nop                                           ; $421b: $00
    db $e3                                        ; $421c: $e3
    nop                                           ; $421d: $00
    cp l                                          ; $421e: $bd
    ld b, d                                       ; $421f: $42
    rst $38                                       ; $4220: $ff
    ld a, a                                       ; $4221: $7f
    rst $38                                       ; $4222: $ff
    rra                                           ; $4223: $1f
    rst $38                                       ; $4224: $ff
    rlca                                          ; $4225: $07
    rst $38                                       ; $4226: $ff
    nop                                           ; $4227: $00
    rst $38                                       ; $4228: $ff
    nop                                           ; $4229: $00
    or e                                          ; $422a: $b3
    nop                                           ; $422b: $00
    jr jr_073_422e                                ; $422c: $18 $00

jr_073_422e:
    add b                                         ; $422e: $80
    nop                                           ; $422f: $00
    rst $38                                       ; $4230: $ff
    ld hl, sp-$01                                 ; $4231: $f8 $ff
    ldh [rIE], a                                  ; $4233: $e0 $ff
    add b                                         ; $4235: $80
    db $fd                                        ; $4236: $fd
    nop                                           ; $4237: $00
    db $fd                                        ; $4238: $fd
    nop                                           ; $4239: $00
    ldh [rP1], a                                  ; $423a: $e0 $00
    sbc a                                         ; $423c: $9f
    nop                                           ; $423d: $00
    halt                                          ; $423e: $76
    add hl, bc                                    ; $423f: $09
    rst $38                                       ; $4240: $ff
    ld a, a                                       ; $4241: $7f
    rst $38                                       ; $4242: $ff
    rra                                           ; $4243: $1f
    rst $38                                       ; $4244: $ff
    rlca                                          ; $4245: $07
    rst $38                                       ; $4246: $ff
    nop                                           ; $4247: $00
    rst $38                                       ; $4248: $ff
    nop                                           ; $4249: $00
    ld a, [hl]                                    ; $424a: $7e
    nop                                           ; $424b: $00
    sbc b                                         ; $424c: $98
    nop                                           ; $424d: $00
    pop bc                                        ; $424e: $c1
    nop                                           ; $424f: $00
    and l                                         ; $4250: $a5
    ld e, d                                       ; $4251: $5a
    ld e, [hl]                                    ; $4252: $5e
    and c                                         ; $4253: $a1
    ld h, h                                       ; $4254: $64
    add e                                         ; $4255: $83
    rst $30                                       ; $4256: $f7
    nop                                           ; $4257: $00
    and e                                         ; $4258: $a3
    nop                                           ; $4259: $00
    nop                                           ; $425a: $00
    nop                                           ; $425b: $00
    nop                                           ; $425c: $00
    nop                                           ; $425d: $00
    nop                                           ; $425e: $00
    nop                                           ; $425f: $00
    pop hl                                        ; $4260: $e1
    nop                                           ; $4261: $00
    rst $38                                       ; $4262: $ff
    nop                                           ; $4263: $00
    add hl, sp                                    ; $4264: $39
    add $2e                                       ; $4265: $c6 $2e
    pop de                                        ; $4267: $d1
    add $31                                       ; $4268: $c6 $31
    ld [hl], e                                    ; $426a: $73
    nop                                           ; $426b: $00
    nop                                           ; $426c: $00
    nop                                           ; $426d: $00
    nop                                           ; $426e: $00
    nop                                           ; $426f: $00
    db $db                                        ; $4270: $db
    inc h                                         ; $4271: $24
    cp e                                          ; $4272: $bb
    ld b, h                                       ; $4273: $44
    ld e, l                                       ; $4274: $5d
    add d                                         ; $4275: $82
    ld c, c                                       ; $4276: $49
    add [hl]                                      ; $4277: $86
    call $0102                                    ; $4278: $cd $02 $01
    nop                                           ; $427b: $00
    nop                                           ; $427c: $00
    nop                                           ; $427d: $00
    nop                                           ; $427e: $00
    nop                                           ; $427f: $00
    ld [hl], e                                    ; $4280: $73
    add b                                         ; $4281: $80
    sbc d                                         ; $4282: $9a
    ld h, l                                       ; $4283: $65
    db $dd                                        ; $4284: $dd
    ld [hl+], a                                   ; $4285: $22
    call z, Call_073_7733                         ; $4286: $cc $33 $77
    ld [$102e], sp                                ; $4289: $08 $2e $10
    nop                                           ; $428c: $00
    nop                                           ; $428d: $00
    nop                                           ; $428e: $00
    nop                                           ; $428f: $00
    ld hl, sp+$00                                 ; $4290: $f8 $00
    db $e3                                        ; $4292: $e3
    rlca                                          ; $4293: $07
    ld bc, $161f                                  ; $4294: $01 $1f $16
    rst $38                                       ; $4297: $ff
    and b                                         ; $4298: $a0
    rst $38                                       ; $4299: $ff
    nop                                           ; $429a: $00
    rst $38                                       ; $429b: $ff
    nop                                           ; $429c: $00
    rst $38                                       ; $429d: $ff
    nop                                           ; $429e: $00
    rst $38                                       ; $429f: $ff
    ld bc, $0c00                                  ; $42a0: $01 $00 $0c
    cp $66                                        ; $42a3: $fe $66
    rst $38                                       ; $42a5: $ff
    ld b, l                                       ; $42a6: $45
    rst $38                                       ; $42a7: $ff
    ld [bc], a                                    ; $42a8: $02
    rst $38                                       ; $42a9: $ff
    nop                                           ; $42aa: $00
    rst $38                                       ; $42ab: $ff
    nop                                           ; $42ac: $00
    rst $38                                       ; $42ad: $ff
    nop                                           ; $42ae: $00
    rst $38                                       ; $42af: $ff
    ld hl, sp+$00                                 ; $42b0: $f8 $00
    ld h, c                                       ; $42b2: $61
    rlca                                          ; $42b3: $07
    ld a, [bc]                                    ; $42b4: $0a
    sbc a                                         ; $42b5: $9f
    inc b                                         ; $42b6: $04
    rst $38                                       ; $42b7: $ff
    nop                                           ; $42b8: $00
    rst $38                                       ; $42b9: $ff
    nop                                           ; $42ba: $00
    rst $38                                       ; $42bb: $ff
    nop                                           ; $42bc: $00
    rst $38                                       ; $42bd: $ff
    nop                                           ; $42be: $00
    rst $38                                       ; $42bf: $ff
    inc bc                                        ; $42c0: $03
    nop                                           ; $42c1: $00
    cp c                                          ; $42c2: $b9
    db $fc                                        ; $42c3: $fc
    ld h, b                                       ; $42c4: $60
    cp $0c                                        ; $42c5: $fe $0c
    rst $38                                       ; $42c7: $ff
    nop                                           ; $42c8: $00
    rst $38                                       ; $42c9: $ff
    nop                                           ; $42ca: $00
    rst $38                                       ; $42cb: $ff
    nop                                           ; $42cc: $00
    rst $38                                       ; $42cd: $ff
    nop                                           ; $42ce: $00
    rst $38                                       ; $42cf: $ff
    rst $38                                       ; $42d0: $ff
    nop                                           ; $42d1: $00
    rst $38                                       ; $42d2: $ff
    nop                                           ; $42d3: $00
    rst $18                                       ; $42d4: $df
    nop                                           ; $42d5: $00
    sbc e                                         ; $42d6: $9b
    nop                                           ; $42d7: $00
    ld a, [de]                                    ; $42d8: $1a
    nop                                           ; $42d9: $00
    ld hl, $4600                                  ; $42da: $21 $00 $46
    nop                                           ; $42dd: $00
    nop                                           ; $42de: $00

jr_073_42df:
    nop                                           ; $42df: $00
    rst $38                                       ; $42e0: $ff
    nop                                           ; $42e1: $00
    ld a, a                                       ; $42e2: $7f
    ld b, b                                       ; $42e3: $40
    db $db                                        ; $42e4: $db
    ld b, b                                       ; $42e5: $40
    di                                            ; $42e6: $f3
    ldh [$f0], a                                  ; $42e7: $e0 $f0
    ld b, b                                       ; $42e9: $40
    ld c, b                                       ; $42ea: $48
    nop                                           ; $42eb: $00
    ld h, b                                       ; $42ec: $60
    jr nz, jr_073_42df                            ; $42ed: $20 $f0

    ld [hl], b                                    ; $42ef: $70
    rst $38                                       ; $42f0: $ff
    nop                                           ; $42f1: $00
    rst $38                                       ; $42f2: $ff
    nop                                           ; $42f3: $00
    sbc e                                         ; $42f4: $9b
    nop                                           ; $42f5: $00
    dec sp                                        ; $42f6: $3b
    nop                                           ; $42f7: $00
    jr jr_073_42fa                                ; $42f8: $18 $00

jr_073_42fa:
    ld hl, $0600                                  ; $42fa: $21 $00 $06
    nop                                           ; $42fd: $00
    nop                                           ; $42fe: $00

jr_073_42ff:
    nop                                           ; $42ff: $00
    db $fd                                        ; $4300: $fd
    ld [bc], a                                    ; $4301: $02
    ld a, c                                       ; $4302: $79
    ld b, b                                       ; $4303: $40
    jp $f340                                      ; $4304: $c3 $40 $f3


    ldh [$e0], a                                  ; $4307: $e0 $e0
    ld b, b                                       ; $4309: $40
    ld b, b                                       ; $430a: $40
    nop                                           ; $430b: $00
    ld h, d                                       ; $430c: $62
    jr nz, jr_073_42ff                            ; $430d: $20 $f0

    ld [hl], b                                    ; $430f: $70
    ld b, $00                                     ; $4310: $06 $00
    inc bc                                        ; $4312: $03
    nop                                           ; $4313: $00
    add hl, bc                                    ; $4314: $09
    ld bc, $000c                                  ; $4315: $01 $0c $00
    ld de, $0b00                                  ; $4318: $11 $00 $0b
    nop                                           ; $431b: $00
    ld de, $3300                                  ; $431c: $11 $00 $33
    nop                                           ; $431f: $00
    ld h, b                                       ; $4320: $60
    nop                                           ; $4321: $00
    adc b                                         ; $4322: $88
    nop                                           ; $4323: $00
    add b                                         ; $4324: $80
    add b                                         ; $4325: $80
    db $f4                                        ; $4326: $f4
    ld d, b                                       ; $4327: $50
    ld hl, sp+$38                                 ; $4328: $f8 $38
    ldh a, [$f0]                                  ; $432a: $f0 $f0
    ld a, [hl]                                    ; $432c: $7e
    call z, $30f0                                 ; $432d: $cc $f0 $30
    ld a, [hl+]                                   ; $4330: $2a
    ld bc, $0027                                  ; $4331: $01 $27 $00
    ld bc, $1300                                  ; $4334: $01 $00 $13
    nop                                           ; $4337: $00
    add hl, hl                                    ; $4338: $29
    ld bc, $000a                                  ; $4339: $01 $0a $00
    ld sp, $0b00                                  ; $433c: $31 $00 $0b
    nop                                           ; $433f: $00
    ei                                            ; $4340: $fb
    ld [hl+], a                                   ; $4341: $22
    cp $78                                        ; $4342: $fe $78
    ld a, l                                       ; $4344: $7d
    adc h                                         ; $4345: $8c
    cp l                                          ; $4346: $bd
    ld d, h                                       ; $4347: $54
    ld a, [c]                                     ; $4348: $f2
    and b                                         ; $4349: $a0
    db $f4                                        ; $434a: $f4
    ld d, h                                       ; $434b: $54
    ld hl, sp+$30                                 ; $434c: $f8 $30
    ld [hl], b                                    ; $434e: $70
    or b                                          ; $434f: $b0
    db $10                                        ; $4350: $10
    ld bc, $0132                                  ; $4351: $01 $32 $01
    ld [$0301], sp                                ; $4354: $08 $01 $03
    nop                                           ; $4357: $00
    ld h, c                                       ; $4358: $61
    nop                                           ; $4359: $00
    rla                                           ; $435a: $17
    nop                                           ; $435b: $00
    add hl, hl                                    ; $435c: $29
    nop                                           ; $435d: $00
    dec sp                                        ; $435e: $3b
    add hl, bc                                    ; $435f: $09
    ld a, [hl]                                    ; $4360: $7e
    xor h                                         ; $4361: $ac
    ldh a, [rSVBK]                                ; $4362: $f0 $70
    ei                                            ; $4364: $fb
    ld [de], a                                    ; $4365: $12
    cp $68                                        ; $4366: $fe $68
    ld a, l                                       ; $4368: $7d
    xor h                                         ; $4369: $ac
    dec a                                         ; $436a: $3d
    reti                                          ; $436b: $d9


    ld a, d                                       ; $436c: $7a
    add b                                         ; $436d: $80
    cp $3c                                        ; $436e: $fe $3c
    dec bc                                        ; $4370: $0b
    ld [bc], a                                    ; $4371: $02
    inc e                                         ; $4372: $1c
    inc bc                                        ; $4373: $03
    inc c                                         ; $4374: $0c
    inc bc                                        ; $4375: $03
    nop                                           ; $4376: $00
    inc bc                                        ; $4377: $03
    jr nz, jr_073_439d                            ; $4378: $20 $23

    ld a, b                                       ; $437a: $78
    ld a, e                                       ; $437b: $7b
    cp $ff                                        ; $437c: $fe $ff
    rst $38                                       ; $437e: $ff
    rst $38                                       ; $437f: $ff
    ld hl, sp-$18                                 ; $4380: $f8 $e8
    add sp, $20                                   ; $4382: $e8 $20
    ldh [rP1], a                                  ; $4384: $e0 $00
    nop                                           ; $4386: $00
    ldh [rTMA], a                                 ; $4387: $e0 $06
    and $0f                                       ; $4389: $e6 $0f
    rst $38                                       ; $438b: $ff
    ccf                                           ; $438c: $3f
    rst $38                                       ; $438d: $ff
    rst $38                                       ; $438e: $ff
    rst $38                                       ; $438f: $ff
    nop                                           ; $4390: $00
    rst $38                                       ; $4391: $ff
    nop                                           ; $4392: $00
    rst $38                                       ; $4393: $ff
    nop                                           ; $4394: $00
    rst $38                                       ; $4395: $ff
    nop                                           ; $4396: $00
    rst $38                                       ; $4397: $ff
    nop                                           ; $4398: $00
    rst $38                                       ; $4399: $ff
    nop                                           ; $439a: $00
    rst $38                                       ; $439b: $ff
    nop                                           ; $439c: $00

jr_073_439d:
    rst $38                                       ; $439d: $ff
    nop                                           ; $439e: $00
    rst $38                                       ; $439f: $ff
    nop                                           ; $43a0: $00
    rst $38                                       ; $43a1: $ff
    adc b                                         ; $43a2: $88
    ld [hl], a                                    ; $43a3: $77
    nop                                           ; $43a4: $00
    rst $38                                       ; $43a5: $ff
    ld [hl+], a                                   ; $43a6: $22
    db $dd                                        ; $43a7: $dd
    nop                                           ; $43a8: $00
    rst $38                                       ; $43a9: $ff
    ld d, l                                       ; $43aa: $55
    xor d                                         ; $43ab: $aa
    xor d                                         ; $43ac: $aa
    ld d, l                                       ; $43ad: $55
    rst $38                                       ; $43ae: $ff
    nop                                           ; $43af: $00
    rst $38                                       ; $43b0: $ff
    nop                                           ; $43b1: $00
    rst $38                                       ; $43b2: $ff
    nop                                           ; $43b3: $00
    rst $38                                       ; $43b4: $ff
    nop                                           ; $43b5: $00
    rst $38                                       ; $43b6: $ff
    nop                                           ; $43b7: $00
    cp e                                          ; $43b8: $bb
    nop                                           ; $43b9: $00
    rst $38                                       ; $43ba: $ff
    nop                                           ; $43bb: $00
    xor d                                         ; $43bc: $aa
    nop                                           ; $43bd: $00
    ld d, l                                       ; $43be: $55
    nop                                           ; $43bf: $00
    rst $38                                       ; $43c0: $ff
    rst $38                                       ; $43c1: $ff
    rst $38                                       ; $43c2: $ff
    rst $38                                       ; $43c3: $ff
    rst $38                                       ; $43c4: $ff
    rst $38                                       ; $43c5: $ff
    rst $38                                       ; $43c6: $ff
    rst $38                                       ; $43c7: $ff
    rst $38                                       ; $43c8: $ff
    rst $38                                       ; $43c9: $ff
    rst $38                                       ; $43ca: $ff
    rst $38                                       ; $43cb: $ff
    rst $38                                       ; $43cc: $ff
    rst $38                                       ; $43cd: $ff
    rst $38                                       ; $43ce: $ff
    rst $38                                       ; $43cf: $ff
    rst $38                                       ; $43d0: $ff
    cp $ff                                        ; $43d1: $fe $ff
    ld hl, sp-$01                                 ; $43d3: $f8 $ff
    ldh [rIE], a                                  ; $43d5: $e0 $ff
    nop                                           ; $43d7: $00
    rst $38                                       ; $43d8: $ff
    nop                                           ; $43d9: $00
    adc h                                         ; $43da: $8c
    nop                                           ; $43db: $00
    ld [hl], c                                    ; $43dc: $71
    nop                                           ; $43dd: $00
    sbc $21                                       ; $43de: $de $21
    rst $38                                       ; $43e0: $ff
    rra                                           ; $43e1: $1f
    rst $38                                       ; $43e2: $ff
    rlca                                          ; $43e3: $07
    rst $38                                       ; $43e4: $ff
    ld bc, $007f                                  ; $43e5: $01 $7f $00
    ld a, a                                       ; $43e8: $7f
    nop                                           ; $43e9: $00
    inc l                                         ; $43ea: $2c
    nop                                           ; $43eb: $00
    and [hl]                                      ; $43ec: $a6
    nop                                           ; $43ed: $00
    ret nz                                        ; $43ee: $c0

    nop                                           ; $43ef: $00
    rst $38                                       ; $43f0: $ff
    cp $ff                                        ; $43f1: $fe $ff
    ld hl, sp-$01                                 ; $43f3: $f8 $ff
    ldh [rIE], a                                  ; $43f5: $e0 $ff
    nop                                           ; $43f7: $00
    rst $38                                       ; $43f8: $ff
    nop                                           ; $43f9: $00
    ldh a, [rP1]                                  ; $43fa: $f0 $00
    rrca                                          ; $43fc: $0f
    nop                                           ; $43fd: $00
    dec sp                                        ; $43fe: $3b
    inc b                                         ; $43ff: $04
    rst $38                                       ; $4400: $ff
    rra                                           ; $4401: $1f
    rst $38                                       ; $4402: $ff
    rlca                                          ; $4403: $07
    rst $38                                       ; $4404: $ff
    ld bc, $007f                                  ; $4405: $01 $7f $00
    ld a, a                                       ; $4408: $7f
    nop                                           ; $4409: $00
    ccf                                           ; $440a: $3f
    nop                                           ; $440b: $00
    add $00                                       ; $440c: $c6 $00
    ld h, b                                       ; $440e: $60
    add b                                         ; $440f: $80
    jp nc, Jump_000_2f2d                          ; $4410: $d2 $2d $2f

    ret nc                                        ; $4413: $d0

    or d                                          ; $4414: $b2
    ld b, c                                       ; $4415: $41
    ld a, e                                       ; $4416: $7b
    add b                                         ; $4417: $80
    pop de                                        ; $4418: $d1
    nop                                           ; $4419: $00
    nop                                           ; $441a: $00
    nop                                           ; $441b: $00
    nop                                           ; $441c: $00
    nop                                           ; $441d: $00
    nop                                           ; $441e: $00
    nop                                           ; $441f: $00
    ldh a, [rP1]                                  ; $4420: $f0 $00
    ld a, a                                       ; $4422: $7f
    add b                                         ; $4423: $80
    inc e                                         ; $4424: $1c
    db $e3                                        ; $4425: $e3
    sub a                                         ; $4426: $97
    ld l, b                                       ; $4427: $68
    db $e3                                        ; $4428: $e3
    jr jr_073_4464                                ; $4429: $18 $39

    nop                                           ; $442b: $00
    nop                                           ; $442c: $00
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    nop                                           ; $442f: $00
    db $ed                                        ; $4430: $ed
    ld [de], a                                    ; $4431: $12
    db $dd                                        ; $4432: $dd
    ld [hl+], a                                   ; $4433: $22
    xor [hl]                                      ; $4434: $ae
    ld b, c                                       ; $4435: $41
    inc h                                         ; $4436: $24
    jp $8166                                      ; $4437: $c3 $66 $81


    add b                                         ; $443a: $80
    nop                                           ; $443b: $00
    nop                                           ; $443c: $00
    nop                                           ; $443d: $00
    nop                                           ; $443e: $00
    nop                                           ; $443f: $00
    cp c                                          ; $4440: $b9
    ld b, b                                       ; $4441: $40
    call $ee32                                    ; $4442: $cd $32 $ee
    ld de, $19e6                                  ; $4445: $11 $e6 $19
    cp e                                          ; $4448: $bb
    inc b                                         ; $4449: $04
    sub a                                         ; $444a: $97
    ld [$0000], sp                                ; $444b: $08 $00 $00
    nop                                           ; $444e: $00

jr_073_444f:
    nop                                           ; $444f: $00
    db $fc                                        ; $4450: $fc
    nop                                           ; $4451: $00
    pop af                                        ; $4452: $f1
    inc bc                                        ; $4453: $03
    nop                                           ; $4454: $00
    rrca                                          ; $4455: $0f
    dec bc                                        ; $4456: $0b
    rst $38                                       ; $4457: $ff
    ld d, b                                       ; $4458: $50
    rst $38                                       ; $4459: $ff
    nop                                           ; $445a: $00
    rst $38                                       ; $445b: $ff
    nop                                           ; $445c: $00
    rst $38                                       ; $445d: $ff
    nop                                           ; $445e: $00
    rst $38                                       ; $445f: $ff
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    add [hl]                                      ; $4462: $86
    rst $38                                       ; $4463: $ff

jr_073_4464:
    or e                                          ; $4464: $b3
    rst $38                                       ; $4465: $ff
    ld [hl+], a                                   ; $4466: $22
    rst $38                                       ; $4467: $ff
    ld bc, $00ff                                  ; $4468: $01 $ff $00

jr_073_446b:
    rst $38                                       ; $446b: $ff
    nop                                           ; $446c: $00
    rst $38                                       ; $446d: $ff
    nop                                           ; $446e: $00
    rst $38                                       ; $446f: $ff
    db $fc                                        ; $4470: $fc
    nop                                           ; $4471: $00
    jr nc, jr_073_4477                            ; $4472: $30 $03

    dec b                                         ; $4474: $05
    rst $08                                       ; $4475: $cf
    add d                                         ; $4476: $82

jr_073_4477:
    rst $38                                       ; $4477: $ff
    nop                                           ; $4478: $00
    rst $38                                       ; $4479: $ff
    nop                                           ; $447a: $00
    rst $38                                       ; $447b: $ff
    nop                                           ; $447c: $00
    rst $38                                       ; $447d: $ff
    nop                                           ; $447e: $00
    rst $38                                       ; $447f: $ff
    ld bc, $dc00                                  ; $4480: $01 $00 $dc
    cp $30                                        ; $4483: $fe $30
    rst $38                                       ; $4485: $ff
    ld b, $ff                                     ; $4486: $06 $ff
    nop                                           ; $4488: $00
    rst $38                                       ; $4489: $ff
    nop                                           ; $448a: $00
    rst $38                                       ; $448b: $ff
    nop                                           ; $448c: $00
    rst $38                                       ; $448d: $ff
    nop                                           ; $448e: $00
    rst $38                                       ; $448f: $ff
    rst $38                                       ; $4490: $ff
    nop                                           ; $4491: $00

jr_073_4492:
    rst $38                                       ; $4492: $ff
    nop                                           ; $4493: $00
    rst $28                                       ; $4494: $ef
    nop                                           ; $4495: $00
    call $0d00                                    ; $4496: $cd $00 $0d
    nop                                           ; $4499: $00
    stop                                          ; $449a: $10 $00
    inc hl                                        ; $449c: $23
    nop                                           ; $449d: $00
    nop                                           ; $449e: $00
    nop                                           ; $449f: $00

jr_073_44a0:
    rst $38                                       ; $44a0: $ff
    nop                                           ; $44a1: $00
    cp a                                          ; $44a2: $bf
    jr nz, jr_073_4492                            ; $44a3: $20 $ed

    jr nz, jr_073_44a0                            ; $44a5: $20 $f9

    ld [hl], b                                    ; $44a7: $70
    ld a, b                                       ; $44a8: $78
    jr nz, jr_073_444f                            ; $44a9: $20 $a4

    nop                                           ; $44ab: $00
    jr nc, jr_073_44be                            ; $44ac: $30 $10

    ld a, b                                       ; $44ae: $78
    jr c, @+$01                                   ; $44af: $38 $ff

    nop                                           ; $44b1: $00
    rst $38                                       ; $44b2: $ff
    nop                                           ; $44b3: $00
    call $9d00                                    ; $44b4: $cd $00 $9d
    nop                                           ; $44b7: $00
    inc c                                         ; $44b8: $0c
    nop                                           ; $44b9: $00
    stop                                          ; $44ba: $10 $00
    inc bc                                        ; $44bc: $03
    nop                                           ; $44bd: $00

jr_073_44be:
    nop                                           ; $44be: $00
    nop                                           ; $44bf: $00

jr_073_44c0:
    cp $01                                        ; $44c0: $fe $01
    cp h                                          ; $44c2: $bc
    jr nz, @-$1d                                  ; $44c3: $20 $e1

    jr nz, jr_073_44c0                            ; $44c5: $20 $f9

jr_073_44c7:
    ld [hl], b                                    ; $44c7: $70
    ld [hl], b                                    ; $44c8: $70
    jr nz, jr_073_446b                            ; $44c9: $20 $a0

    nop                                           ; $44cb: $00
    ld sp, $7810                                  ; $44cc: $31 $10 $78
    jr c, @+$05                                   ; $44cf: $38 $03

    nop                                           ; $44d1: $00
    ld bc, $0400                                  ; $44d2: $01 $00 $04
    nop                                           ; $44d5: $00
    ld b, $00                                     ; $44d6: $06 $00
    ld [$0500], sp                                ; $44d8: $08 $00 $05
    nop                                           ; $44db: $00
    ld [$1900], sp                                ; $44dc: $08 $00 $19
    nop                                           ; $44df: $00
    jr nc, jr_073_44e2                            ; $44e0: $30 $00

jr_073_44e2:
    call nz, $c000                                ; $44e2: $c4 $00 $c0

jr_073_44e5:
    ret nz                                        ; $44e5: $c0

    ld a, d                                       ; $44e6: $7a
    jr z, jr_073_44e5                             ; $44e7: $28 $fc

    inc e                                         ; $44e9: $1c
    ld hl, sp+$78                                 ; $44ea: $f8 $78
    cp a                                          ; $44ec: $bf
    ld h, [hl]                                    ; $44ed: $66

Jump_073_44ee:
    ld hl, sp+$18                                 ; $44ee: $f8 $18
    sub l                                         ; $44f0: $95
    nop                                           ; $44f1: $00
    inc de                                        ; $44f2: $13
    nop                                           ; $44f3: $00
    add b                                         ; $44f4: $80
    nop                                           ; $44f5: $00
    adc c                                         ; $44f6: $89
    nop                                           ; $44f7: $00
    inc d                                         ; $44f8: $14
    nop                                           ; $44f9: $00
    dec b                                         ; $44fa: $05
    nop                                           ; $44fb: $00
    jr jr_073_44fe                                ; $44fc: $18 $00

jr_073_44fe:
    dec b                                         ; $44fe: $05
    nop                                           ; $44ff: $00

Jump_073_4500:
    ld a, l                                       ; $4500: $7d
    sub c                                         ; $4501: $91
    rst $38                                       ; $4502: $ff
    inc a                                         ; $4503: $3c
    cp [hl]                                       ; $4504: $be
    ld b, [hl]                                    ; $4505: $46
    sbc $2a                                       ; $4506: $de $2a
    ld sp, hl                                     ; $4508: $f9
    ret nc                                        ; $4509: $d0

    ld a, d                                       ; $450a: $7a
    ld a, [hl+]                                   ; $450b: $2a
    db $fc                                        ; $450c: $fc
    jr jr_073_44c7                                ; $450d: $18 $b8

    ld e, b                                       ; $450f: $58
    ld [$1900], sp                                ; $4510: $08 $00 $19
    nop                                           ; $4513: $00
    add h                                         ; $4514: $84
    nop                                           ; $4515: $00
    ld bc, $b000                                  ; $4516: $01 $00 $b0
    nop                                           ; $4519: $00
    adc e                                         ; $451a: $8b
    add b                                         ; $451b: $80
    inc d                                         ; $451c: $14
    nop                                           ; $451d: $00
    dec e                                         ; $451e: $1d
    inc b                                         ; $451f: $04
    ccf                                           ; $4520: $3f
    sub $78                                       ; $4521: $d6 $78
    cp b                                          ; $4523: $b8
    ld a, l                                       ; $4524: $7d
    adc c                                         ; $4525: $89
    rst $38                                       ; $4526: $ff
    inc [hl]                                      ; $4527: $34
    cp [hl]                                       ; $4528: $be
    ld d, [hl]                                    ; $4529: $56
    sbc [hl]                                      ; $452a: $9e
    ld l, h                                       ; $452b: $6c
    cp l                                          ; $452c: $bd
    ld b, b                                       ; $452d: $40
    rst $38                                       ; $452e: $ff
    sbc [hl]                                      ; $452f: $9e
    dec b                                         ; $4530: $05
    ld bc, $010e                                  ; $4531: $01 $0e $01
    ld b, $01                                     ; $4534: $06 $01
    nop                                           ; $4536: $00
    ld bc, $1110                                  ; $4537: $01 $10 $11
    cp h                                          ; $453a: $bc
    cp l                                          ; $453b: $bd
    rst $38                                       ; $453c: $ff
    rst $38                                       ; $453d: $ff
    rst $38                                       ; $453e: $ff
    rst $38                                       ; $453f: $ff
    db $fc                                        ; $4540: $fc
    ld [hl], h                                    ; $4541: $74
    ld [hl], h                                    ; $4542: $74
    sub b                                         ; $4543: $90
    ld [hl], b                                    ; $4544: $70
    add b                                         ; $4545: $80
    nop                                           ; $4546: $00
    ldh a, [$03]                                  ; $4547: $f0 $03
    di                                            ; $4549: $f3
    rlca                                          ; $454a: $07
    rst $38                                       ; $454b: $ff
    rra                                           ; $454c: $1f
    rst $38                                       ; $454d: $ff
    rst $38                                       ; $454e: $ff
    rst $38                                       ; $454f: $ff
    nop                                           ; $4550: $00
    rst $38                                       ; $4551: $ff
    nop                                           ; $4552: $00
    rst $38                                       ; $4553: $ff
    nop                                           ; $4554: $00
    rst $38                                       ; $4555: $ff
    nop                                           ; $4556: $00
    rst $38                                       ; $4557: $ff
    nop                                           ; $4558: $00
    rst $38                                       ; $4559: $ff
    nop                                           ; $455a: $00
    rst $38                                       ; $455b: $ff
    nop                                           ; $455c: $00
    rst $38                                       ; $455d: $ff
    nop                                           ; $455e: $00
    rst $38                                       ; $455f: $ff
    nop                                           ; $4560: $00
    rst $38                                       ; $4561: $ff
    adc b                                         ; $4562: $88
    ld [hl], a                                    ; $4563: $77
    nop                                           ; $4564: $00
    rst $38                                       ; $4565: $ff
    ld [hl+], a                                   ; $4566: $22
    db $dd                                        ; $4567: $dd
    nop                                           ; $4568: $00
    rst $38                                       ; $4569: $ff
    ld d, l                                       ; $456a: $55
    xor d                                         ; $456b: $aa
    xor d                                         ; $456c: $aa
    ld d, l                                       ; $456d: $55
    rst $38                                       ; $456e: $ff
    nop                                           ; $456f: $00
    rst $38                                       ; $4570: $ff
    nop                                           ; $4571: $00
    rst $38                                       ; $4572: $ff
    nop                                           ; $4573: $00
    rst $38                                       ; $4574: $ff
    nop                                           ; $4575: $00
    rst $38                                       ; $4576: $ff
    nop                                           ; $4577: $00
    cp e                                          ; $4578: $bb
    nop                                           ; $4579: $00
    rst $38                                       ; $457a: $ff
    nop                                           ; $457b: $00
    xor d                                         ; $457c: $aa
    nop                                           ; $457d: $00
    ld d, l                                       ; $457e: $55
    nop                                           ; $457f: $00
    rst $38                                       ; $4580: $ff
    rst $38                                       ; $4581: $ff
    rst $38                                       ; $4582: $ff
    rst $38                                       ; $4583: $ff
    rst $38                                       ; $4584: $ff
    rst $38                                       ; $4585: $ff
    rst $38                                       ; $4586: $ff
    rst $38                                       ; $4587: $ff
    rst $38                                       ; $4588: $ff
    rst $38                                       ; $4589: $ff
    rst $38                                       ; $458a: $ff
    rst $38                                       ; $458b: $ff
    rst $38                                       ; $458c: $ff
    rst $38                                       ; $458d: $ff
    rst $38                                       ; $458e: $ff
    rst $38                                       ; $458f: $ff
    rst $38                                       ; $4590: $ff
    rst $38                                       ; $4591: $ff
    rst $38                                       ; $4592: $ff
    cp $ff                                        ; $4593: $fe $ff
    ld a, b                                       ; $4595: $78
    rst $38                                       ; $4596: $ff
    nop                                           ; $4597: $00
    rst $38                                       ; $4598: $ff
    nop                                           ; $4599: $00
    rlca                                          ; $459a: $07
    nop                                           ; $459b: $00
    cp b                                          ; $459c: $b8
    nop                                           ; $459d: $00
    ld l, a                                       ; $459e: $6f
    db $10                                        ; $459f: $10
    rst $38                                       ; $45a0: $ff
    add a                                         ; $45a1: $87
    rst $38                                       ; $45a2: $ff
    ld bc, $00ff                                  ; $45a3: $01 $ff $00
    rst $18                                       ; $45a6: $df
    nop                                           ; $45a7: $00
    rst $18                                       ; $45a8: $df
    nop                                           ; $45a9: $00
    dec bc                                        ; $45aa: $0b
    nop                                           ; $45ab: $00
    reti                                          ; $45ac: $d9


    nop                                           ; $45ad: $00
    ld h, b                                       ; $45ae: $60
    add b                                         ; $45af: $80
    rst $38                                       ; $45b0: $ff
    rst $38                                       ; $45b1: $ff
    rst $38                                       ; $45b2: $ff
    cp $ff                                        ; $45b3: $fe $ff

jr_073_45b5:
    ld a, b                                       ; $45b5: $78
    rst $38                                       ; $45b6: $ff
    nop                                           ; $45b7: $00
    rst $38                                       ; $45b8: $ff
    nop                                           ; $45b9: $00
    jr c, jr_073_45bc                             ; $45ba: $38 $00

jr_073_45bc:
    add a                                         ; $45bc: $87
    nop                                           ; $45bd: $00
    dec e                                         ; $45be: $1d
    ld [bc], a                                    ; $45bf: $02
    rst $38                                       ; $45c0: $ff
    add a                                         ; $45c1: $87
    rst $38                                       ; $45c2: $ff
    ld bc, $00ff                                  ; $45c3: $01 $ff $00
    rst $18                                       ; $45c6: $df
    nop                                           ; $45c7: $00
    rst $18                                       ; $45c8: $df
    nop                                           ; $45c9: $00
    rrca                                          ; $45ca: $0f
    nop                                           ; $45cb: $00
    jp hl                                         ; $45cc: $e9


    nop                                           ; $45cd: $00
    or b                                          ; $45ce: $b0
    ld b, b                                       ; $45cf: $40
    jp hl                                         ; $45d0: $e9


    ld d, $97                                     ; $45d1: $16 $97
    ld l, b                                       ; $45d3: $68
    ld e, c                                       ; $45d4: $59
    and b                                         ; $45d5: $a0
    dec a                                         ; $45d6: $3d
    ret nz                                        ; $45d7: $c0

    add sp, $00                                   ; $45d8: $e8 $00
    add b                                         ; $45da: $80
    nop                                           ; $45db: $00
    nop                                           ; $45dc: $00
    nop                                           ; $45dd: $00
    nop                                           ; $45de: $00
    nop                                           ; $45df: $00
    ld a, b                                       ; $45e0: $78
    add b                                         ; $45e1: $80
    cp a                                          ; $45e2: $bf
    ld b, b                                       ; $45e3: $40
    ld c, $f1                                     ; $45e4: $0e $f1
    swap h                                        ; $45e6: $cb $34
    pop af                                        ; $45e8: $f1
    inc c                                         ; $45e9: $0c
    inc e                                         ; $45ea: $1c
    nop                                           ; $45eb: $00
    nop                                           ; $45ec: $00
    nop                                           ; $45ed: $00
    nop                                           ; $45ee: $00
    nop                                           ; $45ef: $00
    halt                                          ; $45f0: $76
    add hl, bc                                    ; $45f1: $09
    xor $11                                       ; $45f2: $ee $11
    ld d, a                                       ; $45f4: $57
    and b                                         ; $45f5: $a0
    sub d                                         ; $45f6: $92
    ld h, c                                       ; $45f7: $61
    or e                                          ; $45f8: $b3
    ld b, b                                       ; $45f9: $40
    ret nz                                        ; $45fa: $c0

    nop                                           ; $45fb: $00
    nop                                           ; $45fc: $00
    nop                                           ; $45fd: $00
    nop                                           ; $45fe: $00
    nop                                           ; $45ff: $00
    call c, $e620                                 ; $4600: $dc $20 $e6
    add hl, de                                    ; $4603: $19
    ld [hl], a                                    ; $4604: $77
    adc b                                         ; $4605: $88
    ld [hl], e                                    ; $4606: $73
    adc h                                         ; $4607: $8c
    ld e, l                                       ; $4608: $5d
    add d                                         ; $4609: $82
    ld c, e                                       ; $460a: $4b
    inc b                                         ; $460b: $04
    nop                                           ; $460c: $00

jr_073_460d:
    nop                                           ; $460d: $00
    nop                                           ; $460e: $00
    nop                                           ; $460f: $00
    cp $00                                        ; $4610: $fe $00
    ld a, b                                       ; $4612: $78
    ld bc, $8700                                  ; $4613: $01 $00 $87
    dec b                                         ; $4616: $05
    rst $38                                       ; $4617: $ff
    jr z, @+$01                                   ; $4618: $28 $ff

    nop                                           ; $461a: $00
    rst $38                                       ; $461b: $ff
    nop                                           ; $461c: $00
    rst $38                                       ; $461d: $ff
    nop                                           ; $461e: $00
    rst $38                                       ; $461f: $ff
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    jp Jump_073_59ff                              ; $4622: $c3 $ff $59


    rst $38                                       ; $4625: $ff
    sub c                                         ; $4626: $91
    rst $38                                       ; $4627: $ff
    nop                                           ; $4628: $00
    rst $38                                       ; $4629: $ff
    nop                                           ; $462a: $00

jr_073_462b:
    rst $38                                       ; $462b: $ff
    nop                                           ; $462c: $00
    rst $38                                       ; $462d: $ff
    nop                                           ; $462e: $00
    rst $38                                       ; $462f: $ff
    ld a, [hl]                                    ; $4630: $7e
    nop                                           ; $4631: $00
    jr jr_073_45b5                                ; $4632: $18 $81

    add d                                         ; $4634: $82
    rst $20                                       ; $4635: $e7
    ld b, c                                       ; $4636: $41
    rst $38                                       ; $4637: $ff
    add b                                         ; $4638: $80
    rst $38                                       ; $4639: $ff
    nop                                           ; $463a: $00
    rst $38                                       ; $463b: $ff
    nop                                           ; $463c: $00
    rst $38                                       ; $463d: $ff
    nop                                           ; $463e: $00
    rst $38                                       ; $463f: $ff
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    ld l, [hl]                                    ; $4642: $6e
    rst $38                                       ; $4643: $ff
    sbc b                                         ; $4644: $98
    rst $38                                       ; $4645: $ff
    inc bc                                        ; $4646: $03
    rst $38                                       ; $4647: $ff
    nop                                           ; $4648: $00
    rst $38                                       ; $4649: $ff
    nop                                           ; $464a: $00

jr_073_464b:
    rst $38                                       ; $464b: $ff
    nop                                           ; $464c: $00
    rst $38                                       ; $464d: $ff
    nop                                           ; $464e: $00
    rst $38                                       ; $464f: $ff
    ld a, a                                       ; $4650: $7f
    add b                                         ; $4651: $80
    ld a, a                                       ; $4652: $7f
    nop                                           ; $4653: $00
    rst $30                                       ; $4654: $f7
    nop                                           ; $4655: $00
    and $00                                       ; $4656: $e6 $00
    ld b, $00                                     ; $4658: $06 $00
    ld [$9300], sp                                ; $465a: $08 $00 $93
    nop                                           ; $465d: $00
    nop                                           ; $465e: $00
    nop                                           ; $465f: $00
    rst $38                                       ; $4660: $ff
    nop                                           ; $4661: $00
    cp a                                          ; $4662: $bf

jr_073_4663:
    jr nz, jr_073_464b                            ; $4663: $20 $e6

    jr nz, jr_073_4663                            ; $4665: $20 $fc

    ld [hl], b                                    ; $4667: $70
    ld [hl], h                                    ; $4668: $74
    jr nz, jr_073_460d                            ; $4669: $20 $a2

    nop                                           ; $466b: $00
    jr nc, jr_073_467e                            ; $466c: $30 $10

    ld a, b                                       ; $466e: $78
    jr c, @+$01                                   ; $466f: $38 $ff

    nop                                           ; $4671: $00
    rst $38                                       ; $4672: $ff
    nop                                           ; $4673: $00
    and $00                                       ; $4674: $e6 $00
    adc $00                                       ; $4676: $ce $00
    ld b, $00                                     ; $4678: $06 $00
    ld [$0300], sp                                ; $467a: $08 $00 $03
    nop                                           ; $467d: $00

jr_073_467e:
    nop                                           ; $467e: $00

jr_073_467f:
    nop                                           ; $467f: $00
    rst $38                                       ; $4680: $ff
    nop                                           ; $4681: $00
    cp [hl]                                       ; $4682: $be
    jr nz, @-$16                                  ; $4683: $20 $e8

    jr nz, jr_073_467f                            ; $4685: $20 $f8

jr_073_4687:
    ld [hl], b                                    ; $4687: $70
    ld [hl], b                                    ; $4688: $70
    jr nz, jr_073_462b                            ; $4689: $20 $a0

    nop                                           ; $468b: $00
    jr nc, @+$12                                  ; $468c: $30 $10

    ld a, b                                       ; $468e: $78
    jr c, @+$05                                   ; $468f: $38 $03

    nop                                           ; $4691: $00
    ld bc, $0400                                  ; $4692: $01 $00 $04
    nop                                           ; $4695: $00
    ld b, $00                                     ; $4696: $06 $00
    ld [$0500], sp                                ; $4698: $08 $00 $05
    nop                                           ; $469b: $00
    ld [$1900], sp                                ; $469c: $08 $00 $19
    nop                                           ; $469f: $00
    jr nc, jr_073_46a2                            ; $46a0: $30 $00

jr_073_46a2:
    call nz, $c000                                ; $46a2: $c4 $00 $c0

jr_073_46a5:
    ret nz                                        ; $46a5: $c0

    ld a, d                                       ; $46a6: $7a
    jr z, jr_073_46a5                             ; $46a7: $28 $fc

    inc e                                         ; $46a9: $1c
    ld hl, sp+$78                                 ; $46aa: $f8 $78
    cp a                                          ; $46ac: $bf
    ld h, [hl]                                    ; $46ad: $66
    ld hl, sp+$18                                 ; $46ae: $f8 $18
    sub l                                         ; $46b0: $95
    nop                                           ; $46b1: $00
    inc de                                        ; $46b2: $13
    nop                                           ; $46b3: $00
    add b                                         ; $46b4: $80
    nop                                           ; $46b5: $00
    adc c                                         ; $46b6: $89
    nop                                           ; $46b7: $00
    inc d                                         ; $46b8: $14
    nop                                           ; $46b9: $00
    dec b                                         ; $46ba: $05
    nop                                           ; $46bb: $00
    jr jr_073_46be                                ; $46bc: $18 $00

jr_073_46be:
    dec b                                         ; $46be: $05
    nop                                           ; $46bf: $00
    ld a, l                                       ; $46c0: $7d
    sub c                                         ; $46c1: $91
    rst $38                                       ; $46c2: $ff
    inc a                                         ; $46c3: $3c
    cp [hl]                                       ; $46c4: $be
    ld b, [hl]                                    ; $46c5: $46
    sbc $2a                                       ; $46c6: $de $2a
    ld sp, hl                                     ; $46c8: $f9
    ret nc                                        ; $46c9: $d0

    ld a, d                                       ; $46ca: $7a
    ld a, [hl+]                                   ; $46cb: $2a
    db $fc                                        ; $46cc: $fc
    jr jr_073_4687                                ; $46cd: $18 $b8

    ld e, b                                       ; $46cf: $58
    ld [$1900], sp                                ; $46d0: $08 $00 $19
    nop                                           ; $46d3: $00
    add h                                         ; $46d4: $84
    nop                                           ; $46d5: $00
    ld bc, $b000                                  ; $46d6: $01 $00 $b0
    nop                                           ; $46d9: $00
    adc e                                         ; $46da: $8b
    add b                                         ; $46db: $80
    inc d                                         ; $46dc: $14
    nop                                           ; $46dd: $00
    dec e                                         ; $46de: $1d
    inc b                                         ; $46df: $04
    ccf                                           ; $46e0: $3f
    sub $78                                       ; $46e1: $d6 $78
    cp b                                          ; $46e3: $b8
    ld a, l                                       ; $46e4: $7d
    adc c                                         ; $46e5: $89
    rst $38                                       ; $46e6: $ff
    inc [hl]                                      ; $46e7: $34
    cp [hl]                                       ; $46e8: $be
    ld d, [hl]                                    ; $46e9: $56
    sbc [hl]                                      ; $46ea: $9e
    ld l, h                                       ; $46eb: $6c
    cp l                                          ; $46ec: $bd
    ld b, b                                       ; $46ed: $40
    rst $38                                       ; $46ee: $ff
    sbc [hl]                                      ; $46ef: $9e
    dec b                                         ; $46f0: $05
    ld bc, $010e                                  ; $46f1: $01 $0e $01
    ld b, $01                                     ; $46f4: $06 $01
    nop                                           ; $46f6: $00
    ld bc, $1110                                  ; $46f7: $01 $10 $11
    cp h                                          ; $46fa: $bc
    cp l                                          ; $46fb: $bd
    rst $38                                       ; $46fc: $ff
    rst $38                                       ; $46fd: $ff
    rst $38                                       ; $46fe: $ff
    rst $38                                       ; $46ff: $ff
    db $fc                                        ; $4700: $fc
    ld [hl], h                                    ; $4701: $74
    ld [hl], h                                    ; $4702: $74
    sub b                                         ; $4703: $90
    ld [hl], b                                    ; $4704: $70
    add b                                         ; $4705: $80
    nop                                           ; $4706: $00
    ldh a, [$03]                                  ; $4707: $f0 $03
    di                                            ; $4709: $f3
    rlca                                          ; $470a: $07
    rst $38                                       ; $470b: $ff
    rra                                           ; $470c: $1f
    rst $38                                       ; $470d: $ff
    rst $38                                       ; $470e: $ff
    rst $38                                       ; $470f: $ff
    nop                                           ; $4710: $00
    rst $38                                       ; $4711: $ff
    nop                                           ; $4712: $00
    rst $38                                       ; $4713: $ff
    nop                                           ; $4714: $00
    rst $38                                       ; $4715: $ff
    nop                                           ; $4716: $00
    rst $38                                       ; $4717: $ff
    nop                                           ; $4718: $00
    rst $38                                       ; $4719: $ff
    nop                                           ; $471a: $00
    rst $38                                       ; $471b: $ff
    nop                                           ; $471c: $00
    rst $38                                       ; $471d: $ff
    nop                                           ; $471e: $00
    rst $38                                       ; $471f: $ff
    nop                                           ; $4720: $00
    rst $38                                       ; $4721: $ff
    adc b                                         ; $4722: $88
    ld [hl], a                                    ; $4723: $77
    nop                                           ; $4724: $00
    rst $38                                       ; $4725: $ff
    ld [hl+], a                                   ; $4726: $22
    db $dd                                        ; $4727: $dd
    nop                                           ; $4728: $00
    rst $38                                       ; $4729: $ff
    ld d, l                                       ; $472a: $55
    xor d                                         ; $472b: $aa

jr_073_472c:
    xor d                                         ; $472c: $aa
    ld d, l                                       ; $472d: $55
    rst $38                                       ; $472e: $ff
    nop                                           ; $472f: $00
    rst $38                                       ; $4730: $ff
    nop                                           ; $4731: $00
    rst $38                                       ; $4732: $ff
    nop                                           ; $4733: $00
    rst $38                                       ; $4734: $ff
    nop                                           ; $4735: $00
    rst $38                                       ; $4736: $ff
    nop                                           ; $4737: $00
    db $dd                                        ; $4738: $dd
    nop                                           ; $4739: $00
    rst $38                                       ; $473a: $ff
    nop                                           ; $473b: $00
    ld d, l                                       ; $473c: $55
    nop                                           ; $473d: $00
    xor d                                         ; $473e: $aa
    nop                                           ; $473f: $00
    rst $38                                       ; $4740: $ff
    rst $38                                       ; $4741: $ff
    rst $38                                       ; $4742: $ff
    rst $38                                       ; $4743: $ff
    rst $38                                       ; $4744: $ff
    rst $38                                       ; $4745: $ff
    rst $38                                       ; $4746: $ff
    rst $38                                       ; $4747: $ff
    rst $38                                       ; $4748: $ff
    rst $38                                       ; $4749: $ff
    rst $38                                       ; $474a: $ff
    rst $38                                       ; $474b: $ff
    rst $38                                       ; $474c: $ff
    rst $38                                       ; $474d: $ff
    rst $38                                       ; $474e: $ff
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    rst $38                                       ; $4751: $ff
    rst $38                                       ; $4752: $ff
    ld a, a                                       ; $4753: $7f
    rst $38                                       ; $4754: $ff
    ld e, $ff                                     ; $4755: $1e $ff
    nop                                           ; $4757: $00
    rst $38                                       ; $4758: $ff
    nop                                           ; $4759: $00
    jp Jump_073_5c00                              ; $475a: $c3 $00 $5c


    nop                                           ; $475d: $00
    scf                                           ; $475e: $37
    ld [$e1ff], sp                                ; $475f: $08 $ff $e1
    rst $38                                       ; $4762: $ff
    add b                                         ; $4763: $80
    rst $38                                       ; $4764: $ff
    nop                                           ; $4765: $00
    rst $30                                       ; $4766: $f7
    nop                                           ; $4767: $00
    rst $30                                       ; $4768: $f7
    nop                                           ; $4769: $00
    sub d                                         ; $476a: $92
    nop                                           ; $476b: $00
    ld h, [hl]                                    ; $476c: $66
    nop                                           ; $476d: $00
    or b                                          ; $476e: $b0
    ld b, b                                       ; $476f: $40
    rst $38                                       ; $4770: $ff
    rst $38                                       ; $4771: $ff
    rst $38                                       ; $4772: $ff
    ld a, a                                       ; $4773: $7f
    rst $38                                       ; $4774: $ff
    ld e, $ff                                     ; $4775: $1e $ff
    nop                                           ; $4777: $00
    rst $38                                       ; $4778: $ff
    nop                                           ; $4779: $00
    call z, Call_073_6300                         ; $477a: $cc $00 $63
    nop                                           ; $477d: $00
    ld c, $01                                     ; $477e: $0e $01
    rst $38                                       ; $4780: $ff
    pop hl                                        ; $4781: $e1
    rst $38                                       ; $4782: $ff
    add b                                         ; $4783: $80
    rst $38                                       ; $4784: $ff
    nop                                           ; $4785: $00
    rst $30                                       ; $4786: $f7
    nop                                           ; $4787: $00
    rst $30                                       ; $4788: $f7
    nop                                           ; $4789: $00
    inc bc                                        ; $478a: $03
    nop                                           ; $478b: $00
    or $00                                        ; $478c: $f6 $00
    ret c                                         ; $478e: $d8

    jr nz, jr_073_4805                            ; $478f: $20 $74

    dec bc                                        ; $4791: $0b

jr_073_4792:
    ld c, e                                       ; $4792: $4b
    or h                                          ; $4793: $b4
    xor h                                         ; $4794: $ac
    ld d, b                                       ; $4795: $50
    sbc [hl]                                      ; $4796: $9e
    ld h, b                                       ; $4797: $60
    db $f4                                        ; $4798: $f4
    nop                                           ; $4799: $00
    ret nz                                        ; $479a: $c0

    nop                                           ; $479b: $00
    nop                                           ; $479c: $00
    nop                                           ; $479d: $00
    nop                                           ; $479e: $00
    nop                                           ; $479f: $00
    cp h                                          ; $47a0: $bc
    ld b, b                                       ; $47a1: $40
    rst $18                                       ; $47a2: $df
    jr nz, jr_073_472c                            ; $47a3: $20 $87

    ld a, b                                       ; $47a5: $78
    push hl                                       ; $47a6: $e5
    ld a, [de]                                    ; $47a7: $1a
    ld a, b                                       ; $47a8: $78
    ld b, $0e                                     ; $47a9: $06 $0e
    nop                                           ; $47ab: $00
    nop                                           ; $47ac: $00
    nop                                           ; $47ad: $00
    nop                                           ; $47ae: $00
    nop                                           ; $47af: $00
    dec sp                                        ; $47b0: $3b
    inc b                                         ; $47b1: $04
    rst $30                                       ; $47b2: $f7
    ld [$d02b], sp                                ; $47b3: $08 $2b $d0
    ret                                           ; $47b6: $c9


    jr nc, jr_073_4792                            ; $47b7: $30 $d9

    jr nz, jr_073_481b                            ; $47b9: $20 $60

    nop                                           ; $47bb: $00
    nop                                           ; $47bc: $00
    nop                                           ; $47bd: $00
    nop                                           ; $47be: $00
    nop                                           ; $47bf: $00
    ld l, [hl]                                    ; $47c0: $6e
    sub b                                         ; $47c1: $90
    ld [hl], e                                    ; $47c2: $73
    adc h                                         ; $47c3: $8c
    cp e                                          ; $47c4: $bb
    ld b, h                                       ; $47c5: $44
    add hl, sp                                    ; $47c6: $39
    add $ae                                       ; $47c7: $c6 $ae
    ld b, c                                       ; $47c9: $41
    dec h                                         ; $47ca: $25
    ld [bc], a                                    ; $47cb: $02
    nop                                           ; $47cc: $00
    nop                                           ; $47cd: $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    ld a, a                                       ; $47d0: $7f
    nop                                           ; $47d1: $00
    inc a                                         ; $47d2: $3c
    add b                                         ; $47d3: $80
    nop                                           ; $47d4: $00
    jp $ff82                                      ; $47d5: $c3 $82 $ff


    inc d                                         ; $47d8: $14
    rst $38                                       ; $47d9: $ff
    nop                                           ; $47da: $00
    rst $38                                       ; $47db: $ff
    nop                                           ; $47dc: $00
    rst $38                                       ; $47dd: $ff
    nop                                           ; $47de: $00
    rst $38                                       ; $47df: $ff
    nop                                           ; $47e0: $00
    nop                                           ; $47e1: $00
    ld h, c                                       ; $47e2: $61
    rst $38                                       ; $47e3: $ff
    inc l                                         ; $47e4: $2c
    rst $38                                       ; $47e5: $ff
    ret z                                         ; $47e6: $c8

    rst $38                                       ; $47e7: $ff
    nop                                           ; $47e8: $00
    rst $38                                       ; $47e9: $ff
    nop                                           ; $47ea: $00
    rst $38                                       ; $47eb: $ff
    nop                                           ; $47ec: $00
    rst $38                                       ; $47ed: $ff
    nop                                           ; $47ee: $00
    rst $38                                       ; $47ef: $ff
    ccf                                           ; $47f0: $3f
    nop                                           ; $47f1: $00
    adc h                                         ; $47f2: $8c
    ret nz                                        ; $47f3: $c0

    pop bc                                        ; $47f4: $c1
    di                                            ; $47f5: $f3
    and b                                         ; $47f6: $a0
    rst $38                                       ; $47f7: $ff
    ld b, b                                       ; $47f8: $40
    rst $38                                       ; $47f9: $ff
    nop                                           ; $47fa: $00
    rst $38                                       ; $47fb: $ff
    nop                                           ; $47fc: $00
    rst $38                                       ; $47fd: $ff
    nop                                           ; $47fe: $00
    rst $38                                       ; $47ff: $ff
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    scf                                           ; $4802: $37
    rst $38                                       ; $4803: $ff
    ld c, h                                       ; $4804: $4c

jr_073_4805:
    rst $38                                       ; $4805: $ff
    add c                                         ; $4806: $81
    rst $38                                       ; $4807: $ff
    nop                                           ; $4808: $00
    rst $38                                       ; $4809: $ff
    nop                                           ; $480a: $00
    rst $38                                       ; $480b: $ff
    nop                                           ; $480c: $00
    rst $38                                       ; $480d: $ff
    nop                                           ; $480e: $00
    rst $38                                       ; $480f: $ff
    cp a                                          ; $4810: $bf
    ld b, b                                       ; $4811: $40
    ccf                                           ; $4812: $3f
    nop                                           ; $4813: $00
    ld a, e                                       ; $4814: $7b
    nop                                           ; $4815: $00
    ld [hl], e                                    ; $4816: $73
    nop                                           ; $4817: $00
    inc bc                                        ; $4818: $03
    nop                                           ; $4819: $00
    inc b                                         ; $481a: $04

jr_073_481b:
    nop                                           ; $481b: $00
    ld c, c                                       ; $481c: $49
    nop                                           ; $481d: $00
    nop                                           ; $481e: $00
    nop                                           ; $481f: $00
    rst $38                                       ; $4820: $ff
    nop                                           ; $4821: $00
    rst $18                                       ; $4822: $df
    db $10                                        ; $4823: $10
    di                                            ; $4824: $f3
    db $10                                        ; $4825: $10
    ld a, [hl]                                    ; $4826: $7e
    jr c, jr_073_4863                             ; $4827: $38 $3a

    db $10                                        ; $4829: $10
    ld d, c                                       ; $482a: $51
    nop                                           ; $482b: $00
    sbc b                                         ; $482c: $98
    ld [$1c3c], sp                                ; $482d: $08 $3c $1c
    rst $38                                       ; $4830: $ff
    nop                                           ; $4831: $00
    rst $38                                       ; $4832: $ff
    nop                                           ; $4833: $00
    ld [hl], e                                    ; $4834: $73
    nop                                           ; $4835: $00
    ld h, a                                       ; $4836: $67
    nop                                           ; $4837: $00
    inc bc                                        ; $4838: $03
    nop                                           ; $4839: $00
    inc b                                         ; $483a: $04
    nop                                           ; $483b: $00
    ld bc, $0000                                  ; $483c: $01 $00 $00
    nop                                           ; $483f: $00
    rst $38                                       ; $4840: $ff
    nop                                           ; $4841: $00
    rst $18                                       ; $4842: $df
    db $10                                        ; $4843: $10
    ld [hl], h                                    ; $4844: $74
    db $10                                        ; $4845: $10
    ld a, h                                       ; $4846: $7c
    jr c, jr_073_4881                             ; $4847: $38 $38

    db $10                                        ; $4849: $10
    ld d, b                                       ; $484a: $50
    nop                                           ; $484b: $00
    sbc b                                         ; $484c: $98
    ld [$1c3c], sp                                ; $484d: $08 $3c $1c
    ld bc, $0000                                  ; $4850: $01 $00 $00
    nop                                           ; $4853: $00
    ld [bc], a                                    ; $4854: $02
    nop                                           ; $4855: $00
    inc bc                                        ; $4856: $03
    nop                                           ; $4857: $00
    inc b                                         ; $4858: $04
    nop                                           ; $4859: $00
    ld [bc], a                                    ; $485a: $02
    nop                                           ; $485b: $00
    add h                                         ; $485c: $84
    nop                                           ; $485d: $00
    inc c                                         ; $485e: $0c
    nop                                           ; $485f: $00
    sbc b                                         ; $4860: $98
    nop                                           ; $4861: $00
    ld [c], a                                     ; $4862: $e2

jr_073_4863:
    nop                                           ; $4863: $00
    ld h, b                                       ; $4864: $60
    ld h, b                                       ; $4865: $60
    dec a                                         ; $4866: $3d
    inc d                                         ; $4867: $14
    ld a, [hl]                                    ; $4868: $7e
    ld c, $fc                                     ; $4869: $0e $fc
    inc a                                         ; $486b: $3c
    ld e, a                                       ; $486c: $5f
    inc sp                                        ; $486d: $33
    db $fc                                        ; $486e: $fc
    inc c                                         ; $486f: $0c
    jp z, $8980                                   ; $4870: $ca $80 $89

    nop                                           ; $4873: $00
    ld b, b                                       ; $4874: $40
    nop                                           ; $4875: $00
    ld b, h                                       ; $4876: $44
    nop                                           ; $4877: $00
    adc d                                         ; $4878: $8a
    nop                                           ; $4879: $00
    ld [bc], a                                    ; $487a: $02
    nop                                           ; $487b: $00
    inc c                                         ; $487c: $0c
    nop                                           ; $487d: $00
    ld [bc], a                                    ; $487e: $02
    nop                                           ; $487f: $00
    cp [hl]                                       ; $4880: $be

jr_073_4881:
    ld c, b                                       ; $4881: $48
    rst $38                                       ; $4882: $ff
    ld e, $5f                                     ; $4883: $1e $5f
    inc hl                                        ; $4885: $23

jr_073_4886:
    rst $28                                       ; $4886: $ef
    dec d                                         ; $4887: $15
    ld a, h                                       ; $4888: $7c
    ld l, b                                       ; $4889: $68
    cp l                                          ; $488a: $bd
    dec d                                         ; $488b: $15
    ld a, [hl]                                    ; $488c: $7e
    inc c                                         ; $488d: $0c
    call c, $842c                                 ; $488e: $dc $2c $84
    nop                                           ; $4891: $00
    inc c                                         ; $4892: $0c
    nop                                           ; $4893: $00
    jp nz, $8080                                  ; $4894: $c2 $80 $80

    nop                                           ; $4897: $00
    ld e, b                                       ; $4898: $58
    nop                                           ; $4899: $00
    ld b, l                                       ; $489a: $45
    ld b, b                                       ; $489b: $40
    adc d                                         ; $489c: $8a
    nop                                           ; $489d: $00
    adc [hl]                                      ; $489e: $8e
    ld [bc], a                                    ; $489f: $02
    rra                                           ; $48a0: $1f
    ld l, e                                       ; $48a1: $6b
    cp h                                          ; $48a2: $bc
    ld e, h                                       ; $48a3: $5c
    ld a, $44                                     ; $48a4: $3e $44
    rst $38                                       ; $48a6: $ff
    ld a, [de]                                    ; $48a7: $1a
    ld e, a                                       ; $48a8: $5f
    dec hl                                        ; $48a9: $2b
    rst $08                                       ; $48aa: $cf
    ld [hl], $5e                                  ; $48ab: $36 $5e
    jr nz, @+$01                                  ; $48ad: $20 $ff

    ld c, a                                       ; $48af: $4f
    ld [bc], a                                    ; $48b0: $02
    nop                                           ; $48b1: $00
    rlca                                          ; $48b2: $07
    nop                                           ; $48b3: $00
    inc bc                                        ; $48b4: $03
    nop                                           ; $48b5: $00
    nop                                           ; $48b6: $00
    nop                                           ; $48b7: $00
    adc b                                         ; $48b8: $88
    adc b                                         ; $48b9: $88
    sbc $de                                       ; $48ba: $de $de
    rst $38                                       ; $48bc: $ff
    rst $38                                       ; $48bd: $ff
    rst $38                                       ; $48be: $ff
    rst $38                                       ; $48bf: $ff
    cp $ba                                        ; $48c0: $fe $ba
    ld a, [hl-]                                   ; $48c2: $3a
    ret z                                         ; $48c3: $c8

    jr c, jr_073_4886                             ; $48c4: $38 $c0

    nop                                           ; $48c6: $00
    ld hl, sp+$01                                 ; $48c7: $f8 $01
    ld sp, hl                                     ; $48c9: $f9
    inc bc                                        ; $48ca: $03
    rst $38                                       ; $48cb: $ff
    adc a                                         ; $48cc: $8f
    rst $38                                       ; $48cd: $ff
    rst $38                                       ; $48ce: $ff
    rst $38                                       ; $48cf: $ff
    nop                                           ; $48d0: $00
    rst $38                                       ; $48d1: $ff
    nop                                           ; $48d2: $00
    rst $38                                       ; $48d3: $ff
    nop                                           ; $48d4: $00
    rst $38                                       ; $48d5: $ff
    nop                                           ; $48d6: $00
    rst $38                                       ; $48d7: $ff
    nop                                           ; $48d8: $00
    rst $38                                       ; $48d9: $ff
    nop                                           ; $48da: $00
    rst $38                                       ; $48db: $ff
    nop                                           ; $48dc: $00
    rst $38                                       ; $48dd: $ff
    nop                                           ; $48de: $00
    rst $38                                       ; $48df: $ff
    nop                                           ; $48e0: $00
    rst $38                                       ; $48e1: $ff
    adc b                                         ; $48e2: $88
    ld [hl], a                                    ; $48e3: $77
    nop                                           ; $48e4: $00
    rst $38                                       ; $48e5: $ff
    ld [hl+], a                                   ; $48e6: $22
    db $dd                                        ; $48e7: $dd
    nop                                           ; $48e8: $00
    rst $38                                       ; $48e9: $ff
    ld d, l                                       ; $48ea: $55
    xor d                                         ; $48eb: $aa
    xor d                                         ; $48ec: $aa
    ld d, l                                       ; $48ed: $55
    rst $38                                       ; $48ee: $ff
    nop                                           ; $48ef: $00
    rst $38                                       ; $48f0: $ff
    nop                                           ; $48f1: $00
    rst $38                                       ; $48f2: $ff
    nop                                           ; $48f3: $00
    rst $38                                       ; $48f4: $ff
    nop                                           ; $48f5: $00
    rst $38                                       ; $48f6: $ff
    nop                                           ; $48f7: $00
    db $dd                                        ; $48f8: $dd
    nop                                           ; $48f9: $00
    rst $38                                       ; $48fa: $ff
    nop                                           ; $48fb: $00
    ld d, l                                       ; $48fc: $55
    nop                                           ; $48fd: $00
    xor d                                         ; $48fe: $aa
    nop                                           ; $48ff: $00
    rst $38                                       ; $4900: $ff
    rst $38                                       ; $4901: $ff
    rst $38                                       ; $4902: $ff
    rst $38                                       ; $4903: $ff
    rst $38                                       ; $4904: $ff
    rst $38                                       ; $4905: $ff
    rst $38                                       ; $4906: $ff
    rst $38                                       ; $4907: $ff
    rst $38                                       ; $4908: $ff
    rst $38                                       ; $4909: $ff
    rst $38                                       ; $490a: $ff
    rst $38                                       ; $490b: $ff
    rst $38                                       ; $490c: $ff
    rst $38                                       ; $490d: $ff
    rst $38                                       ; $490e: $ff
    rst $38                                       ; $490f: $ff
    rst $38                                       ; $4910: $ff
    ld a, a                                       ; $4911: $7f
    rst $38                                       ; $4912: $ff
    rra                                           ; $4913: $1f
    rst $38                                       ; $4914: $ff
    rlca                                          ; $4915: $07
    rst $38                                       ; $4916: $ff
    nop                                           ; $4917: $00
    rst $38                                       ; $4918: $ff
    nop                                           ; $4919: $00
    or c                                          ; $491a: $b1
    nop                                           ; $491b: $00
    adc [hl]                                      ; $491c: $8e
    nop                                           ; $491d: $00
    dec de                                        ; $491e: $1b
    inc b                                         ; $491f: $04
    rst $38                                       ; $4920: $ff
    ld hl, sp-$01                                 ; $4921: $f8 $ff
    ldh [rIE], a                                  ; $4923: $e0 $ff
    add b                                         ; $4925: $80
    db $fd                                        ; $4926: $fd
    nop                                           ; $4927: $00
    db $fd                                        ; $4928: $fd
    nop                                           ; $4929: $00
    call nz, Call_000_3100                        ; $492a: $c4 $00 $31
    nop                                           ; $492d: $00
    ret c                                         ; $492e: $d8

    jr nz, @+$01                                  ; $492f: $20 $ff

    ld a, a                                       ; $4931: $7f
    rst $38                                       ; $4932: $ff
    rra                                           ; $4933: $1f
    rst $38                                       ; $4934: $ff
    rlca                                          ; $4935: $07
    rst $38                                       ; $4936: $ff
    nop                                           ; $4937: $00
    rst $38                                       ; $4938: $ff
    nop                                           ; $4939: $00
    or d                                          ; $493a: $b2
    nop                                           ; $493b: $00
    sbc c                                         ; $493c: $99
    nop                                           ; $493d: $00
    rlca                                          ; $493e: $07
    nop                                           ; $493f: $00
    rst $38                                       ; $4940: $ff
    ld hl, sp-$01                                 ; $4941: $f8 $ff
    ldh [rIE], a                                  ; $4943: $e0 $ff
    add b                                         ; $4945: $80
    db $fd                                        ; $4946: $fd
    nop                                           ; $4947: $00
    db $fd                                        ; $4948: $fd
    nop                                           ; $4949: $00
    inc b                                         ; $494a: $04
    nop                                           ; $494b: $00
    ld sp, hl                                     ; $494c: $f9
    nop                                           ; $494d: $00
    ld l, h                                       ; $494e: $6c
    sub b                                         ; $494f: $90
    ld a, [hl-]                                   ; $4950: $3a
    dec b                                         ; $4951: $05
    and l                                         ; $4952: $a5
    ld e, d                                       ; $4953: $5a
    sub $28                                       ; $4954: $d6 $28
    rst $08                                       ; $4956: $cf
    jr nc, jr_073_49d3                            ; $4957: $30 $7a

    add b                                         ; $4959: $80
    ldh [rP1], a                                  ; $495a: $e0 $00
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    nop                                           ; $495e: $00
    nop                                           ; $495f: $00
    ld e, [hl]                                    ; $4960: $5e
    and b                                         ; $4961: $a0
    rst $28                                       ; $4962: $ef
    db $10                                        ; $4963: $10
    ld b, e                                       ; $4964: $43
    inc a                                         ; $4965: $3c
    ld [hl], d                                    ; $4966: $72
    dec c                                         ; $4967: $0d
    inc a                                         ; $4968: $3c
    inc bc                                        ; $4969: $03
    rlca                                          ; $496a: $07
    nop                                           ; $496b: $00
    nop                                           ; $496c: $00
    nop                                           ; $496d: $00
    nop                                           ; $496e: $00
    nop                                           ; $496f: $00
    dec e                                         ; $4970: $1d
    ld [bc], a                                    ; $4971: $02

jr_073_4972:
    ei                                            ; $4972: $fb
    inc b                                         ; $4973: $04
    sub l                                         ; $4974: $95
    ld l, b                                       ; $4975: $68
    db $e4                                        ; $4976: $e4
    jr jr_073_49e5                                ; $4977: $18 $6c

    db $10                                        ; $4979: $10
    jr nc, jr_073_497c                            ; $497a: $30 $00

jr_073_497c:
    nop                                           ; $497c: $00
    nop                                           ; $497d: $00
    nop                                           ; $497e: $00
    nop                                           ; $497f: $00
    or a                                          ; $4980: $b7
    ld c, b                                       ; $4981: $48
    cp c                                          ; $4982: $b9
    ld b, [hl]                                    ; $4983: $46
    db $dd                                        ; $4984: $dd
    ld [hl+], a                                   ; $4985: $22
    sbc h                                         ; $4986: $9c
    ld h, e                                       ; $4987: $63
    rst $10                                       ; $4988: $d7
    jr nz, jr_073_499d                            ; $4989: $20 $12

    ld bc, $0000                                  ; $498b: $01 $00 $00
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    ccf                                           ; $4990: $3f
    nop                                           ; $4991: $00
    sbc [hl]                                      ; $4992: $9e
    ret nz                                        ; $4993: $c0

    nop                                           ; $4994: $00
    pop hl                                        ; $4995: $e1
    pop bc                                        ; $4996: $c1
    rst $38                                       ; $4997: $ff
    ld a, [bc]                                    ; $4998: $0a
    rst $38                                       ; $4999: $ff
    nop                                           ; $499a: $00
    rst $38                                       ; $499b: $ff
    nop                                           ; $499c: $00

jr_073_499d:
    rst $38                                       ; $499d: $ff
    nop                                           ; $499e: $00
    rst $38                                       ; $499f: $ff
    add b                                         ; $49a0: $80
    nop                                           ; $49a1: $00

jr_073_49a2:
    jr nc, jr_073_4a23                            ; $49a2: $30 $7f

    ld d, $ff                                     ; $49a4: $16 $ff
    ld h, h                                       ; $49a6: $64
    rst $38                                       ; $49a7: $ff
    nop                                           ; $49a8: $00
    rst $38                                       ; $49a9: $ff
    nop                                           ; $49aa: $00
    rst $38                                       ; $49ab: $ff
    nop                                           ; $49ac: $00
    rst $38                                       ; $49ad: $ff
    nop                                           ; $49ae: $00
    rst $38                                       ; $49af: $ff
    rra                                           ; $49b0: $1f
    nop                                           ; $49b1: $00
    add $e0                                       ; $49b2: $c6 $e0
    ld h, b                                       ; $49b4: $60
    ld sp, hl                                     ; $49b5: $f9
    ld d, b                                       ; $49b6: $50
    rst $38                                       ; $49b7: $ff
    jr nz, @+$01                                  ; $49b8: $20 $ff

    nop                                           ; $49ba: $00
    rst $38                                       ; $49bb: $ff
    nop                                           ; $49bc: $00
    rst $38                                       ; $49bd: $ff
    nop                                           ; $49be: $00
    rst $38                                       ; $49bf: $ff
    add b                                         ; $49c0: $80

jr_073_49c1:
    nop                                           ; $49c1: $00
    dec de                                        ; $49c2: $1b
    ld a, a                                       ; $49c3: $7f
    and [hl]                                      ; $49c4: $a6
    rst $38                                       ; $49c5: $ff
    ld b, b                                       ; $49c6: $40
    rst $38                                       ; $49c7: $ff
    nop                                           ; $49c8: $00
    rst $38                                       ; $49c9: $ff
    nop                                           ; $49ca: $00
    rst $38                                       ; $49cb: $ff
    nop                                           ; $49cc: $00
    rst $38                                       ; $49cd: $ff
    nop                                           ; $49ce: $00
    rst $38                                       ; $49cf: $ff
    rst $18                                       ; $49d0: $df
    jr nz, jr_073_4972                            ; $49d1: $20 $9f

jr_073_49d3:
    nop                                           ; $49d3: $00
    dec a                                         ; $49d4: $3d
    nop                                           ; $49d5: $00
    add hl, sp                                    ; $49d6: $39
    nop                                           ; $49d7: $00
    ld bc, $0200                                  ; $49d8: $01 $00 $02
    nop                                           ; $49db: $00
    dec h                                         ; $49dc: $25
    nop                                           ; $49dd: $00
    nop                                           ; $49de: $00
    nop                                           ; $49df: $00
    rst $38                                       ; $49e0: $ff
    nop                                           ; $49e1: $00
    db $db                                        ; $49e2: $db
    db $10                                        ; $49e3: $10
    pop af                                        ; $49e4: $f1

jr_073_49e5:
    db $10                                        ; $49e5: $10
    db $fd                                        ; $49e6: $fd
    jr c, jr_073_49a2                             ; $49e7: $38 $b9

    db $10                                        ; $49e9: $10
    ld d, b                                       ; $49ea: $50
    nop                                           ; $49eb: $00
    sbc b                                         ; $49ec: $98
    ld [$1c3c], sp                                ; $49ed: $08 $3c $1c
    rst $38                                       ; $49f0: $ff
    nop                                           ; $49f1: $00
    rst $38                                       ; $49f2: $ff
    nop                                           ; $49f3: $00
    cp c                                          ; $49f4: $b9
    nop                                           ; $49f5: $00
    inc sp                                        ; $49f6: $33
    nop                                           ; $49f7: $00
    ld bc, $8200                                  ; $49f8: $01 $00 $82
    nop                                           ; $49fb: $00
    ld bc, $0000                                  ; $49fc: $01 $00 $00
    nop                                           ; $49ff: $00
    rst $38                                       ; $4a00: $ff
    nop                                           ; $4a01: $00
    rst $18                                       ; $4a02: $df
    db $10                                        ; $4a03: $10
    or [hl]                                       ; $4a04: $b6
    db $10                                        ; $4a05: $10
    db $fc                                        ; $4a06: $fc
    jr c, jr_073_49c1                             ; $4a07: $38 $b8

    db $10                                        ; $4a09: $10
    ld d, b                                       ; $4a0a: $50
    nop                                           ; $4a0b: $00
    sbc b                                         ; $4a0c: $98
    ld [$1c3c], sp                                ; $4a0d: $08 $3c $1c
    ld bc, $0000                                  ; $4a10: $01 $00 $00
    nop                                           ; $4a13: $00
    ld [bc], a                                    ; $4a14: $02
    nop                                           ; $4a15: $00
    inc bc                                        ; $4a16: $03
    nop                                           ; $4a17: $00
    inc b                                         ; $4a18: $04
    nop                                           ; $4a19: $00
    ld [bc], a                                    ; $4a1a: $02
    nop                                           ; $4a1b: $00
    add h                                         ; $4a1c: $84
    nop                                           ; $4a1d: $00
    inc c                                         ; $4a1e: $0c
    nop                                           ; $4a1f: $00
    sbc b                                         ; $4a20: $98
    nop                                           ; $4a21: $00
    ld [c], a                                     ; $4a22: $e2

jr_073_4a23:
    nop                                           ; $4a23: $00
    ld h, b                                       ; $4a24: $60
    ld h, b                                       ; $4a25: $60
    dec a                                         ; $4a26: $3d
    inc d                                         ; $4a27: $14
    ld a, [hl]                                    ; $4a28: $7e
    ld c, $fc                                     ; $4a29: $0e $fc
    inc a                                         ; $4a2b: $3c
    ld e, a                                       ; $4a2c: $5f
    inc sp                                        ; $4a2d: $33
    db $fc                                        ; $4a2e: $fc
    inc c                                         ; $4a2f: $0c
    jp z, $8980                                   ; $4a30: $ca $80 $89

    nop                                           ; $4a33: $00
    ld b, b                                       ; $4a34: $40
    nop                                           ; $4a35: $00
    ld b, h                                       ; $4a36: $44
    nop                                           ; $4a37: $00
    adc d                                         ; $4a38: $8a
    nop                                           ; $4a39: $00
    ld [bc], a                                    ; $4a3a: $02
    nop                                           ; $4a3b: $00
    inc c                                         ; $4a3c: $0c
    nop                                           ; $4a3d: $00
    ld [bc], a                                    ; $4a3e: $02
    nop                                           ; $4a3f: $00
    cp [hl]                                       ; $4a40: $be
    ld c, b                                       ; $4a41: $48
    rst $38                                       ; $4a42: $ff
    ld e, $5f                                     ; $4a43: $1e $5f
    inc hl                                        ; $4a45: $23

jr_073_4a46:
    rst $28                                       ; $4a46: $ef
    dec d                                         ; $4a47: $15
    ld a, h                                       ; $4a48: $7c
    ld l, b                                       ; $4a49: $68
    cp l                                          ; $4a4a: $bd
    dec d                                         ; $4a4b: $15
    ld a, [hl]                                    ; $4a4c: $7e
    inc c                                         ; $4a4d: $0c
    call c, $842c                                 ; $4a4e: $dc $2c $84
    nop                                           ; $4a51: $00
    inc c                                         ; $4a52: $0c
    nop                                           ; $4a53: $00
    jp nz, $8080                                  ; $4a54: $c2 $80 $80

    nop                                           ; $4a57: $00
    ld e, b                                       ; $4a58: $58
    nop                                           ; $4a59: $00
    ld b, l                                       ; $4a5a: $45
    ld b, b                                       ; $4a5b: $40
    adc d                                         ; $4a5c: $8a
    nop                                           ; $4a5d: $00
    adc [hl]                                      ; $4a5e: $8e
    ld [bc], a                                    ; $4a5f: $02
    rra                                           ; $4a60: $1f
    ld l, e                                       ; $4a61: $6b
    cp h                                          ; $4a62: $bc
    ld e, h                                       ; $4a63: $5c
    ld a, $44                                     ; $4a64: $3e $44
    rst $38                                       ; $4a66: $ff
    ld a, [de]                                    ; $4a67: $1a
    ld e, a                                       ; $4a68: $5f
    dec hl                                        ; $4a69: $2b
    rst $08                                       ; $4a6a: $cf
    ld [hl], $5e                                  ; $4a6b: $36 $5e
    jr nz, @+$01                                  ; $4a6d: $20 $ff

    ld c, a                                       ; $4a6f: $4f
    ld [bc], a                                    ; $4a70: $02
    nop                                           ; $4a71: $00
    rlca                                          ; $4a72: $07
    nop                                           ; $4a73: $00
    inc bc                                        ; $4a74: $03
    nop                                           ; $4a75: $00
    nop                                           ; $4a76: $00
    nop                                           ; $4a77: $00
    adc b                                         ; $4a78: $88
    adc b                                         ; $4a79: $88
    sbc $de                                       ; $4a7a: $de $de
    rst $38                                       ; $4a7c: $ff
    rst $38                                       ; $4a7d: $ff
    rst $38                                       ; $4a7e: $ff
    rst $38                                       ; $4a7f: $ff
    cp $ba                                        ; $4a80: $fe $ba
    ld a, [hl-]                                   ; $4a82: $3a
    ret z                                         ; $4a83: $c8

    jr c, jr_073_4a46                             ; $4a84: $38 $c0

    nop                                           ; $4a86: $00
    ld hl, sp+$01                                 ; $4a87: $f8 $01
    ld sp, hl                                     ; $4a89: $f9
    inc bc                                        ; $4a8a: $03
    rst $38                                       ; $4a8b: $ff
    adc a                                         ; $4a8c: $8f
    rst $38                                       ; $4a8d: $ff
    rst $38                                       ; $4a8e: $ff
    rst $38                                       ; $4a8f: $ff
    nop                                           ; $4a90: $00
    rst $38                                       ; $4a91: $ff
    nop                                           ; $4a92: $00
    rst $38                                       ; $4a93: $ff
    nop                                           ; $4a94: $00
    rst $38                                       ; $4a95: $ff
    nop                                           ; $4a96: $00
    rst $38                                       ; $4a97: $ff
    nop                                           ; $4a98: $00
    rst $38                                       ; $4a99: $ff
    nop                                           ; $4a9a: $00
    rst $38                                       ; $4a9b: $ff
    nop                                           ; $4a9c: $00
    rst $38                                       ; $4a9d: $ff
    nop                                           ; $4a9e: $00
    rst $38                                       ; $4a9f: $ff
    nop                                           ; $4aa0: $00
    rst $38                                       ; $4aa1: $ff
    ld b, h                                       ; $4aa2: $44
    cp e                                          ; $4aa3: $bb
    nop                                           ; $4aa4: $00
    rst $38                                       ; $4aa5: $ff
    ld de, $00ee                                  ; $4aa6: $11 $ee $00
    rst $38                                       ; $4aa9: $ff
    xor d                                         ; $4aaa: $aa
    ld d, l                                       ; $4aab: $55
    ld d, l                                       ; $4aac: $55
    xor d                                         ; $4aad: $aa
    rst $38                                       ; $4aae: $ff
    nop                                           ; $4aaf: $00
    rst $38                                       ; $4ab0: $ff
    nop                                           ; $4ab1: $00
    rst $38                                       ; $4ab2: $ff
    nop                                           ; $4ab3: $00
    rst $38                                       ; $4ab4: $ff
    nop                                           ; $4ab5: $00
    rst $38                                       ; $4ab6: $ff
    nop                                           ; $4ab7: $00
    xor $00                                       ; $4ab8: $ee $00
    rst $38                                       ; $4aba: $ff
    nop                                           ; $4abb: $00
    xor d                                         ; $4abc: $aa
    nop                                           ; $4abd: $00
    ld d, l                                       ; $4abe: $55
    nop                                           ; $4abf: $00
    rst $38                                       ; $4ac0: $ff
    rst $38                                       ; $4ac1: $ff
    rst $38                                       ; $4ac2: $ff
    rst $38                                       ; $4ac3: $ff
    rst $38                                       ; $4ac4: $ff
    rst $38                                       ; $4ac5: $ff
    rst $38                                       ; $4ac6: $ff
    rst $38                                       ; $4ac7: $ff
    rst $38                                       ; $4ac8: $ff
    rst $38                                       ; $4ac9: $ff
    rst $38                                       ; $4aca: $ff
    rst $38                                       ; $4acb: $ff
    rst $38                                       ; $4acc: $ff
    rst $38                                       ; $4acd: $ff
    rst $38                                       ; $4ace: $ff
    rst $38                                       ; $4acf: $ff
    rst $38                                       ; $4ad0: $ff
    rra                                           ; $4ad1: $1f
    rst $38                                       ; $4ad2: $ff
    rlca                                          ; $4ad3: $07
    rst $38                                       ; $4ad4: $ff
    ld bc, $007f                                  ; $4ad5: $01 $7f $00
    ld a, a                                       ; $4ad8: $7f
    nop                                           ; $4ad9: $00
    jr z, jr_073_4adc                             ; $4ada: $28 $00

jr_073_4adc:
    ld h, a                                       ; $4adc: $67
    nop                                           ; $4add: $00
    dec c                                         ; $4ade: $0d
    ld [bc], a                                    ; $4adf: $02
    rst $38                                       ; $4ae0: $ff
    cp $ff                                        ; $4ae1: $fe $ff
    ld hl, sp-$01                                 ; $4ae3: $f8 $ff
    ldh [rIE], a                                  ; $4ae5: $e0 $ff
    nop                                           ; $4ae7: $00
    rst $38                                       ; $4ae8: $ff
    nop                                           ; $4ae9: $00
    push hl                                       ; $4aea: $e5
    nop                                           ; $4aeb: $00
    jr jr_073_4aee                                ; $4aec: $18 $00

jr_073_4aee:
    db $ec                                        ; $4aee: $ec
    db $10                                        ; $4aef: $10
    rst $38                                       ; $4af0: $ff
    rra                                           ; $4af1: $1f
    rst $38                                       ; $4af2: $ff
    rlca                                          ; $4af3: $07
    rst $38                                       ; $4af4: $ff
    ld bc, $007f                                  ; $4af5: $01 $7f $00
    ld a, a                                       ; $4af8: $7f
    nop                                           ; $4af9: $00
    inc l                                         ; $4afa: $2c
    nop                                           ; $4afb: $00
    ld h, h                                       ; $4afc: $64
    nop                                           ; $4afd: $00
    inc bc                                        ; $4afe: $03
    nop                                           ; $4aff: $00
    rst $38                                       ; $4b00: $ff
    cp $ff                                        ; $4b01: $fe $ff
    ld hl, sp-$01                                 ; $4b03: $f8 $ff
    ldh [rIE], a                                  ; $4b05: $e0 $ff
    nop                                           ; $4b07: $00
    rst $38                                       ; $4b08: $ff
    nop                                           ; $4b09: $00
    ld bc, $fc00                                  ; $4b0a: $01 $00 $fc
    nop                                           ; $4b0d: $00
    or [hl]                                       ; $4b0e: $b6
    ld c, b                                       ; $4b0f: $48
    sbc l                                         ; $4b10: $9d
    ld [bc], a                                    ; $4b11: $02
    jp nc, $eb2d                                  ; $4b12: $d2 $2d $eb

    inc d                                         ; $4b15: $14
    ld h, a                                       ; $4b16: $67
    sbc b                                         ; $4b17: $98
    cp l                                          ; $4b18: $bd
    ld b, b                                       ; $4b19: $40
    ld [hl], b                                    ; $4b1a: $70
    add b                                         ; $4b1b: $80
    nop                                           ; $4b1c: $00
    nop                                           ; $4b1d: $00
    nop                                           ; $4b1e: $00
    nop                                           ; $4b1f: $00
    cpl                                           ; $4b20: $2f
    ret nc                                        ; $4b21: $d0

    rst $30                                       ; $4b22: $f7
    ld [$1e21], sp                                ; $4b23: $08 $21 $1e
    cp c                                          ; $4b26: $b9
    ld b, $1e                                     ; $4b27: $06 $1e
    ld bc, $0003                                  ; $4b29: $01 $03 $00
    nop                                           ; $4b2c: $00
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    ld c, $01                                     ; $4b30: $0e $01
    db $fd                                        ; $4b32: $fd
    ld [bc], a                                    ; $4b33: $02
    jp z, $7234                                   ; $4b34: $ca $34 $72

    adc h                                         ; $4b37: $8c
    ld [hl], $88                                  ; $4b38: $36 $88
    sbc b                                         ; $4b3a: $98
    nop                                           ; $4b3b: $00
    nop                                           ; $4b3c: $00
    nop                                           ; $4b3d: $00
    nop                                           ; $4b3e: $00
    nop                                           ; $4b3f: $00
    db $db                                        ; $4b40: $db
    inc h                                         ; $4b41: $24
    call c, $ee23                                 ; $4b42: $dc $23 $ee
    ld de, $314e                                  ; $4b45: $11 $4e $31
    ld l, e                                       ; $4b48: $6b
    db $10                                        ; $4b49: $10
    add hl, bc                                    ; $4b4a: $09
    nop                                           ; $4b4b: $00
    nop                                           ; $4b4c: $00
    nop                                           ; $4b4d: $00
    nop                                           ; $4b4e: $00
    nop                                           ; $4b4f: $00
    rra                                           ; $4b50: $1f
    nop                                           ; $4b51: $00
    rst $08                                       ; $4b52: $cf
    ldh [rP1], a                                  ; $4b53: $e0 $00
    ldh a, [$60]                                  ; $4b55: $f0 $60
    rst $38                                       ; $4b57: $ff
    dec b                                         ; $4b58: $05
    rst $38                                       ; $4b59: $ff
    nop                                           ; $4b5a: $00
    rst $38                                       ; $4b5b: $ff
    nop                                           ; $4b5c: $00
    rst $38                                       ; $4b5d: $ff
    nop                                           ; $4b5e: $00
    rst $38                                       ; $4b5f: $ff
    ret nz                                        ; $4b60: $c0

    nop                                           ; $4b61: $00
    jr jr_073_4ba3                                ; $4b62: $18 $3f

    dec bc                                        ; $4b64: $0b
    rst $38                                       ; $4b65: $ff
    or d                                          ; $4b66: $b2
    rst $38                                       ; $4b67: $ff
    nop                                           ; $4b68: $00
    rst $38                                       ; $4b69: $ff
    nop                                           ; $4b6a: $00
    rst $38                                       ; $4b6b: $ff
    nop                                           ; $4b6c: $00
    rst $38                                       ; $4b6d: $ff
    nop                                           ; $4b6e: $00
    rst $38                                       ; $4b6f: $ff
    rrca                                          ; $4b70: $0f
    nop                                           ; $4b71: $00
    ld h, e                                       ; $4b72: $63
    ldh a, [$30]                                  ; $4b73: $f0 $30
    db $fc                                        ; $4b75: $fc
    jr z, @+$01                                   ; $4b76: $28 $ff

    db $10                                        ; $4b78: $10
    rst $38                                       ; $4b79: $ff
    nop                                           ; $4b7a: $00
    rst $38                                       ; $4b7b: $ff
    nop                                           ; $4b7c: $00
    rst $38                                       ; $4b7d: $ff
    nop                                           ; $4b7e: $00
    rst $38                                       ; $4b7f: $ff
    ret nz                                        ; $4b80: $c0

    nop                                           ; $4b81: $00
    dec c                                         ; $4b82: $0d
    ccf                                           ; $4b83: $3f
    ld d, e                                       ; $4b84: $53
    rst $38                                       ; $4b85: $ff
    jr nz, @+$01                                  ; $4b86: $20 $ff

    nop                                           ; $4b88: $00
    rst $38                                       ; $4b89: $ff
    nop                                           ; $4b8a: $00
    rst $38                                       ; $4b8b: $ff
    nop                                           ; $4b8c: $00
    rst $38                                       ; $4b8d: $ff
    nop                                           ; $4b8e: $00
    rst $38                                       ; $4b8f: $ff
    rst $28                                       ; $4b90: $ef
    db $10                                        ; $4b91: $10
    rst $08                                       ; $4b92: $cf
    nop                                           ; $4b93: $00
    ld e, $00                                     ; $4b94: $1e $00
    inc e                                         ; $4b96: $1c
    nop                                           ; $4b97: $00
    nop                                           ; $4b98: $00
    nop                                           ; $4b99: $00
    ld bc, $1200                                  ; $4b9a: $01 $00 $12
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    nop                                           ; $4b9f: $00
    rst $38                                       ; $4ba0: $ff
    nop                                           ; $4ba1: $00
    db $ed                                        ; $4ba2: $ed

jr_073_4ba3:
    ld [$08f8], sp                                ; $4ba3: $08 $f8 $08
    cp $1c                                        ; $4ba6: $fe $1c
    db $dc, $08, $28                              ; $4ba8: $dc $08 $28
    nop                                           ; $4bab: $00
    call z, Call_000_1e04                         ; $4bac: $cc $04 $1e
    ld c, $ff                                     ; $4baf: $0e $ff
    nop                                           ; $4bb1: $00
    rst $38                                       ; $4bb2: $ff
    nop                                           ; $4bb3: $00
    call c, $9900                                 ; $4bb4: $dc $00 $99
    nop                                           ; $4bb7: $00
    add b                                         ; $4bb8: $80
    nop                                           ; $4bb9: $00
    ld b, c                                       ; $4bba: $41
    nop                                           ; $4bbb: $00
    nop                                           ; $4bbc: $00
    nop                                           ; $4bbd: $00
    nop                                           ; $4bbe: $00
    nop                                           ; $4bbf: $00
    rst $38                                       ; $4bc0: $ff
    nop                                           ; $4bc1: $00
    rst $28                                       ; $4bc2: $ef
    ld [$08db], sp                                ; $4bc3: $08 $db $08
    cp $1c                                        ; $4bc6: $fe $1c
    db $dc, $08, $28                              ; $4bc8: $dc $08 $28
    nop                                           ; $4bcb: $00
    call z, Call_000_1e04                         ; $4bcc: $cc $04 $1e
    ld c, $00                                     ; $4bcf: $0e $00
    nop                                           ; $4bd1: $00
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    ld bc, $8100                                  ; $4bd4: $01 $00 $81
    nop                                           ; $4bd7: $00
    ld [bc], a                                    ; $4bd8: $02
    nop                                           ; $4bd9: $00
    ld bc, $c200                                  ; $4bda: $01 $00 $c2
    add b                                         ; $4bdd: $80
    ld b, $00                                     ; $4bde: $06 $00
    call z, Call_073_7100                         ; $4be0: $cc $00 $71
    nop                                           ; $4be3: $00
    jr nc, jr_073_4c16                            ; $4be4: $30 $30

    sbc [hl]                                      ; $4be6: $9e
    ld a, [bc]                                    ; $4be7: $0a
    ccf                                           ; $4be8: $3f
    rlca                                          ; $4be9: $07
    ld a, [hl]                                    ; $4bea: $7e
    ld e, $2f                                     ; $4beb: $1e $2f
    add hl, de                                    ; $4bed: $19
    ld a, [hl]                                    ; $4bee: $7e
    ld b, $65                                     ; $4bef: $06 $65
    ld b, b                                       ; $4bf1: $40
    call nz, $a000                                ; $4bf2: $c4 $00 $a0
    add b                                         ; $4bf5: $80
    and d                                         ; $4bf6: $a2
    add b                                         ; $4bf7: $80
    ld b, l                                       ; $4bf8: $45
    nop                                           ; $4bf9: $00
    add c                                         ; $4bfa: $81
    add b                                         ; $4bfb: $80
    ld b, $00                                     ; $4bfc: $06 $00
    ld bc, $5f00                                  ; $4bfe: $01 $00 $5f
    inc h                                         ; $4c01: $24
    rst $38                                       ; $4c02: $ff
    rrca                                          ; $4c03: $0f
    cpl                                           ; $4c04: $2f
    ld de, $0a77                                  ; $4c05: $11 $77 $0a
    ld a, $34                                     ; $4c08: $3e $34
    ld e, [hl]                                    ; $4c0a: $5e
    ld a, [bc]                                    ; $4c0b: $0a
    ccf                                           ; $4c0c: $3f
    ld b, $6e                                     ; $4c0d: $06 $6e
    ld d, $c2                                     ; $4c0f: $16 $c2
    add b                                         ; $4c11: $80
    ld b, $00                                     ; $4c12: $06 $00
    ld h, c                                       ; $4c14: $61
    ld b, b                                       ; $4c15: $40

jr_073_4c16:
    ret nz                                        ; $4c16: $c0

    nop                                           ; $4c17: $00
    xor h                                         ; $4c18: $ac
    add b                                         ; $4c19: $80
    and d                                         ; $4c1a: $a2
    jr nz, jr_073_4c62                            ; $4c1b: $20 $45

    nop                                           ; $4c1d: $00
    rst $00                                       ; $4c1e: $c7
    add c                                         ; $4c1f: $81
    rrca                                          ; $4c20: $0f
    dec [hl]                                      ; $4c21: $35
    ld e, [hl]                                    ; $4c22: $5e
    ld l, $1f                                     ; $4c23: $2e $1f
    ld [hl+], a                                   ; $4c25: $22
    ld a, a                                       ; $4c26: $7f
    dec c                                         ; $4c27: $0d
    cpl                                           ; $4c28: $2f
    dec d                                         ; $4c29: $15
    rst $20                                       ; $4c2a: $e7
    dec de                                        ; $4c2b: $1b
    cpl                                           ; $4c2c: $2f
    db $10                                        ; $4c2d: $10
    ld a, a                                       ; $4c2e: $7f
    daa                                           ; $4c2f: $27
    ld bc, $0300                                  ; $4c30: $01 $00 $03
    nop                                           ; $4c33: $00
    ld bc, $0000                                  ; $4c34: $01 $00 $00
    nop                                           ; $4c37: $00
    call nz, $efc4                                ; $4c38: $c4 $c4 $ef
    rst $28                                       ; $4c3b: $ef
    rst $38                                       ; $4c3c: $ff
    rst $38                                       ; $4c3d: $ff
    rst $38                                       ; $4c3e: $ff
    rst $38                                       ; $4c3f: $ff
    ld a, a                                       ; $4c40: $7f
    ld e, l                                       ; $4c41: $5d
    sbc l                                         ; $4c42: $9d
    ld h, h                                       ; $4c43: $64
    sbc h                                         ; $4c44: $9c
    ld h, b                                       ; $4c45: $60
    nop                                           ; $4c46: $00
    ld a, h                                       ; $4c47: $7c
    nop                                           ; $4c48: $00
    ld a, h                                       ; $4c49: $7c
    ld bc, $c77f                                  ; $4c4a: $01 $7f $c7
    rst $38                                       ; $4c4d: $ff
    rst $38                                       ; $4c4e: $ff
    rst $38                                       ; $4c4f: $ff
    nop                                           ; $4c50: $00
    rst $38                                       ; $4c51: $ff
    nop                                           ; $4c52: $00
    rst $38                                       ; $4c53: $ff
    nop                                           ; $4c54: $00
    rst $38                                       ; $4c55: $ff
    nop                                           ; $4c56: $00
    rst $38                                       ; $4c57: $ff
    nop                                           ; $4c58: $00
    rst $38                                       ; $4c59: $ff
    nop                                           ; $4c5a: $00
    rst $38                                       ; $4c5b: $ff
    nop                                           ; $4c5c: $00
    rst $38                                       ; $4c5d: $ff
    nop                                           ; $4c5e: $00
    rst $38                                       ; $4c5f: $ff
    nop                                           ; $4c60: $00
    rst $38                                       ; $4c61: $ff

jr_073_4c62:
    ld b, h                                       ; $4c62: $44
    cp e                                          ; $4c63: $bb
    nop                                           ; $4c64: $00
    rst $38                                       ; $4c65: $ff
    ld de, $00ee                                  ; $4c66: $11 $ee $00
    rst $38                                       ; $4c69: $ff
    xor d                                         ; $4c6a: $aa
    ld d, l                                       ; $4c6b: $55
    ld d, l                                       ; $4c6c: $55
    xor d                                         ; $4c6d: $aa
    rst $38                                       ; $4c6e: $ff
    nop                                           ; $4c6f: $00
    rst $38                                       ; $4c70: $ff
    nop                                           ; $4c71: $00
    rst $38                                       ; $4c72: $ff
    nop                                           ; $4c73: $00
    rst $38                                       ; $4c74: $ff
    nop                                           ; $4c75: $00
    rst $38                                       ; $4c76: $ff
    nop                                           ; $4c77: $00
    xor $00                                       ; $4c78: $ee $00
    rst $38                                       ; $4c7a: $ff
    nop                                           ; $4c7b: $00
    xor d                                         ; $4c7c: $aa
    nop                                           ; $4c7d: $00
    ld d, l                                       ; $4c7e: $55
    nop                                           ; $4c7f: $00
    rst $38                                       ; $4c80: $ff
    rst $38                                       ; $4c81: $ff
    rst $38                                       ; $4c82: $ff
    rst $38                                       ; $4c83: $ff
    rst $38                                       ; $4c84: $ff
    rst $38                                       ; $4c85: $ff
    rst $38                                       ; $4c86: $ff
    rst $38                                       ; $4c87: $ff
    rst $38                                       ; $4c88: $ff
    rst $38                                       ; $4c89: $ff
    rst $38                                       ; $4c8a: $ff
    rst $38                                       ; $4c8b: $ff
    rst $38                                       ; $4c8c: $ff
    rst $38                                       ; $4c8d: $ff
    rst $38                                       ; $4c8e: $ff
    rst $38                                       ; $4c8f: $ff
    rst $38                                       ; $4c90: $ff
    add a                                         ; $4c91: $87
    rst $38                                       ; $4c92: $ff
    ld bc, $00ff                                  ; $4c93: $01 $ff $00
    rst $18                                       ; $4c96: $df
    nop                                           ; $4c97: $00
    ld e, a                                       ; $4c98: $5f
    nop                                           ; $4c99: $00
    ld c, b                                       ; $4c9a: $48
    nop                                           ; $4c9b: $00
    dec de                                        ; $4c9c: $1b
    nop                                           ; $4c9d: $00
    ld b, $01                                     ; $4c9e: $06 $01
    rst $38                                       ; $4ca0: $ff
    rst $38                                       ; $4ca1: $ff
    rst $38                                       ; $4ca2: $ff
    cp $ff                                        ; $4ca3: $fe $ff
    ld a, b                                       ; $4ca5: $78
    rst $38                                       ; $4ca6: $ff
    nop                                           ; $4ca7: $00
    rst $38                                       ; $4ca8: $ff
    nop                                           ; $4ca9: $00
    inc sp                                        ; $4caa: $33
    nop                                           ; $4cab: $00
    adc l                                         ; $4cac: $8d
    nop                                           ; $4cad: $00
    or $08                                        ; $4cae: $f6 $08
    rst $38                                       ; $4cb0: $ff
    add a                                         ; $4cb1: $87
    rst $38                                       ; $4cb2: $ff
    ld bc, $00ff                                  ; $4cb3: $01 $ff $00
    rst $18                                       ; $4cb6: $df
    nop                                           ; $4cb7: $00
    rst $18                                       ; $4cb8: $df
    nop                                           ; $4cb9: $00
    ld c, e                                       ; $4cba: $4b
    nop                                           ; $4cbb: $00
    jr jr_073_4cbe                                ; $4cbc: $18 $00

jr_073_4cbe:
    ld bc, $ff00                                  ; $4cbe: $01 $00 $ff
    rst $38                                       ; $4cc1: $ff
    rst $38                                       ; $4cc2: $ff
    cp $ff                                        ; $4cc3: $fe $ff
    ld a, b                                       ; $4cc5: $78
    rst $38                                       ; $4cc6: $ff
    nop                                           ; $4cc7: $00
    rst $38                                       ; $4cc8: $ff
    nop                                           ; $4cc9: $00
    ld bc, $7e00                                  ; $4cca: $01 $00 $7e
    nop                                           ; $4ccd: $00
    db $db                                        ; $4cce: $db
    inc h                                         ; $4ccf: $24
    adc $01                                       ; $4cd0: $ce $01
    ld l, c                                       ; $4cd2: $69
    sub [hl]                                      ; $4cd3: $96
    ld [hl], l                                    ; $4cd4: $75
    adc d                                         ; $4cd5: $8a
    inc sp                                        ; $4cd6: $33
    call z, Call_000_20de                         ; $4cd7: $cc $de $20
    cp b                                          ; $4cda: $b8
    ld b, b                                       ; $4cdb: $40
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    nop                                           ; $4cde: $00
    nop                                           ; $4cdf: $00
    sub a                                         ; $4ce0: $97
    ld l, b                                       ; $4ce1: $68
    ld a, e                                       ; $4ce2: $7b
    add h                                         ; $4ce3: $84
    sub b                                         ; $4ce4: $90
    rrca                                          ; $4ce5: $0f
    call c, $8f03                                 ; $4ce6: $dc $03 $8f
    nop                                           ; $4ce9: $00
    ld bc, $0000                                  ; $4cea: $01 $00 $00
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    add a                                         ; $4cf0: $87
    nop                                           ; $4cf1: $00
    cp $01                                        ; $4cf2: $fe $01
    push hl                                       ; $4cf4: $e5
    ld a, [de]                                    ; $4cf5: $1a
    cp c                                          ; $4cf6: $b9
    ld b, [hl]                                    ; $4cf7: $46
    dec de                                        ; $4cf8: $1b
    call nz, Call_000_00cc                        ; $4cf9: $c4 $cc $00
    nop                                           ; $4cfc: $00
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    nop                                           ; $4cff: $00
    ld l, l                                       ; $4d00: $6d
    sub d                                         ; $4d01: $92
    xor $11                                       ; $4d02: $ee $11
    ld [hl], a                                    ; $4d04: $77
    ld [$1827], sp                                ; $4d05: $08 $27 $18
    dec [hl]                                      ; $4d08: $35
    ld [$0004], sp                                ; $4d09: $08 $04 $00
    nop                                           ; $4d0c: $00
    nop                                           ; $4d0d: $00
    nop                                           ; $4d0e: $00
    nop                                           ; $4d0f: $00
    rrca                                          ; $4d10: $0f
    nop                                           ; $4d11: $00
    rst $20                                       ; $4d12: $e7
    ldh a, [$80]                                  ; $4d13: $f0 $80
    ld hl, sp+$30                                 ; $4d15: $f8 $30
    rst $38                                       ; $4d17: $ff
    ld [bc], a                                    ; $4d18: $02
    rst $38                                       ; $4d19: $ff
    nop                                           ; $4d1a: $00
    rst $38                                       ; $4d1b: $ff
    nop                                           ; $4d1c: $00
    rst $38                                       ; $4d1d: $ff
    nop                                           ; $4d1e: $00
    rst $38                                       ; $4d1f: $ff
    ldh [rP1], a                                  ; $4d20: $e0 $00
    adc h                                         ; $4d22: $8c
    rra                                           ; $4d23: $1f
    dec b                                         ; $4d24: $05
    ld a, a                                       ; $4d25: $7f
    ld e, c                                       ; $4d26: $59
    rst $38                                       ; $4d27: $ff
    add b                                         ; $4d28: $80
    rst $38                                       ; $4d29: $ff
    nop                                           ; $4d2a: $00
    rst $38                                       ; $4d2b: $ff
    nop                                           ; $4d2c: $00
    rst $38                                       ; $4d2d: $ff
    nop                                           ; $4d2e: $00
    rst $38                                       ; $4d2f: $ff
    rlca                                          ; $4d30: $07
    nop                                           ; $4d31: $00
    ld sp, $98f8                                  ; $4d32: $31 $f8 $98
    cp $14                                        ; $4d35: $fe $14
    rst $38                                       ; $4d37: $ff
    ld [$00ff], sp                                ; $4d38: $08 $ff $00
    rst $38                                       ; $4d3b: $ff
    nop                                           ; $4d3c: $00
    rst $38                                       ; $4d3d: $ff
    nop                                           ; $4d3e: $00
    rst $38                                       ; $4d3f: $ff
    ldh [rP1], a                                  ; $4d40: $e0 $00
    add [hl]                                      ; $4d42: $86
    rra                                           ; $4d43: $1f
    add hl, hl                                    ; $4d44: $29
    ld a, a                                       ; $4d45: $7f
    db $10                                        ; $4d46: $10
    rst $38                                       ; $4d47: $ff
    nop                                           ; $4d48: $00
    rst $38                                       ; $4d49: $ff
    nop                                           ; $4d4a: $00
    rst $38                                       ; $4d4b: $ff
    nop                                           ; $4d4c: $00
    rst $38                                       ; $4d4d: $ff
    nop                                           ; $4d4e: $00
    rst $38                                       ; $4d4f: $ff
    rst $30                                       ; $4d50: $f7
    ld [$00e7], sp                                ; $4d51: $08 $e7 $00
    adc a                                         ; $4d54: $8f
    nop                                           ; $4d55: $00
    ld c, $00                                     ; $4d56: $0e $00
    nop                                           ; $4d58: $00
    nop                                           ; $4d59: $00
    nop                                           ; $4d5a: $00
    nop                                           ; $4d5b: $00
    add hl, bc                                    ; $4d5c: $09
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    nop                                           ; $4d5f: $00
    rst $38                                       ; $4d60: $ff
    nop                                           ; $4d61: $00
    xor $08                                       ; $4d62: $ee $08
    ld a, d                                       ; $4d64: $7a
    ld [$1c7f], sp                                ; $4d65: $08 $7f $1c
    ld e, [hl]                                    ; $4d68: $5e
    ld [$00a8], sp                                ; $4d69: $08 $a8 $00
    adc $04                                       ; $4d6c: $ce $04
    ld e, $0e                                     ; $4d6e: $1e $0e
    rst $38                                       ; $4d70: $ff
    nop                                           ; $4d71: $00
    rst $38                                       ; $4d72: $ff
    nop                                           ; $4d73: $00
    ld l, [hl]                                    ; $4d74: $6e
    nop                                           ; $4d75: $00
    ld c, h                                       ; $4d76: $4c
    nop                                           ; $4d77: $00
    ld b, b                                       ; $4d78: $40
    nop                                           ; $4d79: $00
    jr nz, jr_073_4d7c                            ; $4d7a: $20 $00

jr_073_4d7c:
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    rst $38                                       ; $4d80: $ff
    nop                                           ; $4d81: $00
    rst $28                                       ; $4d82: $ef
    ld [$087b], sp                                ; $4d83: $08 $7b $08
    rst $38                                       ; $4d86: $ff
    inc e                                         ; $4d87: $1c
    ld e, h                                       ; $4d88: $5c
    ld [$00a8], sp                                ; $4d89: $08 $a8 $00
    call z, Call_000_1e04                         ; $4d8c: $cc $04 $1e
    ld c, $00                                     ; $4d8f: $0e $00
    nop                                           ; $4d91: $00
    nop                                           ; $4d92: $00
    nop                                           ; $4d93: $00
    ld bc, $8100                                  ; $4d94: $01 $00 $81
    nop                                           ; $4d97: $00
    ld [bc], a                                    ; $4d98: $02
    nop                                           ; $4d99: $00
    ld bc, $c200                                  ; $4d9a: $01 $00 $c2
    add b                                         ; $4d9d: $80
    ld b, $00                                     ; $4d9e: $06 $00
    call z, Call_073_7100                         ; $4da0: $cc $00 $71
    nop                                           ; $4da3: $00
    jr nc, jr_073_4dd6                            ; $4da4: $30 $30

    sbc [hl]                                      ; $4da6: $9e
    ld a, [bc]                                    ; $4da7: $0a
    ccf                                           ; $4da8: $3f
    rlca                                          ; $4da9: $07
    ld a, [hl]                                    ; $4daa: $7e
    ld e, $2f                                     ; $4dab: $1e $2f
    add hl, de                                    ; $4dad: $19
    ld a, [hl]                                    ; $4dae: $7e
    ld b, $65                                     ; $4daf: $06 $65
    ld b, b                                       ; $4db1: $40
    call nz, $a000                                ; $4db2: $c4 $00 $a0
    add b                                         ; $4db5: $80
    and d                                         ; $4db6: $a2
    add b                                         ; $4db7: $80
    ld b, l                                       ; $4db8: $45
    nop                                           ; $4db9: $00
    add c                                         ; $4dba: $81
    add b                                         ; $4dbb: $80
    ld b, $00                                     ; $4dbc: $06 $00
    ld bc, $5f00                                  ; $4dbe: $01 $00 $5f
    inc h                                         ; $4dc1: $24
    rst $38                                       ; $4dc2: $ff
    rrca                                          ; $4dc3: $0f
    cpl                                           ; $4dc4: $2f
    ld de, $0a77                                  ; $4dc5: $11 $77 $0a
    ld a, $34                                     ; $4dc8: $3e $34
    ld e, [hl]                                    ; $4dca: $5e
    ld a, [bc]                                    ; $4dcb: $0a
    ccf                                           ; $4dcc: $3f
    ld b, $6e                                     ; $4dcd: $06 $6e
    ld d, $c2                                     ; $4dcf: $16 $c2
    add b                                         ; $4dd1: $80
    ld b, $00                                     ; $4dd2: $06 $00
    ld h, c                                       ; $4dd4: $61
    ld b, b                                       ; $4dd5: $40

jr_073_4dd6:
    ret nz                                        ; $4dd6: $c0

    nop                                           ; $4dd7: $00
    xor h                                         ; $4dd8: $ac
    add b                                         ; $4dd9: $80
    and d                                         ; $4dda: $a2
    jr nz, jr_073_4e22                            ; $4ddb: $20 $45

    nop                                           ; $4ddd: $00
    rst $00                                       ; $4dde: $c7
    add c                                         ; $4ddf: $81
    rrca                                          ; $4de0: $0f
    dec [hl]                                      ; $4de1: $35
    ld e, [hl]                                    ; $4de2: $5e
    ld l, $1f                                     ; $4de3: $2e $1f
    ld [hl+], a                                   ; $4de5: $22
    ld a, a                                       ; $4de6: $7f
    dec c                                         ; $4de7: $0d
    cpl                                           ; $4de8: $2f
    dec d                                         ; $4de9: $15
    rst $20                                       ; $4dea: $e7
    dec de                                        ; $4deb: $1b
    cpl                                           ; $4dec: $2f
    db $10                                        ; $4ded: $10
    ld a, a                                       ; $4dee: $7f
    daa                                           ; $4def: $27
    ld bc, $0300                                  ; $4df0: $01 $00 $03
    nop                                           ; $4df3: $00
    ld bc, $0000                                  ; $4df4: $01 $00 $00
    nop                                           ; $4df7: $00
    call nz, $efc4                                ; $4df8: $c4 $c4 $ef
    rst $28                                       ; $4dfb: $ef
    rst $38                                       ; $4dfc: $ff
    rst $38                                       ; $4dfd: $ff
    rst $38                                       ; $4dfe: $ff
    rst $38                                       ; $4dff: $ff
    ld a, a                                       ; $4e00: $7f
    ld e, l                                       ; $4e01: $5d
    sbc l                                         ; $4e02: $9d
    ld h, h                                       ; $4e03: $64
    sbc h                                         ; $4e04: $9c
    ld h, b                                       ; $4e05: $60
    nop                                           ; $4e06: $00
    ld a, h                                       ; $4e07: $7c
    nop                                           ; $4e08: $00
    ld a, h                                       ; $4e09: $7c
    ld bc, $c77f                                  ; $4e0a: $01 $7f $c7
    rst $38                                       ; $4e0d: $ff
    rst $38                                       ; $4e0e: $ff
    rst $38                                       ; $4e0f: $ff
    nop                                           ; $4e10: $00
    rst $38                                       ; $4e11: $ff
    nop                                           ; $4e12: $00
    rst $38                                       ; $4e13: $ff
    nop                                           ; $4e14: $00
    rst $38                                       ; $4e15: $ff
    nop                                           ; $4e16: $00
    rst $38                                       ; $4e17: $ff
    nop                                           ; $4e18: $00
    rst $38                                       ; $4e19: $ff
    nop                                           ; $4e1a: $00
    rst $38                                       ; $4e1b: $ff
    nop                                           ; $4e1c: $00
    rst $38                                       ; $4e1d: $ff
    nop                                           ; $4e1e: $00
    rst $38                                       ; $4e1f: $ff
    nop                                           ; $4e20: $00
    rst $38                                       ; $4e21: $ff

jr_073_4e22:
    ld b, h                                       ; $4e22: $44
    cp e                                          ; $4e23: $bb
    nop                                           ; $4e24: $00
    rst $38                                       ; $4e25: $ff
    ld de, $00ee                                  ; $4e26: $11 $ee $00
    rst $38                                       ; $4e29: $ff
    xor d                                         ; $4e2a: $aa
    ld d, l                                       ; $4e2b: $55
    ld d, l                                       ; $4e2c: $55
    xor d                                         ; $4e2d: $aa
    rst $38                                       ; $4e2e: $ff
    nop                                           ; $4e2f: $00
    rst $38                                       ; $4e30: $ff
    nop                                           ; $4e31: $00
    rst $38                                       ; $4e32: $ff
    nop                                           ; $4e33: $00
    rst $38                                       ; $4e34: $ff
    nop                                           ; $4e35: $00
    rst $38                                       ; $4e36: $ff
    nop                                           ; $4e37: $00
    ld [hl], a                                    ; $4e38: $77
    nop                                           ; $4e39: $00
    rst $38                                       ; $4e3a: $ff
    nop                                           ; $4e3b: $00
    ld d, l                                       ; $4e3c: $55
    nop                                           ; $4e3d: $00
    xor d                                         ; $4e3e: $aa
    nop                                           ; $4e3f: $00
    rst $38                                       ; $4e40: $ff
    rst $38                                       ; $4e41: $ff
    rst $38                                       ; $4e42: $ff
    rst $38                                       ; $4e43: $ff
    rst $38                                       ; $4e44: $ff
    rst $38                                       ; $4e45: $ff
    rst $38                                       ; $4e46: $ff
    rst $38                                       ; $4e47: $ff
    rst $38                                       ; $4e48: $ff
    rst $38                                       ; $4e49: $ff
    rst $38                                       ; $4e4a: $ff
    rst $38                                       ; $4e4b: $ff
    rst $38                                       ; $4e4c: $ff
    rst $38                                       ; $4e4d: $ff
    rst $38                                       ; $4e4e: $ff
    rst $38                                       ; $4e4f: $ff
    rst $38                                       ; $4e50: $ff
    pop hl                                        ; $4e51: $e1
    rst $38                                       ; $4e52: $ff
    add b                                         ; $4e53: $80
    rst $38                                       ; $4e54: $ff
    nop                                           ; $4e55: $00
    rst $30                                       ; $4e56: $f7
    nop                                           ; $4e57: $00
    rst $10                                       ; $4e58: $d7
    nop                                           ; $4e59: $00
    jp nc, Jump_073_4500                          ; $4e5a: $d2 $00 $45

    nop                                           ; $4e5d: $00
    add e                                         ; $4e5e: $83
    nop                                           ; $4e5f: $00
    rst $38                                       ; $4e60: $ff
    rst $38                                       ; $4e61: $ff
    rst $38                                       ; $4e62: $ff
    ld a, a                                       ; $4e63: $7f
    rst $38                                       ; $4e64: $ff
    ld e, $ff                                     ; $4e65: $1e $ff
    nop                                           ; $4e67: $00
    rst $38                                       ; $4e68: $ff
    nop                                           ; $4e69: $00
    add hl, bc                                    ; $4e6a: $09
    nop                                           ; $4e6b: $00
    add $00                                       ; $4e6c: $c6 $00
    ld a, e                                       ; $4e6e: $7b
    add h                                         ; $4e6f: $84
    rst $38                                       ; $4e70: $ff
    pop hl                                        ; $4e71: $e1
    rst $38                                       ; $4e72: $ff
    add b                                         ; $4e73: $80
    rst $38                                       ; $4e74: $ff
    nop                                           ; $4e75: $00
    rst $30                                       ; $4e76: $f7
    nop                                           ; $4e77: $00
    rst $30                                       ; $4e78: $f7
    nop                                           ; $4e79: $00
    jp nc, $c600                                  ; $4e7a: $d2 $00 $c6

    nop                                           ; $4e7d: $00
    nop                                           ; $4e7e: $00
    nop                                           ; $4e7f: $00
    rst $38                                       ; $4e80: $ff
    rst $38                                       ; $4e81: $ff
    rst $38                                       ; $4e82: $ff
    ld a, a                                       ; $4e83: $7f
    rst $38                                       ; $4e84: $ff
    ld e, $ff                                     ; $4e85: $1e $ff
    nop                                           ; $4e87: $00
    rst $38                                       ; $4e88: $ff
    nop                                           ; $4e89: $00
    ret nz                                        ; $4e8a: $c0

    nop                                           ; $4e8b: $00
    ccf                                           ; $4e8c: $3f
    nop                                           ; $4e8d: $00
    db $ed                                        ; $4e8e: $ed
    ld [de], a                                    ; $4e8f: $12
    rst $20                                       ; $4e90: $e7
    nop                                           ; $4e91: $00
    inc [hl]                                      ; $4e92: $34
    res 7, d                                      ; $4e93: $cb $ba
    ld b, l                                       ; $4e95: $45
    sbc c                                         ; $4e96: $99
    ld h, [hl]                                    ; $4e97: $66
    rst $28                                       ; $4e98: $ef
    db $10                                        ; $4e99: $10
    ld e, h                                       ; $4e9a: $5c
    jr nz, jr_073_4e9d                            ; $4e9b: $20 $00

jr_073_4e9d:
    nop                                           ; $4e9d: $00
    nop                                           ; $4e9e: $00
    nop                                           ; $4e9f: $00
    ld c, e                                       ; $4ea0: $4b
    or h                                          ; $4ea1: $b4
    cp l                                          ; $4ea2: $bd
    ld b, d                                       ; $4ea3: $42
    ret z                                         ; $4ea4: $c8

    rlca                                          ; $4ea5: $07
    xor $01                                       ; $4ea6: $ee $01
    ld b, a                                       ; $4ea8: $47
    nop                                           ; $4ea9: $00
    nop                                           ; $4eaa: $00
    nop                                           ; $4eab: $00
    nop                                           ; $4eac: $00
    nop                                           ; $4ead: $00
    nop                                           ; $4eae: $00
    nop                                           ; $4eaf: $00
    jp $ff00                                      ; $4eb0: $c3 $00 $ff


    nop                                           ; $4eb3: $00
    ld [hl], d                                    ; $4eb4: $72
    adc l                                         ; $4eb5: $8d
    ld e, h                                       ; $4eb6: $5c
    and e                                         ; $4eb7: $a3
    adc l                                         ; $4eb8: $8d
    ld h, d                                       ; $4eb9: $62
    and $00                                       ; $4eba: $e6 $00
    nop                                           ; $4ebc: $00
    nop                                           ; $4ebd: $00
    nop                                           ; $4ebe: $00
    nop                                           ; $4ebf: $00
    or [hl]                                       ; $4ec0: $b6
    ld c, c                                       ; $4ec1: $49
    ld [hl], a                                    ; $4ec2: $77
    adc b                                         ; $4ec3: $88
    cp e                                          ; $4ec4: $bb
    inc b                                         ; $4ec5: $04
    sub e                                         ; $4ec6: $93
    inc c                                         ; $4ec7: $0c
    sbc d                                         ; $4ec8: $9a
    inc b                                         ; $4ec9: $04
    ld [bc], a                                    ; $4eca: $02
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    rlca                                          ; $4ed0: $07
    nop                                           ; $4ed1: $00
    ld [hl], e                                    ; $4ed2: $73
    ld hl, sp-$40                                 ; $4ed3: $f8 $c0
    db $fc                                        ; $4ed5: $fc
    jr @+$01                                      ; $4ed6: $18 $ff

    ld bc, $00ff                                  ; $4ed8: $01 $ff $00
    rst $38                                       ; $4edb: $ff
    nop                                           ; $4edc: $00
    rst $38                                       ; $4edd: $ff
    nop                                           ; $4ede: $00
    rst $38                                       ; $4edf: $ff
    ldh a, [rP1]                                  ; $4ee0: $f0 $00
    add $0f                                       ; $4ee2: $c6 $0f
    ld [bc], a                                    ; $4ee4: $02
    ccf                                           ; $4ee5: $3f
    inc l                                         ; $4ee6: $2c
    rst $38                                       ; $4ee7: $ff
    ld b, b                                       ; $4ee8: $40
    rst $38                                       ; $4ee9: $ff
    nop                                           ; $4eea: $00
    rst $38                                       ; $4eeb: $ff
    nop                                           ; $4eec: $00
    rst $38                                       ; $4eed: $ff
    nop                                           ; $4eee: $00
    rst $38                                       ; $4eef: $ff

jr_073_4ef0:
    inc bc                                        ; $4ef0: $03
    nop                                           ; $4ef1: $00
    jr jr_073_4ef0                                ; $4ef2: $18 $fc

    call z, $8aff                                 ; $4ef4: $cc $ff $8a
    rst $38                                       ; $4ef7: $ff
    inc b                                         ; $4ef8: $04
    rst $38                                       ; $4ef9: $ff
    nop                                           ; $4efa: $00
    rst $38                                       ; $4efb: $ff
    nop                                           ; $4efc: $00
    rst $38                                       ; $4efd: $ff
    nop                                           ; $4efe: $00
    rst $38                                       ; $4eff: $ff
    ldh a, [rP1]                                  ; $4f00: $f0 $00
    jp Jump_000_140f                              ; $4f02: $c3 $0f $14


    ccf                                           ; $4f05: $3f
    ld [$00ff], sp                                ; $4f06: $08 $ff $00
    rst $38                                       ; $4f09: $ff
    nop                                           ; $4f0a: $00
    rst $38                                       ; $4f0b: $ff
    nop                                           ; $4f0c: $00
    rst $38                                       ; $4f0d: $ff
    nop                                           ; $4f0e: $00
    rst $38                                       ; $4f0f: $ff
    ei                                            ; $4f10: $fb
    inc b                                         ; $4f11: $04
    di                                            ; $4f12: $f3
    nop                                           ; $4f13: $00
    rst $00                                       ; $4f14: $c7
    nop                                           ; $4f15: $00
    add a                                         ; $4f16: $87
    nop                                           ; $4f17: $00
    nop                                           ; $4f18: $00
    nop                                           ; $4f19: $00
    nop                                           ; $4f1a: $00
    nop                                           ; $4f1b: $00
    inc b                                         ; $4f1c: $04
    nop                                           ; $4f1d: $00
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    rst $38                                       ; $4f20: $ff
    nop                                           ; $4f21: $00
    rst $30                                       ; $4f22: $f7
    inc b                                         ; $4f23: $04
    cp l                                          ; $4f24: $bd
    inc b                                         ; $4f25: $04
    ccf                                           ; $4f26: $3f
    ld c, $2f                                     ; $4f27: $0e $2f
    inc b                                         ; $4f29: $04
    ld d, h                                       ; $4f2a: $54
    nop                                           ; $4f2b: $00
    rst $20                                       ; $4f2c: $e7
    ld [bc], a                                    ; $4f2d: $02
    rrca                                          ; $4f2e: $0f
    rlca                                          ; $4f2f: $07
    rst $38                                       ; $4f30: $ff
    nop                                           ; $4f31: $00
    ld a, a                                       ; $4f32: $7f
    nop                                           ; $4f33: $00
    scf                                           ; $4f34: $37
    nop                                           ; $4f35: $00

jr_073_4f36:
    and [hl]                                      ; $4f36: $a6
    nop                                           ; $4f37: $00
    jr nz, jr_073_4f3a                            ; $4f38: $20 $00

jr_073_4f3a:
    stop                                          ; $4f3a: $10 $00
    nop                                           ; $4f3c: $00
    nop                                           ; $4f3d: $00
    nop                                           ; $4f3e: $00
    nop                                           ; $4f3f: $00
    rst $38                                       ; $4f40: $ff
    nop                                           ; $4f41: $00
    rst $30                                       ; $4f42: $f7
    inc b                                         ; $4f43: $04
    dec a                                         ; $4f44: $3d
    inc b                                         ; $4f45: $04
    ld a, a                                       ; $4f46: $7f
    ld c, $2e                                     ; $4f47: $0e $2e
    inc b                                         ; $4f49: $04
    ld d, h                                       ; $4f4a: $54
    nop                                           ; $4f4b: $00
    ld h, [hl]                                    ; $4f4c: $66
    ld [bc], a                                    ; $4f4d: $02
    rrca                                          ; $4f4e: $0f
    rlca                                          ; $4f4f: $07
    nop                                           ; $4f50: $00
    nop                                           ; $4f51: $00
    add b                                         ; $4f52: $80
    nop                                           ; $4f53: $00
    nop                                           ; $4f54: $00

jr_073_4f55:
    nop                                           ; $4f55: $00
    ld b, b                                       ; $4f56: $40
    nop                                           ; $4f57: $00
    add c                                         ; $4f58: $81
    add b                                         ; $4f59: $80
    nop                                           ; $4f5a: $00
    nop                                           ; $4f5b: $00
    pop hl                                        ; $4f5c: $e1
    ret nz                                        ; $4f5d: $c0

    inc bc                                        ; $4f5e: $03
    nop                                           ; $4f5f: $00
    ld h, [hl]                                    ; $4f60: $66
    nop                                           ; $4f61: $00
    jr c, jr_073_4f64                             ; $4f62: $38 $00

jr_073_4f64:
    sbc b                                         ; $4f64: $98
    jr jr_073_4f36                                ; $4f65: $18 $cf

    dec b                                         ; $4f67: $05
    rra                                           ; $4f68: $1f
    inc bc                                        ; $4f69: $03
    cp a                                          ; $4f6a: $bf
    rrca                                          ; $4f6b: $0f
    rla                                           ; $4f6c: $17
    inc c                                         ; $4f6d: $0c
    ccf                                           ; $4f6e: $3f
    inc bc                                        ; $4f6f: $03
    or d                                          ; $4f70: $b2
    jr nz, jr_073_4f55                            ; $4f71: $20 $e2

    add b                                         ; $4f73: $80
    ret nc                                        ; $4f74: $d0

    ret nz                                        ; $4f75: $c0

    pop de                                        ; $4f76: $d1

jr_073_4f77:
    ld b, b                                       ; $4f77: $40
    ld [hl+], a                                   ; $4f78: $22
    nop                                           ; $4f79: $00
    ld b, b                                       ; $4f7a: $40
    ld b, b                                       ; $4f7b: $40
    add e                                         ; $4f7c: $83
    nop                                           ; $4f7d: $00
    nop                                           ; $4f7e: $00
    nop                                           ; $4f7f: $00
    xor a                                         ; $4f80: $af
    ld [de], a                                    ; $4f81: $12
    ld a, a                                       ; $4f82: $7f
    rlca                                          ; $4f83: $07
    rla                                           ; $4f84: $17
    ld [$053b], sp                                ; $4f85: $08 $3b $05
    sbc a                                         ; $4f88: $9f
    ld a, [de]                                    ; $4f89: $1a
    xor a                                         ; $4f8a: $af
    dec b                                         ; $4f8b: $05
    rra                                           ; $4f8c: $1f
    inc bc                                        ; $4f8d: $03
    or a                                          ; $4f8e: $b7
    dec bc                                        ; $4f8f: $0b
    pop hl                                        ; $4f90: $e1
    ret nz                                        ; $4f91: $c0

    inc bc                                        ; $4f92: $03
    nop                                           ; $4f93: $00
    or b                                          ; $4f94: $b0
    jr nz, jr_073_4f77                            ; $4f95: $20 $e0

    add b                                         ; $4f97: $80
    sub $c0                                       ; $4f98: $d6 $c0
    pop de                                        ; $4f9a: $d1
    sub b                                         ; $4f9b: $90
    and d                                         ; $4f9c: $a2
    nop                                           ; $4f9d: $00
    db $e3                                        ; $4f9e: $e3
    ret nz                                        ; $4f9f: $c0

    rlca                                          ; $4fa0: $07
    ld a, [de]                                    ; $4fa1: $1a
    cpl                                           ; $4fa2: $2f
    rla                                           ; $4fa3: $17
    adc a                                         ; $4fa4: $8f
    ld de, $063f                                  ; $4fa5: $11 $3f $06
    rla                                           ; $4fa8: $17
    ld a, [bc]                                    ; $4fa9: $0a
    ld [hl], e                                    ; $4faa: $73
    dec c                                         ; $4fab: $0d
    sub a                                         ; $4fac: $97
    ld [$93bf], sp                                ; $4fad: $08 $bf $93
    add b                                         ; $4fb0: $80
    add b                                         ; $4fb1: $80
    add c                                         ; $4fb2: $81
    nop                                           ; $4fb3: $00
    nop                                           ; $4fb4: $00
    nop                                           ; $4fb5: $00
    nop                                           ; $4fb6: $00
    nop                                           ; $4fb7: $00
    ld h, d                                       ; $4fb8: $62
    ld h, d                                       ; $4fb9: $62
    rst $30                                       ; $4fba: $f7
    rst $30                                       ; $4fbb: $f7
    rst $38                                       ; $4fbc: $ff
    rst $38                                       ; $4fbd: $ff
    rst $38                                       ; $4fbe: $ff
    rst $38                                       ; $4fbf: $ff
    cp a                                          ; $4fc0: $bf
    ld l, $ce                                     ; $4fc1: $2e $ce
    ld [hl-], a                                   ; $4fc3: $32
    adc $30                                       ; $4fc4: $ce $30
    nop                                           ; $4fc6: $00
    ld a, $00                                     ; $4fc7: $3e $00
    ld a, $80                                     ; $4fc9: $3e $80
    cp a                                          ; $4fcb: $bf
    db $e3                                        ; $4fcc: $e3
    rst $38                                       ; $4fcd: $ff
    rst $38                                       ; $4fce: $ff
    rst $38                                       ; $4fcf: $ff
    nop                                           ; $4fd0: $00
    rst $38                                       ; $4fd1: $ff
    nop                                           ; $4fd2: $00
    rst $38                                       ; $4fd3: $ff
    nop                                           ; $4fd4: $00
    rst $38                                       ; $4fd5: $ff
    nop                                           ; $4fd6: $00
    rst $38                                       ; $4fd7: $ff
    nop                                           ; $4fd8: $00
    rst $38                                       ; $4fd9: $ff
    nop                                           ; $4fda: $00
    rst $38                                       ; $4fdb: $ff
    nop                                           ; $4fdc: $00
    rst $38                                       ; $4fdd: $ff
    nop                                           ; $4fde: $00
    rst $38                                       ; $4fdf: $ff
    nop                                           ; $4fe0: $00
    rst $38                                       ; $4fe1: $ff
    ld b, h                                       ; $4fe2: $44
    cp e                                          ; $4fe3: $bb
    nop                                           ; $4fe4: $00
    rst $38                                       ; $4fe5: $ff
    ld de, $00ee                                  ; $4fe6: $11 $ee $00
    rst $38                                       ; $4fe9: $ff
    xor d                                         ; $4fea: $aa
    ld d, l                                       ; $4feb: $55
    ld d, l                                       ; $4fec: $55
    xor d                                         ; $4fed: $aa
    rst $38                                       ; $4fee: $ff
    nop                                           ; $4fef: $00
    rst $38                                       ; $4ff0: $ff
    nop                                           ; $4ff1: $00
    rst $38                                       ; $4ff2: $ff
    nop                                           ; $4ff3: $00
    rst $38                                       ; $4ff4: $ff
    nop                                           ; $4ff5: $00
    rst $38                                       ; $4ff6: $ff
    nop                                           ; $4ff7: $00
    ld [hl], a                                    ; $4ff8: $77
    nop                                           ; $4ff9: $00
    rst $38                                       ; $4ffa: $ff
    nop                                           ; $4ffb: $00
    ld d, l                                       ; $4ffc: $55
    nop                                           ; $4ffd: $00
    xor d                                         ; $4ffe: $aa
    nop                                           ; $4fff: $00
    rst $38                                       ; $5000: $ff
    rst $38                                       ; $5001: $ff
    rst $38                                       ; $5002: $ff
    rst $38                                       ; $5003: $ff
    rst $38                                       ; $5004: $ff
    rst $38                                       ; $5005: $ff
    rst $38                                       ; $5006: $ff
    rst $38                                       ; $5007: $ff
    rst $38                                       ; $5008: $ff
    rst $38                                       ; $5009: $ff
    rst $38                                       ; $500a: $ff
    rst $38                                       ; $500b: $ff
    rst $38                                       ; $500c: $ff
    rst $38                                       ; $500d: $ff
    rst $38                                       ; $500e: $ff
    rst $38                                       ; $500f: $ff
    rst $38                                       ; $5010: $ff
    ld hl, sp-$01                                 ; $5011: $f8 $ff
    ldh [rIE], a                                  ; $5013: $e0 $ff
    add b                                         ; $5015: $80
    db $fd                                        ; $5016: $fd
    nop                                           ; $5017: $00
    push af                                       ; $5018: $f5
    nop                                           ; $5019: $00
    ld [hl], h                                    ; $501a: $74
    nop                                           ; $501b: $00
    sub b                                         ; $501c: $90
    nop                                           ; $501d: $00
    pop bc                                        ; $501e: $c1
    nop                                           ; $501f: $00
    rst $38                                       ; $5020: $ff
    ld a, a                                       ; $5021: $7f
    rst $38                                       ; $5022: $ff
    rra                                           ; $5023: $1f
    rst $38                                       ; $5024: $ff
    rlca                                          ; $5025: $07
    rst $38                                       ; $5026: $ff
    nop                                           ; $5027: $00
    rst $38                                       ; $5028: $ff
    nop                                           ; $5029: $00
    stop                                          ; $502a: $10 $00
    db $e3                                        ; $502c: $e3
    nop                                           ; $502d: $00
    cp l                                          ; $502e: $bd
    ld b, d                                       ; $502f: $42
    rst $38                                       ; $5030: $ff
    ld hl, sp-$01                                 ; $5031: $f8 $ff
    ldh [rIE], a                                  ; $5033: $e0 $ff
    add b                                         ; $5035: $80
    db $fd                                        ; $5036: $fd
    nop                                           ; $5037: $00
    db $fd                                        ; $5038: $fd
    nop                                           ; $5039: $00
    db $f4                                        ; $503a: $f4
    nop                                           ; $503b: $00
    ld sp, $8000                                  ; $503c: $31 $00 $80
    nop                                           ; $503f: $00
    rst $38                                       ; $5040: $ff
    ld a, a                                       ; $5041: $7f
    rst $38                                       ; $5042: $ff
    rra                                           ; $5043: $1f
    rst $38                                       ; $5044: $ff
    rlca                                          ; $5045: $07
    rst $38                                       ; $5046: $ff
    nop                                           ; $5047: $00
    rst $38                                       ; $5048: $ff
    nop                                           ; $5049: $00
    and b                                         ; $504a: $a0
    nop                                           ; $504b: $00
    sbc a                                         ; $504c: $9f
    nop                                           ; $504d: $00
    halt                                          ; $504e: $76
    add hl, bc                                    ; $504f: $09
    ld [hl], e                                    ; $5050: $73
    add b                                         ; $5051: $80
    sbc d                                         ; $5052: $9a
    ld h, l                                       ; $5053: $65
    db $dd                                        ; $5054: $dd
    ld [hl+], a                                   ; $5055: $22
    call z, Call_073_7733                         ; $5056: $cc $33 $77
    ld [$102e], sp                                ; $5059: $08 $2e $10
    nop                                           ; $505c: $00
    nop                                           ; $505d: $00
    nop                                           ; $505e: $00
    nop                                           ; $505f: $00
    and l                                         ; $5060: $a5
    ld e, d                                       ; $5061: $5a
    ld e, [hl]                                    ; $5062: $5e
    and c                                         ; $5063: $a1
    ld h, h                                       ; $5064: $64
    add e                                         ; $5065: $83
    rst $30                                       ; $5066: $f7
    nop                                           ; $5067: $00
    and e                                         ; $5068: $a3
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    nop                                           ; $506b: $00
    nop                                           ; $506c: $00
    nop                                           ; $506d: $00
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    pop hl                                        ; $5070: $e1
    nop                                           ; $5071: $00
    rst $38                                       ; $5072: $ff
    nop                                           ; $5073: $00
    add hl, sp                                    ; $5074: $39
    add $2e                                       ; $5075: $c6 $2e
    pop de                                        ; $5077: $d1
    add $31                                       ; $5078: $c6 $31
    ld [hl], e                                    ; $507a: $73
    nop                                           ; $507b: $00
    nop                                           ; $507c: $00
    nop                                           ; $507d: $00
    nop                                           ; $507e: $00
    nop                                           ; $507f: $00
    db $db                                        ; $5080: $db
    inc h                                         ; $5081: $24
    cp e                                          ; $5082: $bb
    ld b, h                                       ; $5083: $44
    ld e, l                                       ; $5084: $5d
    add d                                         ; $5085: $82
    ld c, c                                       ; $5086: $49
    add [hl]                                      ; $5087: $86
    call $0102                                    ; $5088: $cd $02 $01
    nop                                           ; $508b: $00
    nop                                           ; $508c: $00
    nop                                           ; $508d: $00
    nop                                           ; $508e: $00
    nop                                           ; $508f: $00
    inc bc                                        ; $5090: $03
    nop                                           ; $5091: $00
    cp c                                          ; $5092: $b9
    db $fc                                        ; $5093: $fc
    ld h, b                                       ; $5094: $60
    cp $0c                                        ; $5095: $fe $0c
    rst $38                                       ; $5097: $ff
    nop                                           ; $5098: $00
    rst $38                                       ; $5099: $ff
    nop                                           ; $509a: $00
    rst $38                                       ; $509b: $ff
    nop                                           ; $509c: $00
    rst $38                                       ; $509d: $ff
    nop                                           ; $509e: $00
    rst $38                                       ; $509f: $ff
    ld hl, sp+$00                                 ; $50a0: $f8 $00
    db $e3                                        ; $50a2: $e3
    rlca                                          ; $50a3: $07
    ld bc, $161f                                  ; $50a4: $01 $1f $16
    rst $38                                       ; $50a7: $ff
    and b                                         ; $50a8: $a0
    rst $38                                       ; $50a9: $ff
    nop                                           ; $50aa: $00
    rst $38                                       ; $50ab: $ff
    nop                                           ; $50ac: $00
    rst $38                                       ; $50ad: $ff
    nop                                           ; $50ae: $00
    rst $38                                       ; $50af: $ff
    ld bc, $0c00                                  ; $50b0: $01 $00 $0c
    cp $66                                        ; $50b3: $fe $66
    rst $38                                       ; $50b5: $ff
    ld b, l                                       ; $50b6: $45
    rst $38                                       ; $50b7: $ff
    ld [bc], a                                    ; $50b8: $02
    rst $38                                       ; $50b9: $ff
    nop                                           ; $50ba: $00
    rst $38                                       ; $50bb: $ff
    nop                                           ; $50bc: $00
    rst $38                                       ; $50bd: $ff
    nop                                           ; $50be: $00
    rst $38                                       ; $50bf: $ff
    ld hl, sp+$00                                 ; $50c0: $f8 $00
    ld h, c                                       ; $50c2: $61
    rlca                                          ; $50c3: $07
    ld a, [bc]                                    ; $50c4: $0a
    sbc a                                         ; $50c5: $9f
    inc b                                         ; $50c6: $04
    rst $38                                       ; $50c7: $ff
    nop                                           ; $50c8: $00
    rst $38                                       ; $50c9: $ff
    nop                                           ; $50ca: $00
    rst $38                                       ; $50cb: $ff
    nop                                           ; $50cc: $00
    rst $38                                       ; $50cd: $ff
    nop                                           ; $50ce: $00
    rst $38                                       ; $50cf: $ff
    db $fd                                        ; $50d0: $fd
    ld [bc], a                                    ; $50d1: $02
    ld sp, hl                                     ; $50d2: $f9
    nop                                           ; $50d3: $00
    db $e3                                        ; $50d4: $e3
    nop                                           ; $50d5: $00
    jp RST_00                                     ; $50d6: $c3 $00 $00


    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    nop                                           ; $50db: $00
    ld [bc], a                                    ; $50dc: $02
    nop                                           ; $50dd: $00
    nop                                           ; $50de: $00
    nop                                           ; $50df: $00
    rst $38                                       ; $50e0: $ff
    nop                                           ; $50e1: $00
    rst $30                                       ; $50e2: $f7
    inc b                                         ; $50e3: $04
    db $dd                                        ; $50e4: $dd
    inc b                                         ; $50e5: $04
    sbc a                                         ; $50e6: $9f
    ld c, $0f                                     ; $50e7: $0e $0f
    inc b                                         ; $50e9: $04
    inc [hl]                                      ; $50ea: $34
    nop                                           ; $50eb: $00
    ld h, [hl]                                    ; $50ec: $66
    ld [bc], a                                    ; $50ed: $02
    rrca                                          ; $50ee: $0f
    rlca                                          ; $50ef: $07
    rst $38                                       ; $50f0: $ff
    nop                                           ; $50f1: $00
    cp a                                          ; $50f2: $bf
    nop                                           ; $50f3: $00
    sbc e                                         ; $50f4: $9b
    nop                                           ; $50f5: $00

jr_073_50f6:
    db $d3                                        ; $50f6: $d3
    nop                                           ; $50f7: $00
    sub b                                         ; $50f8: $90
    nop                                           ; $50f9: $00
    ld [$8000], sp                                ; $50fa: $08 $00 $80
    nop                                           ; $50fd: $00
    nop                                           ; $50fe: $00
    nop                                           ; $50ff: $00
    rst $38                                       ; $5100: $ff
    nop                                           ; $5101: $00
    rst $30                                       ; $5102: $f7
    inc b                                         ; $5103: $04
    sbc l                                         ; $5104: $9d
    inc b                                         ; $5105: $04
    ccf                                           ; $5106: $3f
    ld c, $0f                                     ; $5107: $0e $0f
    inc b                                         ; $5109: $04
    inc [hl]                                      ; $510a: $34
    nop                                           ; $510b: $00
    ld h, [hl]                                    ; $510c: $66
    ld [bc], a                                    ; $510d: $02
    rrca                                          ; $510e: $0f
    rlca                                          ; $510f: $07
    nop                                           ; $5110: $00
    nop                                           ; $5111: $00
    add b                                         ; $5112: $80
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00

jr_073_5115:
    nop                                           ; $5115: $00
    ld b, b                                       ; $5116: $40
    nop                                           ; $5117: $00
    add c                                         ; $5118: $81
    add b                                         ; $5119: $80
    nop                                           ; $511a: $00
    nop                                           ; $511b: $00
    pop hl                                        ; $511c: $e1
    ret nz                                        ; $511d: $c0

    inc bc                                        ; $511e: $03
    nop                                           ; $511f: $00
    ld h, [hl]                                    ; $5120: $66
    nop                                           ; $5121: $00
    jr c, jr_073_5124                             ; $5122: $38 $00

jr_073_5124:
    sbc b                                         ; $5124: $98
    jr jr_073_50f6                                ; $5125: $18 $cf

    dec b                                         ; $5127: $05
    rra                                           ; $5128: $1f
    inc bc                                        ; $5129: $03
    cp a                                          ; $512a: $bf
    rrca                                          ; $512b: $0f
    rla                                           ; $512c: $17
    inc c                                         ; $512d: $0c
    ccf                                           ; $512e: $3f
    inc bc                                        ; $512f: $03
    or d                                          ; $5130: $b2
    jr nz, jr_073_5115                            ; $5131: $20 $e2

    add b                                         ; $5133: $80
    ret nc                                        ; $5134: $d0

    ret nz                                        ; $5135: $c0

    pop de                                        ; $5136: $d1

jr_073_5137:
    ld b, b                                       ; $5137: $40
    ld [hl+], a                                   ; $5138: $22
    nop                                           ; $5139: $00
    ld b, b                                       ; $513a: $40
    ld b, b                                       ; $513b: $40
    add e                                         ; $513c: $83
    nop                                           ; $513d: $00
    nop                                           ; $513e: $00
    nop                                           ; $513f: $00
    xor a                                         ; $5140: $af
    ld [de], a                                    ; $5141: $12
    ld a, a                                       ; $5142: $7f
    rlca                                          ; $5143: $07
    rla                                           ; $5144: $17
    ld [$053b], sp                                ; $5145: $08 $3b $05
    sbc a                                         ; $5148: $9f
    ld a, [de]                                    ; $5149: $1a
    xor a                                         ; $514a: $af
    dec b                                         ; $514b: $05
    rra                                           ; $514c: $1f
    inc bc                                        ; $514d: $03
    or a                                          ; $514e: $b7
    dec bc                                        ; $514f: $0b
    pop hl                                        ; $5150: $e1
    ret nz                                        ; $5151: $c0

    inc bc                                        ; $5152: $03
    nop                                           ; $5153: $00
    or b                                          ; $5154: $b0
    jr nz, jr_073_5137                            ; $5155: $20 $e0

    add b                                         ; $5157: $80
    sub $c0                                       ; $5158: $d6 $c0
    pop de                                        ; $515a: $d1
    sub b                                         ; $515b: $90
    and d                                         ; $515c: $a2
    nop                                           ; $515d: $00
    db $e3                                        ; $515e: $e3
    ret nz                                        ; $515f: $c0

    rlca                                          ; $5160: $07
    ld a, [de]                                    ; $5161: $1a
    cpl                                           ; $5162: $2f
    rla                                           ; $5163: $17
    adc a                                         ; $5164: $8f
    ld de, $063f                                  ; $5165: $11 $3f $06
    rla                                           ; $5168: $17
    ld a, [bc]                                    ; $5169: $0a
    ld [hl], e                                    ; $516a: $73
    dec c                                         ; $516b: $0d
    sub a                                         ; $516c: $97
    ld [$93bf], sp                                ; $516d: $08 $bf $93
    add b                                         ; $5170: $80
    add b                                         ; $5171: $80
    add c                                         ; $5172: $81
    nop                                           ; $5173: $00
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    ld h, d                                       ; $5178: $62
    ld h, d                                       ; $5179: $62
    rst $30                                       ; $517a: $f7
    rst $30                                       ; $517b: $f7
    rst $38                                       ; $517c: $ff
    rst $38                                       ; $517d: $ff
    rst $38                                       ; $517e: $ff
    rst $38                                       ; $517f: $ff
    cp a                                          ; $5180: $bf
    ld l, $ce                                     ; $5181: $2e $ce
    ld [hl-], a                                   ; $5183: $32
    adc $30                                       ; $5184: $ce $30
    nop                                           ; $5186: $00
    ld a, $00                                     ; $5187: $3e $00
    ld a, $80                                     ; $5189: $3e $80
    cp a                                          ; $518b: $bf
    db $e3                                        ; $518c: $e3
    rst $38                                       ; $518d: $ff
    rst $38                                       ; $518e: $ff
    rst $38                                       ; $518f: $ff
    nop                                           ; $5190: $00
    rst $38                                       ; $5191: $ff
    nop                                           ; $5192: $00
    rst $38                                       ; $5193: $ff
    nop                                           ; $5194: $00
    rst $38                                       ; $5195: $ff
    nop                                           ; $5196: $00
    rst $38                                       ; $5197: $ff
    nop                                           ; $5198: $00
    rst $38                                       ; $5199: $ff
    nop                                           ; $519a: $00
    rst $38                                       ; $519b: $ff
    nop                                           ; $519c: $00
    rst $38                                       ; $519d: $ff
    nop                                           ; $519e: $00
    rst $38                                       ; $519f: $ff
    nop                                           ; $51a0: $00
    rst $38                                       ; $51a1: $ff
    ld [hl+], a                                   ; $51a2: $22
    db $dd                                        ; $51a3: $dd
    nop                                           ; $51a4: $00
    rst $38                                       ; $51a5: $ff
    adc b                                         ; $51a6: $88
    ld [hl], a                                    ; $51a7: $77
    nop                                           ; $51a8: $00
    rst $38                                       ; $51a9: $ff
    ld d, l                                       ; $51aa: $55
    xor d                                         ; $51ab: $aa
    xor d                                         ; $51ac: $aa
    ld d, l                                       ; $51ad: $55
    rst $38                                       ; $51ae: $ff
    nop                                           ; $51af: $00
    rst $38                                       ; $51b0: $ff
    nop                                           ; $51b1: $00
    rst $38                                       ; $51b2: $ff
    nop                                           ; $51b3: $00
    rst $38                                       ; $51b4: $ff
    nop                                           ; $51b5: $00
    rst $38                                       ; $51b6: $ff
    nop                                           ; $51b7: $00
    cp e                                          ; $51b8: $bb
    nop                                           ; $51b9: $00
    rst $38                                       ; $51ba: $ff
    nop                                           ; $51bb: $00
    xor d                                         ; $51bc: $aa
    nop                                           ; $51bd: $00
    ld d, l                                       ; $51be: $55
    nop                                           ; $51bf: $00
    rst $38                                       ; $51c0: $ff
    rst $38                                       ; $51c1: $ff
    rst $38                                       ; $51c2: $ff
    rst $38                                       ; $51c3: $ff
    rst $38                                       ; $51c4: $ff
    rst $38                                       ; $51c5: $ff
    rst $38                                       ; $51c6: $ff
    rst $38                                       ; $51c7: $ff
    rst $38                                       ; $51c8: $ff
    rst $38                                       ; $51c9: $ff
    rst $38                                       ; $51ca: $ff
    rst $38                                       ; $51cb: $ff
    rst $38                                       ; $51cc: $ff
    rst $38                                       ; $51cd: $ff
    rst $38                                       ; $51ce: $ff
    rst $38                                       ; $51cf: $ff
    rst $38                                       ; $51d0: $ff
    cp $ff                                        ; $51d1: $fe $ff
    ld hl, sp-$01                                 ; $51d3: $f8 $ff
    ldh [rIE], a                                  ; $51d5: $e0 $ff
    nop                                           ; $51d7: $00
    db $fd                                        ; $51d8: $fd
    nop                                           ; $51d9: $00
    dec a                                         ; $51da: $3d
    nop                                           ; $51db: $00
    call nc, Call_073_6000                        ; $51dc: $d4 $00 $60
    add b                                         ; $51df: $80
    rst $38                                       ; $51e0: $ff
    rra                                           ; $51e1: $1f
    rst $38                                       ; $51e2: $ff
    rlca                                          ; $51e3: $07
    rst $38                                       ; $51e4: $ff
    ld bc, $007f                                  ; $51e5: $01 $7f $00
    ld a, a                                       ; $51e8: $7f
    nop                                           ; $51e9: $00
    inc c                                         ; $51ea: $0c
    nop                                           ; $51eb: $00
    ld [hl], c                                    ; $51ec: $71
    nop                                           ; $51ed: $00
    sbc $21                                       ; $51ee: $de $21
    rst $38                                       ; $51f0: $ff
    cp $ff                                        ; $51f1: $fe $ff
    ld hl, sp-$01                                 ; $51f3: $f8 $ff
    ldh [rIE], a                                  ; $51f5: $e0 $ff
    nop                                           ; $51f7: $00
    rst $38                                       ; $51f8: $ff
    nop                                           ; $51f9: $00
    ld a, l                                       ; $51fa: $7d
    nop                                           ; $51fb: $00
    xor h                                         ; $51fc: $ac
    nop                                           ; $51fd: $00
    ret nz                                        ; $51fe: $c0

    nop                                           ; $51ff: $00
    rst $38                                       ; $5200: $ff
    rra                                           ; $5201: $1f
    rst $38                                       ; $5202: $ff
    rlca                                          ; $5203: $07
    rst $38                                       ; $5204: $ff
    ld bc, $007f                                  ; $5205: $01 $7f $00
    ld a, a                                       ; $5208: $7f
    nop                                           ; $5209: $00
    jr nz, jr_073_520c                            ; $520a: $20 $00

jr_073_520c:
    ld c, a                                       ; $520c: $4f
    nop                                           ; $520d: $00
    dec sp                                        ; $520e: $3b
    inc b                                         ; $520f: $04
    cp c                                          ; $5210: $b9
    ld b, b                                       ; $5211: $40
    call $ee32                                    ; $5212: $cd $32 $ee
    ld de, $19e6                                  ; $5215: $11 $e6 $19
    cp e                                          ; $5218: $bb
    inc b                                         ; $5219: $04
    sub a                                         ; $521a: $97
    ld [$0000], sp                                ; $521b: $08 $00 $00
    nop                                           ; $521e: $00
    nop                                           ; $521f: $00
    jp nc, Jump_000_2f2d                          ; $5220: $d2 $2d $2f

    ret nc                                        ; $5223: $d0

    or d                                          ; $5224: $b2
    ld b, c                                       ; $5225: $41
    ld a, e                                       ; $5226: $7b
    add b                                         ; $5227: $80
    pop de                                        ; $5228: $d1
    nop                                           ; $5229: $00
    nop                                           ; $522a: $00
    nop                                           ; $522b: $00
    nop                                           ; $522c: $00
    nop                                           ; $522d: $00
    nop                                           ; $522e: $00
    nop                                           ; $522f: $00
    ldh a, [rP1]                                  ; $5230: $f0 $00
    ld a, a                                       ; $5232: $7f
    add b                                         ; $5233: $80
    inc e                                         ; $5234: $1c
    db $e3                                        ; $5235: $e3
    sub a                                         ; $5236: $97
    ld l, b                                       ; $5237: $68
    db $e3                                        ; $5238: $e3
    jr jr_073_5274                                ; $5239: $18 $39

    nop                                           ; $523b: $00
    nop                                           ; $523c: $00
    nop                                           ; $523d: $00
    nop                                           ; $523e: $00
    nop                                           ; $523f: $00
    db $ed                                        ; $5240: $ed
    ld [de], a                                    ; $5241: $12
    db $dd                                        ; $5242: $dd
    ld [hl+], a                                   ; $5243: $22
    xor [hl]                                      ; $5244: $ae
    ld b, c                                       ; $5245: $41
    inc h                                         ; $5246: $24
    jp $8166                                      ; $5247: $c3 $66 $81


    add b                                         ; $524a: $80
    nop                                           ; $524b: $00
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    nop                                           ; $524e: $00
    nop                                           ; $524f: $00
    ld bc, $dc00                                  ; $5250: $01 $00 $dc
    cp $30                                        ; $5253: $fe $30
    rst $38                                       ; $5255: $ff
    ld b, $ff                                     ; $5256: $06 $ff
    nop                                           ; $5258: $00
    rst $38                                       ; $5259: $ff
    nop                                           ; $525a: $00
    rst $38                                       ; $525b: $ff
    nop                                           ; $525c: $00
    rst $38                                       ; $525d: $ff
    nop                                           ; $525e: $00
    rst $38                                       ; $525f: $ff
    db $fc                                        ; $5260: $fc
    nop                                           ; $5261: $00
    pop af                                        ; $5262: $f1
    inc bc                                        ; $5263: $03
    nop                                           ; $5264: $00
    rrca                                          ; $5265: $0f
    dec bc                                        ; $5266: $0b
    rst $38                                       ; $5267: $ff
    ld d, b                                       ; $5268: $50
    rst $38                                       ; $5269: $ff
    nop                                           ; $526a: $00
    rst $38                                       ; $526b: $ff
    nop                                           ; $526c: $00
    rst $38                                       ; $526d: $ff
    nop                                           ; $526e: $00
    rst $38                                       ; $526f: $ff
    nop                                           ; $5270: $00
    nop                                           ; $5271: $00
    add [hl]                                      ; $5272: $86
    rst $38                                       ; $5273: $ff

jr_073_5274:
    or e                                          ; $5274: $b3
    rst $38                                       ; $5275: $ff
    ld [hl+], a                                   ; $5276: $22
    rst $38                                       ; $5277: $ff
    ld bc, $00ff                                  ; $5278: $01 $ff $00
    rst $38                                       ; $527b: $ff
    nop                                           ; $527c: $00
    rst $38                                       ; $527d: $ff
    nop                                           ; $527e: $00
    rst $38                                       ; $527f: $ff
    db $fc                                        ; $5280: $fc
    nop                                           ; $5281: $00
    jr nc, jr_073_5287                            ; $5282: $30 $03

    dec b                                         ; $5284: $05
    rst $08                                       ; $5285: $cf
    add d                                         ; $5286: $82

jr_073_5287:
    rst $38                                       ; $5287: $ff
    nop                                           ; $5288: $00
    rst $38                                       ; $5289: $ff
    nop                                           ; $528a: $00
    rst $38                                       ; $528b: $ff
    nop                                           ; $528c: $00
    rst $38                                       ; $528d: $ff
    nop                                           ; $528e: $00
    rst $38                                       ; $528f: $ff
    cp $01                                        ; $5290: $fe $01
    db $fc                                        ; $5292: $fc
    nop                                           ; $5293: $00
    pop af                                        ; $5294: $f1
    nop                                           ; $5295: $00
    pop hl                                        ; $5296: $e1
    nop                                           ; $5297: $00
    add b                                         ; $5298: $80
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    nop                                           ; $529b: $00
    ld bc, $8000                                  ; $529c: $01 $00 $80
    add b                                         ; $529f: $80
    rst $38                                       ; $52a0: $ff
    nop                                           ; $52a1: $00
    ei                                            ; $52a2: $fb
    ld [bc], a                                    ; $52a3: $02
    xor $02                                       ; $52a4: $ee $02
    rst $08                                       ; $52a6: $cf
    rlca                                          ; $52a7: $07
    rlca                                          ; $52a8: $07
    ld [bc], a                                    ; $52a9: $02
    ld a, [de]                                    ; $52aa: $1a
    nop                                           ; $52ab: $00
    inc sp                                        ; $52ac: $33
    ld bc, $0307                                  ; $52ad: $01 $07 $03
    rst $38                                       ; $52b0: $ff
    nop                                           ; $52b1: $00
    rst $18                                       ; $52b2: $df
    nop                                           ; $52b3: $00
    call $e900                                    ; $52b4: $cd $00 $e9
    nop                                           ; $52b7: $00
    ret z                                         ; $52b8: $c8

    nop                                           ; $52b9: $00
    inc b                                         ; $52ba: $04
    nop                                           ; $52bb: $00
    ld b, b                                       ; $52bc: $40
    nop                                           ; $52bd: $00
    add b                                         ; $52be: $80
    add b                                         ; $52bf: $80
    rst $38                                       ; $52c0: $ff
    nop                                           ; $52c1: $00
    ei                                            ; $52c2: $fb
    ld [bc], a                                    ; $52c3: $02
    adc $02                                       ; $52c4: $ce $02
    sbc a                                         ; $52c6: $9f
    rlca                                          ; $52c7: $07
    rlca                                          ; $52c8: $07
    ld [bc], a                                    ; $52c9: $02
    ld a, [de]                                    ; $52ca: $1a
    nop                                           ; $52cb: $00
    inc sp                                        ; $52cc: $33
    ld bc, $0307                                  ; $52cd: $01 $07 $03
    nop                                           ; $52d0: $00
    nop                                           ; $52d1: $00
    ld b, b                                       ; $52d2: $40
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    nop                                           ; $52d5: $00
    and b                                         ; $52d6: $a0
    add b                                         ; $52d7: $80
    ret nz                                        ; $52d8: $c0

    ret nz                                        ; $52d9: $c0

    add b                                         ; $52da: $80
    add b                                         ; $52db: $80
    ldh a, [$60]                                  ; $52dc: $f0 $60
    add c                                         ; $52de: $81
    add b                                         ; $52df: $80
    inc sp                                        ; $52e0: $33
    nop                                           ; $52e1: $00
    inc e                                         ; $52e2: $1c
    nop                                           ; $52e3: $00
    ld c, h                                       ; $52e4: $4c
    inc c                                         ; $52e5: $0c
    ld h, a                                       ; $52e6: $67
    ld [bc], a                                    ; $52e7: $02
    adc a                                         ; $52e8: $8f
    ld bc, $075f                                  ; $52e9: $01 $5f $07
    adc e                                         ; $52ec: $8b
    ld b, $9f                                     ; $52ed: $06 $9f
    ld bc, $10d9                                  ; $52ef: $01 $d9 $10
    pop af                                        ; $52f2: $f1
    ret nz                                        ; $52f3: $c0

    add sp, $60                                   ; $52f4: $e8 $60
    add sp, -$60                                  ; $52f6: $e8 $a0
    sub c                                         ; $52f8: $91
    nop                                           ; $52f9: $00
    and b                                         ; $52fa: $a0
    and b                                         ; $52fb: $a0
    pop bc                                        ; $52fc: $c1
    add b                                         ; $52fd: $80
    add b                                         ; $52fe: $80
    add b                                         ; $52ff: $80
    ld d, a                                       ; $5300: $57
    add hl, bc                                    ; $5301: $09
    ccf                                           ; $5302: $3f
    inc bc                                        ; $5303: $03
    dec bc                                        ; $5304: $0b
    inc b                                         ; $5305: $04
    sbc l                                         ; $5306: $9d
    ld [bc], a                                    ; $5307: $02
    ld c, a                                       ; $5308: $4f
    dec c                                         ; $5309: $0d
    ld d, a                                       ; $530a: $57
    ld [bc], a                                    ; $530b: $02
    adc a                                         ; $530c: $8f
    ld bc, $055b                                  ; $530d: $01 $5b $05
    ldh a, [$60]                                  ; $5310: $f0 $60
    add c                                         ; $5312: $81
    add b                                         ; $5313: $80
    ret c                                         ; $5314: $d8

    sub b                                         ; $5315: $90
    ldh a, [rLCDC]                                ; $5316: $f0 $40
    db $eb                                        ; $5318: $eb
    ld h, b                                       ; $5319: $60
    add sp, -$38                                  ; $531a: $e8 $c8
    pop de                                        ; $531c: $d1
    nop                                           ; $531d: $00
    pop af                                        ; $531e: $f1
    ldh [$83], a                                  ; $531f: $e0 $83
    dec c                                         ; $5321: $0d
    sub a                                         ; $5322: $97
    dec bc                                        ; $5323: $0b
    ld b, a                                       ; $5324: $47
    ld [$031f], sp                                ; $5325: $08 $1f $03
    dec bc                                        ; $5328: $0b
    dec b                                         ; $5329: $05
    cp c                                          ; $532a: $b9
    ld b, $4b                                     ; $532b: $06 $4b
    inc b                                         ; $532d: $04
    rst $18                                       ; $532e: $df
    ld c, c                                       ; $532f: $49
    ret nz                                        ; $5330: $c0

    ld b, b                                       ; $5331: $40
    ld b, b                                       ; $5332: $40
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    ld sp, $7b31                                  ; $5338: $31 $31 $7b
    ei                                            ; $533b: $fb
    rst $38                                       ; $533c: $ff
    rst $38                                       ; $533d: $ff
    rst $38                                       ; $533e: $ff
    rst $38                                       ; $533f: $ff
    ld e, a                                       ; $5340: $5f
    rla                                           ; $5341: $17
    rst $20                                       ; $5342: $e7
    add hl, de                                    ; $5343: $19
    ld h, a                                       ; $5344: $67
    jr jr_073_5347                                ; $5345: $18 $00

jr_073_5347:
    rra                                           ; $5347: $1f
    nop                                           ; $5348: $00
    rra                                           ; $5349: $1f
    ret nz                                        ; $534a: $c0

    rst $18                                       ; $534b: $df
    pop af                                        ; $534c: $f1
    rst $38                                       ; $534d: $ff
    rst $38                                       ; $534e: $ff
    rst $38                                       ; $534f: $ff
    nop                                           ; $5350: $00
    rst $38                                       ; $5351: $ff
    nop                                           ; $5352: $00
    rst $38                                       ; $5353: $ff
    nop                                           ; $5354: $00
    rst $38                                       ; $5355: $ff
    nop                                           ; $5356: $00
    rst $38                                       ; $5357: $ff
    nop                                           ; $5358: $00
    rst $38                                       ; $5359: $ff
    nop                                           ; $535a: $00
    rst $38                                       ; $535b: $ff
    nop                                           ; $535c: $00
    rst $38                                       ; $535d: $ff
    nop                                           ; $535e: $00
    rst $38                                       ; $535f: $ff
    nop                                           ; $5360: $00
    rst $38                                       ; $5361: $ff
    ld [hl+], a                                   ; $5362: $22
    db $dd                                        ; $5363: $dd
    nop                                           ; $5364: $00
    rst $38                                       ; $5365: $ff
    adc b                                         ; $5366: $88
    ld [hl], a                                    ; $5367: $77
    nop                                           ; $5368: $00
    rst $38                                       ; $5369: $ff
    ld d, l                                       ; $536a: $55
    xor d                                         ; $536b: $aa
    xor d                                         ; $536c: $aa
    ld d, l                                       ; $536d: $55
    rst $38                                       ; $536e: $ff
    nop                                           ; $536f: $00
    rst $38                                       ; $5370: $ff
    nop                                           ; $5371: $00
    rst $38                                       ; $5372: $ff
    nop                                           ; $5373: $00
    rst $38                                       ; $5374: $ff
    nop                                           ; $5375: $00
    rst $38                                       ; $5376: $ff
    nop                                           ; $5377: $00
    cp e                                          ; $5378: $bb
    nop                                           ; $5379: $00
    rst $38                                       ; $537a: $ff
    nop                                           ; $537b: $00
    xor d                                         ; $537c: $aa
    nop                                           ; $537d: $00
    ld d, l                                       ; $537e: $55
    nop                                           ; $537f: $00
    rst $38                                       ; $5380: $ff
    rst $38                                       ; $5381: $ff
    rst $38                                       ; $5382: $ff
    rst $38                                       ; $5383: $ff
    rst $38                                       ; $5384: $ff
    rst $38                                       ; $5385: $ff
    rst $38                                       ; $5386: $ff
    rst $38                                       ; $5387: $ff
    rst $38                                       ; $5388: $ff
    rst $38                                       ; $5389: $ff
    rst $38                                       ; $538a: $ff
    rst $38                                       ; $538b: $ff
    rst $38                                       ; $538c: $ff
    rst $38                                       ; $538d: $ff
    rst $38                                       ; $538e: $ff
    rst $38                                       ; $538f: $ff
    rst $38                                       ; $5390: $ff
    rst $38                                       ; $5391: $ff
    rst $38                                       ; $5392: $ff
    cp $ff                                        ; $5393: $fe $ff
    ld a, b                                       ; $5395: $78
    rst $38                                       ; $5396: $ff
    nop                                           ; $5397: $00
    rst $38                                       ; $5398: $ff
    nop                                           ; $5399: $00
    rrca                                          ; $539a: $0f
    nop                                           ; $539b: $00
    db $ed                                        ; $539c: $ed
    nop                                           ; $539d: $00
    or b                                          ; $539e: $b0
    ld b, b                                       ; $539f: $40
    rst $38                                       ; $53a0: $ff
    add a                                         ; $53a1: $87
    rst $38                                       ; $53a2: $ff
    ld bc, $00ff                                  ; $53a3: $01 $ff $00
    rst $18                                       ; $53a6: $df
    nop                                           ; $53a7: $00
    ld e, a                                       ; $53a8: $5f
    nop                                           ; $53a9: $00
    ld b, e                                       ; $53aa: $43
    nop                                           ; $53ab: $00
    jr c, jr_073_53ae                             ; $53ac: $38 $00

jr_073_53ae:
    ld l, a                                       ; $53ae: $6f
    db $10                                        ; $53af: $10
    rst $38                                       ; $53b0: $ff
    rst $38                                       ; $53b1: $ff
    rst $38                                       ; $53b2: $ff
    cp $ff                                        ; $53b3: $fe $ff
    ld a, b                                       ; $53b5: $78
    rst $38                                       ; $53b6: $ff
    nop                                           ; $53b7: $00
    rst $38                                       ; $53b8: $ff
    nop                                           ; $53b9: $00
    ccf                                           ; $53ba: $3f
    nop                                           ; $53bb: $00
    rlc b                                         ; $53bc: $cb $00
    ld h, b                                       ; $53be: $60
    add b                                         ; $53bf: $80
    rst $38                                       ; $53c0: $ff
    add a                                         ; $53c1: $87
    rst $38                                       ; $53c2: $ff
    ld bc, $00ff                                  ; $53c3: $01 $ff $00
    rst $18                                       ; $53c6: $df
    nop                                           ; $53c7: $00
    rst $18                                       ; $53c8: $df
    nop                                           ; $53c9: $00
    ld c, b                                       ; $53ca: $48
    nop                                           ; $53cb: $00
    rlca                                          ; $53cc: $07
    nop                                           ; $53cd: $00
    dec e                                         ; $53ce: $1d
    ld [bc], a                                    ; $53cf: $02
    call c, $e620                                 ; $53d0: $dc $20 $e6
    add hl, de                                    ; $53d3: $19
    ld [hl], a                                    ; $53d4: $77
    adc b                                         ; $53d5: $88
    ld [hl], e                                    ; $53d6: $73
    adc h                                         ; $53d7: $8c
    ld e, l                                       ; $53d8: $5d
    add d                                         ; $53d9: $82
    ld c, e                                       ; $53da: $4b
    inc b                                         ; $53db: $04
    nop                                           ; $53dc: $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    jp hl                                         ; $53e0: $e9


    ld d, $97                                     ; $53e1: $16 $97
    ld l, b                                       ; $53e3: $68
    ld e, c                                       ; $53e4: $59
    and b                                         ; $53e5: $a0
    dec a                                         ; $53e6: $3d
    ret nz                                        ; $53e7: $c0

    add sp, $00                                   ; $53e8: $e8 $00
    add b                                         ; $53ea: $80
    nop                                           ; $53eb: $00
    nop                                           ; $53ec: $00
    nop                                           ; $53ed: $00
    nop                                           ; $53ee: $00
    nop                                           ; $53ef: $00
    ld a, b                                       ; $53f0: $78
    add b                                         ; $53f1: $80
    cp a                                          ; $53f2: $bf
    ld b, b                                       ; $53f3: $40
    ld c, $f1                                     ; $53f4: $0e $f1
    swap h                                        ; $53f6: $cb $34
    pop af                                        ; $53f8: $f1
    inc c                                         ; $53f9: $0c
    inc e                                         ; $53fa: $1c
    nop                                           ; $53fb: $00
    nop                                           ; $53fc: $00
    nop                                           ; $53fd: $00
    nop                                           ; $53fe: $00
    nop                                           ; $53ff: $00
    halt                                          ; $5400: $76
    add hl, bc                                    ; $5401: $09
    xor $11                                       ; $5402: $ee $11
    ld d, a                                       ; $5404: $57
    and b                                         ; $5405: $a0
    sub d                                         ; $5406: $92
    ld h, c                                       ; $5407: $61
    or e                                          ; $5408: $b3
    ld b, b                                       ; $5409: $40
    ret nz                                        ; $540a: $c0

    nop                                           ; $540b: $00
    nop                                           ; $540c: $00
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    ld l, [hl]                                    ; $5412: $6e
    rst $38                                       ; $5413: $ff
    sbc b                                         ; $5414: $98
    rst $38                                       ; $5415: $ff
    inc bc                                        ; $5416: $03
    rst $38                                       ; $5417: $ff
    nop                                           ; $5418: $00
    rst $38                                       ; $5419: $ff
    nop                                           ; $541a: $00
    rst $38                                       ; $541b: $ff
    nop                                           ; $541c: $00
    rst $38                                       ; $541d: $ff
    nop                                           ; $541e: $00
    rst $38                                       ; $541f: $ff
    cp $00                                        ; $5420: $fe $00
    ld a, b                                       ; $5422: $78
    ld bc, $8700                                  ; $5423: $01 $00 $87
    dec b                                         ; $5426: $05
    rst $38                                       ; $5427: $ff
    jr z, @+$01                                   ; $5428: $28 $ff

    nop                                           ; $542a: $00
    rst $38                                       ; $542b: $ff
    nop                                           ; $542c: $00
    rst $38                                       ; $542d: $ff
    nop                                           ; $542e: $00
    rst $38                                       ; $542f: $ff
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    jp Jump_073_59ff                              ; $5432: $c3 $ff $59


    rst $38                                       ; $5435: $ff
    sub c                                         ; $5436: $91
    rst $38                                       ; $5437: $ff
    nop                                           ; $5438: $00
    rst $38                                       ; $5439: $ff
    nop                                           ; $543a: $00
    rst $38                                       ; $543b: $ff
    nop                                           ; $543c: $00
    rst $38                                       ; $543d: $ff
    nop                                           ; $543e: $00
    rst $38                                       ; $543f: $ff
    ld a, [hl]                                    ; $5440: $7e
    nop                                           ; $5441: $00
    jr @-$7d                                      ; $5442: $18 $81

    add d                                         ; $5444: $82
    rst $20                                       ; $5445: $e7
    ld b, c                                       ; $5446: $41
    rst $38                                       ; $5447: $ff
    add b                                         ; $5448: $80
    rst $38                                       ; $5449: $ff
    nop                                           ; $544a: $00
    rst $38                                       ; $544b: $ff
    nop                                           ; $544c: $00
    rst $38                                       ; $544d: $ff
    nop                                           ; $544e: $00
    rst $38                                       ; $544f: $ff
    rst $38                                       ; $5450: $ff
    nop                                           ; $5451: $00
    cp $00                                        ; $5452: $fe $00
    ld hl, sp+$00                                 ; $5454: $f8 $00
    ldh a, [rP1]                                  ; $5456: $f0 $00
    ld b, b                                       ; $5458: $40
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    nop                                           ; $545b: $00
    nop                                           ; $545c: $00
    nop                                           ; $545d: $00
    add b                                         ; $545e: $80
    add b                                         ; $545f: $80
    ld a, a                                       ; $5460: $7f
    add b                                         ; $5461: $80
    ld a, e                                       ; $5462: $7b
    ld [bc], a                                    ; $5463: $02
    or $02                                        ; $5464: $f6 $02
    rst $28                                       ; $5466: $ef
    rlca                                          ; $5467: $07
    rlca                                          ; $5468: $07
    ld [bc], a                                    ; $5469: $02
    ld a, [bc]                                    ; $546a: $0a
    nop                                           ; $546b: $00
    or e                                          ; $546c: $b3
    ld bc, $0307                                  ; $546d: $01 $07 $03
    rst $38                                       ; $5470: $ff
    nop                                           ; $5471: $00
    rst $28                                       ; $5472: $ef
    nop                                           ; $5473: $00
    and $00                                       ; $5474: $e6 $00
    db $f4                                        ; $5476: $f4
    nop                                           ; $5477: $00
    db $e4                                        ; $5478: $e4
    nop                                           ; $5479: $00
    ld [bc], a                                    ; $547a: $02
    nop                                           ; $547b: $00
    jr nz, jr_073_547e                            ; $547c: $20 $00

jr_073_547e:
    add b                                         ; $547e: $80
    add b                                         ; $547f: $80
    rst $38                                       ; $5480: $ff
    nop                                           ; $5481: $00
    ei                                            ; $5482: $fb
    ld [bc], a                                    ; $5483: $02
    and $02                                       ; $5484: $e6 $02
    rst $08                                       ; $5486: $cf
    rlca                                          ; $5487: $07
    rlca                                          ; $5488: $07
    ld [bc], a                                    ; $5489: $02
    ld a, [bc]                                    ; $548a: $0a
    nop                                           ; $548b: $00
    inc sp                                        ; $548c: $33
    ld bc, $0307                                  ; $548d: $01 $07 $03
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    ld b, b                                       ; $5492: $40
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    and b                                         ; $5496: $a0
    add b                                         ; $5497: $80
    ret nz                                        ; $5498: $c0

    ret nz                                        ; $5499: $c0

    add b                                         ; $549a: $80
    add b                                         ; $549b: $80
    ldh a, [$60]                                  ; $549c: $f0 $60
    add c                                         ; $549e: $81
    add b                                         ; $549f: $80
    inc sp                                        ; $54a0: $33
    nop                                           ; $54a1: $00
    inc e                                         ; $54a2: $1c
    nop                                           ; $54a3: $00
    ld c, h                                       ; $54a4: $4c
    inc c                                         ; $54a5: $0c
    ld h, a                                       ; $54a6: $67
    ld [bc], a                                    ; $54a7: $02
    adc a                                         ; $54a8: $8f
    ld bc, $075f                                  ; $54a9: $01 $5f $07
    adc e                                         ; $54ac: $8b
    ld b, $9f                                     ; $54ad: $06 $9f
    ld bc, $10d9                                  ; $54af: $01 $d9 $10
    pop af                                        ; $54b2: $f1
    ret nz                                        ; $54b3: $c0

    add sp, $60                                   ; $54b4: $e8 $60
    add sp, -$60                                  ; $54b6: $e8 $a0
    sub c                                         ; $54b8: $91
    nop                                           ; $54b9: $00
    and b                                         ; $54ba: $a0
    and b                                         ; $54bb: $a0
    pop bc                                        ; $54bc: $c1
    add b                                         ; $54bd: $80
    add b                                         ; $54be: $80
    add b                                         ; $54bf: $80
    ld d, a                                       ; $54c0: $57
    add hl, bc                                    ; $54c1: $09
    ccf                                           ; $54c2: $3f
    inc bc                                        ; $54c3: $03
    dec bc                                        ; $54c4: $0b
    inc b                                         ; $54c5: $04
    sbc l                                         ; $54c6: $9d
    ld [bc], a                                    ; $54c7: $02
    ld c, a                                       ; $54c8: $4f
    dec c                                         ; $54c9: $0d
    ld d, a                                       ; $54ca: $57
    ld [bc], a                                    ; $54cb: $02
    adc a                                         ; $54cc: $8f
    ld bc, $055b                                  ; $54cd: $01 $5b $05
    ldh a, [$60]                                  ; $54d0: $f0 $60
    add c                                         ; $54d2: $81
    add b                                         ; $54d3: $80
    ret c                                         ; $54d4: $d8

    sub b                                         ; $54d5: $90
    ldh a, [rLCDC]                                ; $54d6: $f0 $40
    db $eb                                        ; $54d8: $eb
    ld h, b                                       ; $54d9: $60
    add sp, -$38                                  ; $54da: $e8 $c8
    pop de                                        ; $54dc: $d1
    nop                                           ; $54dd: $00
    pop af                                        ; $54de: $f1
    ldh [$83], a                                  ; $54df: $e0 $83
    dec c                                         ; $54e1: $0d
    sub a                                         ; $54e2: $97
    dec bc                                        ; $54e3: $0b
    ld b, a                                       ; $54e4: $47
    ld [$031f], sp                                ; $54e5: $08 $1f $03
    dec bc                                        ; $54e8: $0b
    dec b                                         ; $54e9: $05
    cp c                                          ; $54ea: $b9
    ld b, $4b                                     ; $54eb: $06 $4b
    inc b                                         ; $54ed: $04
    rst $18                                       ; $54ee: $df

Call_073_54ef:
    ld c, c                                       ; $54ef: $49
    ret nz                                        ; $54f0: $c0

    ld b, b                                       ; $54f1: $40
    ld b, b                                       ; $54f2: $40
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    nop                                           ; $54f6: $00
    nop                                           ; $54f7: $00
    ld sp, $7b31                                  ; $54f8: $31 $31 $7b
    ei                                            ; $54fb: $fb
    rst $38                                       ; $54fc: $ff
    rst $38                                       ; $54fd: $ff
    rst $38                                       ; $54fe: $ff
    rst $38                                       ; $54ff: $ff
    ld e, a                                       ; $5500: $5f
    rla                                           ; $5501: $17
    rst $20                                       ; $5502: $e7
    add hl, de                                    ; $5503: $19
    ld h, a                                       ; $5504: $67
    jr jr_073_5507                                ; $5505: $18 $00

jr_073_5507:
    rra                                           ; $5507: $1f
    nop                                           ; $5508: $00
    rra                                           ; $5509: $1f
    ret nz                                        ; $550a: $c0

    rst $18                                       ; $550b: $df
    pop af                                        ; $550c: $f1
    rst $38                                       ; $550d: $ff
    rst $38                                       ; $550e: $ff
    rst $38                                       ; $550f: $ff
    nop                                           ; $5510: $00
    rst $38                                       ; $5511: $ff
    nop                                           ; $5512: $00
    rst $38                                       ; $5513: $ff
    nop                                           ; $5514: $00
    rst $38                                       ; $5515: $ff
    nop                                           ; $5516: $00
    rst $38                                       ; $5517: $ff
    nop                                           ; $5518: $00
    rst $38                                       ; $5519: $ff
    nop                                           ; $551a: $00
    rst $38                                       ; $551b: $ff
    nop                                           ; $551c: $00
    rst $38                                       ; $551d: $ff
    nop                                           ; $551e: $00
    rst $38                                       ; $551f: $ff
    nop                                           ; $5520: $00
    rst $38                                       ; $5521: $ff
    ld [hl+], a                                   ; $5522: $22
    db $dd                                        ; $5523: $dd
    nop                                           ; $5524: $00
    rst $38                                       ; $5525: $ff
    adc b                                         ; $5526: $88
    ld [hl], a                                    ; $5527: $77
    nop                                           ; $5528: $00
    rst $38                                       ; $5529: $ff
    ld d, l                                       ; $552a: $55
    xor d                                         ; $552b: $aa
    xor d                                         ; $552c: $aa
    ld d, l                                       ; $552d: $55
    rst $38                                       ; $552e: $ff
    nop                                           ; $552f: $00
    rst $38                                       ; $5530: $ff
    nop                                           ; $5531: $00
    rst $38                                       ; $5532: $ff
    nop                                           ; $5533: $00
    rst $38                                       ; $5534: $ff
    nop                                           ; $5535: $00
    rst $38                                       ; $5536: $ff
    nop                                           ; $5537: $00
    db $dd                                        ; $5538: $dd
    nop                                           ; $5539: $00
    rst $38                                       ; $553a: $ff
    nop                                           ; $553b: $00

jr_073_553c:
    ld d, l                                       ; $553c: $55
    nop                                           ; $553d: $00
    xor d                                         ; $553e: $aa
    nop                                           ; $553f: $00
    rst $38                                       ; $5540: $ff
    rst $38                                       ; $5541: $ff
    rst $38                                       ; $5542: $ff
    rst $38                                       ; $5543: $ff
    rst $38                                       ; $5544: $ff
    rst $38                                       ; $5545: $ff
    rst $38                                       ; $5546: $ff
    rst $38                                       ; $5547: $ff
    rst $38                                       ; $5548: $ff
    rst $38                                       ; $5549: $ff
    rst $38                                       ; $554a: $ff
    rst $38                                       ; $554b: $ff
    rst $38                                       ; $554c: $ff
    rst $38                                       ; $554d: $ff
    rst $38                                       ; $554e: $ff
    rst $38                                       ; $554f: $ff
    rst $38                                       ; $5550: $ff
    rst $38                                       ; $5551: $ff
    rst $38                                       ; $5552: $ff
    ld a, a                                       ; $5553: $7f
    rst $38                                       ; $5554: $ff
    ld e, $ff                                     ; $5555: $1e $ff
    nop                                           ; $5557: $00
    rst $38                                       ; $5558: $ff
    nop                                           ; $5559: $00
    dec bc                                        ; $555a: $0b
    nop                                           ; $555b: $00
    di                                            ; $555c: $f3
    nop                                           ; $555d: $00
    ret c                                         ; $555e: $d8

    jr nz, @+$01                                  ; $555f: $20 $ff

    pop hl                                        ; $5561: $e1
    rst $38                                       ; $5562: $ff
    add b                                         ; $5563: $80
    rst $38                                       ; $5564: $ff
    nop                                           ; $5565: $00
    rst $30                                       ; $5566: $f7
    nop                                           ; $5567: $00
    rst $10                                       ; $5568: $d7
    nop                                           ; $5569: $00
    jp nz, Jump_073_5c00                          ; $556a: $c2 $00 $5c

    nop                                           ; $556d: $00
    scf                                           ; $556e: $37
    ld [$ffff], sp                                ; $556f: $08 $ff $ff
    rst $38                                       ; $5572: $ff
    ld a, a                                       ; $5573: $7f
    rst $38                                       ; $5574: $ff
    ld e, $ff                                     ; $5575: $1e $ff
    nop                                           ; $5577: $00
    rst $38                                       ; $5578: $ff
    nop                                           ; $5579: $00
    adc a                                         ; $557a: $8f
    nop                                           ; $557b: $00
    ld h, d                                       ; $557c: $62
    nop                                           ; $557d: $00
    or d                                          ; $557e: $b2
    ld b, b                                       ; $557f: $40
    rst $38                                       ; $5580: $ff
    pop hl                                        ; $5581: $e1
    rst $38                                       ; $5582: $ff
    add b                                         ; $5583: $80
    rst $38                                       ; $5584: $ff
    nop                                           ; $5585: $00
    rst $30                                       ; $5586: $f7
    nop                                           ; $5587: $00
    rst $30                                       ; $5588: $f7
    nop                                           ; $5589: $00
    ret nc                                        ; $558a: $d0

    nop                                           ; $558b: $00
    jp $0e00                                      ; $558c: $c3 $00 $0e


    ld bc, $906e                                  ; $558f: $01 $6e $90
    ld [hl], e                                    ; $5592: $73
    adc h                                         ; $5593: $8c
    cp e                                          ; $5594: $bb
    ld b, h                                       ; $5595: $44
    add hl, sp                                    ; $5596: $39
    add $ae                                       ; $5597: $c6 $ae
    ld b, c                                       ; $5599: $41
    dec h                                         ; $559a: $25
    ld [bc], a                                    ; $559b: $02
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    nop                                           ; $559e: $00
    nop                                           ; $559f: $00
    ld [hl], h                                    ; $55a0: $74
    dec bc                                        ; $55a1: $0b

jr_073_55a2:
    ld c, e                                       ; $55a2: $4b
    or h                                          ; $55a3: $b4
    xor h                                         ; $55a4: $ac
    ld d, b                                       ; $55a5: $50
    sbc [hl]                                      ; $55a6: $9e
    ld h, b                                       ; $55a7: $60
    db $f4                                        ; $55a8: $f4
    nop                                           ; $55a9: $00

Jump_073_55aa:
    ret nz                                        ; $55aa: $c0

    nop                                           ; $55ab: $00
    nop                                           ; $55ac: $00
    nop                                           ; $55ad: $00
    nop                                           ; $55ae: $00
    nop                                           ; $55af: $00
    cp h                                          ; $55b0: $bc
    ld b, b                                       ; $55b1: $40
    rst $18                                       ; $55b2: $df
    jr nz, jr_073_553c                            ; $55b3: $20 $87

    ld a, b                                       ; $55b5: $78
    push hl                                       ; $55b6: $e5
    ld a, [de]                                    ; $55b7: $1a
    ld a, b                                       ; $55b8: $78
    ld b, $0e                                     ; $55b9: $06 $0e
    nop                                           ; $55bb: $00
    nop                                           ; $55bc: $00
    nop                                           ; $55bd: $00
    nop                                           ; $55be: $00
    nop                                           ; $55bf: $00
    dec sp                                        ; $55c0: $3b
    inc b                                         ; $55c1: $04
    rst $30                                       ; $55c2: $f7
    ld [$d02b], sp                                ; $55c3: $08 $2b $d0
    ret                                           ; $55c6: $c9


    jr nc, jr_073_55a2                            ; $55c7: $30 $d9

    jr nz, @+$62                                  ; $55c9: $20 $60

    nop                                           ; $55cb: $00
    nop                                           ; $55cc: $00
    nop                                           ; $55cd: $00
    nop                                           ; $55ce: $00
    nop                                           ; $55cf: $00
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    scf                                           ; $55d2: $37
    rst $38                                       ; $55d3: $ff
    ld c, h                                       ; $55d4: $4c
    rst $38                                       ; $55d5: $ff
    add c                                         ; $55d6: $81
    rst $38                                       ; $55d7: $ff
    nop                                           ; $55d8: $00
    rst $38                                       ; $55d9: $ff
    nop                                           ; $55da: $00
    rst $38                                       ; $55db: $ff
    nop                                           ; $55dc: $00
    rst $38                                       ; $55dd: $ff
    nop                                           ; $55de: $00
    rst $38                                       ; $55df: $ff
    ld a, a                                       ; $55e0: $7f
    nop                                           ; $55e1: $00
    inc a                                         ; $55e2: $3c
    add b                                         ; $55e3: $80
    nop                                           ; $55e4: $00
    jp $ff82                                      ; $55e5: $c3 $82 $ff


    inc d                                         ; $55e8: $14
    rst $38                                       ; $55e9: $ff
    nop                                           ; $55ea: $00
    rst $38                                       ; $55eb: $ff
    nop                                           ; $55ec: $00
    rst $38                                       ; $55ed: $ff
    nop                                           ; $55ee: $00
    rst $38                                       ; $55ef: $ff
    nop                                           ; $55f0: $00
    nop                                           ; $55f1: $00
    ld h, c                                       ; $55f2: $61
    rst $38                                       ; $55f3: $ff
    inc l                                         ; $55f4: $2c
    rst $38                                       ; $55f5: $ff
    ret z                                         ; $55f6: $c8

    rst $38                                       ; $55f7: $ff
    nop                                           ; $55f8: $00
    rst $38                                       ; $55f9: $ff
    nop                                           ; $55fa: $00
    rst $38                                       ; $55fb: $ff
    nop                                           ; $55fc: $00
    rst $38                                       ; $55fd: $ff
    nop                                           ; $55fe: $00
    rst $38                                       ; $55ff: $ff
    ccf                                           ; $5600: $3f
    nop                                           ; $5601: $00
    adc h                                         ; $5602: $8c
    ret nz                                        ; $5603: $c0

    pop bc                                        ; $5604: $c1
    di                                            ; $5605: $f3
    and b                                         ; $5606: $a0
    rst $38                                       ; $5607: $ff
    ld b, b                                       ; $5608: $40
    rst $38                                       ; $5609: $ff
    nop                                           ; $560a: $00
    rst $38                                       ; $560b: $ff
    nop                                           ; $560c: $00
    rst $38                                       ; $560d: $ff
    nop                                           ; $560e: $00
    rst $38                                       ; $560f: $ff
    rst $38                                       ; $5610: $ff
    nop                                           ; $5611: $00
    rst $38                                       ; $5612: $ff
    nop                                           ; $5613: $00
    ld a, h                                       ; $5614: $7c
    nop                                           ; $5615: $00
    ld hl, sp-$80                                 ; $5616: $f8 $80
    and b                                         ; $5618: $a0
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    nop                                           ; $561b: $00
    add b                                         ; $561c: $80
    add b                                         ; $561d: $80
    ret nz                                        ; $561e: $c0

    ret nz                                        ; $561f: $c0

    cp a                                          ; $5620: $bf
    ld b, b                                       ; $5621: $40
    dec a                                         ; $5622: $3d
    ld bc, $017b                                  ; $5623: $01 $7b $01
    ld [hl], a                                    ; $5626: $77
    inc bc                                        ; $5627: $03
    inc bc                                        ; $5628: $03
    ld bc, $0005                                  ; $5629: $01 $05 $00
    ld e, c                                       ; $562c: $59
    nop                                           ; $562d: $00
    inc bc                                        ; $562e: $03
    ld bc, $00ff                                  ; $562f: $01 $ff $00
    rst $30                                       ; $5632: $f7
    nop                                           ; $5633: $00
    ld [hl], e                                    ; $5634: $73
    nop                                           ; $5635: $00
    ld a, [$f280]                                 ; $5636: $fa $80 $f2
    nop                                           ; $5639: $00
    ld bc, $9000                                  ; $563a: $01 $00 $90
    add b                                         ; $563d: $80
    ret nz                                        ; $563e: $c0

    ret nz                                        ; $563f: $c0

    rst $38                                       ; $5640: $ff
    nop                                           ; $5641: $00
    db $fd                                        ; $5642: $fd
    ld bc, $0173                                  ; $5643: $01 $73 $01
    ld h, a                                       ; $5646: $67
    inc bc                                        ; $5647: $03
    inc bc                                        ; $5648: $03
    ld bc, $0005                                  ; $5649: $01 $05 $00
    add hl, de                                    ; $564c: $19
    nop                                           ; $564d: $00
    inc bc                                        ; $564e: $03
    ld bc, $0080                                  ; $564f: $01 $80 $00

jr_073_5652:
    jr nz, jr_073_5654                            ; $5652: $20 $00

jr_073_5654:
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    ret nc                                        ; $5656: $d0

    ld b, b                                       ; $5657: $40
    ldh [$e0], a                                  ; $5658: $e0 $e0
    ret nz                                        ; $565a: $c0

    ret nz                                        ; $565b: $c0

    ld hl, sp+$30                                 ; $565c: $f8 $30
    ret nz                                        ; $565e: $c0

    ret nz                                        ; $565f: $c0

    add hl, de                                    ; $5660: $19
    nop                                           ; $5661: $00
    ld c, $00                                     ; $5662: $0e $00
    ld h, $06                                     ; $5664: $26 $06
    inc sp                                        ; $5666: $33
    ld bc, $0047                                  ; $5667: $01 $47 $00
    cpl                                           ; $566a: $2f

jr_073_566b:
    inc bc                                        ; $566b: $03
    ld b, l                                       ; $566c: $45
    inc bc                                        ; $566d: $03
    rst $08                                       ; $566e: $cf
    nop                                           ; $566f: $00
    db $ec                                        ; $5670: $ec
    adc b                                         ; $5671: $88
    ld hl, sp-$20                                 ; $5672: $f8 $e0
    db $f4                                        ; $5674: $f4
    jr nc, jr_073_566b                            ; $5675: $30 $f4

    ld d, b                                       ; $5677: $50
    ret z                                         ; $5678: $c8

    add b                                         ; $5679: $80
    ret nc                                        ; $567a: $d0

    ld d, b                                       ; $567b: $50
    ldh [$c0], a                                  ; $567c: $e0 $c0
    ret nz                                        ; $567e: $c0

    ret nz                                        ; $567f: $c0

    xor e                                         ; $5680: $ab
    inc b                                         ; $5681: $04
    sbc a                                         ; $5682: $9f
    ld bc, $0205                                  ; $5683: $01 $05 $02
    ld c, [hl]                                    ; $5686: $4e
    ld bc, $06a7                                  ; $5687: $01 $a7 $06
    dec hl                                        ; $568a: $2b
    ld bc, $00c7                                  ; $568b: $01 $c7 $00
    dec l                                         ; $568e: $2d
    ld [bc], a                                    ; $568f: $02
    ld hl, sp-$50                                 ; $5690: $f8 $b0
    ret nz                                        ; $5692: $c0

    ret nz                                        ; $5693: $c0

    db $ec                                        ; $5694: $ec
    ld c, b                                       ; $5695: $48
    ld hl, sp-$60                                 ; $5696: $f8 $a0
    push af                                       ; $5698: $f5
    or b                                          ; $5699: $b0
    db $f4                                        ; $569a: $f4
    ld h, h                                       ; $569b: $64
    add sp, $00                                   ; $569c: $e8 $00
    ld hl, sp-$10                                 ; $569e: $f8 $f0
    ld b, c                                       ; $56a0: $41
    ld b, $cb                                     ; $56a1: $06 $cb
    dec b                                         ; $56a3: $05
    inc hl                                        ; $56a4: $23
    inc b                                         ; $56a5: $04
    rrca                                          ; $56a6: $0f
    ld bc, $0285                                  ; $56a7: $01 $85 $02
    ld e, h                                       ; $56aa: $5c
    inc bc                                        ; $56ab: $03
    and l                                         ; $56ac: $a5
    ld [bc], a                                    ; $56ad: $02
    rst $28                                       ; $56ae: $ef
    inc h                                         ; $56af: $24
    ldh [$a0], a                                  ; $56b0: $e0 $a0
    and b                                         ; $56b2: $a0
    add b                                         ; $56b3: $80
    add b                                         ; $56b4: $80
    nop                                           ; $56b5: $00
    nop                                           ; $56b6: $00
    add b                                         ; $56b7: $80
    jr jr_073_5652                                ; $56b8: $18 $98

    dec a                                         ; $56ba: $3d
    db $fd                                        ; $56bb: $fd
    rst $38                                       ; $56bc: $ff
    rst $38                                       ; $56bd: $ff
    rst $38                                       ; $56be: $ff
    rst $38                                       ; $56bf: $ff
    cpl                                           ; $56c0: $2f
    dec bc                                        ; $56c1: $0b
    ld [hl], e                                    ; $56c2: $73
    inc c                                         ; $56c3: $0c
    inc sp                                        ; $56c4: $33
    inc c                                         ; $56c5: $0c
    nop                                           ; $56c6: $00
    rrca                                          ; $56c7: $0f
    add b                                         ; $56c8: $80
    adc a                                         ; $56c9: $8f
    ldh [$ef], a                                  ; $56ca: $e0 $ef
    ld hl, sp-$01                                 ; $56cc: $f8 $ff
    rst $38                                       ; $56ce: $ff
    rst $38                                       ; $56cf: $ff
    nop                                           ; $56d0: $00
    rst $38                                       ; $56d1: $ff
    nop                                           ; $56d2: $00
    rst $38                                       ; $56d3: $ff
    nop                                           ; $56d4: $00
    rst $38                                       ; $56d5: $ff
    nop                                           ; $56d6: $00
    rst $38                                       ; $56d7: $ff
    nop                                           ; $56d8: $00
    rst $38                                       ; $56d9: $ff
    nop                                           ; $56da: $00
    rst $38                                       ; $56db: $ff
    nop                                           ; $56dc: $00
    rst $38                                       ; $56dd: $ff
    nop                                           ; $56de: $00
    rst $38                                       ; $56df: $ff
    nop                                           ; $56e0: $00
    rst $38                                       ; $56e1: $ff
    ld [hl+], a                                   ; $56e2: $22
    db $dd                                        ; $56e3: $dd
    nop                                           ; $56e4: $00
    rst $38                                       ; $56e5: $ff
    adc b                                         ; $56e6: $88
    ld [hl], a                                    ; $56e7: $77
    nop                                           ; $56e8: $00
    rst $38                                       ; $56e9: $ff
    ld d, l                                       ; $56ea: $55
    xor d                                         ; $56eb: $aa
    xor d                                         ; $56ec: $aa
    ld d, l                                       ; $56ed: $55
    rst $38                                       ; $56ee: $ff
    nop                                           ; $56ef: $00
    rst $38                                       ; $56f0: $ff
    nop                                           ; $56f1: $00
    rst $38                                       ; $56f2: $ff
    nop                                           ; $56f3: $00
    rst $38                                       ; $56f4: $ff
    nop                                           ; $56f5: $00
    rst $38                                       ; $56f6: $ff
    nop                                           ; $56f7: $00
    db $dd                                        ; $56f8: $dd
    nop                                           ; $56f9: $00
    rst $38                                       ; $56fa: $ff
    nop                                           ; $56fb: $00
    ld d, l                                       ; $56fc: $55
    nop                                           ; $56fd: $00
    xor d                                         ; $56fe: $aa
    nop                                           ; $56ff: $00
    rst $38                                       ; $5700: $ff
    rst $38                                       ; $5701: $ff
    rst $38                                       ; $5702: $ff
    rst $38                                       ; $5703: $ff
    rst $38                                       ; $5704: $ff
    rst $38                                       ; $5705: $ff
    rst $38                                       ; $5706: $ff
    rst $38                                       ; $5707: $ff
    rst $38                                       ; $5708: $ff
    rst $38                                       ; $5709: $ff
    rst $38                                       ; $570a: $ff
    rst $38                                       ; $570b: $ff
    rst $38                                       ; $570c: $ff
    rst $38                                       ; $570d: $ff
    rst $38                                       ; $570e: $ff
    rst $38                                       ; $570f: $ff
    rst $38                                       ; $5710: $ff
    ld a, a                                       ; $5711: $7f
    rst $38                                       ; $5712: $ff
    rra                                           ; $5713: $1f
    rst $38                                       ; $5714: $ff
    rlca                                          ; $5715: $07
    rst $38                                       ; $5716: $ff
    nop                                           ; $5717: $00
    rst $38                                       ; $5718: $ff
    nop                                           ; $5719: $00
    ld b, $00                                     ; $571a: $06 $00
    ld hl, sp+$00                                 ; $571c: $f8 $00
    ld l, h                                       ; $571e: $6c
    sub b                                         ; $571f: $90
    rst $38                                       ; $5720: $ff
    ld hl, sp-$01                                 ; $5721: $f8 $ff
    ldh [rIE], a                                  ; $5723: $e0 $ff
    add b                                         ; $5725: $80
    db $fd                                        ; $5726: $fd
    nop                                           ; $5727: $00
    push af                                       ; $5728: $f5
    nop                                           ; $5729: $00
    ldh a, [rP1]                                  ; $572a: $f0 $00
    adc $00                                       ; $572c: $ce $00
    dec de                                        ; $572e: $1b
    inc b                                         ; $572f: $04
    rst $38                                       ; $5730: $ff
    ld a, a                                       ; $5731: $7f
    rst $38                                       ; $5732: $ff
    rra                                           ; $5733: $1f
    rst $38                                       ; $5734: $ff
    rlca                                          ; $5735: $07
    rst $38                                       ; $5736: $ff
    nop                                           ; $5737: $00
    rst $38                                       ; $5738: $ff
    nop                                           ; $5739: $00
    add e                                         ; $573a: $83
    nop                                           ; $573b: $00
    jr nc, jr_073_573e                            ; $573c: $30 $00

jr_073_573e:
    ret c                                         ; $573e: $d8

    jr nz, @+$01                                  ; $573f: $20 $ff

    ld hl, sp-$01                                 ; $5741: $f8 $ff
    ldh [rIE], a                                  ; $5743: $e0 $ff
    add b                                         ; $5745: $80
    db $fd                                        ; $5746: $fd
    nop                                           ; $5747: $00
    db $fd                                        ; $5748: $fd
    nop                                           ; $5749: $00
    db $f4                                        ; $574a: $f4
    nop                                           ; $574b: $00
    or c                                          ; $574c: $b1
    nop                                           ; $574d: $00
    add a                                         ; $574e: $87
    nop                                           ; $574f: $00
    or a                                          ; $5750: $b7
    ld c, b                                       ; $5751: $48
    cp c                                          ; $5752: $b9
    ld b, [hl]                                    ; $5753: $46
    db $dd                                        ; $5754: $dd
    ld [hl+], a                                   ; $5755: $22
    sbc h                                         ; $5756: $9c
    ld h, e                                       ; $5757: $63
    rst $10                                       ; $5758: $d7
    jr nz, jr_073_576d                            ; $5759: $20 $12

    ld bc, $0000                                  ; $575b: $01 $00 $00
    nop                                           ; $575e: $00
    nop                                           ; $575f: $00
    ld a, [hl-]                                   ; $5760: $3a
    dec b                                         ; $5761: $05
    and l                                         ; $5762: $a5
    ld e, d                                       ; $5763: $5a
    sub $28                                       ; $5764: $d6 $28
    rst $08                                       ; $5766: $cf
    jr nc, jr_073_57e3                            ; $5767: $30 $7a

    add b                                         ; $5769: $80
    ldh [rP1], a                                  ; $576a: $e0 $00
    nop                                           ; $576c: $00

jr_073_576d:
    nop                                           ; $576d: $00
    nop                                           ; $576e: $00
    nop                                           ; $576f: $00
    ld e, [hl]                                    ; $5770: $5e
    and b                                         ; $5771: $a0
    rst $28                                       ; $5772: $ef
    db $10                                        ; $5773: $10
    ld b, e                                       ; $5774: $43
    inc a                                         ; $5775: $3c
    ld [hl], d                                    ; $5776: $72
    dec c                                         ; $5777: $0d
    inc a                                         ; $5778: $3c
    inc bc                                        ; $5779: $03
    rlca                                          ; $577a: $07
    nop                                           ; $577b: $00
    nop                                           ; $577c: $00
    nop                                           ; $577d: $00
    nop                                           ; $577e: $00
    nop                                           ; $577f: $00

jr_073_5780:
    dec e                                         ; $5780: $1d
    ld [bc], a                                    ; $5781: $02
    ei                                            ; $5782: $fb
    inc b                                         ; $5783: $04
    sub l                                         ; $5784: $95
    ld l, b                                       ; $5785: $68
    db $e4                                        ; $5786: $e4
    jr jr_073_57f5                                ; $5787: $18 $6c

    db $10                                        ; $5789: $10
    jr nc, jr_073_578c                            ; $578a: $30 $00

jr_073_578c:
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    add b                                         ; $5790: $80
    nop                                           ; $5791: $00
    dec de                                        ; $5792: $1b
    ld a, a                                       ; $5793: $7f
    and [hl]                                      ; $5794: $a6
    rst $38                                       ; $5795: $ff
    ld b, b                                       ; $5796: $40
    rst $38                                       ; $5797: $ff
    nop                                           ; $5798: $00
    rst $38                                       ; $5799: $ff
    nop                                           ; $579a: $00
    rst $38                                       ; $579b: $ff
    nop                                           ; $579c: $00
    rst $38                                       ; $579d: $ff
    nop                                           ; $579e: $00
    rst $38                                       ; $579f: $ff
    ccf                                           ; $57a0: $3f
    nop                                           ; $57a1: $00
    sbc [hl]                                      ; $57a2: $9e
    ret nz                                        ; $57a3: $c0

    nop                                           ; $57a4: $00
    pop hl                                        ; $57a5: $e1
    pop bc                                        ; $57a6: $c1
    rst $38                                       ; $57a7: $ff
    ld a, [bc]                                    ; $57a8: $0a
    rst $38                                       ; $57a9: $ff
    nop                                           ; $57aa: $00
    rst $38                                       ; $57ab: $ff
    nop                                           ; $57ac: $00
    rst $38                                       ; $57ad: $ff
    nop                                           ; $57ae: $00
    rst $38                                       ; $57af: $ff
    add b                                         ; $57b0: $80
    nop                                           ; $57b1: $00
    jr nc, @+$81                                  ; $57b2: $30 $7f

    ld d, $ff                                     ; $57b4: $16 $ff
    ld h, h                                       ; $57b6: $64
    rst $38                                       ; $57b7: $ff
    nop                                           ; $57b8: $00
    rst $38                                       ; $57b9: $ff
    nop                                           ; $57ba: $00
    rst $38                                       ; $57bb: $ff
    nop                                           ; $57bc: $00
    rst $38                                       ; $57bd: $ff
    nop                                           ; $57be: $00
    rst $38                                       ; $57bf: $ff
    rra                                           ; $57c0: $1f
    nop                                           ; $57c1: $00
    add $e0                                       ; $57c2: $c6 $e0
    ld h, b                                       ; $57c4: $60
    ld sp, hl                                     ; $57c5: $f9
    ld d, b                                       ; $57c6: $50
    rst $38                                       ; $57c7: $ff
    jr nz, @+$01                                  ; $57c8: $20 $ff

    nop                                           ; $57ca: $00
    rst $38                                       ; $57cb: $ff
    nop                                           ; $57cc: $00
    rst $38                                       ; $57cd: $ff
    nop                                           ; $57ce: $00
    rst $38                                       ; $57cf: $ff
    rst $38                                       ; $57d0: $ff
    nop                                           ; $57d1: $00
    rst $38                                       ; $57d2: $ff
    nop                                           ; $57d3: $00
    ld a, $00                                     ; $57d4: $3e $00
    db $fc                                        ; $57d6: $fc
    add b                                         ; $57d7: $80
    sub b                                         ; $57d8: $90
    nop                                           ; $57d9: $00
    nop                                           ; $57da: $00
    nop                                           ; $57db: $00
    add b                                         ; $57dc: $80
    add b                                         ; $57dd: $80
    ret nz                                        ; $57de: $c0

    ret nz                                        ; $57df: $c0

    rst $18                                       ; $57e0: $df
    jr nz, jr_073_5780                            ; $57e1: $20 $9d

jr_073_57e3:
    ld bc, $013f                 ; $57e3: $01 $3f $01
    ccf                                           ; $57e6: $3f
    inc bc                                        ; $57e7: $03
    inc bc                                        ; $57e8: $03
    ld bc, $0005                                  ; $57e9: $01 $05 $00
    add hl, sp                                    ; $57ec: $39
    nop                                           ; $57ed: $00
    inc bc                                        ; $57ee: $03
    ld bc, $00ff                                  ; $57ef: $01 $ff $00
    ei                                            ; $57f2: $fb
    nop                                           ; $57f3: $00
    ld a, c                                       ; $57f4: $79

jr_073_57f5:
    nop                                           ; $57f5: $00
    db $fd                                        ; $57f6: $fd
    add b                                         ; $57f7: $80
    cp c                                          ; $57f8: $b9
    nop                                           ; $57f9: $00
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    adc b                                         ; $57fc: $88
    add b                                         ; $57fd: $80
    ret nz                                        ; $57fe: $c0

    ret nz                                        ; $57ff: $c0

    rst $38                                       ; $5800: $ff
    nop                                           ; $5801: $00
    db $fd                                        ; $5802: $fd
    ld bc, $01bb                                  ; $5803: $01 $bb $01
    scf                                           ; $5806: $37
    inc bc                                        ; $5807: $03
    inc bc                                        ; $5808: $03
    ld bc, $0085                                  ; $5809: $01 $85 $00
    add hl, de                                    ; $580c: $19
    nop                                           ; $580d: $00
    inc bc                                        ; $580e: $03
    ld bc, $0080                                  ; $580f: $01 $80 $00

jr_073_5812:
    jr nz, jr_073_5814                            ; $5812: $20 $00

jr_073_5814:
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    ret nc                                        ; $5816: $d0

    ld b, b                                       ; $5817: $40
    ldh [$e0], a                                  ; $5818: $e0 $e0
    ret nz                                        ; $581a: $c0

    ret nz                                        ; $581b: $c0

    ld hl, sp+$30                                 ; $581c: $f8 $30
    ret nz                                        ; $581e: $c0

    ret nz                                        ; $581f: $c0

    add hl, de                                    ; $5820: $19
    nop                                           ; $5821: $00
    ld c, $00                                     ; $5822: $0e $00
    ld h, $06                                     ; $5824: $26 $06
    inc sp                                        ; $5826: $33
    ld bc, $0047                                  ; $5827: $01 $47 $00
    cpl                                           ; $582a: $2f

jr_073_582b:
    inc bc                                        ; $582b: $03
    ld b, l                                       ; $582c: $45
    inc bc                                        ; $582d: $03
    rst $08                                       ; $582e: $cf
    nop                                           ; $582f: $00
    db $ec                                        ; $5830: $ec
    adc b                                         ; $5831: $88
    ld hl, sp-$20                                 ; $5832: $f8 $e0
    db $f4                                        ; $5834: $f4
    jr nc, jr_073_582b                            ; $5835: $30 $f4

    ld d, b                                       ; $5837: $50
    ret z                                         ; $5838: $c8

    add b                                         ; $5839: $80
    ret nc                                        ; $583a: $d0

    ld d, b                                       ; $583b: $50
    ldh [$c0], a                                  ; $583c: $e0 $c0
    ret nz                                        ; $583e: $c0

    ret nz                                        ; $583f: $c0

    xor e                                         ; $5840: $ab
    inc b                                         ; $5841: $04
    sbc a                                         ; $5842: $9f
    ld bc, $0205                                  ; $5843: $01 $05 $02
    ld c, [hl]                                    ; $5846: $4e
    ld bc, $06a7                                  ; $5847: $01 $a7 $06
    dec hl                                        ; $584a: $2b
    ld bc, $00c7                                  ; $584b: $01 $c7 $00
    dec l                                         ; $584e: $2d
    ld [bc], a                                    ; $584f: $02
    ld hl, sp-$50                                 ; $5850: $f8 $b0
    ret nz                                        ; $5852: $c0

    ret nz                                        ; $5853: $c0

    db $ec                                        ; $5854: $ec
    ld c, b                                       ; $5855: $48
    ld hl, sp-$60                                 ; $5856: $f8 $a0
    push af                                       ; $5858: $f5
    or b                                          ; $5859: $b0
    db $f4                                        ; $585a: $f4
    ld h, h                                       ; $585b: $64
    add sp, $00                                   ; $585c: $e8 $00
    ld hl, sp-$10                                 ; $585e: $f8 $f0
    ld b, c                                       ; $5860: $41
    ld b, $cb                                     ; $5861: $06 $cb
    dec b                                         ; $5863: $05
    inc hl                                        ; $5864: $23
    inc b                                         ; $5865: $04
    rrca                                          ; $5866: $0f
    ld bc, $0285                                  ; $5867: $01 $85 $02
    ld e, h                                       ; $586a: $5c
    inc bc                                        ; $586b: $03
    and l                                         ; $586c: $a5
    ld [bc], a                                    ; $586d: $02
    rst $28                                       ; $586e: $ef
    inc h                                         ; $586f: $24
    ldh [$a0], a                                  ; $5870: $e0 $a0
    and b                                         ; $5872: $a0
    add b                                         ; $5873: $80
    add b                                         ; $5874: $80
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    add b                                         ; $5877: $80
    jr jr_073_5812                                ; $5878: $18 $98

    dec a                                         ; $587a: $3d
    db $fd                                        ; $587b: $fd
    rst $38                                       ; $587c: $ff
    rst $38                                       ; $587d: $ff
    rst $38                                       ; $587e: $ff
    rst $38                                       ; $587f: $ff
    cpl                                           ; $5880: $2f
    dec bc                                        ; $5881: $0b
    ld [hl], e                                    ; $5882: $73
    inc c                                         ; $5883: $0c
    inc sp                                        ; $5884: $33
    inc c                                         ; $5885: $0c
    nop                                           ; $5886: $00
    rrca                                          ; $5887: $0f
    add b                                         ; $5888: $80
    adc a                                         ; $5889: $8f
    ldh [$ef], a                                  ; $588a: $e0 $ef
    ld hl, sp-$01                                 ; $588c: $f8 $ff
    rst $38                                       ; $588e: $ff
    rst $38                                       ; $588f: $ff
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    xor d                                         ; $5894: $aa
    nop                                           ; $5895: $00
    ld d, l                                       ; $5896: $55
    nop                                           ; $5897: $00
    rst $38                                       ; $5898: $ff
    nop                                           ; $5899: $00
    cp e                                          ; $589a: $bb
    nop                                           ; $589b: $00
    db $dd                                        ; $589c: $dd
    ld [hl+], a                                   ; $589d: $22
    xor d                                         ; $589e: $aa
    ld d, l                                       ; $589f: $55
    ld d, l                                       ; $58a0: $55
    xor d                                         ; $58a1: $aa
    adc b                                         ; $58a2: $88
    ld [hl], a                                    ; $58a3: $77
    ld b, h                                       ; $58a4: $44
    cp e                                          ; $58a5: $bb
    nop                                           ; $58a6: $00
    rst $38                                       ; $58a7: $ff
    xor d                                         ; $58a8: $aa
    ld [hl], a                                    ; $58a9: $77
    ld d, l                                       ; $58aa: $55
    rst $38                                       ; $58ab: $ff
    xor d                                         ; $58ac: $aa
    rst $38                                       ; $58ad: $ff
    db $dd                                        ; $58ae: $dd
    rst $38                                       ; $58af: $ff
    rst $38                                       ; $58b0: $ff
    rst $38                                       ; $58b1: $ff
    rst $38                                       ; $58b2: $ff
    rst $38                                       ; $58b3: $ff
    cp e                                          ; $58b4: $bb
    rst $38                                       ; $58b5: $ff
    ld d, l                                       ; $58b6: $55
    rst $38                                       ; $58b7: $ff
    xor d                                         ; $58b8: $aa
    rst $38                                       ; $58b9: $ff
    ld d, l                                       ; $58ba: $55
    xor $00                                       ; $58bb: $ee $00
    rst $38                                       ; $58bd: $ff
    ld [hl+], a                                   ; $58be: $22
    db $dd                                        ; $58bf: $dd
    ld de, $aaee                                  ; $58c0: $11 $ee $aa
    ld d, l                                       ; $58c3: $55
    ld d, l                                       ; $58c4: $55
    xor d                                         ; $58c5: $aa
    cp e                                          ; $58c6: $bb
    ld b, h                                       ; $58c7: $44
    db $dd                                        ; $58c8: $dd
    nop                                           ; $58c9: $00
    rst $38                                       ; $58ca: $ff
    nop                                           ; $58cb: $00
    xor d                                         ; $58cc: $aa
    nop                                           ; $58cd: $00
    ld d, l                                       ; $58ce: $55
    nop                                           ; $58cf: $00
    xor d                                         ; $58d0: $aa
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    nop                                           ; $58d3: $00
    nop                                           ; $58d4: $00
    nop                                           ; $58d5: $00
    ld d, l                                       ; $58d6: $55
    nop                                           ; $58d7: $00
    xor d                                         ; $58d8: $aa
    nop                                           ; $58d9: $00
    rst $38                                       ; $58da: $ff
    nop                                           ; $58db: $00
    ld [hl], a                                    ; $58dc: $77
    nop                                           ; $58dd: $00
    cp e                                          ; $58de: $bb
    ld b, h                                       ; $58df: $44
    ld d, l                                       ; $58e0: $55
    xor d                                         ; $58e1: $aa
    xor d                                         ; $58e2: $aa
    ld d, l                                       ; $58e3: $55
    ld de, $88ee                                  ; $58e4: $11 $ee $88
    ld [hl], a                                    ; $58e7: $77
    nop                                           ; $58e8: $00
    rst $38                                       ; $58e9: $ff
    inc sp                                        ; $58ea: $33
    xor $55                                       ; $58eb: $ee $55
    rst $38                                       ; $58ed: $ff
    xor d                                         ; $58ee: $aa
    rst $38                                       ; $58ef: $ff
    db $dd                                        ; $58f0: $dd
    rst $38                                       ; $58f1: $ff
    rst $38                                       ; $58f2: $ff
    rst $38                                       ; $58f3: $ff
    rst $38                                       ; $58f4: $ff
    rst $38                                       ; $58f5: $ff
    cp e                                          ; $58f6: $bb
    rst $38                                       ; $58f7: $ff
    ld d, l                                       ; $58f8: $55
    rst $38                                       ; $58f9: $ff
    xor d                                         ; $58fa: $aa
    rst $38                                       ; $58fb: $ff
    call z, Call_000_0077                         ; $58fc: $cc $77 $00
    rst $38                                       ; $58ff: $ff
    ld de, $88ee                                  ; $5900: $11 $ee $88
    ld [hl], a                                    ; $5903: $77
    ld d, l                                       ; $5904: $55
    xor d                                         ; $5905: $aa
    xor d                                         ; $5906: $aa
    ld d, l                                       ; $5907: $55
    db $dd                                        ; $5908: $dd
    ld [hl+], a                                   ; $5909: $22
    xor $00                                       ; $590a: $ee $00
    rst $38                                       ; $590c: $ff
    nop                                           ; $590d: $00
    ld d, l                                       ; $590e: $55
    nop                                           ; $590f: $00
    xor d                                         ; $5910: $aa
    nop                                           ; $5911: $00
    ld d, l                                       ; $5912: $55
    nop                                           ; $5913: $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    xor d                                         ; $5918: $aa
    nop                                           ; $5919: $00
    ld d, l                                       ; $591a: $55
    nop                                           ; $591b: $00
    rst $38                                       ; $591c: $ff
    nop                                           ; $591d: $00
    ld h, [hl]                                    ; $591e: $66
    adc b                                         ; $591f: $88
    cp e                                          ; $5920: $bb
    ld b, h                                       ; $5921: $44
    ld d, l                                       ; $5922: $55
    xor d                                         ; $5923: $aa
    xor d                                         ; $5924: $aa
    ld d, l                                       ; $5925: $55
    ld de, $88ee                                  ; $5926: $11 $ee $88
    ld [hl], a                                    ; $5929: $77
    nop                                           ; $592a: $00
    rst $38                                       ; $592b: $ff
    inc sp                                        ; $592c: $33
    xor $55                                       ; $592d: $ee $55
    rst $38                                       ; $592f: $ff
    xor d                                         ; $5930: $aa
    rst $38                                       ; $5931: $ff
    db $dd                                        ; $5932: $dd
    rst $38                                       ; $5933: $ff
    rst $38                                       ; $5934: $ff
    rst $38                                       ; $5935: $ff
    rst $38                                       ; $5936: $ff
    rst $38                                       ; $5937: $ff
    cp e                                          ; $5938: $bb
    rst $38                                       ; $5939: $ff
    ld d, l                                       ; $593a: $55
    rst $38                                       ; $593b: $ff
    xor d                                         ; $593c: $aa
    rst $38                                       ; $593d: $ff
    call z, Call_000_0077                         ; $593e: $cc $77 $00
    rst $38                                       ; $5941: $ff
    ld de, $88ee                                  ; $5942: $11 $ee $88
    ld [hl], a                                    ; $5945: $77
    ld d, l                                       ; $5946: $55
    xor d                                         ; $5947: $aa
    xor d                                         ; $5948: $aa
    ld d, l                                       ; $5949: $55
    db $dd                                        ; $594a: $dd
    ld [hl+], a                                   ; $594b: $22
    ld h, [hl]                                    ; $594c: $66
    ld de, $00ff                                  ; $594d: $11 $ff $00
    rst $38                                       ; $5950: $ff
    nop                                           ; $5951: $00
    ld d, l                                       ; $5952: $55
    nop                                           ; $5953: $00
    xor d                                         ; $5954: $aa
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    ld d, l                                       ; $595a: $55
    nop                                           ; $595b: $00
    xor d                                         ; $595c: $aa
    nop                                           ; $595d: $00
    rst $38                                       ; $595e: $ff
    nop                                           ; $595f: $00
    call z, Call_073_7711                         ; $5960: $cc $11 $77
    adc b                                         ; $5963: $88
    xor d                                         ; $5964: $aa
    ld d, l                                       ; $5965: $55
    ld d, l                                       ; $5966: $55
    xor d                                         ; $5967: $aa
    ld [hl+], a                                   ; $5968: $22
    db $dd                                        ; $5969: $dd
    ld de, $00ee                                  ; $596a: $11 $ee $00
    rst $38                                       ; $596d: $ff
    ld h, [hl]                                    ; $596e: $66
    db $dd                                        ; $596f: $dd
    xor d                                         ; $5970: $aa
    rst $38                                       ; $5971: $ff
    ld d, l                                       ; $5972: $55
    rst $38                                       ; $5973: $ff
    cp e                                          ; $5974: $bb
    rst $38                                       ; $5975: $ff
    rst $38                                       ; $5976: $ff
    rst $38                                       ; $5977: $ff
    rst $38                                       ; $5978: $ff
    rst $38                                       ; $5979: $ff
    db $dd                                        ; $597a: $dd
    rst $38                                       ; $597b: $ff
    xor d                                         ; $597c: $aa
    rst $38                                       ; $597d: $ff
    ld d, l                                       ; $597e: $55
    rst $38                                       ; $597f: $ff
    ld h, [hl]                                    ; $5980: $66
    cp e                                          ; $5981: $bb
    nop                                           ; $5982: $00
    rst $38                                       ; $5983: $ff
    adc b                                         ; $5984: $88
    ld [hl], a                                    ; $5985: $77
    ld b, h                                       ; $5986: $44
    cp e                                          ; $5987: $bb
    xor d                                         ; $5988: $aa
    ld d, l                                       ; $5989: $55
    ld d, l                                       ; $598a: $55
    xor d                                         ; $598b: $aa
    xor $11                                       ; $598c: $ee $11
    inc sp                                        ; $598e: $33
    adc b                                         ; $598f: $88
    ld d, l                                       ; $5990: $55
    adc b                                         ; $5991: $88
    rst $38                                       ; $5992: $ff
    nop                                           ; $5993: $00
    xor d                                         ; $5994: $aa
    nop                                           ; $5995: $00
    ld d, l                                       ; $5996: $55
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599a: $00
    nop                                           ; $599b: $00
    xor d                                         ; $599c: $aa
    nop                                           ; $599d: $00
    ld d, l                                       ; $599e: $55
    nop                                           ; $599f: $00
    rst $38                                       ; $59a0: $ff
    nop                                           ; $59a1: $00
    xor d                                         ; $59a2: $aa
    ld de, $8877                                  ; $59a3: $11 $77 $88
    xor d                                         ; $59a6: $aa
    ld d, l                                       ; $59a7: $55
    ld d, l                                       ; $59a8: $55
    xor d                                         ; $59a9: $aa
    ld [hl+], a                                   ; $59aa: $22
    db $dd                                        ; $59ab: $dd
    ld de, $00ee                                  ; $59ac: $11 $ee $00
    rst $38                                       ; $59af: $ff
    ld h, [hl]                                    ; $59b0: $66
    db $dd                                        ; $59b1: $dd
    xor d                                         ; $59b2: $aa
    rst $38                                       ; $59b3: $ff
    ld d, l                                       ; $59b4: $55
    rst $38                                       ; $59b5: $ff
    cp e                                          ; $59b6: $bb
    rst $38                                       ; $59b7: $ff
    rst $38                                       ; $59b8: $ff
    rst $38                                       ; $59b9: $ff
    rst $38                                       ; $59ba: $ff
    rst $38                                       ; $59bb: $ff
    db $dd                                        ; $59bc: $dd
    rst $38                                       ; $59bd: $ff
    xor d                                         ; $59be: $aa
    rst $38                                       ; $59bf: $ff
    ld d, l                                       ; $59c0: $55
    rst $38                                       ; $59c1: $ff
    ld h, [hl]                                    ; $59c2: $66
    cp e                                          ; $59c3: $bb
    nop                                           ; $59c4: $00
    rst $38                                       ; $59c5: $ff
    adc b                                         ; $59c6: $88
    ld [hl], a                                    ; $59c7: $77
    ld b, h                                       ; $59c8: $44
    cp e                                          ; $59c9: $bb
    xor d                                         ; $59ca: $aa
    ld d, l                                       ; $59cb: $55
    ld d, l                                       ; $59cc: $55
    xor d                                         ; $59cd: $aa
    xor $11                                       ; $59ce: $ee $11
    ld [hl], a                                    ; $59d0: $77
    adc b                                         ; $59d1: $88
    xor d                                         ; $59d2: $aa
    ld b, h                                       ; $59d3: $44
    rst $38                                       ; $59d4: $ff
    nop                                           ; $59d5: $00
    ld d, l                                       ; $59d6: $55
    nop                                           ; $59d7: $00
    xor d                                         ; $59d8: $aa
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    nop                                           ; $59db: $00
    nop                                           ; $59dc: $00
    nop                                           ; $59dd: $00
    ld d, l                                       ; $59de: $55
    nop                                           ; $59df: $00
    xor d                                         ; $59e0: $aa
    nop                                           ; $59e1: $00
    rst $38                                       ; $59e2: $ff
    nop                                           ; $59e3: $00
    ld d, l                                       ; $59e4: $55
    ld [hl+], a                                   ; $59e5: $22
    xor $11                                       ; $59e6: $ee $11
    ld d, l                                       ; $59e8: $55
    xor d                                         ; $59e9: $aa
    xor d                                         ; $59ea: $aa
    ld d, l                                       ; $59eb: $55
    ld b, h                                       ; $59ec: $44
    cp e                                          ; $59ed: $bb
    ld [hl+], a                                   ; $59ee: $22
    db $dd                                        ; $59ef: $dd
    nop                                           ; $59f0: $00
    rst $38                                       ; $59f1: $ff
    ld b, h                                       ; $59f2: $44
    cp e                                          ; $59f3: $bb
    xor d                                         ; $59f4: $aa
    rst $38                                       ; $59f5: $ff
    ld d, l                                       ; $59f6: $55
    rst $38                                       ; $59f7: $ff
    cp e                                          ; $59f8: $bb
    rst $38                                       ; $59f9: $ff
    rst $38                                       ; $59fa: $ff
    rst $38                                       ; $59fb: $ff
    rst $38                                       ; $59fc: $ff
    rst $38                                       ; $59fd: $ff
    db $dd                                        ; $59fe: $dd

Jump_073_59ff:
    rst $38                                       ; $59ff: $ff
    xor d                                         ; $5a00: $aa
    rst $38                                       ; $5a01: $ff
    ld d, l                                       ; $5a02: $55
    rst $38                                       ; $5a03: $ff
    ld [hl+], a                                   ; $5a04: $22
    db $dd                                        ; $5a05: $dd
    nop                                           ; $5a06: $00
    rst $38                                       ; $5a07: $ff
    ld b, h                                       ; $5a08: $44
    cp e                                          ; $5a09: $bb
    ld [hl+], a                                   ; $5a0a: $22
    db $dd                                        ; $5a0b: $dd
    ld d, l                                       ; $5a0c: $55
    xor d                                         ; $5a0d: $aa
    xor d                                         ; $5a0e: $aa
    ld d, l                                       ; $5a0f: $55
    xor d                                         ; $5a10: $aa
    ld d, l                                       ; $5a11: $55
    ld [hl], a                                    ; $5a12: $77
    adc b                                         ; $5a13: $88
    inc sp                                        ; $5a14: $33
    ld b, h                                       ; $5a15: $44
    rst $38                                       ; $5a16: $ff
    nop                                           ; $5a17: $00
    xor d                                         ; $5a18: $aa
    nop                                           ; $5a19: $00
    ld d, l                                       ; $5a1a: $55
    nop                                           ; $5a1b: $00
    nop                                           ; $5a1c: $00
    nop                                           ; $5a1d: $00
    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    xor d                                         ; $5a20: $aa
    nop                                           ; $5a21: $00
    ld d, l                                       ; $5a22: $55
    nop                                           ; $5a23: $00
    rst $38                                       ; $5a24: $ff
    nop                                           ; $5a25: $00
    call z, $ee22                                 ; $5a26: $cc $22 $ee
    ld de, $aa55                                  ; $5a29: $11 $55 $aa
    xor d                                         ; $5a2c: $aa
    ld d, l                                       ; $5a2d: $55
    ld b, h                                       ; $5a2e: $44
    cp e                                          ; $5a2f: $bb
    ld [hl+], a                                   ; $5a30: $22
    db $dd                                        ; $5a31: $dd
    nop                                           ; $5a32: $00
    rst $38                                       ; $5a33: $ff
    ld b, h                                       ; $5a34: $44
    cp e                                          ; $5a35: $bb
    xor d                                         ; $5a36: $aa
    rst $38                                       ; $5a37: $ff
    ld d, l                                       ; $5a38: $55
    rst $38                                       ; $5a39: $ff
    cp e                                          ; $5a3a: $bb
    rst $38                                       ; $5a3b: $ff
    rst $38                                       ; $5a3c: $ff
    rst $38                                       ; $5a3d: $ff
    rst $38                                       ; $5a3e: $ff
    rst $38                                       ; $5a3f: $ff
    db $dd                                        ; $5a40: $dd
    rst $38                                       ; $5a41: $ff
    xor d                                         ; $5a42: $aa
    rst $38                                       ; $5a43: $ff
    ld d, l                                       ; $5a44: $55
    rst $38                                       ; $5a45: $ff
    ld [hl+], a                                   ; $5a46: $22
    db $dd                                        ; $5a47: $dd
    nop                                           ; $5a48: $00
    rst $38                                       ; $5a49: $ff
    ld b, h                                       ; $5a4a: $44
    cp e                                          ; $5a4b: $bb
    ld [hl+], a                                   ; $5a4c: $22
    db $dd                                        ; $5a4d: $dd
    ld d, l                                       ; $5a4e: $55
    xor d                                         ; $5a4f: $aa
    xor d                                         ; $5a50: $aa
    ld d, l                                       ; $5a51: $55
    ld d, l                                       ; $5a52: $55
    xor d                                         ; $5a53: $aa
    cp e                                          ; $5a54: $bb
    ld b, h                                       ; $5a55: $44
    sbc c                                         ; $5a56: $99
    ld [hl+], a                                   ; $5a57: $22
    rst $38                                       ; $5a58: $ff
    nop                                           ; $5a59: $00
    ld d, l                                       ; $5a5a: $55
    nop                                           ; $5a5b: $00
    xor d                                         ; $5a5c: $aa
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    nop                                           ; $5a60: $00
    nop                                           ; $5a61: $00
    ld d, l                                       ; $5a62: $55
    nop                                           ; $5a63: $00
    xor d                                         ; $5a64: $aa
    nop                                           ; $5a65: $00
    rst $38                                       ; $5a66: $ff
    nop                                           ; $5a67: $00
    sbc c                                         ; $5a68: $99
    ld b, h                                       ; $5a69: $44
    db $dd                                        ; $5a6a: $dd
    ld [hl+], a                                   ; $5a6b: $22
    xor d                                         ; $5a6c: $aa
    ld d, l                                       ; $5a6d: $55
    ld d, l                                       ; $5a6e: $55
    xor d                                         ; $5a6f: $aa
    adc b                                         ; $5a70: $88
    ld [hl], a                                    ; $5a71: $77
    ld b, h                                       ; $5a72: $44
    cp e                                          ; $5a73: $bb
    nop                                           ; $5a74: $00
    rst $38                                       ; $5a75: $ff
    adc b                                         ; $5a76: $88
    ld [hl], a                                    ; $5a77: $77
    ld d, l                                       ; $5a78: $55
    rst $38                                       ; $5a79: $ff
    xor d                                         ; $5a7a: $aa
    rst $38                                       ; $5a7b: $ff
    ld [hl], a                                    ; $5a7c: $77
    rst $38                                       ; $5a7d: $ff
    rst $38                                       ; $5a7e: $ff
    rst $38                                       ; $5a7f: $ff
    rst $38                                       ; $5a80: $ff
    rst $38                                       ; $5a81: $ff
    xor $ff                                       ; $5a82: $ee $ff
    ld d, l                                       ; $5a84: $55
    rst $38                                       ; $5a85: $ff
    xor d                                         ; $5a86: $aa
    rst $38                                       ; $5a87: $ff
    ld de, $00ee                                  ; $5a88: $11 $ee $00
    rst $38                                       ; $5a8b: $ff
    ld [hl+], a                                   ; $5a8c: $22
    db $dd                                        ; $5a8d: $dd
    ld de, $11ee                                  ; $5a8e: $11 $ee $11
    xor $aa                                       ; $5a91: $ee $aa
    ld d, l                                       ; $5a93: $55
    ld d, l                                       ; $5a94: $55
    xor d                                         ; $5a95: $aa
    cp e                                          ; $5a96: $bb
    ld b, h                                       ; $5a97: $44
    db $dd                                        ; $5a98: $dd
    nop                                           ; $5a99: $00
    rst $38                                       ; $5a9a: $ff
    nop                                           ; $5a9b: $00
    xor d                                         ; $5a9c: $aa
    nop                                           ; $5a9d: $00
    ld d, l                                       ; $5a9e: $55
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    xor d                                         ; $5aa4: $aa
    nop                                           ; $5aa5: $00
    ld d, l                                       ; $5aa6: $55
    nop                                           ; $5aa7: $00
    rst $38                                       ; $5aa8: $ff
    nop                                           ; $5aa9: $00
    cp e                                          ; $5aaa: $bb
    nop                                           ; $5aab: $00
    db $dd                                        ; $5aac: $dd
    ld [hl+], a                                   ; $5aad: $22
    xor d                                         ; $5aae: $aa
    ld d, l                                       ; $5aaf: $55
    ld d, l                                       ; $5ab0: $55
    xor d                                         ; $5ab1: $aa
    adc b                                         ; $5ab2: $88
    ld [hl], a                                    ; $5ab3: $77
    ld b, h                                       ; $5ab4: $44
    cp e                                          ; $5ab5: $bb
    nop                                           ; $5ab6: $00
    rst $38                                       ; $5ab7: $ff
    adc b                                         ; $5ab8: $88
    ld [hl], a                                    ; $5ab9: $77
    ld d, l                                       ; $5aba: $55
    rst $38                                       ; $5abb: $ff
    xor d                                         ; $5abc: $aa
    rst $38                                       ; $5abd: $ff
    ld [hl], a                                    ; $5abe: $77
    rst $38                                       ; $5abf: $ff
    rst $38                                       ; $5ac0: $ff
    rst $38                                       ; $5ac1: $ff
    rst $38                                       ; $5ac2: $ff
    rst $38                                       ; $5ac3: $ff
    xor $ff                                       ; $5ac4: $ee $ff
    ld d, l                                       ; $5ac6: $55
    rst $38                                       ; $5ac7: $ff
    xor d                                         ; $5ac8: $aa
    rst $38                                       ; $5ac9: $ff
    ld de, $00ee                                  ; $5aca: $11 $ee $00
    rst $38                                       ; $5acd: $ff
    ld [hl+], a                                   ; $5ace: $22
    db $dd                                        ; $5acf: $dd
    ld de, $88ee                                  ; $5ad0: $11 $ee $88
    ld [hl], a                                    ; $5ad3: $77
    ld d, l                                       ; $5ad4: $55
    xor d                                         ; $5ad5: $aa
    xor d                                         ; $5ad6: $aa
    ld d, l                                       ; $5ad7: $55
    db $dd                                        ; $5ad8: $dd
    ld [hl+], a                                   ; $5ad9: $22
    xor $00                                       ; $5ada: $ee $00
    rst $38                                       ; $5adc: $ff
    nop                                           ; $5add: $00
    ld d, l                                       ; $5ade: $55
    nop                                           ; $5adf: $00
    xor d                                         ; $5ae0: $aa
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    nop                                           ; $5ae3: $00
    nop                                           ; $5ae4: $00
    nop                                           ; $5ae5: $00
    ld d, l                                       ; $5ae6: $55
    nop                                           ; $5ae7: $00
    xor d                                         ; $5ae8: $aa
    nop                                           ; $5ae9: $00
    rst $38                                       ; $5aea: $ff
    nop                                           ; $5aeb: $00
    ld [hl], a                                    ; $5aec: $77
    nop                                           ; $5aed: $00
    cp e                                          ; $5aee: $bb
    ld b, h                                       ; $5aef: $44
    ld d, l                                       ; $5af0: $55
    xor d                                         ; $5af1: $aa
    xor d                                         ; $5af2: $aa
    ld d, l                                       ; $5af3: $55
    ld de, $88ee                                  ; $5af4: $11 $ee $88
    ld [hl], a                                    ; $5af7: $77
    nop                                           ; $5af8: $00
    rst $38                                       ; $5af9: $ff
    sbc c                                         ; $5afa: $99
    xor $55                                       ; $5afb: $ee $55
    rst $38                                       ; $5afd: $ff
    xor d                                         ; $5afe: $aa
    rst $38                                       ; $5aff: $ff
    ld [hl], a                                    ; $5b00: $77
    rst $38                                       ; $5b01: $ff
    rst $38                                       ; $5b02: $ff
    rst $38                                       ; $5b03: $ff
    rst $38                                       ; $5b04: $ff
    rst $38                                       ; $5b05: $ff
    xor $ff                                       ; $5b06: $ee $ff
    ld d, l                                       ; $5b08: $55
    rst $38                                       ; $5b09: $ff
    xor d                                         ; $5b0a: $aa
    rst $38                                       ; $5b0b: $ff
    sbc c                                         ; $5b0c: $99
    ld [hl], a                                    ; $5b0d: $77
    nop                                           ; $5b0e: $00
    rst $38                                       ; $5b0f: $ff
    nop                                           ; $5b10: $00
    rst $38                                       ; $5b11: $ff
    ld de, $88ee                                  ; $5b12: $11 $ee $88
    ld [hl], a                                    ; $5b15: $77
    ld d, l                                       ; $5b16: $55
    xor d                                         ; $5b17: $aa
    xor d                                         ; $5b18: $aa
    ld d, l                                       ; $5b19: $55
    db $dd                                        ; $5b1a: $dd
    ld [hl+], a                                   ; $5b1b: $22
    ld h, [hl]                                    ; $5b1c: $66
    ld de, $00ff                                  ; $5b1d: $11 $ff $00
    xor d                                         ; $5b20: $aa
    nop                                           ; $5b21: $00
    ld d, l                                       ; $5b22: $55
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    nop                                           ; $5b27: $00
    xor d                                         ; $5b28: $aa
    nop                                           ; $5b29: $00
    ld d, l                                       ; $5b2a: $55
    nop                                           ; $5b2b: $00
    rst $38                                       ; $5b2c: $ff
    nop                                           ; $5b2d: $00
    ld h, [hl]                                    ; $5b2e: $66
    adc b                                         ; $5b2f: $88
    cp e                                          ; $5b30: $bb
    ld b, h                                       ; $5b31: $44
    ld d, l                                       ; $5b32: $55
    xor d                                         ; $5b33: $aa
    xor d                                         ; $5b34: $aa
    ld d, l                                       ; $5b35: $55
    ld de, $88ee                                  ; $5b36: $11 $ee $88
    ld [hl], a                                    ; $5b39: $77
    nop                                           ; $5b3a: $00
    rst $38                                       ; $5b3b: $ff
    sbc c                                         ; $5b3c: $99
    xor $55                                       ; $5b3d: $ee $55
    rst $38                                       ; $5b3f: $ff
    xor d                                         ; $5b40: $aa
    rst $38                                       ; $5b41: $ff
    ld [hl], a                                    ; $5b42: $77
    rst $38                                       ; $5b43: $ff
    rst $38                                       ; $5b44: $ff
    rst $38                                       ; $5b45: $ff
    rst $38                                       ; $5b46: $ff
    rst $38                                       ; $5b47: $ff
    xor $ff                                       ; $5b48: $ee $ff
    ld d, l                                       ; $5b4a: $55
    rst $38                                       ; $5b4b: $ff
    xor d                                         ; $5b4c: $aa
    rst $38                                       ; $5b4d: $ff
    sbc c                                         ; $5b4e: $99
    ld [hl], a                                    ; $5b4f: $77
    call z, Call_000_00bb                         ; $5b50: $cc $bb $00
    rst $38                                       ; $5b53: $ff
    adc b                                         ; $5b54: $88
    ld [hl], a                                    ; $5b55: $77
    ld b, h                                       ; $5b56: $44
    cp e                                          ; $5b57: $bb
    xor d                                         ; $5b58: $aa
    ld d, l                                       ; $5b59: $55
    ld d, l                                       ; $5b5a: $55
    xor d                                         ; $5b5b: $aa
    xor $11                                       ; $5b5c: $ee $11
    inc sp                                        ; $5b5e: $33
    adc b                                         ; $5b5f: $88
    rst $38                                       ; $5b60: $ff
    nop                                           ; $5b61: $00
    ld d, l                                       ; $5b62: $55
    nop                                           ; $5b63: $00
    xor d                                         ; $5b64: $aa
    nop                                           ; $5b65: $00
    nop                                           ; $5b66: $00
    nop                                           ; $5b67: $00
    nop                                           ; $5b68: $00
    nop                                           ; $5b69: $00
    ld d, l                                       ; $5b6a: $55
    nop                                           ; $5b6b: $00
    xor d                                         ; $5b6c: $aa
    nop                                           ; $5b6d: $00
    rst $38                                       ; $5b6e: $ff
    nop                                           ; $5b6f: $00
    call z, Call_073_7711                         ; $5b70: $cc $11 $77
    adc b                                         ; $5b73: $88
    xor d                                         ; $5b74: $aa
    ld d, l                                       ; $5b75: $55
    ld d, l                                       ; $5b76: $55
    xor d                                         ; $5b77: $aa
    ld [hl+], a                                   ; $5b78: $22
    db $dd                                        ; $5b79: $dd
    ld de, $00ee                                  ; $5b7a: $11 $ee $00
    rst $38                                       ; $5b7d: $ff
    inc sp                                        ; $5b7e: $33
    db $dd                                        ; $5b7f: $dd
    xor d                                         ; $5b80: $aa
    rst $38                                       ; $5b81: $ff
    ld d, l                                       ; $5b82: $55
    rst $38                                       ; $5b83: $ff
    xor $ff                                       ; $5b84: $ee $ff
    rst $38                                       ; $5b86: $ff
    rst $38                                       ; $5b87: $ff
    rst $38                                       ; $5b88: $ff
    rst $38                                       ; $5b89: $ff
    ld [hl], a                                    ; $5b8a: $77
    rst $38                                       ; $5b8b: $ff
    xor d                                         ; $5b8c: $aa
    rst $38                                       ; $5b8d: $ff
    ld d, l                                       ; $5b8e: $55
    rst $38                                       ; $5b8f: $ff
    ld d, l                                       ; $5b90: $55
    rst $38                                       ; $5b91: $ff
    call z, Call_000_00bb                         ; $5b92: $cc $bb $00
    rst $38                                       ; $5b95: $ff
    adc b                                         ; $5b96: $88
    ld [hl], a                                    ; $5b97: $77
    ld b, h                                       ; $5b98: $44
    cp e                                          ; $5b99: $bb
    xor d                                         ; $5b9a: $aa
    ld d, l                                       ; $5b9b: $55
    ld d, l                                       ; $5b9c: $55
    xor d                                         ; $5b9d: $aa
    xor $11                                       ; $5b9e: $ee $11
    ld d, l                                       ; $5ba0: $55
    adc b                                         ; $5ba1: $88
    rst $38                                       ; $5ba2: $ff
    nop                                           ; $5ba3: $00
    xor d                                         ; $5ba4: $aa
    nop                                           ; $5ba5: $00
    ld d, l                                       ; $5ba6: $55
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    nop                                           ; $5ba9: $00
    nop                                           ; $5baa: $00
    nop                                           ; $5bab: $00
    xor d                                         ; $5bac: $aa
    nop                                           ; $5bad: $00
    ld d, l                                       ; $5bae: $55
    nop                                           ; $5baf: $00
    rst $38                                       ; $5bb0: $ff
    nop                                           ; $5bb1: $00
    xor d                                         ; $5bb2: $aa
    ld de, $8877                                  ; $5bb3: $11 $77 $88
    xor d                                         ; $5bb6: $aa
    ld d, l                                       ; $5bb7: $55
    ld d, l                                       ; $5bb8: $55
    xor d                                         ; $5bb9: $aa
    ld [hl+], a                                   ; $5bba: $22
    db $dd                                        ; $5bbb: $dd
    ld de, $00ee                                  ; $5bbc: $11 $ee $00
    rst $38                                       ; $5bbf: $ff
    inc sp                                        ; $5bc0: $33
    db $dd                                        ; $5bc1: $dd
    xor d                                         ; $5bc2: $aa
    rst $38                                       ; $5bc3: $ff
    ld d, l                                       ; $5bc4: $55
    rst $38                                       ; $5bc5: $ff
    xor $ff                                       ; $5bc6: $ee $ff
    rst $38                                       ; $5bc8: $ff
    rst $38                                       ; $5bc9: $ff
    rst $38                                       ; $5bca: $ff
    rst $38                                       ; $5bcb: $ff
    ld [hl], a                                    ; $5bcc: $77
    rst $38                                       ; $5bcd: $ff
    xor d                                         ; $5bce: $aa
    rst $38                                       ; $5bcf: $ff
    xor d                                         ; $5bd0: $aa
    rst $38                                       ; $5bd1: $ff
    ld d, l                                       ; $5bd2: $55
    rst $38                                       ; $5bd3: $ff
    xor d                                         ; $5bd4: $aa
    db $dd                                        ; $5bd5: $dd
    nop                                           ; $5bd6: $00
    rst $38                                       ; $5bd7: $ff
    ld b, h                                       ; $5bd8: $44
    cp e                                          ; $5bd9: $bb
    ld [hl+], a                                   ; $5bda: $22
    db $dd                                        ; $5bdb: $dd
    ld d, l                                       ; $5bdc: $55
    xor d                                         ; $5bdd: $aa
    xor d                                         ; $5bde: $aa
    ld d, l                                       ; $5bdf: $55
    ld [hl], a                                    ; $5be0: $77
    adc b                                         ; $5be1: $88
    xor d                                         ; $5be2: $aa
    ld b, h                                       ; $5be3: $44
    rst $38                                       ; $5be4: $ff
    nop                                           ; $5be5: $00
    ld d, l                                       ; $5be6: $55
    nop                                           ; $5be7: $00
    xor d                                         ; $5be8: $aa
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    nop                                           ; $5beb: $00
    nop                                           ; $5bec: $00
    nop                                           ; $5bed: $00
    ld d, l                                       ; $5bee: $55
    nop                                           ; $5bef: $00
    xor d                                         ; $5bf0: $aa
    nop                                           ; $5bf1: $00
    rst $38                                       ; $5bf2: $ff
    nop                                           ; $5bf3: $00
    ld d, l                                       ; $5bf4: $55
    ld [hl+], a                                   ; $5bf5: $22
    xor $11                                       ; $5bf6: $ee $11
    ld d, l                                       ; $5bf8: $55
    xor d                                         ; $5bf9: $aa
    xor d                                         ; $5bfa: $aa
    ld d, l                                       ; $5bfb: $55
    ld b, h                                       ; $5bfc: $44
    cp e                                          ; $5bfd: $bb
    ld [hl+], a                                   ; $5bfe: $22
    db $dd                                        ; $5bff: $dd

Jump_073_5c00:
    nop                                           ; $5c00: $00
    rst $38                                       ; $5c01: $ff
    ld d, l                                       ; $5c02: $55
    cp e                                          ; $5c03: $bb
    xor d                                         ; $5c04: $aa
    rst $38                                       ; $5c05: $ff
    ld d, l                                       ; $5c06: $55
    rst $38                                       ; $5c07: $ff
    xor $ff                                       ; $5c08: $ee $ff
    rst $38                                       ; $5c0a: $ff
    rst $38                                       ; $5c0b: $ff
    rst $38                                       ; $5c0c: $ff
    rst $38                                       ; $5c0d: $ff
    ld [hl], a                                    ; $5c0e: $77
    rst $38                                       ; $5c0f: $ff
    ld [hl], a                                    ; $5c10: $77
    rst $38                                       ; $5c11: $ff
    xor d                                         ; $5c12: $aa
    rst $38                                       ; $5c13: $ff
    ld d, l                                       ; $5c14: $55
    rst $38                                       ; $5c15: $ff
    xor d                                         ; $5c16: $aa
    db $dd                                        ; $5c17: $dd
    nop                                           ; $5c18: $00
    rst $38                                       ; $5c19: $ff
    ld b, h                                       ; $5c1a: $44
    cp e                                          ; $5c1b: $bb
    ld [hl+], a                                   ; $5c1c: $22
    db $dd                                        ; $5c1d: $dd
    ld d, l                                       ; $5c1e: $55
    xor d                                         ; $5c1f: $aa
    xor d                                         ; $5c20: $aa
    ld d, l                                       ; $5c21: $55
    ld [hl], a                                    ; $5c22: $77
    adc b                                         ; $5c23: $88
    inc sp                                        ; $5c24: $33
    ld b, h                                       ; $5c25: $44
    rst $38                                       ; $5c26: $ff
    nop                                           ; $5c27: $00
    xor d                                         ; $5c28: $aa
    nop                                           ; $5c29: $00
    ld d, l                                       ; $5c2a: $55
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00
    xor d                                         ; $5c30: $aa
    nop                                           ; $5c31: $00
    ld d, l                                       ; $5c32: $55
    nop                                           ; $5c33: $00
    rst $38                                       ; $5c34: $ff
    nop                                           ; $5c35: $00
    call z, $ee22                                 ; $5c36: $cc $22 $ee
    ld de, $aa55                                  ; $5c39: $11 $55 $aa
    xor d                                         ; $5c3c: $aa
    ld d, l                                       ; $5c3d: $55
    ld b, h                                       ; $5c3e: $44
    cp e                                          ; $5c3f: $bb
    ld [hl+], a                                   ; $5c40: $22
    db $dd                                        ; $5c41: $dd
    nop                                           ; $5c42: $00
    rst $38                                       ; $5c43: $ff
    ld d, l                                       ; $5c44: $55
    cp e                                          ; $5c45: $bb
    xor d                                         ; $5c46: $aa
    rst $38                                       ; $5c47: $ff
    ld d, l                                       ; $5c48: $55
    rst $38                                       ; $5c49: $ff
    xor $ff                                       ; $5c4a: $ee $ff
    rst $38                                       ; $5c4c: $ff
    rst $38                                       ; $5c4d: $ff
    rst $38                                       ; $5c4e: $ff
    rst $38                                       ; $5c4f: $ff
    rst $38                                       ; $5c50: $ff
    rst $38                                       ; $5c51: $ff
    cp e                                          ; $5c52: $bb
    rst $38                                       ; $5c53: $ff
    ld d, l                                       ; $5c54: $55
    rst $38                                       ; $5c55: $ff
    xor d                                         ; $5c56: $aa
    rst $38                                       ; $5c57: $ff
    ld d, l                                       ; $5c58: $55
    xor $00                                       ; $5c59: $ee $00
    rst $38                                       ; $5c5b: $ff
    ld [hl+], a                                   ; $5c5c: $22
    db $dd                                        ; $5c5d: $dd
    ld de, $aaee                                  ; $5c5e: $11 $ee $aa
    ld d, l                                       ; $5c61: $55
    ld d, l                                       ; $5c62: $55
    xor d                                         ; $5c63: $aa
    cp e                                          ; $5c64: $bb
    ld b, h                                       ; $5c65: $44
    sbc c                                         ; $5c66: $99
    ld [hl+], a                                   ; $5c67: $22
    rst $38                                       ; $5c68: $ff
    nop                                           ; $5c69: $00
    ld d, l                                       ; $5c6a: $55
    nop                                           ; $5c6b: $00
    xor d                                         ; $5c6c: $aa
    nop                                           ; $5c6d: $00
    nop                                           ; $5c6e: $00
    nop                                           ; $5c6f: $00
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    ld d, l                                       ; $5c72: $55
    nop                                           ; $5c73: $00
    xor d                                         ; $5c74: $aa
    nop                                           ; $5c75: $00
    rst $38                                       ; $5c76: $ff
    nop                                           ; $5c77: $00
    sbc c                                         ; $5c78: $99
    ld b, h                                       ; $5c79: $44
    db $dd                                        ; $5c7a: $dd
    ld [hl+], a                                   ; $5c7b: $22
    xor d                                         ; $5c7c: $aa
    ld d, l                                       ; $5c7d: $55
    ld d, l                                       ; $5c7e: $55
    xor d                                         ; $5c7f: $aa
    adc b                                         ; $5c80: $88
    ld [hl], a                                    ; $5c81: $77
    ld b, h                                       ; $5c82: $44
    cp e                                          ; $5c83: $bb
    nop                                           ; $5c84: $00
    rst $38                                       ; $5c85: $ff
    xor d                                         ; $5c86: $aa
    ld [hl], a                                    ; $5c87: $77
    ld d, l                                       ; $5c88: $55
    rst $38                                       ; $5c89: $ff
    xor d                                         ; $5c8a: $aa
    rst $38                                       ; $5c8b: $ff
    db $dd                                        ; $5c8c: $dd
    rst $38                                       ; $5c8d: $ff
    rst $38                                       ; $5c8e: $ff
    rst $38                                       ; $5c8f: $ff
    rst $38                                       ; $5c90: $ff
    rst $38                                       ; $5c91: $ff
    rst $38                                       ; $5c92: $ff
    rst $38                                       ; $5c93: $ff
    cp e                                          ; $5c94: $bb
    rst $38                                       ; $5c95: $ff
    ld d, l                                       ; $5c96: $55
    rst $38                                       ; $5c97: $ff
    xor d                                         ; $5c98: $aa
    rst $38                                       ; $5c99: $ff
    ld d, l                                       ; $5c9a: $55
    xor $00                                       ; $5c9b: $ee $00
    rst $38                                       ; $5c9d: $ff
    ld [hl+], a                                   ; $5c9e: $22
    db $dd                                        ; $5c9f: $dd
    ld de, $aaee                                  ; $5ca0: $11 $ee $aa
    ld d, l                                       ; $5ca3: $55
    ld d, l                                       ; $5ca4: $55
    xor d                                         ; $5ca5: $aa
    cp e                                          ; $5ca6: $bb
    ld b, h                                       ; $5ca7: $44
    db $dd                                        ; $5ca8: $dd
    nop                                           ; $5ca9: $00
    rst $38                                       ; $5caa: $ff
    nop                                           ; $5cab: $00
    xor d                                         ; $5cac: $aa
    nop                                           ; $5cad: $00
    ld d, l                                       ; $5cae: $55
    nop                                           ; $5caf: $00
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    nop                                           ; $5cb2: $00
    nop                                           ; $5cb3: $00
    xor d                                         ; $5cb4: $aa
    nop                                           ; $5cb5: $00
    ld d, l                                       ; $5cb6: $55
    nop                                           ; $5cb7: $00
    rst $38                                       ; $5cb8: $ff
    nop                                           ; $5cb9: $00
    cp e                                          ; $5cba: $bb
    nop                                           ; $5cbb: $00
    db $dd                                        ; $5cbc: $dd
    ld [hl+], a                                   ; $5cbd: $22
    xor d                                         ; $5cbe: $aa
    ld d, l                                       ; $5cbf: $55
    ld d, l                                       ; $5cc0: $55
    xor d                                         ; $5cc1: $aa
    adc b                                         ; $5cc2: $88
    ld [hl], a                                    ; $5cc3: $77
    ld b, h                                       ; $5cc4: $44
    cp e                                          ; $5cc5: $bb
    nop                                           ; $5cc6: $00
    rst $38                                       ; $5cc7: $ff
    xor d                                         ; $5cc8: $aa
    ld [hl], a                                    ; $5cc9: $77
    ld d, l                                       ; $5cca: $55
    rst $38                                       ; $5ccb: $ff
    xor d                                         ; $5ccc: $aa
    rst $38                                       ; $5ccd: $ff
    db $dd                                        ; $5cce: $dd
    rst $38                                       ; $5ccf: $ff
    db $dd                                        ; $5cd0: $dd
    rst $38                                       ; $5cd1: $ff
    rst $38                                       ; $5cd2: $ff
    rst $38                                       ; $5cd3: $ff
    rst $38                                       ; $5cd4: $ff
    rst $38                                       ; $5cd5: $ff
    cp e                                          ; $5cd6: $bb
    rst $38                                       ; $5cd7: $ff
    ld d, l                                       ; $5cd8: $55
    rst $38                                       ; $5cd9: $ff
    xor d                                         ; $5cda: $aa
    rst $38                                       ; $5cdb: $ff
    call z, Call_000_0077                         ; $5cdc: $cc $77 $00
    rst $38                                       ; $5cdf: $ff
    ld de, $88ee                                  ; $5ce0: $11 $ee $88
    ld [hl], a                                    ; $5ce3: $77
    ld d, l                                       ; $5ce4: $55
    xor d                                         ; $5ce5: $aa
    xor d                                         ; $5ce6: $aa
    ld d, l                                       ; $5ce7: $55
    db $dd                                        ; $5ce8: $dd
    ld [hl+], a                                   ; $5ce9: $22
    xor $00                                       ; $5cea: $ee $00
    rst $38                                       ; $5cec: $ff
    nop                                           ; $5ced: $00
    ld d, l                                       ; $5cee: $55
    nop                                           ; $5cef: $00
    xor d                                         ; $5cf0: $aa
    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    nop                                           ; $5cf3: $00
    nop                                           ; $5cf4: $00
    nop                                           ; $5cf5: $00
    ld d, l                                       ; $5cf6: $55
    nop                                           ; $5cf7: $00
    xor d                                         ; $5cf8: $aa
    nop                                           ; $5cf9: $00
    rst $38                                       ; $5cfa: $ff
    nop                                           ; $5cfb: $00
    ld [hl], a                                    ; $5cfc: $77
    nop                                           ; $5cfd: $00
    cp e                                          ; $5cfe: $bb
    ld b, h                                       ; $5cff: $44
    ld d, l                                       ; $5d00: $55
    xor d                                         ; $5d01: $aa
    xor d                                         ; $5d02: $aa
    ld d, l                                       ; $5d03: $55
    ld de, $88ee                                  ; $5d04: $11 $ee $88
    ld [hl], a                                    ; $5d07: $77
    nop                                           ; $5d08: $00
    rst $38                                       ; $5d09: $ff
    inc sp                                        ; $5d0a: $33
    xor $55                                       ; $5d0b: $ee $55
    rst $38                                       ; $5d0d: $ff
    xor d                                         ; $5d0e: $aa
    rst $38                                       ; $5d0f: $ff
    xor d                                         ; $5d10: $aa
    rst $38                                       ; $5d11: $ff
    db $dd                                        ; $5d12: $dd
    rst $38                                       ; $5d13: $ff
    rst $38                                       ; $5d14: $ff
    rst $38                                       ; $5d15: $ff
    rst $38                                       ; $5d16: $ff
    rst $38                                       ; $5d17: $ff
    cp e                                          ; $5d18: $bb
    rst $38                                       ; $5d19: $ff
    ld d, l                                       ; $5d1a: $55
    rst $38                                       ; $5d1b: $ff
    xor d                                         ; $5d1c: $aa
    rst $38                                       ; $5d1d: $ff
    call z, Call_000_0077                         ; $5d1e: $cc $77 $00
    rst $38                                       ; $5d21: $ff
    ld de, $88ee                                  ; $5d22: $11 $ee $88
    ld [hl], a                                    ; $5d25: $77
    ld d, l                                       ; $5d26: $55
    xor d                                         ; $5d27: $aa
    xor d                                         ; $5d28: $aa
    ld d, l                                       ; $5d29: $55
    db $dd                                        ; $5d2a: $dd
    ld [hl+], a                                   ; $5d2b: $22
    ld h, [hl]                                    ; $5d2c: $66
    ld de, $00ff                                  ; $5d2d: $11 $ff $00
    xor d                                         ; $5d30: $aa
    nop                                           ; $5d31: $00
    ld d, l                                       ; $5d32: $55
    nop                                           ; $5d33: $00
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    xor d                                         ; $5d38: $aa
    nop                                           ; $5d39: $00
    ld d, l                                       ; $5d3a: $55
    nop                                           ; $5d3b: $00
    rst $38                                       ; $5d3c: $ff
    nop                                           ; $5d3d: $00
    ld h, [hl]                                    ; $5d3e: $66
    adc b                                         ; $5d3f: $88
    cp e                                          ; $5d40: $bb
    ld b, h                                       ; $5d41: $44
    ld d, l                                       ; $5d42: $55
    xor d                                         ; $5d43: $aa
    xor d                                         ; $5d44: $aa
    ld d, l                                       ; $5d45: $55
    ld de, $88ee                                  ; $5d46: $11 $ee $88
    ld [hl], a                                    ; $5d49: $77
    nop                                           ; $5d4a: $00
    rst $38                                       ; $5d4b: $ff
    inc sp                                        ; $5d4c: $33
    xor $55                                       ; $5d4d: $ee $55
    rst $38                                       ; $5d4f: $ff
    xor d                                         ; $5d50: $aa
    rst $38                                       ; $5d51: $ff
    ld d, l                                       ; $5d52: $55
    rst $38                                       ; $5d53: $ff
    cp e                                          ; $5d54: $bb
    rst $38                                       ; $5d55: $ff
    rst $38                                       ; $5d56: $ff
    rst $38                                       ; $5d57: $ff
    rst $38                                       ; $5d58: $ff
    rst $38                                       ; $5d59: $ff
    db $dd                                        ; $5d5a: $dd
    rst $38                                       ; $5d5b: $ff
    xor d                                         ; $5d5c: $aa
    rst $38                                       ; $5d5d: $ff
    ld d, l                                       ; $5d5e: $55
    rst $38                                       ; $5d5f: $ff
    ld h, [hl]                                    ; $5d60: $66
    cp e                                          ; $5d61: $bb
    nop                                           ; $5d62: $00
    rst $38                                       ; $5d63: $ff
    adc b                                         ; $5d64: $88
    ld [hl], a                                    ; $5d65: $77
    ld b, h                                       ; $5d66: $44
    cp e                                          ; $5d67: $bb
    xor d                                         ; $5d68: $aa
    ld d, l                                       ; $5d69: $55
    ld d, l                                       ; $5d6a: $55
    xor d                                         ; $5d6b: $aa
    xor $11                                       ; $5d6c: $ee $11
    inc sp                                        ; $5d6e: $33
    adc b                                         ; $5d6f: $88
    rst $38                                       ; $5d70: $ff
    nop                                           ; $5d71: $00
    ld d, l                                       ; $5d72: $55
    nop                                           ; $5d73: $00
    xor d                                         ; $5d74: $aa
    nop                                           ; $5d75: $00
    nop                                           ; $5d76: $00
    nop                                           ; $5d77: $00
    nop                                           ; $5d78: $00
    nop                                           ; $5d79: $00
    ld d, l                                       ; $5d7a: $55
    nop                                           ; $5d7b: $00
    xor d                                         ; $5d7c: $aa
    nop                                           ; $5d7d: $00
    rst $38                                       ; $5d7e: $ff
    nop                                           ; $5d7f: $00
    call z, Call_073_7711                         ; $5d80: $cc $11 $77
    adc b                                         ; $5d83: $88
    xor d                                         ; $5d84: $aa
    ld d, l                                       ; $5d85: $55
    ld d, l                                       ; $5d86: $55
    xor d                                         ; $5d87: $aa
    ld [hl+], a                                   ; $5d88: $22
    db $dd                                        ; $5d89: $dd
    ld de, $00ee                                  ; $5d8a: $11 $ee $00
    rst $38                                       ; $5d8d: $ff
    ld h, [hl]                                    ; $5d8e: $66
    db $dd                                        ; $5d8f: $dd
    ld h, [hl]                                    ; $5d90: $66
    db $dd                                        ; $5d91: $dd
    xor d                                         ; $5d92: $aa
    rst $38                                       ; $5d93: $ff
    ld d, l                                       ; $5d94: $55
    rst $38                                       ; $5d95: $ff
    cp e                                          ; $5d96: $bb
    rst $38                                       ; $5d97: $ff
    rst $38                                       ; $5d98: $ff
    rst $38                                       ; $5d99: $ff
    rst $38                                       ; $5d9a: $ff
    rst $38                                       ; $5d9b: $ff
    db $dd                                        ; $5d9c: $dd
    rst $38                                       ; $5d9d: $ff
    xor d                                         ; $5d9e: $aa
    rst $38                                       ; $5d9f: $ff
    ld d, l                                       ; $5da0: $55
    rst $38                                       ; $5da1: $ff
    ld h, [hl]                                    ; $5da2: $66
    cp e                                          ; $5da3: $bb
    nop                                           ; $5da4: $00
    rst $38                                       ; $5da5: $ff
    adc b                                         ; $5da6: $88
    ld [hl], a                                    ; $5da7: $77
    ld b, h                                       ; $5da8: $44
    cp e                                          ; $5da9: $bb
    xor d                                         ; $5daa: $aa
    ld d, l                                       ; $5dab: $55
    ld d, l                                       ; $5dac: $55
    xor d                                         ; $5dad: $aa
    xor $11                                       ; $5dae: $ee $11
    ld d, l                                       ; $5db0: $55
    adc b                                         ; $5db1: $88
    rst $38                                       ; $5db2: $ff
    nop                                           ; $5db3: $00
    xor d                                         ; $5db4: $aa
    nop                                           ; $5db5: $00
    ld d, l                                       ; $5db6: $55
    nop                                           ; $5db7: $00
    nop                                           ; $5db8: $00
    nop                                           ; $5db9: $00
    nop                                           ; $5dba: $00
    nop                                           ; $5dbb: $00
    xor d                                         ; $5dbc: $aa
    nop                                           ; $5dbd: $00
    ld d, l                                       ; $5dbe: $55
    nop                                           ; $5dbf: $00
    rst $38                                       ; $5dc0: $ff
    nop                                           ; $5dc1: $00
    xor d                                         ; $5dc2: $aa
    ld de, $8877                                  ; $5dc3: $11 $77 $88
    xor d                                         ; $5dc6: $aa
    ld d, l                                       ; $5dc7: $55
    ld d, l                                       ; $5dc8: $55
    xor d                                         ; $5dc9: $aa
    ld [hl+], a                                   ; $5dca: $22
    db $dd                                        ; $5dcb: $dd
    ld de, $00ee                                  ; $5dcc: $11 $ee $00
    rst $38                                       ; $5dcf: $ff
    nop                                           ; $5dd0: $00
    rst $38                                       ; $5dd1: $ff
    ld b, h                                       ; $5dd2: $44
    cp e                                          ; $5dd3: $bb
    xor d                                         ; $5dd4: $aa
    rst $38                                       ; $5dd5: $ff
    ld d, l                                       ; $5dd6: $55
    rst $38                                       ; $5dd7: $ff
    cp e                                          ; $5dd8: $bb
    rst $38                                       ; $5dd9: $ff
    rst $38                                       ; $5dda: $ff
    rst $38                                       ; $5ddb: $ff
    rst $38                                       ; $5ddc: $ff
    rst $38                                       ; $5ddd: $ff
    db $dd                                        ; $5dde: $dd
    rst $38                                       ; $5ddf: $ff
    xor d                                         ; $5de0: $aa
    rst $38                                       ; $5de1: $ff
    ld d, l                                       ; $5de2: $55
    rst $38                                       ; $5de3: $ff
    ld [hl+], a                                   ; $5de4: $22
    db $dd                                        ; $5de5: $dd
    nop                                           ; $5de6: $00
    rst $38                                       ; $5de7: $ff
    ld b, h                                       ; $5de8: $44
    cp e                                          ; $5de9: $bb
    ld [hl+], a                                   ; $5dea: $22
    db $dd                                        ; $5deb: $dd
    ld d, l                                       ; $5dec: $55
    xor d                                         ; $5ded: $aa
    xor d                                         ; $5dee: $aa
    ld d, l                                       ; $5def: $55
    ld [hl], a                                    ; $5df0: $77
    adc b                                         ; $5df1: $88
    xor d                                         ; $5df2: $aa
    ld b, h                                       ; $5df3: $44
    rst $38                                       ; $5df4: $ff
    nop                                           ; $5df5: $00
    ld d, l                                       ; $5df6: $55
    nop                                           ; $5df7: $00
    xor d                                         ; $5df8: $aa
    nop                                           ; $5df9: $00
    nop                                           ; $5dfa: $00
    nop                                           ; $5dfb: $00
    nop                                           ; $5dfc: $00
    nop                                           ; $5dfd: $00
    ld d, l                                       ; $5dfe: $55
    nop                                           ; $5dff: $00
    xor d                                         ; $5e00: $aa
    nop                                           ; $5e01: $00
    rst $38                                       ; $5e02: $ff
    nop                                           ; $5e03: $00
    ld d, l                                       ; $5e04: $55
    ld [hl+], a                                   ; $5e05: $22
    xor $11                                       ; $5e06: $ee $11
    ld d, l                                       ; $5e08: $55
    xor d                                         ; $5e09: $aa
    xor d                                         ; $5e0a: $aa
    ld d, l                                       ; $5e0b: $55
    ld b, h                                       ; $5e0c: $44
    cp e                                          ; $5e0d: $bb
    ld [hl+], a                                   ; $5e0e: $22
    db $dd                                        ; $5e0f: $dd
    ld [hl+], a                                   ; $5e10: $22
    db $dd                                        ; $5e11: $dd
    nop                                           ; $5e12: $00
    rst $38                                       ; $5e13: $ff
    ld b, h                                       ; $5e14: $44
    cp e                                          ; $5e15: $bb
    xor d                                         ; $5e16: $aa
    rst $38                                       ; $5e17: $ff
    ld d, l                                       ; $5e18: $55
    rst $38                                       ; $5e19: $ff
    cp e                                          ; $5e1a: $bb
    rst $38                                       ; $5e1b: $ff
    rst $38                                       ; $5e1c: $ff
    rst $38                                       ; $5e1d: $ff
    rst $38                                       ; $5e1e: $ff
    rst $38                                       ; $5e1f: $ff
    db $dd                                        ; $5e20: $dd
    rst $38                                       ; $5e21: $ff
    xor d                                         ; $5e22: $aa
    rst $38                                       ; $5e23: $ff
    ld d, l                                       ; $5e24: $55
    rst $38                                       ; $5e25: $ff
    ld [hl+], a                                   ; $5e26: $22
    db $dd                                        ; $5e27: $dd
    nop                                           ; $5e28: $00
    rst $38                                       ; $5e29: $ff
    ld b, h                                       ; $5e2a: $44
    cp e                                          ; $5e2b: $bb
    ld [hl+], a                                   ; $5e2c: $22
    db $dd                                        ; $5e2d: $dd
    ld d, l                                       ; $5e2e: $55
    xor d                                         ; $5e2f: $aa
    xor d                                         ; $5e30: $aa
    ld d, l                                       ; $5e31: $55
    ld [hl], a                                    ; $5e32: $77
    adc b                                         ; $5e33: $88
    inc sp                                        ; $5e34: $33
    ld b, h                                       ; $5e35: $44
    rst $38                                       ; $5e36: $ff
    nop                                           ; $5e37: $00
    xor d                                         ; $5e38: $aa
    nop                                           ; $5e39: $00
    ld d, l                                       ; $5e3a: $55
    nop                                           ; $5e3b: $00
    nop                                           ; $5e3c: $00
    nop                                           ; $5e3d: $00
    nop                                           ; $5e3e: $00
    nop                                           ; $5e3f: $00
    xor d                                         ; $5e40: $aa
    nop                                           ; $5e41: $00
    ld d, l                                       ; $5e42: $55
    nop                                           ; $5e43: $00
    rst $38                                       ; $5e44: $ff
    nop                                           ; $5e45: $00
    call z, $ee22                                 ; $5e46: $cc $22 $ee
    ld de, $aa55                                  ; $5e49: $11 $55 $aa
    xor d                                         ; $5e4c: $aa
    ld d, l                                       ; $5e4d: $55
    ld b, h                                       ; $5e4e: $44
    cp e                                          ; $5e4f: $bb
    adc b                                         ; $5e50: $88
    ld [hl], a                                    ; $5e51: $77
    ld b, h                                       ; $5e52: $44
    cp e                                          ; $5e53: $bb
    nop                                           ; $5e54: $00
    rst $38                                       ; $5e55: $ff
    adc b                                         ; $5e56: $88
    ld [hl], a                                    ; $5e57: $77
    ld d, l                                       ; $5e58: $55
    rst $38                                       ; $5e59: $ff
    xor d                                         ; $5e5a: $aa
    rst $38                                       ; $5e5b: $ff
    ld [hl], a                                    ; $5e5c: $77
    rst $38                                       ; $5e5d: $ff
    rst $38                                       ; $5e5e: $ff
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    xor $ff                                       ; $5e62: $ee $ff
    ld d, l                                       ; $5e64: $55
    rst $38                                       ; $5e65: $ff
    xor d                                         ; $5e66: $aa
    rst $38                                       ; $5e67: $ff
    ld de, $00ee                                  ; $5e68: $11 $ee $00
    rst $38                                       ; $5e6b: $ff
    ld [hl+], a                                   ; $5e6c: $22
    db $dd                                        ; $5e6d: $dd
    ld de, $aaee                                  ; $5e6e: $11 $ee $aa
    ld d, l                                       ; $5e71: $55
    ld d, l                                       ; $5e72: $55
    xor d                                         ; $5e73: $aa
    cp e                                          ; $5e74: $bb
    ld b, h                                       ; $5e75: $44
    sbc c                                         ; $5e76: $99
    ld [hl+], a                                   ; $5e77: $22
    rst $38                                       ; $5e78: $ff
    nop                                           ; $5e79: $00
    ld d, l                                       ; $5e7a: $55
    nop                                           ; $5e7b: $00
    xor d                                         ; $5e7c: $aa
    nop                                           ; $5e7d: $00
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    ld d, l                                       ; $5e82: $55
    nop                                           ; $5e83: $00
    xor d                                         ; $5e84: $aa
    nop                                           ; $5e85: $00
    rst $38                                       ; $5e86: $ff
    nop                                           ; $5e87: $00
    sbc c                                         ; $5e88: $99
    ld b, h                                       ; $5e89: $44
    db $dd                                        ; $5e8a: $dd
    ld [hl+], a                                   ; $5e8b: $22
    xor d                                         ; $5e8c: $aa
    ld d, l                                       ; $5e8d: $55
    ld d, l                                       ; $5e8e: $55
    xor d                                         ; $5e8f: $aa
    ld d, l                                       ; $5e90: $55
    xor d                                         ; $5e91: $aa
    adc b                                         ; $5e92: $88
    ld [hl], a                                    ; $5e93: $77
    ld b, h                                       ; $5e94: $44
    cp e                                          ; $5e95: $bb
    nop                                           ; $5e96: $00
    rst $38                                       ; $5e97: $ff
    adc b                                         ; $5e98: $88
    ld [hl], a                                    ; $5e99: $77
    ld d, l                                       ; $5e9a: $55
    rst $38                                       ; $5e9b: $ff
    xor d                                         ; $5e9c: $aa
    rst $38                                       ; $5e9d: $ff
    ld [hl], a                                    ; $5e9e: $77
    rst $38                                       ; $5e9f: $ff
    rst $38                                       ; $5ea0: $ff
    rst $38                                       ; $5ea1: $ff
    rst $38                                       ; $5ea2: $ff
    rst $38                                       ; $5ea3: $ff
    xor $ff                                       ; $5ea4: $ee $ff
    ld d, l                                       ; $5ea6: $55
    rst $38                                       ; $5ea7: $ff
    xor d                                         ; $5ea8: $aa
    rst $38                                       ; $5ea9: $ff
    ld de, $00ee                                  ; $5eaa: $11 $ee $00
    rst $38                                       ; $5ead: $ff
    ld [hl+], a                                   ; $5eae: $22
    db $dd                                        ; $5eaf: $dd
    ld de, $aaee                                  ; $5eb0: $11 $ee $aa
    ld d, l                                       ; $5eb3: $55
    ld d, l                                       ; $5eb4: $55
    xor d                                         ; $5eb5: $aa
    cp e                                          ; $5eb6: $bb
    ld b, h                                       ; $5eb7: $44
    db $dd                                        ; $5eb8: $dd
    nop                                           ; $5eb9: $00
    rst $38                                       ; $5eba: $ff
    nop                                           ; $5ebb: $00
    xor d                                         ; $5ebc: $aa
    nop                                           ; $5ebd: $00
    ld d, l                                       ; $5ebe: $55
    nop                                           ; $5ebf: $00
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    nop                                           ; $5ec2: $00
    nop                                           ; $5ec3: $00
    xor d                                         ; $5ec4: $aa
    nop                                           ; $5ec5: $00
    ld d, l                                       ; $5ec6: $55
    nop                                           ; $5ec7: $00
    rst $38                                       ; $5ec8: $ff
    nop                                           ; $5ec9: $00
    cp e                                          ; $5eca: $bb
    nop                                           ; $5ecb: $00
    db $dd                                        ; $5ecc: $dd
    ld [hl+], a                                   ; $5ecd: $22
    xor d                                         ; $5ece: $aa
    ld d, l                                       ; $5ecf: $55
    ld d, l                                       ; $5ed0: $55
    xor d                                         ; $5ed1: $aa
    xor d                                         ; $5ed2: $aa
    ld d, l                                       ; $5ed3: $55
    ld de, $88ee                                  ; $5ed4: $11 $ee $88
    ld [hl], a                                    ; $5ed7: $77
    nop                                           ; $5ed8: $00
    rst $38                                       ; $5ed9: $ff
    sbc c                                         ; $5eda: $99
    xor $55                                       ; $5edb: $ee $55
    rst $38                                       ; $5edd: $ff
    xor d                                         ; $5ede: $aa
    rst $38                                       ; $5edf: $ff
    ld [hl], a                                    ; $5ee0: $77
    rst $38                                       ; $5ee1: $ff
    rst $38                                       ; $5ee2: $ff
    rst $38                                       ; $5ee3: $ff
    rst $38                                       ; $5ee4: $ff
    rst $38                                       ; $5ee5: $ff
    xor $ff                                       ; $5ee6: $ee $ff
    ld d, l                                       ; $5ee8: $55
    rst $38                                       ; $5ee9: $ff
    xor d                                         ; $5eea: $aa
    rst $38                                       ; $5eeb: $ff
    sbc c                                         ; $5eec: $99
    ld [hl], a                                    ; $5eed: $77
    nop                                           ; $5eee: $00
    rst $38                                       ; $5eef: $ff
    ld de, $88ee                                  ; $5ef0: $11 $ee $88
    ld [hl], a                                    ; $5ef3: $77
    ld d, l                                       ; $5ef4: $55
    xor d                                         ; $5ef5: $aa
    xor d                                         ; $5ef6: $aa
    ld d, l                                       ; $5ef7: $55
    db $dd                                        ; $5ef8: $dd
    ld [hl+], a                                   ; $5ef9: $22
    xor $00                                       ; $5efa: $ee $00
    rst $38                                       ; $5efc: $ff
    nop                                           ; $5efd: $00
    ld d, l                                       ; $5efe: $55
    nop                                           ; $5eff: $00
    xor d                                         ; $5f00: $aa
    nop                                           ; $5f01: $00
    nop                                           ; $5f02: $00
    nop                                           ; $5f03: $00
    nop                                           ; $5f04: $00
    nop                                           ; $5f05: $00
    ld d, l                                       ; $5f06: $55
    nop                                           ; $5f07: $00
    xor d                                         ; $5f08: $aa
    nop                                           ; $5f09: $00
    rst $38                                       ; $5f0a: $ff
    nop                                           ; $5f0b: $00
    ld [hl], a                                    ; $5f0c: $77
    nop                                           ; $5f0d: $00
    cp e                                          ; $5f0e: $bb
    ld b, h                                       ; $5f0f: $44
    cp e                                          ; $5f10: $bb
    ld b, h                                       ; $5f11: $44
    ld d, l                                       ; $5f12: $55
    xor d                                         ; $5f13: $aa
    xor d                                         ; $5f14: $aa
    ld d, l                                       ; $5f15: $55
    ld de, $88ee                                  ; $5f16: $11 $ee $88
    ld [hl], a                                    ; $5f19: $77
    nop                                           ; $5f1a: $00
    rst $38                                       ; $5f1b: $ff
    sbc c                                         ; $5f1c: $99
    xor $55                                       ; $5f1d: $ee $55
    rst $38                                       ; $5f1f: $ff
    xor d                                         ; $5f20: $aa
    rst $38                                       ; $5f21: $ff
    ld [hl], a                                    ; $5f22: $77
    rst $38                                       ; $5f23: $ff
    rst $38                                       ; $5f24: $ff
    rst $38                                       ; $5f25: $ff
    rst $38                                       ; $5f26: $ff
    rst $38                                       ; $5f27: $ff
    xor $ff                                       ; $5f28: $ee $ff
    ld d, l                                       ; $5f2a: $55
    rst $38                                       ; $5f2b: $ff
    xor d                                         ; $5f2c: $aa
    rst $38                                       ; $5f2d: $ff
    sbc c                                         ; $5f2e: $99
    ld [hl], a                                    ; $5f2f: $77
    nop                                           ; $5f30: $00
    rst $38                                       ; $5f31: $ff
    ld de, $88ee                                  ; $5f32: $11 $ee $88
    ld [hl], a                                    ; $5f35: $77
    ld d, l                                       ; $5f36: $55
    xor d                                         ; $5f37: $aa
    xor d                                         ; $5f38: $aa
    ld d, l                                       ; $5f39: $55
    db $dd                                        ; $5f3a: $dd
    ld [hl+], a                                   ; $5f3b: $22
    ld h, [hl]                                    ; $5f3c: $66
    ld de, $00ff                                  ; $5f3d: $11 $ff $00
    xor d                                         ; $5f40: $aa
    nop                                           ; $5f41: $00
    ld d, l                                       ; $5f42: $55
    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    nop                                           ; $5f47: $00
    xor d                                         ; $5f48: $aa
    nop                                           ; $5f49: $00
    ld d, l                                       ; $5f4a: $55
    nop                                           ; $5f4b: $00
    rst $38                                       ; $5f4c: $ff
    nop                                           ; $5f4d: $00
    ld h, [hl]                                    ; $5f4e: $66
    adc b                                         ; $5f4f: $88
    call z, Call_073_7711                         ; $5f50: $cc $11 $77
    adc b                                         ; $5f53: $88
    xor d                                         ; $5f54: $aa
    ld d, l                                       ; $5f55: $55
    ld d, l                                       ; $5f56: $55
    xor d                                         ; $5f57: $aa
    ld [hl+], a                                   ; $5f58: $22
    db $dd                                        ; $5f59: $dd
    ld de, $00ee                                  ; $5f5a: $11 $ee $00
    rst $38                                       ; $5f5d: $ff
    inc sp                                        ; $5f5e: $33
    db $dd                                        ; $5f5f: $dd
    xor d                                         ; $5f60: $aa
    rst $38                                       ; $5f61: $ff
    ld d, l                                       ; $5f62: $55
    rst $38                                       ; $5f63: $ff
    xor $ff                                       ; $5f64: $ee $ff
    rst $38                                       ; $5f66: $ff
    rst $38                                       ; $5f67: $ff
    rst $38                                       ; $5f68: $ff
    rst $38                                       ; $5f69: $ff
    ld [hl], a                                    ; $5f6a: $77
    rst $38                                       ; $5f6b: $ff
    xor d                                         ; $5f6c: $aa
    rst $38                                       ; $5f6d: $ff
    ld d, l                                       ; $5f6e: $55
    rst $38                                       ; $5f6f: $ff
    call z, Call_000_00bb                         ; $5f70: $cc $bb $00
    rst $38                                       ; $5f73: $ff
    adc b                                         ; $5f74: $88
    ld [hl], a                                    ; $5f75: $77
    ld b, h                                       ; $5f76: $44
    cp e                                          ; $5f77: $bb
    xor d                                         ; $5f78: $aa
    ld d, l                                       ; $5f79: $55
    ld d, l                                       ; $5f7a: $55
    xor d                                         ; $5f7b: $aa
    xor $11                                       ; $5f7c: $ee $11
    inc sp                                        ; $5f7e: $33
    adc b                                         ; $5f7f: $88
    rst $38                                       ; $5f80: $ff
    nop                                           ; $5f81: $00
    ld d, l                                       ; $5f82: $55
    nop                                           ; $5f83: $00
    xor d                                         ; $5f84: $aa
    nop                                           ; $5f85: $00
    nop                                           ; $5f86: $00
    nop                                           ; $5f87: $00
    nop                                           ; $5f88: $00
    nop                                           ; $5f89: $00
    ld d, l                                       ; $5f8a: $55
    nop                                           ; $5f8b: $00
    xor d                                         ; $5f8c: $aa
    nop                                           ; $5f8d: $00
    rst $38                                       ; $5f8e: $ff
    nop                                           ; $5f8f: $00
    rst $38                                       ; $5f90: $ff
    nop                                           ; $5f91: $00
    xor d                                         ; $5f92: $aa
    ld de, $8877                                  ; $5f93: $11 $77 $88
    xor d                                         ; $5f96: $aa
    ld d, l                                       ; $5f97: $55
    ld d, l                                       ; $5f98: $55
    xor d                                         ; $5f99: $aa
    ld [hl+], a                                   ; $5f9a: $22
    db $dd                                        ; $5f9b: $dd
    ld de, $00ee                                  ; $5f9c: $11 $ee $00
    rst $38                                       ; $5f9f: $ff
    inc sp                                        ; $5fa0: $33
    db $dd                                        ; $5fa1: $dd
    xor d                                         ; $5fa2: $aa
    rst $38                                       ; $5fa3: $ff
    ld d, l                                       ; $5fa4: $55
    rst $38                                       ; $5fa5: $ff
    xor $ff                                       ; $5fa6: $ee $ff
    rst $38                                       ; $5fa8: $ff
    rst $38                                       ; $5fa9: $ff
    rst $38                                       ; $5faa: $ff
    rst $38                                       ; $5fab: $ff
    ld [hl], a                                    ; $5fac: $77
    rst $38                                       ; $5fad: $ff
    xor d                                         ; $5fae: $aa
    rst $38                                       ; $5faf: $ff
    ld d, l                                       ; $5fb0: $55
    rst $38                                       ; $5fb1: $ff
    call z, Call_000_00bb                         ; $5fb2: $cc $bb $00
    rst $38                                       ; $5fb5: $ff
    adc b                                         ; $5fb6: $88
    ld [hl], a                                    ; $5fb7: $77
    ld b, h                                       ; $5fb8: $44
    cp e                                          ; $5fb9: $bb
    xor d                                         ; $5fba: $aa
    ld d, l                                       ; $5fbb: $55
    ld d, l                                       ; $5fbc: $55
    xor d                                         ; $5fbd: $aa
    xor $11                                       ; $5fbe: $ee $11
    ld d, l                                       ; $5fc0: $55
    adc b                                         ; $5fc1: $88
    rst $38                                       ; $5fc2: $ff
    nop                                           ; $5fc3: $00
    xor d                                         ; $5fc4: $aa
    nop                                           ; $5fc5: $00
    ld d, l                                       ; $5fc6: $55
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    xor d                                         ; $5fcc: $aa
    nop                                           ; $5fcd: $00
    ld d, l                                       ; $5fce: $55
    nop                                           ; $5fcf: $00
    xor d                                         ; $5fd0: $aa
    nop                                           ; $5fd1: $00
    rst $38                                       ; $5fd2: $ff
    nop                                           ; $5fd3: $00
    ld d, l                                       ; $5fd4: $55
    ld [hl+], a                                   ; $5fd5: $22
    xor $11                                       ; $5fd6: $ee $11
    ld d, l                                       ; $5fd8: $55
    xor d                                         ; $5fd9: $aa
    xor d                                         ; $5fda: $aa
    ld d, l                                       ; $5fdb: $55
    ld b, h                                       ; $5fdc: $44
    cp e                                          ; $5fdd: $bb
    ld [hl+], a                                   ; $5fde: $22
    db $dd                                        ; $5fdf: $dd
    nop                                           ; $5fe0: $00
    rst $38                                       ; $5fe1: $ff
    ld d, l                                       ; $5fe2: $55
    cp e                                          ; $5fe3: $bb
    xor d                                         ; $5fe4: $aa
    rst $38                                       ; $5fe5: $ff
    ld d, l                                       ; $5fe6: $55
    rst $38                                       ; $5fe7: $ff
    xor $ff                                       ; $5fe8: $ee $ff
    rst $38                                       ; $5fea: $ff
    rst $38                                       ; $5feb: $ff
    rst $38                                       ; $5fec: $ff
    rst $38                                       ; $5fed: $ff
    ld [hl], a                                    ; $5fee: $77
    rst $38                                       ; $5fef: $ff
    xor d                                         ; $5ff0: $aa
    rst $38                                       ; $5ff1: $ff
    ld d, l                                       ; $5ff2: $55
    rst $38                                       ; $5ff3: $ff
    xor d                                         ; $5ff4: $aa
    db $dd                                        ; $5ff5: $dd
    nop                                           ; $5ff6: $00
    rst $38                                       ; $5ff7: $ff
    ld b, h                                       ; $5ff8: $44
    cp e                                          ; $5ff9: $bb
    ld [hl+], a                                   ; $5ffa: $22
    db $dd                                        ; $5ffb: $dd
    ld d, l                                       ; $5ffc: $55
    xor d                                         ; $5ffd: $aa
    xor d                                         ; $5ffe: $aa
    ld d, l                                       ; $5fff: $55

Call_073_6000:
    ld [hl], a                                    ; $6000: $77
    adc b                                         ; $6001: $88
    xor d                                         ; $6002: $aa
    ld b, h                                       ; $6003: $44
    rst $38                                       ; $6004: $ff
    nop                                           ; $6005: $00
    ld d, l                                       ; $6006: $55
    nop                                           ; $6007: $00
    xor d                                         ; $6008: $aa
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    nop                                           ; $600c: $00
    nop                                           ; $600d: $00
    ld d, l                                       ; $600e: $55
    nop                                           ; $600f: $00
    xor d                                         ; $6010: $aa
    nop                                           ; $6011: $00
    ld d, l                                       ; $6012: $55
    nop                                           ; $6013: $00
    rst $38                                       ; $6014: $ff
    nop                                           ; $6015: $00
    call z, $ee22                                 ; $6016: $cc $22 $ee
    ld de, $aa55                                  ; $6019: $11 $55 $aa
    xor d                                         ; $601c: $aa
    ld d, l                                       ; $601d: $55
    ld b, h                                       ; $601e: $44
    cp e                                          ; $601f: $bb
    ld [hl+], a                                   ; $6020: $22
    db $dd                                        ; $6021: $dd
    nop                                           ; $6022: $00
    rst $38                                       ; $6023: $ff
    ld h, [hl]                                    ; $6024: $66
    cp e                                          ; $6025: $bb
    ld d, l                                       ; $6026: $55
    rst $38                                       ; $6027: $ff
    xor d                                         ; $6028: $aa
    rst $38                                       ; $6029: $ff
    db $dd                                        ; $602a: $dd
    rst $38                                       ; $602b: $ff
    rst $38                                       ; $602c: $ff
    rst $38                                       ; $602d: $ff
    rst $38                                       ; $602e: $ff
    rst $38                                       ; $602f: $ff
    cp e                                          ; $6030: $bb
    rst $38                                       ; $6031: $ff
    ld d, l                                       ; $6032: $55
    rst $38                                       ; $6033: $ff
    xor d                                         ; $6034: $aa

jr_073_6035:
    rst $38                                       ; $6035: $ff
    ld h, [hl]                                    ; $6036: $66
    db $dd                                        ; $6037: $dd
    nop                                           ; $6038: $00
    rst $38                                       ; $6039: $ff
    ld b, h                                       ; $603a: $44
    cp e                                          ; $603b: $bb
    ld [hl+], a                                   ; $603c: $22
    db $dd                                        ; $603d: $dd
    ld d, l                                       ; $603e: $55
    xor d                                         ; $603f: $aa
    xor d                                         ; $6040: $aa
    ld d, l                                       ; $6041: $55
    ld [hl], a                                    ; $6042: $77
    adc b                                         ; $6043: $88
    inc sp                                        ; $6044: $33
    ld b, h                                       ; $6045: $44
    rst $38                                       ; $6046: $ff
    nop                                           ; $6047: $00
    xor d                                         ; $6048: $aa
    nop                                           ; $6049: $00
    ld d, l                                       ; $604a: $55
    nop                                           ; $604b: $00
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    inc b                                         ; $6050: $04
    ei                                            ; $6051: $fb
    nop                                           ; $6052: $00
    rst $38                                       ; $6053: $ff
    jr nz, jr_073_6035                            ; $6054: $20 $df

    ld a, [bc]                                    ; $6056: $0a
    push af                                       ; $6057: $f5
    nop                                           ; $6058: $00
    rst $38                                       ; $6059: $ff
    ld d, b                                       ; $605a: $50
    xor b                                         ; $605b: $a8
    ld bc, $ff01                                  ; $605c: $01 $01 $ff
    rst $38                                       ; $605f: $ff
    ld [bc], a                                    ; $6060: $02
    db $fd                                        ; $6061: $fd
    ld b, b                                       ; $6062: $40
    cp a                                          ; $6063: $bf
    nop                                           ; $6064: $00

jr_073_6065:
    rst $38                                       ; $6065: $ff
    xor d                                         ; $6066: $aa
    ld d, l                                       ; $6067: $55
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    nop                                           ; $606b: $00
    rst $38                                       ; $606c: $ff
    rst $38                                       ; $606d: $ff
    rst $38                                       ; $606e: $ff
    rst $38                                       ; $606f: $ff
    nop                                           ; $6070: $00
    rst $38                                       ; $6071: $ff
    inc b                                         ; $6072: $04
    ei                                            ; $6073: $fb
    nop                                           ; $6074: $00
    rst $38                                       ; $6075: $ff
    xor d                                         ; $6076: $aa
    ld d, l                                       ; $6077: $55
    nop                                           ; $6078: $00

jr_073_6079:
    rst $38                                       ; $6079: $ff
    dec d                                         ; $607a: $15
    ld a, [bc]                                    ; $607b: $0a
    add b                                         ; $607c: $80
    add b                                         ; $607d: $80
    rst $38                                       ; $607e: $ff
    rst $38                                       ; $607f: $ff
    add hl, bc                                    ; $6080: $09
    or $00                                        ; $6081: $f6 $00
    rst $38                                       ; $6083: $ff
    jr nz, jr_073_6065                            ; $6084: $20 $df

    nop                                           ; $6086: $00
    rst $38                                       ; $6087: $ff
    nop                                           ; $6088: $00
    rst $38                                       ; $6089: $ff
    ld d, l                                       ; $608a: $55
    xor d                                         ; $608b: $aa
    ld a, [hl+]                                   ; $608c: $2a
    dec d                                         ; $608d: $15
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    nop                                           ; $6090: $00
    rst $38                                       ; $6091: $ff
    nop                                           ; $6092: $00
    rst $38                                       ; $6093: $ff
    nop                                           ; $6094: $00
    rst $38                                       ; $6095: $ff
    nop                                           ; $6096: $00
    rst $38                                       ; $6097: $ff
    jr nz, jr_073_6079                            ; $6098: $20 $df

    ld d, l                                       ; $609a: $55
    xor d                                         ; $609b: $aa
    xor d                                         ; $609c: $aa
    ld d, l                                       ; $609d: $55
    nop                                           ; $609e: $00
    nop                                           ; $609f: $00
    ld bc, $80fe                                  ; $60a0: $01 $fe $80
    ld a, a                                       ; $60a3: $7f
    nop                                           ; $60a4: $00
    rst $38                                       ; $60a5: $ff
    ld [bc], a                                    ; $60a6: $02
    db $fd                                        ; $60a7: $fd
    nop                                           ; $60a8: $00
    rst $38                                       ; $60a9: $ff
    ld d, h                                       ; $60aa: $54
    xor d                                         ; $60ab: $aa
    add b                                         ; $60ac: $80
    nop                                           ; $60ad: $00
    ld bc, $0201                                  ; $60ae: $01 $01 $02
    db $fd                                        ; $60b1: $fd
    ld b, b                                       ; $60b2: $40
    cp a                                          ; $60b3: $bf
    nop                                           ; $60b4: $00
    rst $38                                       ; $60b5: $ff
    xor d                                         ; $60b6: $aa
    ld d, l                                       ; $60b7: $55
    nop                                           ; $60b8: $00
    ldh a, [rP1]                                  ; $60b9: $f0 $00
    nop                                           ; $60bb: $00
    ld a, a                                       ; $60bc: $7f
    ld a, a                                       ; $60bd: $7f
    rst $38                                       ; $60be: $ff
    rst $38                                       ; $60bf: $ff
    inc b                                         ; $60c0: $04
    ei                                            ; $60c1: $fb
    nop                                           ; $60c2: $00
    rst $38                                       ; $60c3: $ff
    db $10                                        ; $60c4: $10
    rst $28                                       ; $60c5: $ef
    and b                                         ; $60c6: $a0
    ld e, a                                       ; $60c7: $5f
    nop                                           ; $60c8: $00
    rlca                                          ; $60c9: $07
    nop                                           ; $60ca: $00
    nop                                           ; $60cb: $00
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    rst $38                                       ; $60d2: $ff
    rst $38                                       ; $60d3: $ff
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    rst $38                                       ; $60d7: $ff
    rst $38                                       ; $60d8: $ff
    rst $38                                       ; $60d9: $ff
    rst $38                                       ; $60da: $ff
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    rst $38                                       ; $60dd: $ff
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    rst $38                                       ; $60e3: $ff
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    rst $38                                       ; $60e7: $ff
    rst $38                                       ; $60e8: $ff
    rst $38                                       ; $60e9: $ff
    rst $38                                       ; $60ea: $ff
    rst $38                                       ; $60eb: $ff
    rst $38                                       ; $60ec: $ff
    rst $38                                       ; $60ed: $ff
    rst $38                                       ; $60ee: $ff
    rst $38                                       ; $60ef: $ff
    rst $38                                       ; $60f0: $ff
    rst $38                                       ; $60f1: $ff
    rst $38                                       ; $60f2: $ff
    rst $38                                       ; $60f3: $ff
    rst $38                                       ; $60f4: $ff
    rst $38                                       ; $60f5: $ff
    rst $38                                       ; $60f6: $ff
    rst $38                                       ; $60f7: $ff
    rst $38                                       ; $60f8: $ff
    rst $38                                       ; $60f9: $ff
    rst $38                                       ; $60fa: $ff
    rst $38                                       ; $60fb: $ff
    rst $38                                       ; $60fc: $ff
    rst $38                                       ; $60fd: $ff
    rst $38                                       ; $60fe: $ff
    rst $38                                       ; $60ff: $ff
    rst $38                                       ; $6100: $ff
    rst $38                                       ; $6101: $ff
    rst $38                                       ; $6102: $ff
    rst $38                                       ; $6103: $ff
    rst $38                                       ; $6104: $ff
    rst $38                                       ; $6105: $ff
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    rst $38                                       ; $610a: $ff
    rst $38                                       ; $610b: $ff
    rst $38                                       ; $610c: $ff
    rst $38                                       ; $610d: $ff
    rst $38                                       ; $610e: $ff
    rst $38                                       ; $610f: $ff
    ret nz                                        ; $6110: $c0

    ret nz                                        ; $6111: $c0

    rst $38                                       ; $6112: $ff
    rst $38                                       ; $6113: $ff
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    rst $38                                       ; $6116: $ff
    rst $38                                       ; $6117: $ff
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    rst $38                                       ; $611a: $ff
    rst $38                                       ; $611b: $ff
    rst $38                                       ; $611c: $ff
    rst $38                                       ; $611d: $ff
    rst $38                                       ; $611e: $ff
    rst $38                                       ; $611f: $ff
    rra                                           ; $6120: $1f
    rra                                           ; $6121: $1f
    rst $38                                       ; $6122: $ff
    rst $38                                       ; $6123: $ff
    rst $38                                       ; $6124: $ff
    rst $38                                       ; $6125: $ff
    rst $38                                       ; $6126: $ff
    rst $38                                       ; $6127: $ff
    rst $38                                       ; $6128: $ff
    rst $38                                       ; $6129: $ff
    rst $38                                       ; $612a: $ff
    rst $38                                       ; $612b: $ff
    rst $38                                       ; $612c: $ff
    rst $38                                       ; $612d: $ff
    rst $38                                       ; $612e: $ff
    rst $38                                       ; $612f: $ff
    rst $38                                       ; $6130: $ff
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    rst $38                                       ; $6133: $ff
    rst $38                                       ; $6134: $ff
    rst $38                                       ; $6135: $ff
    rst $38                                       ; $6136: $ff
    rst $38                                       ; $6137: $ff
    rst $38                                       ; $6138: $ff
    rst $38                                       ; $6139: $ff
    rst $38                                       ; $613a: $ff
    rst $38                                       ; $613b: $ff
    rst $38                                       ; $613c: $ff
    rst $38                                       ; $613d: $ff
    rst $38                                       ; $613e: $ff
    rst $38                                       ; $613f: $ff
    rst $38                                       ; $6140: $ff
    rst $38                                       ; $6141: $ff
    rst $38                                       ; $6142: $ff
    rst $38                                       ; $6143: $ff
    rst $38                                       ; $6144: $ff
    rst $38                                       ; $6145: $ff
    rst $38                                       ; $6146: $ff
    rst $38                                       ; $6147: $ff
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    rst $38                                       ; $614a: $ff
    rst $38                                       ; $614b: $ff
    rst $38                                       ; $614c: $ff
    rst $38                                       ; $614d: $ff
    rst $38                                       ; $614e: $ff
    rst $38                                       ; $614f: $ff
    rst $10                                       ; $6150: $d7
    rst $38                                       ; $6151: $ff
    rst $38                                       ; $6152: $ff
    rst $38                                       ; $6153: $ff
    rst $38                                       ; $6154: $ff
    rst $38                                       ; $6155: $ff
    rst $38                                       ; $6156: $ff
    rst $38                                       ; $6157: $ff
    rst $38                                       ; $6158: $ff
    rst $38                                       ; $6159: $ff
    rst $38                                       ; $615a: $ff
    rst $38                                       ; $615b: $ff
    rst $38                                       ; $615c: $ff
    rst $38                                       ; $615d: $ff
    ld [$ffff], a                                 ; $615e: $ea $ff $ff
    rst $38                                       ; $6161: $ff
    cp $ff                                        ; $6162: $fe $ff
    db $fd                                        ; $6164: $fd
    cp $aa                                        ; $6165: $fe $aa
    rst $38                                       ; $6167: $ff
    rst $38                                       ; $6168: $ff
    rst $38                                       ; $6169: $ff
    rst $38                                       ; $616a: $ff
    rst $38                                       ; $616b: $ff
    rst $38                                       ; $616c: $ff
    rst $38                                       ; $616d: $ff
    cp a                                          ; $616e: $bf
    rst $38                                       ; $616f: $ff
    rst $38                                       ; $6170: $ff
    rst $38                                       ; $6171: $ff
    cp a                                          ; $6172: $bf
    rst $38                                       ; $6173: $ff
    ld e, d                                       ; $6174: $5a
    and a                                         ; $6175: $a7
    rst $38                                       ; $6176: $ff
    rst $38                                       ; $6177: $ff
    rst $38                                       ; $6178: $ff
    rst $38                                       ; $6179: $ff
    rst $38                                       ; $617a: $ff
    rst $38                                       ; $617b: $ff
    rst $38                                       ; $617c: $ff
    rst $38                                       ; $617d: $ff
    rst $38                                       ; $617e: $ff
    rst $38                                       ; $617f: $ff
    rst $38                                       ; $6180: $ff
    rst $38                                       ; $6181: $ff
    rst $38                                       ; $6182: $ff
    rst $38                                       ; $6183: $ff
    or a                                          ; $6184: $b7
    rst $38                                       ; $6185: $ff
    rst $38                                       ; $6186: $ff
    rst $38                                       ; $6187: $ff
    rst $38                                       ; $6188: $ff
    rst $38                                       ; $6189: $ff
    rst $38                                       ; $618a: $ff
    rst $38                                       ; $618b: $ff
    rst $38                                       ; $618c: $ff
    rst $38                                       ; $618d: $ff
    rst $38                                       ; $618e: $ff
    rst $38                                       ; $618f: $ff
    rst $38                                       ; $6190: $ff
    rst $38                                       ; $6191: $ff
    rst $38                                       ; $6192: $ff
    rst $38                                       ; $6193: $ff
    rst $38                                       ; $6194: $ff
    rst $38                                       ; $6195: $ff
    rst $38                                       ; $6196: $ff
    rst $38                                       ; $6197: $ff
    rst $38                                       ; $6198: $ff
    rst $38                                       ; $6199: $ff
    rst $38                                       ; $619a: $ff
    rst $38                                       ; $619b: $ff
    rst $38                                       ; $619c: $ff
    rst $38                                       ; $619d: $ff
    db $eb                                        ; $619e: $eb
    rst $38                                       ; $619f: $ff
    rst $38                                       ; $61a0: $ff
    rst $38                                       ; $61a1: $ff
    rst $28                                       ; $61a2: $ef
    rst $38                                       ; $61a3: $ff
    db $fd                                        ; $61a4: $fd
    rst $38                                       ; $61a5: $ff
    rst $38                                       ; $61a6: $ff
    rst $38                                       ; $61a7: $ff
    rst $38                                       ; $61a8: $ff
    rst $38                                       ; $61a9: $ff
    rst $38                                       ; $61aa: $ff
    rst $38                                       ; $61ab: $ff
    rst $38                                       ; $61ac: $ff
    rst $38                                       ; $61ad: $ff
    rst $38                                       ; $61ae: $ff
    rst $38                                       ; $61af: $ff
    rst $38                                       ; $61b0: $ff
    rst $38                                       ; $61b1: $ff
    rst $38                                       ; $61b2: $ff
    rst $38                                       ; $61b3: $ff
    ld a, a                                       ; $61b4: $7f
    rst $38                                       ; $61b5: $ff
    rst $38                                       ; $61b6: $ff
    rst $38                                       ; $61b7: $ff
    rst $38                                       ; $61b8: $ff
    rst $38                                       ; $61b9: $ff
    ld a, [$55ff]                                 ; $61ba: $fa $ff $55
    db $eb                                        ; $61bd: $eb
    rst $38                                       ; $61be: $ff
    rst $38                                       ; $61bf: $ff
    rst $38                                       ; $61c0: $ff
    rst $38                                       ; $61c1: $ff
    rst $38                                       ; $61c2: $ff
    rst $38                                       ; $61c3: $ff
    ld a, [$ffff]                                 ; $61c4: $fa $ff $ff
    rst $38                                       ; $61c7: $ff
    cp $ff                                        ; $61c8: $fe $ff
    rst $38                                       ; $61ca: $ff
    rst $38                                       ; $61cb: $ff
    ld a, a                                       ; $61cc: $7f
    rst $38                                       ; $61cd: $ff
    rst $38                                       ; $61ce: $ff
    rst $38                                       ; $61cf: $ff
    push de                                       ; $61d0: $d5
    ld [$ffff], a                                 ; $61d1: $ea $ff $ff
    ld a, a                                       ; $61d4: $7f
    rst $38                                       ; $61d5: $ff
    rst $38                                       ; $61d6: $ff
    rst $38                                       ; $61d7: $ff
    rst $38                                       ; $61d8: $ff
    rst $38                                       ; $61d9: $ff
    rst $38                                       ; $61da: $ff
    rst $38                                       ; $61db: $ff
    rst $38                                       ; $61dc: $ff
    rst $38                                       ; $61dd: $ff
    xor e                                         ; $61de: $ab
    rst $38                                       ; $61df: $ff
    ld e, a                                       ; $61e0: $5f
    rst $38                                       ; $61e1: $ff
    rst $38                                       ; $61e2: $ff
    rst $38                                       ; $61e3: $ff
    rst $38                                       ; $61e4: $ff
    rst $38                                       ; $61e5: $ff
    rst $38                                       ; $61e6: $ff
    rst $38                                       ; $61e7: $ff
    ld d, l                                       ; $61e8: $55
    cp $ff                                        ; $61e9: $fe $ff
    rst $38                                       ; $61eb: $ff
    rst $38                                       ; $61ec: $ff
    rst $38                                       ; $61ed: $ff
    push af                                       ; $61ee: $f5
    rst $38                                       ; $61ef: $ff
    rst $38                                       ; $61f0: $ff
    rst $38                                       ; $61f1: $ff
    rst $38                                       ; $61f2: $ff
    rst $38                                       ; $61f3: $ff
    rst $38                                       ; $61f4: $ff
    rst $38                                       ; $61f5: $ff
    rst $38                                       ; $61f6: $ff
    rst $38                                       ; $61f7: $ff
    xor a                                         ; $61f8: $af
    ld a, a                                       ; $61f9: $7f
    rst $38                                       ; $61fa: $ff
    rst $38                                       ; $61fb: $ff
    rst $38                                       ; $61fc: $ff
    rst $38                                       ; $61fd: $ff
    ld e, a                                       ; $61fe: $5f
    rst $38                                       ; $61ff: $ff
    rst $38                                       ; $6200: $ff
    rst $38                                       ; $6201: $ff
    rst $38                                       ; $6202: $ff
    rst $38                                       ; $6203: $ff
    push af                                       ; $6204: $f5
    rst $38                                       ; $6205: $ff
    rst $38                                       ; $6206: $ff
    rst $38                                       ; $6207: $ff
    rst $38                                       ; $6208: $ff
    rst $38                                       ; $6209: $ff
    rst $38                                       ; $620a: $ff
    rst $38                                       ; $620b: $ff
    rst $38                                       ; $620c: $ff
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    rst $38                                       ; $620f: $ff
    rst $38                                       ; $6210: $ff
    rst $38                                       ; $6211: $ff
    rst $38                                       ; $6212: $ff
    rst $38                                       ; $6213: $ff
    rst $38                                       ; $6214: $ff
    rst $38                                       ; $6215: $ff
    rst $38                                       ; $6216: $ff
    rst $38                                       ; $6217: $ff
    db $fd                                        ; $6218: $fd
    rst $38                                       ; $6219: $ff
    rst $38                                       ; $621a: $ff
    rst $38                                       ; $621b: $ff
    rst $38                                       ; $621c: $ff
    rst $38                                       ; $621d: $ff
    rst $38                                       ; $621e: $ff
    rst $38                                       ; $621f: $ff
    rst $38                                       ; $6220: $ff
    rst $38                                       ; $6221: $ff
    rst $38                                       ; $6222: $ff
    rst $38                                       ; $6223: $ff
    rst $38                                       ; $6224: $ff
    rst $38                                       ; $6225: $ff
    ei                                            ; $6226: $fb
    rst $38                                       ; $6227: $ff
    ld d, l                                       ; $6228: $55
    xor e                                         ; $6229: $ab
    xor a                                         ; $622a: $af
    rst $38                                       ; $622b: $ff
    rst $38                                       ; $622c: $ff
    rst $38                                       ; $622d: $ff
    rst $38                                       ; $622e: $ff
    rst $38                                       ; $622f: $ff
    cp $ff                                        ; $6230: $fe $ff
    db $fd                                        ; $6232: $fd
    rst $38                                       ; $6233: $ff
    rst $38                                       ; $6234: $ff

jr_073_6235:
    rst $38                                       ; $6235: $ff
    rst $38                                       ; $6236: $ff
    rst $38                                       ; $6237: $ff
    rst $38                                       ; $6238: $ff
    rst $38                                       ; $6239: $ff
    rst $38                                       ; $623a: $ff
    rst $38                                       ; $623b: $ff
    rst $38                                       ; $623c: $ff
    rst $38                                       ; $623d: $ff
    rst $38                                       ; $623e: $ff
    rst $38                                       ; $623f: $ff
    cp a                                          ; $6240: $bf
    rst $38                                       ; $6241: $ff
    ld d, l                                       ; $6242: $55
    xor a                                         ; $6243: $af
    rst $38                                       ; $6244: $ff
    rst $38                                       ; $6245: $ff
    rst $38                                       ; $6246: $ff
    rst $38                                       ; $6247: $ff
    rst $38                                       ; $6248: $ff
    rst $38                                       ; $6249: $ff
    rst $38                                       ; $624a: $ff
    rst $38                                       ; $624b: $ff
    rst $38                                       ; $624c: $ff
    rst $38                                       ; $624d: $ff
    rst $38                                       ; $624e: $ff
    rst $38                                       ; $624f: $ff
    inc b                                         ; $6250: $04
    ei                                            ; $6251: $fb
    nop                                           ; $6252: $00
    rst $38                                       ; $6253: $ff
    jr nz, jr_073_6235                            ; $6254: $20 $df

    nop                                           ; $6256: $00
    rst $38                                       ; $6257: $ff
    nop                                           ; $6258: $00
    ldh a, [rSB]                                  ; $6259: $f0 $01
    ld bc, $2a2a                                  ; $625b: $01 $2a $2a
    ld e, a                                       ; $625e: $5f
    ld e, a                                       ; $625f: $5f
    ld [bc], a                                    ; $6260: $02
    db $fd                                        ; $6261: $fd
    ld b, b                                       ; $6262: $40
    cp a                                          ; $6263: $bf
    nop                                           ; $6264: $00

jr_073_6265:
    rst $38                                       ; $6265: $ff
    nop                                           ; $6266: $00
    add c                                         ; $6267: $81
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    ld d, l                                       ; $626a: $55
    ld d, l                                       ; $626b: $55
    rst $38                                       ; $626c: $ff
    rst $38                                       ; $626d: $ff
    rst $38                                       ; $626e: $ff
    rst $38                                       ; $626f: $ff
    nop                                           ; $6270: $00
    rst $38                                       ; $6271: $ff
    inc b                                         ; $6272: $04
    ei                                            ; $6273: $fb
    nop                                           ; $6274: $00
    rst $38                                       ; $6275: $ff
    nop                                           ; $6276: $00
    rst $38                                       ; $6277: $ff
    ld a, [bc]                                    ; $6278: $0a

jr_073_6279:
    dec b                                         ; $6279: $05
    nop                                           ; $627a: $00
    nop                                           ; $627b: $00
    xor d                                         ; $627c: $aa
    xor d                                         ; $627d: $aa
    db $fd                                        ; $627e: $fd
    db $fd                                        ; $627f: $fd
    add hl, bc                                    ; $6280: $09
    or $00                                        ; $6281: $f6 $00
    rst $38                                       ; $6283: $ff
    jr nz, jr_073_6265                            ; $6284: $20 $df

    nop                                           ; $6286: $00
    rst $38                                       ; $6287: $ff
    nop                                           ; $6288: $00
    rst $38                                       ; $6289: $ff
    nop                                           ; $628a: $00
    ccf                                           ; $628b: $3f
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    ld d, l                                       ; $628e: $55
    ld d, l                                       ; $628f: $55
    nop                                           ; $6290: $00
    rst $38                                       ; $6291: $ff
    nop                                           ; $6292: $00
    rst $38                                       ; $6293: $ff
    nop                                           ; $6294: $00
    rst $38                                       ; $6295: $ff
    nop                                           ; $6296: $00
    rst $38                                       ; $6297: $ff
    jr nz, jr_073_6279                            ; $6298: $20 $df

    nop                                           ; $629a: $00
    db $fc                                        ; $629b: $fc
    nop                                           ; $629c: $00
    nop                                           ; $629d: $00
    ld bc, $0101                                  ; $629e: $01 $01 $01
    cp $80                                        ; $62a1: $fe $80
    ld a, a                                       ; $62a3: $7f
    nop                                           ; $62a4: $00
    rst $38                                       ; $62a5: $ff
    nop                                           ; $62a6: $00
    rst $38                                       ; $62a7: $ff
    nop                                           ; $62a8: $00
    ldh [rP1], a                                  ; $62a9: $e0 $00
    nop                                           ; $62ab: $00
    ld a, [bc]                                    ; $62ac: $0a
    ld a, [bc]                                    ; $62ad: $0a
    ld e, a                                       ; $62ae: $5f
    ld e, a                                       ; $62af: $5f
    ld [bc], a                                    ; $62b0: $02
    db $fd                                        ; $62b1: $fd
    ld b, b                                       ; $62b2: $40
    cp a                                          ; $62b3: $bf
    nop                                           ; $62b4: $00
    rst $38                                       ; $62b5: $ff
    nop                                           ; $62b6: $00
    add b                                         ; $62b7: $80
    nop                                           ; $62b8: $00
    nop                                           ; $62b9: $00
    ld d, h                                       ; $62ba: $54
    ld d, h                                       ; $62bb: $54
    cp d                                          ; $62bc: $ba
    cp d                                          ; $62bd: $ba
    rst $38                                       ; $62be: $ff
    rst $38                                       ; $62bf: $ff
    inc b                                         ; $62c0: $04
    ei                                            ; $62c1: $fb
    nop                                           ; $62c2: $00
    rst $38                                       ; $62c3: $ff
    db $10                                        ; $62c4: $10
    rst $28                                       ; $62c5: $ef
    nop                                           ; $62c6: $00
    rst $38                                       ; $62c7: $ff
    nop                                           ; $62c8: $00
    rra                                           ; $62c9: $1f
    nop                                           ; $62ca: $00
    inc bc                                        ; $62cb: $03
    xor b                                         ; $62cc: $a8
    xor b                                         ; $62cd: $a8
    push af                                       ; $62ce: $f5
    push af                                       ; $62cf: $f5
    rst $38                                       ; $62d0: $ff
    rst $38                                       ; $62d1: $ff
    rst $38                                       ; $62d2: $ff
    rst $38                                       ; $62d3: $ff
    rst $38                                       ; $62d4: $ff
    rst $38                                       ; $62d5: $ff
    rst $38                                       ; $62d6: $ff
    rst $38                                       ; $62d7: $ff
    rst $38                                       ; $62d8: $ff
    rst $38                                       ; $62d9: $ff
    rst $38                                       ; $62da: $ff
    rst $38                                       ; $62db: $ff
    rst $38                                       ; $62dc: $ff
    rst $38                                       ; $62dd: $ff
    rst $38                                       ; $62de: $ff
    rst $38                                       ; $62df: $ff
    rst $38                                       ; $62e0: $ff
    rst $38                                       ; $62e1: $ff
    rst $38                                       ; $62e2: $ff
    rst $38                                       ; $62e3: $ff
    rst $38                                       ; $62e4: $ff
    rst $38                                       ; $62e5: $ff
    rst $38                                       ; $62e6: $ff
    rst $38                                       ; $62e7: $ff
    rst $38                                       ; $62e8: $ff
    rst $38                                       ; $62e9: $ff
    rst $38                                       ; $62ea: $ff
    rst $38                                       ; $62eb: $ff
    rst $38                                       ; $62ec: $ff
    rst $38                                       ; $62ed: $ff
    rst $38                                       ; $62ee: $ff
    rst $38                                       ; $62ef: $ff
    rst $38                                       ; $62f0: $ff
    rst $38                                       ; $62f1: $ff
    rst $38                                       ; $62f2: $ff
    rst $38                                       ; $62f3: $ff
    rst $38                                       ; $62f4: $ff
    rst $38                                       ; $62f5: $ff
    rst $38                                       ; $62f6: $ff
    rst $38                                       ; $62f7: $ff
    rst $38                                       ; $62f8: $ff
    rst $38                                       ; $62f9: $ff
    rst $38                                       ; $62fa: $ff
    rst $38                                       ; $62fb: $ff
    rst $38                                       ; $62fc: $ff
    rst $38                                       ; $62fd: $ff
    rst $38                                       ; $62fe: $ff
    rst $38                                       ; $62ff: $ff

Call_073_6300:
    cp $fe                                        ; $6300: $fe $fe
    rst $38                                       ; $6302: $ff
    rst $38                                       ; $6303: $ff
    rst $38                                       ; $6304: $ff
    rst $38                                       ; $6305: $ff
    rst $38                                       ; $6306: $ff
    rst $38                                       ; $6307: $ff
    rst $38                                       ; $6308: $ff
    rst $38                                       ; $6309: $ff
    rst $38                                       ; $630a: $ff
    rst $38                                       ; $630b: $ff
    rst $38                                       ; $630c: $ff
    rst $38                                       ; $630d: $ff
    rst $38                                       ; $630e: $ff
    rst $38                                       ; $630f: $ff
    xor d                                         ; $6310: $aa
    xor d                                         ; $6311: $aa
    rst $38                                       ; $6312: $ff
    rst $38                                       ; $6313: $ff
    rst $38                                       ; $6314: $ff
    rst $38                                       ; $6315: $ff
    rst $38                                       ; $6316: $ff
    rst $38                                       ; $6317: $ff
    rst $38                                       ; $6318: $ff
    rst $38                                       ; $6319: $ff
    rst $38                                       ; $631a: $ff
    rst $38                                       ; $631b: $ff
    rst $38                                       ; $631c: $ff
    rst $38                                       ; $631d: $ff
    rst $38                                       ; $631e: $ff
    rst $38                                       ; $631f: $ff
    rst $38                                       ; $6320: $ff
    rst $38                                       ; $6321: $ff
    rst $38                                       ; $6322: $ff
    rst $38                                       ; $6323: $ff
    rst $38                                       ; $6324: $ff
    rst $38                                       ; $6325: $ff
    rst $38                                       ; $6326: $ff
    rst $38                                       ; $6327: $ff
    rst $38                                       ; $6328: $ff
    rst $38                                       ; $6329: $ff
    rst $38                                       ; $632a: $ff
    rst $38                                       ; $632b: $ff
    rst $38                                       ; $632c: $ff
    rst $38                                       ; $632d: $ff
    rst $38                                       ; $632e: $ff
    rst $38                                       ; $632f: $ff
    rst $38                                       ; $6330: $ff
    rst $38                                       ; $6331: $ff
    rst $38                                       ; $6332: $ff
    rst $38                                       ; $6333: $ff
    rst $38                                       ; $6334: $ff
    rst $38                                       ; $6335: $ff
    rst $38                                       ; $6336: $ff
    rst $38                                       ; $6337: $ff
    rst $38                                       ; $6338: $ff
    rst $38                                       ; $6339: $ff
    rst $38                                       ; $633a: $ff
    rst $38                                       ; $633b: $ff
    rst $38                                       ; $633c: $ff
    rst $38                                       ; $633d: $ff
    rst $38                                       ; $633e: $ff
    rst $38                                       ; $633f: $ff
    rst $38                                       ; $6340: $ff
    rst $38                                       ; $6341: $ff
    rst $38                                       ; $6342: $ff
    rst $38                                       ; $6343: $ff
    rst $38                                       ; $6344: $ff
    rst $38                                       ; $6345: $ff
    rst $38                                       ; $6346: $ff
    rst $38                                       ; $6347: $ff
    rst $38                                       ; $6348: $ff
    rst $38                                       ; $6349: $ff
    rst $38                                       ; $634a: $ff
    rst $38                                       ; $634b: $ff
    rst $38                                       ; $634c: $ff
    rst $38                                       ; $634d: $ff
    rst $38                                       ; $634e: $ff
    rst $38                                       ; $634f: $ff
    db $eb                                        ; $6350: $eb
    rst $38                                       ; $6351: $ff
    rst $38                                       ; $6352: $ff
    rst $38                                       ; $6353: $ff
    rst $38                                       ; $6354: $ff
    rst $38                                       ; $6355: $ff
    rst $38                                       ; $6356: $ff
    rst $38                                       ; $6357: $ff
    rst $38                                       ; $6358: $ff
    rst $38                                       ; $6359: $ff
    rst $38                                       ; $635a: $ff
    rst $38                                       ; $635b: $ff
    rst $38                                       ; $635c: $ff
    rst $38                                       ; $635d: $ff
    push af                                       ; $635e: $f5
    rst $38                                       ; $635f: $ff
    rst $38                                       ; $6360: $ff
    rst $38                                       ; $6361: $ff
    db $fd                                        ; $6362: $fd
    rst $38                                       ; $6363: $ff
    ld a, [$55fd]                                 ; $6364: $fa $fd $55
    rst $38                                       ; $6367: $ff
    rst $38                                       ; $6368: $ff
    rst $38                                       ; $6369: $ff
    rst $38                                       ; $636a: $ff
    rst $38                                       ; $636b: $ff
    rst $38                                       ; $636c: $ff
    rst $38                                       ; $636d: $ff
    ld e, a                                       ; $636e: $5f
    rst $38                                       ; $636f: $ff
    rst $38                                       ; $6370: $ff
    rst $38                                       ; $6371: $ff
    ld a, a                                       ; $6372: $7f
    rst $38                                       ; $6373: $ff
    or l                                          ; $6374: $b5
    ld c, a                                       ; $6375: $4f
    rst $38                                       ; $6376: $ff
    rst $38                                       ; $6377: $ff
    rst $38                                       ; $6378: $ff
    rst $38                                       ; $6379: $ff
    rst $38                                       ; $637a: $ff
    rst $38                                       ; $637b: $ff
    rst $38                                       ; $637c: $ff
    rst $38                                       ; $637d: $ff
    rst $38                                       ; $637e: $ff
    rst $38                                       ; $637f: $ff
    rst $38                                       ; $6380: $ff
    rst $38                                       ; $6381: $ff
    rst $38                                       ; $6382: $ff
    rst $38                                       ; $6383: $ff
    ld l, a                                       ; $6384: $6f
    rst $38                                       ; $6385: $ff
    rst $38                                       ; $6386: $ff
    rst $38                                       ; $6387: $ff
    rst $38                                       ; $6388: $ff
    rst $38                                       ; $6389: $ff
    rst $38                                       ; $638a: $ff
    rst $38                                       ; $638b: $ff
    rst $38                                       ; $638c: $ff
    rst $38                                       ; $638d: $ff
    rst $38                                       ; $638e: $ff
    rst $38                                       ; $638f: $ff
    rst $38                                       ; $6390: $ff
    rst $38                                       ; $6391: $ff
    rst $38                                       ; $6392: $ff
    rst $38                                       ; $6393: $ff
    rst $38                                       ; $6394: $ff
    rst $38                                       ; $6395: $ff
    rst $38                                       ; $6396: $ff
    rst $38                                       ; $6397: $ff
    rst $38                                       ; $6398: $ff
    rst $38                                       ; $6399: $ff
    rst $38                                       ; $639a: $ff
    rst $38                                       ; $639b: $ff
    rst $38                                       ; $639c: $ff
    rst $38                                       ; $639d: $ff
    push af                                       ; $639e: $f5
    rst $38                                       ; $639f: $ff
    rst $38                                       ; $63a0: $ff
    rst $38                                       ; $63a1: $ff
    rst $18                                       ; $63a2: $df
    rst $38                                       ; $63a3: $ff
    ld a, [$ffff]                                 ; $63a4: $fa $ff $ff
    rst $38                                       ; $63a7: $ff
    rst $38                                       ; $63a8: $ff
    rst $38                                       ; $63a9: $ff
    rst $38                                       ; $63aa: $ff
    rst $38                                       ; $63ab: $ff
    cp $ff                                        ; $63ac: $fe $ff
    rst $38                                       ; $63ae: $ff
    rst $38                                       ; $63af: $ff
    rst $38                                       ; $63b0: $ff
    rst $38                                       ; $63b1: $ff
    rst $38                                       ; $63b2: $ff
    rst $38                                       ; $63b3: $ff
    rst $38                                       ; $63b4: $ff
    rst $38                                       ; $63b5: $ff
    rst $38                                       ; $63b6: $ff
    rst $38                                       ; $63b7: $ff
    rst $38                                       ; $63b8: $ff
    rst $38                                       ; $63b9: $ff
    push af                                       ; $63ba: $f5
    rst $38                                       ; $63bb: $ff
    xor d                                         ; $63bc: $aa
    rst $10                                       ; $63bd: $d7
    rst $38                                       ; $63be: $ff
    rst $38                                       ; $63bf: $ff
    rst $38                                       ; $63c0: $ff
    rst $38                                       ; $63c1: $ff
    rst $38                                       ; $63c2: $ff
    rst $38                                       ; $63c3: $ff
    rst $38                                       ; $63c4: $ff
    rst $38                                       ; $63c5: $ff
    ld a, [$ffff]                                 ; $63c6: $fa $ff $ff
    rst $38                                       ; $63c9: $ff
    cp $ff                                        ; $63ca: $fe $ff
    rst $38                                       ; $63cc: $ff
    rst $38                                       ; $63cd: $ff
    rst $38                                       ; $63ce: $ff
    rst $38                                       ; $63cf: $ff
    ld [$fff5], a                                 ; $63d0: $ea $f5 $ff
    rst $38                                       ; $63d3: $ff
    rst $38                                       ; $63d4: $ff
    rst $38                                       ; $63d5: $ff
    rst $38                                       ; $63d6: $ff
    rst $38                                       ; $63d7: $ff
    rst $38                                       ; $63d8: $ff
    rst $38                                       ; $63d9: $ff
    rst $38                                       ; $63da: $ff
    rst $38                                       ; $63db: $ff
    rst $38                                       ; $63dc: $ff
    rst $38                                       ; $63dd: $ff
    push de                                       ; $63de: $d5
    rst $38                                       ; $63df: $ff
    xor a                                         ; $63e0: $af
    ld a, a                                       ; $63e1: $7f
    rst $38                                       ; $63e2: $ff
    rst $38                                       ; $63e3: $ff
    rst $38                                       ; $63e4: $ff
    rst $38                                       ; $63e5: $ff
    rst $38                                       ; $63e6: $ff
    rst $38                                       ; $63e7: $ff
    xor d                                         ; $63e8: $aa
    rst $38                                       ; $63e9: $ff
    rst $38                                       ; $63ea: $ff
    rst $38                                       ; $63eb: $ff
    rst $38                                       ; $63ec: $ff
    rst $38                                       ; $63ed: $ff
    ld a, [$ffff]                                 ; $63ee: $fa $ff $ff
    rst $38                                       ; $63f1: $ff
    rst $38                                       ; $63f2: $ff
    rst $38                                       ; $63f3: $ff
    rst $38                                       ; $63f4: $ff
    rst $38                                       ; $63f5: $ff
    rst $38                                       ; $63f6: $ff
    rst $38                                       ; $63f7: $ff
    rst $10                                       ; $63f8: $d7
    ccf                                           ; $63f9: $3f
    rst $38                                       ; $63fa: $ff
    rst $38                                       ; $63fb: $ff
    rst $38                                       ; $63fc: $ff
    rst $38                                       ; $63fd: $ff
    xor a                                         ; $63fe: $af
    rst $38                                       ; $63ff: $ff
    rst $38                                       ; $6400: $ff
    rst $38                                       ; $6401: $ff
    rst $38                                       ; $6402: $ff
    rst $38                                       ; $6403: $ff
    db $eb                                        ; $6404: $eb
    rst $38                                       ; $6405: $ff
    rst $38                                       ; $6406: $ff
    rst $38                                       ; $6407: $ff
    rst $38                                       ; $6408: $ff
    rst $38                                       ; $6409: $ff
    rst $38                                       ; $640a: $ff
    rst $38                                       ; $640b: $ff
    rst $38                                       ; $640c: $ff
    rst $38                                       ; $640d: $ff
    rst $38                                       ; $640e: $ff
    rst $38                                       ; $640f: $ff
    rst $38                                       ; $6410: $ff
    rst $38                                       ; $6411: $ff
    rst $38                                       ; $6412: $ff
    rst $38                                       ; $6413: $ff
    rst $38                                       ; $6414: $ff
    rst $38                                       ; $6415: $ff
    rst $38                                       ; $6416: $ff
    rst $38                                       ; $6417: $ff
    cp $ff                                        ; $6418: $fe $ff
    rst $38                                       ; $641a: $ff
    rst $38                                       ; $641b: $ff
    rst $38                                       ; $641c: $ff
    rst $38                                       ; $641d: $ff
    rst $38                                       ; $641e: $ff
    rst $38                                       ; $641f: $ff
    rst $38                                       ; $6420: $ff
    rst $38                                       ; $6421: $ff
    rst $38                                       ; $6422: $ff
    rst $38                                       ; $6423: $ff
    rst $38                                       ; $6424: $ff
    rst $38                                       ; $6425: $ff
    db $fd                                        ; $6426: $fd
    rst $38                                       ; $6427: $ff
    xor d                                         ; $6428: $aa
    push de                                       ; $6429: $d5
    rst $10                                       ; $642a: $d7
    rst $38                                       ; $642b: $ff
    rst $38                                       ; $642c: $ff
    rst $38                                       ; $642d: $ff
    rst $38                                       ; $642e: $ff
    rst $38                                       ; $642f: $ff
    db $fd                                        ; $6430: $fd
    rst $38                                       ; $6431: $ff
    ld a, [$ffff]                                 ; $6432: $fa $ff $ff

jr_073_6435:
    rst $38                                       ; $6435: $ff
    rst $38                                       ; $6436: $ff
    rst $38                                       ; $6437: $ff
    rst $38                                       ; $6438: $ff
    rst $38                                       ; $6439: $ff
    rst $38                                       ; $643a: $ff
    rst $38                                       ; $643b: $ff
    rst $38                                       ; $643c: $ff
    rst $38                                       ; $643d: $ff
    rst $38                                       ; $643e: $ff
    rst $38                                       ; $643f: $ff
    ld a, a                                       ; $6440: $7f
    rst $38                                       ; $6441: $ff
    xor e                                         ; $6442: $ab
    ld e, a                                       ; $6443: $5f
    rst $38                                       ; $6444: $ff
    rst $38                                       ; $6445: $ff
    rst $38                                       ; $6446: $ff
    rst $38                                       ; $6447: $ff
    rst $38                                       ; $6448: $ff
    rst $38                                       ; $6449: $ff
    rst $38                                       ; $644a: $ff
    rst $38                                       ; $644b: $ff
    rst $38                                       ; $644c: $ff
    rst $38                                       ; $644d: $ff
    rst $38                                       ; $644e: $ff
    rst $38                                       ; $644f: $ff
    inc b                                         ; $6450: $04
    ei                                            ; $6451: $fb
    nop                                           ; $6452: $00
    rst $38                                       ; $6453: $ff
    jr nz, jr_073_6435                            ; $6454: $20 $df

    nop                                           ; $6456: $00
    ldh a, [$03]                                  ; $6457: $f0 $03
    inc bc                                        ; $6459: $03
    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff
    rst $38                                       ; $645c: $ff
    rst $38                                       ; $645d: $ff
    rst $38                                       ; $645e: $ff
    rst $38                                       ; $645f: $ff
    ld [bc], a                                    ; $6460: $02
    db $fd                                        ; $6461: $fd
    ld b, b                                       ; $6462: $40
    cp a                                          ; $6463: $bf
    nop                                           ; $6464: $00

jr_073_6465:
    add b                                         ; $6465: $80
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    rst $38                                       ; $6468: $ff
    rst $38                                       ; $6469: $ff
    rst $38                                       ; $646a: $ff
    rst $38                                       ; $646b: $ff
    rst $38                                       ; $646c: $ff
    rst $38                                       ; $646d: $ff
    rst $38                                       ; $646e: $ff
    rst $38                                       ; $646f: $ff
    nop                                           ; $6470: $00
    rst $38                                       ; $6471: $ff
    inc b                                         ; $6472: $04
    ei                                            ; $6473: $fb
    nop                                           ; $6474: $00
    rrca                                          ; $6475: $0f
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    db $fc                                        ; $6478: $fc
    db $fc                                        ; $6479: $fc
    rst $38                                       ; $647a: $ff
    rst $38                                       ; $647b: $ff
    rst $38                                       ; $647c: $ff
    rst $38                                       ; $647d: $ff
    rst $38                                       ; $647e: $ff
    rst $38                                       ; $647f: $ff
    add hl, bc                                    ; $6480: $09
    or $00                                        ; $6481: $f6 $00
    rst $38                                       ; $6483: $ff
    jr nz, jr_073_6465                            ; $6484: $20 $df

    nop                                           ; $6486: $00
    rrca                                          ; $6487: $0f
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    rst $38                                       ; $648a: $ff
    rst $38                                       ; $648b: $ff
    rst $38                                       ; $648c: $ff
    rst $38                                       ; $648d: $ff
    rst $38                                       ; $648e: $ff
    rst $38                                       ; $648f: $ff
    nop                                           ; $6490: $00
    rst $38                                       ; $6491: $ff
    nop                                           ; $6492: $00
    rst $38                                       ; $6493: $ff
    nop                                           ; $6494: $00
    rst $38                                       ; $6495: $ff
    nop                                           ; $6496: $00
    cp $00                                        ; $6497: $fe $00
    nop                                           ; $6499: $00
    rst $38                                       ; $649a: $ff
    rst $38                                       ; $649b: $ff
    rst $38                                       ; $649c: $ff
    rst $38                                       ; $649d: $ff
    rst $38                                       ; $649e: $ff
    rst $38                                       ; $649f: $ff
    ld bc, $80fe                                  ; $64a0: $01 $fe $80
    ld a, a                                       ; $64a3: $7f
    nop                                           ; $64a4: $00
    ld hl, sp+$00                                 ; $64a5: $f8 $00
    nop                                           ; $64a7: $00
    ccf                                           ; $64a8: $3f
    ccf                                           ; $64a9: $3f
    rst $38                                       ; $64aa: $ff
    rst $38                                       ; $64ab: $ff
    rst $38                                       ; $64ac: $ff
    rst $38                                       ; $64ad: $ff
    rst $38                                       ; $64ae: $ff
    rst $38                                       ; $64af: $ff
    ld [bc], a                                    ; $64b0: $02
    db $fd                                        ; $64b1: $fd
    ld b, b                                       ; $64b2: $40
    cp a                                          ; $64b3: $bf
    nop                                           ; $64b4: $00
    nop                                           ; $64b5: $00
    db $fc                                        ; $64b6: $fc
    db $fc                                        ; $64b7: $fc
    rst $38                                       ; $64b8: $ff
    rst $38                                       ; $64b9: $ff
    rst $38                                       ; $64ba: $ff
    rst $38                                       ; $64bb: $ff
    rst $38                                       ; $64bc: $ff
    rst $38                                       ; $64bd: $ff
    rst $38                                       ; $64be: $ff
    rst $38                                       ; $64bf: $ff
    inc b                                         ; $64c0: $04
    ei                                            ; $64c1: $fb
    nop                                           ; $64c2: $00
    rst $38                                       ; $64c3: $ff
    db $10                                        ; $64c4: $10
    ld l, a                                       ; $64c5: $6f
    nop                                           ; $64c6: $00
    rrca                                          ; $64c7: $0f
    add b                                         ; $64c8: $80
    add b                                         ; $64c9: $80
    rst $38                                       ; $64ca: $ff
    rst $38                                       ; $64cb: $ff
    rst $38                                       ; $64cc: $ff
    rst $38                                       ; $64cd: $ff
    rst $38                                       ; $64ce: $ff
    rst $38                                       ; $64cf: $ff
    rst $38                                       ; $64d0: $ff
    rst $38                                       ; $64d1: $ff
    rst $38                                       ; $64d2: $ff
    rst $38                                       ; $64d3: $ff
    rst $38                                       ; $64d4: $ff
    rst $38                                       ; $64d5: $ff
    rst $38                                       ; $64d6: $ff
    rst $38                                       ; $64d7: $ff
    rst $38                                       ; $64d8: $ff
    rst $38                                       ; $64d9: $ff
    rst $38                                       ; $64da: $ff
    rst $38                                       ; $64db: $ff
    rst $38                                       ; $64dc: $ff
    rst $38                                       ; $64dd: $ff
    rst $38                                       ; $64de: $ff
    rst $38                                       ; $64df: $ff
    rst $38                                       ; $64e0: $ff
    rst $38                                       ; $64e1: $ff
    rst $38                                       ; $64e2: $ff
    rst $38                                       ; $64e3: $ff
    rst $38                                       ; $64e4: $ff
    rst $38                                       ; $64e5: $ff
    rst $38                                       ; $64e6: $ff
    rst $38                                       ; $64e7: $ff
    rst $38                                       ; $64e8: $ff
    rst $38                                       ; $64e9: $ff
    rst $38                                       ; $64ea: $ff
    rst $38                                       ; $64eb: $ff
    rst $38                                       ; $64ec: $ff
    rst $38                                       ; $64ed: $ff
    rst $38                                       ; $64ee: $ff
    rst $38                                       ; $64ef: $ff
    rst $38                                       ; $64f0: $ff
    rst $38                                       ; $64f1: $ff
    rst $38                                       ; $64f2: $ff
    rst $38                                       ; $64f3: $ff
    rst $38                                       ; $64f4: $ff
    rst $38                                       ; $64f5: $ff
    rst $38                                       ; $64f6: $ff
    rst $38                                       ; $64f7: $ff
    rst $38                                       ; $64f8: $ff
    rst $38                                       ; $64f9: $ff
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    rst $38                                       ; $64fc: $ff
    rst $38                                       ; $64fd: $ff
    rst $38                                       ; $64fe: $ff
    rst $38                                       ; $64ff: $ff
    rst $38                                       ; $6500: $ff
    rst $38                                       ; $6501: $ff
    rst $38                                       ; $6502: $ff
    rst $38                                       ; $6503: $ff
    rst $38                                       ; $6504: $ff
    rst $38                                       ; $6505: $ff
    rst $38                                       ; $6506: $ff
    rst $38                                       ; $6507: $ff
    rst $38                                       ; $6508: $ff
    rst $38                                       ; $6509: $ff
    rst $38                                       ; $650a: $ff
    rst $38                                       ; $650b: $ff
    rst $38                                       ; $650c: $ff
    rst $38                                       ; $650d: $ff
    rst $38                                       ; $650e: $ff
    rst $38                                       ; $650f: $ff
    rst $38                                       ; $6510: $ff
    rst $38                                       ; $6511: $ff
    rst $38                                       ; $6512: $ff
    rst $38                                       ; $6513: $ff
    rst $38                                       ; $6514: $ff
    rst $38                                       ; $6515: $ff
    rst $38                                       ; $6516: $ff
    rst $38                                       ; $6517: $ff
    rst $38                                       ; $6518: $ff
    rst $38                                       ; $6519: $ff
    rst $38                                       ; $651a: $ff
    rst $38                                       ; $651b: $ff
    rst $38                                       ; $651c: $ff
    rst $38                                       ; $651d: $ff
    rst $38                                       ; $651e: $ff
    rst $38                                       ; $651f: $ff
    rst $38                                       ; $6520: $ff
    rst $38                                       ; $6521: $ff
    rst $38                                       ; $6522: $ff
    rst $38                                       ; $6523: $ff
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    rst $38                                       ; $6526: $ff
    rst $38                                       ; $6527: $ff
    rst $38                                       ; $6528: $ff
    rst $38                                       ; $6529: $ff
    rst $38                                       ; $652a: $ff
    rst $38                                       ; $652b: $ff
    rst $38                                       ; $652c: $ff
    rst $38                                       ; $652d: $ff
    rst $38                                       ; $652e: $ff
    rst $38                                       ; $652f: $ff
    rst $38                                       ; $6530: $ff
    rst $38                                       ; $6531: $ff
    rst $38                                       ; $6532: $ff
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    rst $38                                       ; $6539: $ff
    rst $38                                       ; $653a: $ff
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff
    rst $38                                       ; $6540: $ff
    rst $38                                       ; $6541: $ff
    rst $38                                       ; $6542: $ff
    rst $38                                       ; $6543: $ff
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    rst $38                                       ; $6546: $ff
    rst $38                                       ; $6547: $ff
    rst $38                                       ; $6548: $ff
    rst $38                                       ; $6549: $ff
    rst $38                                       ; $654a: $ff
    rst $38                                       ; $654b: $ff
    rst $38                                       ; $654c: $ff
    rst $38                                       ; $654d: $ff
    rst $38                                       ; $654e: $ff
    rst $38                                       ; $654f: $ff
    push af                                       ; $6550: $f5
    rst $38                                       ; $6551: $ff
    rst $38                                       ; $6552: $ff
    rst $38                                       ; $6553: $ff
    rst $38                                       ; $6554: $ff
    rst $38                                       ; $6555: $ff
    cp $ff                                        ; $6556: $fe $ff
    rst $38                                       ; $6558: $ff
    rst $38                                       ; $6559: $ff
    rst $38                                       ; $655a: $ff
    rst $38                                       ; $655b: $ff
    rst $38                                       ; $655c: $ff
    rst $38                                       ; $655d: $ff
    ld a, [$ffff]                                 ; $655e: $fa $ff $ff
    rst $38                                       ; $6561: $ff
    ld a, [$f5ff]                                 ; $6562: $fa $ff $f5
    ld a, [$ffab]                                 ; $6565: $fa $ab $ff
    rst $38                                       ; $6568: $ff
    rst $38                                       ; $6569: $ff
    rst $38                                       ; $656a: $ff
    rst $38                                       ; $656b: $ff
    rst $38                                       ; $656c: $ff
    rst $38                                       ; $656d: $ff
    xor a                                         ; $656e: $af
    rst $38                                       ; $656f: $ff
    rst $38                                       ; $6570: $ff
    rst $38                                       ; $6571: $ff
    rst $38                                       ; $6572: $ff
    rst $38                                       ; $6573: $ff
    ld l, d                                       ; $6574: $6a
    sbc a                                         ; $6575: $9f
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    rst $38                                       ; $6579: $ff
    rst $38                                       ; $657a: $ff
    rst $38                                       ; $657b: $ff
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    rst $38                                       ; $657f: $ff
    rst $38                                       ; $6580: $ff
    rst $38                                       ; $6581: $ff
    rst $38                                       ; $6582: $ff
    rst $38                                       ; $6583: $ff
    rst $18                                       ; $6584: $df
    rst $38                                       ; $6585: $ff
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    rst $38                                       ; $658a: $ff
    rst $38                                       ; $658b: $ff
    rst $38                                       ; $658c: $ff
    rst $38                                       ; $658d: $ff
    rst $38                                       ; $658e: $ff
    rst $38                                       ; $658f: $ff
    rst $38                                       ; $6590: $ff
    rst $38                                       ; $6591: $ff
    rst $38                                       ; $6592: $ff
    rst $38                                       ; $6593: $ff
    rst $38                                       ; $6594: $ff
    rst $38                                       ; $6595: $ff
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    rst $38                                       ; $659a: $ff
    rst $38                                       ; $659b: $ff
    rst $38                                       ; $659c: $ff
    rst $38                                       ; $659d: $ff
    ld a, [$ffff]                                 ; $659e: $fa $ff $ff
    rst $38                                       ; $65a1: $ff
    cp a                                          ; $65a2: $bf
    rst $38                                       ; $65a3: $ff
    push af                                       ; $65a4: $f5
    rst $38                                       ; $65a5: $ff
    rst $38                                       ; $65a6: $ff
    rst $38                                       ; $65a7: $ff
    rst $38                                       ; $65a8: $ff
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff
    db $fd                                        ; $65ac: $fd
    rst $38                                       ; $65ad: $ff
    rst $38                                       ; $65ae: $ff
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    rst $38                                       ; $65b2: $ff
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    rst $38                                       ; $65b5: $ff
    rst $38                                       ; $65b6: $ff
    rst $38                                       ; $65b7: $ff
    rst $38                                       ; $65b8: $ff
    rst $38                                       ; $65b9: $ff
    db $eb                                        ; $65ba: $eb
    rst $38                                       ; $65bb: $ff
    ld d, l                                       ; $65bc: $55
    xor a                                         ; $65bd: $af
    rst $38                                       ; $65be: $ff
    rst $38                                       ; $65bf: $ff
    rst $38                                       ; $65c0: $ff
    rst $38                                       ; $65c1: $ff
    rst $38                                       ; $65c2: $ff
    rst $38                                       ; $65c3: $ff
    rst $38                                       ; $65c4: $ff
    rst $38                                       ; $65c5: $ff
    ld a, [$ffff]                                 ; $65c6: $fa $ff $ff
    rst $38                                       ; $65c9: $ff
    cp $ff                                        ; $65ca: $fe $ff
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    rst $38                                       ; $65ce: $ff
    rst $38                                       ; $65cf: $ff
    push af                                       ; $65d0: $f5
    ld a, [$ffff]                                 ; $65d1: $fa $ff $ff
    rst $38                                       ; $65d4: $ff
    rst $38                                       ; $65d5: $ff
    rst $38                                       ; $65d6: $ff
    rst $38                                       ; $65d7: $ff
    rst $38                                       ; $65d8: $ff
    rst $38                                       ; $65d9: $ff
    rst $38                                       ; $65da: $ff
    rst $38                                       ; $65db: $ff
    rst $38                                       ; $65dc: $ff
    rst $38                                       ; $65dd: $ff
    ld [$57ff], a                                 ; $65de: $ea $ff $57
    cp a                                          ; $65e1: $bf
    rst $38                                       ; $65e2: $ff
    rst $38                                       ; $65e3: $ff
    rst $38                                       ; $65e4: $ff
    rst $38                                       ; $65e5: $ff
    rst $38                                       ; $65e6: $ff
    rst $38                                       ; $65e7: $ff
    push de                                       ; $65e8: $d5
    rst $38                                       ; $65e9: $ff
    rst $38                                       ; $65ea: $ff
    rst $38                                       ; $65eb: $ff
    rst $38                                       ; $65ec: $ff
    rst $38                                       ; $65ed: $ff
    db $fd                                        ; $65ee: $fd
    rst $38                                       ; $65ef: $ff
    rst $38                                       ; $65f0: $ff
    rst $38                                       ; $65f1: $ff
    rst $38                                       ; $65f2: $ff
    rst $38                                       ; $65f3: $ff
    rst $38                                       ; $65f4: $ff
    rst $38                                       ; $65f5: $ff
    rst $38                                       ; $65f6: $ff
    rst $38                                       ; $65f7: $ff
    ld l, e                                       ; $65f8: $6b
    sbc a                                         ; $65f9: $9f
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    ld d, a                                       ; $65fe: $57
    rst $38                                       ; $65ff: $ff
    rst $38                                       ; $6600: $ff
    rst $38                                       ; $6601: $ff
    rst $38                                       ; $6602: $ff
    rst $38                                       ; $6603: $ff
    rst $10                                       ; $6604: $d7
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    rst $38                                       ; $6612: $ff
    rst $38                                       ; $6613: $ff
    rst $38                                       ; $6614: $ff
    rst $38                                       ; $6615: $ff
    rst $38                                       ; $6616: $ff
    rst $38                                       ; $6617: $ff
    rst $38                                       ; $6618: $ff
    rst $38                                       ; $6619: $ff
    rst $38                                       ; $661a: $ff
    rst $38                                       ; $661b: $ff
    rst $38                                       ; $661c: $ff
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    rst $38                                       ; $661f: $ff
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    rst $38                                       ; $6622: $ff
    rst $38                                       ; $6623: $ff
    rst $38                                       ; $6624: $ff
    rst $38                                       ; $6625: $ff
    cp $ff                                        ; $6626: $fe $ff
    ld d, l                                       ; $6628: $55
    ld [$ffeb], a                                 ; $6629: $ea $eb $ff
    rst $38                                       ; $662c: $ff
    rst $38                                       ; $662d: $ff
    rst $38                                       ; $662e: $ff
    rst $38                                       ; $662f: $ff
    ld a, [$f5ff]                                 ; $6630: $fa $ff $f5
    cp $ff                                        ; $6633: $fe $ff

jr_073_6635:
    rst $38                                       ; $6635: $ff
    rst $38                                       ; $6636: $ff
    rst $38                                       ; $6637: $ff
    ld a, a                                       ; $6638: $7f
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    rst $38                                       ; $663b: $ff
    rst $38                                       ; $663c: $ff
    rst $38                                       ; $663d: $ff
    rst $38                                       ; $663e: $ff
    rst $38                                       ; $663f: $ff
    rst $38                                       ; $6640: $ff
    rst $38                                       ; $6641: $ff
    ld d, a                                       ; $6642: $57
    cp a                                          ; $6643: $bf
    rst $38                                       ; $6644: $ff
    rst $38                                       ; $6645: $ff
    rst $38                                       ; $6646: $ff
    rst $38                                       ; $6647: $ff
    rst $38                                       ; $6648: $ff
    rst $38                                       ; $6649: $ff
    rst $38                                       ; $664a: $ff
    rst $38                                       ; $664b: $ff
    rst $38                                       ; $664c: $ff
    rst $38                                       ; $664d: $ff
    rst $38                                       ; $664e: $ff
    rst $38                                       ; $664f: $ff
    inc b                                         ; $6650: $04
    ei                                            ; $6651: $fb
    nop                                           ; $6652: $00
    rst $38                                       ; $6653: $ff
    jr nz, jr_073_6635                            ; $6654: $20 $df

    nop                                           ; $6656: $00
    ldh a, [rSB]                                  ; $6657: $f0 $01
    ld bc, $abab                                  ; $6659: $01 $ab $ab
    rst $38                                       ; $665c: $ff
    rst $38                                       ; $665d: $ff
    rst $38                                       ; $665e: $ff
    rst $38                                       ; $665f: $ff
    ld [bc], a                                    ; $6660: $02
    db $fd                                        ; $6661: $fd
    ld b, b                                       ; $6662: $40
    cp a                                          ; $6663: $bf
    nop                                           ; $6664: $00

jr_073_6665:
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    ld d, h                                       ; $6668: $54
    ld d, h                                       ; $6669: $54
    ld a, [$fffa]                                 ; $666a: $fa $fa $ff
    rst $38                                       ; $666d: $ff
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    nop                                           ; $6670: $00
    rst $38                                       ; $6671: $ff
    inc b                                         ; $6672: $04
    ei                                            ; $6673: $fb
    nop                                           ; $6674: $00
    rra                                           ; $6675: $1f
    nop                                           ; $6676: $00
    ld bc, $0000                                  ; $6677: $01 $00 $00
    xor d                                         ; $667a: $aa
    xor d                                         ; $667b: $aa
    db $fd                                        ; $667c: $fd
    db $fd                                        ; $667d: $fd
    rst $38                                       ; $667e: $ff
    rst $38                                       ; $667f: $ff
    add hl, bc                                    ; $6680: $09
    or $00                                        ; $6681: $f6 $00
    rst $38                                       ; $6683: $ff
    jr nz, jr_073_6665                            ; $6684: $20 $df

    nop                                           ; $6686: $00
    rst $38                                       ; $6687: $ff
    nop                                           ; $6688: $00
    rrca                                          ; $6689: $0f
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    ld d, l                                       ; $668c: $55
    ld d, l                                       ; $668d: $55
    cp $fe                                        ; $668e: $fe $fe
    nop                                           ; $6690: $00
    rst $38                                       ; $6691: $ff
    nop                                           ; $6692: $00
    rst $38                                       ; $6693: $ff
    nop                                           ; $6694: $00
    rst $38                                       ; $6695: $ff
    nop                                           ; $6696: $00
    rst $38                                       ; $6697: $ff
    jr nz, @-$1f                                  ; $6698: $20 $df

    nop                                           ; $669a: $00
    nop                                           ; $669b: $00
    ld bc, $aa01                                  ; $669c: $01 $01 $aa
    xor d                                         ; $669f: $aa
    ld bc, $80fe                                  ; $66a0: $01 $fe $80
    ld a, a                                       ; $66a3: $7f
    nop                                           ; $66a4: $00
    db $fc                                        ; $66a5: $fc
    nop                                           ; $66a6: $00
    ldh [rSB], a                                  ; $66a7: $e0 $01
    ld bc, $2a2a                                  ; $66a9: $01 $2a $2a
    ld d, a                                       ; $66ac: $57
    ld d, a                                       ; $66ad: $57
    rst $38                                       ; $66ae: $ff
    rst $38                                       ; $66af: $ff
    ld [bc], a                                    ; $66b0: $02
    db $fd                                        ; $66b1: $fd
    ld b, b                                       ; $66b2: $40
    cp a                                          ; $66b3: $bf
    nop                                           ; $66b4: $00
    nop                                           ; $66b5: $00
    ld a, [bc]                                    ; $66b6: $0a
    ld a, [bc]                                    ; $66b7: $0a
    ld d, a                                       ; $66b8: $57
    ld d, a                                       ; $66b9: $57
    cp a                                          ; $66ba: $bf
    cp a                                          ; $66bb: $bf
    rst $38                                       ; $66bc: $ff
    rst $38                                       ; $66bd: $ff
    rst $38                                       ; $66be: $ff
    rst $38                                       ; $66bf: $ff
    inc b                                         ; $66c0: $04
    ei                                            ; $66c1: $fb
    nop                                           ; $66c2: $00
    rst $38                                       ; $66c3: $ff
    nop                                           ; $66c4: $00
    inc bc                                        ; $66c5: $03
    and b                                         ; $66c6: $a0
    and b                                         ; $66c7: $a0
    push de                                       ; $66c8: $d5
    push de                                       ; $66c9: $d5
    rst $38                                       ; $66ca: $ff
    rst $38                                       ; $66cb: $ff
    rst $38                                       ; $66cc: $ff
    rst $38                                       ; $66cd: $ff
    rst $38                                       ; $66ce: $ff
    rst $38                                       ; $66cf: $ff
    rst $38                                       ; $66d0: $ff
    rst $38                                       ; $66d1: $ff
    rst $38                                       ; $66d2: $ff
    rst $38                                       ; $66d3: $ff
    rst $38                                       ; $66d4: $ff
    rst $38                                       ; $66d5: $ff
    rst $38                                       ; $66d6: $ff
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    rst $38                                       ; $66d9: $ff
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    rst $38                                       ; $66de: $ff
    rst $38                                       ; $66df: $ff
    rst $38                                       ; $66e0: $ff
    rst $38                                       ; $66e1: $ff
    rst $38                                       ; $66e2: $ff
    rst $38                                       ; $66e3: $ff
    rst $38                                       ; $66e4: $ff
    rst $38                                       ; $66e5: $ff
    rst $38                                       ; $66e6: $ff
    rst $38                                       ; $66e7: $ff
    rst $38                                       ; $66e8: $ff
    rst $38                                       ; $66e9: $ff
    rst $38                                       ; $66ea: $ff
    rst $38                                       ; $66eb: $ff
    rst $38                                       ; $66ec: $ff
    rst $38                                       ; $66ed: $ff
    rst $38                                       ; $66ee: $ff
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff

Call_073_66f4:
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    rst $38                                       ; $66fa: $ff
    rst $38                                       ; $66fb: $ff
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    rst $38                                       ; $6706: $ff
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    rst $38                                       ; $670c: $ff
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    rst $38                                       ; $670f: $ff
    rst $38                                       ; $6710: $ff
    rst $38                                       ; $6711: $ff
    rst $38                                       ; $6712: $ff
    rst $38                                       ; $6713: $ff
    rst $38                                       ; $6714: $ff
    rst $38                                       ; $6715: $ff
    rst $38                                       ; $6716: $ff
    rst $38                                       ; $6717: $ff
    rst $38                                       ; $6718: $ff
    rst $38                                       ; $6719: $ff
    rst $38                                       ; $671a: $ff
    rst $38                                       ; $671b: $ff
    rst $38                                       ; $671c: $ff
    rst $38                                       ; $671d: $ff
    rst $38                                       ; $671e: $ff
    rst $38                                       ; $671f: $ff
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    rst $38                                       ; $6722: $ff
    rst $38                                       ; $6723: $ff
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    rst $38                                       ; $6726: $ff
    rst $38                                       ; $6727: $ff
    rst $38                                       ; $6728: $ff
    rst $38                                       ; $6729: $ff
    rst $38                                       ; $672a: $ff
    rst $38                                       ; $672b: $ff
    rst $38                                       ; $672c: $ff
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    rst $38                                       ; $6733: $ff
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    rst $38                                       ; $6737: $ff
    rst $38                                       ; $6738: $ff
    rst $38                                       ; $6739: $ff
    rst $38                                       ; $673a: $ff
    rst $38                                       ; $673b: $ff
    rst $38                                       ; $673c: $ff
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff
    rst $38                                       ; $673f: $ff
    rst $38                                       ; $6740: $ff
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    rst $38                                       ; $6743: $ff
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    rst $38                                       ; $6747: $ff
    rst $38                                       ; $6748: $ff
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    ld a, [$ffff]                                 ; $6750: $fa $ff $ff
    rst $38                                       ; $6753: $ff
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    db $fd                                        ; $6756: $fd
    rst $38                                       ; $6757: $ff
    rst $38                                       ; $6758: $ff
    rst $38                                       ; $6759: $ff
    rst $38                                       ; $675a: $ff
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    db $fd                                        ; $675e: $fd
    rst $38                                       ; $675f: $ff
    rst $38                                       ; $6760: $ff
    rst $38                                       ; $6761: $ff
    push af                                       ; $6762: $f5
    rst $38                                       ; $6763: $ff
    ld [$57f5], a                                 ; $6764: $ea $f5 $57
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rst $38                                       ; $6769: $ff
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    rst $38                                       ; $676d: $ff
    ld d, a                                       ; $676e: $57
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    rst $38                                       ; $6771: $ff
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff
    push de                                       ; $6774: $d5
    ccf                                           ; $6775: $3f
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff
    rst $38                                       ; $6781: $ff
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    cp a                                          ; $6784: $bf
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    rst $38                                       ; $678d: $ff
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    rst $38                                       ; $6794: $ff
    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    rst $38                                       ; $6798: $ff
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $38                                       ; $679b: $ff
    rst $38                                       ; $679c: $ff
    rst $38                                       ; $679d: $ff
    db $fd                                        ; $679e: $fd
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    rst $38                                       ; $67a1: $ff
    ld a, a                                       ; $67a2: $7f
    rst $38                                       ; $67a3: $ff
    db $eb                                        ; $67a4: $eb
    rst $38                                       ; $67a5: $ff
    rst $38                                       ; $67a6: $ff
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    ld a, [$7fff]                                 ; $67ac: $fa $ff $7f
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    rst $38                                       ; $67b2: $ff
    rst $38                                       ; $67b3: $ff
    rst $38                                       ; $67b4: $ff
    rst $38                                       ; $67b5: $ff
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $10                                       ; $67ba: $d7
    rst $38                                       ; $67bb: $ff
    xor e                                         ; $67bc: $ab
    ld e, a                                       ; $67bd: $5f
    rst $38                                       ; $67be: $ff
    rst $38                                       ; $67bf: $ff
    rst $38                                       ; $67c0: $ff
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    ld a, [$ffff]                                 ; $67c6: $fa $ff $ff
    rst $38                                       ; $67c9: $ff
    cp $ff                                        ; $67ca: $fe $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    ld a, [$fffd]                                 ; $67d0: $fa $fd $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    rst $38                                       ; $67d8: $ff
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    push af                                       ; $67de: $f5
    rst $38                                       ; $67df: $ff
    xor e                                         ; $67e0: $ab
    ld e, a                                       ; $67e1: $5f
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    ld [$ffff], a                                 ; $67e8: $ea $ff $ff
    rst $38                                       ; $67eb: $ff
    rst $38                                       ; $67ec: $ff
    rst $38                                       ; $67ed: $ff
    ld a, [hl]                                    ; $67ee: $7e
    rst $38                                       ; $67ef: $ff
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    rst $38                                       ; $67f2: $ff
    rst $38                                       ; $67f3: $ff
    rst $38                                       ; $67f4: $ff
    rst $38                                       ; $67f5: $ff
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    or l                                          ; $67f8: $b5
    rst $08                                       ; $67f9: $cf
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
    rst $38                                       ; $67fc: $ff
    rst $38                                       ; $67fd: $ff
    xor e                                         ; $67fe: $ab
    rst $38                                       ; $67ff: $ff
    rst $38                                       ; $6800: $ff
    rst $38                                       ; $6801: $ff
    rst $38                                       ; $6802: $ff
    rst $38                                       ; $6803: $ff
    xor a                                         ; $6804: $af
    rst $38                                       ; $6805: $ff
    rst $38                                       ; $6806: $ff
    rst $38                                       ; $6807: $ff
    rst $38                                       ; $6808: $ff
    rst $38                                       ; $6809: $ff
    rst $38                                       ; $680a: $ff
    rst $38                                       ; $680b: $ff
    rst $38                                       ; $680c: $ff
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    rst $38                                       ; $6816: $ff
    rst $38                                       ; $6817: $ff
    rst $38                                       ; $6818: $ff
    rst $38                                       ; $6819: $ff
    rst $38                                       ; $681a: $ff
    rst $38                                       ; $681b: $ff
    rst $38                                       ; $681c: $ff
    rst $38                                       ; $681d: $ff
    rst $38                                       ; $681e: $ff
    rst $38                                       ; $681f: $ff
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    rst $38                                       ; $6822: $ff
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff

jr_073_6826:
    rst $38                                       ; $6826: $ff
    rst $38                                       ; $6827: $ff
    xor d                                         ; $6828: $aa
    push af                                       ; $6829: $f5
    push af                                       ; $682a: $f5
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff
    rst $38                                       ; $682e: $ff
    rst $38                                       ; $682f: $ff
    push af                                       ; $6830: $f5
    rst $38                                       ; $6831: $ff
    ld [$fffd], a                                 ; $6832: $ea $fd $ff
    rst $38                                       ; $6835: $ff
    ld a, a                                       ; $6836: $7f
    rst $38                                       ; $6837: $ff
    cp a                                          ; $6838: $bf
    ld a, a                                       ; $6839: $7f
    rst $38                                       ; $683a: $ff
    rst $38                                       ; $683b: $ff
    rst $38                                       ; $683c: $ff
    rst $38                                       ; $683d: $ff
    rst $38                                       ; $683e: $ff
    rst $38                                       ; $683f: $ff
    rst $38                                       ; $6840: $ff
    rst $38                                       ; $6841: $ff
    xor a                                         ; $6842: $af
    ld a, a                                       ; $6843: $7f
    rst $38                                       ; $6844: $ff
    rst $38                                       ; $6845: $ff
    rst $38                                       ; $6846: $ff
    rst $38                                       ; $6847: $ff
    rst $38                                       ; $6848: $ff
    rst $38                                       ; $6849: $ff
    rst $38                                       ; $684a: $ff
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    rst $38                                       ; $684d: $ff
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    inc b                                         ; $6850: $04
    ei                                            ; $6851: $fb
    nop                                           ; $6852: $00
    rst $38                                       ; $6853: $ff
    jr nz, jr_073_6826                            ; $6854: $20 $d0

    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    rst $38                                       ; $6858: $ff
    rst $38                                       ; $6859: $ff
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    rst $38                                       ; $685d: $ff
    rst $38                                       ; $685e: $ff
    rst $38                                       ; $685f: $ff
    ld [bc], a                                    ; $6860: $02
    db $fd                                        ; $6861: $fd
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00

jr_073_6865:
    nop                                           ; $6865: $00
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    rst $38                                       ; $6868: $ff
    rst $38                                       ; $6869: $ff
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    nop                                           ; $6870: $00
    rst $38                                       ; $6871: $ff
    inc b                                         ; $6872: $04
    dec sp                                        ; $6873: $3b
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    ldh a, [$f0]                                  ; $6876: $f0 $f0
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    rst $38                                       ; $687c: $ff
    rst $38                                       ; $687d: $ff
    rst $38                                       ; $687e: $ff
    rst $38                                       ; $687f: $ff
    add hl, bc                                    ; $6880: $09
    or $00                                        ; $6881: $f6 $00
    rst $38                                       ; $6883: $ff
    jr nz, jr_073_6865                            ; $6884: $20 $df

    nop                                           ; $6886: $00
    rlca                                          ; $6887: $07
    ret nz                                        ; $6888: $c0

    ret nz                                        ; $6889: $c0

    db $fc                                        ; $688a: $fc
    db $fc                                        ; $688b: $fc
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    nop                                           ; $6890: $00
    rst $38                                       ; $6891: $ff
    nop                                           ; $6892: $00
    rst $38                                       ; $6893: $ff
    nop                                           ; $6894: $00
    rst $38                                       ; $6895: $ff
    nop                                           ; $6896: $00
    rst $38                                       ; $6897: $ff
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    inc bc                                        ; $689a: $03
    inc bc                                        ; $689b: $03
    rst $38                                       ; $689c: $ff
    rst $38                                       ; $689d: $ff
    rst $38                                       ; $689e: $ff
    rst $38                                       ; $689f: $ff
    ld bc, $80fe                                  ; $68a0: $01 $fe $80
    ld a, a                                       ; $68a3: $7f
    nop                                           ; $68a4: $00
    ld hl, sp+$00                                 ; $68a5: $f8 $00
    nop                                           ; $68a7: $00
    ld bc, $ff01                                  ; $68a8: $01 $01 $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    rst $38                                       ; $68ae: $ff
    rst $38                                       ; $68af: $ff
    ld [bc], a                                    ; $68b0: $02
    db $fd                                        ; $68b1: $fd
    ld b, b                                       ; $68b2: $40
    cp a                                          ; $68b3: $bf
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    inc bc                                        ; $68b6: $03
    inc bc                                        ; $68b7: $03
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    rst $38                                       ; $68bb: $ff
    rst $38                                       ; $68bc: $ff
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    inc b                                         ; $68c0: $04
    ei                                            ; $68c1: $fb
    nop                                           ; $68c2: $00
    rst $38                                       ; $68c3: $ff
    nop                                           ; $68c4: $00
    rrca                                          ; $68c5: $0f
    ldh [$e0], a                                  ; $68c6: $e0 $e0
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    rst $38                                       ; $68d0: $ff
    rst $38                                       ; $68d1: $ff
    rst $38                                       ; $68d2: $ff
    rst $38                                       ; $68d3: $ff
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    rst $38                                       ; $68ee: $ff
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    rst $38                                       ; $6921: $ff
    rst $38                                       ; $6922: $ff
    rst $38                                       ; $6923: $ff
    rst $38                                       ; $6924: $ff
    rst $38                                       ; $6925: $ff
    rst $38                                       ; $6926: $ff
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    rst $38                                       ; $692c: $ff
    rst $38                                       ; $692d: $ff
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    rst $38                                       ; $6930: $ff
    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    rst $38                                       ; $6933: $ff
    rst $38                                       ; $6934: $ff
    rst $38                                       ; $6935: $ff
    rst $38                                       ; $6936: $ff
    rst $38                                       ; $6937: $ff
    rst $38                                       ; $6938: $ff
    rst $38                                       ; $6939: $ff
    rst $38                                       ; $693a: $ff
    rst $38                                       ; $693b: $ff
    rst $38                                       ; $693c: $ff
    rst $38                                       ; $693d: $ff
    rst $38                                       ; $693e: $ff
    rst $38                                       ; $693f: $ff
    rst $38                                       ; $6940: $ff
    rst $38                                       ; $6941: $ff
    rst $38                                       ; $6942: $ff
    rst $38                                       ; $6943: $ff
    rst $38                                       ; $6944: $ff
    rst $38                                       ; $6945: $ff
    rst $38                                       ; $6946: $ff
    rst $38                                       ; $6947: $ff
    rst $38                                       ; $6948: $ff
    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    rst $38                                       ; $694b: $ff
    rst $38                                       ; $694c: $ff
    rst $38                                       ; $694d: $ff
    rst $38                                       ; $694e: $ff
    rst $38                                       ; $694f: $ff
    ld a, [$ffff]                                 ; $6950: $fa $ff $ff
    rst $38                                       ; $6953: $ff
    rst $38                                       ; $6954: $ff
    rst $38                                       ; $6955: $ff
    db $fd                                        ; $6956: $fd
    rst $38                                       ; $6957: $ff
    rst $38                                       ; $6958: $ff
    rst $38                                       ; $6959: $ff
    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    rst $38                                       ; $695d: $ff
    cp $ff                                        ; $695e: $fe $ff
    rst $38                                       ; $6960: $ff
    rst $38                                       ; $6961: $ff
    push af                                       ; $6962: $f5
    rst $38                                       ; $6963: $ff
    ld [$57f5], a                                 ; $6964: $ea $f5 $57
    rst $38                                       ; $6967: $ff
    rst $38                                       ; $6968: $ff
    rst $38                                       ; $6969: $ff
    rst $38                                       ; $696a: $ff
    rst $38                                       ; $696b: $ff
    rst $38                                       ; $696c: $ff
    rst $38                                       ; $696d: $ff
    xor e                                         ; $696e: $ab
    rst $38                                       ; $696f: $ff
    rst $38                                       ; $6970: $ff
    rst $38                                       ; $6971: $ff
    rst $38                                       ; $6972: $ff
    rst $38                                       ; $6973: $ff
    push de                                       ; $6974: $d5
    ccf                                           ; $6975: $3f
    rst $38                                       ; $6976: $ff
    rst $38                                       ; $6977: $ff
    rst $38                                       ; $6978: $ff
    rst $38                                       ; $6979: $ff
    rst $38                                       ; $697a: $ff
    rst $38                                       ; $697b: $ff
    rst $38                                       ; $697c: $ff
    rst $38                                       ; $697d: $ff
    rst $38                                       ; $697e: $ff
    rst $38                                       ; $697f: $ff
    rst $38                                       ; $6980: $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    cp a                                          ; $6984: $bf
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    rst $38                                       ; $6988: $ff
    rst $38                                       ; $6989: $ff
    rst $38                                       ; $698a: $ff
    rst $38                                       ; $698b: $ff
    rst $38                                       ; $698c: $ff
    rst $38                                       ; $698d: $ff
    rst $38                                       ; $698e: $ff
    rst $38                                       ; $698f: $ff
    rst $38                                       ; $6990: $ff
    rst $38                                       ; $6991: $ff
    cp $ff                                        ; $6992: $fe $ff
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    rst $38                                       ; $6996: $ff
    rst $38                                       ; $6997: $ff
    rst $38                                       ; $6998: $ff
    rst $38                                       ; $6999: $ff
    rst $38                                       ; $699a: $ff
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    rst $38                                       ; $699d: $ff
    cp $ff                                        ; $699e: $fe $ff
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    rst $10                                       ; $69a4: $d7
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    rst $38                                       ; $69aa: $ff
    rst $38                                       ; $69ab: $ff
    push af                                       ; $69ac: $f5
    cp $bf                                        ; $69ad: $fe $bf
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    rst $38                                       ; $69b6: $ff
    rst $38                                       ; $69b7: $ff
    rst $38                                       ; $69b8: $ff
    rst $38                                       ; $69b9: $ff
    xor a                                         ; $69ba: $af
    rst $38                                       ; $69bb: $ff
    ld d, a                                       ; $69bc: $57
    cp a                                          ; $69bd: $bf
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    ld a, [$ffff]                                 ; $69c6: $fa $ff $ff
    rst $38                                       ; $69c9: $ff
    cp $ff                                        ; $69ca: $fe $ff
    rst $38                                       ; $69cc: $ff
    rst $38                                       ; $69cd: $ff
    rst $38                                       ; $69ce: $ff
    rst $38                                       ; $69cf: $ff
    db $fd                                        ; $69d0: $fd
    cp $ff                                        ; $69d1: $fe $ff
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $38                                       ; $69d5: $ff
    rst $38                                       ; $69d6: $ff
    rst $38                                       ; $69d7: $ff
    rst $38                                       ; $69d8: $ff
    rst $38                                       ; $69d9: $ff
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    rst $38                                       ; $69dc: $ff
    rst $38                                       ; $69dd: $ff
    ld a, [$55ff]                                 ; $69de: $fa $ff $55
    xor a                                         ; $69e1: $af
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    rst $38                                       ; $69e5: $ff
    rst $38                                       ; $69e6: $ff
    rst $38                                       ; $69e7: $ff
    push af                                       ; $69e8: $f5
    rst $38                                       ; $69e9: $ff
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    rst $38                                       ; $69ed: $ff
    cp a                                          ; $69ee: $bf
    rst $38                                       ; $69ef: $ff
    rst $38                                       ; $69f0: $ff
    rst $38                                       ; $69f1: $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    rst $38                                       ; $69f5: $ff
    rst $38                                       ; $69f6: $ff
    rst $38                                       ; $69f7: $ff
    ld e, d                                       ; $69f8: $5a
    rst $20                                       ; $69f9: $e7
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    rst $38                                       ; $69fc: $ff
    rst $38                                       ; $69fd: $ff
    ld d, l                                       ; $69fe: $55
    rst $38                                       ; $69ff: $ff
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    ld e, a                                       ; $6a04: $5f
    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    rst $38                                       ; $6a08: $ff
    rst $38                                       ; $6a09: $ff
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    rst $38                                       ; $6a0c: $ff
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff
    rst $38                                       ; $6a13: $ff
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    rst $38                                       ; $6a25: $ff
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    push de                                       ; $6a28: $d5
    ld a, [$fffa]                                 ; $6a29: $fa $fa $ff
    rst $38                                       ; $6a2c: $ff
    rst $38                                       ; $6a2d: $ff
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    push af                                       ; $6a30: $f5
    rst $38                                       ; $6a31: $ff
    ld [$fffd], a                                 ; $6a32: $ea $fd $ff
    rst $38                                       ; $6a35: $ff
    cp a                                          ; $6a36: $bf
    rst $38                                       ; $6a37: $ff
    ld e, a                                       ; $6a38: $5f
    cp a                                          ; $6a39: $bf
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    xor a                                         ; $6a42: $af
    ld a, a                                       ; $6a43: $7f
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    rst $38                                       ; $6a4a: $ff
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    inc b                                         ; $6a50: $04
    ei                                            ; $6a51: $fb
    nop                                           ; $6a52: $00
    cp $00                                        ; $6a53: $fe $00
    add b                                         ; $6a55: $80
    dec b                                         ; $6a56: $05
    dec b                                         ; $6a57: $05
    xor e                                         ; $6a58: $ab
    xor e                                         ; $6a59: $ab
    rst $38                                       ; $6a5a: $ff
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    ld [bc], a                                    ; $6a60: $02
    db $fd                                        ; $6a61: $fd
    nop                                           ; $6a62: $00
    nop                                           ; $6a63: $00
    ld a, [bc]                                    ; $6a64: $0a

jr_073_6a65:
    ld a, [bc]                                    ; $6a65: $0a
    ld d, l                                       ; $6a66: $55
    ld d, l                                       ; $6a67: $55
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff
    rst $38                                       ; $6a6f: $ff
    nop                                           ; $6a70: $00
    rst $38                                       ; $6a71: $ff
    inc b                                         ; $6a72: $04
    dec sp                                        ; $6a73: $3b
    nop                                           ; $6a74: $00
    nop                                           ; $6a75: $00
    ld d, b                                       ; $6a76: $50
    ld d, b                                       ; $6a77: $50
    ld [$ffea], a                                 ; $6a78: $ea $ea $ff
    rst $38                                       ; $6a7b: $ff
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    add hl, bc                                    ; $6a80: $09
    or $00                                        ; $6a81: $f6 $00
    rst $38                                       ; $6a83: $ff
    jr nz, jr_073_6a65                            ; $6a84: $20 $df

    nop                                           ; $6a86: $00
    rlca                                          ; $6a87: $07
    add b                                         ; $6a88: $80
    add b                                         ; $6a89: $80
    ld d, h                                       ; $6a8a: $54
    ld d, h                                       ; $6a8b: $54
    ld a, [$fffa]                                 ; $6a8c: $fa $fa $ff
    rst $38                                       ; $6a8f: $ff
    nop                                           ; $6a90: $00
    rst $38                                       ; $6a91: $ff
    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff
    nop                                           ; $6a94: $00
    rst $38                                       ; $6a95: $ff
    nop                                           ; $6a96: $00
    rst $38                                       ; $6a97: $ff
    nop                                           ; $6a98: $00
    nop                                           ; $6a99: $00
    nop                                           ; $6a9a: $00
    nop                                           ; $6a9b: $00
    xor d                                         ; $6a9c: $aa
    xor d                                         ; $6a9d: $aa
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    ld bc, $80fe                                  ; $6aa0: $01 $fe $80
    ld a, a                                       ; $6aa3: $7f
    rlca                                          ; $6aa4: $07
    ld hl, sp-$20                                 ; $6aa5: $f8 $e0
    nop                                           ; $6aa7: $00
    nop                                           ; $6aa8: $00
    nop                                           ; $6aa9: $00
    ld bc, $aa01                                  ; $6aaa: $01 $01 $aa
    xor d                                         ; $6aad: $aa
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    ld [bc], a                                    ; $6ab0: $02
    db $fd                                        ; $6ab1: $fd
    ld b, b                                       ; $6ab2: $40
    cp a                                          ; $6ab3: $bf
    rst $38                                       ; $6ab4: $ff
    nop                                           ; $6ab5: $00
    nop                                           ; $6ab6: $00
    nop                                           ; $6ab7: $00
    nop                                           ; $6ab8: $00
    nop                                           ; $6ab9: $00
    ld d, l                                       ; $6aba: $55
    ld d, l                                       ; $6abb: $55
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    inc b                                         ; $6ac0: $04
    ei                                            ; $6ac1: $fb
    nop                                           ; $6ac2: $00
    rst $38                                       ; $6ac3: $ff
    ldh a, [rIF]                                  ; $6ac4: $f0 $0f
    nop                                           ; $6ac6: $00
    nop                                           ; $6ac7: $00
    xor d                                         ; $6ac8: $aa
    xor d                                         ; $6ac9: $aa
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    rst $38                                       ; $6ae4: $ff
    rst $38                                       ; $6ae5: $ff
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    rst $38                                       ; $6ae8: $ff
    rst $38                                       ; $6ae9: $ff
    rst $38                                       ; $6aea: $ff
    rst $38                                       ; $6aeb: $ff
    rst $38                                       ; $6aec: $ff
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff
    rst $38                                       ; $6af9: $ff
    rst $38                                       ; $6afa: $ff
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    rst $38                                       ; $6b01: $ff
    rst $38                                       ; $6b02: $ff
    rst $38                                       ; $6b03: $ff
    rst $38                                       ; $6b04: $ff
    rst $38                                       ; $6b05: $ff
    rst $38                                       ; $6b06: $ff
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    rst $38                                       ; $6b0a: $ff
    rst $38                                       ; $6b0b: $ff
    rst $38                                       ; $6b0c: $ff
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    rst $38                                       ; $6b14: $ff
    rst $38                                       ; $6b15: $ff
    rst $38                                       ; $6b16: $ff
    rst $38                                       ; $6b17: $ff
    rst $38                                       ; $6b18: $ff
    rst $38                                       ; $6b19: $ff
    rst $38                                       ; $6b1a: $ff
    rst $38                                       ; $6b1b: $ff
    rst $38                                       ; $6b1c: $ff
    rst $38                                       ; $6b1d: $ff
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    rst $38                                       ; $6b2b: $ff
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $38                                       ; $6b36: $ff
    rst $38                                       ; $6b37: $ff
    rst $38                                       ; $6b38: $ff
    rst $38                                       ; $6b39: $ff
    rst $38                                       ; $6b3a: $ff
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    rst $38                                       ; $6b48: $ff
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    ld a, [$ffff]                                 ; $6b50: $fa $ff $ff
    rst $38                                       ; $6b53: $ff
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    cp $ff                                        ; $6b56: $fe $ff
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    cp $ff                                        ; $6b5e: $fe $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    ld a, [$f5ff]                                 ; $6b62: $fa $ff $f5
    ld a, [$ffab]                                 ; $6b65: $fa $ab $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    xor e                                         ; $6b6e: $ab
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    rst $38                                       ; $6b73: $ff
    ld l, d                                       ; $6b74: $6a
    sbc a                                         ; $6b75: $9f
    rst $38                                       ; $6b76: $ff
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    rst $38                                       ; $6b83: $ff
    rst $18                                       ; $6b84: $df
    rst $38                                       ; $6b85: $ff
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    db $fd                                        ; $6b92: $fd
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    cp $ff                                        ; $6b9e: $fe $ff
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    xor a                                         ; $6ba4: $af
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
    rst $38                                       ; $6bab: $ff
    push af                                       ; $6bac: $f5
    cp $bf                                        ; $6bad: $fe $bf
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    rst $38                                       ; $6bb9: $ff
    xor a                                         ; $6bba: $af
    rst $38                                       ; $6bbb: $ff
    ld d, a                                       ; $6bbc: $57
    cp a                                          ; $6bbd: $bf
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    ld a, [$ffff]                                 ; $6bc6: $fa $ff $ff
    rst $38                                       ; $6bc9: $ff
    cp $ff                                        ; $6bca: $fe $ff
    rst $38                                       ; $6bcc: $ff
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    db $fd                                        ; $6bd0: $fd
    cp $ff                                        ; $6bd1: $fe $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    db $fd                                        ; $6bde: $fd
    rst $38                                       ; $6bdf: $ff
    ld d, l                                       ; $6be0: $55
    xor a                                         ; $6be1: $af
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    push af                                       ; $6be8: $f5
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    ld e, a                                       ; $6bee: $5f
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    cp $ff                                        ; $6bf4: $fe $ff
    rst $38                                       ; $6bf6: $ff
    rst $38                                       ; $6bf7: $ff
    ld e, d                                       ; $6bf8: $5a
    rst $20                                       ; $6bf9: $e7
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    xor d                                         ; $6bfe: $aa
    rst $38                                       ; $6bff: $ff
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    cp a                                          ; $6c04: $bf
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    push de                                       ; $6c28: $d5
    ld a, [$fffa]                                 ; $6c29: $fa $fa $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    push af                                       ; $6c30: $f5
    rst $38                                       ; $6c31: $ff
    ld [$fffd], a                                 ; $6c32: $ea $fd $ff
    rst $38                                       ; $6c35: $ff
    cp a                                          ; $6c36: $bf
    rst $38                                       ; $6c37: $ff
    ld e, a                                       ; $6c38: $5f
    cp a                                          ; $6c39: $bf
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    xor a                                         ; $6c42: $af
    ld a, a                                       ; $6c43: $7f
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    inc b                                         ; $6c50: $04
    ei                                            ; $6c51: $fb
    nop                                           ; $6c52: $00
    rst $38                                       ; $6c53: $ff
    daa                                           ; $6c54: $27
    ret c                                         ; $6c55: $d8

    add b                                         ; $6c56: $80
    nop                                           ; $6c57: $00
    nop                                           ; $6c58: $00
    nop                                           ; $6c59: $00
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    ld [bc], a                                    ; $6c60: $02
    db $fd                                        ; $6c61: $fd
    rst $38                                       ; $6c62: $ff
    nop                                           ; $6c63: $00
    nop                                           ; $6c64: $00

jr_073_6c65:
    add b                                         ; $6c65: $80
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    ccf                                           ; $6c68: $3f
    ccf                                           ; $6c69: $3f
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    nop                                           ; $6c70: $00
    rst $38                                       ; $6c71: $ff
    add h                                         ; $6c72: $84
    ld a, e                                       ; $6c73: $7b
    rlca                                          ; $6c74: $07
    ld [$0000], sp                                ; $6c75: $08 $00 $00
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $38                                       ; $6c7e: $ff
    rst $38                                       ; $6c7f: $ff
    add hl, bc                                    ; $6c80: $09
    or $00                                        ; $6c81: $f6 $00
    rst $38                                       ; $6c83: $ff
    jr nz, jr_073_6c65                            ; $6c84: $20 $df

    nop                                           ; $6c86: $00
    rlca                                          ; $6c87: $07
    add b                                         ; $6c88: $80
    add b                                         ; $6c89: $80
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    nop                                           ; $6c90: $00
    rst $38                                       ; $6c91: $ff
    nop                                           ; $6c92: $00
    rst $38                                       ; $6c93: $ff
    nop                                           ; $6c94: $00
    rst $38                                       ; $6c95: $ff
    nop                                           ; $6c96: $00
    rst $38                                       ; $6c97: $ff
    inc bc                                        ; $6c98: $03
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    nop                                           ; $6c9b: $00
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    ld bc, $80fe                                  ; $6ca0: $01 $fe $80
    ld a, a                                       ; $6ca3: $7f
    rlca                                          ; $6ca4: $07
    ld hl, sp-$01                                 ; $6ca5: $f8 $ff
    nop                                           ; $6ca7: $00
    rst $38                                       ; $6ca8: $ff
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    add b                                         ; $6cac: $80
    add b                                         ; $6cad: $80
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    ld [bc], a                                    ; $6cb0: $02
    db $fd                                        ; $6cb1: $fd
    ld b, b                                       ; $6cb2: $40
    cp a                                          ; $6cb3: $bf
    ld [hl], a                                    ; $6cb4: $77
    adc b                                         ; $6cb5: $88
    rst $38                                       ; $6cb6: $ff
    nop                                           ; $6cb7: $00
    ldh [rP1], a                                  ; $6cb8: $e0 $00
    ld bc, $7f01                                  ; $6cba: $01 $01 $7f
    ld a, a                                       ; $6cbd: $7f
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    inc b                                         ; $6cc0: $04
    ei                                            ; $6cc1: $fb
    nop                                           ; $6cc2: $00
    rst $38                                       ; $6cc3: $ff
    ld [hl], b                                    ; $6cc4: $70
    adc a                                         ; $6cc5: $8f
    ld bc, $3c00                                  ; $6cc6: $01 $00 $3c
    inc a                                         ; $6cc9: $3c
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff

Call_073_6cec:
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    ld a, [$ffff]                                 ; $6d50: $fa $ff $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    cp $ff                                        ; $6d5e: $fe $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    db $fd                                        ; $6d62: $fd
    rst $38                                       ; $6d63: $ff
    ld a, [$55fd]                                 ; $6d64: $fa $fd $55
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    xor e                                         ; $6d6e: $ab
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    ld a, a                                       ; $6d72: $7f
    rst $38                                       ; $6d73: $ff
    or l                                          ; $6d74: $b5
    ld c, a                                       ; $6d75: $4f
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    ld l, a                                       ; $6d84: $6f
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    ei                                            ; $6d92: $fb
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    cp $ff                                        ; $6d9e: $fe $ff
    rst $38                                       ; $6da0: $ff
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    ld e, a                                       ; $6da4: $5f
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    push af                                       ; $6dac: $f5
    cp $bf                                        ; $6dad: $fe $bf
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    xor a                                         ; $6dba: $af
    rst $38                                       ; $6dbb: $ff
    ld d, a                                       ; $6dbc: $57
    cp a                                          ; $6dbd: $bf
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    ld a, [$ffff]                                 ; $6dc4: $fa $ff $ff
    rst $38                                       ; $6dc7: $ff
    cp $ff                                        ; $6dc8: $fe $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    ld a, [$fffd]                                 ; $6dd0: $fa $fd $ff
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    db $fd                                        ; $6dde: $fd
    rst $38                                       ; $6ddf: $ff
    xor e                                         ; $6de0: $ab
    ld e, a                                       ; $6de1: $5f
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    push af                                       ; $6de8: $f5
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    ld e, a                                       ; $6dee: $5f
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    db $fd                                        ; $6df4: $fd
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    ld e, d                                       ; $6df8: $5a
    rst $20                                       ; $6df9: $e7
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    xor d                                         ; $6dfe: $aa
    rst $38                                       ; $6dff: $ff
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    ld a, a                                       ; $6e04: $7f
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $38                                       ; $6e12: $ff
    rst $38                                       ; $6e13: $ff
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    rst $38                                       ; $6e16: $ff
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    push de                                       ; $6e28: $d5
    ld a, [$fffa]                                 ; $6e29: $fa $fa $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    push af                                       ; $6e30: $f5
    rst $38                                       ; $6e31: $ff
    ld [$fffd], a                                 ; $6e32: $ea $fd $ff
    rst $38                                       ; $6e35: $ff
    cp a                                          ; $6e36: $bf
    rst $38                                       ; $6e37: $ff
    ld e, a                                       ; $6e38: $5f
    cp a                                          ; $6e39: $bf
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    rst $38                                       ; $6e3f: $ff
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    xor a                                         ; $6e42: $af
    ld a, a                                       ; $6e43: $7f
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    inc b                                         ; $6e50: $04
    ei                                            ; $6e51: $fb
    nop                                           ; $6e52: $00
    rst $38                                       ; $6e53: $ff
    cpl                                           ; $6e54: $2f
    ret nc                                        ; $6e55: $d0

    ld [hl], a                                    ; $6e56: $77
    adc b                                         ; $6e57: $88
    nop                                           ; $6e58: $00
    nop                                           ; $6e59: $00
    ld a, [bc]                                    ; $6e5a: $0a
    ld a, [bc]                                    ; $6e5b: $0a
    ld d, a                                       ; $6e5c: $57
    ld d, a                                       ; $6e5d: $57
    rst $38                                       ; $6e5e: $ff
    rst $38                                       ; $6e5f: $ff
    ld [bc], a                                    ; $6e60: $02
    db $fd                                        ; $6e61: $fd
    ld d, l                                       ; $6e62: $55
    xor d                                         ; $6e63: $aa
    rst $38                                       ; $6e64: $ff

jr_073_6e65:
    nop                                           ; $6e65: $00
    nop                                           ; $6e66: $00
    nop                                           ; $6e67: $00
    nop                                           ; $6e68: $00
    nop                                           ; $6e69: $00
    xor d                                         ; $6e6a: $aa
    xor d                                         ; $6e6b: $aa
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    nop                                           ; $6e70: $00
    rst $38                                       ; $6e71: $ff
    inc b                                         ; $6e72: $04
    ei                                            ; $6e73: $fb
    rst $38                                       ; $6e74: $ff
    nop                                           ; $6e75: $00
    ld [hl], a                                    ; $6e76: $77
    adc b                                         ; $6e77: $88
    inc bc                                        ; $6e78: $03
    nop                                           ; $6e79: $00
    and b                                         ; $6e7a: $a0
    and b                                         ; $6e7b: $a0
    ld a, [$fffa]                                 ; $6e7c: $fa $fa $ff
    rst $38                                       ; $6e7f: $ff
    add hl, bc                                    ; $6e80: $09
    or $00                                        ; $6e81: $f6 $00
    rst $38                                       ; $6e83: $ff
    jr nz, jr_073_6e65                            ; $6e84: $20 $df

    ld [hl], b                                    ; $6e86: $70
    adc a                                         ; $6e87: $8f
    rst $38                                       ; $6e88: $ff
    nop                                           ; $6e89: $00
    inc bc                                        ; $6e8a: $03
    nop                                           ; $6e8b: $00
    and b                                         ; $6e8c: $a0
    and b                                         ; $6e8d: $a0
    db $fd                                        ; $6e8e: $fd
    db $fd                                        ; $6e8f: $fd
    nop                                           ; $6e90: $00
    rst $38                                       ; $6e91: $ff
    nop                                           ; $6e92: $00
    rst $38                                       ; $6e93: $ff
    nop                                           ; $6e94: $00
    rst $38                                       ; $6e95: $ff
    nop                                           ; $6e96: $00
    rst $38                                       ; $6e97: $ff
    rst $38                                       ; $6e98: $ff
    nop                                           ; $6e99: $00
    rst $38                                       ; $6e9a: $ff
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    ld d, l                                       ; $6e9e: $55
    ld d, l                                       ; $6e9f: $55
    ld bc, $80fe                                  ; $6ea0: $01 $fe $80
    ld a, a                                       ; $6ea3: $7f
    rlca                                          ; $6ea4: $07
    ld hl, sp+$77                                 ; $6ea5: $f8 $77
    adc b                                         ; $6ea7: $88
    rst $38                                       ; $6ea8: $ff
    nop                                           ; $6ea9: $00
    rst $38                                       ; $6eaa: $ff
    nop                                           ; $6eab: $00
    nop                                           ; $6eac: $00
    nop                                           ; $6ead: $00
    ld d, l                                       ; $6eae: $55
    ld d, l                                       ; $6eaf: $55
    ld [bc], a                                    ; $6eb0: $02
    db $fd                                        ; $6eb1: $fd
    ld b, b                                       ; $6eb2: $40
    cp a                                          ; $6eb3: $bf
    rst $38                                       ; $6eb4: $ff
    nop                                           ; $6eb5: $00
    ld [hl], a                                    ; $6eb6: $77
    adc b                                         ; $6eb7: $88
    ld hl, sp+$00                                 ; $6eb8: $f8 $00
    ld bc, $2a01                                  ; $6eba: $01 $01 $2a
    ld a, [hl+]                                   ; $6ebd: $2a
    ld e, a                                       ; $6ebe: $5f
    ld e, a                                       ; $6ebf: $5f
    inc b                                         ; $6ec0: $04
    ei                                            ; $6ec1: $fb
    nop                                           ; $6ec2: $00
    rst $38                                       ; $6ec3: $ff
    ldh a, [rIF]                                  ; $6ec4: $f0 $0f
    ld [hl], a                                    ; $6ec6: $77
    adc b                                         ; $6ec7: $88
    ld bc, $5000                                  ; $6ec8: $01 $00 $50
    ld d, b                                       ; $6ecb: $50
    db $eb                                        ; $6ecc: $eb
    db $eb                                        ; $6ecd: $eb
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    rst $38                                       ; $6ed4: $ff
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    rst $38                                       ; $6ed7: $ff
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    rst $38                                       ; $6ee6: $ff
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    rst $38                                       ; $6ef5: $ff
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    push af                                       ; $6f50: $f5
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    cp $ff                                        ; $6f5e: $fe $ff
    rst $38                                       ; $6f60: $ff
    rst $38                                       ; $6f61: $ff
    cp $ff                                        ; $6f62: $fe $ff
    db $fd                                        ; $6f64: $fd
    cp $aa                                        ; $6f65: $fe $aa
    rst $38                                       ; $6f67: $ff
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    rst $38                                       ; $6f6d: $ff
    xor e                                         ; $6f6e: $ab
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    rst $38                                       ; $6f71: $ff
    cp a                                          ; $6f72: $bf
    rst $38                                       ; $6f73: $ff
    ld e, d                                       ; $6f74: $5a
    and a                                         ; $6f75: $a7
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    or a                                          ; $6f84: $b7
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    ei                                            ; $6f92: $fb
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    db $fd                                        ; $6f9e: $fd
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    ld e, a                                       ; $6fa4: $5f
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    push af                                       ; $6fac: $f5
    cp $7f                                        ; $6fad: $fe $7f
    rst $38                                       ; $6faf: $ff
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    xor a                                         ; $6fba: $af
    rst $38                                       ; $6fbb: $ff
    ld d, a                                       ; $6fbc: $57
    cp a                                          ; $6fbd: $bf
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    ld a, [$ffff]                                 ; $6fc2: $fa $ff $ff
    rst $38                                       ; $6fc5: $ff
    cp $ff                                        ; $6fc6: $fe $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    push af                                       ; $6fd0: $f5
    ld a, [$ffff]                                 ; $6fd1: $fa $ff $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    db $fd                                        ; $6fde: $fd
    rst $38                                       ; $6fdf: $ff
    ld d, a                                       ; $6fe0: $57
    cp a                                          ; $6fe1: $bf
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    push af                                       ; $6fe8: $f5
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    ld e, a                                       ; $6fee: $5f
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    db $fd                                        ; $6ff4: $fd
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    ld e, d                                       ; $6ff8: $5a
    rst $20                                       ; $6ff9: $e7
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    xor d                                         ; $6ffe: $aa
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    ld a, a                                       ; $7004: $7f
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    push de                                       ; $7028: $d5
    ld a, [$fffa]                                 ; $7029: $fa $fa $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    push af                                       ; $7030: $f5
    rst $38                                       ; $7031: $ff
    ld [$fffd], a                                 ; $7032: $ea $fd $ff
    rst $38                                       ; $7035: $ff
    cp a                                          ; $7036: $bf
    rst $38                                       ; $7037: $ff
    ld e, a                                       ; $7038: $5f
    cp a                                          ; $7039: $bf
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    xor a                                         ; $7042: $af
    ld a, a                                       ; $7043: $7f
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    inc b                                         ; $7050: $04
    ei                                            ; $7051: $fb
    nop                                           ; $7052: $00
    rst $38                                       ; $7053: $ff
    dec h                                         ; $7054: $25
    jp c, Jump_000_00ff                           ; $7055: $da $ff $00

    ld [hl], b                                    ; $7058: $70
    adc b                                         ; $7059: $88
    nop                                           ; $705a: $00
    nop                                           ; $705b: $00
    rra                                           ; $705c: $1f
    rra                                           ; $705d: $1f
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    ld [bc], a                                    ; $7060: $02
    db $fd                                        ; $7061: $fd
    ei                                            ; $7062: $fb
    inc b                                         ; $7063: $04
    ld d, l                                       ; $7064: $55

jr_073_7065:
    xor d                                         ; $7065: $aa
    rst $38                                       ; $7066: $ff
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    ld a, [hl]                                    ; $706a: $7e
    ld a, [hl]                                    ; $706b: $7e
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    nop                                           ; $7070: $00
    rst $38                                       ; $7071: $ff
    add h                                         ; $7072: $84
    ld a, e                                       ; $7073: $7b
    ld d, l                                       ; $7074: $55
    xor d                                         ; $7075: $aa
    rst $38                                       ; $7076: $ff
    nop                                           ; $7077: $00
    scf                                           ; $7078: $37
    ld [$0000], sp                                ; $7079: $08 $00 $00
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    add hl, bc                                    ; $7080: $09
    or $00                                        ; $7081: $f6 $00
    rst $38                                       ; $7083: $ff
    jr nz, jr_073_7065                            ; $7084: $20 $df

    ld hl, sp+$07                                 ; $7086: $f8 $07
    ld [hl], a                                    ; $7088: $77
    adc b                                         ; $7089: $88
    rrca                                          ; $708a: $0f
    nop                                           ; $708b: $00
    add b                                         ; $708c: $80
    add b                                         ; $708d: $80
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    nop                                           ; $7090: $00
    rst $38                                       ; $7091: $ff
    nop                                           ; $7092: $00
    rst $38                                       ; $7093: $ff
    nop                                           ; $7094: $00
    rst $38                                       ; $7095: $ff
    nop                                           ; $7096: $00
    rst $38                                       ; $7097: $ff
    ld [hl], a                                    ; $7098: $77
    adc b                                         ; $7099: $88
    rst $38                                       ; $709a: $ff
    nop                                           ; $709b: $00
    ld bc, $e000                                  ; $709c: $01 $00 $e0
    ldh [rSB], a                                  ; $709f: $e0 $01
    cp $80                                        ; $70a1: $fe $80
    ld a, a                                       ; $70a3: $7f
    dec b                                         ; $70a4: $05
    ld a, [$00ff]                                 ; $70a5: $fa $ff $00
    ld [hl], a                                    ; $70a8: $77
    adc b                                         ; $70a9: $88
    rst $38                                       ; $70aa: $ff
    nop                                           ; $70ab: $00
    rst $38                                       ; $70ac: $ff
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    nop                                           ; $70af: $00
    ld [bc], a                                    ; $70b0: $02
    db $fd                                        ; $70b1: $fd
    ld b, b                                       ; $70b2: $40
    cp a                                          ; $70b3: $bf
    ld d, l                                       ; $70b4: $55
    xor d                                         ; $70b5: $aa
    rst $38                                       ; $70b6: $ff
    nop                                           ; $70b7: $00
    ld [hl], a                                    ; $70b8: $77
    adc b                                         ; $70b9: $88
    ld hl, sp+$00                                 ; $70ba: $f8 $00
    nop                                           ; $70bc: $00
    nop                                           ; $70bd: $00
    rra                                           ; $70be: $1f
    rra                                           ; $70bf: $1f
    inc b                                         ; $70c0: $04
    ei                                            ; $70c1: $fb
    nop                                           ; $70c2: $00
    rst $38                                       ; $70c3: $ff
    ld d, b                                       ; $70c4: $50
    xor a                                         ; $70c5: $af
    rst $38                                       ; $70c6: $ff
    nop                                           ; $70c7: $00
    ld [hl], a                                    ; $70c8: $77
    adc b                                         ; $70c9: $88
    nop                                           ; $70ca: $00
    nop                                           ; $70cb: $00
    cp $fe                                        ; $70cc: $fe $fe
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff

Call_073_70fc:
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff

Call_073_7100:
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    rst $38                                       ; $7126: $ff
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    rst $38                                       ; $712c: $ff
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
    rst $38                                       ; $7133: $ff
    rst $38                                       ; $7134: $ff
    rst $38                                       ; $7135: $ff
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    db $eb                                        ; $7150: $eb
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    db $fd                                        ; $715e: $fd
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    cp $ff                                        ; $7164: $fe $ff
    push de                                       ; $7166: $d5
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    rst $38                                       ; $716d: $ff
    ld d, a                                       ; $716e: $57
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    ld e, a                                       ; $7172: $5f
    rst $38                                       ; $7173: $ff
    xor l                                         ; $7174: $ad
    ld d, e                                       ; $7175: $53
    ld a, a                                       ; $7176: $7f
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    ld e, e                                       ; $7184: $5b
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    rst $38                                       ; $7190: $ff
    rst $38                                       ; $7191: $ff
    ei                                            ; $7192: $fb
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    ld a, [$ffff]                                 ; $719e: $fa $ff $ff
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    ld e, a                                       ; $71a4: $5f
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    push af                                       ; $71ac: $f5
    cp $ff                                        ; $71ad: $fe $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    xor a                                         ; $71ba: $af
    rst $38                                       ; $71bb: $ff
    ld d, a                                       ; $71bc: $57
    cp a                                          ; $71bd: $bf
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    ld a, [$ffff]                                 ; $71c2: $fa $ff $ff
    rst $38                                       ; $71c5: $ff
    cp $ff                                        ; $71c6: $fe $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    ld [$fff5], a                                 ; $71d0: $ea $f5 $ff
    rst $38                                       ; $71d3: $ff
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    ld a, [$afff]                                 ; $71de: $fa $ff $af
    ld a, a                                       ; $71e1: $7f
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    ld [$ffff], a                                 ; $71e8: $ea $ff $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    cp a                                          ; $71ee: $bf
    rst $38                                       ; $71ef: $ff
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    cp $ff                                        ; $71f4: $fe $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    or l                                          ; $71f8: $b5
    rst $08                                       ; $71f9: $cf
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    ld d, l                                       ; $71fe: $55
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    cp a                                          ; $7204: $bf
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    xor d                                         ; $7228: $aa
    push af                                       ; $7229: $f5
    push af                                       ; $722a: $f5
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    ld a, [$f5ff]                                 ; $7230: $fa $ff $f5
    cp $ff                                        ; $7233: $fe $ff
    rst $38                                       ; $7235: $ff
    ld a, a                                       ; $7236: $7f
    rst $38                                       ; $7237: $ff
    cp a                                          ; $7238: $bf
    ld a, a                                       ; $7239: $7f
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    ld d, a                                       ; $7242: $57
    cp a                                          ; $7243: $bf
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    inc b                                         ; $7250: $04
    ei                                            ; $7251: $fb
    nop                                           ; $7252: $00
    rst $38                                       ; $7253: $ff
    dec hl                                        ; $7254: $2b
    call nc, $aa55                                ; $7255: $d4 $55 $aa
    rst $38                                       ; $7258: $ff
    nop                                           ; $7259: $00
    ld [hl], a                                    ; $725a: $77
    adc b                                         ; $725b: $88
    ret nz                                        ; $725c: $c0

    nop                                           ; $725d: $00
    dec b                                         ; $725e: $05
    dec b                                         ; $725f: $05
    ld [bc], a                                    ; $7260: $02
    db $fd                                        ; $7261: $fd
    ld d, l                                       ; $7262: $55
    xor d                                         ; $7263: $aa
    cp e                                          ; $7264: $bb

jr_073_7265:
    ld b, h                                       ; $7265: $44
    ld d, l                                       ; $7266: $55
    xor d                                         ; $7267: $aa
    rst $38                                       ; $7268: $ff
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    add b                                         ; $726b: $80
    nop                                           ; $726c: $00
    nop                                           ; $726d: $00
    ld d, l                                       ; $726e: $55
    ld d, l                                       ; $726f: $55
    nop                                           ; $7270: $00
    rst $38                                       ; $7271: $ff
    inc b                                         ; $7272: $04
    ei                                            ; $7273: $fb
    cp e                                          ; $7274: $bb
    ld b, h                                       ; $7275: $44
    ld d, l                                       ; $7276: $55
    xor d                                         ; $7277: $aa
    rst $38                                       ; $7278: $ff
    nop                                           ; $7279: $00
    ld [hl], a                                    ; $727a: $77
    adc b                                         ; $727b: $88
    inc bc                                        ; $727c: $03
    nop                                           ; $727d: $00
    ld b, b                                       ; $727e: $40
    ld b, b                                       ; $727f: $40
    add hl, bc                                    ; $7280: $09
    or $00                                        ; $7281: $f6 $00
    rst $38                                       ; $7283: $ff
    jr nz, jr_073_7265                            ; $7284: $20 $df

    ld d, b                                       ; $7286: $50
    xor a                                         ; $7287: $af
    rst $38                                       ; $7288: $ff
    nop                                           ; $7289: $00
    ld [hl], a                                    ; $728a: $77
    adc b                                         ; $728b: $88
    rst $38                                       ; $728c: $ff
    nop                                           ; $728d: $00
    rlca                                          ; $728e: $07
    nop                                           ; $728f: $00
    nop                                           ; $7290: $00
    rst $38                                       ; $7291: $ff
    nop                                           ; $7292: $00
    rst $38                                       ; $7293: $ff
    nop                                           ; $7294: $00
    rst $38                                       ; $7295: $ff
    nop                                           ; $7296: $00
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    nop                                           ; $7299: $00
    ld [hl], a                                    ; $729a: $77
    adc b                                         ; $729b: $88
    rst $38                                       ; $729c: $ff
    nop                                           ; $729d: $00
    rst $38                                       ; $729e: $ff
    nop                                           ; $729f: $00
    ld bc, $80fe                                  ; $72a0: $01 $fe $80
    ld a, a                                       ; $72a3: $7f
    inc bc                                        ; $72a4: $03
    db $fc                                        ; $72a5: $fc
    ld d, l                                       ; $72a6: $55
    xor d                                         ; $72a7: $aa
    rst $38                                       ; $72a8: $ff
    nop                                           ; $72a9: $00
    ld [hl], a                                    ; $72aa: $77
    adc b                                         ; $72ab: $88
    rst $38                                       ; $72ac: $ff
    nop                                           ; $72ad: $00
    ldh [rP1], a                                  ; $72ae: $e0 $00
    ld [bc], a                                    ; $72b0: $02
    db $fd                                        ; $72b1: $fd
    ld b, b                                       ; $72b2: $40
    cp a                                          ; $72b3: $bf
    cp e                                          ; $72b4: $bb
    ld b, h                                       ; $72b5: $44
    ld d, l                                       ; $72b6: $55
    xor d                                         ; $72b7: $aa
    rst $38                                       ; $72b8: $ff
    nop                                           ; $72b9: $00
    ld [hl], a                                    ; $72ba: $77
    adc b                                         ; $72bb: $88
    nop                                           ; $72bc: $00
    nop                                           ; $72bd: $00
    dec b                                         ; $72be: $05
    dec b                                         ; $72bf: $05
    inc b                                         ; $72c0: $04
    ei                                            ; $72c1: $fb
    nop                                           ; $72c2: $00
    rst $38                                       ; $72c3: $ff
    or b                                          ; $72c4: $b0
    ld c, a                                       ; $72c5: $4f
    ld d, l                                       ; $72c6: $55
    xor d                                         ; $72c7: $aa
    rst $38                                       ; $72c8: $ff
    nop                                           ; $72c9: $00
    ld [hl], a                                    ; $72ca: $77
    adc b                                         ; $72cb: $88
    rlca                                          ; $72cc: $07
    nop                                           ; $72cd: $00
    ld d, b                                       ; $72ce: $50
    ld d, b                                       ; $72cf: $50
    xor a                                         ; $72d0: $af
    xor a                                         ; $72d1: $af
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
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
    ld [$ffea], a                                 ; $72f0: $ea $ea $ff
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    and b                                         ; $7300: $a0
    and b                                         ; $7301: $a0
    push af                                       ; $7302: $f5
    push af                                       ; $7303: $f5
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    rst $38                                       ; $730e: $ff
    rst $38                                       ; $730f: $ff
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    ld d, l                                       ; $7312: $55
    ld d, l                                       ; $7313: $55
    rst $38                                       ; $7314: $ff
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    rst $38                                       ; $731a: $ff
    rst $38                                       ; $731b: $ff
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    ld [bc], a                                    ; $7320: $02
    ld [bc], a                                    ; $7321: $02
    ld d, l                                       ; $7322: $55
    ld d, l                                       ; $7323: $55
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    xor a                                         ; $7330: $af
    xor a                                         ; $7331: $af
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    rst $38                                       ; $733b: $ff
    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    ld a, [$fffa]                                 ; $7340: $fa $fa $ff
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $10                                       ; $7350: $d7
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    ld a, [$ffff]                                 ; $735e: $fa $ff $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    ld [$ffff], a                                 ; $7366: $ea $ff $ff
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    xor a                                         ; $736e: $af
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    xor a                                         ; $7372: $af
    rst $38                                       ; $7373: $ff
    ld d, [hl]                                    ; $7374: $56
    xor c                                         ; $7375: $a9
    cp a                                          ; $7376: $bf
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    xor l                                         ; $7384: $ad
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    db $fd                                        ; $7392: $fd
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    push af                                       ; $739e: $f5
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    xor a                                         ; $73a4: $af
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    ld a, [$ffff]                                 ; $73ac: $fa $ff $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $10                                       ; $73ba: $d7
    rst $38                                       ; $73bb: $ff
    xor e                                         ; $73bc: $ab
    ld e, a                                       ; $73bd: $5f
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    ld a, [$ffff]                                 ; $73c2: $fa $ff $ff
    rst $38                                       ; $73c5: $ff
    cp $ff                                        ; $73c6: $fe $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    push de                                       ; $73d0: $d5
    ld [$ffff], a                                 ; $73d1: $ea $ff $ff
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
    push af                                       ; $73de: $f5
    rst $38                                       ; $73df: $ff
    ld e, a                                       ; $73e0: $5f
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    push de                                       ; $73e8: $d5
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    ld a, [hl]                                    ; $73ee: $7e
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    ld l, e                                       ; $73f8: $6b
    sbc a                                         ; $73f9: $9f
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    xor e                                         ; $73fe: $ab
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    ld e, a                                       ; $7404: $5f
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    rst $38                                       ; $7413: $ff
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    cp $ff                                        ; $7426: $fe $ff
    ld d, l                                       ; $7428: $55
    ld [$ffeb], a                                 ; $7429: $ea $eb $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    db $fd                                        ; $7430: $fd
    rst $38                                       ; $7431: $ff
    ld a, [$ffff]                                 ; $7432: $fa $ff $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    ld a, a                                       ; $7438: $7f
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    ld a, a                                       ; $7440: $7f
    rst $38                                       ; $7441: $ff
    xor e                                         ; $7442: $ab
    ld e, a                                       ; $7443: $5f
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    inc b                                         ; $7450: $04
    ei                                            ; $7451: $fb
    nop                                           ; $7452: $00
    rst $38                                       ; $7453: $ff
    dec h                                         ; $7454: $25
    jp c, $44bb                                   ; $7455: $da $bb $44

    ld d, l                                       ; $7458: $55
    xor d                                         ; $7459: $aa
    rst $38                                       ; $745a: $ff
    nop                                           ; $745b: $00
    halt                                          ; $745c: $76
    adc b                                         ; $745d: $88
    nop                                           ; $745e: $00
    nop                                           ; $745f: $00
    ld [bc], a                                    ; $7460: $02
    db $fd                                        ; $7461: $fd
    ld [$5515], a                                 ; $7462: $ea $15 $55

jr_073_7465:
    xor d                                         ; $7465: $aa
    cp e                                          ; $7466: $bb
    ld b, h                                       ; $7467: $44
    ld d, l                                       ; $7468: $55
    xor d                                         ; $7469: $aa
    rst $38                                       ; $746a: $ff
    nop                                           ; $746b: $00
    nop                                           ; $746c: $00
    nop                                           ; $746d: $00
    nop                                           ; $746e: $00
    nop                                           ; $746f: $00
    nop                                           ; $7470: $00
    rst $38                                       ; $7471: $ff
    add h                                         ; $7472: $84
    ld a, e                                       ; $7473: $7b
    ld d, l                                       ; $7474: $55
    xor d                                         ; $7475: $aa
    cp e                                          ; $7476: $bb
    ld b, h                                       ; $7477: $44
    ld d, l                                       ; $7478: $55
    xor d                                         ; $7479: $aa
    rst $38                                       ; $747a: $ff
    nop                                           ; $747b: $00
    ld [hl], a                                    ; $747c: $77
    ld [$0001], sp                                ; $747d: $08 $01 $00
    add hl, bc                                    ; $7480: $09
    or $00                                        ; $7481: $f6 $00
    rst $38                                       ; $7483: $ff
    jr nz, jr_073_7465                            ; $7484: $20 $df

    cp b                                          ; $7486: $b8
    ld b, a                                       ; $7487: $47
    ld d, l                                       ; $7488: $55
    xor d                                         ; $7489: $aa
    rst $38                                       ; $748a: $ff
    nop                                           ; $748b: $00
    ld [hl], a                                    ; $748c: $77
    adc b                                         ; $748d: $88
    rst $38                                       ; $748e: $ff
    nop                                           ; $748f: $00
    nop                                           ; $7490: $00
    rst $38                                       ; $7491: $ff
    nop                                           ; $7492: $00
    rst $38                                       ; $7493: $ff
    nop                                           ; $7494: $00
    rst $38                                       ; $7495: $ff
    nop                                           ; $7496: $00
    rst $38                                       ; $7497: $ff
    ld [hl], l                                    ; $7498: $75
    adc d                                         ; $7499: $8a
    rst $38                                       ; $749a: $ff
    nop                                           ; $749b: $00
    ld [hl], a                                    ; $749c: $77
    adc b                                         ; $749d: $88
    rst $38                                       ; $749e: $ff
    nop                                           ; $749f: $00
    ld bc, $80fe                                  ; $74a0: $01 $fe $80
    ld a, a                                       ; $74a3: $7f
    dec b                                         ; $74a4: $05
    ld a, [$44bb]                                 ; $74a5: $fa $bb $44
    ld d, l                                       ; $74a8: $55
    xor d                                         ; $74a9: $aa
    rst $38                                       ; $74aa: $ff
    nop                                           ; $74ab: $00
    ld [hl], a                                    ; $74ac: $77
    adc b                                         ; $74ad: $88
    rst $38                                       ; $74ae: $ff
    nop                                           ; $74af: $00
    ld [bc], a                                    ; $74b0: $02
    db $fd                                        ; $74b1: $fd
    ld b, b                                       ; $74b2: $40
    cp a                                          ; $74b3: $bf
    ld d, l                                       ; $74b4: $55
    xor d                                         ; $74b5: $aa
    cp e                                          ; $74b6: $bb
    ld b, h                                       ; $74b7: $44
    ld d, l                                       ; $74b8: $55
    xor d                                         ; $74b9: $aa
    rst $38                                       ; $74ba: $ff
    nop                                           ; $74bb: $00
    ld [hl], a                                    ; $74bc: $77
    adc b                                         ; $74bd: $88
    nop                                           ; $74be: $00
    nop                                           ; $74bf: $00
    inc b                                         ; $74c0: $04
    ei                                            ; $74c1: $fb
    nop                                           ; $74c2: $00
    rst $38                                       ; $74c3: $ff
    ld d, b                                       ; $74c4: $50
    xor a                                         ; $74c5: $af
    cp e                                          ; $74c6: $bb
    ld b, h                                       ; $74c7: $44
    ld d, l                                       ; $74c8: $55
    xor d                                         ; $74c9: $aa
    rst $38                                       ; $74ca: $ff
    nop                                           ; $74cb: $00
    ld [hl], a                                    ; $74cc: $77
    adc b                                         ; $74cd: $88
    inc bc                                        ; $74ce: $03
    nop                                           ; $74cf: $00
    rra                                           ; $74d0: $1f
    rra                                           ; $74d1: $1f
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
    rst $38                                       ; $74de: $ff
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
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    ret nz                                        ; $74f0: $c0

    ret nz                                        ; $74f1: $c0

    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    nop                                           ; $7500: $00
    nop                                           ; $7501: $00
    db $fc                                        ; $7502: $fc
    db $fc                                        ; $7503: $fc
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    add b                                         ; $7520: $80
    nop                                           ; $7521: $00
    rra                                           ; $7522: $1f
    rra                                           ; $7523: $1f
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    inc bc                                        ; $7530: $03
    inc bc                                        ; $7531: $03
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    ldh a, [$f0]                                  ; $7540: $f0 $f0
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    xor a                                         ; $7550: $af
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    push af                                       ; $755e: $f5
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    push af                                       ; $7566: $f5
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    ld e, a                                       ; $756e: $5f
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $10                                       ; $7572: $d7
    rst $38                                       ; $7573: $ff
    xor e                                         ; $7574: $ab
    call nc, $ff5f                                ; $7575: $d4 $5f $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    ld d, [hl]                                    ; $7584: $56
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    cp $ff                                        ; $7592: $fe $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    db $eb                                        ; $759e: $eb
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $10                                       ; $75a4: $d7
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    db $fd                                        ; $75ac: $fd
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    db $eb                                        ; $75ba: $eb
    rst $38                                       ; $75bb: $ff
    ld d, l                                       ; $75bc: $55
    xor a                                         ; $75bd: $af
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    ld a, [$ffff]                                 ; $75c2: $fa $ff $ff
    rst $38                                       ; $75c5: $ff
    cp $ff                                        ; $75c6: $fe $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    xor d                                         ; $75d0: $aa
    push de                                       ; $75d1: $d5
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
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    ld [$bfff], a                                 ; $75de: $ea $ff $bf
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    xor d                                         ; $75e8: $aa
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    db $fd                                        ; $75ee: $fd
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $10                                       ; $75f8: $d7
    ccf                                           ; $75f9: $3f
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    ld d, a                                       ; $75fe: $57
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    xor a                                         ; $7604: $af
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    cp $ff                                        ; $7618: $fe $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    db $fd                                        ; $7626: $fd
    rst $38                                       ; $7627: $ff
    xor d                                         ; $7628: $aa
    push de                                       ; $7629: $d5
    rst $10                                       ; $762a: $d7
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    cp $ff                                        ; $7630: $fe $ff
    db $fd                                        ; $7632: $fd
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    cp a                                          ; $7640: $bf
    rst $38                                       ; $7641: $ff
    ld d, l                                       ; $7642: $55
    xor a                                         ; $7643: $af
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    inc b                                         ; $7650: $04
    ei                                            ; $7651: $fb
    nop                                           ; $7652: $00
    rst $38                                       ; $7653: $ff
    ld a, [hl+]                                   ; $7654: $2a
    push de                                       ; $7655: $d5
    ld d, l                                       ; $7656: $55
    xor d                                         ; $7657: $aa
    cp e                                          ; $7658: $bb
    ld b, h                                       ; $7659: $44
    ld d, l                                       ; $765a: $55
    xor d                                         ; $765b: $aa
    rst $38                                       ; $765c: $ff
    nop                                           ; $765d: $00
    ld [hl], a                                    ; $765e: $77
    adc b                                         ; $765f: $88
    ld [bc], a                                    ; $7660: $02
    db $fd                                        ; $7661: $fd
    ld d, l                                       ; $7662: $55
    xor d                                         ; $7663: $aa
    xor d                                         ; $7664: $aa

jr_073_7665:
    ld d, l                                       ; $7665: $55
    ld d, l                                       ; $7666: $55
    xor d                                         ; $7667: $aa
    cp e                                          ; $7668: $bb
    ld b, h                                       ; $7669: $44
    ld d, l                                       ; $766a: $55
    xor d                                         ; $766b: $aa
    rst $38                                       ; $766c: $ff
    nop                                           ; $766d: $00
    nop                                           ; $766e: $00
    nop                                           ; $766f: $00
    nop                                           ; $7670: $00
    rst $38                                       ; $7671: $ff
    inc b                                         ; $7672: $04
    ei                                            ; $7673: $fb
    xor d                                         ; $7674: $aa
    ld d, l                                       ; $7675: $55
    ld d, l                                       ; $7676: $55
    xor d                                         ; $7677: $aa
    cp e                                          ; $7678: $bb
    ld b, h                                       ; $7679: $44
    ld d, l                                       ; $767a: $55
    xor d                                         ; $767b: $aa
    rst $38                                       ; $767c: $ff
    nop                                           ; $767d: $00
    ld [hl], a                                    ; $767e: $77
    ld [$f609], sp                                ; $767f: $08 $09 $f6
    nop                                           ; $7682: $00
    rst $38                                       ; $7683: $ff
    jr nz, jr_073_7665                            ; $7684: $20 $df

    ld d, b                                       ; $7686: $50
    xor a                                         ; $7687: $af
    cp e                                          ; $7688: $bb
    ld b, h                                       ; $7689: $44
    ld d, l                                       ; $768a: $55
    xor d                                         ; $768b: $aa
    rst $38                                       ; $768c: $ff
    nop                                           ; $768d: $00
    ld [hl], a                                    ; $768e: $77
    adc b                                         ; $768f: $88
    nop                                           ; $7690: $00
    rst $38                                       ; $7691: $ff
    nop                                           ; $7692: $00
    rst $38                                       ; $7693: $ff
    nop                                           ; $7694: $00
    rst $38                                       ; $7695: $ff
    nop                                           ; $7696: $00
    rst $38                                       ; $7697: $ff
    cp e                                          ; $7698: $bb
    ld b, h                                       ; $7699: $44
    ld d, l                                       ; $769a: $55
    xor d                                         ; $769b: $aa
    rst $38                                       ; $769c: $ff
    nop                                           ; $769d: $00
    ld [hl], a                                    ; $769e: $77
    adc b                                         ; $769f: $88
    ld bc, $80fe                                  ; $76a0: $01 $fe $80
    ld a, a                                       ; $76a3: $7f
    ld [bc], a                                    ; $76a4: $02
    db $fd                                        ; $76a5: $fd
    ld d, l                                       ; $76a6: $55
    xor d                                         ; $76a7: $aa
    cp e                                          ; $76a8: $bb
    ld b, h                                       ; $76a9: $44
    ld d, l                                       ; $76aa: $55
    xor d                                         ; $76ab: $aa
    rst $38                                       ; $76ac: $ff
    nop                                           ; $76ad: $00
    ld [hl], a                                    ; $76ae: $77
    adc b                                         ; $76af: $88
    ld [bc], a                                    ; $76b0: $02
    db $fd                                        ; $76b1: $fd
    ld b, b                                       ; $76b2: $40
    cp a                                          ; $76b3: $bf
    xor d                                         ; $76b4: $aa
    ld d, l                                       ; $76b5: $55
    ld d, l                                       ; $76b6: $55
    xor d                                         ; $76b7: $aa
    cp e                                          ; $76b8: $bb
    ld b, h                                       ; $76b9: $44
    ld d, l                                       ; $76ba: $55
    xor d                                         ; $76bb: $aa
    rst $38                                       ; $76bc: $ff
    nop                                           ; $76bd: $00
    ld [hl], h                                    ; $76be: $74
    adc b                                         ; $76bf: $88
    inc b                                         ; $76c0: $04
    ei                                            ; $76c1: $fb
    nop                                           ; $76c2: $00
    rst $38                                       ; $76c3: $ff
    or b                                          ; $76c4: $b0
    ld c, a                                       ; $76c5: $4f
    ld d, l                                       ; $76c6: $55
    xor d                                         ; $76c7: $aa
    cp e                                          ; $76c8: $bb
    ld b, h                                       ; $76c9: $44
    ld d, l                                       ; $76ca: $55
    xor d                                         ; $76cb: $aa
    rst $38                                       ; $76cc: $ff
    nop                                           ; $76cd: $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    ld d, l                                       ; $76d2: $55
    ld d, l                                       ; $76d3: $55
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    nop                                           ; $76e0: $00
    nop                                           ; $76e1: $00
    ld d, l                                       ; $76e2: $55
    ld d, l                                       ; $76e3: $55
    cp $fe                                        ; $76e4: $fe $fe
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    inc bc                                        ; $76f0: $03
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    nop                                           ; $76f3: $00
    xor d                                         ; $76f4: $aa
    xor d                                         ; $76f5: $aa
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    xor d                                         ; $7704: $aa
    xor d                                         ; $7705: $aa
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    db $fc                                        ; $7710: $fc

Call_073_7711:
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    xor d                                         ; $7714: $aa
    xor d                                         ; $7715: $aa
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    ld d, l                                       ; $7722: $55
    ld d, l                                       ; $7723: $55
    cp a                                          ; $7724: $bf
    cp a                                          ; $7725: $bf
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    ld d, l                                       ; $7732: $55

Call_073_7733:
    ld d, l                                       ; $7733: $55
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    ld d, l                                       ; $7742: $55
    ld d, l                                       ; $7743: $55
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    ld e, a                                       ; $7750: $5f
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    ld [$ffff], a                                 ; $775e: $ea $ff $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    push af                                       ; $7766: $f5
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    cp a                                          ; $776e: $bf
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $10                                       ; $7772: $d7
    rst $38                                       ; $7773: $ff
    xor e                                         ; $7774: $ab
    call nc, $ff5f                                ; $7775: $d4 $5f $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    ld d, [hl]                                    ; $7784: $56
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $10                                       ; $779e: $d7
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    ld a, a                                       ; $77a2: $7f
    rst $38                                       ; $77a3: $ff
    db $eb                                        ; $77a4: $eb
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    cp $ff                                        ; $77ac: $fe $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    push af                                       ; $77ba: $f5
    rst $38                                       ; $77bb: $ff
    xor d                                         ; $77bc: $aa
    rst $10                                       ; $77bd: $d7
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    ld a, [$ffff]                                 ; $77c2: $fa $ff $ff
    rst $38                                       ; $77c5: $ff
    cp $ff                                        ; $77c6: $fe $ff
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    rst $38                                       ; $77cd: $ff
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    ld d, l                                       ; $77d0: $55
    xor e                                         ; $77d1: $ab
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    push de                                       ; $77de: $d5
    rst $38                                       ; $77df: $ff
    ld a, a                                       ; $77e0: $7f
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    ld d, l                                       ; $77e8: $55
    cp $ff                                        ; $77e9: $fe $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    ld a, [$ffff]                                 ; $77ee: $fa $ff $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    xor a                                         ; $77f8: $af
    ld a, a                                       ; $77f9: $7f
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    xor a                                         ; $77fe: $af
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $10                                       ; $7804: $d7
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    db $fd                                        ; $7818: $fd
    rst $38                                       ; $7819: $ff
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    ei                                            ; $7826: $fb
    rst $38                                       ; $7827: $ff
    ld d, l                                       ; $7828: $55
    xor e                                         ; $7829: $ab
    xor a                                         ; $782a: $af
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    cp $ff                                        ; $7832: $fe $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    ld e, a                                       ; $7840: $5f
    rst $38                                       ; $7841: $ff
    xor d                                         ; $7842: $aa
    rst $10                                       ; $7843: $d7
    rst $38                                       ; $7844: $ff
    rst $38                                       ; $7845: $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    inc b                                         ; $7850: $04
    ei                                            ; $7851: $fb
    nop                                           ; $7852: $00
    rst $38                                       ; $7853: $ff
    dec h                                         ; $7854: $25
    jp c, Jump_073_55aa                           ; $7855: $da $aa $55

    ld d, l                                       ; $7858: $55
    xor d                                         ; $7859: $aa
    cp e                                          ; $785a: $bb
    ld b, h                                       ; $785b: $44
    ld d, l                                       ; $785c: $55
    xor d                                         ; $785d: $aa
    cp $00                                        ; $785e: $fe $00
    ld [bc], a                                    ; $7860: $02
    db $fd                                        ; $7861: $fd
    ld [$5515], a                                 ; $7862: $ea $15 $55

jr_073_7865:
    xor d                                         ; $7865: $aa
    xor d                                         ; $7866: $aa
    ld d, l                                       ; $7867: $55
    ld d, l                                       ; $7868: $55
    xor d                                         ; $7869: $aa
    cp e                                          ; $786a: $bb
    ld b, h                                       ; $786b: $44
    ld d, l                                       ; $786c: $55
    xor d                                         ; $786d: $aa
    nop                                           ; $786e: $00
    nop                                           ; $786f: $00
    nop                                           ; $7870: $00
    rst $38                                       ; $7871: $ff
    add h                                         ; $7872: $84
    ld a, e                                       ; $7873: $7b
    ld d, l                                       ; $7874: $55
    xor d                                         ; $7875: $aa
    xor d                                         ; $7876: $aa
    ld d, l                                       ; $7877: $55
    ld d, l                                       ; $7878: $55
    xor d                                         ; $7879: $aa
    cp e                                          ; $787a: $bb
    ld b, h                                       ; $787b: $44
    ld d, l                                       ; $787c: $55
    xor d                                         ; $787d: $aa
    rlca                                          ; $787e: $07
    nop                                           ; $787f: $00
    add hl, bc                                    ; $7880: $09
    or $00                                        ; $7881: $f6 $00
    rst $38                                       ; $7883: $ff
    jr nz, jr_073_7865                            ; $7884: $20 $df

    xor b                                         ; $7886: $a8
    ld d, a                                       ; $7887: $57
    ld d, l                                       ; $7888: $55
    xor d                                         ; $7889: $aa
    cp e                                          ; $788a: $bb
    ld b, h                                       ; $788b: $44
    ld d, l                                       ; $788c: $55
    xor d                                         ; $788d: $aa
    rst $38                                       ; $788e: $ff
    nop                                           ; $788f: $00
    nop                                           ; $7890: $00
    rst $38                                       ; $7891: $ff
    nop                                           ; $7892: $00
    rst $38                                       ; $7893: $ff
    nop                                           ; $7894: $00
    rst $38                                       ; $7895: $ff
    nop                                           ; $7896: $00
    rst $38                                       ; $7897: $ff
    ld [hl], l                                    ; $7898: $75
    adc d                                         ; $7899: $8a
    cp e                                          ; $789a: $bb
    ld b, h                                       ; $789b: $44
    ld d, l                                       ; $789c: $55
    xor d                                         ; $789d: $aa
    rst $38                                       ; $789e: $ff
    nop                                           ; $789f: $00
    ld bc, $80fe                                  ; $78a0: $01 $fe $80
    ld a, a                                       ; $78a3: $7f
    dec b                                         ; $78a4: $05
    ld a, [$55aa]                                 ; $78a5: $fa $aa $55
    ld d, l                                       ; $78a8: $55
    xor d                                         ; $78a9: $aa
    cp e                                          ; $78aa: $bb
    ld b, h                                       ; $78ab: $44
    ld d, l                                       ; $78ac: $55
    xor d                                         ; $78ad: $aa
    rst $38                                       ; $78ae: $ff
    nop                                           ; $78af: $00
    ld [bc], a                                    ; $78b0: $02
    db $fd                                        ; $78b1: $fd
    ld b, b                                       ; $78b2: $40
    cp a                                          ; $78b3: $bf
    ld d, l                                       ; $78b4: $55
    xor d                                         ; $78b5: $aa
    xor d                                         ; $78b6: $aa
    ld d, l                                       ; $78b7: $55
    ld d, l                                       ; $78b8: $55
    xor d                                         ; $78b9: $aa
    cp e                                          ; $78ba: $bb
    ld b, h                                       ; $78bb: $44
    ld d, l                                       ; $78bc: $55
    xor d                                         ; $78bd: $aa
    ld hl, sp+$00                                 ; $78be: $f8 $00
    inc b                                         ; $78c0: $04
    ei                                            ; $78c1: $fb
    nop                                           ; $78c2: $00
    rst $38                                       ; $78c3: $ff
    ld d, b                                       ; $78c4: $50
    xor a                                         ; $78c5: $af
    xor d                                         ; $78c6: $aa
    ld d, l                                       ; $78c7: $55
    ld d, l                                       ; $78c8: $55
    xor d                                         ; $78c9: $aa
    cp e                                          ; $78ca: $bb
    ld b, h                                       ; $78cb: $44
    ld d, l                                       ; $78cc: $55
    xor d                                         ; $78cd: $aa
    nop                                           ; $78ce: $00
    nop                                           ; $78cf: $00
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    ld a, b                                       ; $78e0: $78
    ld a, b                                       ; $78e1: $78
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    nop                                           ; $78f0: $00
    nop                                           ; $78f1: $00
    db $fc                                        ; $78f2: $fc
    db $fc                                        ; $78f3: $fc
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff
    rla                                           ; $7900: $17
    ld [$0000], sp                                ; $7901: $08 $00 $00
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    rst $38                                       ; $790e: $ff
    rst $38                                       ; $790f: $ff
    ld [hl], a                                    ; $7910: $77
    adc b                                         ; $7911: $88
    nop                                           ; $7912: $00
    nop                                           ; $7913: $00
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    rst $38                                       ; $791a: $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    rra                                           ; $7922: $1f
    rra                                           ; $7923: $1f
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    rst $38                                       ; $7929: $ff
    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    ld e, a                                       ; $7950: $5f
    rst $38                                       ; $7951: $ff
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rst $38                                       ; $7955: $ff
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
    rst $38                                       ; $795a: $ff
    rst $38                                       ; $795b: $ff
    rst $38                                       ; $795c: $ff
    rst $38                                       ; $795d: $ff
    push de                                       ; $795e: $d5
    rst $38                                       ; $795f: $ff
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    rst $38                                       ; $7962: $ff
    rst $38                                       ; $7963: $ff
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    push af                                       ; $7966: $f5
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    ld a, a                                       ; $796e: $7f
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    rst $10                                       ; $7972: $d7
    rst $38                                       ; $7973: $ff
    xor e                                         ; $7974: $ab
    call nc, $ff5f                                ; $7975: $d4 $5f $ff
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    rst $38                                       ; $7982: $ff
    rst $38                                       ; $7983: $ff
    ld d, [hl]                                    ; $7984: $56
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff
    rst $38                                       ; $7991: $ff
    rst $38                                       ; $7992: $ff
    rst $38                                       ; $7993: $ff
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    rst $38                                       ; $799b: $ff
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    xor a                                         ; $799e: $af
    rst $38                                       ; $799f: $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    cp a                                          ; $79a2: $bf
    rst $38                                       ; $79a3: $ff
    push af                                       ; $79a4: $f5
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    rst $38                                       ; $79b6: $ff
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    ld a, [$55ff]                                 ; $79ba: $fa $ff $55
    db $eb                                        ; $79bd: $eb
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    ld a, [$ffff]                                 ; $79c2: $fa $ff $ff
    rst $38                                       ; $79c5: $ff
    cp $ff                                        ; $79c6: $fe $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    ld a, a                                       ; $79cc: $7f
    rst $38                                       ; $79cd: $ff
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    ld d, l                                       ; $79d0: $55
    xor e                                         ; $79d1: $ab
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    cp $ff                                        ; $79d8: $fe $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    xor e                                         ; $79de: $ab
    rst $38                                       ; $79df: $ff
    ld a, a                                       ; $79e0: $7f
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    xor e                                         ; $79e8: $ab
    db $fc                                        ; $79e9: $fc
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    push af                                       ; $79ee: $f5
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    ld e, a                                       ; $79f8: $5f
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    ld e, a                                       ; $79fe: $5f
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    db $eb                                        ; $7a04: $eb
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    rst $38                                       ; $7a17: $ff
    ld a, [$ffff]                                 ; $7a18: $fa $ff $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    rst $30                                       ; $7a26: $f7
    rst $38                                       ; $7a27: $ff
    xor e                                         ; $7a28: $ab
    ld d, a                                       ; $7a29: $57
    ld e, a                                       ; $7a2a: $5f
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    rst $38                                       ; $7a31: $ff
    cp $ff                                        ; $7a32: $fe $ff
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    ld e, a                                       ; $7a40: $5f
    rst $38                                       ; $7a41: $ff
    xor d                                         ; $7a42: $aa
    rst $10                                       ; $7a43: $d7
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    inc b                                         ; $7a50: $04
    ei                                            ; $7a51: $fb
    nop                                           ; $7a52: $00
    rst $38                                       ; $7a53: $ff
    ld a, [hl+]                                   ; $7a54: $2a
    push de                                       ; $7a55: $d5
    ld d, l                                       ; $7a56: $55
    xor d                                         ; $7a57: $aa
    xor d                                         ; $7a58: $aa
    ld d, l                                       ; $7a59: $55
    ld d, l                                       ; $7a5a: $55
    xor d                                         ; $7a5b: $aa
    cp e                                          ; $7a5c: $bb
    ld b, h                                       ; $7a5d: $44
    nop                                           ; $7a5e: $00
    nop                                           ; $7a5f: $00
    ld [bc], a                                    ; $7a60: $02
    db $fd                                        ; $7a61: $fd
    ld b, b                                       ; $7a62: $40
    cp a                                          ; $7a63: $bf
    xor d                                         ; $7a64: $aa

jr_073_7a65:
    ld d, l                                       ; $7a65: $55
    ld d, l                                       ; $7a66: $55
    xor d                                         ; $7a67: $aa
    xor d                                         ; $7a68: $aa
    ld d, l                                       ; $7a69: $55
    ld d, l                                       ; $7a6a: $55
    xor d                                         ; $7a6b: $aa
    add b                                         ; $7a6c: $80
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    nop                                           ; $7a6f: $00
    nop                                           ; $7a70: $00
    rst $38                                       ; $7a71: $ff
    inc b                                         ; $7a72: $04
    ei                                            ; $7a73: $fb
    xor d                                         ; $7a74: $aa
    ld d, l                                       ; $7a75: $55
    ld d, l                                       ; $7a76: $55
    xor d                                         ; $7a77: $aa
    xor d                                         ; $7a78: $aa
    ld d, l                                       ; $7a79: $55
    ld d, l                                       ; $7a7a: $55
    xor d                                         ; $7a7b: $aa
    dec sp                                        ; $7a7c: $3b
    ld b, h                                       ; $7a7d: $44
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    add hl, bc                                    ; $7a80: $09
    or $00                                        ; $7a81: $f6 $00
    rst $38                                       ; $7a83: $ff
    jr nz, jr_073_7a65                            ; $7a84: $20 $df

    ld d, b                                       ; $7a86: $50
    xor a                                         ; $7a87: $af
    xor d                                         ; $7a88: $aa
    ld d, l                                       ; $7a89: $55
    ld d, l                                       ; $7a8a: $55
    xor d                                         ; $7a8b: $aa
    cp e                                          ; $7a8c: $bb
    ld b, h                                       ; $7a8d: $44
    ld d, l                                       ; $7a8e: $55
    ld a, [hl+]                                   ; $7a8f: $2a
    nop                                           ; $7a90: $00
    rst $38                                       ; $7a91: $ff
    nop                                           ; $7a92: $00
    rst $38                                       ; $7a93: $ff
    nop                                           ; $7a94: $00
    rst $38                                       ; $7a95: $ff
    nop                                           ; $7a96: $00
    rst $38                                       ; $7a97: $ff
    xor d                                         ; $7a98: $aa
    ld d, l                                       ; $7a99: $55
    ld d, l                                       ; $7a9a: $55
    xor d                                         ; $7a9b: $aa
    cp e                                          ; $7a9c: $bb
    ld b, h                                       ; $7a9d: $44
    ld d, l                                       ; $7a9e: $55
    xor d                                         ; $7a9f: $aa
    ld bc, $80fe                                  ; $7aa0: $01 $fe $80
    ld a, a                                       ; $7aa3: $7f
    ld [bc], a                                    ; $7aa4: $02
    db $fd                                        ; $7aa5: $fd
    ld d, l                                       ; $7aa6: $55
    xor d                                         ; $7aa7: $aa
    xor d                                         ; $7aa8: $aa
    ld d, l                                       ; $7aa9: $55
    ld d, l                                       ; $7aaa: $55
    xor d                                         ; $7aab: $aa
    cp e                                          ; $7aac: $bb
    ld b, h                                       ; $7aad: $44
    ld d, l                                       ; $7aae: $55
    xor d                                         ; $7aaf: $aa
    ld [bc], a                                    ; $7ab0: $02
    db $fd                                        ; $7ab1: $fd
    ld b, b                                       ; $7ab2: $40
    cp a                                          ; $7ab3: $bf
    xor d                                         ; $7ab4: $aa
    ld d, l                                       ; $7ab5: $55
    ld d, l                                       ; $7ab6: $55
    xor d                                         ; $7ab7: $aa
    xor d                                         ; $7ab8: $aa
    ld d, l                                       ; $7ab9: $55
    ld d, l                                       ; $7aba: $55
    xor d                                         ; $7abb: $aa
    cp e                                          ; $7abc: $bb
    ld b, h                                       ; $7abd: $44
    ld d, h                                       ; $7abe: $54
    xor b                                         ; $7abf: $a8
    inc b                                         ; $7ac0: $04
    ei                                            ; $7ac1: $fb
    nop                                           ; $7ac2: $00
    rst $38                                       ; $7ac3: $ff
    or b                                          ; $7ac4: $b0
    ld c, a                                       ; $7ac5: $4f
    ld d, l                                       ; $7ac6: $55
    xor d                                         ; $7ac7: $aa
    xor d                                         ; $7ac8: $aa
    ld d, l                                       ; $7ac9: $55
    ld d, l                                       ; $7aca: $55
    xor d                                         ; $7acb: $aa
    cp e                                          ; $7acc: $bb
    ld b, h                                       ; $7acd: $44
    nop                                           ; $7ace: $00
    nop                                           ; $7acf: $00
    xor d                                         ; $7ad0: $aa
    xor d                                         ; $7ad1: $aa
    rst $38                                       ; $7ad2: $ff
    rst $38                                       ; $7ad3: $ff
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    rst $38                                       ; $7ade: $ff
    rst $38                                       ; $7adf: $ff
    xor d                                         ; $7ae0: $aa
    xor d                                         ; $7ae1: $aa
    rst $38                                       ; $7ae2: $ff
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    rst $38                                       ; $7ae9: $ff
    rst $38                                       ; $7aea: $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    rst $38                                       ; $7aef: $ff
    and b                                         ; $7af0: $a0
    and b                                         ; $7af1: $a0
    push de                                       ; $7af2: $d5
    push de                                       ; $7af3: $d5
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
    nop                                           ; $7b00: $00
    nop                                           ; $7b01: $00
    ld d, h                                       ; $7b02: $54
    ld d, h                                       ; $7b03: $54
    ld a, [$fffa]                                 ; $7b04: $fa $fa $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    ccf                                           ; $7b10: $3f
    nop                                           ; $7b11: $00
    nop                                           ; $7b12: $00
    nop                                           ; $7b13: $00
    xor d                                         ; $7b14: $aa
    xor d                                         ; $7b15: $aa
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    rst $38                                       ; $7b1a: $ff
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rst $38                                       ; $7b1e: $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    nop                                           ; $7b21: $00
    nop                                           ; $7b22: $00
    nop                                           ; $7b23: $00
    xor d                                         ; $7b24: $aa
    xor d                                         ; $7b25: $aa
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    nop                                           ; $7b30: $00
    nop                                           ; $7b31: $00
    dec d                                         ; $7b32: $15
    dec d                                         ; $7b33: $15
    xor a                                         ; $7b34: $af
    xor a                                         ; $7b35: $af
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    xor d                                         ; $7b40: $aa
    xor d                                         ; $7b41: $aa
    ld a, a                                       ; $7b42: $7f
    ld a, a                                       ; $7b43: $7f
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    ld e, a                                       ; $7b50: $5f
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    rst $38                                       ; $7b55: $ff
    rst $38                                       ; $7b56: $ff
    rst $38                                       ; $7b57: $ff
    rst $38                                       ; $7b58: $ff
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    rst $38                                       ; $7b5d: $ff
    push de                                       ; $7b5e: $d5
    rst $38                                       ; $7b5f: $ff
    rst $38                                       ; $7b60: $ff
    rst $38                                       ; $7b61: $ff
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    push af                                       ; $7b66: $f5
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff
    ld a, a                                       ; $7b6e: $7f
    rst $38                                       ; $7b6f: $ff
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rst $10                                       ; $7b72: $d7
    rst $38                                       ; $7b73: $ff
    xor e                                         ; $7b74: $ab
    call nc, $ff5f                                ; $7b75: $d4 $5f $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    rst $38                                       ; $7b7b: $ff
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    rst $38                                       ; $7b7e: $ff
    rst $38                                       ; $7b7f: $ff
    rst $38                                       ; $7b80: $ff
    rst $38                                       ; $7b81: $ff
    rst $38                                       ; $7b82: $ff
    rst $38                                       ; $7b83: $ff
    ld d, [hl]                                    ; $7b84: $56
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff
    rst $38                                       ; $7b87: $ff
    rst $38                                       ; $7b88: $ff
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    rst $38                                       ; $7b8c: $ff
    rst $38                                       ; $7b8d: $ff
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    rst $38                                       ; $7b90: $ff
    rst $38                                       ; $7b91: $ff
    rst $38                                       ; $7b92: $ff
    rst $38                                       ; $7b93: $ff
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff
    rst $38                                       ; $7b98: $ff
    rst $38                                       ; $7b99: $ff
    rst $38                                       ; $7b9a: $ff
    rst $38                                       ; $7b9b: $ff
    rst $38                                       ; $7b9c: $ff
    rst $38                                       ; $7b9d: $ff
    xor a                                         ; $7b9e: $af
    rst $38                                       ; $7b9f: $ff
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $18                                       ; $7ba2: $df
    rst $38                                       ; $7ba3: $ff
    ld a, [$ffff]                                 ; $7ba4: $fa $ff $ff
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff
    rst $38                                       ; $7ba9: $ff
    rst $38                                       ; $7baa: $ff
    rst $38                                       ; $7bab: $ff
    rst $38                                       ; $7bac: $ff
    rst $38                                       ; $7bad: $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    rst $38                                       ; $7bb2: $ff
    rst $38                                       ; $7bb3: $ff
    rst $38                                       ; $7bb4: $ff
    rst $38                                       ; $7bb5: $ff
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    rst $38                                       ; $7bb9: $ff
    db $fd                                        ; $7bba: $fd
    rst $38                                       ; $7bbb: $ff
    xor d                                         ; $7bbc: $aa
    push af                                       ; $7bbd: $f5
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    ld a, [$ffff]                                 ; $7bc2: $fa $ff $ff
    rst $38                                       ; $7bc5: $ff
    cp $ff                                        ; $7bc6: $fe $ff
    rst $38                                       ; $7bc8: $ff
    rst $38                                       ; $7bc9: $ff
    ld a, a                                       ; $7bca: $7f
    rst $38                                       ; $7bcb: $ff
    cp a                                          ; $7bcc: $bf
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    ld d, l                                       ; $7bd0: $55
    xor e                                         ; $7bd1: $ab
    rst $38                                       ; $7bd2: $ff
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $38                                       ; $7bd7: $ff
    db $fd                                        ; $7bd8: $fd
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    ld d, a                                       ; $7bde: $57
    rst $38                                       ; $7bdf: $ff
    ld a, a                                       ; $7be0: $7f
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    rst $38                                       ; $7be7: $ff
    ld d, [hl]                                    ; $7be8: $56
    ld sp, hl                                     ; $7be9: $f9
    rst $38                                       ; $7bea: $ff
    rst $38                                       ; $7beb: $ff
    rst $38                                       ; $7bec: $ff
    rst $38                                       ; $7bed: $ff
    ld [$ffff], a                                 ; $7bee: $ea $ff $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    rst $38                                       ; $7bf6: $ff
    rst $38                                       ; $7bf7: $ff
    cp a                                          ; $7bf8: $bf
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    rst $38                                       ; $7bfd: $ff
    cp a                                          ; $7bfe: $bf
    rst $38                                       ; $7bff: $ff
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rst $38                                       ; $7c02: $ff
    rst $38                                       ; $7c03: $ff
    push af                                       ; $7c04: $f5
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    rst $38                                       ; $7c08: $ff
    rst $38                                       ; $7c09: $ff
    rst $38                                       ; $7c0a: $ff
    rst $38                                       ; $7c0b: $ff
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    rst $38                                       ; $7c0e: $ff
    rst $38                                       ; $7c0f: $ff
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    rst $38                                       ; $7c12: $ff
    rst $38                                       ; $7c13: $ff
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    rst $38                                       ; $7c16: $ff
    rst $38                                       ; $7c17: $ff
    ld a, [$ffff]                                 ; $7c18: $fa $ff $ff
    rst $38                                       ; $7c1b: $ff
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    rst $38                                       ; $7c22: $ff
    rst $38                                       ; $7c23: $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    rst $30                                       ; $7c26: $f7
    rst $38                                       ; $7c27: $ff
    xor e                                         ; $7c28: $ab
    ld d, a                                       ; $7c29: $57
    ld e, a                                       ; $7c2a: $5f
    rst $38                                       ; $7c2b: $ff
    rst $38                                       ; $7c2c: $ff
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    rst $38                                       ; $7c2f: $ff
    rst $38                                       ; $7c30: $ff
    rst $38                                       ; $7c31: $ff
    cp $ff                                        ; $7c32: $fe $ff
    rst $38                                       ; $7c34: $ff

jr_073_7c35:
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    rst $38                                       ; $7c3a: $ff
    rst $38                                       ; $7c3b: $ff
    rst $38                                       ; $7c3c: $ff
    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    rst $38                                       ; $7c3f: $ff
    ld e, a                                       ; $7c40: $5f
    rst $38                                       ; $7c41: $ff
    xor d                                         ; $7c42: $aa
    rst $10                                       ; $7c43: $d7
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    rst $38                                       ; $7c4d: $ff
    rst $38                                       ; $7c4e: $ff
    rst $38                                       ; $7c4f: $ff
    inc b                                         ; $7c50: $04
    ei                                            ; $7c51: $fb
    nop                                           ; $7c52: $00
    rst $38                                       ; $7c53: $ff
    jr nz, jr_073_7c35                            ; $7c54: $20 $df

    xor d                                         ; $7c56: $aa
    ld d, l                                       ; $7c57: $55
    ld d, l                                       ; $7c58: $55
    xor d                                         ; $7c59: $aa
    xor d                                         ; $7c5a: $aa
    ld d, l                                       ; $7c5b: $55
    ld d, b                                       ; $7c5c: $50
    and b                                         ; $7c5d: $a0
    inc bc                                        ; $7c5e: $03
    inc bc                                        ; $7c5f: $03
    ld [bc], a                                    ; $7c60: $02
    db $fd                                        ; $7c61: $fd
    ld [$0015], a                                 ; $7c62: $ea $15 $00

jr_073_7c65:
    rst $38                                       ; $7c65: $ff
    xor d                                         ; $7c66: $aa
    ld d, l                                       ; $7c67: $55
    ld d, l                                       ; $7c68: $55
    xor d                                         ; $7c69: $aa
    add b                                         ; $7c6a: $80
    ld bc, $0000                                  ; $7c6b: $01 $00 $00
    rst $38                                       ; $7c6e: $ff
    rst $38                                       ; $7c6f: $ff
    nop                                           ; $7c70: $00
    rst $38                                       ; $7c71: $ff
    add h                                         ; $7c72: $84
    ld a, e                                       ; $7c73: $7b
    nop                                           ; $7c74: $00
    rst $38                                       ; $7c75: $ff
    xor d                                         ; $7c76: $aa
    ld d, l                                       ; $7c77: $55
    ld d, l                                       ; $7c78: $55
    xor d                                         ; $7c79: $aa
    xor d                                         ; $7c7a: $aa
    ld d, l                                       ; $7c7b: $55
    nop                                           ; $7c7c: $00
    nop                                           ; $7c7d: $00
    ld hl, sp-$08                                 ; $7c7e: $f8 $f8
    add hl, bc                                    ; $7c80: $09
    or $00                                        ; $7c81: $f6 $00
    rst $38                                       ; $7c83: $ff
    jr nz, jr_073_7c65                            ; $7c84: $20 $df

    xor b                                         ; $7c86: $a8
    ld d, a                                       ; $7c87: $57
    ld d, l                                       ; $7c88: $55
    xor d                                         ; $7c89: $aa
    xor d                                         ; $7c8a: $aa
    ld d, l                                       ; $7c8b: $55
    ld d, l                                       ; $7c8c: $55
    xor d                                         ; $7c8d: $aa
    nop                                           ; $7c8e: $00
    nop                                           ; $7c8f: $00
    nop                                           ; $7c90: $00
    rst $38                                       ; $7c91: $ff
    nop                                           ; $7c92: $00
    rst $38                                       ; $7c93: $ff
    nop                                           ; $7c94: $00
    rst $38                                       ; $7c95: $ff
    nop                                           ; $7c96: $00
    rst $38                                       ; $7c97: $ff
    ld [hl], l                                    ; $7c98: $75
    adc d                                         ; $7c99: $8a
    xor d                                         ; $7c9a: $aa
    ld d, l                                       ; $7c9b: $55
    ld d, l                                       ; $7c9c: $55
    xor d                                         ; $7c9d: $aa
    nop                                           ; $7c9e: $00
    nop                                           ; $7c9f: $00
    ld bc, $80fe                                  ; $7ca0: $01 $fe $80
    ld a, a                                       ; $7ca3: $7f
    nop                                           ; $7ca4: $00
    rst $38                                       ; $7ca5: $ff
    xor d                                         ; $7ca6: $aa
    ld d, l                                       ; $7ca7: $55
    ld d, l                                       ; $7ca8: $55
    xor d                                         ; $7ca9: $aa
    xor d                                         ; $7caa: $aa
    ld d, l                                       ; $7cab: $55
    ld d, l                                       ; $7cac: $55
    xor d                                         ; $7cad: $aa
    dec sp                                        ; $7cae: $3b
    ld b, h                                       ; $7caf: $44
    ld [bc], a                                    ; $7cb0: $02
    db $fd                                        ; $7cb1: $fd
    ld b, b                                       ; $7cb2: $40
    cp a                                          ; $7cb3: $bf
    nop                                           ; $7cb4: $00
    rst $38                                       ; $7cb5: $ff
    xor d                                         ; $7cb6: $aa
    ld d, l                                       ; $7cb7: $55
    ld d, l                                       ; $7cb8: $55
    xor d                                         ; $7cb9: $aa
    xor d                                         ; $7cba: $aa
    ld d, l                                       ; $7cbb: $55
    ld d, l                                       ; $7cbc: $55
    xor d                                         ; $7cbd: $aa
    or b                                          ; $7cbe: $b0
    ld b, b                                       ; $7cbf: $40
    inc b                                         ; $7cc0: $04
    ei                                            ; $7cc1: $fb
    nop                                           ; $7cc2: $00
    rst $38                                       ; $7cc3: $ff
    db $10                                        ; $7cc4: $10
    rst $28                                       ; $7cc5: $ef
    xor d                                         ; $7cc6: $aa
    ld d, l                                       ; $7cc7: $55
    ld d, l                                       ; $7cc8: $55
    xor d                                         ; $7cc9: $aa
    xor d                                         ; $7cca: $aa
    ld d, l                                       ; $7ccb: $55
    ld b, b                                       ; $7ccc: $40
    add b                                         ; $7ccd: $80
    nop                                           ; $7cce: $00
    nop                                           ; $7ccf: $00
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    rst $38                                       ; $7cd8: $ff
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    rst $38                                       ; $7ce7: $ff
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rst $38                                       ; $7ceb: $ff
    rst $38                                       ; $7cec: $ff
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
    rst $38                                       ; $7cfb: $ff
    rst $38                                       ; $7cfc: $ff
    rst $38                                       ; $7cfd: $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    rst $38                                       ; $7d02: $ff
    rst $38                                       ; $7d03: $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    rst $38                                       ; $7d06: $ff
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $38                                       ; $7d09: $ff
    rst $38                                       ; $7d0a: $ff
    rst $38                                       ; $7d0b: $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff
    db $fc                                        ; $7d10: $fc
    db $fc                                        ; $7d11: $fc
    rst $38                                       ; $7d12: $ff
    rst $38                                       ; $7d13: $ff
    rst $38                                       ; $7d14: $ff
    rst $38                                       ; $7d15: $ff
    rst $38                                       ; $7d16: $ff
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    rst $38                                       ; $7d1b: $ff
    rst $38                                       ; $7d1c: $ff
    rst $38                                       ; $7d1d: $ff
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    nop                                           ; $7d20: $00
    nop                                           ; $7d21: $00
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    rst $38                                       ; $7d2c: $ff
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    inc bc                                        ; $7d30: $03
    inc bc                                        ; $7d31: $03
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff
    rst $38                                       ; $7d43: $ff
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    xor a                                         ; $7d50: $af
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    rst $38                                       ; $7d55: $ff
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    rst $38                                       ; $7d58: $ff
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    rst $38                                       ; $7d5d: $ff
    push de                                       ; $7d5e: $d5
    rst $38                                       ; $7d5f: $ff
    rst $38                                       ; $7d60: $ff
    rst $38                                       ; $7d61: $ff
    rst $38                                       ; $7d62: $ff
    rst $38                                       ; $7d63: $ff
    rst $38                                       ; $7d64: $ff
    rst $38                                       ; $7d65: $ff
    ld [$ffff], a                                 ; $7d66: $ea $ff $ff
    rst $38                                       ; $7d69: $ff
    rst $38                                       ; $7d6a: $ff
    rst $38                                       ; $7d6b: $ff
    rst $38                                       ; $7d6c: $ff
    rst $38                                       ; $7d6d: $ff
    ld a, a                                       ; $7d6e: $7f
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    rst $38                                       ; $7d71: $ff
    xor a                                         ; $7d72: $af
    rst $38                                       ; $7d73: $ff
    ld d, [hl]                                    ; $7d74: $56
    xor c                                         ; $7d75: $a9
    cp a                                          ; $7d76: $bf
    rst $38                                       ; $7d77: $ff
    rst $38                                       ; $7d78: $ff
    rst $38                                       ; $7d79: $ff
    rst $38                                       ; $7d7a: $ff
    rst $38                                       ; $7d7b: $ff
    rst $38                                       ; $7d7c: $ff
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    rst $38                                       ; $7d7f: $ff
    rst $38                                       ; $7d80: $ff
    rst $38                                       ; $7d81: $ff
    rst $38                                       ; $7d82: $ff
    rst $38                                       ; $7d83: $ff
    xor l                                         ; $7d84: $ad
    rst $38                                       ; $7d85: $ff
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    rst $38                                       ; $7d89: $ff
    rst $38                                       ; $7d8a: $ff
    rst $38                                       ; $7d8b: $ff
    rst $38                                       ; $7d8c: $ff
    rst $38                                       ; $7d8d: $ff
    rst $38                                       ; $7d8e: $ff
    rst $38                                       ; $7d8f: $ff
    rst $38                                       ; $7d90: $ff
    rst $38                                       ; $7d91: $ff
    rst $38                                       ; $7d92: $ff
    rst $38                                       ; $7d93: $ff
    rst $38                                       ; $7d94: $ff
    rst $38                                       ; $7d95: $ff
    rst $38                                       ; $7d96: $ff
    rst $38                                       ; $7d97: $ff
    rst $38                                       ; $7d98: $ff
    rst $38                                       ; $7d99: $ff
    rst $38                                       ; $7d9a: $ff
    rst $38                                       ; $7d9b: $ff
    rst $38                                       ; $7d9c: $ff
    rst $38                                       ; $7d9d: $ff
    xor a                                         ; $7d9e: $af
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    rst $38                                       ; $7da1: $ff
    rst $28                                       ; $7da2: $ef
    rst $38                                       ; $7da3: $ff
    db $fd                                        ; $7da4: $fd
    rst $38                                       ; $7da5: $ff
    rst $38                                       ; $7da6: $ff
    rst $38                                       ; $7da7: $ff
    rst $38                                       ; $7da8: $ff
    rst $38                                       ; $7da9: $ff
    rst $38                                       ; $7daa: $ff
    rst $38                                       ; $7dab: $ff
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff
    rst $38                                       ; $7db0: $ff
    rst $38                                       ; $7db1: $ff
    rst $38                                       ; $7db2: $ff
    rst $38                                       ; $7db3: $ff
    ld a, a                                       ; $7db4: $7f
    rst $38                                       ; $7db5: $ff
    rst $38                                       ; $7db6: $ff
    rst $38                                       ; $7db7: $ff
    rst $38                                       ; $7db8: $ff
    rst $38                                       ; $7db9: $ff
    db $fd                                        ; $7dba: $fd
    rst $38                                       ; $7dbb: $ff
    xor d                                         ; $7dbc: $aa
    push af                                       ; $7dbd: $f5
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    ld a, [$ffff]                                 ; $7dc2: $fa $ff $ff
    rst $38                                       ; $7dc5: $ff
    cp $ff                                        ; $7dc6: $fe $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    ld a, a                                       ; $7dca: $7f
    rst $38                                       ; $7dcb: $ff
    cp a                                          ; $7dcc: $bf
    rst $38                                       ; $7dcd: $ff
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    ld d, l                                       ; $7dd0: $55
    xor e                                         ; $7dd1: $ab
    rst $38                                       ; $7dd2: $ff
    rst $38                                       ; $7dd3: $ff
    rst $38                                       ; $7dd4: $ff
    rst $38                                       ; $7dd5: $ff
    rst $38                                       ; $7dd6: $ff
    rst $38                                       ; $7dd7: $ff
    db $fd                                        ; $7dd8: $fd
    rst $38                                       ; $7dd9: $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    rst $38                                       ; $7ddd: $ff
    ld d, a                                       ; $7dde: $57
    rst $38                                       ; $7ddf: $ff
    ld a, a                                       ; $7de0: $7f
    rst $38                                       ; $7de1: $ff
    rst $38                                       ; $7de2: $ff
    rst $38                                       ; $7de3: $ff
    rst $38                                       ; $7de4: $ff
    rst $38                                       ; $7de5: $ff
    rst $38                                       ; $7de6: $ff
    rst $38                                       ; $7de7: $ff
    ld d, [hl]                                    ; $7de8: $56
    ld sp, hl                                     ; $7de9: $f9
    rst $38                                       ; $7dea: $ff
    rst $38                                       ; $7deb: $ff
    rst $38                                       ; $7dec: $ff
    rst $38                                       ; $7ded: $ff
    ld [$ffff], a                                 ; $7dee: $ea $ff $ff
    rst $38                                       ; $7df1: $ff
    rst $38                                       ; $7df2: $ff
    rst $38                                       ; $7df3: $ff
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    cp a                                          ; $7df8: $bf
    rst $38                                       ; $7df9: $ff
    rst $38                                       ; $7dfa: $ff
    rst $38                                       ; $7dfb: $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    cp a                                          ; $7dfe: $bf
    rst $38                                       ; $7dff: $ff
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    ld a, [$ffff]                                 ; $7e04: $fa $ff $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    rst $38                                       ; $7e0f: $ff
    rst $38                                       ; $7e10: $ff
    rst $38                                       ; $7e11: $ff
    rst $38                                       ; $7e12: $ff
    rst $38                                       ; $7e13: $ff
    rst $38                                       ; $7e14: $ff
    rst $38                                       ; $7e15: $ff
    rst $38                                       ; $7e16: $ff
    rst $38                                       ; $7e17: $ff
    ld a, [$ffff]                                 ; $7e18: $fa $ff $ff
    rst $38                                       ; $7e1b: $ff
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    rst $38                                       ; $7e1e: $ff
    rst $38                                       ; $7e1f: $ff
    rst $38                                       ; $7e20: $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    rst $38                                       ; $7e23: $ff
    rst $38                                       ; $7e24: $ff
    rst $38                                       ; $7e25: $ff
    rst $30                                       ; $7e26: $f7
    rst $38                                       ; $7e27: $ff
    xor e                                         ; $7e28: $ab
    ld d, a                                       ; $7e29: $57
    ld e, a                                       ; $7e2a: $5f
    rst $38                                       ; $7e2b: $ff
    rst $38                                       ; $7e2c: $ff
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    rst $38                                       ; $7e2f: $ff
    rst $38                                       ; $7e30: $ff
    rst $38                                       ; $7e31: $ff
    cp $ff                                        ; $7e32: $fe $ff
    rst $38                                       ; $7e34: $ff
    rst $38                                       ; $7e35: $ff
    rst $38                                       ; $7e36: $ff
    rst $38                                       ; $7e37: $ff
    rst $38                                       ; $7e38: $ff
    rst $38                                       ; $7e39: $ff
    rst $38                                       ; $7e3a: $ff
    rst $38                                       ; $7e3b: $ff
    rst $38                                       ; $7e3c: $ff
    rst $38                                       ; $7e3d: $ff
    rst $38                                       ; $7e3e: $ff
    rst $38                                       ; $7e3f: $ff
    ld e, a                                       ; $7e40: $5f
    rst $38                                       ; $7e41: $ff
    xor d                                         ; $7e42: $aa
    rst $10                                       ; $7e43: $d7
    rst $38                                       ; $7e44: $ff
    rst $38                                       ; $7e45: $ff
    rst $38                                       ; $7e46: $ff
    rst $38                                       ; $7e47: $ff
    rst $38                                       ; $7e48: $ff
    rst $38                                       ; $7e49: $ff
    rst $38                                       ; $7e4a: $ff
    rst $38                                       ; $7e4b: $ff
    rst $38                                       ; $7e4c: $ff
    rst $38                                       ; $7e4d: $ff
    rst $38                                       ; $7e4e: $ff
    rst $38                                       ; $7e4f: $ff
    nop                                           ; $7e50: $00
    nop                                           ; $7e51: $00
    ld c, $0e                                     ; $7e52: $0e $0e
    scf                                           ; $7e54: $37
    add hl, sp                                    ; $7e55: $39
    ld c, c                                       ; $7e56: $49
    ld [hl], a                                    ; $7e57: $77
    ld d, e                                       ; $7e58: $53
    ld l, a                                       ; $7e59: $6f
    ld h, [hl]                                    ; $7e5a: $66
    ld e, [hl]                                    ; $7e5b: $5e
    call c, Call_073_70fc                         ; $7e5c: $dc $fc $70
    ldh a, [$0e]                                  ; $7e5f: $f0 $0e
    ld c, $12                                     ; $7e61: $0e $12
    ld e, $2a                                     ; $7e63: $1e $2a
    ld [hl], $2a                                  ; $7e65: $36 $2a
    ld [hl], $52                                  ; $7e67: $36 $52
    ld l, [hl]                                    ; $7e69: $6e
    sub $ee                                       ; $7e6a: $d6 $ee
    ld l, h                                       ; $7e6c: $6c
    db $fc                                        ; $7e6d: $fc
    sbc b                                         ; $7e6e: $98
    ld a, b                                       ; $7e6f: $78
    ld c, $0f                                     ; $7e70: $0e $0f
    ld sp, $4b3f                                  ; $7e72: $31 $3f $4b
    ld [hl], a                                    ; $7e75: $77
    sub e                                         ; $7e76: $93
    rst $28                                       ; $7e77: $ef
    and [hl]                                      ; $7e78: $a6
    sbc $cc                                       ; $7e79: $de $cc
    cp h                                          ; $7e7b: $bc
    cp b                                          ; $7e7c: $b8
    ld hl, sp-$20                                 ; $7e7d: $f8 $e0
    ldh [rNR42], a                                ; $7e7f: $e0 $21
    pop hl                                        ; $7e81: $e1
    ld a, d                                       ; $7e82: $7a
    ei                                            ; $7e83: $fb
    and a                                         ; $7e84: $a7
    sbc $c9                                       ; $7e85: $de $c9
    rst $30                                       ; $7e87: $f7
    push hl                                       ; $7e88: $e5
    ei                                            ; $7e89: $fb
    ld sp, $1f3f                                  ; $7e8a: $31 $3f $1f
    rra                                           ; $7e8d: $1f
    dec d                                         ; $7e8e: $15
    dec de                                        ; $7e8f: $1b
    ccf                                           ; $7e90: $3f
    rst $38                                       ; $7e91: $ff
    push af                                       ; $7e92: $f5
    ei                                            ; $7e93: $fb
    db $eb                                        ; $7e94: $eb
    rst $30                                       ; $7e95: $f7
    jp nc, Jump_073_44ee                          ; $7e96: $d2 $ee $44

    ld a, h                                       ; $7e99: $7c
    jr z, jr_073_7ed4                             ; $7e9a: $28 $38

    ld sp, hl                                     ; $7e9c: $f9
    ld sp, hl                                     ; $7e9d: $f9
    and [hl]                                      ; $7e9e: $a6
    ld e, a                                       ; $7e9f: $5f
    rrca                                          ; $7ea0: $0f
    rrca                                          ; $7ea1: $0f
    ld de, $251f                                  ; $7ea2: $11 $1f $25
    dec sp                                        ; $7ea5: $3b
    ld l, e                                       ; $7ea6: $6b
    ld [hl], a                                    ; $7ea7: $77
    or h                                          ; $7ea8: $b4
    rst $28                                       ; $7ea9: $ef
    xor [hl]                                      ; $7eaa: $ae
    ld sp, hl                                     ; $7eab: $f9
    ld [hl], l                                    ; $7eac: $75
    rst $38                                       ; $7ead: $ff
    rst $28                                       ; $7eae: $ef
    rra                                           ; $7eaf: $1f
    ld a, b                                       ; $7eb0: $78
    ld a, b                                       ; $7eb1: $78
    ld d, h                                       ; $7eb2: $54
    ld l, h                                       ; $7eb3: $6c
    ld c, d                                       ; $7eb4: $4a
    halt                                          ; $7eb5: $76
    ld h, [hl]                                    ; $7eb6: $66
    ld a, d                                       ; $7eb7: $7a
    inc sp                                        ; $7eb8: $33
    dec a                                         ; $7eb9: $3d
    add hl, de                                    ; $7eba: $19
    rra                                           ; $7ebb: $1f
    ld b, $07                                     ; $7ebc: $06 $07
    dec de                                        ; $7ebe: $1b
    inc e                                         ; $7ebf: $1c
    rrca                                          ; $7ec0: $0f
    rrca                                          ; $7ec1: $0f
    ld de, $a51f                                  ; $7ec2: $11 $1f $a5
    cp e                                          ; $7ec5: $bb
    set 6, a                                      ; $7ec6: $cb $f7
    ld d, [hl]                                    ; $7ec8: $56
    xor $ac                                       ; $7ec9: $ee $ac
    ld a, h                                       ; $7ecb: $7c
    ret nc                                        ; $7ecc: $d0

    jr nc, @+$6a                                  ; $7ecd: $30 $68

    sbc b                                         ; $7ecf: $98
    ld c, $0e                                     ; $7ed0: $0e $0e
    rla                                           ; $7ed2: $17
    add hl, de                                    ; $7ed3: $19

jr_073_7ed4:
    add hl, hl                                    ; $7ed4: $29
    scf                                           ; $7ed5: $37
    ld d, e                                       ; $7ed6: $53
    ld l, a                                       ; $7ed7: $6f
    ld b, [hl]                                    ; $7ed8: $46
    ld a, [hl]                                    ; $7ed9: $7e
    ld l, h                                       ; $7eda: $6c
    ld e, h                                       ; $7edb: $5c
    ret nc                                        ; $7edc: $d0

    ldh a, [$60]                                  ; $7edd: $f0 $60
    ldh [rNR32], a                                ; $7edf: $e0 $1c
    inc e                                         ; $7ee1: $1c
    inc h                                         ; $7ee2: $24
    inc a                                         ; $7ee3: $3c
    ld d, h                                       ; $7ee4: $54
    ld l, h                                       ; $7ee5: $6c
    ld d, h                                       ; $7ee6: $54
    ld l, h                                       ; $7ee7: $6c
    ld d, h                                       ; $7ee8: $54
    ld l, h                                       ; $7ee9: $6c
    call c, Call_073_6cec                         ; $7eea: $dc $ec $6c
    db $fc                                        ; $7eed: $fc
    sbc b                                         ; $7eee: $98
    ld a, b                                       ; $7eef: $78
    ld c, $0f                                     ; $7ef0: $0e $0f
    ld de, $251f                                  ; $7ef2: $11 $1f $25
    dec sp                                        ; $7ef5: $3b
    ld c, c                                       ; $7ef6: $49
    ld [hl], a                                    ; $7ef7: $77
    ld d, e                                       ; $7ef8: $53
    ld l, a                                       ; $7ef9: $6f
    ld h, [hl]                                    ; $7efa: $66
    ld e, [hl]                                    ; $7efb: $5e
    ld e, h                                       ; $7efc: $5c
    ld a, h                                       ; $7efd: $7c
    ld [hl], b                                    ; $7efe: $70
    ld [hl], b                                    ; $7eff: $70
    ld hl, $72e1                                  ; $7f00: $21 $e1 $72
    di                                            ; $7f03: $f3
    xor l                                         ; $7f04: $ad
    sbc $96                                       ; $7f05: $de $96
    db $ed                                        ; $7f07: $ed
    jp z, Jump_000_22f7                           ; $7f08: $ca $f7 $22

    ccf                                           ; $7f0b: $3f
    rra                                           ; $7f0c: $1f
    rra                                           ; $7f0d: $1f
    dec d                                         ; $7f0e: $15
    dec de                                        ; $7f0f: $1b
    ld a, $fe                                     ; $7f10: $3e $fe
    ld [$f6f6], a                                 ; $7f12: $ea $f6 $f6
    xor $d4                                       ; $7f15: $ee $d4
    db $ec                                        ; $7f17: $ec
    ld d, h                                       ; $7f18: $54
    ld l, h                                       ; $7f19: $6c
    inc l                                         ; $7f1a: $2c
    inc a                                         ; $7f1b: $3c
    ld sp, hl                                     ; $7f1c: $f9
    ld sp, hl                                     ; $7f1d: $f9
    and [hl]                                      ; $7f1e: $a6
    ld e, a                                       ; $7f1f: $5f
    dec e                                         ; $7f20: $1d
    dec e                                         ; $7f21: $1d
    ld h, $3a                                     ; $7f22: $26 $3a
    ld a, [hl+]                                   ; $7f24: $2a
    ld [hl], $63                                  ; $7f25: $36 $63
    ld a, a                                       ; $7f27: $7f
    or h                                          ; $7f28: $b4
    rst $28                                       ; $7f29: $ef
    xor [hl]                                      ; $7f2a: $ae
    ld sp, hl                                     ; $7f2b: $f9
    ld [hl], l                                    ; $7f2c: $75
    rst $38                                       ; $7f2d: $ff
    rst $28                                       ; $7f2e: $ef
    rra                                           ; $7f2f: $1f
    ldh a, [$f0]                                  ; $7f30: $f0 $f0
    xor b                                         ; $7f32: $a8
    ret c                                         ; $7f33: $d8

    sub h                                         ; $7f34: $94
    db $ec                                        ; $7f35: $ec
    call z, Call_073_66f4                         ; $7f36: $cc $f4 $66
    ld a, d                                       ; $7f39: $7a
    add hl, sp                                    ; $7f3a: $39
    ccf                                           ; $7f3b: $3f
    ld c, $0f                                     ; $7f3c: $0e $0f
    dec de                                        ; $7f3e: $1b
    inc e                                         ; $7f3f: $1c
    ld e, $1e                                     ; $7f40: $1e $1e
    ld [hl+], a                                   ; $7f42: $22
    ld a, $ca                                     ; $7f43: $3e $ca
    or $d6                                        ; $7f45: $f6 $d6
    xor $54                                       ; $7f47: $ee $54
    db $ec                                        ; $7f49: $ec
    xor h                                         ; $7f4a: $ac
    ld a, h                                       ; $7f4b: $7c
    ret nc                                        ; $7f4c: $d0

    jr nc, jr_073_7fb7                            ; $7f4d: $30 $68

    sbc b                                         ; $7f4f: $98
    jr jr_073_7f6a                                ; $7f50: $18 $18

    inc l                                         ; $7f52: $2c
    inc [hl]                                      ; $7f53: $34
    ld d, h                                       ; $7f54: $54
    ld l, h                                       ; $7f55: $6c
    ld d, h                                       ; $7f56: $54
    ld l, h                                       ; $7f57: $6c
    ld l, h                                       ; $7f58: $6c
    ld e, h                                       ; $7f59: $5c
    ld l, b                                       ; $7f5a: $68
    ld e, b                                       ; $7f5b: $58
    ret nc                                        ; $7f5c: $d0

    ldh a, [$60]                                  ; $7f5d: $f0 $60
    ldh [$0e], a                                  ; $7f5f: $e0 $0e
    ld c, $12                                     ; $7f61: $0e $12
    ld e, $2a                                     ; $7f63: $1e $2a
    ld [hl], $2a                                  ; $7f65: $36 $2a
    ld [hl], $52                                  ; $7f67: $36 $52
    ld l, [hl]                                    ; $7f69: $6e

jr_073_7f6a:
    sub $ee                                       ; $7f6a: $d6 $ee
    ld l, h                                       ; $7f6c: $6c
    db $fc                                        ; $7f6d: $fc
    sbc b                                         ; $7f6e: $98
    ld a, b                                       ; $7f6f: $78
    ld c, $0f                                     ; $7f70: $0e $0f
    add hl, bc                                    ; $7f72: $09
    rrca                                          ; $7f73: $0f
    dec d                                         ; $7f74: $15
    dec de                                        ; $7f75: $1b
    add hl, hl                                    ; $7f76: $29
    scf                                           ; $7f77: $37
    add hl, hl                                    ; $7f78: $29
    scf                                           ; $7f79: $37
    inc sp                                        ; $7f7a: $33
    cpl                                           ; $7f7b: $2f
    ld h, $3e                                     ; $7f7c: $26 $3e
    inc a                                         ; $7f7e: $3c
    inc a                                         ; $7f7f: $3c
    ld hl, $62e1                                  ; $7f80: $21 $e1 $62
    db $e3                                        ; $7f83: $e3
    or l                                          ; $7f84: $b5
    sub $8a                                       ; $7f85: $d6 $8a
    db $fd                                        ; $7f87: $fd
    call nc, Call_073_54ef                        ; $7f88: $d4 $ef $54
    ld l, a                                       ; $7f8b: $6f
    dec h                                         ; $7f8c: $25
    ccf                                           ; $7f8d: $3f
    dec e                                         ; $7f8e: $1d
    rra                                           ; $7f8f: $1f
    jr z, @-$06                                   ; $7f90: $28 $f8

    db $f4                                        ; $7f92: $f4
    db $ec                                        ; $7f93: $ec
    call nc, $d4ec                                ; $7f94: $d4 $ec $d4
    db $ec                                        ; $7f97: $ec
    ld d, h                                       ; $7f98: $54
    ld l, h                                       ; $7f99: $6c
    inc l                                         ; $7f9a: $2c
    inc a                                         ; $7f9b: $3c
    ld sp, hl                                     ; $7f9c: $f9
    ld sp, hl                                     ; $7f9d: $f9
    and [hl]                                      ; $7f9e: $a6
    ld e, a                                       ; $7f9f: $5f
    rrca                                          ; $7fa0: $0f
    rrca                                          ; $7fa1: $0f
    ld de, $251f                                  ; $7fa2: $11 $1f $25
    dec sp                                        ; $7fa5: $3b
    ld l, e                                       ; $7fa6: $6b
    ld [hl], a                                    ; $7fa7: $77
    or h                                          ; $7fa8: $b4
    rst $28                                       ; $7fa9: $ef
    xor [hl]                                      ; $7faa: $ae
    ld sp, hl                                     ; $7fab: $f9
    ld [hl], l                                    ; $7fac: $75
    rst $38                                       ; $7fad: $ff
    rst $28                                       ; $7fae: $ef
    rra                                           ; $7faf: $1f
    ld a, b                                       ; $7fb0: $78
    ld a, b                                       ; $7fb1: $78
    ld d, h                                       ; $7fb2: $54
    ld l, h                                       ; $7fb3: $6c
    ld c, d                                       ; $7fb4: $4a
    halt                                          ; $7fb5: $76
    ld h, [hl]                                    ; $7fb6: $66

jr_073_7fb7:
    ld a, d                                       ; $7fb7: $7a
    inc sp                                        ; $7fb8: $33
    dec a                                         ; $7fb9: $3d
    add hl, de                                    ; $7fba: $19
    rra                                           ; $7fbb: $1f
    ld b, $07                                     ; $7fbc: $06 $07
    dec de                                        ; $7fbe: $1b
    inc e                                         ; $7fbf: $1c
    inc e                                         ; $7fc0: $1c
    inc e                                         ; $7fc1: $1c
    inc h                                         ; $7fc2: $24
    inc a                                         ; $7fc3: $3c
    call nc, $d4ec                                ; $7fc4: $d4 $ec $d4
    db $ec                                        ; $7fc7: $ec
    ld d, h                                       ; $7fc8: $54
    db $ec                                        ; $7fc9: $ec
    xor b                                         ; $7fca: $a8
    ld a, b                                       ; $7fcb: $78
    ret nc                                        ; $7fcc: $d0

    jr nc, @+$6a                                  ; $7fcd: $30 $68

    sbc b                                         ; $7fcf: $98
    add hl, bc                                    ; $7fd0: $09
    nop                                           ; $7fd1: $00
    nop                                           ; $7fd2: $00
    rrca                                          ; $7fd3: $0f
    nop                                           ; $7fd4: $00
    ld bc, $0021                                  ; $7fd5: $01 $21 $00
    inc b                                         ; $7fd8: $04
    rlca                                          ; $7fd9: $07
    nop                                           ; $7fda: $00
    inc l                                         ; $7fdb: $2c
    nop                                           ; $7fdc: $00
    ld a, [hl-]                                   ; $7fdd: $3a
    nop                                           ; $7fde: $00
    ld [bc], a                                    ; $7fdf: $02
    nop                                           ; $7fe0: $00
    ld e, a                                       ; $7fe1: $5f
    nop                                           ; $7fe2: $00
    ld a, c                                       ; $7fe3: $79
    nop                                           ; $7fe4: $00
    ld [$7600], sp                                ; $7fe5: $08 $00 $76
    nop                                           ; $7fe8: $00
    ld b, a                                       ; $7fe9: $47
    nop                                           ; $7fea: $00
    inc c                                         ; $7feb: $0c
    nop                                           ; $7fec: $00
    halt                                          ; $7fed: $76
    nop                                           ; $7fee: $00
    ld d, [hl]                                    ; $7fef: $56
    nop                                           ; $7ff0: $00
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff
    ld bc, $0003                                  ; $7ff7: $01 $03 $00
    nop                                           ; $7ffa: $00
    nop                                           ; $7ffb: $00
    nop                                           ; $7ffc: $00
    ld bc, $e400                                  ; $7ffd: $01 $00 $e4
