; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $076", ROMX[$4000], BANK[$76]

    db $76

    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, jr_076_4043                             ; $4008: $38 $39

    jr nc, jr_076_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    rst $38                                       ; $4010: $ff
    rst $38                                       ; $4011: $ff
    rst $38                                       ; $4012: $ff
    rst $38                                       ; $4013: $ff
    rst $38                                       ; $4014: $ff
    rst $38                                       ; $4015: $ff
    rst $38                                       ; $4016: $ff
    db $fd                                        ; $4017: $fd
    rst $38                                       ; $4018: $ff
    cp c                                          ; $4019: $b9
    rst $38                                       ; $401a: $ff
    ld hl, sp-$01                                 ; $401b: $f8 $ff
    ld hl, sp-$41                                 ; $401d: $f8 $bf
    db $fc                                        ; $401f: $fc
    ld a, a                                       ; $4020: $7f
    rst $38                                       ; $4021: $ff
    ccf                                           ; $4022: $3f
    rst $38                                       ; $4023: $ff
    rst $38                                       ; $4024: $ff
    rst $38                                       ; $4025: $ff
    xor $ff                                       ; $4026: $ee $ff
    cp $ff                                        ; $4028: $fe $ff
    cp $ff                                        ; $402a: $fe $ff
    rst $38                                       ; $402c: $ff
    rst $38                                       ; $402d: $ff
    rst $38                                       ; $402e: $ff
    rst $38                                       ; $402f: $ff
    rst $38                                       ; $4030: $ff
    rst $38                                       ; $4031: $ff
    ld a, a                                       ; $4032: $7f
    rst $38                                       ; $4033: $ff
    ccf                                           ; $4034: $3f
    db $fd                                        ; $4035: $fd
    ccf                                           ; $4036: $3f
    db $fd                                        ; $4037: $fd
    ccf                                           ; $4038: $3f
    ld hl, sp+$7f                                 ; $4039: $f8 $7f
    ret c                                         ; $403b: $d8

    ld a, a                                       ; $403c: $7f

jr_076_403d:
    ld hl, sp-$01                                 ; $403d: $f8 $ff
    db $fc                                        ; $403f: $fc
    rst $38                                       ; $4040: $ff
    rst $38                                       ; $4041: $ff
    ei                                            ; $4042: $fb

jr_076_4043:
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
    db $fd                                        ; $404e: $fd
    rst $38                                       ; $404f: $ff
    rst $38                                       ; $4050: $ff
    rst $38                                       ; $4051: $ff
    ld a, a                                       ; $4052: $7f
    rst $38                                       ; $4053: $ff
    ld a, a                                       ; $4054: $7f
    rst $38                                       ; $4055: $ff
    ld a, a                                       ; $4056: $7f
    rst $38                                       ; $4057: $ff
    scf                                           ; $4058: $37
    rst $38                                       ; $4059: $ff
    res 7, a                                      ; $405a: $cb $bf
    rst $38                                       ; $405c: $ff
    ret nz                                        ; $405d: $c0

    rst $38                                       ; $405e: $ff
    rst $38                                       ; $405f: $ff
    rst $38                                       ; $4060: $ff
    rst $38                                       ; $4061: $ff
    rst $38                                       ; $4062: $ff
    rst $38                                       ; $4063: $ff
    rst $38                                       ; $4064: $ff
    rst $38                                       ; $4065: $ff
    rst $38                                       ; $4066: $ff
    rst $38                                       ; $4067: $ff
    rst $18                                       ; $4068: $df
    rst $18                                       ; $4069: $df
    rst $38                                       ; $406a: $ff
    rst $38                                       ; $406b: $ff
    ld a, [$ff05]                                 ; $406c: $fa $05 $ff
    cp $ff                                        ; $406f: $fe $ff
    rst $38                                       ; $4071: $ff
    rst $38                                       ; $4072: $ff
    rst $38                                       ; $4073: $ff
    rst $38                                       ; $4074: $ff
    rst $38                                       ; $4075: $ff
    rst $28                                       ; $4076: $ef
    rst $28                                       ; $4077: $ef
    rst $08                                       ; $4078: $cf
    rst $08                                       ; $4079: $cf
    rst $08                                       ; $407a: $cf
    rst $08                                       ; $407b: $cf
    add e                                         ; $407c: $83
    ld h, a                                       ; $407d: $67
    rst $38                                       ; $407e: $ff
    nop                                           ; $407f: $00
    rst $28                                       ; $4080: $ef
    rst $28                                       ; $4081: $ef
    and $e7                                       ; $4082: $e6 $e7
    ld [c], a                                     ; $4084: $e2
    db $e3                                        ; $4085: $e3
    ld [c], a                                     ; $4086: $e2
    db $e3                                        ; $4087: $e3
    and $e7                                       ; $4088: $e6 $e7
    db $e4                                        ; $408a: $e4
    rst $28                                       ; $408b: $ef
    xor e                                         ; $408c: $ab
    push af                                       ; $408d: $f5
    rst $38                                       ; $408e: $ff
    inc bc                                        ; $408f: $03
    ld d, l                                       ; $4090: $55
    rst $38                                       ; $4091: $ff
    and b                                         ; $4092: $a0
    rst $38                                       ; $4093: $ff
    ld d, d                                       ; $4094: $52
    db $ed                                        ; $4095: $ed
    and l                                         ; $4096: $a5
    ld e, d                                       ; $4097: $5a
    ld c, e                                       ; $4098: $4b
    or h                                          ; $4099: $b4
    cp a                                          ; $409a: $bf

jr_076_409b:
    ld b, b                                       ; $409b: $40
    ld l, a                                       ; $409c: $6f
    sub b                                         ; $409d: $90
    rst $18                                       ; $409e: $df
    jr nz, jr_076_40f6                            ; $409f: $20 $55

    rst $38                                       ; $40a1: $ff
    jr z, jr_076_409b                             ; $40a2: $28 $f7

    sub c                                         ; $40a4: $91
    ld l, a                                       ; $40a5: $6f
    inc [hl]                                      ; $40a6: $34
    bit 7, e                                      ; $40a7: $cb $7b
    add l                                         ; $40a9: $85
    or h                                          ; $40aa: $b4
    ld c, e                                       ; $40ab: $4b
    ld l, e                                       ; $40ac: $6b
    sub l                                         ; $40ad: $95
    db $fc                                        ; $40ae: $fc
    inc bc                                        ; $40af: $03
    or a                                          ; $40b0: $b7
    res 5, d                                      ; $40b1: $cb $aa
    rst $18                                       ; $40b3: $df
    rst $10                                       ; $40b4: $d7
    cp $7d                                        ; $40b5: $fe $7d
    cp $56                                        ; $40b7: $fe $56
    rst $28                                       ; $40b9: $ef
    cp e                                          ; $40ba: $bb
    rst $00                                       ; $40bb: $c7
    jp nc, $a5af                                  ; $40bc: $d2 $af $a5

    sbc $6e                                       ; $40bf: $de $6e
    pop af                                        ; $40c1: $f1
    and l                                         ; $40c2: $a5
    ld a, d                                       ; $40c3: $7a
    xor d                                         ; $40c4: $aa
    ld a, a                                       ; $40c5: $7f
    ld d, l                                       ; $40c6: $55
    rst $38                                       ; $40c7: $ff
    cp a                                          ; $40c8: $bf
    rst $38                                       ; $40c9: $ff
    ei                                            ; $40ca: $fb
    db $fc                                        ; $40cb: $fc
    or l                                          ; $40cc: $b5
    ld a, d                                       ; $40cd: $7a
    db $f4                                        ; $40ce: $f4
    rra                                           ; $40cf: $1f
    ld e, l                                       ; $40d0: $5d
    db $e3                                        ; $40d1: $e3
    ld a, [hl]                                    ; $40d2: $7e
    pop bc                                        ; $40d3: $c1
    cp a                                          ; $40d4: $bf
    ret nz                                        ; $40d5: $c0

    sub [hl]                                      ; $40d6: $96
    jp hl                                         ; $40d7: $e9


    xor l                                         ; $40d8: $ad
    di                                            ; $40d9: $f3
    ld d, d                                       ; $40da: $52
    rst $38                                       ; $40db: $ff
    cp l                                          ; $40dc: $bd
    ld a, a                                       ; $40dd: $7f
    ld h, $f9                                     ; $40de: $26 $f9
    jp c, $95e5                                   ; $40e0: $da $e5 $95

    ld [$ffc0], a                                 ; $40e3: $ea $c0 $ff
    db $f4                                        ; $40e6: $f4
    rst $38                                       ; $40e7: $ff
    ld a, e                                       ; $40e8: $7b
    rst $38                                       ; $40e9: $ff
    ld l, a                                       ; $40ea: $6f
    sbc a                                         ; $40eb: $9f
    inc l                                         ; $40ec: $2c
    rst $18                                       ; $40ed: $df
    adc e                                         ; $40ee: $8b
    db $ec                                        ; $40ef: $ec
    ld c, [hl]                                    ; $40f0: $4e
    pop af                                        ; $40f1: $f1
    ld d, l                                       ; $40f2: $55
    db $eb                                        ; $40f3: $eb
    ld h, c                                       ; $40f4: $61
    rst $38                                       ; $40f5: $ff

jr_076_40f6:
    di                                            ; $40f6: $f3
    rst $38                                       ; $40f7: $ff
    db $fc                                        ; $40f8: $fc
    rst $38                                       ; $40f9: $ff
    xor $f1                                       ; $40fa: $ee $f1
    ld l, h                                       ; $40fc: $6c
    di                                            ; $40fd: $f3
    and c                                         ; $40fe: $a1
    ld a, a                                       ; $40ff: $7f
    rst $10                                       ; $4100: $d7
    rst $38                                       ; $4101: $ff
    xor [hl]                                      ; $4102: $ae
    rst $38                                       ; $4103: $ff
    dec b                                         ; $4104: $05
    cp $a8                                        ; $4105: $fe $a8
    rst $10                                       ; $4107: $d7
    ld d, l                                       ; $4108: $55
    xor e                                         ; $4109: $ab
    xor b                                         ; $410a: $a8
    rst $10                                       ; $410b: $d7
    ld b, l                                       ; $410c: $45
    cp [hl]                                       ; $410d: $be
    xor d                                         ; $410e: $aa
    push de                                       ; $410f: $d5
    rst $38                                       ; $4110: $ff
    rst $38                                       ; $4111: $ff
    rst $38                                       ; $4112: $ff
    rst $38                                       ; $4113: $ff
    rst $38                                       ; $4114: $ff
    db $fd                                        ; $4115: $fd
    rst $38                                       ; $4116: $ff
    cp c                                          ; $4117: $b9
    rst $38                                       ; $4118: $ff
    ld sp, hl                                     ; $4119: $f9
    rst $38                                       ; $411a: $ff
    ld hl, sp-$01                                 ; $411b: $f8 $ff
    db $fd                                        ; $411d: $fd
    cp a                                          ; $411e: $bf
    rst $38                                       ; $411f: $ff
    rst $38                                       ; $4120: $ff
    rst $38                                       ; $4121: $ff
    rst $38                                       ; $4122: $ff
    rst $38                                       ; $4123: $ff
    rst $28                                       ; $4124: $ef
    rst $38                                       ; $4125: $ff
    rst $38                                       ; $4126: $ff
    rst $38                                       ; $4127: $ff
    rst $38                                       ; $4128: $ff
    rst $38                                       ; $4129: $ff
    rst $38                                       ; $412a: $ff
    rst $38                                       ; $412b: $ff
    rst $38                                       ; $412c: $ff
    rst $38                                       ; $412d: $ff
    rst $38                                       ; $412e: $ff
    rst $38                                       ; $412f: $ff
    ld a, a                                       ; $4130: $7f
    rst $38                                       ; $4131: $ff
    ld a, $ff                                     ; $4132: $3e $ff
    inc a                                         ; $4134: $3c
    rst $38                                       ; $4135: $ff
    ld a, b                                       ; $4136: $78
    rst $38                                       ; $4137: $ff
    ld hl, sp-$21                                 ; $4138: $f8 $df
    ld hl, sp-$01                                 ; $413a: $f8 $ff
    db $fd                                        ; $413c: $fd
    rst $38                                       ; $413d: $ff
    rst $38                                       ; $413e: $ff
    rst $38                                       ; $413f: $ff
    ei                                            ; $4140: $fb
    rst $38                                       ; $4141: $ff
    rst $38                                       ; $4142: $ff
    rst $38                                       ; $4143: $ff
    rst $38                                       ; $4144: $ff
    rst $38                                       ; $4145: $ff
    rst $38                                       ; $4146: $ff
    rst $38                                       ; $4147: $ff
    rst $38                                       ; $4148: $ff
    rst $38                                       ; $4149: $ff
    rst $38                                       ; $414a: $ff
    rst $38                                       ; $414b: $ff
    rst $38                                       ; $414c: $ff
    rst $38                                       ; $414d: $ff
    db $dd                                        ; $414e: $dd
    rst $18                                       ; $414f: $df
    rst $38                                       ; $4150: $ff
    rst $38                                       ; $4151: $ff
    ld a, a                                       ; $4152: $7f
    rst $38                                       ; $4153: $ff
    ld a, a                                       ; $4154: $7f
    rst $38                                       ; $4155: $ff
    ld [hl], a                                    ; $4156: $77
    rst $38                                       ; $4157: $ff
    ccf                                           ; $4158: $3f
    rst $38                                       ; $4159: $ff
    sbc a                                         ; $415a: $9f
    rst $38                                       ; $415b: $ff
    ret nz                                        ; $415c: $c0

    rst $38                                       ; $415d: $ff
    rst $38                                       ; $415e: $ff
    rst $38                                       ; $415f: $ff
    rst $38                                       ; $4160: $ff
    rst $38                                       ; $4161: $ff
    rst $38                                       ; $4162: $ff
    rst $38                                       ; $4163: $ff
    rst $38                                       ; $4164: $ff
    rst $38                                       ; $4165: $ff
    rst $18                                       ; $4166: $df
    rst $18                                       ; $4167: $df
    rst $38                                       ; $4168: $ff
    rst $38                                       ; $4169: $ff
    rst $38                                       ; $416a: $ff
    rst $38                                       ; $416b: $ff
    ld bc, $feff                                  ; $416c: $01 $ff $fe
    rst $38                                       ; $416f: $ff
    rst $38                                       ; $4170: $ff
    rst $38                                       ; $4171: $ff
    rst $28                                       ; $4172: $ef
    rst $28                                       ; $4173: $ef
    rst $20                                       ; $4174: $e7
    rst $20                                       ; $4175: $e7
    rst $20                                       ; $4176: $e7
    rst $20                                       ; $4177: $e7
    rst $20                                       ; $4178: $e7
    rst $20                                       ; $4179: $e7
    rst $38                                       ; $417a: $ff
    rst $38                                       ; $417b: $ff
    ld a, a                                       ; $417c: $7f
    rst $38                                       ; $417d: $ff
    nop                                           ; $417e: $00
    rst $38                                       ; $417f: $ff
    rst $08                                       ; $4180: $cf
    rst $08                                       ; $4181: $cf
    add $c7                                       ; $4182: $c6 $c7
    add $c7                                       ; $4184: $c6 $c7
    add $c7                                       ; $4186: $c6 $c7
    xor $ef                                       ; $4188: $ee $ef
    cp h                                          ; $418a: $bc
    rst $38                                       ; $418b: $ff
    ld sp, hl                                     ; $418c: $f9
    rst $38                                       ; $418d: $ff
    inc bc                                        ; $418e: $03
    rst $38                                       ; $418f: $ff
    ld d, l                                       ; $4190: $55
    rst $38                                       ; $4191: $ff
    and b                                         ; $4192: $a0
    rst $38                                       ; $4193: $ff
    ld d, d                                       ; $4194: $52
    db $ed                                        ; $4195: $ed
    and l                                         ; $4196: $a5
    ld e, d                                       ; $4197: $5a
    ld c, e                                       ; $4198: $4b
    or h                                          ; $4199: $b4
    cp a                                          ; $419a: $bf

jr_076_419b:
    ld b, b                                       ; $419b: $40
    ld l, a                                       ; $419c: $6f
    sub b                                         ; $419d: $90
    rst $18                                       ; $419e: $df
    jr nz, jr_076_41f6                            ; $419f: $20 $55

    rst $38                                       ; $41a1: $ff
    jr z, jr_076_419b                             ; $41a2: $28 $f7

    sub c                                         ; $41a4: $91
    ld l, a                                       ; $41a5: $6f
    inc [hl]                                      ; $41a6: $34
    bit 7, e                                      ; $41a7: $cb $7b
    add l                                         ; $41a9: $85
    or h                                          ; $41aa: $b4
    ld c, e                                       ; $41ab: $4b
    ld l, e                                       ; $41ac: $6b
    sub l                                         ; $41ad: $95
    db $fc                                        ; $41ae: $fc
    inc bc                                        ; $41af: $03
    or a                                          ; $41b0: $b7
    res 5, d                                      ; $41b1: $cb $aa
    rst $18                                       ; $41b3: $df
    rst $10                                       ; $41b4: $d7
    cp $7d                                        ; $41b5: $fe $7d
    cp $56                                        ; $41b7: $fe $56
    rst $28                                       ; $41b9: $ef
    cp e                                          ; $41ba: $bb
    rst $00                                       ; $41bb: $c7
    jp nc, $a5af                                  ; $41bc: $d2 $af $a5

    sbc $6e                                       ; $41bf: $de $6e
    pop af                                        ; $41c1: $f1
    and l                                         ; $41c2: $a5
    ld a, d                                       ; $41c3: $7a
    xor d                                         ; $41c4: $aa
    ld a, a                                       ; $41c5: $7f
    ld d, l                                       ; $41c6: $55
    rst $38                                       ; $41c7: $ff
    cp a                                          ; $41c8: $bf
    rst $38                                       ; $41c9: $ff
    ei                                            ; $41ca: $fb
    db $fc                                        ; $41cb: $fc
    or l                                          ; $41cc: $b5
    ld a, d                                       ; $41cd: $7a
    db $f4                                        ; $41ce: $f4
    rra                                           ; $41cf: $1f
    ld e, l                                       ; $41d0: $5d
    db $e3                                        ; $41d1: $e3
    ld a, [hl]                                    ; $41d2: $7e
    pop bc                                        ; $41d3: $c1
    cp a                                          ; $41d4: $bf
    ret nz                                        ; $41d5: $c0

    sub [hl]                                      ; $41d6: $96
    jp hl                                         ; $41d7: $e9


    xor l                                         ; $41d8: $ad
    di                                            ; $41d9: $f3
    ld d, d                                       ; $41da: $52
    rst $38                                       ; $41db: $ff
    cp l                                          ; $41dc: $bd
    ld a, a                                       ; $41dd: $7f
    ld h, $f9                                     ; $41de: $26 $f9
    jp c, $95e5                                   ; $41e0: $da $e5 $95

    ld [$ffc0], a                                 ; $41e3: $ea $c0 $ff
    db $f4                                        ; $41e6: $f4
    rst $38                                       ; $41e7: $ff
    ld a, e                                       ; $41e8: $7b
    rst $38                                       ; $41e9: $ff
    ld l, a                                       ; $41ea: $6f
    sbc a                                         ; $41eb: $9f
    inc l                                         ; $41ec: $2c
    rst $18                                       ; $41ed: $df
    adc e                                         ; $41ee: $8b
    db $ec                                        ; $41ef: $ec
    ld c, [hl]                                    ; $41f0: $4e
    pop af                                        ; $41f1: $f1
    ld d, l                                       ; $41f2: $55
    db $eb                                        ; $41f3: $eb
    ld h, c                                       ; $41f4: $61
    rst $38                                       ; $41f5: $ff

jr_076_41f6:
    di                                            ; $41f6: $f3
    rst $38                                       ; $41f7: $ff
    db $fc                                        ; $41f8: $fc
    rst $38                                       ; $41f9: $ff
    xor $f1                                       ; $41fa: $ee $f1
    ld l, h                                       ; $41fc: $6c
    di                                            ; $41fd: $f3
    and c                                         ; $41fe: $a1
    ld a, a                                       ; $41ff: $7f
    rst $10                                       ; $4200: $d7
    rst $38                                       ; $4201: $ff
    xor [hl]                                      ; $4202: $ae
    rst $38                                       ; $4203: $ff
    dec b                                         ; $4204: $05
    cp $a8                                        ; $4205: $fe $a8
    rst $10                                       ; $4207: $d7
    ld d, l                                       ; $4208: $55
    xor e                                         ; $4209: $ab
    xor b                                         ; $420a: $a8
    rst $10                                       ; $420b: $d7
    ld b, l                                       ; $420c: $45
    cp [hl]                                       ; $420d: $be
    xor d                                         ; $420e: $aa
    push de                                       ; $420f: $d5
    rst $38                                       ; $4210: $ff
    rst $38                                       ; $4211: $ff
    db $fd                                        ; $4212: $fd
    rst $38                                       ; $4213: $ff
    ld a, l                                       ; $4214: $7d
    rst $38                                       ; $4215: $ff
    db $fc                                        ; $4216: $fc
    rst $38                                       ; $4217: $ff
    db $fc                                        ; $4218: $fc
    rst $38                                       ; $4219: $ff
    db $fd                                        ; $421a: $fd
    rst $38                                       ; $421b: $ff
    rst $38                                       ; $421c: $ff
    rst $38                                       ; $421d: $ff
    cp a                                          ; $421e: $bf
    rst $38                                       ; $421f: $ff
    rst $38                                       ; $4220: $ff
    rst $38                                       ; $4221: $ff
    rst $30                                       ; $4222: $f7
    rst $38                                       ; $4223: $ff
    rst $38                                       ; $4224: $ff
    rst $38                                       ; $4225: $ff
    rst $38                                       ; $4226: $ff
    rst $38                                       ; $4227: $ff
    rst $38                                       ; $4228: $ff
    rst $38                                       ; $4229: $ff
    rst $38                                       ; $422a: $ff
    rst $38                                       ; $422b: $ff
    rst $38                                       ; $422c: $ff
    rst $38                                       ; $422d: $ff
    rst $38                                       ; $422e: $ff
    rst $38                                       ; $422f: $ff
    ld a, l                                       ; $4230: $7d
    rst $38                                       ; $4231: $ff
    dec a                                         ; $4232: $3d
    rst $38                                       ; $4233: $ff
    ld hl, sp-$01                                 ; $4234: $f8 $ff
    add sp, -$01                                  ; $4236: $e8 $ff
    db $fd                                        ; $4238: $fd
    rst $38                                       ; $4239: $ff
    rst $38                                       ; $423a: $ff
    rst $38                                       ; $423b: $ff
    rst $38                                       ; $423c: $ff
    rst $38                                       ; $423d: $ff
    rst $28                                       ; $423e: $ef
    rst $28                                       ; $423f: $ef
    rst $38                                       ; $4240: $ff
    rst $38                                       ; $4241: $ff
    rst $38                                       ; $4242: $ff
    rst $38                                       ; $4243: $ff
    rst $38                                       ; $4244: $ff
    rst $38                                       ; $4245: $ff
    rst $38                                       ; $4246: $ff
    rst $38                                       ; $4247: $ff
    rst $38                                       ; $4248: $ff
    rst $38                                       ; $4249: $ff
    rst $38                                       ; $424a: $ff
    rst $38                                       ; $424b: $ff
    rst $38                                       ; $424c: $ff
    rst $18                                       ; $424d: $df
    db $fd                                        ; $424e: $fd
    rst $18                                       ; $424f: $df
    rst $38                                       ; $4250: $ff
    rst $38                                       ; $4251: $ff
    ld a, a                                       ; $4252: $7f
    rst $38                                       ; $4253: $ff
    ld [hl], a                                    ; $4254: $77
    rst $38                                       ; $4255: $ff
    ld a, a                                       ; $4256: $7f
    rst $38                                       ; $4257: $ff
    ccf                                           ; $4258: $3f
    rst $38                                       ; $4259: $ff
    res 7, a                                      ; $425a: $cb $bf
    rst $38                                       ; $425c: $ff
    ret nz                                        ; $425d: $c0

    rst $38                                       ; $425e: $ff
    rst $38                                       ; $425f: $ff
    rst $38                                       ; $4260: $ff
    rst $38                                       ; $4261: $ff
    rst $38                                       ; $4262: $ff
    rst $38                                       ; $4263: $ff
    rst $28                                       ; $4264: $ef
    rst $28                                       ; $4265: $ef
    rst $38                                       ; $4266: $ff
    rst $38                                       ; $4267: $ff
    rst $38                                       ; $4268: $ff
    rst $38                                       ; $4269: $ff
    rst $38                                       ; $426a: $ff
    rst $38                                       ; $426b: $ff
    ld a, [$ff05]                                 ; $426c: $fa $05 $ff
    cp $e7                                        ; $426f: $fe $e7
    rst $20                                       ; $4271: $e7
    rst $20                                       ; $4272: $e7
    rst $20                                       ; $4273: $e7
    rst $30                                       ; $4274: $f7
    rst $30                                       ; $4275: $f7
    rst $38                                       ; $4276: $ff
    rst $38                                       ; $4277: $ff
    rst $38                                       ; $4278: $ff
    rst $38                                       ; $4279: $ff
    rst $38                                       ; $427a: $ff
    rst $38                                       ; $427b: $ff
    adc e                                         ; $427c: $8b
    ld a, a                                       ; $427d: $7f
    rst $38                                       ; $427e: $ff
    nop                                           ; $427f: $00
    rst $38                                       ; $4280: $ff
    adc a                                         ; $4281: $8f
    cp $8f                                        ; $4282: $fe $8f
    cp $8f                                        ; $4284: $fe $8f
    cp $df                                        ; $4286: $fe $df
    cp [hl]                                       ; $4288: $be
    rst $38                                       ; $4289: $ff
    db $f4                                        ; $428a: $f4
    rst $38                                       ; $428b: $ff
    xor e                                         ; $428c: $ab
    push af                                       ; $428d: $f5
    rst $30                                       ; $428e: $f7
    inc bc                                        ; $428f: $03
    ld d, l                                       ; $4290: $55
    rst $38                                       ; $4291: $ff
    and b                                         ; $4292: $a0
    rst $38                                       ; $4293: $ff
    ld d, d                                       ; $4294: $52
    db $ed                                        ; $4295: $ed
    and l                                         ; $4296: $a5
    ld e, d                                       ; $4297: $5a
    ld c, e                                       ; $4298: $4b
    or h                                          ; $4299: $b4
    cp a                                          ; $429a: $bf

jr_076_429b:
    ld b, b                                       ; $429b: $40
    ld l, a                                       ; $429c: $6f
    sub b                                         ; $429d: $90
    rst $18                                       ; $429e: $df
    jr nz, jr_076_42f6                            ; $429f: $20 $55

    rst $38                                       ; $42a1: $ff
    jr z, jr_076_429b                             ; $42a2: $28 $f7

    sub c                                         ; $42a4: $91
    ld l, a                                       ; $42a5: $6f
    inc [hl]                                      ; $42a6: $34
    bit 7, e                                      ; $42a7: $cb $7b
    add l                                         ; $42a9: $85
    or h                                          ; $42aa: $b4
    ld c, e                                       ; $42ab: $4b
    ld l, e                                       ; $42ac: $6b
    sub l                                         ; $42ad: $95
    db $fc                                        ; $42ae: $fc
    inc bc                                        ; $42af: $03
    or a                                          ; $42b0: $b7
    res 5, d                                      ; $42b1: $cb $aa
    rst $18                                       ; $42b3: $df
    rst $10                                       ; $42b4: $d7
    cp $7d                                        ; $42b5: $fe $7d
    cp $56                                        ; $42b7: $fe $56
    rst $28                                       ; $42b9: $ef
    cp e                                          ; $42ba: $bb
    rst $00                                       ; $42bb: $c7
    jp nc, $a5af                                  ; $42bc: $d2 $af $a5

    sbc $6e                                       ; $42bf: $de $6e
    pop af                                        ; $42c1: $f1
    and l                                         ; $42c2: $a5
    ld a, d                                       ; $42c3: $7a
    xor d                                         ; $42c4: $aa
    ld a, a                                       ; $42c5: $7f
    ld d, l                                       ; $42c6: $55
    rst $38                                       ; $42c7: $ff
    cp a                                          ; $42c8: $bf
    rst $38                                       ; $42c9: $ff
    ei                                            ; $42ca: $fb
    db $fc                                        ; $42cb: $fc
    or l                                          ; $42cc: $b5
    ld a, d                                       ; $42cd: $7a
    db $f4                                        ; $42ce: $f4
    rra                                           ; $42cf: $1f
    ld e, l                                       ; $42d0: $5d
    db $e3                                        ; $42d1: $e3
    ld a, [hl]                                    ; $42d2: $7e
    pop bc                                        ; $42d3: $c1
    cp a                                          ; $42d4: $bf
    ret nz                                        ; $42d5: $c0

    sub [hl]                                      ; $42d6: $96
    jp hl                                         ; $42d7: $e9


    xor l                                         ; $42d8: $ad
    di                                            ; $42d9: $f3
    ld d, d                                       ; $42da: $52
    rst $38                                       ; $42db: $ff
    cp l                                          ; $42dc: $bd
    ld a, a                                       ; $42dd: $7f
    ld h, $f9                                     ; $42de: $26 $f9
    jp c, $95e5                                   ; $42e0: $da $e5 $95

    ld [$ffc0], a                                 ; $42e3: $ea $c0 $ff
    db $f4                                        ; $42e6: $f4
    rst $38                                       ; $42e7: $ff
    ld a, e                                       ; $42e8: $7b
    rst $38                                       ; $42e9: $ff
    ld l, a                                       ; $42ea: $6f
    sbc a                                         ; $42eb: $9f
    inc l                                         ; $42ec: $2c
    rst $18                                       ; $42ed: $df
    adc e                                         ; $42ee: $8b
    db $ec                                        ; $42ef: $ec
    ld c, [hl]                                    ; $42f0: $4e
    pop af                                        ; $42f1: $f1
    ld d, l                                       ; $42f2: $55
    db $eb                                        ; $42f3: $eb
    ld h, c                                       ; $42f4: $61
    rst $38                                       ; $42f5: $ff

jr_076_42f6:
    di                                            ; $42f6: $f3
    rst $38                                       ; $42f7: $ff
    db $fc                                        ; $42f8: $fc
    rst $38                                       ; $42f9: $ff
    xor $f1                                       ; $42fa: $ee $f1
    ld l, h                                       ; $42fc: $6c
    di                                            ; $42fd: $f3
    and c                                         ; $42fe: $a1
    ld a, a                                       ; $42ff: $7f
    rst $10                                       ; $4300: $d7
    rst $38                                       ; $4301: $ff
    xor [hl]                                      ; $4302: $ae
    rst $38                                       ; $4303: $ff
    dec b                                         ; $4304: $05
    cp $a8                                        ; $4305: $fe $a8
    rst $10                                       ; $4307: $d7
    ld d, l                                       ; $4308: $55
    xor e                                         ; $4309: $ab
    xor b                                         ; $430a: $a8
    rst $10                                       ; $430b: $d7
    ld b, l                                       ; $430c: $45
    cp [hl]                                       ; $430d: $be
    xor d                                         ; $430e: $aa
    push de                                       ; $430f: $d5
    rst $38                                       ; $4310: $ff
    rst $38                                       ; $4311: $ff
    rst $28                                       ; $4312: $ef
    rst $38                                       ; $4313: $ff
    rst $38                                       ; $4314: $ff
    rst $28                                       ; $4315: $ef
    rst $38                                       ; $4316: $ff
    rst $18                                       ; $4317: $df
    ld a, [hl]                                    ; $4318: $7e
    ld e, [hl]                                    ; $4319: $5e
    inc a                                         ; $431a: $3c
    inc a                                         ; $431b: $3c
    nop                                           ; $431c: $00
    rst $38                                       ; $431d: $ff
    rst $38                                       ; $431e: $ff
    rst $38                                       ; $431f: $ff
    rst $38                                       ; $4320: $ff
    rst $38                                       ; $4321: $ff
    rst $28                                       ; $4322: $ef
    rst $38                                       ; $4323: $ff
    rst $38                                       ; $4324: $ff
    rst $20                                       ; $4325: $e7
    rst $38                                       ; $4326: $ff
    di                                            ; $4327: $f3
    ld a, [hl]                                    ; $4328: $7e
    ld a, [hl]                                    ; $4329: $7e
    inc a                                         ; $432a: $3c
    inc a                                         ; $432b: $3c
    nop                                           ; $432c: $00
    rst $38                                       ; $432d: $ff
    rst $38                                       ; $432e: $ff
    rst $38                                       ; $432f: $ff
    ld a, a                                       ; $4330: $7f
    ld a, a                                       ; $4331: $7f
    ld c, a                                       ; $4332: $4f
    ld a, a                                       ; $4333: $7f
    ccf                                           ; $4334: $3f
    ccf                                           ; $4335: $3f
    ld e, $1f                                     ; $4336: $1e $1f
    rrca                                          ; $4338: $0f
    rrca                                          ; $4339: $0f
    ld b, $07                                     ; $433a: $06 $07
    nop                                           ; $433c: $00
    rst $38                                       ; $433d: $ff
    rst $38                                       ; $433e: $ff
    rst $38                                       ; $433f: $ff
    rst $38                                       ; $4340: $ff
    rst $38                                       ; $4341: $ff
    rst $18                                       ; $4342: $df
    rst $38                                       ; $4343: $ff
    rst $18                                       ; $4344: $df
    rst $38                                       ; $4345: $ff
    call $feff                                    ; $4346: $cd $ff $fe
    rst $18                                       ; $4349: $df
    rst $28                                       ; $434a: $ef
    rst $18                                       ; $434b: $df
    nop                                           ; $434c: $00
    rst $38                                       ; $434d: $ff
    rst $38                                       ; $434e: $ff
    rst $38                                       ; $434f: $ff
    pop af                                        ; $4350: $f1
    pop af                                        ; $4351: $f1
    sub c                                         ; $4352: $91
    pop af                                        ; $4353: $f1
    ldh [$e0], a                                  ; $4354: $e0 $e0
    ret nz                                        ; $4356: $c0

    ret nz                                        ; $4357: $c0

    add b                                         ; $4358: $80
    add b                                         ; $4359: $80
    nop                                           ; $435a: $00
    nop                                           ; $435b: $00
    nop                                           ; $435c: $00
    rst $38                                       ; $435d: $ff
    rst $38                                       ; $435e: $ff
    rst $38                                       ; $435f: $ff
    rst $38                                       ; $4360: $ff
    rst $38                                       ; $4361: $ff
    ld a, e                                       ; $4362: $7b
    rst $38                                       ; $4363: $ff
    rst $30                                       ; $4364: $f7
    rst $38                                       ; $4365: $ff
    ld a, a                                       ; $4366: $7f
    ld l, a                                       ; $4367: $6f
    ccf                                           ; $4368: $3f
    cpl                                           ; $4369: $2f
    rla                                           ; $436a: $17
    rra                                           ; $436b: $1f
    nop                                           ; $436c: $00
    rst $38                                       ; $436d: $ff
    rst $38                                       ; $436e: $ff
    rst $38                                       ; $436f: $ff
    rst $38                                       ; $4370: $ff
    rst $38                                       ; $4371: $ff
    rst $18                                       ; $4372: $df
    rst $38                                       ; $4373: $ff
    rst $18                                       ; $4374: $df
    rst $38                                       ; $4375: $ff
    ld e, a                                       ; $4376: $5f
    rst $38                                       ; $4377: $ff
    or $ee                                        ; $4378: $f6 $ee
    ld a, h                                       ; $437a: $7c
    db $ec                                        ; $437b: $ec
    nop                                           ; $437c: $00
    rst $38                                       ; $437d: $ff
    rst $38                                       ; $437e: $ff
    rst $38                                       ; $437f: $ff
    rst $00                                       ; $4380: $c7
    rst $00                                       ; $4381: $c7
    ld b, h                                       ; $4382: $44
    rst $00                                       ; $4383: $c7
    add e                                         ; $4384: $83
    add e                                         ; $4385: $83
    ld bc, $0001                                  ; $4386: $01 $01 $00
    nop                                           ; $4389: $00
    nop                                           ; $438a: $00
    nop                                           ; $438b: $00
    nop                                           ; $438c: $00
    rst $38                                       ; $438d: $ff
    rst $38                                       ; $438e: $ff
    rst $38                                       ; $438f: $ff
    rst $38                                       ; $4390: $ff
    rst $38                                       ; $4391: $ff
    db $fd                                        ; $4392: $fd
    rst $38                                       ; $4393: $ff
    db $fd                                        ; $4394: $fd
    rst $38                                       ; $4395: $ff
    db $ec                                        ; $4396: $ec
    rst $38                                       ; $4397: $ff
    rst $38                                       ; $4398: $ff
    db $fd                                        ; $4399: $fd
    ld l, [hl]                                    ; $439a: $6e
    ld a, l                                       ; $439b: $7d
    nop                                           ; $439c: $00
    rst $38                                       ; $439d: $ff
    rst $38                                       ; $439e: $ff
    rst $38                                       ; $439f: $ff
    rst $38                                       ; $43a0: $ff
    rst $38                                       ; $43a1: $ff
    ld sp, hl                                     ; $43a2: $f9
    rst $38                                       ; $43a3: $ff
    cp $fe                                        ; $43a4: $fe $fe
    call c, $e8fc                                 ; $43a6: $dc $fc $e8
    ld hl, sp-$10                                 ; $43a9: $f8 $f0
    ldh a, [rP1]                                  ; $43ab: $f0 $00
    rst $38                                       ; $43ad: $ff
    rst $38                                       ; $43ae: $ff
    rst $38                                       ; $43af: $ff
    rrca                                          ; $43b0: $0f
    rrca                                          ; $43b1: $0f
    add hl, bc                                    ; $43b2: $09
    rrca                                          ; $43b3: $0f
    rrca                                          ; $43b4: $0f
    rrca                                          ; $43b5: $0f
    rlca                                          ; $43b6: $07
    rlca                                          ; $43b7: $07
    rlca                                          ; $43b8: $07
    rlca                                          ; $43b9: $07
    inc bc                                        ; $43ba: $03
    inc bc                                        ; $43bb: $03
    nop                                           ; $43bc: $00
    rst $38                                       ; $43bd: $ff
    rst $38                                       ; $43be: $ff
    rst $38                                       ; $43bf: $ff
    rst $38                                       ; $43c0: $ff
    rst $38                                       ; $43c1: $ff
    pop af                                        ; $43c2: $f1
    rst $38                                       ; $43c3: $ff
    rst $38                                       ; $43c4: $ff
    rst $38                                       ; $43c5: $ff
    cp $fe                                        ; $43c6: $fe $fe
    cp $fe                                        ; $43c8: $fe $fe
    db $fc                                        ; $43ca: $fc
    ld a, h                                       ; $43cb: $7c
    nop                                           ; $43cc: $00
    rst $38                                       ; $43cd: $ff
    rst $38                                       ; $43ce: $ff
    rst $38                                       ; $43cf: $ff
    ld a, a                                       ; $43d0: $7f
    ld a, a                                       ; $43d1: $7f
    ld a, a                                       ; $43d2: $7f
    ld a, a                                       ; $43d3: $7f
    ld a, a                                       ; $43d4: $7f
    ld a, a                                       ; $43d5: $7f
    daa                                           ; $43d6: $27
    ccf                                           ; $43d7: $3f
    ld a, $3f                                     ; $43d8: $3e $3f
    rra                                           ; $43da: $1f
    ld e, $00                                     ; $43db: $1e $00
    rst $38                                       ; $43dd: $ff
    rst $38                                       ; $43de: $ff
    rst $38                                       ; $43df: $ff
    ld hl, sp-$08                                 ; $43e0: $f8 $f8
    ld hl, sp-$08                                 ; $43e2: $f8 $f8
    ld hl, sp-$08                                 ; $43e4: $f8 $f8
    ret nc                                        ; $43e6: $d0

    ldh a, [$f0]                                  ; $43e7: $f0 $f0
    ldh a, [$e0]                                  ; $43e9: $f0 $e0
    ldh [rP1], a                                  ; $43eb: $e0 $00
    rst $38                                       ; $43ed: $ff
    rst $38                                       ; $43ee: $ff
    rst $38                                       ; $43ef: $ff
    nop                                           ; $43f0: $00
    nop                                           ; $43f1: $00
    nop                                           ; $43f2: $00
    nop                                           ; $43f3: $00
    nop                                           ; $43f4: $00
    nop                                           ; $43f5: $00
    rst $38                                       ; $43f6: $ff
    nop                                           ; $43f7: $00
    rra                                           ; $43f8: $1f
    rst $38                                       ; $43f9: $ff
    ld sp, hl                                     ; $43fa: $f9
    rlca                                          ; $43fb: $07
    nop                                           ; $43fc: $00
    rst $38                                       ; $43fd: $ff
    nop                                           ; $43fe: $00
    rst $38                                       ; $43ff: $ff
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    inc bc                                        ; $4405: $03
    rst $38                                       ; $4406: $ff
    nop                                           ; $4407: $00
    rst $38                                       ; $4408: $ff
    rst $38                                       ; $4409: $ff
    xor b                                         ; $440a: $a8
    rst $38                                       ; $440b: $ff
    nop                                           ; $440c: $00
    rst $38                                       ; $440d: $ff
    nop                                           ; $440e: $00
    rst $38                                       ; $440f: $ff
    rst $38                                       ; $4410: $ff
    rst $38                                       ; $4411: $ff
    rst $08                                       ; $4412: $cf
    rst $38                                       ; $4413: $ff
    sbc a                                         ; $4414: $9f
    rst $38                                       ; $4415: $ff
    rst $38                                       ; $4416: $ff
    rst $38                                       ; $4417: $ff
    ld a, [hl]                                    ; $4418: $7e
    ld a, [hl]                                    ; $4419: $7e
    inc a                                         ; $441a: $3c
    inc a                                         ; $441b: $3c
    nop                                           ; $441c: $00
    rst $38                                       ; $441d: $ff
    rst $38                                       ; $441e: $ff
    rst $38                                       ; $441f: $ff
    rst $38                                       ; $4420: $ff
    rst $38                                       ; $4421: $ff
    rst $28                                       ; $4422: $ef
    rst $38                                       ; $4423: $ff
    rst $38                                       ; $4424: $ff
    rst $28                                       ; $4425: $ef
    rst $38                                       ; $4426: $ff
    rst $28                                       ; $4427: $ef
    ld a, [hl]                                    ; $4428: $7e
    ld l, [hl]                                    ; $4429: $6e
    inc a                                         ; $442a: $3c
    inc a                                         ; $442b: $3c
    nop                                           ; $442c: $00
    rst $38                                       ; $442d: $ff
    rst $38                                       ; $442e: $ff
    rst $38                                       ; $442f: $ff
    ld a, a                                       ; $4430: $7f
    ld a, a                                       ; $4431: $7f
    ld a, a                                       ; $4432: $7f
    ld a, a                                       ; $4433: $7f
    ccf                                           ; $4434: $3f
    ccf                                           ; $4435: $3f

jr_076_4436:
    dec e                                         ; $4436: $1d
    rra                                           ; $4437: $1f
    rrca                                          ; $4438: $0f
    rrca                                          ; $4439: $0f
    dec b                                         ; $443a: $05
    rlca                                          ; $443b: $07
    nop                                           ; $443c: $00
    rst $38                                       ; $443d: $ff
    rst $38                                       ; $443e: $ff
    rst $38                                       ; $443f: $ff
    rst $38                                       ; $4440: $ff
    rst $38                                       ; $4441: $ff
    cp [hl]                                       ; $4442: $be
    rst $38                                       ; $4443: $ff
    cp a                                          ; $4444: $bf
    rst $38                                       ; $4445: $ff
    sbc e                                         ; $4446: $9b
    rst $38                                       ; $4447: $ff
    rst $38                                       ; $4448: $ff
    cp a                                          ; $4449: $bf
    db $dd                                        ; $444a: $dd
    cp a                                          ; $444b: $bf
    nop                                           ; $444c: $00
    rst $38                                       ; $444d: $ff
    rst $38                                       ; $444e: $ff
    rst $38                                       ; $444f: $ff
    pop af                                        ; $4450: $f1
    pop af                                        ; $4451: $f1
    pop af                                        ; $4452: $f1
    pop af                                        ; $4453: $f1
    jr nz, jr_076_4436                            ; $4454: $20 $e0

    ret nz                                        ; $4456: $c0

    ret nz                                        ; $4457: $c0

    add b                                         ; $4458: $80
    add b                                         ; $4459: $80
    nop                                           ; $445a: $00
    nop                                           ; $445b: $00
    nop                                           ; $445c: $00
    rst $38                                       ; $445d: $ff
    rst $38                                       ; $445e: $ff
    rst $38                                       ; $445f: $ff
    rst $38                                       ; $4460: $ff
    rst $38                                       ; $4461: $ff
    rst $28                                       ; $4462: $ef
    rst $38                                       ; $4463: $ff
    rst $18                                       ; $4464: $df
    rst $38                                       ; $4465: $ff
    ld e, [hl]                                    ; $4466: $5e
    ld a, a                                       ; $4467: $7f
    ccf                                           ; $4468: $3f
    ccf                                           ; $4469: $3f
    ld e, $1f                                     ; $446a: $1e $1f
    nop                                           ; $446c: $00
    rst $38                                       ; $446d: $ff
    rst $38                                       ; $446e: $ff
    rst $38                                       ; $446f: $ff
    rst $38                                       ; $4470: $ff
    rst $38                                       ; $4471: $ff
    cp e                                          ; $4472: $bb
    rst $38                                       ; $4473: $ff
    cp [hl]                                       ; $4474: $be
    rst $38                                       ; $4475: $ff
    rst $18                                       ; $4476: $df
    rst $38                                       ; $4477: $ff
    cp $de                                        ; $4478: $fe $de
    db $ec                                        ; $447a: $ec
    call c, $ff00                                 ; $447b: $dc $00 $ff
    rst $38                                       ; $447e: $ff
    rst $38                                       ; $447f: $ff
    rst $00                                       ; $4480: $c7
    rst $00                                       ; $4481: $c7
    rst $00                                       ; $4482: $c7
    rst $00                                       ; $4483: $c7
    add e                                         ; $4484: $83
    add e                                         ; $4485: $83
    ld bc, $0001                                  ; $4486: $01 $01 $00
    nop                                           ; $4489: $00
    nop                                           ; $448a: $00
    nop                                           ; $448b: $00
    nop                                           ; $448c: $00
    rst $38                                       ; $448d: $ff
    rst $38                                       ; $448e: $ff
    rst $38                                       ; $448f: $ff
    rst $38                                       ; $4490: $ff
    rst $38                                       ; $4491: $ff
    ei                                            ; $4492: $fb
    rst $38                                       ; $4493: $ff
    ei                                            ; $4494: $fb
    rst $38                                       ; $4495: $ff
    reti                                          ; $4496: $d9


    rst $38                                       ; $4497: $ff
    rst $38                                       ; $4498: $ff
    ei                                            ; $4499: $fb
    ld e, l                                       ; $449a: $5d
    ld a, e                                       ; $449b: $7b
    nop                                           ; $449c: $00
    rst $38                                       ; $449d: $ff
    rst $38                                       ; $449e: $ff
    rst $38                                       ; $449f: $ff
    rst $38                                       ; $44a0: $ff
    rst $38                                       ; $44a1: $ff
    rst $28                                       ; $44a2: $ef
    rst $38                                       ; $44a3: $ff
    ld a, [c]                                     ; $44a4: $f2
    cp $bc                                        ; $44a5: $fe $bc
    db $fc                                        ; $44a7: $fc
    ld hl, sp-$08                                 ; $44a8: $f8 $f8
    ret nc                                        ; $44aa: $d0

    ldh a, [rP1]                                  ; $44ab: $f0 $00
    rst $38                                       ; $44ad: $ff
    rst $38                                       ; $44ae: $ff
    rst $38                                       ; $44af: $ff
    rrca                                          ; $44b0: $0f
    rrca                                          ; $44b1: $0f
    rrca                                          ; $44b2: $0f
    rrca                                          ; $44b3: $0f
    rrca                                          ; $44b4: $0f
    rrca                                          ; $44b5: $0f
    dec b                                         ; $44b6: $05
    rlca                                          ; $44b7: $07
    rlca                                          ; $44b8: $07
    rlca                                          ; $44b9: $07
    inc bc                                        ; $44ba: $03
    inc bc                                        ; $44bb: $03
    nop                                           ; $44bc: $00
    rst $38                                       ; $44bd: $ff
    rst $38                                       ; $44be: $ff
    rst $38                                       ; $44bf: $ff
    rst $38                                       ; $44c0: $ff
    rst $38                                       ; $44c1: $ff
    rst $38                                       ; $44c2: $ff
    rst $38                                       ; $44c3: $ff
    rst $38                                       ; $44c4: $ff
    rst $38                                       ; $44c5: $ff
    ld a, [c]                                     ; $44c6: $f2
    cp $fe                                        ; $44c7: $fe $fe
    cp $fc                                        ; $44c9: $fe $fc
    db $fc                                        ; $44cb: $fc
    nop                                           ; $44cc: $00
    rst $38                                       ; $44cd: $ff
    rst $38                                       ; $44ce: $ff
    rst $38                                       ; $44cf: $ff
    ld a, a                                       ; $44d0: $7f
    ld a, a                                       ; $44d1: $7f
    ld b, a                                       ; $44d2: $47
    ld a, a                                       ; $44d3: $7f
    ld a, a                                       ; $44d4: $7f
    ld a, a                                       ; $44d5: $7f
    ccf                                           ; $44d6: $3f
    ccf                                           ; $44d7: $3f
    dec sp                                        ; $44d8: $3b
    ccf                                           ; $44d9: $3f
    rra                                           ; $44da: $1f
    dec de                                        ; $44db: $1b
    nop                                           ; $44dc: $00
    rst $38                                       ; $44dd: $ff
    rst $38                                       ; $44de: $ff
    rst $38                                       ; $44df: $ff
    ld hl, sp-$08                                 ; $44e0: $f8 $f8
    ld hl, sp-$08                                 ; $44e2: $f8 $f8
    ld hl, sp-$08                                 ; $44e4: $f8 $f8
    ldh a, [$f0]                                  ; $44e6: $f0 $f0
    ldh a, [$b0]                                  ; $44e8: $f0 $b0
    ldh [$e0], a                                  ; $44ea: $e0 $e0
    nop                                           ; $44ec: $00
    rst $38                                       ; $44ed: $ff
    rst $38                                       ; $44ee: $ff
    rst $38                                       ; $44ef: $ff
    nop                                           ; $44f0: $00
    nop                                           ; $44f1: $00
    nop                                           ; $44f2: $00
    nop                                           ; $44f3: $00
    nop                                           ; $44f4: $00
    nop                                           ; $44f5: $00
    rst $38                                       ; $44f6: $ff
    nop                                           ; $44f7: $00
    rra                                           ; $44f8: $1f
    rst $38                                       ; $44f9: $ff
    ld sp, hl                                     ; $44fa: $f9
    rlca                                          ; $44fb: $07
    nop                                           ; $44fc: $00
    rst $38                                       ; $44fd: $ff
    nop                                           ; $44fe: $00
    rst $38                                       ; $44ff: $ff
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    inc bc                                        ; $4505: $03
    rst $38                                       ; $4506: $ff
    nop                                           ; $4507: $00
    rst $38                                       ; $4508: $ff
    rst $38                                       ; $4509: $ff
    xor b                                         ; $450a: $a8
    rst $38                                       ; $450b: $ff
    nop                                           ; $450c: $00
    rst $38                                       ; $450d: $ff
    nop                                           ; $450e: $00
    rst $38                                       ; $450f: $ff
    rst $38                                       ; $4510: $ff
    rst $38                                       ; $4511: $ff
    rst $38                                       ; $4512: $ff
    rst $38                                       ; $4513: $ff
    rst $38                                       ; $4514: $ff
    rst $38                                       ; $4515: $ff
    rst $38                                       ; $4516: $ff
    rst $38                                       ; $4517: $ff
    ld a, [hl]                                    ; $4518: $7e
    ld a, [hl]                                    ; $4519: $7e
    inc a                                         ; $451a: $3c
    inc a                                         ; $451b: $3c
    nop                                           ; $451c: $00
    rst $38                                       ; $451d: $ff
    rst $38                                       ; $451e: $ff
    rst $38                                       ; $451f: $ff
    rst $38                                       ; $4520: $ff
    rst $38                                       ; $4521: $ff
    rst $38                                       ; $4522: $ff
    rst $38                                       ; $4523: $ff
    rst $38                                       ; $4524: $ff
    rst $08                                       ; $4525: $cf
    rst $38                                       ; $4526: $ff
    sbc a                                         ; $4527: $9f
    ld a, [hl]                                    ; $4528: $7e
    ld a, [hl]                                    ; $4529: $7e
    inc a                                         ; $452a: $3c
    inc a                                         ; $452b: $3c
    nop                                           ; $452c: $00
    rst $38                                       ; $452d: $ff
    rst $38                                       ; $452e: $ff
    rst $38                                       ; $452f: $ff
    ld a, a                                       ; $4530: $7f
    ld a, a                                       ; $4531: $7f
    ld a, a                                       ; $4532: $7f
    ld a, a                                       ; $4533: $7f
    dec a                                         ; $4534: $3d
    ccf                                           ; $4535: $3f
    rra                                           ; $4536: $1f
    rra                                           ; $4537: $1f
    dec bc                                        ; $4538: $0b
    rrca                                          ; $4539: $0f
    rlca                                          ; $453a: $07
    rlca                                          ; $453b: $07
    nop                                           ; $453c: $00
    rst $38                                       ; $453d: $ff
    rst $38                                       ; $453e: $ff
    rst $38                                       ; $453f: $ff
    rst $38                                       ; $4540: $ff
    rst $38                                       ; $4541: $ff
    cp [hl]                                       ; $4542: $be
    rst $38                                       ; $4543: $ff
    cp a                                          ; $4544: $bf
    rst $38                                       ; $4545: $ff
    scf                                           ; $4546: $37
    rst $38                                       ; $4547: $ff
    rst $38                                       ; $4548: $ff
    ld a, a                                       ; $4549: $7f
    cp e                                          ; $454a: $bb
    ld a, a                                       ; $454b: $7f
    nop                                           ; $454c: $00
    rst $38                                       ; $454d: $ff
    rst $38                                       ; $454e: $ff
    rst $38                                       ; $454f: $ff
    pop af                                        ; $4550: $f1
    pop af                                        ; $4551: $f1
    pop af                                        ; $4552: $f1
    pop af                                        ; $4553: $f1
    ld h, b                                       ; $4554: $60
    ldh [rLCDC], a                                ; $4555: $e0 $40
    ret nz                                        ; $4557: $c0

    add b                                         ; $4558: $80
    add b                                         ; $4559: $80
    nop                                           ; $455a: $00
    nop                                           ; $455b: $00
    nop                                           ; $455c: $00
    rst $38                                       ; $455d: $ff
    rst $38                                       ; $455e: $ff
    rst $38                                       ; $455f: $ff
    rst $38                                       ; $4560: $ff
    rst $38                                       ; $4561: $ff
    rst $28                                       ; $4562: $ef
    rst $38                                       ; $4563: $ff
    sbc a                                         ; $4564: $9f
    rst $38                                       ; $4565: $ff
    ld a, l                                       ; $4566: $7d
    ld a, a                                       ; $4567: $7f
    ccf                                           ; $4568: $3f
    ccf                                           ; $4569: $3f
    dec e                                         ; $456a: $1d
    rra                                           ; $456b: $1f
    nop                                           ; $456c: $00
    rst $38                                       ; $456d: $ff
    rst $38                                       ; $456e: $ff
    rst $38                                       ; $456f: $ff
    rst $38                                       ; $4570: $ff
    rst $38                                       ; $4571: $ff
    cp a                                          ; $4572: $bf
    rst $38                                       ; $4573: $ff
    or a                                          ; $4574: $b7
    rst $38                                       ; $4575: $ff
    sbc l                                         ; $4576: $9d
    rst $38                                       ; $4577: $ff
    cp $be                                        ; $4578: $fe $be
    call c, $00bc                                 ; $457a: $dc $bc $00
    rst $38                                       ; $457d: $ff
    rst $38                                       ; $457e: $ff
    rst $38                                       ; $457f: $ff
    rst $00                                       ; $4580: $c7
    rst $00                                       ; $4581: $c7
    rst $00                                       ; $4582: $c7
    rst $00                                       ; $4583: $c7
    add e                                         ; $4584: $83
    add e                                         ; $4585: $83
    ld bc, $0001                                  ; $4586: $01 $01 $00
    nop                                           ; $4589: $00
    nop                                           ; $458a: $00
    nop                                           ; $458b: $00
    nop                                           ; $458c: $00
    rst $38                                       ; $458d: $ff
    rst $38                                       ; $458e: $ff
    rst $38                                       ; $458f: $ff
    rst $38                                       ; $4590: $ff
    rst $38                                       ; $4591: $ff
    ei                                            ; $4592: $fb
    rst $38                                       ; $4593: $ff
    db $db                                        ; $4594: $db
    rst $38                                       ; $4595: $ff
    di                                            ; $4596: $f3
    rst $38                                       ; $4597: $ff
    cp a                                          ; $4598: $bf
    rst $30                                       ; $4599: $f7
    ld a, e                                       ; $459a: $7b
    ld [hl], a                                    ; $459b: $77
    nop                                           ; $459c: $00
    rst $38                                       ; $459d: $ff
    rst $38                                       ; $459e: $ff
    rst $38                                       ; $459f: $ff
    rst $38                                       ; $45a0: $ff
    rst $38                                       ; $45a1: $ff
    rst $28                                       ; $45a2: $ef
    rst $38                                       ; $45a3: $ff
    or $fe                                        ; $45a4: $f6 $fe
    ld [hl], h                                    ; $45a6: $74
    db $fc                                        ; $45a7: $fc
    ld hl, sp-$08                                 ; $45a8: $f8 $f8
    or b                                          ; $45aa: $b0
    ldh a, [rP1]                                  ; $45ab: $f0 $00
    rst $38                                       ; $45ad: $ff
    rst $38                                       ; $45ae: $ff
    rst $38                                       ; $45af: $ff
    rrca                                          ; $45b0: $0f
    rrca                                          ; $45b1: $0f
    dec bc                                        ; $45b2: $0b
    rrca                                          ; $45b3: $0f
    rrca                                          ; $45b4: $0f
    rrca                                          ; $45b5: $0f
    rlca                                          ; $45b6: $07
    rlca                                          ; $45b7: $07
    rlca                                          ; $45b8: $07
    rlca                                          ; $45b9: $07
    inc bc                                        ; $45ba: $03
    inc bc                                        ; $45bb: $03
    nop                                           ; $45bc: $00
    rst $38                                       ; $45bd: $ff
    rst $38                                       ; $45be: $ff
    rst $38                                       ; $45bf: $ff
    rst $38                                       ; $45c0: $ff
    rst $38                                       ; $45c1: $ff
    ld sp, hl                                     ; $45c2: $f9
    rst $38                                       ; $45c3: $ff
    rst $38                                       ; $45c4: $ff
    rst $38                                       ; $45c5: $ff
    or $fe                                        ; $45c6: $f6 $fe
    cp $f6                                        ; $45c8: $fe $f6
    db $fc                                        ; $45ca: $fc
    db $fc                                        ; $45cb: $fc
    nop                                           ; $45cc: $00
    rst $38                                       ; $45cd: $ff
    rst $38                                       ; $45ce: $ff
    rst $38                                       ; $45cf: $ff
    ld a, a                                       ; $45d0: $7f
    ld a, a                                       ; $45d1: $7f
    ld a, a                                       ; $45d2: $7f
    ld a, a                                       ; $45d3: $7f
    ld [hl], a                                    ; $45d4: $77
    ld a, a                                       ; $45d5: $7f
    cpl                                           ; $45d6: $2f
    ccf                                           ; $45d7: $3f
    ccf                                           ; $45d8: $3f
    ccf                                           ; $45d9: $3f
    rra                                           ; $45da: $1f
    ld e, $00                                     ; $45db: $1e $00
    rst $38                                       ; $45dd: $ff
    rst $38                                       ; $45de: $ff
    rst $38                                       ; $45df: $ff
    ld hl, sp-$08                                 ; $45e0: $f8 $f8
    ld hl, sp-$08                                 ; $45e2: $f8 $f8
    ld hl, sp-$08                                 ; $45e4: $f8 $f8
    ldh a, [$f0]                                  ; $45e6: $f0 $f0
    ldh a, [$f0]                                  ; $45e8: $f0 $f0
    ldh [$e0], a                                  ; $45ea: $e0 $e0
    nop                                           ; $45ec: $00
    rst $38                                       ; $45ed: $ff
    rst $38                                       ; $45ee: $ff
    rst $38                                       ; $45ef: $ff
    nop                                           ; $45f0: $00
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    nop                                           ; $45f3: $00
    nop                                           ; $45f4: $00
    nop                                           ; $45f5: $00
    rst $38                                       ; $45f6: $ff
    nop                                           ; $45f7: $00
    rra                                           ; $45f8: $1f
    rst $38                                       ; $45f9: $ff
    ld sp, hl                                     ; $45fa: $f9
    rlca                                          ; $45fb: $07
    nop                                           ; $45fc: $00
    rst $38                                       ; $45fd: $ff
    nop                                           ; $45fe: $00
    rst $38                                       ; $45ff: $ff
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    nop                                           ; $4604: $00
    inc bc                                        ; $4605: $03
    rst $38                                       ; $4606: $ff
    nop                                           ; $4607: $00
    rst $38                                       ; $4608: $ff
    rst $38                                       ; $4609: $ff
    xor b                                         ; $460a: $a8
    rst $38                                       ; $460b: $ff
    nop                                           ; $460c: $00
    rst $38                                       ; $460d: $ff
    nop                                           ; $460e: $00
    rst $38                                       ; $460f: $ff
    rst $38                                       ; $4610: $ff
    rst $38                                       ; $4611: $ff
    rst $38                                       ; $4612: $ff
    rst $38                                       ; $4613: $ff
    rst $38                                       ; $4614: $ff
    rst $38                                       ; $4615: $ff
    rst $38                                       ; $4616: $ff
    rst $38                                       ; $4617: $ff
    ld a, [hl]                                    ; $4618: $7e
    ld a, [hl]                                    ; $4619: $7e
    inc a                                         ; $461a: $3c
    inc a                                         ; $461b: $3c
    nop                                           ; $461c: $00
    rst $38                                       ; $461d: $ff
    rst $38                                       ; $461e: $ff
    rst $38                                       ; $461f: $ff
    rst $38                                       ; $4620: $ff
    rst $38                                       ; $4621: $ff
    rst $08                                       ; $4622: $cf
    rst $38                                       ; $4623: $ff
    cp a                                          ; $4624: $bf
    rst $38                                       ; $4625: $ff
    rst $38                                       ; $4626: $ff
    rst $38                                       ; $4627: $ff
    ld a, [hl]                                    ; $4628: $7e
    ld a, [hl]                                    ; $4629: $7e
    inc a                                         ; $462a: $3c
    inc a                                         ; $462b: $3c
    nop                                           ; $462c: $00
    rst $38                                       ; $462d: $ff
    rst $38                                       ; $462e: $ff
    rst $38                                       ; $462f: $ff
    ld a, a                                       ; $4630: $7f
    ld a, a                                       ; $4631: $7f
    ld a, e                                       ; $4632: $7b
    ld a, a                                       ; $4633: $7f
    ccf                                           ; $4634: $3f
    ccf                                           ; $4635: $3f
    rla                                           ; $4636: $17
    rra                                           ; $4637: $1f
    rrca                                          ; $4638: $0f
    ld c, $07                                     ; $4639: $0e $07
    ld b, $00                                     ; $463b: $06 $00
    rst $38                                       ; $463d: $ff
    rst $38                                       ; $463e: $ff
    rst $38                                       ; $463f: $ff
    rst $38                                       ; $4640: $ff
    rst $38                                       ; $4641: $ff
    ld a, e                                       ; $4642: $7b
    rst $38                                       ; $4643: $ff
    ld a, l                                       ; $4644: $7d
    rst $38                                       ; $4645: $ff
    halt                                          ; $4646: $76
    rst $38                                       ; $4647: $ff
    rst $38                                       ; $4648: $ff
    cp $77                                        ; $4649: $fe $77
    rst $38                                       ; $464b: $ff
    nop                                           ; $464c: $00
    rst $38                                       ; $464d: $ff
    rst $38                                       ; $464e: $ff
    rst $38                                       ; $464f: $ff
    pop af                                        ; $4650: $f1
    pop af                                        ; $4651: $f1
    pop af                                        ; $4652: $f1
    pop af                                        ; $4653: $f1
    ldh [$e0], a                                  ; $4654: $e0 $e0
    ret nz                                        ; $4656: $c0

    ret nz                                        ; $4657: $c0

    add b                                         ; $4658: $80
    add b                                         ; $4659: $80
    nop                                           ; $465a: $00
    nop                                           ; $465b: $00
    nop                                           ; $465c: $00
    rst $38                                       ; $465d: $ff
    rst $38                                       ; $465e: $ff
    rst $38                                       ; $465f: $ff
    rst $38                                       ; $4660: $ff
    rst $38                                       ; $4661: $ff
    ccf                                           ; $4662: $3f
    rst $38                                       ; $4663: $ff
    rst $38                                       ; $4664: $ff
    rst $38                                       ; $4665: $ff
    ld a, e                                       ; $4666: $7b
    ld a, a                                       ; $4667: $7f
    ccf                                           ; $4668: $3f
    ccf                                           ; $4669: $3f
    dec de                                        ; $466a: $1b
    rra                                           ; $466b: $1f
    nop                                           ; $466c: $00
    rst $38                                       ; $466d: $ff
    rst $38                                       ; $466e: $ff
    rst $38                                       ; $466f: $ff
    rst $38                                       ; $4670: $ff
    rst $38                                       ; $4671: $ff
    ld a, [hl]                                    ; $4672: $7e
    rst $38                                       ; $4673: $ff
    ld a, a                                       ; $4674: $7f
    rst $38                                       ; $4675: $ff
    scf                                           ; $4676: $37
    rst $38                                       ; $4677: $ff
    ld a, [$bc7e]                                 ; $4678: $fa $7e $bc
    ld a, h                                       ; $467b: $7c
    nop                                           ; $467c: $00
    rst $38                                       ; $467d: $ff
    rst $38                                       ; $467e: $ff
    rst $38                                       ; $467f: $ff
    rst $00                                       ; $4680: $c7
    rst $00                                       ; $4681: $c7
    ld b, a                                       ; $4682: $47
    rst $00                                       ; $4683: $c7
    add e                                         ; $4684: $83
    add e                                         ; $4685: $83
    ld bc, $0001                                  ; $4686: $01 $01 $00
    nop                                           ; $4689: $00
    nop                                           ; $468a: $00
    nop                                           ; $468b: $00
    nop                                           ; $468c: $00
    rst $38                                       ; $468d: $ff
    rst $38                                       ; $468e: $ff
    rst $38                                       ; $468f: $ff
    rst $38                                       ; $4690: $ff
    rst $38                                       ; $4691: $ff
    or a                                          ; $4692: $b7
    rst $38                                       ; $4693: $ff
    rst $30                                       ; $4694: $f7
    rst $38                                       ; $4695: $ff
    ld [hl], a                                    ; $4696: $77
    rst $38                                       ; $4697: $ff
    rst $38                                       ; $4698: $ff
    rst $28                                       ; $4699: $ef
    ld [hl], a                                    ; $469a: $77
    ld l, a                                       ; $469b: $6f
    nop                                           ; $469c: $00
    rst $38                                       ; $469d: $ff
    rst $38                                       ; $469e: $ff
    rst $38                                       ; $469f: $ff
    rst $38                                       ; $46a0: $ff
    rst $38                                       ; $46a1: $ff
    cp a                                          ; $46a2: $bf
    rst $38                                       ; $46a3: $ff
    sbc $fe                                       ; $46a4: $de $fe
    ld l, h                                       ; $46a6: $6c
    db $fc                                        ; $46a7: $fc
    ld hl, sp-$18                                 ; $46a8: $f8 $e8
    ld [hl], b                                    ; $46aa: $70
    ldh a, [rP1]                                  ; $46ab: $f0 $00
    rst $38                                       ; $46ad: $ff
    rst $38                                       ; $46ae: $ff
    rst $38                                       ; $46af: $ff
    rrca                                          ; $46b0: $0f
    rrca                                          ; $46b1: $0f
    rrca                                          ; $46b2: $0f
    rrca                                          ; $46b3: $0f
    rrca                                          ; $46b4: $0f
    rrca                                          ; $46b5: $0f
    rlca                                          ; $46b6: $07
    rlca                                          ; $46b7: $07
    rlca                                          ; $46b8: $07
    rlca                                          ; $46b9: $07
    inc bc                                        ; $46ba: $03
    inc bc                                        ; $46bb: $03
    nop                                           ; $46bc: $00
    rst $38                                       ; $46bd: $ff
    rst $38                                       ; $46be: $ff
    rst $38                                       ; $46bf: $ff
    rst $38                                       ; $46c0: $ff
    rst $38                                       ; $46c1: $ff
    rst $38                                       ; $46c2: $ff
    rst $38                                       ; $46c3: $ff
    rst $30                                       ; $46c4: $f7
    rst $38                                       ; $46c5: $ff
    jp c, $defe                                   ; $46c6: $da $fe $de

    cp $fc                                        ; $46c9: $fe $fc
    call c, $ff00                                 ; $46cb: $dc $00 $ff
    rst $38                                       ; $46ce: $ff
    rst $38                                       ; $46cf: $ff
    ld a, a                                       ; $46d0: $7f
    ld a, a                                       ; $46d1: $7f
    ld c, a                                       ; $46d2: $4f
    ld a, a                                       ; $46d3: $7f
    ld a, a                                       ; $46d4: $7f
    ld a, a                                       ; $46d5: $7f
    ccf                                           ; $46d6: $3f
    ccf                                           ; $46d7: $3f
    ccf                                           ; $46d8: $3f
    ccf                                           ; $46d9: $3f
    rra                                           ; $46da: $1f
    dec de                                        ; $46db: $1b
    nop                                           ; $46dc: $00
    rst $38                                       ; $46dd: $ff
    rst $38                                       ; $46de: $ff
    rst $38                                       ; $46df: $ff
    ld hl, sp-$08                                 ; $46e0: $f8 $f8
    adc b                                         ; $46e2: $88
    ld hl, sp-$08                                 ; $46e3: $f8 $f8
    ld hl, sp-$10                                 ; $46e5: $f8 $f0
    ldh a, [$f0]                                  ; $46e7: $f0 $f0
    ldh a, [$e0]                                  ; $46e9: $f0 $e0
    ldh [rP1], a                                  ; $46eb: $e0 $00
    rst $38                                       ; $46ed: $ff
    rst $38                                       ; $46ee: $ff
    rst $38                                       ; $46ef: $ff
    nop                                           ; $46f0: $00
    nop                                           ; $46f1: $00
    nop                                           ; $46f2: $00
    nop                                           ; $46f3: $00
    nop                                           ; $46f4: $00
    nop                                           ; $46f5: $00
    rst $38                                       ; $46f6: $ff
    nop                                           ; $46f7: $00
    rra                                           ; $46f8: $1f
    rst $38                                       ; $46f9: $ff
    ld sp, hl                                     ; $46fa: $f9
    rlca                                          ; $46fb: $07
    nop                                           ; $46fc: $00
    rst $38                                       ; $46fd: $ff
    nop                                           ; $46fe: $00
    rst $38                                       ; $46ff: $ff
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    inc bc                                        ; $4705: $03
    rst $38                                       ; $4706: $ff
    nop                                           ; $4707: $00
    rst $38                                       ; $4708: $ff
    rst $38                                       ; $4709: $ff
    xor b                                         ; $470a: $a8
    rst $38                                       ; $470b: $ff
    nop                                           ; $470c: $00
    rst $38                                       ; $470d: $ff
    nop                                           ; $470e: $00
    rst $38                                       ; $470f: $ff
    rst $38                                       ; $4710: $ff
    rst $38                                       ; $4711: $ff
    pop af                                        ; $4712: $f1
    rst $38                                       ; $4713: $ff
    rst $38                                       ; $4714: $ff
    rst $38                                       ; $4715: $ff
    rst $38                                       ; $4716: $ff
    rst $38                                       ; $4717: $ff
    ld a, [hl]                                    ; $4718: $7e
    ld a, [hl]                                    ; $4719: $7e
    inc a                                         ; $471a: $3c
    inc a                                         ; $471b: $3c
    nop                                           ; $471c: $00
    rst $38                                       ; $471d: $ff
    rst $38                                       ; $471e: $ff
    rst $38                                       ; $471f: $ff
    rst $38                                       ; $4720: $ff
    rst $38                                       ; $4721: $ff
    rst $38                                       ; $4722: $ff
    rst $38                                       ; $4723: $ff
    rst $38                                       ; $4724: $ff
    rst $38                                       ; $4725: $ff
    rst $38                                       ; $4726: $ff
    rst $38                                       ; $4727: $ff
    ld a, [hl]                                    ; $4728: $7e
    ld a, [hl]                                    ; $4729: $7e
    inc a                                         ; $472a: $3c
    inc a                                         ; $472b: $3c
    nop                                           ; $472c: $00
    rst $38                                       ; $472d: $ff
    rst $38                                       ; $472e: $ff
    rst $38                                       ; $472f: $ff
    ld a, a                                       ; $4730: $7f
    ld a, a                                       ; $4731: $7f
    ld a, e                                       ; $4732: $7b
    ld a, a                                       ; $4733: $7f
    ld l, $3f                                     ; $4734: $2e $3f
    ld e, $1f                                     ; $4736: $1e $1f
    rrca                                          ; $4738: $0f
    dec c                                         ; $4739: $0d
    ld b, $05                                     ; $473a: $06 $05
    nop                                           ; $473c: $00
    rst $38                                       ; $473d: $ff
    rst $38                                       ; $473e: $ff
    rst $38                                       ; $473f: $ff
    rst $38                                       ; $4740: $ff
    rst $38                                       ; $4741: $ff
    ld [hl], a                                    ; $4742: $77
    rst $38                                       ; $4743: $ff
    ei                                            ; $4744: $fb
    rst $38                                       ; $4745: $ff
    db $eb                                        ; $4746: $eb
    rst $38                                       ; $4747: $ff
    rst $38                                       ; $4748: $ff
    db $fd                                        ; $4749: $fd
    rst $28                                       ; $474a: $ef
    db $fd                                        ; $474b: $fd
    nop                                           ; $474c: $00
    rst $38                                       ; $474d: $ff
    rst $38                                       ; $474e: $ff
    rst $38                                       ; $474f: $ff
    pop af                                        ; $4750: $f1
    pop af                                        ; $4751: $f1
    pop af                                        ; $4752: $f1
    pop af                                        ; $4753: $f1
    ldh [$e0], a                                  ; $4754: $e0 $e0
    ret nz                                        ; $4756: $c0

    ret nz                                        ; $4757: $c0

    add b                                         ; $4758: $80
    add b                                         ; $4759: $80
    nop                                           ; $475a: $00
    nop                                           ; $475b: $00
    nop                                           ; $475c: $00
    rst $38                                       ; $475d: $ff
    rst $38                                       ; $475e: $ff
    rst $38                                       ; $475f: $ff
    rst $38                                       ; $4760: $ff
    rst $38                                       ; $4761: $ff
    cp $ff                                        ; $4762: $fe $ff
    cp $ff                                        ; $4764: $fe $ff
    halt                                          ; $4766: $76
    ld a, a                                       ; $4767: $7f
    ccf                                           ; $4768: $3f
    ld a, $17                                     ; $4769: $3e $17
    ld e, $00                                     ; $476b: $1e $00
    rst $38                                       ; $476d: $ff
    rst $38                                       ; $476e: $ff
    rst $38                                       ; $476f: $ff
    rst $38                                       ; $4770: $ff
    rst $38                                       ; $4771: $ff
    ei                                            ; $4772: $fb
    rst $38                                       ; $4773: $ff
    db $fc                                        ; $4774: $fc
    rst $38                                       ; $4775: $ff
    ld l, a                                       ; $4776: $6f
    rst $38                                       ; $4777: $ff
    cp $fe                                        ; $4778: $fe $fe
    ld [hl], h                                    ; $477a: $74
    db $fc                                        ; $477b: $fc
    nop                                           ; $477c: $00
    rst $38                                       ; $477d: $ff
    rst $38                                       ; $477e: $ff
    rst $38                                       ; $477f: $ff
    rst $00                                       ; $4780: $c7
    rst $00                                       ; $4781: $c7
    rst $00                                       ; $4782: $c7
    rst $00                                       ; $4783: $c7
    add d                                         ; $4784: $82
    add e                                         ; $4785: $83
    ld bc, $0001                                  ; $4786: $01 $01 $00
    nop                                           ; $4789: $00
    nop                                           ; $478a: $00
    nop                                           ; $478b: $00
    nop                                           ; $478c: $00
    rst $38                                       ; $478d: $ff
    rst $38                                       ; $478e: $ff
    rst $38                                       ; $478f: $ff
    rst $38                                       ; $4790: $ff
    rst $38                                       ; $4791: $ff
    or a                                          ; $4792: $b7
    rst $38                                       ; $4793: $ff
    rst $28                                       ; $4794: $ef
    rst $38                                       ; $4795: $ff
    xor $ff                                       ; $4796: $ee $ff
    rst $38                                       ; $4798: $ff
    rst $18                                       ; $4799: $df
    ld l, [hl]                                    ; $479a: $6e
    ld e, a                                       ; $479b: $5f
    nop                                           ; $479c: $00
    rst $38                                       ; $479d: $ff
    rst $38                                       ; $479e: $ff
    rst $38                                       ; $479f: $ff
    rst $38                                       ; $47a0: $ff
    rst $38                                       ; $47a1: $ff
    ld a, a                                       ; $47a2: $7f
    rst $38                                       ; $47a3: $ff
    cp [hl]                                       ; $47a4: $be
    cp $bc                                        ; $47a5: $fe $bc
    db $fc                                        ; $47a7: $fc
    ld hl, sp-$28                                 ; $47a8: $f8 $d8
    ldh a, [$d0]                                  ; $47aa: $f0 $d0
    nop                                           ; $47ac: $00
    rst $38                                       ; $47ad: $ff
    rst $38                                       ; $47ae: $ff
    rst $38                                       ; $47af: $ff
    rrca                                          ; $47b0: $0f
    rrca                                          ; $47b1: $0f
    rrca                                          ; $47b2: $0f
    rrca                                          ; $47b3: $0f
    rrca                                          ; $47b4: $0f
    rrca                                          ; $47b5: $0f
    rlca                                          ; $47b6: $07
    rlca                                          ; $47b7: $07
    rlca                                          ; $47b8: $07
    rlca                                          ; $47b9: $07
    inc bc                                        ; $47ba: $03
    inc bc                                        ; $47bb: $03
    nop                                           ; $47bc: $00
    rst $38                                       ; $47bd: $ff
    rst $38                                       ; $47be: $ff
    rst $38                                       ; $47bf: $ff
    rst $38                                       ; $47c0: $ff
    rst $38                                       ; $47c1: $ff
    db $fd                                        ; $47c2: $fd
    rst $38                                       ; $47c3: $ff
    rst $38                                       ; $47c4: $ff
    rst $38                                       ; $47c5: $ff
    xor [hl]                                      ; $47c6: $ae
    cp $7e                                        ; $47c7: $fe $7e
    or $fc                                        ; $47c9: $f6 $fc
    ld a, h                                       ; $47cb: $7c
    nop                                           ; $47cc: $00
    rst $38                                       ; $47cd: $ff
    rst $38                                       ; $47ce: $ff
    rst $38                                       ; $47cf: $ff
    ld a, a                                       ; $47d0: $7f
    ld a, a                                       ; $47d1: $7f
    ld a, a                                       ; $47d2: $7f
    ld a, a                                       ; $47d3: $7f
    ld a, a                                       ; $47d4: $7f
    ld a, a                                       ; $47d5: $7f
    cpl                                           ; $47d6: $2f
    ccf                                           ; $47d7: $3f
    ccf                                           ; $47d8: $3f
    ccf                                           ; $47d9: $3f
    rra                                           ; $47da: $1f
    rra                                           ; $47db: $1f
    nop                                           ; $47dc: $00
    rst $38                                       ; $47dd: $ff
    rst $38                                       ; $47de: $ff
    rst $38                                       ; $47df: $ff
    ld hl, sp-$08                                 ; $47e0: $f8 $f8
    ld hl, sp-$08                                 ; $47e2: $f8 $f8
    ld hl, sp-$08                                 ; $47e4: $f8 $f8
    sub b                                         ; $47e6: $90
    ldh a, [$f0]                                  ; $47e7: $f0 $f0
    ldh a, [$e0]                                  ; $47e9: $f0 $e0
    ldh [rP1], a                                  ; $47eb: $e0 $00
    rst $38                                       ; $47ed: $ff
    rst $38                                       ; $47ee: $ff
    rst $38                                       ; $47ef: $ff
    nop                                           ; $47f0: $00
    nop                                           ; $47f1: $00
    nop                                           ; $47f2: $00
    nop                                           ; $47f3: $00
    nop                                           ; $47f4: $00
    nop                                           ; $47f5: $00
    rst $38                                       ; $47f6: $ff
    nop                                           ; $47f7: $00
    rra                                           ; $47f8: $1f
    rst $38                                       ; $47f9: $ff
    ld sp, hl                                     ; $47fa: $f9
    rlca                                          ; $47fb: $07
    nop                                           ; $47fc: $00
    rst $38                                       ; $47fd: $ff
    nop                                           ; $47fe: $00
    rst $38                                       ; $47ff: $ff
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    nop                                           ; $4803: $00
    nop                                           ; $4804: $00
    inc bc                                        ; $4805: $03
    rst $38                                       ; $4806: $ff
    nop                                           ; $4807: $00
    rst $38                                       ; $4808: $ff
    rst $38                                       ; $4809: $ff
    xor b                                         ; $480a: $a8
    rst $38                                       ; $480b: $ff
    nop                                           ; $480c: $00
    rst $38                                       ; $480d: $ff
    nop                                           ; $480e: $00
    rst $38                                       ; $480f: $ff
    rst $38                                       ; $4810: $ff
    rst $38                                       ; $4811: $ff
    rst $30                                       ; $4812: $f7
    rst $38                                       ; $4813: $ff
    rst $38                                       ; $4814: $ff
    di                                            ; $4815: $f3
    rst $38                                       ; $4816: $ff
    rst $38                                       ; $4817: $ff
    ld a, [hl]                                    ; $4818: $7e
    ld a, [hl]                                    ; $4819: $7e
    inc a                                         ; $481a: $3c
    inc a                                         ; $481b: $3c
    nop                                           ; $481c: $00
    rst $38                                       ; $481d: $ff
    rst $38                                       ; $481e: $ff
    rst $38                                       ; $481f: $ff
    rst $38                                       ; $4820: $ff
    rst $38                                       ; $4821: $ff
    rst $38                                       ; $4822: $ff
    rst $38                                       ; $4823: $ff
    rst $38                                       ; $4824: $ff
    rst $38                                       ; $4825: $ff
    rst $38                                       ; $4826: $ff
    rst $38                                       ; $4827: $ff
    ld a, [hl]                                    ; $4828: $7e
    ld a, [hl]                                    ; $4829: $7e
    inc a                                         ; $482a: $3c
    inc a                                         ; $482b: $3c
    nop                                           ; $482c: $00
    rst $38                                       ; $482d: $ff
    rst $38                                       ; $482e: $ff
    rst $38                                       ; $482f: $ff
    ld a, a                                       ; $4830: $7f
    ld a, a                                       ; $4831: $7f
    ld e, [hl]                                    ; $4832: $5e
    ld a, a                                       ; $4833: $7f
    dec a                                         ; $4834: $3d
    ccf                                           ; $4835: $3f
    rra                                           ; $4836: $1f
    dec de                                        ; $4837: $1b
    rrca                                          ; $4838: $0f
    dec bc                                        ; $4839: $0b
    dec b                                         ; $483a: $05
    rlca                                          ; $483b: $07
    nop                                           ; $483c: $00
    rst $38                                       ; $483d: $ff
    rst $38                                       ; $483e: $ff
    rst $38                                       ; $483f: $ff
    rst $38                                       ; $4840: $ff
    rst $38                                       ; $4841: $ff
    rst $30                                       ; $4842: $f7
    rst $38                                       ; $4843: $ff
    rst $30                                       ; $4844: $f7
    rst $38                                       ; $4845: $ff
    rst $10                                       ; $4846: $d7
    rst $38                                       ; $4847: $ff
    db $fd                                        ; $4848: $fd
    ei                                            ; $4849: $fb
    rst $18                                       ; $484a: $df
    ei                                            ; $484b: $fb
    nop                                           ; $484c: $00
    rst $38                                       ; $484d: $ff
    rst $38                                       ; $484e: $ff
    rst $38                                       ; $484f: $ff
    pop af                                        ; $4850: $f1
    pop af                                        ; $4851: $f1
    pop de                                        ; $4852: $d1
    pop af                                        ; $4853: $f1
    ldh [$e0], a                                  ; $4854: $e0 $e0
    ret nz                                        ; $4856: $c0

    ret nz                                        ; $4857: $c0

    add b                                         ; $4858: $80
    add b                                         ; $4859: $80
    nop                                           ; $485a: $00
    nop                                           ; $485b: $00
    nop                                           ; $485c: $00
    rst $38                                       ; $485d: $ff
    rst $38                                       ; $485e: $ff
    rst $38                                       ; $485f: $ff
    rst $38                                       ; $4860: $ff
    rst $38                                       ; $4861: $ff
    cp $ff                                        ; $4862: $fe $ff
    or $ff                                        ; $4864: $f6 $ff
    ld a, h                                       ; $4866: $7c
    ld a, a                                       ; $4867: $7f
    cpl                                           ; $4868: $2f
    dec a                                         ; $4869: $3d
    ld e, $1d                                     ; $486a: $1e $1d
    nop                                           ; $486c: $00
    rst $38                                       ; $486d: $ff
    rst $38                                       ; $486e: $ff
    rst $38                                       ; $486f: $ff
    rst $38                                       ; $4870: $ff
    rst $38                                       ; $4871: $ff
    ei                                            ; $4872: $fb
    rst $38                                       ; $4873: $ff
    db $fd                                        ; $4874: $fd
    rst $38                                       ; $4875: $ff
    db $dd                                        ; $4876: $dd
    rst $38                                       ; $4877: $ff
    cp $fe                                        ; $4878: $fe $fe
    db $ec                                        ; $487a: $ec
    db $fc                                        ; $487b: $fc
    nop                                           ; $487c: $00
    rst $38                                       ; $487d: $ff
    rst $38                                       ; $487e: $ff
    rst $38                                       ; $487f: $ff
    rst $00                                       ; $4880: $c7
    rst $00                                       ; $4881: $c7
    push bc                                       ; $4882: $c5
    rst $00                                       ; $4883: $c7
    add e                                         ; $4884: $83
    add e                                         ; $4885: $83
    ld bc, $0001                                  ; $4886: $01 $01 $00
    nop                                           ; $4889: $00
    nop                                           ; $488a: $00
    nop                                           ; $488b: $00
    nop                                           ; $488c: $00
    rst $38                                       ; $488d: $ff
    rst $38                                       ; $488e: $ff
    rst $38                                       ; $488f: $ff
    rst $38                                       ; $4890: $ff
    rst $38                                       ; $4891: $ff
    rst $28                                       ; $4892: $ef
    rst $38                                       ; $4893: $ff
    rst $18                                       ; $4894: $df
    rst $38                                       ; $4895: $ff
    db $fd                                        ; $4896: $fd
    cp a                                          ; $4897: $bf
    rst $38                                       ; $4898: $ff
    cp a                                          ; $4899: $bf
    ld e, l                                       ; $489a: $5d
    ld a, a                                       ; $489b: $7f
    nop                                           ; $489c: $00
    rst $38                                       ; $489d: $ff
    rst $38                                       ; $489e: $ff
    rst $38                                       ; $489f: $ff
    rst $38                                       ; $48a0: $ff
    rst $38                                       ; $48a1: $ff
    ld a, l                                       ; $48a2: $7d
    rst $38                                       ; $48a3: $ff
    ld a, [hl]                                    ; $48a4: $7e
    cp $7c                                        ; $48a5: $fe $7c
    db $fc                                        ; $48a7: $fc
    ret c                                         ; $48a8: $d8

    cp b                                          ; $48a9: $b8
    ldh a, [$b0]                                  ; $48aa: $f0 $b0
    nop                                           ; $48ac: $00
    rst $38                                       ; $48ad: $ff
    rst $38                                       ; $48ae: $ff
    rst $38                                       ; $48af: $ff
    rrca                                          ; $48b0: $0f
    rrca                                          ; $48b1: $0f
    rrca                                          ; $48b2: $0f
    rrca                                          ; $48b3: $0f
    rrca                                          ; $48b4: $0f
    rrca                                          ; $48b5: $0f
    inc b                                         ; $48b6: $04
    rlca                                          ; $48b7: $07
    rlca                                          ; $48b8: $07
    rlca                                          ; $48b9: $07
    inc bc                                        ; $48ba: $03
    inc bc                                        ; $48bb: $03
    nop                                           ; $48bc: $00
    rst $38                                       ; $48bd: $ff
    rst $38                                       ; $48be: $ff
    rst $38                                       ; $48bf: $ff
    rst $38                                       ; $48c0: $ff
    rst $38                                       ; $48c1: $ff
    rst $38                                       ; $48c2: $ff
    rst $38                                       ; $48c3: $ff
    rst $38                                       ; $48c4: $ff
    rst $38                                       ; $48c5: $ff
    ld a, [$defe]                                 ; $48c6: $fa $fe $de
    cp $fc                                        ; $48c9: $fe $fc
    call c, $ff00                                 ; $48cb: $dc $00 $ff
    rst $38                                       ; $48ce: $ff
    rst $38                                       ; $48cf: $ff
    ld a, a                                       ; $48d0: $7f
    ld a, a                                       ; $48d1: $7f
    ld e, a                                       ; $48d2: $5f
    ld a, a                                       ; $48d3: $7f
    ld a, a                                       ; $48d4: $7f
    ld a, a                                       ; $48d5: $7f
    ccf                                           ; $48d6: $3f
    ccf                                           ; $48d7: $3f
    ccf                                           ; $48d8: $3f
    ccf                                           ; $48d9: $3f
    rra                                           ; $48da: $1f
    rra                                           ; $48db: $1f
    nop                                           ; $48dc: $00
    rst $38                                       ; $48dd: $ff
    rst $38                                       ; $48de: $ff
    rst $38                                       ; $48df: $ff
    ld hl, sp-$08                                 ; $48e0: $f8 $f8
    ret z                                         ; $48e2: $c8

    ld hl, sp-$08                                 ; $48e3: $f8 $f8
    ld hl, sp-$50                                 ; $48e5: $f8 $b0
    ldh a, [$f0]                                  ; $48e7: $f0 $f0
    or b                                          ; $48e9: $b0
    ldh [$e0], a                                  ; $48ea: $e0 $e0
    nop                                           ; $48ec: $00
    rst $38                                       ; $48ed: $ff
    rst $38                                       ; $48ee: $ff
    rst $38                                       ; $48ef: $ff
    nop                                           ; $48f0: $00
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    nop                                           ; $48f3: $00
    nop                                           ; $48f4: $00
    nop                                           ; $48f5: $00
    rst $38                                       ; $48f6: $ff
    nop                                           ; $48f7: $00
    rra                                           ; $48f8: $1f
    rst $38                                       ; $48f9: $ff
    ld sp, hl                                     ; $48fa: $f9
    rlca                                          ; $48fb: $07
    nop                                           ; $48fc: $00
    rst $38                                       ; $48fd: $ff
    nop                                           ; $48fe: $00
    rst $38                                       ; $48ff: $ff
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    inc bc                                        ; $4905: $03
    rst $38                                       ; $4906: $ff
    nop                                           ; $4907: $00
    rst $38                                       ; $4908: $ff
    rst $38                                       ; $4909: $ff
    xor b                                         ; $490a: $a8
    rst $38                                       ; $490b: $ff
    nop                                           ; $490c: $00
    rst $38                                       ; $490d: $ff
    nop                                           ; $490e: $00
    rst $38                                       ; $490f: $ff
    rst $38                                       ; $4910: $ff
    rst $38                                       ; $4911: $ff
    rst $28                                       ; $4912: $ef
    rst $38                                       ; $4913: $ff
    rst $38                                       ; $4914: $ff
    rst $20                                       ; $4915: $e7
    rst $38                                       ; $4916: $ff
    rst $30                                       ; $4917: $f7
    ld a, [hl]                                    ; $4918: $7e
    ld a, [hl]                                    ; $4919: $7e
    inc a                                         ; $491a: $3c
    inc a                                         ; $491b: $3c
    nop                                           ; $491c: $00
    rst $38                                       ; $491d: $ff
    rst $38                                       ; $491e: $ff
    rst $38                                       ; $491f: $ff
    rst $38                                       ; $4920: $ff
    rst $38                                       ; $4921: $ff
    pop af                                        ; $4922: $f1
    rst $38                                       ; $4923: $ff
    ld sp, hl                                     ; $4924: $f9
    rst $38                                       ; $4925: $ff
    rst $38                                       ; $4926: $ff
    rst $38                                       ; $4927: $ff
    ld a, [hl]                                    ; $4928: $7e
    ld a, [hl]                                    ; $4929: $7e
    inc a                                         ; $492a: $3c
    inc a                                         ; $492b: $3c
    nop                                           ; $492c: $00
    rst $38                                       ; $492d: $ff
    rst $38                                       ; $492e: $ff
    rst $38                                       ; $492f: $ff
    ld a, a                                       ; $4930: $7f
    ld a, a                                       ; $4931: $7f
    ld a, e                                       ; $4932: $7b
    ld a, a                                       ; $4933: $7f
    scf                                           ; $4934: $37
    ccf                                           ; $4935: $3f
    rla                                           ; $4936: $17
    rra                                           ; $4937: $1f
    rrca                                          ; $4938: $0f
    rrca                                          ; $4939: $0f
    rlca                                          ; $493a: $07
    rlca                                          ; $493b: $07
    nop                                           ; $493c: $00
    rst $38                                       ; $493d: $ff
    rst $38                                       ; $493e: $ff
    rst $38                                       ; $493f: $ff
    rst $38                                       ; $4940: $ff
    rst $38                                       ; $4941: $ff
    xor $ff                                       ; $4942: $ee $ff
    rst $28                                       ; $4944: $ef
    rst $38                                       ; $4945: $ff
    or a                                          ; $4946: $b7
    rst $38                                       ; $4947: $ff
    rst $38                                       ; $4948: $ff
    rst $30                                       ; $4949: $f7
    cp e                                          ; $494a: $bb
    rst $30                                       ; $494b: $f7
    nop                                           ; $494c: $00
    rst $38                                       ; $494d: $ff
    rst $38                                       ; $494e: $ff
    rst $38                                       ; $494f: $ff
    pop af                                        ; $4950: $f1
    pop af                                        ; $4951: $f1
    pop af                                        ; $4952: $f1
    pop af                                        ; $4953: $f1
    and b                                         ; $4954: $a0
    ldh [$c0], a                                  ; $4955: $e0 $c0
    ret nz                                        ; $4957: $c0

    add b                                         ; $4958: $80
    add b                                         ; $4959: $80
    nop                                           ; $495a: $00
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    rst $38                                       ; $495d: $ff
    rst $38                                       ; $495e: $ff
    rst $38                                       ; $495f: $ff
    rst $38                                       ; $4960: $ff
    rst $38                                       ; $4961: $ff
    db $ed                                        ; $4962: $ed
    rst $38                                       ; $4963: $ff
    db $fd                                        ; $4964: $fd
    rst $38                                       ; $4965: $ff
    ld e, l                                       ; $4966: $5d
    ld a, a                                       ; $4967: $7f
    ccf                                           ; $4968: $3f
    dec sp                                        ; $4969: $3b
    dec e                                         ; $496a: $1d
    dec de                                        ; $496b: $1b
    nop                                           ; $496c: $00
    rst $38                                       ; $496d: $ff
    rst $38                                       ; $496e: $ff
    rst $38                                       ; $496f: $ff
    rst $38                                       ; $4970: $ff
    rst $38                                       ; $4971: $ff
    rst $28                                       ; $4972: $ef
    rst $38                                       ; $4973: $ff
    rst $30                                       ; $4974: $f7
    rst $38                                       ; $4975: $ff
    db $db                                        ; $4976: $db
    rst $38                                       ; $4977: $ff
    cp $fa                                        ; $4978: $fe $fa
    call c, Call_000_00fc                         ; $497a: $dc $fc $00
    rst $38                                       ; $497d: $ff
    rst $38                                       ; $497e: $ff
    rst $38                                       ; $497f: $ff
    rst $00                                       ; $4980: $c7
    rst $00                                       ; $4981: $c7
    rst $00                                       ; $4982: $c7
    rst $00                                       ; $4983: $c7
    add e                                         ; $4984: $83
    add e                                         ; $4985: $83
    ld bc, $0001                                  ; $4986: $01 $01 $00
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    nop                                           ; $498c: $00
    rst $38                                       ; $498d: $ff
    rst $38                                       ; $498e: $ff
    rst $38                                       ; $498f: $ff
    rst $38                                       ; $4990: $ff
    rst $38                                       ; $4991: $ff
    cp [hl]                                       ; $4992: $be
    rst $38                                       ; $4993: $ff
    ld a, [hl]                                    ; $4994: $7e
    rst $38                                       ; $4995: $ff
    ld a, e                                       ; $4996: $7b
    rst $38                                       ; $4997: $ff
    rst $38                                       ; $4998: $ff
    rst $38                                       ; $4999: $ff
    ld a, e                                       ; $499a: $7b
    ld a, a                                       ; $499b: $7f
    nop                                           ; $499c: $00
    rst $38                                       ; $499d: $ff
    rst $38                                       ; $499e: $ff
    rst $38                                       ; $499f: $ff
    rst $38                                       ; $49a0: $ff
    rst $38                                       ; $49a1: $ff
    rst $28                                       ; $49a2: $ef
    rst $38                                       ; $49a3: $ff
    ld a, [$7cfe]                                 ; $49a4: $fa $fe $7c
    db $fc                                        ; $49a7: $fc
    ld hl, sp+$78                                 ; $49a8: $f8 $78
    or b                                          ; $49aa: $b0
    ld [hl], b                                    ; $49ab: $70
    nop                                           ; $49ac: $00
    rst $38                                       ; $49ad: $ff
    rst $38                                       ; $49ae: $ff
    rst $38                                       ; $49af: $ff
    rrca                                          ; $49b0: $0f
    rrca                                          ; $49b1: $0f
    ld [$0f0f], sp                                ; $49b2: $08 $0f $0f
    rrca                                          ; $49b5: $0f
    rlca                                          ; $49b6: $07
    rlca                                          ; $49b7: $07
    rlca                                          ; $49b8: $07
    rlca                                          ; $49b9: $07
    inc bc                                        ; $49ba: $03
    inc bc                                        ; $49bb: $03
    nop                                           ; $49bc: $00
    rst $38                                       ; $49bd: $ff
    rst $38                                       ; $49be: $ff
    rst $38                                       ; $49bf: $ff
    rst $38                                       ; $49c0: $ff
    rst $38                                       ; $49c1: $ff
    rst $38                                       ; $49c2: $ff
    rst $38                                       ; $49c3: $ff
    rst $38                                       ; $49c4: $ff
    rst $38                                       ; $49c5: $ff
    cp $fe                                        ; $49c6: $fe $fe
    ld a, [hl]                                    ; $49c8: $7e
    or $fc                                        ; $49c9: $f6 $fc
    ld a, h                                       ; $49cb: $7c
    nop                                           ; $49cc: $00
    rst $38                                       ; $49cd: $ff
    rst $38                                       ; $49ce: $ff
    rst $38                                       ; $49cf: $ff
    ld a, a                                       ; $49d0: $7f
    ld a, a                                       ; $49d1: $7f
    ld a, a                                       ; $49d2: $7f
    ld a, a                                       ; $49d3: $7f
    ld a, a                                       ; $49d4: $7f
    ld a, a                                       ; $49d5: $7f
    ld a, $3f                                     ; $49d6: $3e $3f
    ld a, $3f                                     ; $49d8: $3e $3f
    rra                                           ; $49da: $1f
    ld e, $00                                     ; $49db: $1e $00
    rst $38                                       ; $49dd: $ff
    rst $38                                       ; $49de: $ff
    rst $38                                       ; $49df: $ff
    ld hl, sp-$08                                 ; $49e0: $f8 $f8
    ld hl, sp-$08                                 ; $49e2: $f8 $f8
    cp b                                          ; $49e4: $b8
    ld hl, sp-$30                                 ; $49e5: $f8 $d0
    ldh a, [$f0]                                  ; $49e7: $f0 $f0
    ldh a, [$e0]                                  ; $49e9: $f0 $e0
    ldh [rP1], a                                  ; $49eb: $e0 $00
    rst $38                                       ; $49ed: $ff
    rst $38                                       ; $49ee: $ff
    rst $38                                       ; $49ef: $ff
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    nop                                           ; $49f3: $00
    nop                                           ; $49f4: $00
    nop                                           ; $49f5: $00
    rst $38                                       ; $49f6: $ff
    nop                                           ; $49f7: $00
    rra                                           ; $49f8: $1f
    rst $38                                       ; $49f9: $ff
    ld sp, hl                                     ; $49fa: $f9
    rlca                                          ; $49fb: $07
    nop                                           ; $49fc: $00
    rst $38                                       ; $49fd: $ff
    nop                                           ; $49fe: $00
    rst $38                                       ; $49ff: $ff
    nop                                           ; $4a00: $00
    nop                                           ; $4a01: $00
    nop                                           ; $4a02: $00
    nop                                           ; $4a03: $00
    nop                                           ; $4a04: $00
    inc bc                                        ; $4a05: $03
    rst $38                                       ; $4a06: $ff
    nop                                           ; $4a07: $00
    rst $38                                       ; $4a08: $ff
    rst $38                                       ; $4a09: $ff
    xor b                                         ; $4a0a: $a8
    rst $38                                       ; $4a0b: $ff
    nop                                           ; $4a0c: $00
    rst $38                                       ; $4a0d: $ff
    nop                                           ; $4a0e: $00
    rst $38                                       ; $4a0f: $ff
    rst $38                                       ; $4a10: $ff
    rst $38                                       ; $4a11: $ff
    rst $28                                       ; $4a12: $ef
    rst $38                                       ; $4a13: $ff
    rst $38                                       ; $4a14: $ff
    rst $28                                       ; $4a15: $ef
    rst $38                                       ; $4a16: $ff
    rst $28                                       ; $4a17: $ef
    ld a, [hl]                                    ; $4a18: $7e
    halt                                          ; $4a19: $76
    inc a                                         ; $4a1a: $3c
    inc a                                         ; $4a1b: $3c
    nop                                           ; $4a1c: $00
    rst $38                                       ; $4a1d: $ff
    rst $38                                       ; $4a1e: $ff
    rst $38                                       ; $4a1f: $ff
    rst $38                                       ; $4a20: $ff
    rst $38                                       ; $4a21: $ff
    rst $38                                       ; $4a22: $ff
    rst $38                                       ; $4a23: $ff
    rst $38                                       ; $4a24: $ff
    di                                            ; $4a25: $f3
    rst $38                                       ; $4a26: $ff
    db $fd                                        ; $4a27: $fd
    ld a, [hl]                                    ; $4a28: $7e
    ld a, [hl]                                    ; $4a29: $7e
    inc a                                         ; $4a2a: $3c
    inc a                                         ; $4a2b: $3c
    nop                                           ; $4a2c: $00
    rst $38                                       ; $4a2d: $ff
    rst $38                                       ; $4a2e: $ff
    rst $38                                       ; $4a2f: $ff
    ld a, a                                       ; $4a30: $7f
    ld a, a                                       ; $4a31: $7f
    ld a, e                                       ; $4a32: $7b
    ld a, a                                       ; $4a33: $7f
    daa                                           ; $4a34: $27
    ccf                                           ; $4a35: $3f
    rra                                           ; $4a36: $1f
    rra                                           ; $4a37: $1f
    rrca                                          ; $4a38: $0f
    rrca                                          ; $4a39: $0f
    rlca                                          ; $4a3a: $07
    rlca                                          ; $4a3b: $07
    nop                                           ; $4a3c: $00
    rst $38                                       ; $4a3d: $ff
    rst $38                                       ; $4a3e: $ff
    rst $38                                       ; $4a3f: $ff
    rst $38                                       ; $4a40: $ff
    rst $38                                       ; $4a41: $ff
    rst $28                                       ; $4a42: $ef
    rst $38                                       ; $4a43: $ff
    db $ed                                        ; $4a44: $ed
    rst $38                                       ; $4a45: $ff
    ld h, a                                       ; $4a46: $67
    rst $38                                       ; $4a47: $ff
    rst $38                                       ; $4a48: $ff
    rst $28                                       ; $4a49: $ef
    ld [hl], a                                    ; $4a4a: $77
    rst $28                                       ; $4a4b: $ef
    nop                                           ; $4a4c: $00
    rst $38                                       ; $4a4d: $ff
    rst $38                                       ; $4a4e: $ff
    rst $38                                       ; $4a4f: $ff
    pop af                                        ; $4a50: $f1
    pop af                                        ; $4a51: $f1
    pop af                                        ; $4a52: $f1
    pop af                                        ; $4a53: $f1
    ldh [$e0], a                                  ; $4a54: $e0 $e0
    ld b, b                                       ; $4a56: $40
    ret nz                                        ; $4a57: $c0

    add b                                         ; $4a58: $80
    add b                                         ; $4a59: $80
    nop                                           ; $4a5a: $00
    nop                                           ; $4a5b: $00
    nop                                           ; $4a5c: $00
    rst $38                                       ; $4a5d: $ff
    rst $38                                       ; $4a5e: $ff
    rst $38                                       ; $4a5f: $ff
    rst $38                                       ; $4a60: $ff
    rst $38                                       ; $4a61: $ff
    db $ed                                        ; $4a62: $ed
    rst $38                                       ; $4a63: $ff
    cp e                                          ; $4a64: $bb
    rst $38                                       ; $4a65: $ff
    ld a, e                                       ; $4a66: $7b
    ld a, a                                       ; $4a67: $7f
    ccf                                           ; $4a68: $3f
    scf                                           ; $4a69: $37
    dec de                                        ; $4a6a: $1b
    rla                                           ; $4a6b: $17
    nop                                           ; $4a6c: $00
    rst $38                                       ; $4a6d: $ff
    rst $38                                       ; $4a6e: $ff
    rst $38                                       ; $4a6f: $ff
    rst $38                                       ; $4a70: $ff
    rst $38                                       ; $4a71: $ff
    rst $18                                       ; $4a72: $df
    rst $38                                       ; $4a73: $ff
    rst $28                                       ; $4a74: $ef
    rst $38                                       ; $4a75: $ff
    xor a                                         ; $4a76: $af
    rst $38                                       ; $4a77: $ff
    cp $f6                                        ; $4a78: $fe $f6
    cp h                                          ; $4a7a: $bc
    db $f4                                        ; $4a7b: $f4
    nop                                           ; $4a7c: $00
    rst $38                                       ; $4a7d: $ff
    rst $38                                       ; $4a7e: $ff
    rst $38                                       ; $4a7f: $ff
    rst $00                                       ; $4a80: $c7
    rst $00                                       ; $4a81: $c7
    rst $00                                       ; $4a82: $c7
    rst $00                                       ; $4a83: $c7
    add d                                         ; $4a84: $82
    add e                                         ; $4a85: $83
    ld bc, $0001                                  ; $4a86: $01 $01 $00
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    nop                                           ; $4a8b: $00
    nop                                           ; $4a8c: $00
    rst $38                                       ; $4a8d: $ff
    rst $38                                       ; $4a8e: $ff
    rst $38                                       ; $4a8f: $ff
    rst $38                                       ; $4a90: $ff
    rst $38                                       ; $4a91: $ff
    cp [hl]                                       ; $4a92: $be
    rst $38                                       ; $4a93: $ff
    ld a, [hl]                                    ; $4a94: $7e
    rst $38                                       ; $4a95: $ff
    or $ff                                        ; $4a96: $f6 $ff
    rst $38                                       ; $4a98: $ff
    cp $77                                        ; $4a99: $fe $77
    ld a, [hl]                                    ; $4a9b: $7e
    nop                                           ; $4a9c: $00
    rst $38                                       ; $4a9d: $ff
    rst $38                                       ; $4a9e: $ff
    rst $38                                       ; $4a9f: $ff
    rst $38                                       ; $4aa0: $ff
    rst $38                                       ; $4aa1: $ff
    rst $38                                       ; $4aa2: $ff
    rst $38                                       ; $4aa3: $ff
    sbc $fe                                       ; $4aa4: $de $fe
    ld [hl], h                                    ; $4aa6: $74
    db $fc                                        ; $4aa7: $fc
    ld hl, sp-$08                                 ; $4aa8: $f8 $f8
    ld [hl], b                                    ; $4aaa: $70
    ldh a, [rP1]                                  ; $4aab: $f0 $00
    rst $38                                       ; $4aad: $ff
    rst $38                                       ; $4aae: $ff
    rst $38                                       ; $4aaf: $ff
    rrca                                          ; $4ab0: $0f
    rrca                                          ; $4ab1: $0f
    rrca                                          ; $4ab2: $0f
    rrca                                          ; $4ab3: $0f
    ld c, $0f                                     ; $4ab4: $0e $0f
    dec b                                         ; $4ab6: $05
    rlca                                          ; $4ab7: $07
    rlca                                          ; $4ab8: $07
    rlca                                          ; $4ab9: $07
    inc bc                                        ; $4aba: $03
    inc bc                                        ; $4abb: $03
    nop                                           ; $4abc: $00
    rst $38                                       ; $4abd: $ff
    rst $38                                       ; $4abe: $ff
    rst $38                                       ; $4abf: $ff
    rst $38                                       ; $4ac0: $ff
    rst $38                                       ; $4ac1: $ff
    rst $38                                       ; $4ac2: $ff
    rst $38                                       ; $4ac3: $ff
    rst $38                                       ; $4ac4: $ff
    rst $38                                       ; $4ac5: $ff
    cp $fe                                        ; $4ac6: $fe $fe
    cp $fe                                        ; $4ac8: $fe $fe
    db $fc                                        ; $4aca: $fc
    call c, $ff00                                 ; $4acb: $dc $00 $ff
    rst $38                                       ; $4ace: $ff
    rst $38                                       ; $4acf: $ff
    ld a, a                                       ; $4ad0: $7f
    ld a, a                                       ; $4ad1: $7f
    ld a, a                                       ; $4ad2: $7f
    ld a, a                                       ; $4ad3: $7f
    ld a, a                                       ; $4ad4: $7f
    ld a, a                                       ; $4ad5: $7f
    dec a                                         ; $4ad6: $3d
    ccf                                           ; $4ad7: $3f
    dec sp                                        ; $4ad8: $3b
    ccf                                           ; $4ad9: $3f
    rra                                           ; $4ada: $1f
    dec de                                        ; $4adb: $1b
    nop                                           ; $4adc: $00
    rst $38                                       ; $4add: $ff
    rst $38                                       ; $4ade: $ff
    rst $38                                       ; $4adf: $ff
    ld hl, sp-$08                                 ; $4ae0: $f8 $f8
    add sp, -$08                                  ; $4ae2: $e8 $f8
    ld hl, sp-$08                                 ; $4ae4: $f8 $f8
    ld [hl], b                                    ; $4ae6: $70
    ldh a, [$f0]                                  ; $4ae7: $f0 $f0
    or b                                          ; $4ae9: $b0
    ldh [$e0], a                                  ; $4aea: $e0 $e0
    nop                                           ; $4aec: $00
    rst $38                                       ; $4aed: $ff
    rst $38                                       ; $4aee: $ff
    rst $38                                       ; $4aef: $ff
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    nop                                           ; $4af4: $00
    nop                                           ; $4af5: $00
    rst $38                                       ; $4af6: $ff
    nop                                           ; $4af7: $00
    rra                                           ; $4af8: $1f
    rst $38                                       ; $4af9: $ff

jr_076_4afa:
    ld sp, hl                                     ; $4afa: $f9
    rlca                                          ; $4afb: $07
    nop                                           ; $4afc: $00
    rst $38                                       ; $4afd: $ff
    nop                                           ; $4afe: $00
    rst $38                                       ; $4aff: $ff
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    nop                                           ; $4b04: $00
    inc bc                                        ; $4b05: $03
    rst $38                                       ; $4b06: $ff
    nop                                           ; $4b07: $00
    rst $38                                       ; $4b08: $ff
    rst $38                                       ; $4b09: $ff
    xor b                                         ; $4b0a: $a8
    rst $38                                       ; $4b0b: $ff
    nop                                           ; $4b0c: $00
    rst $38                                       ; $4b0d: $ff
    nop                                           ; $4b0e: $00
    rst $38                                       ; $4b0f: $ff
    rst $38                                       ; $4b10: $ff
    nop                                           ; $4b11: $00
    rst $38                                       ; $4b12: $ff
    nop                                           ; $4b13: $00
    rst $38                                       ; $4b14: $ff
    nop                                           ; $4b15: $00
    ld [hl], a                                    ; $4b16: $77
    nop                                           ; $4b17: $00
    rst $38                                       ; $4b18: $ff
    nop                                           ; $4b19: $00
    ld d, l                                       ; $4b1a: $55
    nop                                           ; $4b1b: $00
    cp e                                          ; $4b1c: $bb
    nop                                           ; $4b1d: $00
    ld d, l                                       ; $4b1e: $55
    nop                                           ; $4b1f: $00
    xor d                                         ; $4b20: $aa
    nop                                           ; $4b21: $00
    ld d, l                                       ; $4b22: $55
    nop                                           ; $4b23: $00
    xor d                                         ; $4b24: $aa
    nop                                           ; $4b25: $00

jr_076_4b26:
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    xor d                                         ; $4b28: $aa
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    nop                                           ; $4b2c: $00
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    nop                                           ; $4b30: $00

jr_076_4b31:
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    nop                                           ; $4b33: $00
    nop                                           ; $4b34: $00
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    nop                                           ; $4b37: $00
    jr nc, jr_076_4afa                            ; $4b38: $30 $c0

    inc b                                         ; $4b3a: $04
    ld hl, sp+$41                                 ; $4b3b: $f8 $41

jr_076_4b3d:
    cp $44                                        ; $4b3d: $fe $44
    ei                                            ; $4b3f: $fb
    nop                                           ; $4b40: $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    nop                                           ; $4b43: $00
    nop                                           ; $4b44: $00
    nop                                           ; $4b45: $00
    nop                                           ; $4b46: $00
    nop                                           ; $4b47: $00
    ld bc, $0400                                  ; $4b48: $01 $00 $04
    inc bc                                        ; $4b4b: $03
    ld sp, $020e                                  ; $4b4c: $31 $0e $02
    db $fd                                        ; $4b4f: $fd
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    ld [$4507], sp                                ; $4b54: $08 $07 $45
    ld a, [hl-]                                   ; $4b57: $3a
    jr z, jr_076_4b31                             ; $4b58: $28 $d7

    ld [hl], h                                    ; $4b5a: $74
    adc e                                         ; $4b5b: $8b
    jr nz, jr_076_4b3d                            ; $4b5c: $20 $df

    nop                                           ; $4b5e: $00
    rst $38                                       ; $4b5f: $ff
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    jr nz, jr_076_4b26                            ; $4b64: $20 $c0

    ld [$00f0], sp                                ; $4b66: $08 $f0 $00
    rst $38                                       ; $4b69: $ff
    nop                                           ; $4b6a: $00
    rst $38                                       ; $4b6b: $ff
    nop                                           ; $4b6c: $00
    rst $38                                       ; $4b6d: $ff
    nop                                           ; $4b6e: $00
    rst $38                                       ; $4b6f: $ff
    ld l, b                                       ; $4b70: $68
    rst $30                                       ; $4b71: $f7
    pop hl                                        ; $4b72: $e1
    cp $f0                                        ; $4b73: $fe $f0
    rst $38                                       ; $4b75: $ff
    ldh [rIE], a                                  ; $4b76: $e0 $ff
    ldh [rIE], a                                  ; $4b78: $e0 $ff
    ldh a, [rIE]                                  ; $4b7a: $f0 $ff
    ret nz                                        ; $4b7c: $c0

    rst $38                                       ; $4b7d: $ff
    nop                                           ; $4b7e: $00
    rst $38                                       ; $4b7f: $ff
    nop                                           ; $4b80: $00
    rst $38                                       ; $4b81: $ff
    add hl, bc                                    ; $4b82: $09
    or $10                                        ; $4b83: $f6 $10
    rst $28                                       ; $4b85: $ef
    nop                                           ; $4b86: $00
    rst $38                                       ; $4b87: $ff
    nop                                           ; $4b88: $00
    rst $38                                       ; $4b89: $ff
    nop                                           ; $4b8a: $00
    rst $38                                       ; $4b8b: $ff
    nop                                           ; $4b8c: $00
    rst $38                                       ; $4b8d: $ff
    nop                                           ; $4b8e: $00
    rst $38                                       ; $4b8f: $ff
    add b                                         ; $4b90: $80
    ld a, a                                       ; $4b91: $7f
    nop                                           ; $4b92: $00
    rst $38                                       ; $4b93: $ff
    nop                                           ; $4b94: $00
    rst $38                                       ; $4b95: $ff
    nop                                           ; $4b96: $00
    rst $38                                       ; $4b97: $ff
    nop                                           ; $4b98: $00
    rst $38                                       ; $4b99: $ff
    nop                                           ; $4b9a: $00
    rst $38                                       ; $4b9b: $ff
    nop                                           ; $4b9c: $00
    rst $38                                       ; $4b9d: $ff
    nop                                           ; $4b9e: $00
    rst $38                                       ; $4b9f: $ff
    ld bc, $00ff                                  ; $4ba0: $01 $ff $00
    rst $38                                       ; $4ba3: $ff
    ld bc, $01ff                                  ; $4ba4: $01 $ff $01
    rst $38                                       ; $4ba7: $ff
    inc bc                                        ; $4ba8: $03
    rst $38                                       ; $4ba9: $ff
    nop                                           ; $4baa: $00
    rst $38                                       ; $4bab: $ff
    nop                                           ; $4bac: $00
    rst $38                                       ; $4bad: $ff
    nop                                           ; $4bae: $00
    rst $38                                       ; $4baf: $ff
    nop                                           ; $4bb0: $00
    rst $38                                       ; $4bb1: $ff
    nop                                           ; $4bb2: $00
    rst $38                                       ; $4bb3: $ff
    nop                                           ; $4bb4: $00
    rst $38                                       ; $4bb5: $ff
    nop                                           ; $4bb6: $00
    rst $38                                       ; $4bb7: $ff
    nop                                           ; $4bb8: $00
    rst $38                                       ; $4bb9: $ff
    nop                                           ; $4bba: $00
    rst $38                                       ; $4bbb: $ff
    nop                                           ; $4bbc: $00
    rst $38                                       ; $4bbd: $ff
    nop                                           ; $4bbe: $00
    rst $38                                       ; $4bbf: $ff
    nop                                           ; $4bc0: $00
    rst $38                                       ; $4bc1: $ff
    nop                                           ; $4bc2: $00
    rst $38                                       ; $4bc3: $ff
    ld [$08ff], sp                                ; $4bc4: $08 $ff $08
    rst $38                                       ; $4bc7: $ff
    ld [$08ff], sp                                ; $4bc8: $08 $ff $08
    rst $38                                       ; $4bcb: $ff
    inc c                                         ; $4bcc: $0c
    rst $38                                       ; $4bcd: $ff
    inc c                                         ; $4bce: $0c
    rst $38                                       ; $4bcf: $ff
    nop                                           ; $4bd0: $00
    rst $38                                       ; $4bd1: $ff
    nop                                           ; $4bd2: $00
    rst $38                                       ; $4bd3: $ff
    nop                                           ; $4bd4: $00
    rst $38                                       ; $4bd5: $ff
    add b                                         ; $4bd6: $80
    rst $38                                       ; $4bd7: $ff
    nop                                           ; $4bd8: $00
    rst $38                                       ; $4bd9: $ff
    nop                                           ; $4bda: $00
    rst $38                                       ; $4bdb: $ff
    nop                                           ; $4bdc: $00
    rst $38                                       ; $4bdd: $ff
    nop                                           ; $4bde: $00
    rst $38                                       ; $4bdf: $ff
    ld e, $ff                                     ; $4be0: $1e $ff
    ld e, $ff                                     ; $4be2: $1e $ff
    ccf                                           ; $4be4: $3f
    rst $38                                       ; $4be5: $ff
    ld a, a                                       ; $4be6: $7f
    rst $38                                       ; $4be7: $ff
    ccf                                           ; $4be8: $3f
    rst $38                                       ; $4be9: $ff
    ld e, $ff                                     ; $4bea: $1e $ff
    rra                                           ; $4bec: $1f
    rst $38                                       ; $4bed: $ff
    ccf                                           ; $4bee: $3f
    rst $38                                       ; $4bef: $ff
    add b                                         ; $4bf0: $80
    rst $38                                       ; $4bf1: $ff
    add b                                         ; $4bf2: $80
    rst $38                                       ; $4bf3: $ff
    ret nz                                        ; $4bf4: $c0

    rst $38                                       ; $4bf5: $ff
    ldh [rIE], a                                  ; $4bf6: $e0 $ff
    nop                                           ; $4bf8: $00
    rst $38                                       ; $4bf9: $ff
    nop                                           ; $4bfa: $00
    rst $38                                       ; $4bfb: $ff
    nop                                           ; $4bfc: $00
    rst $38                                       ; $4bfd: $ff
    nop                                           ; $4bfe: $00
    rst $38                                       ; $4bff: $ff
    ccf                                           ; $4c00: $3f
    rst $38                                       ; $4c01: $ff
    ccf                                           ; $4c02: $3f
    rst $38                                       ; $4c03: $ff
    ld a, a                                       ; $4c04: $7f
    rst $38                                       ; $4c05: $ff
    rst $38                                       ; $4c06: $ff
    rst $38                                       ; $4c07: $ff
    inc c                                         ; $4c08: $0c
    rst $38                                       ; $4c09: $ff
    inc c                                         ; $4c0a: $0c
    rst $38                                       ; $4c0b: $ff
    nop                                           ; $4c0c: $00
    rst $38                                       ; $4c0d: $ff
    nop                                           ; $4c0e: $00
    rst $38                                       ; $4c0f: $ff
    nop                                           ; $4c10: $00
    rst $38                                       ; $4c11: $ff
    nop                                           ; $4c12: $00
    rst $38                                       ; $4c13: $ff
    nop                                           ; $4c14: $00
    rst $38                                       ; $4c15: $ff
    nop                                           ; $4c16: $00
    rst $38                                       ; $4c17: $ff
    nop                                           ; $4c18: $00
    rst $38                                       ; $4c19: $ff
    nop                                           ; $4c1a: $00
    rst $38                                       ; $4c1b: $ff
    nop                                           ; $4c1c: $00
    rst $38                                       ; $4c1d: $ff
    nop                                           ; $4c1e: $00
    rst $38                                       ; $4c1f: $ff
    nop                                           ; $4c20: $00
    rst $38                                       ; $4c21: $ff
    nop                                           ; $4c22: $00
    rst $38                                       ; $4c23: $ff
    nop                                           ; $4c24: $00
    rst $38                                       ; $4c25: $ff
    nop                                           ; $4c26: $00
    rst $38                                       ; $4c27: $ff
    nop                                           ; $4c28: $00
    rst $38                                       ; $4c29: $ff
    nop                                           ; $4c2a: $00
    rst $38                                       ; $4c2b: $ff
    nop                                           ; $4c2c: $00
    rst $38                                       ; $4c2d: $ff
    nop                                           ; $4c2e: $00
    rst $38                                       ; $4c2f: $ff
    nop                                           ; $4c30: $00
    rst $38                                       ; $4c31: $ff
    nop                                           ; $4c32: $00
    rst $38                                       ; $4c33: $ff
    nop                                           ; $4c34: $00
    rst $38                                       ; $4c35: $ff
    nop                                           ; $4c36: $00
    rst $38                                       ; $4c37: $ff
    nop                                           ; $4c38: $00
    rst $38                                       ; $4c39: $ff
    nop                                           ; $4c3a: $00
    rst $38                                       ; $4c3b: $ff
    nop                                           ; $4c3c: $00
    rst $38                                       ; $4c3d: $ff
    rra                                           ; $4c3e: $1f
    ldh [rP1], a                                  ; $4c3f: $e0 $00
    rst $38                                       ; $4c41: $ff
    nop                                           ; $4c42: $00
    rst $38                                       ; $4c43: $ff
    nop                                           ; $4c44: $00
    rst $38                                       ; $4c45: $ff
    nop                                           ; $4c46: $00
    rst $38                                       ; $4c47: $ff
    nop                                           ; $4c48: $00
    rst $38                                       ; $4c49: $ff
    nop                                           ; $4c4a: $00
    rst $38                                       ; $4c4b: $ff
    nop                                           ; $4c4c: $00
    rst $38                                       ; $4c4d: $ff
    ld hl, sp+$07                                 ; $4c4e: $f8 $07
    nop                                           ; $4c50: $00
    rst $38                                       ; $4c51: $ff
    nop                                           ; $4c52: $00
    rst $38                                       ; $4c53: $ff
    cp $01                                        ; $4c54: $fe $01
    ld a, a                                       ; $4c56: $7f
    nop                                           ; $4c57: $00
    and d                                         ; $4c58: $a2
    nop                                           ; $4c59: $00
    stop                                          ; $4c5a: $10 $00
    nop                                           ; $4c5c: $00
    nop                                           ; $4c5d: $00
    nop                                           ; $4c5e: $00
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    rst $38                                       ; $4c61: $ff
    ld bc, $0ffe                                  ; $4c62: $01 $fe $0f
    ldh a, [rIE]                                  ; $4c65: $f0 $ff
    nop                                           ; $4c67: $00
    ld b, b                                       ; $4c68: $40
    nop                                           ; $4c69: $00
    nop                                           ; $4c6a: $00
    nop                                           ; $4c6b: $00
    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00
    nop                                           ; $4c6e: $00
    nop                                           ; $4c6f: $00
    cp $00                                        ; $4c70: $fe $00
    db $f4                                        ; $4c72: $f4
    nop                                           ; $4c73: $00
    xor b                                         ; $4c74: $a8
    nop                                           ; $4c75: $00
    ld d, b                                       ; $4c76: $50
    nop                                           ; $4c77: $00
    add b                                         ; $4c78: $80
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    nop                                           ; $4c7d: $00
    nop                                           ; $4c7e: $00
    nop                                           ; $4c7f: $00
    rst $38                                       ; $4c80: $ff
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    nop                                           ; $4c84: $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    nop                                           ; $4c87: $00
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    nop                                           ; $4c8d: $00
    nop                                           ; $4c8e: $00
    nop                                           ; $4c8f: $00
    rst $38                                       ; $4c90: $ff
    nop                                           ; $4c91: $00
    cp [hl]                                       ; $4c92: $be
    ld bc, $08f6                                  ; $4c93: $01 $f6 $08
    rst $38                                       ; $4c96: $ff
    nop                                           ; $4c97: $00
    rst $28                                       ; $4c98: $ef
    nop                                           ; $4c99: $00
    ld a, a                                       ; $4c9a: $7f
    add b                                         ; $4c9b: $80
    ei                                            ; $4c9c: $fb
    nop                                           ; $4c9d: $00
    rst $38                                       ; $4c9e: $ff
    nop                                           ; $4c9f: $00
    ei                                            ; $4ca0: $fb
    inc b                                         ; $4ca1: $04
    sbc $00                                       ; $4ca2: $de $00
    rst $38                                       ; $4ca4: $ff
    nop                                           ; $4ca5: $00
    rst $28                                       ; $4ca6: $ef
    nop                                           ; $4ca7: $00
    cp e                                          ; $4ca8: $bb
    inc b                                         ; $4ca9: $04
    rst $38                                       ; $4caa: $ff
    nop                                           ; $4cab: $00
    cp a                                          ; $4cac: $bf
    nop                                           ; $4cad: $00
    cp $00                                        ; $4cae: $fe $00
    rst $38                                       ; $4cb0: $ff
    nop                                           ; $4cb1: $00
    ei                                            ; $4cb2: $fb
    nop                                           ; $4cb3: $00
    cp a                                          ; $4cb4: $bf
    nop                                           ; $4cb5: $00
    or $08                                        ; $4cb6: $f6 $08
    ld a, a                                       ; $4cb8: $7f
    nop                                           ; $4cb9: $00
    rst $38                                       ; $4cba: $ff
    nop                                           ; $4cbb: $00
    cp $01                                        ; $4cbc: $fe $01
    rst $28                                       ; $4cbe: $ef
    nop                                           ; $4cbf: $00
    db $fd                                        ; $4cc0: $fd
    ld [bc], a                                    ; $4cc1: $02
    rst $10                                       ; $4cc2: $d7

jr_076_4cc3:
    jr nz, jr_076_4cc3                            ; $4cc3: $20 $fe

    ld bc, $00ff                                  ; $4cc5: $01 $ff $00
    ei                                            ; $4cc8: $fb
    nop                                           ; $4cc9: $00
    rst $18                                       ; $4cca: $df
    jr nz, @+$01                                  ; $4ccb: $20 $ff

    nop                                           ; $4ccd: $00
    rst $38                                       ; $4cce: $ff
    nop                                           ; $4ccf: $00
    ld l, a                                       ; $4cd0: $6f
    db $10                                        ; $4cd1: $10
    ei                                            ; $4cd2: $fb
    nop                                           ; $4cd3: $00
    rst $38                                       ; $4cd4: $ff
    nop                                           ; $4cd5: $00
    ld a, a                                       ; $4cd6: $7f
    nop                                           ; $4cd7: $00
    rst $38                                       ; $4cd8: $ff
    nop                                           ; $4cd9: $00
    xor $10                                       ; $4cda: $ee $10
    rst $38                                       ; $4cdc: $ff
    nop                                           ; $4cdd: $00
    rst $38                                       ; $4cde: $ff
    nop                                           ; $4cdf: $00
    cp a                                          ; $4ce0: $bf
    ld b, b                                       ; $4ce1: $40
    db $ed                                        ; $4ce2: $ed
    ld [bc], a                                    ; $4ce3: $02
    rst $38                                       ; $4ce4: $ff
    nop                                           ; $4ce5: $00
    cp a                                          ; $4ce6: $bf
    nop                                           ; $4ce7: $00
    sbc $20                                       ; $4ce8: $de $20
    rst $38                                       ; $4cea: $ff
    nop                                           ; $4ceb: $00
    rst $28                                       ; $4cec: $ef
    nop                                           ; $4ced: $00
    rst $38                                       ; $4cee: $ff
    nop                                           ; $4cef: $00
    add c                                         ; $4cf0: $81
    rst $38                                       ; $4cf1: $ff
    xor c                                         ; $4cf2: $a9
    rst $10                                       ; $4cf3: $d7
    or e                                          ; $4cf4: $b3
    push bc                                       ; $4cf5: $c5
    sub a                                         ; $4cf6: $97
    pop bc                                        ; $4cf7: $c1
    xor e                                         ; $4cf8: $ab
    pop de                                        ; $4cf9: $d1
    sub e                                         ; $4cfa: $93
    ret                                           ; $4cfb: $c9


    xor e                                         ; $4cfc: $ab
    pop de                                        ; $4cfd: $d1
    rst $10                                       ; $4cfe: $d7
    jp hl                                         ; $4cff: $e9


    rst $38                                       ; $4d00: $ff
    nop                                           ; $4d01: $00
    rst $38                                       ; $4d02: $ff
    nop                                           ; $4d03: $00
    ld a, [hl]                                    ; $4d04: $7e
    add c                                         ; $4d05: $81
    ld a, [hl]                                    ; $4d06: $7e
    add c                                         ; $4d07: $81
    ld a, [hl]                                    ; $4d08: $7e
    add c                                         ; $4d09: $81
    ld a, [hl]                                    ; $4d0a: $7e
    add c                                         ; $4d0b: $81
    ld a, [hl]                                    ; $4d0c: $7e
    add c                                         ; $4d0d: $81
    ld a, [hl]                                    ; $4d0e: $7e
    add c                                         ; $4d0f: $81
    rst $38                                       ; $4d10: $ff
    nop                                           ; $4d11: $00
    rst $38                                       ; $4d12: $ff
    nop                                           ; $4d13: $00
    rst $38                                       ; $4d14: $ff
    nop                                           ; $4d15: $00
    ld [hl], a                                    ; $4d16: $77
    nop                                           ; $4d17: $00
    rst $38                                       ; $4d18: $ff
    nop                                           ; $4d19: $00
    ld d, l                                       ; $4d1a: $55
    nop                                           ; $4d1b: $00
    cp e                                          ; $4d1c: $bb
    nop                                           ; $4d1d: $00
    ld d, l                                       ; $4d1e: $55
    nop                                           ; $4d1f: $00
    xor d                                         ; $4d20: $aa
    nop                                           ; $4d21: $00
    ld d, l                                       ; $4d22: $55
    nop                                           ; $4d23: $00
    xor d                                         ; $4d24: $aa
    nop                                           ; $4d25: $00
    nop                                           ; $4d26: $00
    nop                                           ; $4d27: $00
    xor d                                         ; $4d28: $aa
    nop                                           ; $4d29: $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    nop                                           ; $4d2c: $00
    nop                                           ; $4d2d: $00
    nop                                           ; $4d2e: $00
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    nop                                           ; $4d37: $00
    ld h, b                                       ; $4d38: $60
    add b                                         ; $4d39: $80
    ld [$02f0], sp                                ; $4d3a: $08 $f0 $02
    db $fc                                        ; $4d3d: $fc
    ld [$00f7], sp                                ; $4d3e: $08 $f7 $00
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    nop                                           ; $4d46: $00
    nop                                           ; $4d47: $00
    ld [bc], a                                    ; $4d48: $02
    ld bc, $0708                                  ; $4d49: $01 $08 $07
    ld h, d                                       ; $4d4c: $62
    dec e                                         ; $4d4d: $1d
    inc b                                         ; $4d4e: $04
    ei                                            ; $4d4f: $fb
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    db $10                                        ; $4d54: $10
    rrca                                          ; $4d55: $0f
    adc d                                         ; $4d56: $8a
    ld [hl], l                                    ; $4d57: $75
    ld d, b                                       ; $4d58: $50
    xor a                                         ; $4d59: $af
    add sp, $17                                   ; $4d5a: $e8 $17
    ld b, b                                       ; $4d5c: $40
    cp a                                          ; $4d5d: $bf
    nop                                           ; $4d5e: $00
    rst $38                                       ; $4d5f: $ff
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    nop                                           ; $4d63: $00
    ld b, c                                       ; $4d64: $41

jr_076_4d65:
    add c                                         ; $4d65: $81
    ld de, $01e1                                  ; $4d66: $11 $e1 $01
    rst $38                                       ; $4d69: $ff
    inc bc                                        ; $4d6a: $03
    rst $38                                       ; $4d6b: $ff
    ld bc, $03ff                                  ; $4d6c: $01 $ff $03
    rst $38                                       ; $4d6f: $ff
    sub b                                         ; $4d70: $90
    rst $28                                       ; $4d71: $ef
    add d                                         ; $4d72: $82
    db $fd                                        ; $4d73: $fd
    ret nz                                        ; $4d74: $c0

    rst $38                                       ; $4d75: $ff
    add b                                         ; $4d76: $80
    rst $38                                       ; $4d77: $ff
    add b                                         ; $4d78: $80
    rst $38                                       ; $4d79: $ff
    ret nz                                        ; $4d7a: $c0

    rst $38                                       ; $4d7b: $ff
    nop                                           ; $4d7c: $00
    rst $38                                       ; $4d7d: $ff
    nop                                           ; $4d7e: $00
    rst $38                                       ; $4d7f: $ff
    ld bc, $12fe                                  ; $4d80: $01 $fe $12
    db $ed                                        ; $4d83: $ed
    jr nz, jr_076_4d65                            ; $4d84: $20 $df

    nop                                           ; $4d86: $00
    rst $38                                       ; $4d87: $ff
    nop                                           ; $4d88: $00
    rst $38                                       ; $4d89: $ff
    nop                                           ; $4d8a: $00
    rst $38                                       ; $4d8b: $ff
    nop                                           ; $4d8c: $00
    rst $38                                       ; $4d8d: $ff
    nop                                           ; $4d8e: $00
    rst $38                                       ; $4d8f: $ff
    nop                                           ; $4d90: $00
    rst $38                                       ; $4d91: $ff
    nop                                           ; $4d92: $00
    rst $38                                       ; $4d93: $ff
    nop                                           ; $4d94: $00
    rst $38                                       ; $4d95: $ff
    nop                                           ; $4d96: $00
    rst $38                                       ; $4d97: $ff
    nop                                           ; $4d98: $00
    rst $38                                       ; $4d99: $ff
    nop                                           ; $4d9a: $00
    rst $38                                       ; $4d9b: $ff
    nop                                           ; $4d9c: $00
    rst $38                                       ; $4d9d: $ff
    nop                                           ; $4d9e: $00
    rst $38                                       ; $4d9f: $ff
    rlca                                          ; $4da0: $07
    rst $38                                       ; $4da1: $ff
    inc bc                                        ; $4da2: $03
    rst $38                                       ; $4da3: $ff
    rlca                                          ; $4da4: $07
    rst $38                                       ; $4da5: $ff
    rlca                                          ; $4da6: $07
    rst $38                                       ; $4da7: $ff
    rrca                                          ; $4da8: $0f
    rst $38                                       ; $4da9: $ff
    ld bc, $01ff                                  ; $4daa: $01 $ff $01
    rst $38                                       ; $4dad: $ff
    nop                                           ; $4dae: $00
    rst $38                                       ; $4daf: $ff
    nop                                           ; $4db0: $00
    rst $38                                       ; $4db1: $ff
    nop                                           ; $4db2: $00
    rst $38                                       ; $4db3: $ff
    nop                                           ; $4db4: $00
    rst $38                                       ; $4db5: $ff
    nop                                           ; $4db6: $00
    rst $38                                       ; $4db7: $ff
    nop                                           ; $4db8: $00
    rst $38                                       ; $4db9: $ff
    nop                                           ; $4dba: $00
    rst $38                                       ; $4dbb: $ff
    nop                                           ; $4dbc: $00
    rst $38                                       ; $4dbd: $ff
    nop                                           ; $4dbe: $00
    rst $38                                       ; $4dbf: $ff
    nop                                           ; $4dc0: $00
    rst $38                                       ; $4dc1: $ff
    nop                                           ; $4dc2: $00
    rst $38                                       ; $4dc3: $ff
    add b                                         ; $4dc4: $80
    rst $38                                       ; $4dc5: $ff
    add b                                         ; $4dc6: $80
    rst $38                                       ; $4dc7: $ff
    add b                                         ; $4dc8: $80
    rst $38                                       ; $4dc9: $ff
    add b                                         ; $4dca: $80
    rst $38                                       ; $4dcb: $ff
    ret nz                                        ; $4dcc: $c0

    rst $38                                       ; $4dcd: $ff
    ret nz                                        ; $4dce: $c0

    rst $38                                       ; $4dcf: $ff
    ld bc, $01ff                                  ; $4dd0: $01 $ff $01
    rst $38                                       ; $4dd3: $ff
    inc bc                                        ; $4dd4: $03
    rst $38                                       ; $4dd5: $ff
    rlca                                          ; $4dd6: $07
    rst $38                                       ; $4dd7: $ff
    inc bc                                        ; $4dd8: $03
    rst $38                                       ; $4dd9: $ff
    ld bc, $01ff                                  ; $4dda: $01 $ff $01
    rst $38                                       ; $4ddd: $ff
    inc bc                                        ; $4dde: $03
    rst $38                                       ; $4ddf: $ff
    ldh [rIE], a                                  ; $4de0: $e0 $ff
    ldh [rIE], a                                  ; $4de2: $e0 $ff
    ldh a, [rIE]                                  ; $4de4: $f0 $ff
    ld hl, sp-$01                                 ; $4de6: $f8 $ff
    ldh a, [rIE]                                  ; $4de8: $f0 $ff
    ldh [rIE], a                                  ; $4dea: $e0 $ff
    ldh a, [rIE]                                  ; $4dec: $f0 $ff
    ldh a, [rIE]                                  ; $4dee: $f0 $ff
    inc bc                                        ; $4df0: $03
    rst $38                                       ; $4df1: $ff
    inc bc                                        ; $4df2: $03
    rst $38                                       ; $4df3: $ff
    rlca                                          ; $4df4: $07
    rst $38                                       ; $4df5: $ff
    rrca                                          ; $4df6: $0f
    rst $38                                       ; $4df7: $ff
    nop                                           ; $4df8: $00
    rst $38                                       ; $4df9: $ff
    nop                                           ; $4dfa: $00
    rst $38                                       ; $4dfb: $ff
    nop                                           ; $4dfc: $00
    rst $38                                       ; $4dfd: $ff
    nop                                           ; $4dfe: $00
    rst $38                                       ; $4dff: $ff
    ld hl, sp-$01                                 ; $4e00: $f8 $ff
    ld hl, sp-$01                                 ; $4e02: $f8 $ff
    db $fc                                        ; $4e04: $fc
    rst $38                                       ; $4e05: $ff
    cp $ff                                        ; $4e06: $fe $ff
    ret nz                                        ; $4e08: $c0

    rst $38                                       ; $4e09: $ff
    ret nz                                        ; $4e0a: $c0

    rst $38                                       ; $4e0b: $ff
    nop                                           ; $4e0c: $00
    rst $38                                       ; $4e0d: $ff
    nop                                           ; $4e0e: $00
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
    nop                                           ; $4e22: $00
    rst $38                                       ; $4e23: $ff
    nop                                           ; $4e24: $00
    rst $38                                       ; $4e25: $ff
    nop                                           ; $4e26: $00
    rst $38                                       ; $4e27: $ff
    nop                                           ; $4e28: $00
    rst $38                                       ; $4e29: $ff
    nop                                           ; $4e2a: $00
    rst $38                                       ; $4e2b: $ff
    nop                                           ; $4e2c: $00
    rst $38                                       ; $4e2d: $ff
    rlca                                          ; $4e2e: $07
    ld hl, sp+$00                                 ; $4e2f: $f8 $00
    rst $38                                       ; $4e31: $ff
    nop                                           ; $4e32: $00
    rst $38                                       ; $4e33: $ff
    nop                                           ; $4e34: $00
    rst $38                                       ; $4e35: $ff
    nop                                           ; $4e36: $00
    rst $38                                       ; $4e37: $ff
    nop                                           ; $4e38: $00
    rst $38                                       ; $4e39: $ff
    nop                                           ; $4e3a: $00
    rst $38                                       ; $4e3b: $ff
    nop                                           ; $4e3c: $00
    rst $38                                       ; $4e3d: $ff
    cp $01                                        ; $4e3e: $fe $01
    nop                                           ; $4e40: $00
    rst $38                                       ; $4e41: $ff
    nop                                           ; $4e42: $00
    rst $38                                       ; $4e43: $ff
    nop                                           ; $4e44: $00
    rst $38                                       ; $4e45: $ff
    nop                                           ; $4e46: $00
    rst $38                                       ; $4e47: $ff
    nop                                           ; $4e48: $00
    rst $38                                       ; $4e49: $ff
    nop                                           ; $4e4a: $00
    rst $38                                       ; $4e4b: $ff
    nop                                           ; $4e4c: $00
    rst $38                                       ; $4e4d: $ff
    nop                                           ; $4e4e: $00
    rst $38                                       ; $4e4f: $ff
    nop                                           ; $4e50: $00
    rst $38                                       ; $4e51: $ff
    nop                                           ; $4e52: $00
    rst $38                                       ; $4e53: $ff
    add e                                         ; $4e54: $83
    ld a, h                                       ; $4e55: $7c
    rst $38                                       ; $4e56: $ff
    nop                                           ; $4e57: $00
    sub b                                         ; $4e58: $90
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    nop                                           ; $4e5b: $00
    nop                                           ; $4e5c: $00
    nop                                           ; $4e5d: $00
    nop                                           ; $4e5e: $00
    nop                                           ; $4e5f: $00
    ccf                                           ; $4e60: $3f
    ret nz                                        ; $4e61: $c0

    ld a, l                                       ; $4e62: $7d
    add b                                         ; $4e63: $80
    ld [$d400], a                                 ; $4e64: $ea $00 $d4
    nop                                           ; $4e67: $00
    jr nz, jr_076_4e6a                            ; $4e68: $20 $00

jr_076_4e6a:
    nop                                           ; $4e6a: $00
    nop                                           ; $4e6b: $00
    nop                                           ; $4e6c: $00
    nop                                           ; $4e6d: $00
    nop                                           ; $4e6e: $00
    nop                                           ; $4e6f: $00
    cp a                                          ; $4e70: $bf
    nop                                           ; $4e71: $00
    nop                                           ; $4e72: $00
    nop                                           ; $4e73: $00
    nop                                           ; $4e74: $00
    nop                                           ; $4e75: $00
    nop                                           ; $4e76: $00
    nop                                           ; $4e77: $00
    nop                                           ; $4e78: $00
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    nop                                           ; $4e7b: $00
    nop                                           ; $4e7c: $00
    nop                                           ; $4e7d: $00
    nop                                           ; $4e7e: $00
    nop                                           ; $4e7f: $00
    ret nz                                        ; $4e80: $c0

    ccf                                           ; $4e81: $3f
    jr nc, @+$11                                  ; $4e82: $30 $0f

    rra                                           ; $4e84: $1f
    nop                                           ; $4e85: $00
    dec b                                         ; $4e86: $05
    nop                                           ; $4e87: $00
    ld [bc], a                                    ; $4e88: $02
    nop                                           ; $4e89: $00
    ld bc, $0000                                  ; $4e8a: $01 $00 $00
    nop                                           ; $4e8d: $00
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    ei                                            ; $4e90: $fb
    inc b                                         ; $4e91: $04
    sbc $00                                       ; $4e92: $de $00
    rst $38                                       ; $4e94: $ff
    nop                                           ; $4e95: $00
    rst $28                                       ; $4e96: $ef
    nop                                           ; $4e97: $00
    cp e                                          ; $4e98: $bb
    inc b                                         ; $4e99: $04
    rst $38                                       ; $4e9a: $ff
    nop                                           ; $4e9b: $00
    cp a                                          ; $4e9c: $bf
    nop                                           ; $4e9d: $00
    cp $00                                        ; $4e9e: $fe $00
    rst $38                                       ; $4ea0: $ff
    nop                                           ; $4ea1: $00
    ei                                            ; $4ea2: $fb
    nop                                           ; $4ea3: $00
    cp a                                          ; $4ea4: $bf
    nop                                           ; $4ea5: $00
    or $08                                        ; $4ea6: $f6 $08
    ld a, a                                       ; $4ea8: $7f
    nop                                           ; $4ea9: $00
    rst $38                                       ; $4eaa: $ff
    nop                                           ; $4eab: $00
    cp $01                                        ; $4eac: $fe $01
    rst $28                                       ; $4eae: $ef
    nop                                           ; $4eaf: $00
    db $fd                                        ; $4eb0: $fd
    ld [bc], a                                    ; $4eb1: $02
    rst $10                                       ; $4eb2: $d7

jr_076_4eb3:
    jr nz, jr_076_4eb3                            ; $4eb3: $20 $fe

    ld bc, $00ff                                  ; $4eb5: $01 $ff $00
    ei                                            ; $4eb8: $fb
    nop                                           ; $4eb9: $00
    rst $18                                       ; $4eba: $df
    jr nz, @+$01                                  ; $4ebb: $20 $ff

    nop                                           ; $4ebd: $00
    rst $38                                       ; $4ebe: $ff
    nop                                           ; $4ebf: $00
    rst $38                                       ; $4ec0: $ff
    nop                                           ; $4ec1: $00
    cp [hl]                                       ; $4ec2: $be
    ld bc, $08f6                                  ; $4ec3: $01 $f6 $08
    rst $38                                       ; $4ec6: $ff
    nop                                           ; $4ec7: $00
    rst $28                                       ; $4ec8: $ef
    nop                                           ; $4ec9: $00
    ld a, a                                       ; $4eca: $7f
    add b                                         ; $4ecb: $80
    ei                                            ; $4ecc: $fb
    nop                                           ; $4ecd: $00
    rst $38                                       ; $4ece: $ff
    nop                                           ; $4ecf: $00
    cp a                                          ; $4ed0: $bf
    ld b, b                                       ; $4ed1: $40
    db $ed                                        ; $4ed2: $ed
    ld [bc], a                                    ; $4ed3: $02
    rst $38                                       ; $4ed4: $ff
    nop                                           ; $4ed5: $00
    cp a                                          ; $4ed6: $bf
    nop                                           ; $4ed7: $00
    sbc $20                                       ; $4ed8: $de $20
    rst $38                                       ; $4eda: $ff
    nop                                           ; $4edb: $00
    rst $28                                       ; $4edc: $ef
    nop                                           ; $4edd: $00
    rst $38                                       ; $4ede: $ff
    nop                                           ; $4edf: $00
    ld l, a                                       ; $4ee0: $6f
    db $10                                        ; $4ee1: $10
    ei                                            ; $4ee2: $fb
    nop                                           ; $4ee3: $00
    rst $38                                       ; $4ee4: $ff
    nop                                           ; $4ee5: $00
    ld a, a                                       ; $4ee6: $7f
    nop                                           ; $4ee7: $00
    rst $38                                       ; $4ee8: $ff
    nop                                           ; $4ee9: $00
    xor $10                                       ; $4eea: $ee $10
    rst $38                                       ; $4eec: $ff
    nop                                           ; $4eed: $00
    rst $38                                       ; $4eee: $ff
    nop                                           ; $4eef: $00
    rst $38                                       ; $4ef0: $ff
    nop                                           ; $4ef1: $00
    rst $38                                       ; $4ef2: $ff
    nop                                           ; $4ef3: $00
    ld a, [hl]                                    ; $4ef4: $7e
    add c                                         ; $4ef5: $81
    ld a, [hl]                                    ; $4ef6: $7e
    add c                                         ; $4ef7: $81
    ld a, [hl]                                    ; $4ef8: $7e
    add c                                         ; $4ef9: $81
    ld a, [hl]                                    ; $4efa: $7e
    add c                                         ; $4efb: $81
    ld a, [hl]                                    ; $4efc: $7e
    add c                                         ; $4efd: $81
    ld a, [hl]                                    ; $4efe: $7e
    add c                                         ; $4eff: $81
    add c                                         ; $4f00: $81
    rst $38                                       ; $4f01: $ff
    xor c                                         ; $4f02: $a9
    rst $10                                       ; $4f03: $d7
    or e                                          ; $4f04: $b3
    push bc                                       ; $4f05: $c5
    sub a                                         ; $4f06: $97
    pop bc                                        ; $4f07: $c1
    xor e                                         ; $4f08: $ab
    pop de                                        ; $4f09: $d1
    sub e                                         ; $4f0a: $93
    ret                                           ; $4f0b: $c9


    xor e                                         ; $4f0c: $ab
    pop de                                        ; $4f0d: $d1
    rst $10                                       ; $4f0e: $d7
    jp hl                                         ; $4f0f: $e9


    rst $38                                       ; $4f10: $ff
    nop                                           ; $4f11: $00
    rst $38                                       ; $4f12: $ff
    nop                                           ; $4f13: $00
    rst $38                                       ; $4f14: $ff
    nop                                           ; $4f15: $00
    xor $00                                       ; $4f16: $ee $00
    rst $38                                       ; $4f18: $ff
    nop                                           ; $4f19: $00
    xor d                                         ; $4f1a: $aa
    nop                                           ; $4f1b: $00
    ld [hl], a                                    ; $4f1c: $77
    nop                                           ; $4f1d: $00
    xor d                                         ; $4f1e: $aa
    nop                                           ; $4f1f: $00
    ld d, l                                       ; $4f20: $55
    nop                                           ; $4f21: $00
    xor d                                         ; $4f22: $aa
    nop                                           ; $4f23: $00
    ld d, l                                       ; $4f24: $55
    nop                                           ; $4f25: $00
    nop                                           ; $4f26: $00
    nop                                           ; $4f27: $00
    ld d, l                                       ; $4f28: $55
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    nop                                           ; $4f2c: $00
    nop                                           ; $4f2d: $00
    nop                                           ; $4f2e: $00
    nop                                           ; $4f2f: $00
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    nop                                           ; $4f32: $00
    nop                                           ; $4f33: $00
    nop                                           ; $4f34: $00
    nop                                           ; $4f35: $00
    nop                                           ; $4f36: $00
    nop                                           ; $4f37: $00
    ret nz                                        ; $4f38: $c0

    nop                                           ; $4f39: $00
    db $10                                        ; $4f3a: $10
    ldh [rDIV], a                                 ; $4f3b: $e0 $04
    ld hl, sp+$10                                 ; $4f3d: $f8 $10
    rst $28                                       ; $4f3f: $ef
    nop                                           ; $4f40: $00
    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    nop                                           ; $4f43: $00
    nop                                           ; $4f44: $00
    nop                                           ; $4f45: $00
    ld bc, $0400                                  ; $4f46: $01 $00 $04
    inc bc                                        ; $4f49: $03
    ld de, $c40e                                  ; $4f4a: $11 $0e $c4
    dec sp                                        ; $4f4d: $3b
    ld [$00f7], sp                                ; $4f4e: $08 $f7 $00

jr_076_4f51:
    nop                                           ; $4f51: $00
    nop                                           ; $4f52: $00
    nop                                           ; $4f53: $00
    jr nz, jr_076_4f75                            ; $4f54: $20 $1f

    inc d                                         ; $4f56: $14
    db $eb                                        ; $4f57: $eb
    and b                                         ; $4f58: $a0
    ld e, a                                       ; $4f59: $5f
    ret nc                                        ; $4f5a: $d0

    cpl                                           ; $4f5b: $2f
    add b                                         ; $4f5c: $80
    ld a, a                                       ; $4f5d: $7f
    nop                                           ; $4f5e: $00
    rst $38                                       ; $4f5f: $ff
    nop                                           ; $4f60: $00
    nop                                           ; $4f61: $00
    nop                                           ; $4f62: $00
    nop                                           ; $4f63: $00
    add h                                         ; $4f64: $84
    inc b                                         ; $4f65: $04
    ld h, $c6                                     ; $4f66: $26 $c6
    ld b, $ff                                     ; $4f68: $06 $ff
    rrca                                          ; $4f6a: $0f
    rst $38                                       ; $4f6b: $ff
    ld b, $ff                                     ; $4f6c: $06 $ff
    rrca                                          ; $4f6e: $0f
    rst $38                                       ; $4f6f: $ff
    jr nz, jr_076_4f51                            ; $4f70: $20 $df

    inc b                                         ; $4f72: $04
    ei                                            ; $4f73: $fb
    nop                                           ; $4f74: $00

jr_076_4f75:
    rst $38                                       ; $4f75: $ff
    nop                                           ; $4f76: $00
    rst $38                                       ; $4f77: $ff
    nop                                           ; $4f78: $00
    rst $38                                       ; $4f79: $ff
    nop                                           ; $4f7a: $00
    rst $38                                       ; $4f7b: $ff
    nop                                           ; $4f7c: $00
    rst $38                                       ; $4f7d: $ff
    nop                                           ; $4f7e: $00
    rst $38                                       ; $4f7f: $ff
    ld [bc], a                                    ; $4f80: $02
    db $fd                                        ; $4f81: $fd
    inc h                                         ; $4f82: $24
    db $db                                        ; $4f83: $db
    ld b, b                                       ; $4f84: $40
    cp a                                          ; $4f85: $bf
    nop                                           ; $4f86: $00
    rst $38                                       ; $4f87: $ff
    nop                                           ; $4f88: $00
    rst $38                                       ; $4f89: $ff
    nop                                           ; $4f8a: $00
    rst $38                                       ; $4f8b: $ff
    nop                                           ; $4f8c: $00
    rst $38                                       ; $4f8d: $ff
    nop                                           ; $4f8e: $00
    rst $38                                       ; $4f8f: $ff
    nop                                           ; $4f90: $00
    rst $38                                       ; $4f91: $ff
    nop                                           ; $4f92: $00
    rst $38                                       ; $4f93: $ff
    nop                                           ; $4f94: $00
    rst $38                                       ; $4f95: $ff
    nop                                           ; $4f96: $00
    rst $38                                       ; $4f97: $ff
    nop                                           ; $4f98: $00
    rst $38                                       ; $4f99: $ff
    nop                                           ; $4f9a: $00
    rst $38                                       ; $4f9b: $ff
    nop                                           ; $4f9c: $00
    rst $38                                       ; $4f9d: $ff
    nop                                           ; $4f9e: $00
    rst $38                                       ; $4f9f: $ff
    rra                                           ; $4fa0: $1f
    rst $38                                       ; $4fa1: $ff
    rrca                                          ; $4fa2: $0f
    rst $38                                       ; $4fa3: $ff
    rra                                           ; $4fa4: $1f
    rst $38                                       ; $4fa5: $ff
    rra                                           ; $4fa6: $1f
    rst $38                                       ; $4fa7: $ff
    ccf                                           ; $4fa8: $3f
    rst $38                                       ; $4fa9: $ff
    ld b, $ff                                     ; $4faa: $06 $ff
    ld b, $ff                                     ; $4fac: $06 $ff
    nop                                           ; $4fae: $00
    rst $38                                       ; $4faf: $ff
    nop                                           ; $4fb0: $00
    rst $38                                       ; $4fb1: $ff
    nop                                           ; $4fb2: $00
    rst $38                                       ; $4fb3: $ff
    ld [$08ff], sp                                ; $4fb4: $08 $ff $08
    rst $38                                       ; $4fb7: $ff
    ld [$08ff], sp                                ; $4fb8: $08 $ff $08
    rst $38                                       ; $4fbb: $ff
    inc c                                         ; $4fbc: $0c
    rst $38                                       ; $4fbd: $ff
    inc c                                         ; $4fbe: $0c
    rst $38                                       ; $4fbf: $ff
    nop                                           ; $4fc0: $00
    rst $38                                       ; $4fc1: $ff
    nop                                           ; $4fc2: $00
    rst $38                                       ; $4fc3: $ff
    nop                                           ; $4fc4: $00
    rst $38                                       ; $4fc5: $ff
    nop                                           ; $4fc6: $00
    rst $38                                       ; $4fc7: $ff
    nop                                           ; $4fc8: $00
    rst $38                                       ; $4fc9: $ff
    nop                                           ; $4fca: $00
    rst $38                                       ; $4fcb: $ff
    nop                                           ; $4fcc: $00
    rst $38                                       ; $4fcd: $ff
    nop                                           ; $4fce: $00
    rst $38                                       ; $4fcf: $ff
    ld e, $ff                                     ; $4fd0: $1e $ff
    ld e, $ff                                     ; $4fd2: $1e $ff
    ccf                                           ; $4fd4: $3f
    rst $38                                       ; $4fd5: $ff
    ld a, a                                       ; $4fd6: $7f
    rst $38                                       ; $4fd7: $ff
    ccf                                           ; $4fd8: $3f
    rst $38                                       ; $4fd9: $ff
    ld e, $ff                                     ; $4fda: $1e $ff
    rra                                           ; $4fdc: $1f
    rst $38                                       ; $4fdd: $ff
    ccf                                           ; $4fde: $3f
    rst $38                                       ; $4fdf: $ff
    nop                                           ; $4fe0: $00
    rst $38                                       ; $4fe1: $ff
    nop                                           ; $4fe2: $00
    rst $38                                       ; $4fe3: $ff
    nop                                           ; $4fe4: $00
    rst $38                                       ; $4fe5: $ff
    add b                                         ; $4fe6: $80
    rst $38                                       ; $4fe7: $ff
    nop                                           ; $4fe8: $00
    rst $38                                       ; $4fe9: $ff
    nop                                           ; $4fea: $00
    rst $38                                       ; $4feb: $ff
    nop                                           ; $4fec: $00
    rst $38                                       ; $4fed: $ff
    nop                                           ; $4fee: $00
    rst $38                                       ; $4fef: $ff
    ccf                                           ; $4ff0: $3f
    rst $38                                       ; $4ff1: $ff
    ccf                                           ; $4ff2: $3f
    rst $38                                       ; $4ff3: $ff
    ld a, a                                       ; $4ff4: $7f
    rst $38                                       ; $4ff5: $ff
    rst $38                                       ; $4ff6: $ff
    rst $38                                       ; $4ff7: $ff
    inc c                                         ; $4ff8: $0c
    rst $38                                       ; $4ff9: $ff
    inc c                                         ; $4ffa: $0c
    rst $38                                       ; $4ffb: $ff
    nop                                           ; $4ffc: $00
    rst $38                                       ; $4ffd: $ff
    nop                                           ; $4ffe: $00
    rst $38                                       ; $4fff: $ff
    add b                                         ; $5000: $80
    rst $38                                       ; $5001: $ff
    add b                                         ; $5002: $80
    rst $38                                       ; $5003: $ff
    ret nz                                        ; $5004: $c0

    rst $38                                       ; $5005: $ff
    ldh [rIE], a                                  ; $5006: $e0 $ff
    nop                                           ; $5008: $00
    rst $38                                       ; $5009: $ff
    nop                                           ; $500a: $00
    rst $38                                       ; $500b: $ff
    nop                                           ; $500c: $00
    rst $38                                       ; $500d: $ff
    nop                                           ; $500e: $00
    rst $38                                       ; $500f: $ff
    nop                                           ; $5010: $00
    rst $38                                       ; $5011: $ff
    nop                                           ; $5012: $00
    rst $38                                       ; $5013: $ff
    nop                                           ; $5014: $00
    rst $38                                       ; $5015: $ff
    nop                                           ; $5016: $00
    rst $38                                       ; $5017: $ff
    nop                                           ; $5018: $00
    rst $38                                       ; $5019: $ff
    nop                                           ; $501a: $00
    rst $38                                       ; $501b: $ff
    nop                                           ; $501c: $00
    rst $38                                       ; $501d: $ff
    ld bc, $00fe                                  ; $501e: $01 $fe $00
    rst $38                                       ; $5021: $ff
    nop                                           ; $5022: $00
    rst $38                                       ; $5023: $ff
    nop                                           ; $5024: $00
    rst $38                                       ; $5025: $ff
    nop                                           ; $5026: $00
    rst $38                                       ; $5027: $ff
    nop                                           ; $5028: $00
    rst $38                                       ; $5029: $ff
    nop                                           ; $502a: $00
    rst $38                                       ; $502b: $ff
    nop                                           ; $502c: $00
    rst $38                                       ; $502d: $ff
    rst $38                                       ; $502e: $ff
    nop                                           ; $502f: $00
    nop                                           ; $5030: $00
    rst $38                                       ; $5031: $ff
    nop                                           ; $5032: $00
    rst $38                                       ; $5033: $ff
    nop                                           ; $5034: $00
    rst $38                                       ; $5035: $ff
    nop                                           ; $5036: $00
    rst $38                                       ; $5037: $ff
    nop                                           ; $5038: $00
    rst $38                                       ; $5039: $ff
    nop                                           ; $503a: $00
    rst $38                                       ; $503b: $ff
    nop                                           ; $503c: $00
    rst $38                                       ; $503d: $ff
    add b                                         ; $503e: $80
    ld a, a                                       ; $503f: $7f
    nop                                           ; $5040: $00
    rst $38                                       ; $5041: $ff
    nop                                           ; $5042: $00
    rst $38                                       ; $5043: $ff
    nop                                           ; $5044: $00
    rst $38                                       ; $5045: $ff
    nop                                           ; $5046: $00
    rst $38                                       ; $5047: $ff
    nop                                           ; $5048: $00
    rst $38                                       ; $5049: $ff
    nop                                           ; $504a: $00
    rst $38                                       ; $504b: $ff
    nop                                           ; $504c: $00
    rst $38                                       ; $504d: $ff
    nop                                           ; $504e: $00
    rst $38                                       ; $504f: $ff
    rrca                                          ; $5050: $0f
    ldh a, [$1f]                                  ; $5051: $f0 $1f
    ldh [$fa], a                                  ; $5053: $e0 $fa
    nop                                           ; $5055: $00
    push af                                       ; $5056: $f5
    nop                                           ; $5057: $00
    ld [$0000], sp                                ; $5058: $08 $00 $00
    nop                                           ; $505b: $00
    nop                                           ; $505c: $00
    nop                                           ; $505d: $00
    nop                                           ; $505e: $00
    nop                                           ; $505f: $00
    rst $28                                       ; $5060: $ef
    nop                                           ; $5061: $00
    ld b, b                                       ; $5062: $40
    nop                                           ; $5063: $00
    add b                                         ; $5064: $80
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    nop                                           ; $506b: $00
    nop                                           ; $506c: $00
    nop                                           ; $506d: $00
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    ldh a, [rIF]                                  ; $5070: $f0 $0f
    inc c                                         ; $5072: $0c
    inc bc                                        ; $5073: $03
    rlca                                          ; $5074: $07
    nop                                           ; $5075: $00
    ld bc, $0000                                  ; $5076: $01 $00 $00
    nop                                           ; $5079: $00
    nop                                           ; $507a: $00
    nop                                           ; $507b: $00
    nop                                           ; $507c: $00
    nop                                           ; $507d: $00
    nop                                           ; $507e: $00
    nop                                           ; $507f: $00
    inc bc                                        ; $5080: $03
    db $fc                                        ; $5081: $fc
    dec a                                         ; $5082: $3d
    ret nz                                        ; $5083: $c0

    ld a, [$5400]                                 ; $5084: $fa $00 $54
    nop                                           ; $5087: $00
    xor b                                         ; $5088: $a8
    nop                                           ; $5089: $00
    ld b, b                                       ; $508a: $40
    nop                                           ; $508b: $00
    nop                                           ; $508c: $00
    nop                                           ; $508d: $00
    nop                                           ; $508e: $00
    nop                                           ; $508f: $00
    rst $38                                       ; $5090: $ff
    nop                                           ; $5091: $00
    ei                                            ; $5092: $fb
    nop                                           ; $5093: $00
    cp a                                          ; $5094: $bf
    nop                                           ; $5095: $00
    or $08                                        ; $5096: $f6 $08
    ld a, a                                       ; $5098: $7f
    nop                                           ; $5099: $00
    rst $38                                       ; $509a: $ff
    nop                                           ; $509b: $00
    cp $01                                        ; $509c: $fe $01
    rst $28                                       ; $509e: $ef
    nop                                           ; $509f: $00
    db $fd                                        ; $50a0: $fd
    ld [bc], a                                    ; $50a1: $02
    rst $10                                       ; $50a2: $d7

jr_076_50a3:
    jr nz, jr_076_50a3                            ; $50a3: $20 $fe

    ld bc, $00ff                                  ; $50a5: $01 $ff $00
    ei                                            ; $50a8: $fb
    nop                                           ; $50a9: $00
    rst $18                                       ; $50aa: $df
    jr nz, @+$01                                  ; $50ab: $20 $ff

    nop                                           ; $50ad: $00
    rst $38                                       ; $50ae: $ff
    nop                                           ; $50af: $00
    rst $38                                       ; $50b0: $ff
    nop                                           ; $50b1: $00
    cp [hl]                                       ; $50b2: $be
    ld bc, $08f6                                  ; $50b3: $01 $f6 $08
    rst $38                                       ; $50b6: $ff
    nop                                           ; $50b7: $00
    rst $28                                       ; $50b8: $ef
    nop                                           ; $50b9: $00
    ld a, a                                       ; $50ba: $7f
    add b                                         ; $50bb: $80
    ei                                            ; $50bc: $fb
    nop                                           ; $50bd: $00
    rst $38                                       ; $50be: $ff
    nop                                           ; $50bf: $00
    ei                                            ; $50c0: $fb
    inc b                                         ; $50c1: $04
    sbc $00                                       ; $50c2: $de $00
    rst $38                                       ; $50c4: $ff
    nop                                           ; $50c5: $00
    rst $28                                       ; $50c6: $ef
    nop                                           ; $50c7: $00
    cp e                                          ; $50c8: $bb
    inc b                                         ; $50c9: $04
    rst $38                                       ; $50ca: $ff
    nop                                           ; $50cb: $00
    cp a                                          ; $50cc: $bf
    nop                                           ; $50cd: $00
    cp $00                                        ; $50ce: $fe $00
    ld l, a                                       ; $50d0: $6f
    db $10                                        ; $50d1: $10
    ei                                            ; $50d2: $fb
    nop                                           ; $50d3: $00
    rst $38                                       ; $50d4: $ff
    nop                                           ; $50d5: $00
    ld a, a                                       ; $50d6: $7f
    nop                                           ; $50d7: $00
    rst $38                                       ; $50d8: $ff
    nop                                           ; $50d9: $00
    xor $10                                       ; $50da: $ee $10
    rst $38                                       ; $50dc: $ff
    nop                                           ; $50dd: $00
    rst $38                                       ; $50de: $ff
    nop                                           ; $50df: $00
    cp a                                          ; $50e0: $bf
    ld b, b                                       ; $50e1: $40
    db $ed                                        ; $50e2: $ed
    ld [bc], a                                    ; $50e3: $02
    rst $38                                       ; $50e4: $ff
    nop                                           ; $50e5: $00
    cp a                                          ; $50e6: $bf
    nop                                           ; $50e7: $00
    sbc $20                                       ; $50e8: $de $20
    rst $38                                       ; $50ea: $ff
    nop                                           ; $50eb: $00
    rst $28                                       ; $50ec: $ef
    nop                                           ; $50ed: $00
    rst $38                                       ; $50ee: $ff
    nop                                           ; $50ef: $00
    add c                                         ; $50f0: $81
    rst $38                                       ; $50f1: $ff
    xor c                                         ; $50f2: $a9
    rst $10                                       ; $50f3: $d7
    or e                                          ; $50f4: $b3
    push bc                                       ; $50f5: $c5
    sub a                                         ; $50f6: $97
    pop bc                                        ; $50f7: $c1
    xor e                                         ; $50f8: $ab
    pop de                                        ; $50f9: $d1
    sub e                                         ; $50fa: $93
    ret                                           ; $50fb: $c9


jr_076_50fc:
    xor e                                         ; $50fc: $ab
    pop de                                        ; $50fd: $d1
    rst $10                                       ; $50fe: $d7
    jp hl                                         ; $50ff: $e9


    rst $38                                       ; $5100: $ff
    nop                                           ; $5101: $00
    rst $38                                       ; $5102: $ff
    nop                                           ; $5103: $00
    ld a, [hl]                                    ; $5104: $7e
    add c                                         ; $5105: $81
    ld a, [hl]                                    ; $5106: $7e
    add c                                         ; $5107: $81
    ld a, [hl]                                    ; $5108: $7e
    add c                                         ; $5109: $81
    ld a, [hl]                                    ; $510a: $7e
    add c                                         ; $510b: $81
    ld a, [hl]                                    ; $510c: $7e
    add c                                         ; $510d: $81
    ld a, [hl]                                    ; $510e: $7e
    add c                                         ; $510f: $81
    rst $38                                       ; $5110: $ff
    nop                                           ; $5111: $00
    rst $38                                       ; $5112: $ff
    nop                                           ; $5113: $00
    rst $38                                       ; $5114: $ff
    nop                                           ; $5115: $00
    xor $00                                       ; $5116: $ee $00
    rst $38                                       ; $5118: $ff
    nop                                           ; $5119: $00
    xor d                                         ; $511a: $aa
    nop                                           ; $511b: $00
    ld [hl], a                                    ; $511c: $77
    nop                                           ; $511d: $00
    xor d                                         ; $511e: $aa
    nop                                           ; $511f: $00
    ld d, l                                       ; $5120: $55
    nop                                           ; $5121: $00
    xor d                                         ; $5122: $aa
    nop                                           ; $5123: $00
    ld d, l                                       ; $5124: $55
    nop                                           ; $5125: $00
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    ld d, l                                       ; $5128: $55
    nop                                           ; $5129: $00
    nop                                           ; $512a: $00
    nop                                           ; $512b: $00
    nop                                           ; $512c: $00
    nop                                           ; $512d: $00
    nop                                           ; $512e: $00
    nop                                           ; $512f: $00
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    nop                                           ; $5133: $00
    nop                                           ; $5134: $00
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    add b                                         ; $5138: $80
    nop                                           ; $5139: $00
    jr nz, jr_076_50fc                            ; $513a: $20 $c0

    add hl, bc                                    ; $513c: $09
    ldh a, [rNR41]                                ; $513d: $f0 $20
    rst $18                                       ; $513f: $df
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    nop                                           ; $5144: $00
    nop                                           ; $5145: $00
    ld [bc], a                                    ; $5146: $02
    ld bc, $0609                                  ; $5147: $01 $09 $06
    inc hl                                        ; $514a: $23
    inc e                                         ; $514b: $1c
    adc c                                         ; $514c: $89
    halt                                          ; $514d: $76
    db $10                                        ; $514e: $10
    rst $28                                       ; $514f: $ef
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    nop                                           ; $5153: $00
    ld b, c                                       ; $5154: $41
    ld a, $28                                     ; $5155: $3e $28
    rst $10                                       ; $5157: $d7
    ld b, b                                       ; $5158: $40
    cp a                                          ; $5159: $bf
    and b                                         ; $515a: $a0
    ld e, a                                       ; $515b: $5f
    nop                                           ; $515c: $00
    rst $38                                       ; $515d: $ff
    nop                                           ; $515e: $00
    rst $38                                       ; $515f: $ff
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    db $10                                        ; $5164: $10
    db $10                                        ; $5165: $10
    ld e, b                                       ; $5166: $58
    sbc b                                         ; $5167: $98
    add hl, de                                    ; $5168: $19
    cp $3c                                        ; $5169: $fe $3c
    rst $38                                       ; $516b: $ff
    jr @+$01                                      ; $516c: $18 $ff

    inc a                                         ; $516e: $3c
    rst $38                                       ; $516f: $ff
    ld b, b                                       ; $5170: $40
    cp a                                          ; $5171: $bf
    ld [$00f7], sp                                ; $5172: $08 $f7 $00
    rst $38                                       ; $5175: $ff
    nop                                           ; $5176: $00
    rst $38                                       ; $5177: $ff
    nop                                           ; $5178: $00
    rst $38                                       ; $5179: $ff
    nop                                           ; $517a: $00
    rst $38                                       ; $517b: $ff
    nop                                           ; $517c: $00
    rst $38                                       ; $517d: $ff
    nop                                           ; $517e: $00
    rst $38                                       ; $517f: $ff
    inc b                                         ; $5180: $04
    ei                                            ; $5181: $fb
    ld c, b                                       ; $5182: $48
    or a                                          ; $5183: $b7
    add b                                         ; $5184: $80
    ld a, a                                       ; $5185: $7f
    nop                                           ; $5186: $00
    rst $38                                       ; $5187: $ff
    nop                                           ; $5188: $00
    rst $38                                       ; $5189: $ff
    nop                                           ; $518a: $00
    rst $38                                       ; $518b: $ff
    nop                                           ; $518c: $00
    rst $38                                       ; $518d: $ff
    nop                                           ; $518e: $00
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
    ld a, h                                       ; $51a0: $7c
    rst $38                                       ; $51a1: $ff
    ld a, $ff                                     ; $51a2: $3e $ff
    ld a, h                                       ; $51a4: $7c
    rst $38                                       ; $51a5: $ff
    ld a, [hl]                                    ; $51a6: $7e
    rst $38                                       ; $51a7: $ff
    rst $38                                       ; $51a8: $ff
    rst $38                                       ; $51a9: $ff
    jr @+$01                                      ; $51aa: $18 $ff

    jr @+$01                                      ; $51ac: $18 $ff

    nop                                           ; $51ae: $00
    rst $38                                       ; $51af: $ff
    nop                                           ; $51b0: $00
    rst $38                                       ; $51b1: $ff
    nop                                           ; $51b2: $00
    rst $38                                       ; $51b3: $ff
    add b                                         ; $51b4: $80
    rst $38                                       ; $51b5: $ff
    add b                                         ; $51b6: $80
    rst $38                                       ; $51b7: $ff
    add b                                         ; $51b8: $80
    rst $38                                       ; $51b9: $ff
    add b                                         ; $51ba: $80
    rst $38                                       ; $51bb: $ff
    ret nz                                        ; $51bc: $c0

    rst $38                                       ; $51bd: $ff
    ret nz                                        ; $51be: $c0

    rst $38                                       ; $51bf: $ff
    nop                                           ; $51c0: $00
    rst $38                                       ; $51c1: $ff
    nop                                           ; $51c2: $00
    rst $38                                       ; $51c3: $ff
    nop                                           ; $51c4: $00
    rst $38                                       ; $51c5: $ff
    nop                                           ; $51c6: $00
    rst $38                                       ; $51c7: $ff
    nop                                           ; $51c8: $00
    rst $38                                       ; $51c9: $ff
    nop                                           ; $51ca: $00
    rst $38                                       ; $51cb: $ff
    nop                                           ; $51cc: $00
    rst $38                                       ; $51cd: $ff
    nop                                           ; $51ce: $00
    rst $38                                       ; $51cf: $ff
    ldh [rIE], a                                  ; $51d0: $e0 $ff
    ldh [rIE], a                                  ; $51d2: $e0 $ff
    ldh a, [rIE]                                  ; $51d4: $f0 $ff
    ld hl, sp-$01                                 ; $51d6: $f8 $ff
    ldh a, [rIE]                                  ; $51d8: $f0 $ff
    ldh [rIE], a                                  ; $51da: $e0 $ff
    ldh a, [rIE]                                  ; $51dc: $f0 $ff
    ldh a, [rIE]                                  ; $51de: $f0 $ff
    ld bc, $01ff                                  ; $51e0: $01 $ff $01
    rst $38                                       ; $51e3: $ff
    inc bc                                        ; $51e4: $03
    rst $38                                       ; $51e5: $ff
    rlca                                          ; $51e6: $07
    rst $38                                       ; $51e7: $ff
    inc bc                                        ; $51e8: $03
    rst $38                                       ; $51e9: $ff
    ld bc, $01ff                                  ; $51ea: $01 $ff $01
    rst $38                                       ; $51ed: $ff
    inc bc                                        ; $51ee: $03
    rst $38                                       ; $51ef: $ff
    ld hl, sp-$01                                 ; $51f0: $f8 $ff
    ld hl, sp-$01                                 ; $51f2: $f8 $ff
    db $fc                                        ; $51f4: $fc
    rst $38                                       ; $51f5: $ff
    cp $ff                                        ; $51f6: $fe $ff
    ret nz                                        ; $51f8: $c0

    rst $38                                       ; $51f9: $ff
    ret nz                                        ; $51fa: $c0

    rst $38                                       ; $51fb: $ff
    nop                                           ; $51fc: $00
    rst $38                                       ; $51fd: $ff
    nop                                           ; $51fe: $00
    rst $38                                       ; $51ff: $ff
    inc bc                                        ; $5200: $03
    rst $38                                       ; $5201: $ff
    inc bc                                        ; $5202: $03
    rst $38                                       ; $5203: $ff
    rlca                                          ; $5204: $07
    rst $38                                       ; $5205: $ff
    rrca                                          ; $5206: $0f
    rst $38                                       ; $5207: $ff
    nop                                           ; $5208: $00
    rst $38                                       ; $5209: $ff
    nop                                           ; $520a: $00
    rst $38                                       ; $520b: $ff
    nop                                           ; $520c: $00
    rst $38                                       ; $520d: $ff
    nop                                           ; $520e: $00
    rst $38                                       ; $520f: $ff
    nop                                           ; $5210: $00
    rst $38                                       ; $5211: $ff
    nop                                           ; $5212: $00
    rst $38                                       ; $5213: $ff
    nop                                           ; $5214: $00
    rst $38                                       ; $5215: $ff
    nop                                           ; $5216: $00
    rst $38                                       ; $5217: $ff
    nop                                           ; $5218: $00
    rst $38                                       ; $5219: $ff
    nop                                           ; $521a: $00
    rst $38                                       ; $521b: $ff
    nop                                           ; $521c: $00
    rst $38                                       ; $521d: $ff
    ld a, a                                       ; $521e: $7f
    add b                                         ; $521f: $80
    nop                                           ; $5220: $00
    rst $38                                       ; $5221: $ff
    nop                                           ; $5222: $00
    rst $38                                       ; $5223: $ff
    nop                                           ; $5224: $00
    rst $38                                       ; $5225: $ff
    nop                                           ; $5226: $00
    rst $38                                       ; $5227: $ff
    nop                                           ; $5228: $00
    rst $38                                       ; $5229: $ff
    nop                                           ; $522a: $00
    rst $38                                       ; $522b: $ff
    nop                                           ; $522c: $00
    rst $38                                       ; $522d: $ff
    ldh [$1f], a                                  ; $522e: $e0 $1f
    nop                                           ; $5230: $00
    rst $38                                       ; $5231: $ff
    nop                                           ; $5232: $00
    rst $38                                       ; $5233: $ff
    nop                                           ; $5234: $00
    rst $38                                       ; $5235: $ff
    nop                                           ; $5236: $00
    rst $38                                       ; $5237: $ff
    nop                                           ; $5238: $00
    rst $38                                       ; $5239: $ff
    nop                                           ; $523a: $00
    rst $38                                       ; $523b: $ff
    nop                                           ; $523c: $00
    rst $38                                       ; $523d: $ff
    nop                                           ; $523e: $00
    rst $38                                       ; $523f: $ff
    nop                                           ; $5240: $00
    rst $38                                       ; $5241: $ff
    nop                                           ; $5242: $00
    rst $38                                       ; $5243: $ff
    nop                                           ; $5244: $00
    rst $38                                       ; $5245: $ff
    nop                                           ; $5246: $00
    rst $38                                       ; $5247: $ff
    nop                                           ; $5248: $00
    rst $38                                       ; $5249: $ff
    nop                                           ; $524a: $00
    rst $38                                       ; $524b: $ff
    nop                                           ; $524c: $00
    rst $38                                       ; $524d: $ff
    nop                                           ; $524e: $00
    rst $38                                       ; $524f: $ff
    ei                                            ; $5250: $fb
    nop                                           ; $5251: $00
    ret nc                                        ; $5252: $d0

    nop                                           ; $5253: $00
    and b                                         ; $5254: $a0
    nop                                           ; $5255: $00
    ld b, b                                       ; $5256: $40
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    nop                                           ; $525a: $00
    nop                                           ; $525b: $00
    nop                                           ; $525c: $00
    nop                                           ; $525d: $00
    nop                                           ; $525e: $00
    nop                                           ; $525f: $00
    db $fc                                        ; $5260: $fc
    inc bc                                        ; $5261: $03
    inc bc                                        ; $5262: $03
    nop                                           ; $5263: $00
    ld bc, $0000                                  ; $5264: $01 $00 $00
    nop                                           ; $5267: $00
    nop                                           ; $5268: $00
    nop                                           ; $5269: $00
    nop                                           ; $526a: $00
    nop                                           ; $526b: $00
    nop                                           ; $526c: $00
    nop                                           ; $526d: $00
    nop                                           ; $526e: $00
    nop                                           ; $526f: $00
    nop                                           ; $5270: $00
    rst $38                                       ; $5271: $ff
    rrca                                          ; $5272: $0f
    ldh a, [$fe]                                  ; $5273: $f0 $fe
    nop                                           ; $5275: $00
    ld d, l                                       ; $5276: $55
    nop                                           ; $5277: $00
    ld a, [hl+]                                   ; $5278: $2a
    nop                                           ; $5279: $00
    stop                                          ; $527a: $10 $00
    nop                                           ; $527c: $00
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    nop                                           ; $527f: $00
    ld hl, sp+$07                                 ; $5280: $f8 $07
    ld c, a                                       ; $5282: $4f
    nop                                           ; $5283: $00
    add b                                         ; $5284: $80
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    nop                                           ; $528a: $00
    nop                                           ; $528b: $00
    nop                                           ; $528c: $00
    nop                                           ; $528d: $00
    nop                                           ; $528e: $00
    nop                                           ; $528f: $00
    db $fd                                        ; $5290: $fd
    ld [bc], a                                    ; $5291: $02
    rst $10                                       ; $5292: $d7

jr_076_5293:
    jr nz, jr_076_5293                            ; $5293: $20 $fe

    ld bc, $00ff                                  ; $5295: $01 $ff $00
    ei                                            ; $5298: $fb
    nop                                           ; $5299: $00
    rst $18                                       ; $529a: $df
    jr nz, @+$01                                  ; $529b: $20 $ff

    nop                                           ; $529d: $00
    rst $38                                       ; $529e: $ff
    nop                                           ; $529f: $00
    rst $38                                       ; $52a0: $ff
    nop                                           ; $52a1: $00
    cp [hl]                                       ; $52a2: $be
    ld bc, $08f6                                  ; $52a3: $01 $f6 $08
    rst $38                                       ; $52a6: $ff
    nop                                           ; $52a7: $00
    rst $28                                       ; $52a8: $ef
    nop                                           ; $52a9: $00
    ld a, a                                       ; $52aa: $7f
    add b                                         ; $52ab: $80
    ei                                            ; $52ac: $fb
    nop                                           ; $52ad: $00
    rst $38                                       ; $52ae: $ff
    nop                                           ; $52af: $00
    ei                                            ; $52b0: $fb
    inc b                                         ; $52b1: $04
    sbc $00                                       ; $52b2: $de $00
    rst $38                                       ; $52b4: $ff
    nop                                           ; $52b5: $00
    rst $28                                       ; $52b6: $ef
    nop                                           ; $52b7: $00
    cp e                                          ; $52b8: $bb
    inc b                                         ; $52b9: $04
    rst $38                                       ; $52ba: $ff
    nop                                           ; $52bb: $00
    cp a                                          ; $52bc: $bf
    nop                                           ; $52bd: $00
    cp $00                                        ; $52be: $fe $00
    rst $38                                       ; $52c0: $ff
    nop                                           ; $52c1: $00
    ei                                            ; $52c2: $fb
    nop                                           ; $52c3: $00
    cp a                                          ; $52c4: $bf
    nop                                           ; $52c5: $00
    or $08                                        ; $52c6: $f6 $08
    ld a, a                                       ; $52c8: $7f
    nop                                           ; $52c9: $00
    rst $38                                       ; $52ca: $ff
    nop                                           ; $52cb: $00
    cp $01                                        ; $52cc: $fe $01
    rst $28                                       ; $52ce: $ef
    nop                                           ; $52cf: $00
    cp a                                          ; $52d0: $bf
    ld b, b                                       ; $52d1: $40
    db $ed                                        ; $52d2: $ed
    ld [bc], a                                    ; $52d3: $02
    rst $38                                       ; $52d4: $ff
    nop                                           ; $52d5: $00
    cp a                                          ; $52d6: $bf
    nop                                           ; $52d7: $00
    sbc $20                                       ; $52d8: $de $20
    rst $38                                       ; $52da: $ff
    nop                                           ; $52db: $00
    rst $28                                       ; $52dc: $ef
    nop                                           ; $52dd: $00
    rst $38                                       ; $52de: $ff
    nop                                           ; $52df: $00
    ld l, a                                       ; $52e0: $6f
    db $10                                        ; $52e1: $10
    ei                                            ; $52e2: $fb
    nop                                           ; $52e3: $00
    rst $38                                       ; $52e4: $ff
    nop                                           ; $52e5: $00
    ld a, a                                       ; $52e6: $7f
    nop                                           ; $52e7: $00
    rst $38                                       ; $52e8: $ff
    nop                                           ; $52e9: $00
    xor $10                                       ; $52ea: $ee $10
    rst $38                                       ; $52ec: $ff
    nop                                           ; $52ed: $00
    rst $38                                       ; $52ee: $ff
    nop                                           ; $52ef: $00
    rst $38                                       ; $52f0: $ff
    nop                                           ; $52f1: $00
    rst $38                                       ; $52f2: $ff
    nop                                           ; $52f3: $00
    ld a, [hl]                                    ; $52f4: $7e
    add c                                         ; $52f5: $81
    ld a, [hl]                                    ; $52f6: $7e
    add c                                         ; $52f7: $81
    ld a, [hl]                                    ; $52f8: $7e
    add c                                         ; $52f9: $81
    ld a, [hl]                                    ; $52fa: $7e
    add c                                         ; $52fb: $81
    ld a, [hl]                                    ; $52fc: $7e
    add c                                         ; $52fd: $81
    ld a, [hl]                                    ; $52fe: $7e
    add c                                         ; $52ff: $81
    add c                                         ; $5300: $81
    rst $38                                       ; $5301: $ff
    xor c                                         ; $5302: $a9
    rst $10                                       ; $5303: $d7
    or e                                          ; $5304: $b3
    push bc                                       ; $5305: $c5
    sub a                                         ; $5306: $97
    pop bc                                        ; $5307: $c1
    xor e                                         ; $5308: $ab
    pop de                                        ; $5309: $d1
    sub e                                         ; $530a: $93
    ret                                           ; $530b: $c9


    xor e                                         ; $530c: $ab
    pop de                                        ; $530d: $d1
    rst $10                                       ; $530e: $d7
    jp hl                                         ; $530f: $e9


    rst $38                                       ; $5310: $ff
    nop                                           ; $5311: $00
    rst $38                                       ; $5312: $ff
    nop                                           ; $5313: $00
    rst $38                                       ; $5314: $ff
    nop                                           ; $5315: $00
    db $dd                                        ; $5316: $dd
    nop                                           ; $5317: $00
    rst $38                                       ; $5318: $ff
    nop                                           ; $5319: $00
    ld d, l                                       ; $531a: $55
    nop                                           ; $531b: $00
    xor $00                                       ; $531c: $ee $00
    ld d, l                                       ; $531e: $55
    nop                                           ; $531f: $00
    xor d                                         ; $5320: $aa
    nop                                           ; $5321: $00
    ld d, l                                       ; $5322: $55
    nop                                           ; $5323: $00
    xor d                                         ; $5324: $aa
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    xor d                                         ; $5328: $aa
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    nop                                           ; $532b: $00
    nop                                           ; $532c: $00
    nop                                           ; $532d: $00
    nop                                           ; $532e: $00

jr_076_532f:
    nop                                           ; $532f: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    ld b, b                                       ; $533a: $40
    add b                                         ; $533b: $80
    inc de                                        ; $533c: $13
    ldh [rLCDC], a                                ; $533d: $e0 $40
    cp a                                          ; $533f: $bf
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    nop                                           ; $5345: $00
    inc b                                         ; $5346: $04
    inc bc                                        ; $5347: $03
    ld [de], a                                    ; $5348: $12
    dec c                                         ; $5349: $0d
    ld b, a                                       ; $534a: $47
    jr c, jr_076_535f                             ; $534b: $38 $12

    db $ed                                        ; $534d: $ed
    jr nz, jr_076_532f                            ; $534e: $20 $df

    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    add d                                         ; $5354: $82
    ld a, h                                       ; $5355: $7c
    ld d, b                                       ; $5356: $50
    xor a                                         ; $5357: $af
    add b                                         ; $5358: $80
    ld a, a                                       ; $5359: $7f
    ld b, b                                       ; $535a: $40
    cp a                                          ; $535b: $bf
    nop                                           ; $535c: $00
    rst $38                                       ; $535d: $ff
    nop                                           ; $535e: $00

jr_076_535f:
    rst $38                                       ; $535f: $ff
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    ld b, b                                       ; $5364: $40
    ld b, b                                       ; $5365: $40
    ldh [$60], a                                  ; $5366: $e0 $60
    ld h, e                                       ; $5368: $63
    db $fc                                        ; $5369: $fc
    ldh a, [rIE]                                  ; $536a: $f0 $ff
    ld h, b                                       ; $536c: $60
    rst $38                                       ; $536d: $ff
    ldh a, [rIE]                                  ; $536e: $f0 $ff
    add b                                         ; $5370: $80
    ld a, a                                       ; $5371: $7f
    db $10                                        ; $5372: $10
    rst $28                                       ; $5373: $ef
    ld bc, $00fe                                  ; $5374: $01 $fe $00
    rst $38                                       ; $5377: $ff
    nop                                           ; $5378: $00
    rst $38                                       ; $5379: $ff
    nop                                           ; $537a: $00
    rst $38                                       ; $537b: $ff
    nop                                           ; $537c: $00
    rst $38                                       ; $537d: $ff
    nop                                           ; $537e: $00
    rst $38                                       ; $537f: $ff
    ld [$90f7], sp                                ; $5380: $08 $f7 $90
    ld l, a                                       ; $5383: $6f
    nop                                           ; $5384: $00
    rst $38                                       ; $5385: $ff
    nop                                           ; $5386: $00
    rst $38                                       ; $5387: $ff
    nop                                           ; $5388: $00
    rst $38                                       ; $5389: $ff
    nop                                           ; $538a: $00
    rst $38                                       ; $538b: $ff
    nop                                           ; $538c: $00
    rst $38                                       ; $538d: $ff
    nop                                           ; $538e: $00
    rst $38                                       ; $538f: $ff
    ld bc, $00ff                                  ; $5390: $01 $ff $00
    rst $38                                       ; $5393: $ff
    ld bc, $01ff                                  ; $5394: $01 $ff $01
    rst $38                                       ; $5397: $ff
    inc bc                                        ; $5398: $03
    rst $38                                       ; $5399: $ff
    nop                                           ; $539a: $00
    rst $38                                       ; $539b: $ff
    nop                                           ; $539c: $00
    rst $38                                       ; $539d: $ff
    nop                                           ; $539e: $00
    rst $38                                       ; $539f: $ff
    ldh a, [rIE]                                  ; $53a0: $f0 $ff
    ld hl, sp-$01                                 ; $53a2: $f8 $ff
    ldh a, [rIE]                                  ; $53a4: $f0 $ff
    ld hl, sp-$01                                 ; $53a6: $f8 $ff
    db $fc                                        ; $53a8: $fc
    rst $38                                       ; $53a9: $ff
    ld h, b                                       ; $53aa: $60
    rst $38                                       ; $53ab: $ff
    ld h, b                                       ; $53ac: $60
    rst $38                                       ; $53ad: $ff
    nop                                           ; $53ae: $00
    rst $38                                       ; $53af: $ff
    nop                                           ; $53b0: $00
    rst $38                                       ; $53b1: $ff
    nop                                           ; $53b2: $00
    rst $38                                       ; $53b3: $ff
    nop                                           ; $53b4: $00
    rst $38                                       ; $53b5: $ff
    nop                                           ; $53b6: $00
    rst $38                                       ; $53b7: $ff
    nop                                           ; $53b8: $00
    rst $38                                       ; $53b9: $ff
    nop                                           ; $53ba: $00
    rst $38                                       ; $53bb: $ff
    nop                                           ; $53bc: $00
    rst $38                                       ; $53bd: $ff
    nop                                           ; $53be: $00
    rst $38                                       ; $53bf: $ff
    nop                                           ; $53c0: $00
    rst $38                                       ; $53c1: $ff
    nop                                           ; $53c2: $00
    rst $38                                       ; $53c3: $ff
    ld [$08ff], sp                                ; $53c4: $08 $ff $08
    rst $38                                       ; $53c7: $ff
    ld [$08ff], sp                                ; $53c8: $08 $ff $08
    rst $38                                       ; $53cb: $ff
    inc c                                         ; $53cc: $0c
    rst $38                                       ; $53cd: $ff
    inc c                                         ; $53ce: $0c
    rst $38                                       ; $53cf: $ff
    nop                                           ; $53d0: $00
    rst $38                                       ; $53d1: $ff
    nop                                           ; $53d2: $00
    rst $38                                       ; $53d3: $ff
    nop                                           ; $53d4: $00
    rst $38                                       ; $53d5: $ff
    add b                                         ; $53d6: $80
    rst $38                                       ; $53d7: $ff
    nop                                           ; $53d8: $00
    rst $38                                       ; $53d9: $ff
    nop                                           ; $53da: $00
    rst $38                                       ; $53db: $ff
    nop                                           ; $53dc: $00
    rst $38                                       ; $53dd: $ff
    nop                                           ; $53de: $00
    rst $38                                       ; $53df: $ff
    ld e, $ff                                     ; $53e0: $1e $ff
    ld e, $ff                                     ; $53e2: $1e $ff
    ccf                                           ; $53e4: $3f
    rst $38                                       ; $53e5: $ff
    ld a, a                                       ; $53e6: $7f
    rst $38                                       ; $53e7: $ff
    ccf                                           ; $53e8: $3f
    rst $38                                       ; $53e9: $ff
    ld e, $ff                                     ; $53ea: $1e $ff
    rra                                           ; $53ec: $1f
    rst $38                                       ; $53ed: $ff
    ccf                                           ; $53ee: $3f
    rst $38                                       ; $53ef: $ff
    add b                                         ; $53f0: $80
    rst $38                                       ; $53f1: $ff
    add b                                         ; $53f2: $80
    rst $38                                       ; $53f3: $ff
    ret nz                                        ; $53f4: $c0

    rst $38                                       ; $53f5: $ff
    ldh [rIE], a                                  ; $53f6: $e0 $ff
    nop                                           ; $53f8: $00
    rst $38                                       ; $53f9: $ff
    nop                                           ; $53fa: $00
    rst $38                                       ; $53fb: $ff
    nop                                           ; $53fc: $00
    rst $38                                       ; $53fd: $ff
    nop                                           ; $53fe: $00
    rst $38                                       ; $53ff: $ff
    ccf                                           ; $5400: $3f
    rst $38                                       ; $5401: $ff
    ccf                                           ; $5402: $3f
    rst $38                                       ; $5403: $ff
    ld a, a                                       ; $5404: $7f
    rst $38                                       ; $5405: $ff
    rst $38                                       ; $5406: $ff
    rst $38                                       ; $5407: $ff
    inc c                                         ; $5408: $0c
    rst $38                                       ; $5409: $ff
    inc c                                         ; $540a: $0c
    rst $38                                       ; $540b: $ff
    nop                                           ; $540c: $00
    rst $38                                       ; $540d: $ff
    nop                                           ; $540e: $00
    rst $38                                       ; $540f: $ff
    nop                                           ; $5410: $00
    rst $38                                       ; $5411: $ff
    nop                                           ; $5412: $00
    rst $38                                       ; $5413: $ff
    nop                                           ; $5414: $00
    rst $38                                       ; $5415: $ff
    nop                                           ; $5416: $00
    rst $38                                       ; $5417: $ff
    nop                                           ; $5418: $00
    rst $38                                       ; $5419: $ff
    nop                                           ; $541a: $00
    rst $38                                       ; $541b: $ff
    nop                                           ; $541c: $00
    rst $38                                       ; $541d: $ff
    ld hl, sp+$07                                 ; $541e: $f8 $07
    nop                                           ; $5420: $00
    rst $38                                       ; $5421: $ff
    nop                                           ; $5422: $00
    rst $38                                       ; $5423: $ff
    nop                                           ; $5424: $00
    rst $38                                       ; $5425: $ff
    nop                                           ; $5426: $00
    rst $38                                       ; $5427: $ff
    nop                                           ; $5428: $00
    rst $38                                       ; $5429: $ff
    nop                                           ; $542a: $00
    rst $38                                       ; $542b: $ff
    nop                                           ; $542c: $00
    rst $38                                       ; $542d: $ff
    nop                                           ; $542e: $00
    rst $38                                       ; $542f: $ff
    nop                                           ; $5430: $00
    rst $38                                       ; $5431: $ff
    nop                                           ; $5432: $00
    rst $38                                       ; $5433: $ff
    nop                                           ; $5434: $00
    rst $38                                       ; $5435: $ff
    nop                                           ; $5436: $00
    rst $38                                       ; $5437: $ff
    nop                                           ; $5438: $00
    rst $38                                       ; $5439: $ff
    nop                                           ; $543a: $00
    rst $38                                       ; $543b: $ff
    nop                                           ; $543c: $00
    rst $38                                       ; $543d: $ff
    nop                                           ; $543e: $00
    rst $38                                       ; $543f: $ff
    nop                                           ; $5440: $00
    rst $38                                       ; $5441: $ff
    nop                                           ; $5442: $00
    rst $38                                       ; $5443: $ff
    nop                                           ; $5444: $00
    rst $38                                       ; $5445: $ff
    nop                                           ; $5446: $00
    rst $38                                       ; $5447: $ff
    nop                                           ; $5448: $00
    rst $38                                       ; $5449: $ff
    nop                                           ; $544a: $00
    rst $38                                       ; $544b: $ff
    nop                                           ; $544c: $00
    rst $38                                       ; $544d: $ff
    nop                                           ; $544e: $00
    rst $38                                       ; $544f: $ff
    rst $38                                       ; $5450: $ff
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    nop                                           ; $545b: $00
    nop                                           ; $545c: $00
    nop                                           ; $545d: $00
    nop                                           ; $545e: $00
    nop                                           ; $545f: $00
    nop                                           ; $5460: $00
    rst $38                                       ; $5461: $ff
    jp Jump_076_7f3c                              ; $5462: $c3 $3c $7f


    nop                                           ; $5465: $00
    dec d                                         ; $5466: $15
    nop                                           ; $5467: $00
    ld a, [bc]                                    ; $5468: $0a
    nop                                           ; $5469: $00
    inc b                                         ; $546a: $04
    nop                                           ; $546b: $00
    nop                                           ; $546c: $00
    nop                                           ; $546d: $00
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    ld a, $c1                                     ; $5470: $3e $c1
    db $d3                                        ; $5472: $d3
    nop                                           ; $5473: $00
    and b                                         ; $5474: $a0
    nop                                           ; $5475: $00
    ld b, b                                       ; $5476: $40
    nop                                           ; $5477: $00
    add b                                         ; $5478: $80
    nop                                           ; $5479: $00
    nop                                           ; $547a: $00
    nop                                           ; $547b: $00
    nop                                           ; $547c: $00
    nop                                           ; $547d: $00
    nop                                           ; $547e: $00
    nop                                           ; $547f: $00
    nop                                           ; $5480: $00
    rst $38                                       ; $5481: $ff
    ldh [$1f], a                                  ; $5482: $e0 $1f
    ccf                                           ; $5484: $3f
    nop                                           ; $5485: $00
    rlca                                          ; $5486: $07
    nop                                           ; $5487: $00
    ld [bc], a                                    ; $5488: $02
    nop                                           ; $5489: $00
    ld bc, $0000                                  ; $548a: $01 $00 $00
    nop                                           ; $548d: $00
    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    rst $38                                       ; $5490: $ff
    nop                                           ; $5491: $00
    cp [hl]                                       ; $5492: $be
    ld bc, $08f6                                  ; $5493: $01 $f6 $08
    rst $38                                       ; $5496: $ff
    nop                                           ; $5497: $00
    rst $28                                       ; $5498: $ef
    nop                                           ; $5499: $00
    ld a, a                                       ; $549a: $7f
    add b                                         ; $549b: $80
    ei                                            ; $549c: $fb
    nop                                           ; $549d: $00
    rst $38                                       ; $549e: $ff
    nop                                           ; $549f: $00
    ei                                            ; $54a0: $fb
    inc b                                         ; $54a1: $04
    sbc $00                                       ; $54a2: $de $00
    rst $38                                       ; $54a4: $ff
    nop                                           ; $54a5: $00
    rst $28                                       ; $54a6: $ef
    nop                                           ; $54a7: $00
    cp e                                          ; $54a8: $bb
    inc b                                         ; $54a9: $04
    rst $38                                       ; $54aa: $ff
    nop                                           ; $54ab: $00
    cp a                                          ; $54ac: $bf
    nop                                           ; $54ad: $00
    cp $00                                        ; $54ae: $fe $00
    rst $38                                       ; $54b0: $ff
    nop                                           ; $54b1: $00
    ei                                            ; $54b2: $fb
    nop                                           ; $54b3: $00
    cp a                                          ; $54b4: $bf
    nop                                           ; $54b5: $00
    or $08                                        ; $54b6: $f6 $08
    ld a, a                                       ; $54b8: $7f
    nop                                           ; $54b9: $00
    rst $38                                       ; $54ba: $ff
    nop                                           ; $54bb: $00
    cp $01                                        ; $54bc: $fe $01
    rst $28                                       ; $54be: $ef
    nop                                           ; $54bf: $00
    db $fd                                        ; $54c0: $fd
    ld [bc], a                                    ; $54c1: $02
    rst $10                                       ; $54c2: $d7

jr_076_54c3:
    jr nz, jr_076_54c3                            ; $54c3: $20 $fe

    ld bc, $00ff                                  ; $54c5: $01 $ff $00
    ei                                            ; $54c8: $fb
    nop                                           ; $54c9: $00
    rst $18                                       ; $54ca: $df
    jr nz, @+$01                                  ; $54cb: $20 $ff

    nop                                           ; $54cd: $00
    rst $38                                       ; $54ce: $ff
    nop                                           ; $54cf: $00
    ld l, a                                       ; $54d0: $6f
    db $10                                        ; $54d1: $10
    ei                                            ; $54d2: $fb
    nop                                           ; $54d3: $00
    rst $38                                       ; $54d4: $ff
    nop                                           ; $54d5: $00
    ld a, a                                       ; $54d6: $7f
    nop                                           ; $54d7: $00
    rst $38                                       ; $54d8: $ff
    nop                                           ; $54d9: $00
    xor $10                                       ; $54da: $ee $10
    rst $38                                       ; $54dc: $ff
    nop                                           ; $54dd: $00
    rst $38                                       ; $54de: $ff
    nop                                           ; $54df: $00
    cp a                                          ; $54e0: $bf
    ld b, b                                       ; $54e1: $40
    db $ed                                        ; $54e2: $ed
    ld [bc], a                                    ; $54e3: $02
    rst $38                                       ; $54e4: $ff
    nop                                           ; $54e5: $00
    cp a                                          ; $54e6: $bf
    nop                                           ; $54e7: $00
    sbc $20                                       ; $54e8: $de $20
    rst $38                                       ; $54ea: $ff
    nop                                           ; $54eb: $00
    rst $28                                       ; $54ec: $ef
    nop                                           ; $54ed: $00
    rst $38                                       ; $54ee: $ff
    nop                                           ; $54ef: $00
    add c                                         ; $54f0: $81
    rst $38                                       ; $54f1: $ff
    xor c                                         ; $54f2: $a9
    rst $10                                       ; $54f3: $d7
    or e                                          ; $54f4: $b3
    push bc                                       ; $54f5: $c5
    sub a                                         ; $54f6: $97
    pop bc                                        ; $54f7: $c1
    xor e                                         ; $54f8: $ab
    pop de                                        ; $54f9: $d1
    sub e                                         ; $54fa: $93
    ret                                           ; $54fb: $c9


    xor e                                         ; $54fc: $ab
    pop de                                        ; $54fd: $d1
    rst $10                                       ; $54fe: $d7
    jp hl                                         ; $54ff: $e9


    rst $38                                       ; $5500: $ff
    nop                                           ; $5501: $00
    rst $38                                       ; $5502: $ff
    nop                                           ; $5503: $00
    ld a, [hl]                                    ; $5504: $7e
    add c                                         ; $5505: $81
    ld a, [hl]                                    ; $5506: $7e
    add c                                         ; $5507: $81
    ld a, [hl]                                    ; $5508: $7e
    add c                                         ; $5509: $81
    ld a, [hl]                                    ; $550a: $7e
    add c                                         ; $550b: $81
    ld a, [hl]                                    ; $550c: $7e
    add c                                         ; $550d: $81
    ld a, [hl]                                    ; $550e: $7e
    add c                                         ; $550f: $81
    rst $38                                       ; $5510: $ff
    nop                                           ; $5511: $00
    rst $38                                       ; $5512: $ff
    nop                                           ; $5513: $00
    rst $38                                       ; $5514: $ff
    nop                                           ; $5515: $00
    db $dd                                        ; $5516: $dd
    nop                                           ; $5517: $00
    rst $38                                       ; $5518: $ff
    nop                                           ; $5519: $00
    ld d, l                                       ; $551a: $55
    nop                                           ; $551b: $00
    xor $00                                       ; $551c: $ee $00
    ld d, l                                       ; $551e: $55
    nop                                           ; $551f: $00
    xor d                                         ; $5520: $aa
    nop                                           ; $5521: $00
    ld d, l                                       ; $5522: $55
    nop                                           ; $5523: $00
    xor d                                         ; $5524: $aa
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    xor d                                         ; $5528: $aa
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00
    nop                                           ; $552c: $00
    nop                                           ; $552d: $00
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    add b                                         ; $553a: $80
    nop                                           ; $553b: $00
    ld h, $c1                                     ; $553c: $26 $c1
    add b                                         ; $553e: $80
    ld a, a                                       ; $553f: $7f
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    ld bc, $0800                                  ; $5544: $01 $00 $08
    rlca                                          ; $5547: $07
    dec h                                         ; $5548: $25
    ld a, [de]                                    ; $5549: $1a
    adc [hl]                                      ; $554a: $8e
    ld [hl], c                                    ; $554b: $71
    inc h                                         ; $554c: $24
    db $db                                        ; $554d: $db
    ld b, b                                       ; $554e: $40
    cp a                                          ; $554f: $bf
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    dec b                                         ; $5554: $05
    ld sp, hl                                     ; $5555: $f9
    and c                                         ; $5556: $a1
    ld e, a                                       ; $5557: $5f
    ld bc, $83ff                                  ; $5558: $01 $ff $83
    ld a, a                                       ; $555b: $7f
    ld bc, $03ff                                  ; $555c: $01 $ff $03
    rst $38                                       ; $555f: $ff
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00

jr_076_5563:
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    add b                                         ; $5566: $80
    add b                                         ; $5567: $80
    add [hl]                                      ; $5568: $86
    ld hl, sp-$40                                 ; $5569: $f8 $c0
    rst $38                                       ; $556b: $ff
    add b                                         ; $556c: $80
    rst $38                                       ; $556d: $ff
    ret nz                                        ; $556e: $c0

    rst $38                                       ; $556f: $ff
    nop                                           ; $5570: $00
    rst $38                                       ; $5571: $ff
    ld hl, $02de                                  ; $5572: $21 $de $02
    db $fd                                        ; $5575: $fd
    nop                                           ; $5576: $00
    rst $38                                       ; $5577: $ff
    nop                                           ; $5578: $00
    rst $38                                       ; $5579: $ff
    nop                                           ; $557a: $00
    rst $38                                       ; $557b: $ff
    nop                                           ; $557c: $00
    rst $38                                       ; $557d: $ff
    nop                                           ; $557e: $00
    rst $38                                       ; $557f: $ff
    db $10                                        ; $5580: $10
    rst $28                                       ; $5581: $ef
    jr nz, jr_076_5563                            ; $5582: $20 $df

    nop                                           ; $5584: $00
    rst $38                                       ; $5585: $ff
    nop                                           ; $5586: $00
    rst $38                                       ; $5587: $ff
    nop                                           ; $5588: $00
    rst $38                                       ; $5589: $ff
    nop                                           ; $558a: $00
    rst $38                                       ; $558b: $ff
    nop                                           ; $558c: $00
    rst $38                                       ; $558d: $ff
    nop                                           ; $558e: $00
    rst $38                                       ; $558f: $ff
    rlca                                          ; $5590: $07
    rst $38                                       ; $5591: $ff
    inc bc                                        ; $5592: $03
    rst $38                                       ; $5593: $ff
    rlca                                          ; $5594: $07
    rst $38                                       ; $5595: $ff
    rlca                                          ; $5596: $07
    rst $38                                       ; $5597: $ff
    rrca                                          ; $5598: $0f
    rst $38                                       ; $5599: $ff
    ld bc, $01ff                                  ; $559a: $01 $ff $01
    rst $38                                       ; $559d: $ff
    nop                                           ; $559e: $00
    rst $38                                       ; $559f: $ff
    pop bc                                        ; $55a0: $c1
    cp $e0                                        ; $55a1: $fe $e0
    rst $38                                       ; $55a3: $ff
    ret nz                                        ; $55a4: $c0

    rst $38                                       ; $55a5: $ff
    ldh [rIE], a                                  ; $55a6: $e0 $ff
    ldh a, [rIE]                                  ; $55a8: $f0 $ff
    add b                                         ; $55aa: $80
    rst $38                                       ; $55ab: $ff
    add b                                         ; $55ac: $80
    rst $38                                       ; $55ad: $ff
    nop                                           ; $55ae: $00
    rst $38                                       ; $55af: $ff
    nop                                           ; $55b0: $00
    rst $38                                       ; $55b1: $ff
    nop                                           ; $55b2: $00
    rst $38                                       ; $55b3: $ff
    nop                                           ; $55b4: $00
    rst $38                                       ; $55b5: $ff
    nop                                           ; $55b6: $00
    rst $38                                       ; $55b7: $ff
    nop                                           ; $55b8: $00
    rst $38                                       ; $55b9: $ff
    nop                                           ; $55ba: $00
    rst $38                                       ; $55bb: $ff
    nop                                           ; $55bc: $00
    rst $38                                       ; $55bd: $ff
    nop                                           ; $55be: $00
    rst $38                                       ; $55bf: $ff
    nop                                           ; $55c0: $00
    rst $38                                       ; $55c1: $ff
    nop                                           ; $55c2: $00
    rst $38                                       ; $55c3: $ff
    add b                                         ; $55c4: $80
    rst $38                                       ; $55c5: $ff
    add b                                         ; $55c6: $80
    rst $38                                       ; $55c7: $ff
    add b                                         ; $55c8: $80
    rst $38                                       ; $55c9: $ff
    add b                                         ; $55ca: $80
    rst $38                                       ; $55cb: $ff
    ret nz                                        ; $55cc: $c0

    rst $38                                       ; $55cd: $ff
    ret nz                                        ; $55ce: $c0

    rst $38                                       ; $55cf: $ff
    ld bc, $01ff                                  ; $55d0: $01 $ff $01
    rst $38                                       ; $55d3: $ff
    inc bc                                        ; $55d4: $03
    rst $38                                       ; $55d5: $ff
    rlca                                          ; $55d6: $07
    rst $38                                       ; $55d7: $ff
    inc bc                                        ; $55d8: $03
    rst $38                                       ; $55d9: $ff
    ld bc, $01ff                                  ; $55da: $01 $ff $01
    rst $38                                       ; $55dd: $ff
    inc bc                                        ; $55de: $03
    rst $38                                       ; $55df: $ff
    ldh [rIE], a                                  ; $55e0: $e0 $ff
    ldh [rIE], a                                  ; $55e2: $e0 $ff
    ldh a, [rIE]                                  ; $55e4: $f0 $ff
    ld hl, sp-$01                                 ; $55e6: $f8 $ff
    ldh a, [rIE]                                  ; $55e8: $f0 $ff
    ldh [rIE], a                                  ; $55ea: $e0 $ff
    ldh a, [rIE]                                  ; $55ec: $f0 $ff
    ldh a, [rIE]                                  ; $55ee: $f0 $ff
    inc bc                                        ; $55f0: $03
    rst $38                                       ; $55f1: $ff
    inc bc                                        ; $55f2: $03
    rst $38                                       ; $55f3: $ff
    rlca                                          ; $55f4: $07
    rst $38                                       ; $55f5: $ff
    rrca                                          ; $55f6: $0f
    rst $38                                       ; $55f7: $ff
    nop                                           ; $55f8: $00
    rst $38                                       ; $55f9: $ff
    nop                                           ; $55fa: $00
    rst $38                                       ; $55fb: $ff
    nop                                           ; $55fc: $00
    rst $38                                       ; $55fd: $ff
    nop                                           ; $55fe: $00
    rst $38                                       ; $55ff: $ff
    ld hl, sp-$01                                 ; $5600: $f8 $ff
    ld hl, sp-$01                                 ; $5602: $f8 $ff
    db $fc                                        ; $5604: $fc
    rst $38                                       ; $5605: $ff
    cp $ff                                        ; $5606: $fe $ff
    ret nz                                        ; $5608: $c0

    rst $38                                       ; $5609: $ff
    ret nz                                        ; $560a: $c0

    rst $38                                       ; $560b: $ff
    nop                                           ; $560c: $00
    rst $38                                       ; $560d: $ff
    nop                                           ; $560e: $00
    rst $38                                       ; $560f: $ff
    nop                                           ; $5610: $00
    rst $38                                       ; $5611: $ff
    nop                                           ; $5612: $00
    rst $38                                       ; $5613: $ff
    nop                                           ; $5614: $00
    rst $38                                       ; $5615: $ff
    nop                                           ; $5616: $00
    rst $38                                       ; $5617: $ff
    nop                                           ; $5618: $00
    rst $38                                       ; $5619: $ff
    nop                                           ; $561a: $00
    rst $38                                       ; $561b: $ff
    nop                                           ; $561c: $00
    rst $38                                       ; $561d: $ff
    nop                                           ; $561e: $00
    rst $38                                       ; $561f: $ff
    nop                                           ; $5620: $00
    rst $38                                       ; $5621: $ff
    nop                                           ; $5622: $00
    rst $38                                       ; $5623: $ff
    nop                                           ; $5624: $00
    rst $38                                       ; $5625: $ff
    nop                                           ; $5626: $00
    rst $38                                       ; $5627: $ff
    nop                                           ; $5628: $00
    rst $38                                       ; $5629: $ff
    nop                                           ; $562a: $00
    rst $38                                       ; $562b: $ff
    nop                                           ; $562c: $00
    rst $38                                       ; $562d: $ff
    nop                                           ; $562e: $00
    rst $38                                       ; $562f: $ff
    nop                                           ; $5630: $00
    rst $38                                       ; $5631: $ff
    nop                                           ; $5632: $00
    rst $38                                       ; $5633: $ff
    nop                                           ; $5634: $00
    rst $38                                       ; $5635: $ff
    nop                                           ; $5636: $00
    rst $38                                       ; $5637: $ff
    nop                                           ; $5638: $00
    rst $38                                       ; $5639: $ff
    nop                                           ; $563a: $00
    rst $38                                       ; $563b: $ff
    nop                                           ; $563c: $00
    rst $38                                       ; $563d: $ff
    nop                                           ; $563e: $00
    rst $38                                       ; $563f: $ff
    nop                                           ; $5640: $00
    rst $38                                       ; $5641: $ff
    nop                                           ; $5642: $00
    rst $38                                       ; $5643: $ff
    nop                                           ; $5644: $00
    rst $38                                       ; $5645: $ff
    nop                                           ; $5646: $00
    rst $38                                       ; $5647: $ff
    nop                                           ; $5648: $00
    rst $38                                       ; $5649: $ff
    nop                                           ; $564a: $00
    rst $38                                       ; $564b: $ff
    nop                                           ; $564c: $00
    rst $38                                       ; $564d: $ff
    nop                                           ; $564e: $00
    rst $38                                       ; $564f: $ff
    ret nz                                        ; $5650: $c0

    ccf                                           ; $5651: $3f
    jr nc, jr_076_5663                            ; $5652: $30 $0f

    rra                                           ; $5654: $1f
    nop                                           ; $5655: $00
    dec b                                         ; $5656: $05
    nop                                           ; $5657: $00
    ld [bc], a                                    ; $5658: $02
    nop                                           ; $5659: $00
    ld bc, $0000                                  ; $565a: $01 $00 $00
    nop                                           ; $565d: $00
    nop                                           ; $565e: $00
    nop                                           ; $565f: $00
    rrca                                          ; $5660: $0f
    ldh a, [$f4]                                  ; $5661: $f0 $f4

jr_076_5663:
    nop                                           ; $5663: $00
    add sp, $00                                   ; $5664: $e8 $00
    ld d, b                                       ; $5666: $50
    nop                                           ; $5667: $00
    and b                                         ; $5668: $a0
    nop                                           ; $5669: $00
    nop                                           ; $566a: $00
    nop                                           ; $566b: $00
    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    add b                                         ; $5670: $80
    ld a, a                                       ; $5671: $7f
    ld hl, sp+$07                                 ; $5672: $f8 $07
    rrca                                          ; $5674: $0f
    nop                                           ; $5675: $00
    ld bc, $0000                                  ; $5676: $01 $00 $00
    nop                                           ; $5679: $00
    nop                                           ; $567a: $00
    nop                                           ; $567b: $00
    nop                                           ; $567c: $00
    nop                                           ; $567d: $00
    nop                                           ; $567e: $00
    nop                                           ; $567f: $00
    nop                                           ; $5680: $00
    rst $38                                       ; $5681: $ff
    rlca                                          ; $5682: $07
    ld hl, sp-$21                                 ; $5683: $f8 $df
    jr nz, @-$01                                  ; $5685: $20 $fd

    nop                                           ; $5687: $00
    xor d                                         ; $5688: $aa
    nop                                           ; $5689: $00
    ld d, l                                       ; $568a: $55
    nop                                           ; $568b: $00
    nop                                           ; $568c: $00
    nop                                           ; $568d: $00
    nop                                           ; $568e: $00
    nop                                           ; $568f: $00
    ei                                            ; $5690: $fb
    inc b                                         ; $5691: $04
    sbc $00                                       ; $5692: $de $00
    rst $38                                       ; $5694: $ff
    nop                                           ; $5695: $00
    rst $28                                       ; $5696: $ef
    nop                                           ; $5697: $00
    cp e                                          ; $5698: $bb
    inc b                                         ; $5699: $04
    rst $38                                       ; $569a: $ff
    nop                                           ; $569b: $00
    cp a                                          ; $569c: $bf
    nop                                           ; $569d: $00
    cp $00                                        ; $569e: $fe $00
    rst $38                                       ; $56a0: $ff
    nop                                           ; $56a1: $00
    ei                                            ; $56a2: $fb
    nop                                           ; $56a3: $00
    cp a                                          ; $56a4: $bf
    nop                                           ; $56a5: $00
    or $08                                        ; $56a6: $f6 $08
    ld a, a                                       ; $56a8: $7f
    nop                                           ; $56a9: $00
    rst $38                                       ; $56aa: $ff
    nop                                           ; $56ab: $00
    cp $01                                        ; $56ac: $fe $01
    rst $28                                       ; $56ae: $ef
    nop                                           ; $56af: $00
    db $fd                                        ; $56b0: $fd
    ld [bc], a                                    ; $56b1: $02
    rst $10                                       ; $56b2: $d7

jr_076_56b3:
    jr nz, jr_076_56b3                            ; $56b3: $20 $fe

    ld bc, $00ff                                  ; $56b5: $01 $ff $00
    ei                                            ; $56b8: $fb
    nop                                           ; $56b9: $00
    rst $18                                       ; $56ba: $df
    jr nz, @+$01                                  ; $56bb: $20 $ff

    nop                                           ; $56bd: $00
    rst $38                                       ; $56be: $ff
    nop                                           ; $56bf: $00
    rst $38                                       ; $56c0: $ff
    nop                                           ; $56c1: $00
    cp [hl]                                       ; $56c2: $be
    ld bc, $08f6                                  ; $56c3: $01 $f6 $08
    rst $38                                       ; $56c6: $ff
    nop                                           ; $56c7: $00
    rst $28                                       ; $56c8: $ef
    nop                                           ; $56c9: $00
    ld a, a                                       ; $56ca: $7f
    add b                                         ; $56cb: $80
    ei                                            ; $56cc: $fb
    nop                                           ; $56cd: $00
    rst $38                                       ; $56ce: $ff
    nop                                           ; $56cf: $00
    cp a                                          ; $56d0: $bf
    ld b, b                                       ; $56d1: $40
    db $ed                                        ; $56d2: $ed
    ld [bc], a                                    ; $56d3: $02
    rst $38                                       ; $56d4: $ff
    nop                                           ; $56d5: $00
    cp a                                          ; $56d6: $bf
    nop                                           ; $56d7: $00
    sbc $20                                       ; $56d8: $de $20
    rst $38                                       ; $56da: $ff
    nop                                           ; $56db: $00
    rst $28                                       ; $56dc: $ef
    nop                                           ; $56dd: $00
    rst $38                                       ; $56de: $ff
    nop                                           ; $56df: $00
    ld l, a                                       ; $56e0: $6f
    db $10                                        ; $56e1: $10
    ei                                            ; $56e2: $fb
    nop                                           ; $56e3: $00
    rst $38                                       ; $56e4: $ff
    nop                                           ; $56e5: $00
    ld a, a                                       ; $56e6: $7f
    nop                                           ; $56e7: $00
    rst $38                                       ; $56e8: $ff
    nop                                           ; $56e9: $00
    xor $10                                       ; $56ea: $ee $10
    rst $38                                       ; $56ec: $ff
    nop                                           ; $56ed: $00
    rst $38                                       ; $56ee: $ff
    nop                                           ; $56ef: $00
    rst $38                                       ; $56f0: $ff
    nop                                           ; $56f1: $00
    rst $38                                       ; $56f2: $ff
    nop                                           ; $56f3: $00
    ld a, [hl]                                    ; $56f4: $7e
    add c                                         ; $56f5: $81
    ld a, [hl]                                    ; $56f6: $7e
    add c                                         ; $56f7: $81
    ld a, [hl]                                    ; $56f8: $7e
    add c                                         ; $56f9: $81
    ld a, [hl]                                    ; $56fa: $7e
    add c                                         ; $56fb: $81
    ld a, [hl]                                    ; $56fc: $7e
    add c                                         ; $56fd: $81
    ld a, [hl]                                    ; $56fe: $7e
    add c                                         ; $56ff: $81
    add c                                         ; $5700: $81
    rst $38                                       ; $5701: $ff
    xor c                                         ; $5702: $a9
    rst $10                                       ; $5703: $d7
    or e                                          ; $5704: $b3
    push bc                                       ; $5705: $c5
    sub a                                         ; $5706: $97
    pop bc                                        ; $5707: $c1
    xor e                                         ; $5708: $ab
    pop de                                        ; $5709: $d1
    sub e                                         ; $570a: $93
    ret                                           ; $570b: $c9


    xor e                                         ; $570c: $ab
    pop de                                        ; $570d: $d1
    rst $10                                       ; $570e: $d7
    jp hl                                         ; $570f: $e9


    rst $38                                       ; $5710: $ff
    nop                                           ; $5711: $00
    rst $38                                       ; $5712: $ff
    nop                                           ; $5713: $00
    rst $38                                       ; $5714: $ff
    nop                                           ; $5715: $00
    cp e                                          ; $5716: $bb
    nop                                           ; $5717: $00
    rst $38                                       ; $5718: $ff
    nop                                           ; $5719: $00
    xor d                                         ; $571a: $aa
    nop                                           ; $571b: $00
    db $dd                                        ; $571c: $dd
    nop                                           ; $571d: $00
    xor d                                         ; $571e: $aa
    nop                                           ; $571f: $00
    ld d, l                                       ; $5720: $55
    nop                                           ; $5721: $00
    xor d                                         ; $5722: $aa
    nop                                           ; $5723: $00
    ld d, l                                       ; $5724: $55
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    ld d, l                                       ; $5728: $55
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    ld bc, $4c00                                  ; $573a: $01 $00 $4c
    add e                                         ; $573d: $83
    nop                                           ; $573e: $00
    rst $38                                       ; $573f: $ff
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    ld [bc], a                                    ; $5744: $02
    ld bc, $0e11                                  ; $5745: $01 $11 $0e
    ld c, d                                       ; $5748: $4a
    dec [hl]                                      ; $5749: $35
    dec e                                         ; $574a: $1d
    ld [c], a                                     ; $574b: $e2
    ld c, b                                       ; $574c: $48
    or a                                          ; $574d: $b7
    add b                                         ; $574e: $80
    ld a, a                                       ; $574f: $7f
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    inc c                                         ; $5754: $0c
    db $f4                                        ; $5755: $f4
    ld b, [hl]                                    ; $5756: $46
    cp [hl]                                       ; $5757: $be
    ld b, $ff                                     ; $5758: $06 $ff
    rrca                                          ; $575a: $0f
    rst $38                                       ; $575b: $ff
    ld b, $ff                                     ; $575c: $06 $ff
    rrca                                          ; $575e: $0f
    rst $38                                       ; $575f: $ff
    nop                                           ; $5760: $00

jr_076_5761:
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    nop                                           ; $5767: $00
    inc c                                         ; $5768: $0c
    ldh a, [rSB]                                  ; $5769: $f0 $01
    cp $00                                        ; $576b: $fe $00
    rst $38                                       ; $576d: $ff
    ld bc, $00fe                                  ; $576e: $01 $fe $00
    rst $38                                       ; $5771: $ff
    ld b, d                                       ; $5772: $42
    cp l                                          ; $5773: $bd
    inc b                                         ; $5774: $04
    ei                                            ; $5775: $fb
    nop                                           ; $5776: $00
    rst $38                                       ; $5777: $ff
    nop                                           ; $5778: $00
    rst $38                                       ; $5779: $ff
    nop                                           ; $577a: $00
    rst $38                                       ; $577b: $ff
    nop                                           ; $577c: $00
    rst $38                                       ; $577d: $ff
    nop                                           ; $577e: $00
    rst $38                                       ; $577f: $ff
    jr nz, jr_076_5761                            ; $5780: $20 $df

    ld b, b                                       ; $5782: $40
    cp a                                          ; $5783: $bf
    nop                                           ; $5784: $00
    rst $38                                       ; $5785: $ff
    nop                                           ; $5786: $00
    rst $38                                       ; $5787: $ff
    nop                                           ; $5788: $00
    rst $38                                       ; $5789: $ff
    nop                                           ; $578a: $00
    rst $38                                       ; $578b: $ff
    nop                                           ; $578c: $00
    rst $38                                       ; $578d: $ff
    nop                                           ; $578e: $00
    rst $38                                       ; $578f: $ff
    rra                                           ; $5790: $1f
    rst $38                                       ; $5791: $ff
    rrca                                          ; $5792: $0f
    rst $38                                       ; $5793: $ff
    rra                                           ; $5794: $1f
    rst $38                                       ; $5795: $ff
    rra                                           ; $5796: $1f
    rst $38                                       ; $5797: $ff
    ccf                                           ; $5798: $3f
    rst $38                                       ; $5799: $ff
    ld b, $ff                                     ; $579a: $06 $ff
    ld b, $ff                                     ; $579c: $06 $ff
    nop                                           ; $579e: $00
    rst $38                                       ; $579f: $ff
    ld [bc], a                                    ; $57a0: $02
    db $fd                                        ; $57a1: $fd
    add b                                         ; $57a2: $80
    rst $38                                       ; $57a3: $ff
    nop                                           ; $57a4: $00
    rst $38                                       ; $57a5: $ff
    add b                                         ; $57a6: $80
    rst $38                                       ; $57a7: $ff
    ret nz                                        ; $57a8: $c0

    rst $38                                       ; $57a9: $ff
    nop                                           ; $57aa: $00
    rst $38                                       ; $57ab: $ff
    nop                                           ; $57ac: $00
    rst $38                                       ; $57ad: $ff
    nop                                           ; $57ae: $00
    rst $38                                       ; $57af: $ff
    nop                                           ; $57b0: $00
    rst $38                                       ; $57b1: $ff
    nop                                           ; $57b2: $00
    rst $38                                       ; $57b3: $ff
    ld [$08ff], sp                                ; $57b4: $08 $ff $08
    rst $38                                       ; $57b7: $ff
    ld [$08ff], sp                                ; $57b8: $08 $ff $08
    rst $38                                       ; $57bb: $ff
    inc c                                         ; $57bc: $0c
    rst $38                                       ; $57bd: $ff
    inc c                                         ; $57be: $0c
    rst $38                                       ; $57bf: $ff
    nop                                           ; $57c0: $00
    rst $38                                       ; $57c1: $ff
    nop                                           ; $57c2: $00
    rst $38                                       ; $57c3: $ff
    nop                                           ; $57c4: $00
    rst $38                                       ; $57c5: $ff
    nop                                           ; $57c6: $00
    rst $38                                       ; $57c7: $ff
    nop                                           ; $57c8: $00
    rst $38                                       ; $57c9: $ff
    nop                                           ; $57ca: $00
    rst $38                                       ; $57cb: $ff
    nop                                           ; $57cc: $00
    rst $38                                       ; $57cd: $ff
    nop                                           ; $57ce: $00
    rst $38                                       ; $57cf: $ff
    ld e, $ff                                     ; $57d0: $1e $ff
    ld e, $ff                                     ; $57d2: $1e $ff
    ccf                                           ; $57d4: $3f
    rst $38                                       ; $57d5: $ff
    ld a, a                                       ; $57d6: $7f
    rst $38                                       ; $57d7: $ff
    ccf                                           ; $57d8: $3f
    rst $38                                       ; $57d9: $ff
    ld e, $ff                                     ; $57da: $1e $ff
    rra                                           ; $57dc: $1f
    rst $38                                       ; $57dd: $ff
    ccf                                           ; $57de: $3f
    rst $38                                       ; $57df: $ff
    nop                                           ; $57e0: $00
    rst $38                                       ; $57e1: $ff
    nop                                           ; $57e2: $00
    rst $38                                       ; $57e3: $ff
    nop                                           ; $57e4: $00
    rst $38                                       ; $57e5: $ff
    add b                                         ; $57e6: $80
    rst $38                                       ; $57e7: $ff
    nop                                           ; $57e8: $00
    rst $38                                       ; $57e9: $ff
    nop                                           ; $57ea: $00
    rst $38                                       ; $57eb: $ff
    nop                                           ; $57ec: $00
    rst $38                                       ; $57ed: $ff
    nop                                           ; $57ee: $00
    rst $38                                       ; $57ef: $ff
    ccf                                           ; $57f0: $3f
    rst $38                                       ; $57f1: $ff
    ccf                                           ; $57f2: $3f
    rst $38                                       ; $57f3: $ff
    ld a, a                                       ; $57f4: $7f
    rst $38                                       ; $57f5: $ff
    rst $38                                       ; $57f6: $ff
    rst $38                                       ; $57f7: $ff
    inc c                                         ; $57f8: $0c
    rst $38                                       ; $57f9: $ff
    inc c                                         ; $57fa: $0c
    rst $38                                       ; $57fb: $ff
    nop                                           ; $57fc: $00
    rst $38                                       ; $57fd: $ff
    nop                                           ; $57fe: $00
    rst $38                                       ; $57ff: $ff
    add b                                         ; $5800: $80
    rst $38                                       ; $5801: $ff
    add b                                         ; $5802: $80
    rst $38                                       ; $5803: $ff
    ret nz                                        ; $5804: $c0

    rst $38                                       ; $5805: $ff
    ldh [rIE], a                                  ; $5806: $e0 $ff
    nop                                           ; $5808: $00
    rst $38                                       ; $5809: $ff
    nop                                           ; $580a: $00
    rst $38                                       ; $580b: $ff
    nop                                           ; $580c: $00
    rst $38                                       ; $580d: $ff
    nop                                           ; $580e: $00
    rst $38                                       ; $580f: $ff
    nop                                           ; $5810: $00
    rst $38                                       ; $5811: $ff
    nop                                           ; $5812: $00
    rst $38                                       ; $5813: $ff
    nop                                           ; $5814: $00
    rst $38                                       ; $5815: $ff
    nop                                           ; $5816: $00
    rst $38                                       ; $5817: $ff
    nop                                           ; $5818: $00
    rst $38                                       ; $5819: $ff
    nop                                           ; $581a: $00
    rst $38                                       ; $581b: $ff
    nop                                           ; $581c: $00
    rst $38                                       ; $581d: $ff
    nop                                           ; $581e: $00
    rst $38                                       ; $581f: $ff
    nop                                           ; $5820: $00
    rst $38                                       ; $5821: $ff
    nop                                           ; $5822: $00
    rst $38                                       ; $5823: $ff
    nop                                           ; $5824: $00
    rst $38                                       ; $5825: $ff
    nop                                           ; $5826: $00
    rst $38                                       ; $5827: $ff
    nop                                           ; $5828: $00
    rst $38                                       ; $5829: $ff
    nop                                           ; $582a: $00
    rst $38                                       ; $582b: $ff
    nop                                           ; $582c: $00
    rst $38                                       ; $582d: $ff
    nop                                           ; $582e: $00
    rst $38                                       ; $582f: $ff
    nop                                           ; $5830: $00
    rst $38                                       ; $5831: $ff
    nop                                           ; $5832: $00
    rst $38                                       ; $5833: $ff
    nop                                           ; $5834: $00
    rst $38                                       ; $5835: $ff
    nop                                           ; $5836: $00
    rst $38                                       ; $5837: $ff
    nop                                           ; $5838: $00
    rst $38                                       ; $5839: $ff
    nop                                           ; $583a: $00
    rst $38                                       ; $583b: $ff
    nop                                           ; $583c: $00
    rst $38                                       ; $583d: $ff
    nop                                           ; $583e: $00
    rst $38                                       ; $583f: $ff
    nop                                           ; $5840: $00
    rst $38                                       ; $5841: $ff
    nop                                           ; $5842: $00
    rst $38                                       ; $5843: $ff
    nop                                           ; $5844: $00
    rst $38                                       ; $5845: $ff
    nop                                           ; $5846: $00
    rst $38                                       ; $5847: $ff
    nop                                           ; $5848: $00
    rst $38                                       ; $5849: $ff
    nop                                           ; $584a: $00
    rst $38                                       ; $584b: $ff
    nop                                           ; $584c: $00
    rst $38                                       ; $584d: $ff
    ld bc, $03fe                                  ; $584e: $01 $fe $03
    db $fc                                        ; $5851: $fc
    dec a                                         ; $5852: $3d
    ret nz                                        ; $5853: $c0

    ld a, [$5400]                                 ; $5854: $fa $00 $54
    nop                                           ; $5857: $00
    xor b                                         ; $5858: $a8
    nop                                           ; $5859: $00
    ld b, b                                       ; $585a: $40
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    ldh [$1f], a                                  ; $5860: $e0 $1f
    ld a, $01                                     ; $5862: $3e $01
    inc bc                                        ; $5864: $03
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    nop                                           ; $586e: $00
    nop                                           ; $586f: $00
    nop                                           ; $5870: $00
    rst $38                                       ; $5871: $ff
    ld bc, $f7fe                                  ; $5872: $01 $fe $f7
    ld [$007f], sp                                ; $5875: $08 $7f $00
    ld a, [hl+]                                   ; $5878: $2a
    nop                                           ; $5879: $00
    dec d                                         ; $587a: $15
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    rrca                                          ; $5880: $0f
    ldh a, [rIE]                                  ; $5881: $f0 $ff
    nop                                           ; $5883: $00
    ld a, [$5400]                                 ; $5884: $fa $00 $54
    nop                                           ; $5887: $00
    xor b                                         ; $5888: $a8
    nop                                           ; $5889: $00
    ld d, b                                       ; $588a: $50
    nop                                           ; $588b: $00
    nop                                           ; $588c: $00
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    rst $38                                       ; $5890: $ff
    nop                                           ; $5891: $00
    ei                                            ; $5892: $fb
    nop                                           ; $5893: $00
    cp a                                          ; $5894: $bf
    nop                                           ; $5895: $00
    or $08                                        ; $5896: $f6 $08
    ld a, a                                       ; $5898: $7f
    nop                                           ; $5899: $00
    rst $38                                       ; $589a: $ff
    nop                                           ; $589b: $00
    cp $01                                        ; $589c: $fe $01
    rst $28                                       ; $589e: $ef
    nop                                           ; $589f: $00
    db $fd                                        ; $58a0: $fd
    ld [bc], a                                    ; $58a1: $02
    rst $10                                       ; $58a2: $d7

jr_076_58a3:
    jr nz, jr_076_58a3                            ; $58a3: $20 $fe

    ld bc, $00ff                                  ; $58a5: $01 $ff $00
    ei                                            ; $58a8: $fb
    nop                                           ; $58a9: $00
    rst $18                                       ; $58aa: $df
    jr nz, @+$01                                  ; $58ab: $20 $ff

    nop                                           ; $58ad: $00
    rst $38                                       ; $58ae: $ff
    nop                                           ; $58af: $00
    rst $38                                       ; $58b0: $ff
    nop                                           ; $58b1: $00
    cp [hl]                                       ; $58b2: $be
    ld bc, $08f6                                  ; $58b3: $01 $f6 $08
    rst $38                                       ; $58b6: $ff
    nop                                           ; $58b7: $00
    rst $28                                       ; $58b8: $ef
    nop                                           ; $58b9: $00
    ld a, a                                       ; $58ba: $7f
    add b                                         ; $58bb: $80
    ei                                            ; $58bc: $fb
    nop                                           ; $58bd: $00
    rst $38                                       ; $58be: $ff
    nop                                           ; $58bf: $00
    ei                                            ; $58c0: $fb
    inc b                                         ; $58c1: $04
    sbc $00                                       ; $58c2: $de $00
    rst $38                                       ; $58c4: $ff
    nop                                           ; $58c5: $00
    rst $28                                       ; $58c6: $ef
    nop                                           ; $58c7: $00
    cp e                                          ; $58c8: $bb
    inc b                                         ; $58c9: $04
    rst $38                                       ; $58ca: $ff
    nop                                           ; $58cb: $00
    cp a                                          ; $58cc: $bf
    nop                                           ; $58cd: $00
    cp $00                                        ; $58ce: $fe $00
    ld l, a                                       ; $58d0: $6f
    db $10                                        ; $58d1: $10
    ei                                            ; $58d2: $fb
    nop                                           ; $58d3: $00
    rst $38                                       ; $58d4: $ff
    nop                                           ; $58d5: $00
    ld a, a                                       ; $58d6: $7f
    nop                                           ; $58d7: $00
    rst $38                                       ; $58d8: $ff
    nop                                           ; $58d9: $00
    xor $10                                       ; $58da: $ee $10
    rst $38                                       ; $58dc: $ff
    nop                                           ; $58dd: $00
    rst $38                                       ; $58de: $ff
    nop                                           ; $58df: $00
    cp a                                          ; $58e0: $bf
    ld b, b                                       ; $58e1: $40
    db $ed                                        ; $58e2: $ed
    ld [bc], a                                    ; $58e3: $02
    rst $38                                       ; $58e4: $ff
    nop                                           ; $58e5: $00
    cp a                                          ; $58e6: $bf
    nop                                           ; $58e7: $00
    sbc $20                                       ; $58e8: $de $20
    rst $38                                       ; $58ea: $ff
    nop                                           ; $58eb: $00
    rst $28                                       ; $58ec: $ef
    nop                                           ; $58ed: $00
    rst $38                                       ; $58ee: $ff
    nop                                           ; $58ef: $00
    add c                                         ; $58f0: $81
    rst $38                                       ; $58f1: $ff
    xor c                                         ; $58f2: $a9
    rst $10                                       ; $58f3: $d7
    or e                                          ; $58f4: $b3
    push bc                                       ; $58f5: $c5
    sub a                                         ; $58f6: $97
    pop bc                                        ; $58f7: $c1
    xor e                                         ; $58f8: $ab
    pop de                                        ; $58f9: $d1
    sub e                                         ; $58fa: $93
    ret                                           ; $58fb: $c9


    xor e                                         ; $58fc: $ab
    pop de                                        ; $58fd: $d1
    rst $10                                       ; $58fe: $d7
    jp hl                                         ; $58ff: $e9


    rst $38                                       ; $5900: $ff
    nop                                           ; $5901: $00
    rst $38                                       ; $5902: $ff
    nop                                           ; $5903: $00
    ld a, [hl]                                    ; $5904: $7e
    add c                                         ; $5905: $81
    ld a, [hl]                                    ; $5906: $7e
    add c                                         ; $5907: $81
    ld a, [hl]                                    ; $5908: $7e
    add c                                         ; $5909: $81
    ld a, [hl]                                    ; $590a: $7e
    add c                                         ; $590b: $81
    ld a, [hl]                                    ; $590c: $7e
    add c                                         ; $590d: $81
    ld a, [hl]                                    ; $590e: $7e
    add c                                         ; $590f: $81
    rst $38                                       ; $5910: $ff
    nop                                           ; $5911: $00
    rst $38                                       ; $5912: $ff
    nop                                           ; $5913: $00
    rst $38                                       ; $5914: $ff
    nop                                           ; $5915: $00
    cp e                                          ; $5916: $bb
    nop                                           ; $5917: $00
    rst $38                                       ; $5918: $ff
    nop                                           ; $5919: $00
    xor d                                         ; $591a: $aa
    nop                                           ; $591b: $00
    db $dd                                        ; $591c: $dd
    nop                                           ; $591d: $00
    xor d                                         ; $591e: $aa
    nop                                           ; $591f: $00
    ld d, l                                       ; $5920: $55
    nop                                           ; $5921: $00
    xor d                                         ; $5922: $aa
    nop                                           ; $5923: $00
    ld d, l                                       ; $5924: $55
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    ld d, l                                       ; $5928: $55
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    ld [bc], a                                    ; $593a: $02
    ld bc, $0798                                  ; $593b: $01 $98 $07
    ld bc, $00fe                                  ; $593e: $01 $fe $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    inc b                                         ; $5944: $04
    inc bc                                        ; $5945: $03
    ld [hl+], a                                   ; $5946: $22
    dec e                                         ; $5947: $1d
    sub h                                         ; $5948: $94
    ld l, e                                       ; $5949: $6b

jr_076_594a:
    ld a, [hl-]                                   ; $594a: $3a
    push bc                                       ; $594b: $c5
    sub b                                         ; $594c: $90
    ld l, a                                       ; $594d: $6f
    nop                                           ; $594e: $00
    rst $38                                       ; $594f: $ff
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    db $10                                        ; $5954: $10
    ldh a, [$9c]                                  ; $5955: $f0 $9c
    ld a, b                                       ; $5957: $78
    jr @+$01                                      ; $5958: $18 $ff

    inc a                                         ; $595a: $3c
    rst $38                                       ; $595b: $ff
    jr @+$01                                      ; $595c: $18 $ff

    inc a                                         ; $595e: $3c
    rst $38                                       ; $595f: $ff
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    jr jr_076_594a                                ; $5968: $18 $e0

    ld [bc], a                                    ; $596a: $02
    db $fc                                        ; $596b: $fc
    nop                                           ; $596c: $00
    rst $38                                       ; $596d: $ff
    ld [bc], a                                    ; $596e: $02
    db $fd                                        ; $596f: $fd
    nop                                           ; $5970: $00
    rst $38                                       ; $5971: $ff
    add h                                         ; $5972: $84
    ld a, e                                       ; $5973: $7b
    ld [$00f7], sp                                ; $5974: $08 $f7 $00
    rst $38                                       ; $5977: $ff
    nop                                           ; $5978: $00
    rst $38                                       ; $5979: $ff
    nop                                           ; $597a: $00
    rst $38                                       ; $597b: $ff
    nop                                           ; $597c: $00
    rst $38                                       ; $597d: $ff
    nop                                           ; $597e: $00
    rst $38                                       ; $597f: $ff
    ld b, b                                       ; $5980: $40
    cp a                                          ; $5981: $bf
    add b                                         ; $5982: $80
    ld a, a                                       ; $5983: $7f
    nop                                           ; $5984: $00
    rst $38                                       ; $5985: $ff
    nop                                           ; $5986: $00
    rst $38                                       ; $5987: $ff
    nop                                           ; $5988: $00
    rst $38                                       ; $5989: $ff
    nop                                           ; $598a: $00
    rst $38                                       ; $598b: $ff
    nop                                           ; $598c: $00
    rst $38                                       ; $598d: $ff
    nop                                           ; $598e: $00
    rst $38                                       ; $598f: $ff
    ld a, h                                       ; $5990: $7c
    rst $38                                       ; $5991: $ff
    ld a, $ff                                     ; $5992: $3e $ff
    ld a, h                                       ; $5994: $7c
    rst $38                                       ; $5995: $ff
    ld a, [hl]                                    ; $5996: $7e
    rst $38                                       ; $5997: $ff
    rst $38                                       ; $5998: $ff
    rst $38                                       ; $5999: $ff
    jr @+$01                                      ; $599a: $18 $ff

    jr @+$01                                      ; $599c: $18 $ff

    nop                                           ; $599e: $00
    rst $38                                       ; $599f: $ff
    inc b                                         ; $59a0: $04
    ei                                            ; $59a1: $fb
    nop                                           ; $59a2: $00
    rst $38                                       ; $59a3: $ff
    nop                                           ; $59a4: $00
    rst $38                                       ; $59a5: $ff
    nop                                           ; $59a6: $00
    rst $38                                       ; $59a7: $ff
    nop                                           ; $59a8: $00
    rst $38                                       ; $59a9: $ff
    nop                                           ; $59aa: $00
    rst $38                                       ; $59ab: $ff
    nop                                           ; $59ac: $00
    rst $38                                       ; $59ad: $ff
    nop                                           ; $59ae: $00
    rst $38                                       ; $59af: $ff
    nop                                           ; $59b0: $00
    rst $38                                       ; $59b1: $ff
    nop                                           ; $59b2: $00
    rst $38                                       ; $59b3: $ff
    add b                                         ; $59b4: $80
    rst $38                                       ; $59b5: $ff
    add b                                         ; $59b6: $80
    rst $38                                       ; $59b7: $ff
    add b                                         ; $59b8: $80
    rst $38                                       ; $59b9: $ff
    add b                                         ; $59ba: $80
    rst $38                                       ; $59bb: $ff
    ret nz                                        ; $59bc: $c0

    rst $38                                       ; $59bd: $ff
    ret nz                                        ; $59be: $c0

    rst $38                                       ; $59bf: $ff
    nop                                           ; $59c0: $00
    rst $38                                       ; $59c1: $ff
    nop                                           ; $59c2: $00
    rst $38                                       ; $59c3: $ff
    nop                                           ; $59c4: $00
    rst $38                                       ; $59c5: $ff
    nop                                           ; $59c6: $00
    rst $38                                       ; $59c7: $ff
    nop                                           ; $59c8: $00
    rst $38                                       ; $59c9: $ff
    nop                                           ; $59ca: $00
    rst $38                                       ; $59cb: $ff
    nop                                           ; $59cc: $00
    rst $38                                       ; $59cd: $ff
    nop                                           ; $59ce: $00
    rst $38                                       ; $59cf: $ff
    ldh [rIE], a                                  ; $59d0: $e0 $ff
    ldh [rIE], a                                  ; $59d2: $e0 $ff
    ldh a, [rIE]                                  ; $59d4: $f0 $ff
    ld hl, sp-$01                                 ; $59d6: $f8 $ff
    ldh a, [rIE]                                  ; $59d8: $f0 $ff
    ldh [rIE], a                                  ; $59da: $e0 $ff
    ldh a, [rIE]                                  ; $59dc: $f0 $ff
    ldh a, [rIE]                                  ; $59de: $f0 $ff
    ld bc, $01ff                                  ; $59e0: $01 $ff $01
    rst $38                                       ; $59e3: $ff
    inc bc                                        ; $59e4: $03
    rst $38                                       ; $59e5: $ff
    rlca                                          ; $59e6: $07
    rst $38                                       ; $59e7: $ff
    inc bc                                        ; $59e8: $03
    rst $38                                       ; $59e9: $ff
    ld bc, $01ff                                  ; $59ea: $01 $ff $01
    rst $38                                       ; $59ed: $ff
    inc bc                                        ; $59ee: $03
    rst $38                                       ; $59ef: $ff
    ld hl, sp-$01                                 ; $59f0: $f8 $ff
    ld hl, sp-$01                                 ; $59f2: $f8 $ff
    db $fc                                        ; $59f4: $fc
    rst $38                                       ; $59f5: $ff
    cp $ff                                        ; $59f6: $fe $ff
    ret nz                                        ; $59f8: $c0

    rst $38                                       ; $59f9: $ff
    ret nz                                        ; $59fa: $c0

    rst $38                                       ; $59fb: $ff
    nop                                           ; $59fc: $00
    rst $38                                       ; $59fd: $ff
    nop                                           ; $59fe: $00
    rst $38                                       ; $59ff: $ff
    inc bc                                        ; $5a00: $03
    rst $38                                       ; $5a01: $ff
    inc bc                                        ; $5a02: $03
    rst $38                                       ; $5a03: $ff
    rlca                                          ; $5a04: $07
    rst $38                                       ; $5a05: $ff
    rrca                                          ; $5a06: $0f
    rst $38                                       ; $5a07: $ff
    nop                                           ; $5a08: $00
    rst $38                                       ; $5a09: $ff
    nop                                           ; $5a0a: $00
    rst $38                                       ; $5a0b: $ff
    nop                                           ; $5a0c: $00
    rst $38                                       ; $5a0d: $ff
    nop                                           ; $5a0e: $00
    rst $38                                       ; $5a0f: $ff
    nop                                           ; $5a10: $00
    rst $38                                       ; $5a11: $ff
    nop                                           ; $5a12: $00
    rst $38                                       ; $5a13: $ff
    nop                                           ; $5a14: $00
    rst $38                                       ; $5a15: $ff
    nop                                           ; $5a16: $00
    rst $38                                       ; $5a17: $ff
    nop                                           ; $5a18: $00
    rst $38                                       ; $5a19: $ff
    nop                                           ; $5a1a: $00
    rst $38                                       ; $5a1b: $ff
    nop                                           ; $5a1c: $00
    rst $38                                       ; $5a1d: $ff
    nop                                           ; $5a1e: $00
    rst $38                                       ; $5a1f: $ff
    nop                                           ; $5a20: $00
    rst $38                                       ; $5a21: $ff
    nop                                           ; $5a22: $00
    rst $38                                       ; $5a23: $ff
    nop                                           ; $5a24: $00
    rst $38                                       ; $5a25: $ff
    nop                                           ; $5a26: $00
    rst $38                                       ; $5a27: $ff
    nop                                           ; $5a28: $00
    rst $38                                       ; $5a29: $ff
    nop                                           ; $5a2a: $00
    rst $38                                       ; $5a2b: $ff
    nop                                           ; $5a2c: $00
    rst $38                                       ; $5a2d: $ff
    nop                                           ; $5a2e: $00
    rst $38                                       ; $5a2f: $ff
    nop                                           ; $5a30: $00
    rst $38                                       ; $5a31: $ff
    nop                                           ; $5a32: $00
    rst $38                                       ; $5a33: $ff
    nop                                           ; $5a34: $00
    rst $38                                       ; $5a35: $ff
    nop                                           ; $5a36: $00
    rst $38                                       ; $5a37: $ff
    nop                                           ; $5a38: $00
    rst $38                                       ; $5a39: $ff
    nop                                           ; $5a3a: $00
    rst $38                                       ; $5a3b: $ff
    nop                                           ; $5a3c: $00
    rst $38                                       ; $5a3d: $ff
    nop                                           ; $5a3e: $00
    rst $38                                       ; $5a3f: $ff
    nop                                           ; $5a40: $00
    rst $38                                       ; $5a41: $ff
    nop                                           ; $5a42: $00
    rst $38                                       ; $5a43: $ff
    nop                                           ; $5a44: $00
    rst $38                                       ; $5a45: $ff
    nop                                           ; $5a46: $00
    rst $38                                       ; $5a47: $ff
    nop                                           ; $5a48: $00
    rst $38                                       ; $5a49: $ff
    nop                                           ; $5a4a: $00
    rst $38                                       ; $5a4b: $ff
    rlca                                          ; $5a4c: $07
    ld hl, sp+$7d                                 ; $5a4d: $f8 $7d
    add b                                         ; $5a4f: $80
    ld hl, sp+$07                                 ; $5a50: $f8 $07
    ld c, a                                       ; $5a52: $4f
    nop                                           ; $5a53: $00
    add b                                         ; $5a54: $80
    nop                                           ; $5a55: $00
    nop                                           ; $5a56: $00
    nop                                           ; $5a57: $00
    nop                                           ; $5a58: $00
    nop                                           ; $5a59: $00
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    nop                                           ; $5a60: $00
    rst $38                                       ; $5a61: $ff
    add b                                         ; $5a62: $80
    ld a, a                                       ; $5a63: $7f
    db $fd                                        ; $5a64: $fd
    ld [bc], a                                    ; $5a65: $02
    rra                                           ; $5a66: $1f
    nop                                           ; $5a67: $00
    ld a, [bc]                                    ; $5a68: $0a
    nop                                           ; $5a69: $00
    dec b                                         ; $5a6a: $05
    nop                                           ; $5a6b: $00
    nop                                           ; $5a6c: $00
    nop                                           ; $5a6d: $00
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    inc bc                                        ; $5a70: $03
    db $fc                                        ; $5a71: $fc
    ld a, a                                       ; $5a72: $7f
    add b                                         ; $5a73: $80
    cp $00                                        ; $5a74: $fe $00
    push de                                       ; $5a76: $d5
    nop                                           ; $5a77: $00
    xor d                                         ; $5a78: $aa
    nop                                           ; $5a79: $00
    ld d, h                                       ; $5a7a: $54
    nop                                           ; $5a7b: $00
    nop                                           ; $5a7c: $00
    nop                                           ; $5a7d: $00
    nop                                           ; $5a7e: $00
    nop                                           ; $5a7f: $00
    ld a, [$d000]                                 ; $5a80: $fa $00 $d0
    nop                                           ; $5a83: $00
    and b                                         ; $5a84: $a0
    nop                                           ; $5a85: $00
    nop                                           ; $5a86: $00
    nop                                           ; $5a87: $00
    nop                                           ; $5a88: $00
    nop                                           ; $5a89: $00
    nop                                           ; $5a8a: $00
    nop                                           ; $5a8b: $00
    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    db $fd                                        ; $5a90: $fd
    ld [bc], a                                    ; $5a91: $02
    rst $10                                       ; $5a92: $d7

jr_076_5a93:
    jr nz, jr_076_5a93                            ; $5a93: $20 $fe

    ld bc, $00ff                                  ; $5a95: $01 $ff $00
    ei                                            ; $5a98: $fb
    nop                                           ; $5a99: $00
    rst $18                                       ; $5a9a: $df
    jr nz, @+$01                                  ; $5a9b: $20 $ff

    nop                                           ; $5a9d: $00
    rst $38                                       ; $5a9e: $ff
    nop                                           ; $5a9f: $00
    rst $38                                       ; $5aa0: $ff
    nop                                           ; $5aa1: $00
    cp [hl]                                       ; $5aa2: $be
    ld bc, $08f6                                  ; $5aa3: $01 $f6 $08
    rst $38                                       ; $5aa6: $ff
    nop                                           ; $5aa7: $00
    rst $28                                       ; $5aa8: $ef
    nop                                           ; $5aa9: $00
    ld a, a                                       ; $5aaa: $7f
    add b                                         ; $5aab: $80
    ei                                            ; $5aac: $fb
    nop                                           ; $5aad: $00
    rst $38                                       ; $5aae: $ff
    nop                                           ; $5aaf: $00
    ei                                            ; $5ab0: $fb
    inc b                                         ; $5ab1: $04
    sbc $00                                       ; $5ab2: $de $00
    rst $38                                       ; $5ab4: $ff
    nop                                           ; $5ab5: $00
    rst $28                                       ; $5ab6: $ef
    nop                                           ; $5ab7: $00
    cp e                                          ; $5ab8: $bb
    inc b                                         ; $5ab9: $04
    rst $38                                       ; $5aba: $ff
    nop                                           ; $5abb: $00
    cp a                                          ; $5abc: $bf
    nop                                           ; $5abd: $00
    cp $00                                        ; $5abe: $fe $00
    rst $38                                       ; $5ac0: $ff
    nop                                           ; $5ac1: $00
    ei                                            ; $5ac2: $fb
    nop                                           ; $5ac3: $00
    cp a                                          ; $5ac4: $bf
    nop                                           ; $5ac5: $00
    or $08                                        ; $5ac6: $f6 $08
    ld a, a                                       ; $5ac8: $7f
    nop                                           ; $5ac9: $00
    rst $38                                       ; $5aca: $ff
    nop                                           ; $5acb: $00
    cp $01                                        ; $5acc: $fe $01
    rst $28                                       ; $5ace: $ef
    nop                                           ; $5acf: $00
    cp a                                          ; $5ad0: $bf
    ld b, b                                       ; $5ad1: $40
    db $ed                                        ; $5ad2: $ed
    ld [bc], a                                    ; $5ad3: $02
    rst $38                                       ; $5ad4: $ff
    nop                                           ; $5ad5: $00
    cp a                                          ; $5ad6: $bf
    nop                                           ; $5ad7: $00
    sbc $20                                       ; $5ad8: $de $20
    rst $38                                       ; $5ada: $ff
    nop                                           ; $5adb: $00
    rst $28                                       ; $5adc: $ef
    nop                                           ; $5add: $00
    rst $38                                       ; $5ade: $ff
    nop                                           ; $5adf: $00
    ld l, a                                       ; $5ae0: $6f
    db $10                                        ; $5ae1: $10
    ei                                            ; $5ae2: $fb
    nop                                           ; $5ae3: $00
    rst $38                                       ; $5ae4: $ff
    nop                                           ; $5ae5: $00
    ld a, a                                       ; $5ae6: $7f
    nop                                           ; $5ae7: $00
    rst $38                                       ; $5ae8: $ff
    nop                                           ; $5ae9: $00
    xor $10                                       ; $5aea: $ee $10
    rst $38                                       ; $5aec: $ff
    nop                                           ; $5aed: $00
    rst $38                                       ; $5aee: $ff
    nop                                           ; $5aef: $00
    rst $38                                       ; $5af0: $ff
    nop                                           ; $5af1: $00
    rst $38                                       ; $5af2: $ff
    nop                                           ; $5af3: $00
    ld a, [hl]                                    ; $5af4: $7e
    add c                                         ; $5af5: $81
    ld a, [hl]                                    ; $5af6: $7e
    add c                                         ; $5af7: $81
    ld a, [hl]                                    ; $5af8: $7e
    add c                                         ; $5af9: $81
    ld a, [hl]                                    ; $5afa: $7e
    add c                                         ; $5afb: $81
    ld a, [hl]                                    ; $5afc: $7e
    add c                                         ; $5afd: $81
    ld a, [hl]                                    ; $5afe: $7e
    add c                                         ; $5aff: $81
    add c                                         ; $5b00: $81
    rst $38                                       ; $5b01: $ff
    xor c                                         ; $5b02: $a9
    rst $10                                       ; $5b03: $d7
    or e                                          ; $5b04: $b3
    push bc                                       ; $5b05: $c5
    sub a                                         ; $5b06: $97
    pop bc                                        ; $5b07: $c1
    xor e                                         ; $5b08: $ab
    pop de                                        ; $5b09: $d1
    sub e                                         ; $5b0a: $93
    ret                                           ; $5b0b: $c9


    xor e                                         ; $5b0c: $ab
    pop de                                        ; $5b0d: $d1
    rst $10                                       ; $5b0e: $d7
    jp hl                                         ; $5b0f: $e9


    rst $38                                       ; $5b10: $ff
    nop                                           ; $5b11: $00
    rst $38                                       ; $5b12: $ff
    nop                                           ; $5b13: $00
    rst $38                                       ; $5b14: $ff
    nop                                           ; $5b15: $00
    ld [hl], a                                    ; $5b16: $77
    nop                                           ; $5b17: $00
    rst $38                                       ; $5b18: $ff
    nop                                           ; $5b19: $00
    ld d, l                                       ; $5b1a: $55
    nop                                           ; $5b1b: $00
    cp e                                          ; $5b1c: $bb
    nop                                           ; $5b1d: $00
    ld d, l                                       ; $5b1e: $55
    nop                                           ; $5b1f: $00
    xor d                                         ; $5b20: $aa

jr_076_5b21:
    nop                                           ; $5b21: $00
    ld d, l                                       ; $5b22: $55
    nop                                           ; $5b23: $00
    xor d                                         ; $5b24: $aa
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    nop                                           ; $5b27: $00
    xor d                                         ; $5b28: $aa
    nop                                           ; $5b29: $00

jr_076_5b2a:
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00

jr_076_5b2d:
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    nop                                           ; $5b35: $00
    nop                                           ; $5b36: $00
    nop                                           ; $5b37: $00
    ld bc, $0400                                  ; $5b38: $01 $00 $04
    inc bc                                        ; $5b3b: $03
    ld sp, $020e                                  ; $5b3c: $31 $0e $02
    db $fd                                        ; $5b3f: $fd
    nop                                           ; $5b40: $00
    nop                                           ; $5b41: $00
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00
    ld [$4507], sp                                ; $5b44: $08 $07 $45
    ld a, [hl-]                                   ; $5b47: $3a
    jr z, jr_076_5b21                             ; $5b48: $28 $d7

    ld [hl], h                                    ; $5b4a: $74
    adc e                                         ; $5b4b: $8b
    jr nz, jr_076_5b2d                            ; $5b4c: $20 $df

    nop                                           ; $5b4e: $00
    rst $38                                       ; $5b4f: $ff
    nop                                           ; $5b50: $00
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    ld h, b                                       ; $5b54: $60
    ret nz                                        ; $5b55: $c0

    ld l, b                                       ; $5b56: $68
    ldh a, [$60]                                  ; $5b57: $f0 $60
    rst $38                                       ; $5b59: $ff
    ldh a, [rIE]                                  ; $5b5a: $f0 $ff
    ld h, b                                       ; $5b5c: $60
    rst $38                                       ; $5b5d: $ff
    ldh a, [rIE]                                  ; $5b5e: $f0 $ff
    nop                                           ; $5b60: $00
    nop                                           ; $5b61: $00
    nop                                           ; $5b62: $00
    nop                                           ; $5b63: $00
    nop                                           ; $5b64: $00
    nop                                           ; $5b65: $00
    nop                                           ; $5b66: $00
    nop                                           ; $5b67: $00
    jr nc, jr_076_5b2a                            ; $5b68: $30 $c0

    inc b                                         ; $5b6a: $04
    ld hl, sp+$01                                 ; $5b6b: $f8 $01
    cp $04                                        ; $5b6d: $fe $04
    ei                                            ; $5b6f: $fb
    nop                                           ; $5b70: $00
    rst $38                                       ; $5b71: $ff
    add hl, bc                                    ; $5b72: $09
    or $10                                        ; $5b73: $f6 $10
    rst $28                                       ; $5b75: $ef
    nop                                           ; $5b76: $00
    rst $38                                       ; $5b77: $ff
    nop                                           ; $5b78: $00
    rst $38                                       ; $5b79: $ff
    nop                                           ; $5b7a: $00
    rst $38                                       ; $5b7b: $ff
    nop                                           ; $5b7c: $00
    rst $38                                       ; $5b7d: $ff
    nop                                           ; $5b7e: $00
    rst $38                                       ; $5b7f: $ff
    add c                                         ; $5b80: $81
    ld a, a                                       ; $5b81: $7f
    nop                                           ; $5b82: $00
    rst $38                                       ; $5b83: $ff
    ld bc, $01ff                                  ; $5b84: $01 $ff $01
    rst $38                                       ; $5b87: $ff
    inc bc                                        ; $5b88: $03
    rst $38                                       ; $5b89: $ff
    nop                                           ; $5b8a: $00
    rst $38                                       ; $5b8b: $ff
    nop                                           ; $5b8c: $00
    rst $38                                       ; $5b8d: $ff
    nop                                           ; $5b8e: $00
    rst $38                                       ; $5b8f: $ff
    ldh a, [rIE]                                  ; $5b90: $f0 $ff
    ld hl, sp-$01                                 ; $5b92: $f8 $ff
    ldh a, [rIE]                                  ; $5b94: $f0 $ff
    ld hl, sp-$01                                 ; $5b96: $f8 $ff
    db $fc                                        ; $5b98: $fc
    rst $38                                       ; $5b99: $ff
    ld h, b                                       ; $5b9a: $60
    rst $38                                       ; $5b9b: $ff
    ld h, b                                       ; $5b9c: $60
    rst $38                                       ; $5b9d: $ff
    nop                                           ; $5b9e: $00
    rst $38                                       ; $5b9f: $ff
    ld [$01f7], sp                                ; $5ba0: $08 $f7 $01
    cp $00                                        ; $5ba3: $fe $00
    rst $38                                       ; $5ba5: $ff
    nop                                           ; $5ba6: $00
    rst $38                                       ; $5ba7: $ff
    nop                                           ; $5ba8: $00
    rst $38                                       ; $5ba9: $ff
    nop                                           ; $5baa: $00
    rst $38                                       ; $5bab: $ff
    nop                                           ; $5bac: $00
    rst $38                                       ; $5bad: $ff
    nop                                           ; $5bae: $00
    rst $38                                       ; $5baf: $ff
    nop                                           ; $5bb0: $00
    rst $38                                       ; $5bb1: $ff
    nop                                           ; $5bb2: $00
    rst $38                                       ; $5bb3: $ff
    nop                                           ; $5bb4: $00
    rst $38                                       ; $5bb5: $ff
    nop                                           ; $5bb6: $00
    rst $38                                       ; $5bb7: $ff
    nop                                           ; $5bb8: $00
    rst $38                                       ; $5bb9: $ff
    nop                                           ; $5bba: $00
    rst $38                                       ; $5bbb: $ff
    nop                                           ; $5bbc: $00
    rst $38                                       ; $5bbd: $ff
    nop                                           ; $5bbe: $00
    rst $38                                       ; $5bbf: $ff
    nop                                           ; $5bc0: $00
    rst $38                                       ; $5bc1: $ff
    nop                                           ; $5bc2: $00
    rst $38                                       ; $5bc3: $ff
    ld [$08ff], sp                                ; $5bc4: $08 $ff $08
    rst $38                                       ; $5bc7: $ff
    ld [$08ff], sp                                ; $5bc8: $08 $ff $08
    rst $38                                       ; $5bcb: $ff
    inc c                                         ; $5bcc: $0c
    rst $38                                       ; $5bcd: $ff
    inc c                                         ; $5bce: $0c
    rst $38                                       ; $5bcf: $ff
    nop                                           ; $5bd0: $00
    rst $38                                       ; $5bd1: $ff
    nop                                           ; $5bd2: $00
    rst $38                                       ; $5bd3: $ff
    nop                                           ; $5bd4: $00
    rst $38                                       ; $5bd5: $ff
    add b                                         ; $5bd6: $80
    rst $38                                       ; $5bd7: $ff
    nop                                           ; $5bd8: $00
    rst $38                                       ; $5bd9: $ff
    nop                                           ; $5bda: $00
    rst $38                                       ; $5bdb: $ff
    nop                                           ; $5bdc: $00
    rst $38                                       ; $5bdd: $ff
    nop                                           ; $5bde: $00
    rst $38                                       ; $5bdf: $ff
    ld e, $ff                                     ; $5be0: $1e $ff
    ld e, $ff                                     ; $5be2: $1e $ff
    ccf                                           ; $5be4: $3f
    rst $38                                       ; $5be5: $ff
    ld a, a                                       ; $5be6: $7f
    rst $38                                       ; $5be7: $ff
    ccf                                           ; $5be8: $3f
    rst $38                                       ; $5be9: $ff
    ld e, $ff                                     ; $5bea: $1e $ff
    rra                                           ; $5bec: $1f
    rst $38                                       ; $5bed: $ff
    ccf                                           ; $5bee: $3f
    rst $38                                       ; $5bef: $ff
    add b                                         ; $5bf0: $80
    rst $38                                       ; $5bf1: $ff
    add b                                         ; $5bf2: $80
    rst $38                                       ; $5bf3: $ff
    ret nz                                        ; $5bf4: $c0

    rst $38                                       ; $5bf5: $ff
    ldh [rIE], a                                  ; $5bf6: $e0 $ff
    nop                                           ; $5bf8: $00
    rst $38                                       ; $5bf9: $ff
    nop                                           ; $5bfa: $00
    rst $38                                       ; $5bfb: $ff
    nop                                           ; $5bfc: $00
    rst $38                                       ; $5bfd: $ff
    nop                                           ; $5bfe: $00
    rst $38                                       ; $5bff: $ff
    ccf                                           ; $5c00: $3f
    rst $38                                       ; $5c01: $ff
    ccf                                           ; $5c02: $3f
    rst $38                                       ; $5c03: $ff
    ld a, a                                       ; $5c04: $7f
    rst $38                                       ; $5c05: $ff
    rst $38                                       ; $5c06: $ff
    rst $38                                       ; $5c07: $ff
    inc c                                         ; $5c08: $0c
    rst $38                                       ; $5c09: $ff
    inc c                                         ; $5c0a: $0c
    rst $38                                       ; $5c0b: $ff
    nop                                           ; $5c0c: $00
    rst $38                                       ; $5c0d: $ff
    nop                                           ; $5c0e: $00
    rst $38                                       ; $5c0f: $ff
    nop                                           ; $5c10: $00
    rst $38                                       ; $5c11: $ff
    nop                                           ; $5c12: $00
    rst $38                                       ; $5c13: $ff
    nop                                           ; $5c14: $00
    rst $38                                       ; $5c15: $ff
    nop                                           ; $5c16: $00
    rst $38                                       ; $5c17: $ff
    nop                                           ; $5c18: $00
    rst $38                                       ; $5c19: $ff
    nop                                           ; $5c1a: $00
    rst $38                                       ; $5c1b: $ff
    nop                                           ; $5c1c: $00
    rst $38                                       ; $5c1d: $ff
    nop                                           ; $5c1e: $00
    rst $38                                       ; $5c1f: $ff
    nop                                           ; $5c20: $00
    rst $38                                       ; $5c21: $ff
    nop                                           ; $5c22: $00
    rst $38                                       ; $5c23: $ff
    nop                                           ; $5c24: $00
    rst $38                                       ; $5c25: $ff
    nop                                           ; $5c26: $00
    rst $38                                       ; $5c27: $ff
    nop                                           ; $5c28: $00
    rst $38                                       ; $5c29: $ff
    nop                                           ; $5c2a: $00
    rst $38                                       ; $5c2b: $ff
    nop                                           ; $5c2c: $00
    rst $38                                       ; $5c2d: $ff
    nop                                           ; $5c2e: $00
    rst $38                                       ; $5c2f: $ff
    nop                                           ; $5c30: $00
    rst $38                                       ; $5c31: $ff
    nop                                           ; $5c32: $00
    rst $38                                       ; $5c33: $ff
    nop                                           ; $5c34: $00
    rst $38                                       ; $5c35: $ff
    nop                                           ; $5c36: $00
    rst $38                                       ; $5c37: $ff
    nop                                           ; $5c38: $00
    rst $38                                       ; $5c39: $ff
    nop                                           ; $5c3a: $00
    rst $38                                       ; $5c3b: $ff
    ld bc, $1ffe                                  ; $5c3c: $01 $fe $1f
    ldh [rP1], a                                  ; $5c3f: $e0 $00
    rst $38                                       ; $5c41: $ff
    nop                                           ; $5c42: $00
    rst $38                                       ; $5c43: $ff
    nop                                           ; $5c44: $00
    rst $38                                       ; $5c45: $ff
    nop                                           ; $5c46: $00
    rst $38                                       ; $5c47: $ff
    nop                                           ; $5c48: $00
    rst $38                                       ; $5c49: $ff
    nop                                           ; $5c4a: $00
    rst $38                                       ; $5c4b: $ff
    rst $38                                       ; $5c4c: $ff
    nop                                           ; $5c4d: $00
    ld d, b                                       ; $5c4e: $50
    nop                                           ; $5c4f: $00
    nop                                           ; $5c50: $00
    rst $38                                       ; $5c51: $ff
    ldh [$1f], a                                  ; $5c52: $e0 $1f
    ccf                                           ; $5c54: $3f
    nop                                           ; $5c55: $00
    rlca                                          ; $5c56: $07
    nop                                           ; $5c57: $00
    ld [bc], a                                    ; $5c58: $02
    nop                                           ; $5c59: $00
    ld bc, $0000                                  ; $5c5a: $01 $00 $00
    nop                                           ; $5c5d: $00
    nop                                           ; $5c5e: $00
    nop                                           ; $5c5f: $00
    nop                                           ; $5c60: $00
    rst $38                                       ; $5c61: $ff
    rra                                           ; $5c62: $1f
    ldh [$7f], a                                  ; $5c63: $e0 $7f
    add b                                         ; $5c65: $80
    push af                                       ; $5c66: $f5
    nop                                           ; $5c67: $00
    xor d                                         ; $5c68: $aa
    nop                                           ; $5c69: $00
    ld d, l                                       ; $5c6a: $55
    nop                                           ; $5c6b: $00
    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    nop                                           ; $5c6e: $00
    nop                                           ; $5c6f: $00
    cp $00                                        ; $5c70: $fe $00
    db $f4                                        ; $5c72: $f4
    nop                                           ; $5c73: $00
    xor b                                         ; $5c74: $a8
    nop                                           ; $5c75: $00
    ld b, b                                       ; $5c76: $40
    nop                                           ; $5c77: $00
    add b                                         ; $5c78: $80
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    nop                                           ; $5c7b: $00
    nop                                           ; $5c7c: $00
    nop                                           ; $5c7d: $00
    nop                                           ; $5c7e: $00
    nop                                           ; $5c7f: $00
    add b                                         ; $5c80: $80
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    nop                                           ; $5c84: $00
    nop                                           ; $5c85: $00
    nop                                           ; $5c86: $00
    nop                                           ; $5c87: $00
    nop                                           ; $5c88: $00
    nop                                           ; $5c89: $00
    nop                                           ; $5c8a: $00
    nop                                           ; $5c8b: $00
    nop                                           ; $5c8c: $00
    nop                                           ; $5c8d: $00
    nop                                           ; $5c8e: $00
    nop                                           ; $5c8f: $00
    rst $38                                       ; $5c90: $ff
    nop                                           ; $5c91: $00
    cp [hl]                                       ; $5c92: $be
    ld bc, $08f6                                  ; $5c93: $01 $f6 $08
    rst $38                                       ; $5c96: $ff
    nop                                           ; $5c97: $00
    rst $28                                       ; $5c98: $ef
    nop                                           ; $5c99: $00
    ld a, a                                       ; $5c9a: $7f
    add b                                         ; $5c9b: $80
    ei                                            ; $5c9c: $fb
    nop                                           ; $5c9d: $00
    rst $38                                       ; $5c9e: $ff
    nop                                           ; $5c9f: $00
    ei                                            ; $5ca0: $fb
    inc b                                         ; $5ca1: $04
    sbc $00                                       ; $5ca2: $de $00
    rst $38                                       ; $5ca4: $ff
    nop                                           ; $5ca5: $00
    rst $28                                       ; $5ca6: $ef
    nop                                           ; $5ca7: $00
    cp e                                          ; $5ca8: $bb
    inc b                                         ; $5ca9: $04
    rst $38                                       ; $5caa: $ff
    nop                                           ; $5cab: $00
    cp a                                          ; $5cac: $bf
    nop                                           ; $5cad: $00
    cp $00                                        ; $5cae: $fe $00
    rst $38                                       ; $5cb0: $ff
    nop                                           ; $5cb1: $00
    ei                                            ; $5cb2: $fb
    nop                                           ; $5cb3: $00
    cp a                                          ; $5cb4: $bf
    nop                                           ; $5cb5: $00
    or $08                                        ; $5cb6: $f6 $08
    ld a, a                                       ; $5cb8: $7f
    nop                                           ; $5cb9: $00
    rst $38                                       ; $5cba: $ff
    nop                                           ; $5cbb: $00
    cp $01                                        ; $5cbc: $fe $01
    rst $28                                       ; $5cbe: $ef
    nop                                           ; $5cbf: $00
    db $fd                                        ; $5cc0: $fd
    ld [bc], a                                    ; $5cc1: $02
    rst $10                                       ; $5cc2: $d7

jr_076_5cc3:
    jr nz, jr_076_5cc3                            ; $5cc3: $20 $fe

    ld bc, $00ff                                  ; $5cc5: $01 $ff $00
    ei                                            ; $5cc8: $fb
    nop                                           ; $5cc9: $00
    rst $18                                       ; $5cca: $df
    jr nz, @+$01                                  ; $5ccb: $20 $ff

    nop                                           ; $5ccd: $00
    rst $38                                       ; $5cce: $ff
    nop                                           ; $5ccf: $00
    ld l, a                                       ; $5cd0: $6f
    db $10                                        ; $5cd1: $10
    ei                                            ; $5cd2: $fb
    nop                                           ; $5cd3: $00
    rst $38                                       ; $5cd4: $ff
    nop                                           ; $5cd5: $00
    ld a, a                                       ; $5cd6: $7f
    nop                                           ; $5cd7: $00
    rst $38                                       ; $5cd8: $ff
    nop                                           ; $5cd9: $00
    xor $10                                       ; $5cda: $ee $10
    rst $38                                       ; $5cdc: $ff
    nop                                           ; $5cdd: $00
    rst $38                                       ; $5cde: $ff
    nop                                           ; $5cdf: $00
    cp a                                          ; $5ce0: $bf
    ld b, b                                       ; $5ce1: $40
    db $ed                                        ; $5ce2: $ed
    ld [bc], a                                    ; $5ce3: $02
    rst $38                                       ; $5ce4: $ff
    nop                                           ; $5ce5: $00
    cp a                                          ; $5ce6: $bf
    nop                                           ; $5ce7: $00
    sbc $20                                       ; $5ce8: $de $20
    rst $38                                       ; $5cea: $ff
    nop                                           ; $5ceb: $00
    rst $28                                       ; $5cec: $ef
    nop                                           ; $5ced: $00
    rst $38                                       ; $5cee: $ff
    nop                                           ; $5cef: $00
    add c                                         ; $5cf0: $81
    rst $38                                       ; $5cf1: $ff
    xor c                                         ; $5cf2: $a9
    rst $10                                       ; $5cf3: $d7
    or e                                          ; $5cf4: $b3
    push bc                                       ; $5cf5: $c5
    sub a                                         ; $5cf6: $97
    pop bc                                        ; $5cf7: $c1
    xor e                                         ; $5cf8: $ab
    pop de                                        ; $5cf9: $d1
    sub e                                         ; $5cfa: $93
    ret                                           ; $5cfb: $c9


    xor e                                         ; $5cfc: $ab
    pop de                                        ; $5cfd: $d1
    rst $10                                       ; $5cfe: $d7
    jp hl                                         ; $5cff: $e9


    rst $38                                       ; $5d00: $ff
    nop                                           ; $5d01: $00
    rst $38                                       ; $5d02: $ff
    nop                                           ; $5d03: $00
    ld a, [hl]                                    ; $5d04: $7e
    add c                                         ; $5d05: $81
    ld a, [hl]                                    ; $5d06: $7e
    add c                                         ; $5d07: $81
    ld a, [hl]                                    ; $5d08: $7e
    add c                                         ; $5d09: $81
    ld a, [hl]                                    ; $5d0a: $7e
    add c                                         ; $5d0b: $81
    ld a, [hl]                                    ; $5d0c: $7e
    add c                                         ; $5d0d: $81
    ld a, [hl]                                    ; $5d0e: $7e
    add c                                         ; $5d0f: $81
    rst $38                                       ; $5d10: $ff
    nop                                           ; $5d11: $00
    rst $38                                       ; $5d12: $ff
    nop                                           ; $5d13: $00
    rst $38                                       ; $5d14: $ff
    nop                                           ; $5d15: $00
    ld [hl], a                                    ; $5d16: $77
    nop                                           ; $5d17: $00
    rst $38                                       ; $5d18: $ff
    nop                                           ; $5d19: $00
    ld d, l                                       ; $5d1a: $55
    nop                                           ; $5d1b: $00
    cp e                                          ; $5d1c: $bb
    nop                                           ; $5d1d: $00
    ld d, l                                       ; $5d1e: $55
    nop                                           ; $5d1f: $00
    xor d                                         ; $5d20: $aa
    nop                                           ; $5d21: $00
    ld d, l                                       ; $5d22: $55
    nop                                           ; $5d23: $00
    xor d                                         ; $5d24: $aa
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    xor d                                         ; $5d28: $aa
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    nop                                           ; $5d2b: $00
    nop                                           ; $5d2c: $00
    nop                                           ; $5d2d: $00
    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    nop                                           ; $5d30: $00
    nop                                           ; $5d31: $00
    nop                                           ; $5d32: $00
    nop                                           ; $5d33: $00
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    ld [bc], a                                    ; $5d38: $02
    ld bc, $0708                                  ; $5d39: $01 $08 $07
    ld h, d                                       ; $5d3c: $62
    dec e                                         ; $5d3d: $1d
    inc b                                         ; $5d3e: $04
    ei                                            ; $5d3f: $fb
    nop                                           ; $5d40: $00
    nop                                           ; $5d41: $00
    nop                                           ; $5d42: $00
    nop                                           ; $5d43: $00
    ld de, $8b0f                                  ; $5d44: $11 $0f $8b
    ld [hl], l                                    ; $5d47: $75
    ld d, c                                       ; $5d48: $51
    xor a                                         ; $5d49: $af
    db $eb                                        ; $5d4a: $eb
    rla                                           ; $5d4b: $17
    ld b, c                                       ; $5d4c: $41
    cp a                                          ; $5d4d: $bf
    inc bc                                        ; $5d4e: $03
    rst $38                                       ; $5d4f: $ff
    nop                                           ; $5d50: $00
    nop                                           ; $5d51: $00
    nop                                           ; $5d52: $00
    nop                                           ; $5d53: $00
    ld b, b                                       ; $5d54: $40

jr_076_5d55:
    add b                                         ; $5d55: $80
    sub b                                         ; $5d56: $90
    ldh [$80], a                                  ; $5d57: $e0 $80
    rst $38                                       ; $5d59: $ff
    ret nz                                        ; $5d5a: $c0

    rst $38                                       ; $5d5b: $ff
    add b                                         ; $5d5c: $80
    rst $38                                       ; $5d5d: $ff
    ret nz                                        ; $5d5e: $c0

    rst $38                                       ; $5d5f: $ff
    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    nop                                           ; $5d63: $00
    nop                                           ; $5d64: $00
    nop                                           ; $5d65: $00
    nop                                           ; $5d66: $00
    nop                                           ; $5d67: $00
    ld h, b                                       ; $5d68: $60
    add b                                         ; $5d69: $80
    ld [$02f0], sp                                ; $5d6a: $08 $f0 $02
    db $fc                                        ; $5d6d: $fc
    ld [$01f7], sp                                ; $5d6e: $08 $f7 $01
    cp $12                                        ; $5d71: $fe $12
    db $ed                                        ; $5d73: $ed
    jr nz, jr_076_5d55                            ; $5d74: $20 $df

    nop                                           ; $5d76: $00
    rst $38                                       ; $5d77: $ff
    nop                                           ; $5d78: $00
    rst $38                                       ; $5d79: $ff
    nop                                           ; $5d7a: $00
    rst $38                                       ; $5d7b: $ff
    nop                                           ; $5d7c: $00
    rst $38                                       ; $5d7d: $ff
    nop                                           ; $5d7e: $00
    rst $38                                       ; $5d7f: $ff
    rlca                                          ; $5d80: $07
    rst $38                                       ; $5d81: $ff
    inc bc                                        ; $5d82: $03
    rst $38                                       ; $5d83: $ff
    rlca                                          ; $5d84: $07
    rst $38                                       ; $5d85: $ff
    rlca                                          ; $5d86: $07
    rst $38                                       ; $5d87: $ff
    rrca                                          ; $5d88: $0f
    rst $38                                       ; $5d89: $ff
    ld bc, $01ff                                  ; $5d8a: $01 $ff $01
    rst $38                                       ; $5d8d: $ff
    nop                                           ; $5d8e: $00
    rst $38                                       ; $5d8f: $ff
    ret nz                                        ; $5d90: $c0

    rst $38                                       ; $5d91: $ff
    ldh [rIE], a                                  ; $5d92: $e0 $ff
    ret nz                                        ; $5d94: $c0

    rst $38                                       ; $5d95: $ff
    ldh [rIE], a                                  ; $5d96: $e0 $ff
    ldh a, [rIE]                                  ; $5d98: $f0 $ff
    add b                                         ; $5d9a: $80
    rst $38                                       ; $5d9b: $ff
    add b                                         ; $5d9c: $80
    rst $38                                       ; $5d9d: $ff
    nop                                           ; $5d9e: $00
    rst $38                                       ; $5d9f: $ff
    db $10                                        ; $5da0: $10
    rst $28                                       ; $5da1: $ef
    ld [bc], a                                    ; $5da2: $02
    db $fd                                        ; $5da3: $fd
    nop                                           ; $5da4: $00
    rst $38                                       ; $5da5: $ff
    nop                                           ; $5da6: $00
    rst $38                                       ; $5da7: $ff
    nop                                           ; $5da8: $00
    rst $38                                       ; $5da9: $ff
    nop                                           ; $5daa: $00
    rst $38                                       ; $5dab: $ff
    nop                                           ; $5dac: $00
    rst $38                                       ; $5dad: $ff
    nop                                           ; $5dae: $00
    rst $38                                       ; $5daf: $ff
    nop                                           ; $5db0: $00
    rst $38                                       ; $5db1: $ff
    nop                                           ; $5db2: $00
    rst $38                                       ; $5db3: $ff
    nop                                           ; $5db4: $00
    rst $38                                       ; $5db5: $ff
    nop                                           ; $5db6: $00
    rst $38                                       ; $5db7: $ff
    nop                                           ; $5db8: $00
    rst $38                                       ; $5db9: $ff
    nop                                           ; $5dba: $00
    rst $38                                       ; $5dbb: $ff
    nop                                           ; $5dbc: $00
    rst $38                                       ; $5dbd: $ff
    nop                                           ; $5dbe: $00
    rst $38                                       ; $5dbf: $ff
    nop                                           ; $5dc0: $00
    rst $38                                       ; $5dc1: $ff
    nop                                           ; $5dc2: $00
    rst $38                                       ; $5dc3: $ff
    add b                                         ; $5dc4: $80
    rst $38                                       ; $5dc5: $ff
    add b                                         ; $5dc6: $80
    rst $38                                       ; $5dc7: $ff
    add b                                         ; $5dc8: $80
    rst $38                                       ; $5dc9: $ff
    add b                                         ; $5dca: $80
    rst $38                                       ; $5dcb: $ff
    ret nz                                        ; $5dcc: $c0

    rst $38                                       ; $5dcd: $ff
    ret nz                                        ; $5dce: $c0

    rst $38                                       ; $5dcf: $ff
    ld bc, $01ff                                  ; $5dd0: $01 $ff $01
    rst $38                                       ; $5dd3: $ff
    inc bc                                        ; $5dd4: $03
    rst $38                                       ; $5dd5: $ff
    rlca                                          ; $5dd6: $07
    rst $38                                       ; $5dd7: $ff
    inc bc                                        ; $5dd8: $03
    rst $38                                       ; $5dd9: $ff
    ld bc, $01ff                                  ; $5dda: $01 $ff $01
    rst $38                                       ; $5ddd: $ff
    inc bc                                        ; $5dde: $03
    rst $38                                       ; $5ddf: $ff
    ldh [rIE], a                                  ; $5de0: $e0 $ff
    ldh [rIE], a                                  ; $5de2: $e0 $ff
    ldh a, [rIE]                                  ; $5de4: $f0 $ff
    ld hl, sp-$01                                 ; $5de6: $f8 $ff
    ldh a, [rIE]                                  ; $5de8: $f0 $ff
    ldh [rIE], a                                  ; $5dea: $e0 $ff
    ldh a, [rIE]                                  ; $5dec: $f0 $ff
    ldh a, [rIE]                                  ; $5dee: $f0 $ff
    inc bc                                        ; $5df0: $03
    rst $38                                       ; $5df1: $ff
    inc bc                                        ; $5df2: $03
    rst $38                                       ; $5df3: $ff
    rlca                                          ; $5df4: $07
    rst $38                                       ; $5df5: $ff
    rrca                                          ; $5df6: $0f
    rst $38                                       ; $5df7: $ff
    nop                                           ; $5df8: $00
    rst $38                                       ; $5df9: $ff
    nop                                           ; $5dfa: $00
    rst $38                                       ; $5dfb: $ff
    nop                                           ; $5dfc: $00
    rst $38                                       ; $5dfd: $ff
    nop                                           ; $5dfe: $00
    rst $38                                       ; $5dff: $ff
    ld hl, sp-$01                                 ; $5e00: $f8 $ff
    ld hl, sp-$01                                 ; $5e02: $f8 $ff
    db $fc                                        ; $5e04: $fc
    rst $38                                       ; $5e05: $ff
    cp $ff                                        ; $5e06: $fe $ff
    ret nz                                        ; $5e08: $c0

    rst $38                                       ; $5e09: $ff
    ret nz                                        ; $5e0a: $c0

    rst $38                                       ; $5e0b: $ff
    nop                                           ; $5e0c: $00
    rst $38                                       ; $5e0d: $ff
    nop                                           ; $5e0e: $00
    rst $38                                       ; $5e0f: $ff
    nop                                           ; $5e10: $00
    rst $38                                       ; $5e11: $ff
    nop                                           ; $5e12: $00
    rst $38                                       ; $5e13: $ff
    nop                                           ; $5e14: $00
    rst $38                                       ; $5e15: $ff
    nop                                           ; $5e16: $00
    rst $38                                       ; $5e17: $ff
    nop                                           ; $5e18: $00
    rst $38                                       ; $5e19: $ff
    nop                                           ; $5e1a: $00
    rst $38                                       ; $5e1b: $ff
    nop                                           ; $5e1c: $00
    rst $38                                       ; $5e1d: $ff
    nop                                           ; $5e1e: $00
    rst $38                                       ; $5e1f: $ff
    nop                                           ; $5e20: $00
    rst $38                                       ; $5e21: $ff
    nop                                           ; $5e22: $00
    rst $38                                       ; $5e23: $ff
    nop                                           ; $5e24: $00
    rst $38                                       ; $5e25: $ff
    nop                                           ; $5e26: $00
    rst $38                                       ; $5e27: $ff
    nop                                           ; $5e28: $00
    rst $38                                       ; $5e29: $ff
    nop                                           ; $5e2a: $00
    rst $38                                       ; $5e2b: $ff
    nop                                           ; $5e2c: $00
    rst $38                                       ; $5e2d: $ff
    rlca                                          ; $5e2e: $07
    ld hl, sp+$00                                 ; $5e2f: $f8 $00
    rst $38                                       ; $5e31: $ff
    nop                                           ; $5e32: $00
    rst $38                                       ; $5e33: $ff
    nop                                           ; $5e34: $00
    rst $38                                       ; $5e35: $ff
    nop                                           ; $5e36: $00
    rst $38                                       ; $5e37: $ff
    nop                                           ; $5e38: $00
    rst $38                                       ; $5e39: $ff
    nop                                           ; $5e3a: $00
    rst $38                                       ; $5e3b: $ff
    ld a, a                                       ; $5e3c: $7f
    add b                                         ; $5e3d: $80
    call nc, RST_00                               ; $5e3e: $d4 $00 $00
    rst $38                                       ; $5e41: $ff
    nop                                           ; $5e42: $00
    rst $38                                       ; $5e43: $ff
    nop                                           ; $5e44: $00
    rst $38                                       ; $5e45: $ff
    nop                                           ; $5e46: $00
    rst $38                                       ; $5e47: $ff
    nop                                           ; $5e48: $00
    rst $38                                       ; $5e49: $ff
    nop                                           ; $5e4a: $00
    rst $38                                       ; $5e4b: $ff
    ldh a, [rIF]                                  ; $5e4c: $f0 $0f
    rra                                           ; $5e4e: $1f
    nop                                           ; $5e4f: $00
    nop                                           ; $5e50: $00
    rst $38                                       ; $5e51: $ff
    rlca                                          ; $5e52: $07
    ld hl, sp-$21                                 ; $5e53: $f8 $df
    jr nz, @-$01                                  ; $5e55: $20 $fd

    nop                                           ; $5e57: $00
    xor d                                         ; $5e58: $aa
    nop                                           ; $5e59: $00
    ld d, l                                       ; $5e5a: $55
    nop                                           ; $5e5b: $00
    nop                                           ; $5e5c: $00
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    nop                                           ; $5e5f: $00
    ccf                                           ; $5e60: $3f
    ret nz                                        ; $5e61: $c0

    db $fd                                        ; $5e62: $fd
    nop                                           ; $5e63: $00
    ld [$5000], a                                 ; $5e64: $ea $00 $50
    nop                                           ; $5e67: $00
    and b                                         ; $5e68: $a0
    nop                                           ; $5e69: $00
    ld b, b                                       ; $5e6a: $40
    nop                                           ; $5e6b: $00
    nop                                           ; $5e6c: $00
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    and b                                         ; $5e70: $a0
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    nop                                           ; $5e73: $00
    nop                                           ; $5e74: $00
    nop                                           ; $5e75: $00
    nop                                           ; $5e76: $00
    nop                                           ; $5e77: $00
    nop                                           ; $5e78: $00
    nop                                           ; $5e79: $00
    nop                                           ; $5e7a: $00
    nop                                           ; $5e7b: $00
    nop                                           ; $5e7c: $00
    nop                                           ; $5e7d: $00
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    nop                                           ; $5e84: $00
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    nop                                           ; $5e88: $00
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    nop                                           ; $5e8c: $00
    nop                                           ; $5e8d: $00
    nop                                           ; $5e8e: $00
    nop                                           ; $5e8f: $00
    ei                                            ; $5e90: $fb
    inc b                                         ; $5e91: $04
    sbc $00                                       ; $5e92: $de $00
    rst $38                                       ; $5e94: $ff
    nop                                           ; $5e95: $00
    rst $28                                       ; $5e96: $ef
    nop                                           ; $5e97: $00
    cp e                                          ; $5e98: $bb
    inc b                                         ; $5e99: $04
    rst $38                                       ; $5e9a: $ff
    nop                                           ; $5e9b: $00
    cp a                                          ; $5e9c: $bf
    nop                                           ; $5e9d: $00
    cp $00                                        ; $5e9e: $fe $00
    rst $38                                       ; $5ea0: $ff
    nop                                           ; $5ea1: $00
    ei                                            ; $5ea2: $fb
    nop                                           ; $5ea3: $00
    cp a                                          ; $5ea4: $bf
    nop                                           ; $5ea5: $00
    or $08                                        ; $5ea6: $f6 $08
    ld a, a                                       ; $5ea8: $7f
    nop                                           ; $5ea9: $00
    rst $38                                       ; $5eaa: $ff
    nop                                           ; $5eab: $00
    cp $01                                        ; $5eac: $fe $01
    rst $28                                       ; $5eae: $ef
    nop                                           ; $5eaf: $00
    db $fd                                        ; $5eb0: $fd
    ld [bc], a                                    ; $5eb1: $02
    rst $10                                       ; $5eb2: $d7

jr_076_5eb3:
    jr nz, jr_076_5eb3                            ; $5eb3: $20 $fe

    ld bc, $00ff                                  ; $5eb5: $01 $ff $00
    ei                                            ; $5eb8: $fb
    nop                                           ; $5eb9: $00
    rst $18                                       ; $5eba: $df
    jr nz, @+$01                                  ; $5ebb: $20 $ff

    nop                                           ; $5ebd: $00
    rst $38                                       ; $5ebe: $ff
    nop                                           ; $5ebf: $00
    rst $38                                       ; $5ec0: $ff
    nop                                           ; $5ec1: $00
    cp [hl]                                       ; $5ec2: $be
    ld bc, $08f6                                  ; $5ec3: $01 $f6 $08
    rst $38                                       ; $5ec6: $ff
    nop                                           ; $5ec7: $00
    rst $28                                       ; $5ec8: $ef
    nop                                           ; $5ec9: $00
    ld a, a                                       ; $5eca: $7f
    add b                                         ; $5ecb: $80
    ei                                            ; $5ecc: $fb
    nop                                           ; $5ecd: $00
    rst $38                                       ; $5ece: $ff
    nop                                           ; $5ecf: $00
    cp a                                          ; $5ed0: $bf
    ld b, b                                       ; $5ed1: $40
    db $ed                                        ; $5ed2: $ed
    ld [bc], a                                    ; $5ed3: $02
    rst $38                                       ; $5ed4: $ff
    nop                                           ; $5ed5: $00
    cp a                                          ; $5ed6: $bf
    nop                                           ; $5ed7: $00
    sbc $20                                       ; $5ed8: $de $20
    rst $38                                       ; $5eda: $ff
    nop                                           ; $5edb: $00
    rst $28                                       ; $5edc: $ef
    nop                                           ; $5edd: $00
    rst $38                                       ; $5ede: $ff
    nop                                           ; $5edf: $00
    ld l, a                                       ; $5ee0: $6f
    db $10                                        ; $5ee1: $10
    ei                                            ; $5ee2: $fb
    nop                                           ; $5ee3: $00
    rst $38                                       ; $5ee4: $ff
    nop                                           ; $5ee5: $00
    ld a, a                                       ; $5ee6: $7f
    nop                                           ; $5ee7: $00
    rst $38                                       ; $5ee8: $ff
    nop                                           ; $5ee9: $00
    xor $10                                       ; $5eea: $ee $10
    rst $38                                       ; $5eec: $ff
    nop                                           ; $5eed: $00
    rst $38                                       ; $5eee: $ff
    nop                                           ; $5eef: $00
    rst $38                                       ; $5ef0: $ff
    nop                                           ; $5ef1: $00
    rst $38                                       ; $5ef2: $ff
    nop                                           ; $5ef3: $00
    ld a, [hl]                                    ; $5ef4: $7e
    add c                                         ; $5ef5: $81
    ld a, [hl]                                    ; $5ef6: $7e
    add c                                         ; $5ef7: $81
    ld a, [hl]                                    ; $5ef8: $7e
    add c                                         ; $5ef9: $81
    ld a, [hl]                                    ; $5efa: $7e
    add c                                         ; $5efb: $81
    ld a, [hl]                                    ; $5efc: $7e
    add c                                         ; $5efd: $81
    ld a, [hl]                                    ; $5efe: $7e
    add c                                         ; $5eff: $81
    add c                                         ; $5f00: $81
    rst $38                                       ; $5f01: $ff
    xor c                                         ; $5f02: $a9
    rst $10                                       ; $5f03: $d7
    or e                                          ; $5f04: $b3
    push bc                                       ; $5f05: $c5
    sub a                                         ; $5f06: $97
    pop bc                                        ; $5f07: $c1
    xor e                                         ; $5f08: $ab
    pop de                                        ; $5f09: $d1
    sub e                                         ; $5f0a: $93
    ret                                           ; $5f0b: $c9


    xor e                                         ; $5f0c: $ab
    pop de                                        ; $5f0d: $d1
    rst $10                                       ; $5f0e: $d7
    jp hl                                         ; $5f0f: $e9


    rst $38                                       ; $5f10: $ff
    nop                                           ; $5f11: $00
    rst $38                                       ; $5f12: $ff
    nop                                           ; $5f13: $00
    rst $38                                       ; $5f14: $ff
    nop                                           ; $5f15: $00
    xor $00                                       ; $5f16: $ee $00

jr_076_5f18:
    rst $38                                       ; $5f18: $ff
    nop                                           ; $5f19: $00
    xor d                                         ; $5f1a: $aa
    nop                                           ; $5f1b: $00
    ld [hl], a                                    ; $5f1c: $77
    nop                                           ; $5f1d: $00
    xor d                                         ; $5f1e: $aa
    nop                                           ; $5f1f: $00
    ld d, l                                       ; $5f20: $55
    nop                                           ; $5f21: $00
    xor d                                         ; $5f22: $aa
    nop                                           ; $5f23: $00
    ld d, l                                       ; $5f24: $55
    nop                                           ; $5f25: $00
    nop                                           ; $5f26: $00
    nop                                           ; $5f27: $00
    ld d, l                                       ; $5f28: $55
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    nop                                           ; $5f2e: $00
    nop                                           ; $5f2f: $00
    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    nop                                           ; $5f33: $00
    nop                                           ; $5f34: $00
    nop                                           ; $5f35: $00
    ld bc, $0400                                  ; $5f36: $01 $00 $04
    inc bc                                        ; $5f39: $03
    ld de, $c40e                                  ; $5f3a: $11 $0e $c4
    dec sp                                        ; $5f3d: $3b
    ld [$00f7], sp                                ; $5f3e: $08 $f7 $00
    nop                                           ; $5f41: $00
    nop                                           ; $5f42: $00
    nop                                           ; $5f43: $00
    inc h                                         ; $5f44: $24
    rra                                           ; $5f45: $1f
    ld d, $ef                                     ; $5f46: $16 $ef
    and [hl]                                      ; $5f48: $a6
    ld e, a                                       ; $5f49: $5f
    rst $18                                       ; $5f4a: $df
    cpl                                           ; $5f4b: $2f
    add [hl]                                      ; $5f4c: $86
    ld a, a                                       ; $5f4d: $7f
    rrca                                          ; $5f4e: $0f
    rst $38                                       ; $5f4f: $ff
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    nop                                           ; $5f52: $00
    nop                                           ; $5f53: $00
    add b                                         ; $5f54: $80
    nop                                           ; $5f55: $00
    jr nz, jr_076_5f18                            ; $5f56: $20 $c0

    nop                                           ; $5f58: $00
    rst $38                                       ; $5f59: $ff
    nop                                           ; $5f5a: $00
    rst $38                                       ; $5f5b: $ff
    nop                                           ; $5f5c: $00
    rst $38                                       ; $5f5d: $ff
    nop                                           ; $5f5e: $00
    rst $38                                       ; $5f5f: $ff
    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    nop                                           ; $5f62: $00
    nop                                           ; $5f63: $00
    nop                                           ; $5f64: $00
    nop                                           ; $5f65: $00
    nop                                           ; $5f66: $00
    nop                                           ; $5f67: $00
    ret nz                                        ; $5f68: $c0

    nop                                           ; $5f69: $00
    db $10                                        ; $5f6a: $10
    ldh [rDIV], a                                 ; $5f6b: $e0 $04
    ld hl, sp+$10                                 ; $5f6d: $f8 $10
    rst $28                                       ; $5f6f: $ef
    ld [bc], a                                    ; $5f70: $02
    db $fd                                        ; $5f71: $fd
    inc h                                         ; $5f72: $24
    db $db                                        ; $5f73: $db
    ld b, b                                       ; $5f74: $40
    cp a                                          ; $5f75: $bf
    nop                                           ; $5f76: $00
    rst $38                                       ; $5f77: $ff
    nop                                           ; $5f78: $00
    rst $38                                       ; $5f79: $ff
    nop                                           ; $5f7a: $00
    rst $38                                       ; $5f7b: $ff
    nop                                           ; $5f7c: $00
    rst $38                                       ; $5f7d: $ff
    nop                                           ; $5f7e: $00
    rst $38                                       ; $5f7f: $ff
    rra                                           ; $5f80: $1f

jr_076_5f81:
    rst $38                                       ; $5f81: $ff
    rrca                                          ; $5f82: $0f
    rst $38                                       ; $5f83: $ff
    rra                                           ; $5f84: $1f
    rst $38                                       ; $5f85: $ff
    rra                                           ; $5f86: $1f
    rst $38                                       ; $5f87: $ff
    ccf                                           ; $5f88: $3f
    rst $38                                       ; $5f89: $ff
    ld b, $ff                                     ; $5f8a: $06 $ff
    ld b, $ff                                     ; $5f8c: $06 $ff
    nop                                           ; $5f8e: $00
    rst $38                                       ; $5f8f: $ff
    nop                                           ; $5f90: $00
    rst $38                                       ; $5f91: $ff
    add b                                         ; $5f92: $80
    rst $38                                       ; $5f93: $ff
    nop                                           ; $5f94: $00
    rst $38                                       ; $5f95: $ff
    add b                                         ; $5f96: $80
    rst $38                                       ; $5f97: $ff
    ret nz                                        ; $5f98: $c0

    rst $38                                       ; $5f99: $ff
    nop                                           ; $5f9a: $00
    rst $38                                       ; $5f9b: $ff
    nop                                           ; $5f9c: $00
    rst $38                                       ; $5f9d: $ff
    nop                                           ; $5f9e: $00
    rst $38                                       ; $5f9f: $ff
    jr nz, jr_076_5f81                            ; $5fa0: $20 $df

    inc b                                         ; $5fa2: $04
    ei                                            ; $5fa3: $fb
    nop                                           ; $5fa4: $00
    rst $38                                       ; $5fa5: $ff
    nop                                           ; $5fa6: $00
    rst $38                                       ; $5fa7: $ff
    nop                                           ; $5fa8: $00
    rst $38                                       ; $5fa9: $ff
    nop                                           ; $5faa: $00
    rst $38                                       ; $5fab: $ff
    nop                                           ; $5fac: $00
    rst $38                                       ; $5fad: $ff
    nop                                           ; $5fae: $00
    rst $38                                       ; $5faf: $ff
    nop                                           ; $5fb0: $00
    rst $38                                       ; $5fb1: $ff
    nop                                           ; $5fb2: $00
    rst $38                                       ; $5fb3: $ff
    ld [$08ff], sp                                ; $5fb4: $08 $ff $08
    rst $38                                       ; $5fb7: $ff
    ld [$08ff], sp                                ; $5fb8: $08 $ff $08
    rst $38                                       ; $5fbb: $ff
    inc c                                         ; $5fbc: $0c
    rst $38                                       ; $5fbd: $ff
    inc c                                         ; $5fbe: $0c
    rst $38                                       ; $5fbf: $ff
    nop                                           ; $5fc0: $00
    rst $38                                       ; $5fc1: $ff
    nop                                           ; $5fc2: $00
    rst $38                                       ; $5fc3: $ff
    nop                                           ; $5fc4: $00
    rst $38                                       ; $5fc5: $ff
    nop                                           ; $5fc6: $00
    rst $38                                       ; $5fc7: $ff
    nop                                           ; $5fc8: $00
    rst $38                                       ; $5fc9: $ff
    nop                                           ; $5fca: $00
    rst $38                                       ; $5fcb: $ff
    nop                                           ; $5fcc: $00
    rst $38                                       ; $5fcd: $ff
    nop                                           ; $5fce: $00
    rst $38                                       ; $5fcf: $ff
    ld e, $ff                                     ; $5fd0: $1e $ff
    ld e, $ff                                     ; $5fd2: $1e $ff
    ccf                                           ; $5fd4: $3f
    rst $38                                       ; $5fd5: $ff
    ld a, a                                       ; $5fd6: $7f
    rst $38                                       ; $5fd7: $ff
    ccf                                           ; $5fd8: $3f
    rst $38                                       ; $5fd9: $ff
    ld e, $ff                                     ; $5fda: $1e $ff
    rra                                           ; $5fdc: $1f
    rst $38                                       ; $5fdd: $ff
    ccf                                           ; $5fde: $3f
    rst $38                                       ; $5fdf: $ff
    nop                                           ; $5fe0: $00
    rst $38                                       ; $5fe1: $ff
    nop                                           ; $5fe2: $00
    rst $38                                       ; $5fe3: $ff
    nop                                           ; $5fe4: $00
    rst $38                                       ; $5fe5: $ff
    add b                                         ; $5fe6: $80
    rst $38                                       ; $5fe7: $ff
    nop                                           ; $5fe8: $00
    rst $38                                       ; $5fe9: $ff
    nop                                           ; $5fea: $00
    rst $38                                       ; $5feb: $ff
    nop                                           ; $5fec: $00
    rst $38                                       ; $5fed: $ff
    nop                                           ; $5fee: $00
    rst $38                                       ; $5fef: $ff
    ccf                                           ; $5ff0: $3f
    rst $38                                       ; $5ff1: $ff
    ccf                                           ; $5ff2: $3f
    rst $38                                       ; $5ff3: $ff
    ld a, a                                       ; $5ff4: $7f
    rst $38                                       ; $5ff5: $ff
    rst $38                                       ; $5ff6: $ff
    rst $38                                       ; $5ff7: $ff
    inc c                                         ; $5ff8: $0c
    rst $38                                       ; $5ff9: $ff
    inc c                                         ; $5ffa: $0c
    rst $38                                       ; $5ffb: $ff
    nop                                           ; $5ffc: $00
    rst $38                                       ; $5ffd: $ff
    nop                                           ; $5ffe: $00
    rst $38                                       ; $5fff: $ff
    add b                                         ; $6000: $80
    rst $38                                       ; $6001: $ff
    add b                                         ; $6002: $80
    rst $38                                       ; $6003: $ff
    ret nz                                        ; $6004: $c0

    rst $38                                       ; $6005: $ff
    ldh [rIE], a                                  ; $6006: $e0 $ff
    nop                                           ; $6008: $00
    rst $38                                       ; $6009: $ff
    nop                                           ; $600a: $00
    rst $38                                       ; $600b: $ff
    nop                                           ; $600c: $00
    rst $38                                       ; $600d: $ff
    nop                                           ; $600e: $00
    rst $38                                       ; $600f: $ff
    nop                                           ; $6010: $00
    rst $38                                       ; $6011: $ff
    nop                                           ; $6012: $00
    rst $38                                       ; $6013: $ff
    nop                                           ; $6014: $00
    rst $38                                       ; $6015: $ff
    nop                                           ; $6016: $00
    rst $38                                       ; $6017: $ff
    nop                                           ; $6018: $00
    rst $38                                       ; $6019: $ff
    nop                                           ; $601a: $00
    rst $38                                       ; $601b: $ff
    nop                                           ; $601c: $00
    rst $38                                       ; $601d: $ff
    ld bc, $00fe                                  ; $601e: $01 $fe $00
    rst $38                                       ; $6021: $ff
    nop                                           ; $6022: $00
    rst $38                                       ; $6023: $ff
    nop                                           ; $6024: $00
    rst $38                                       ; $6025: $ff
    nop                                           ; $6026: $00
    rst $38                                       ; $6027: $ff
    nop                                           ; $6028: $00
    rst $38                                       ; $6029: $ff
    nop                                           ; $602a: $00
    rst $38                                       ; $602b: $ff
    rra                                           ; $602c: $1f
    ldh [$f5], a                                  ; $602d: $e0 $f5
    nop                                           ; $602f: $00
    nop                                           ; $6030: $00
    rst $38                                       ; $6031: $ff
    nop                                           ; $6032: $00
    rst $38                                       ; $6033: $ff
    nop                                           ; $6034: $00
    rst $38                                       ; $6035: $ff
    nop                                           ; $6036: $00
    rst $38                                       ; $6037: $ff
    nop                                           ; $6038: $00
    rst $38                                       ; $6039: $ff
    nop                                           ; $603a: $00
    rst $38                                       ; $603b: $ff
    db $fc                                        ; $603c: $fc
    inc bc                                        ; $603d: $03
    rlca                                          ; $603e: $07
    nop                                           ; $603f: $00
    nop                                           ; $6040: $00
    rst $38                                       ; $6041: $ff
    nop                                           ; $6042: $00
    rst $38                                       ; $6043: $ff
    nop                                           ; $6044: $00
    rst $38                                       ; $6045: $ff
    nop                                           ; $6046: $00
    rst $38                                       ; $6047: $ff
    nop                                           ; $6048: $00
    rst $38                                       ; $6049: $ff
    nop                                           ; $604a: $00
    rst $38                                       ; $604b: $ff
    nop                                           ; $604c: $00
    rst $38                                       ; $604d: $ff
    ld hl, sp+$07                                 ; $604e: $f8 $07
    rrca                                          ; $6050: $0f
    ldh a, [rIE]                                  ; $6051: $f0 $ff
    nop                                           ; $6053: $00
    ld a, [$5400]                                 ; $6054: $fa $00 $54
    nop                                           ; $6057: $00
    xor b                                         ; $6058: $a8
    nop                                           ; $6059: $00
    ld d, b                                       ; $605a: $50
    nop                                           ; $605b: $00
    nop                                           ; $605c: $00
    nop                                           ; $605d: $00
    nop                                           ; $605e: $00
    nop                                           ; $605f: $00
    add sp, $00                                   ; $6060: $e8 $00
    ld b, b                                       ; $6062: $40
    nop                                           ; $6063: $00
    add b                                         ; $6064: $80
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    nop                                           ; $606b: $00
    nop                                           ; $606c: $00
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    nop                                           ; $607a: $00
    nop                                           ; $607b: $00
    nop                                           ; $607c: $00
    nop                                           ; $607d: $00
    nop                                           ; $607e: $00
    nop                                           ; $607f: $00
    rra                                           ; $6080: $1f
    nop                                           ; $6081: $00
    dec b                                         ; $6082: $05
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    nop                                           ; $608b: $00
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    rst $38                                       ; $6090: $ff
    nop                                           ; $6091: $00
    ei                                            ; $6092: $fb
    nop                                           ; $6093: $00
    cp a                                          ; $6094: $bf
    nop                                           ; $6095: $00
    or $08                                        ; $6096: $f6 $08
    ld a, a                                       ; $6098: $7f
    nop                                           ; $6099: $00
    rst $38                                       ; $609a: $ff
    nop                                           ; $609b: $00
    cp $01                                        ; $609c: $fe $01
    rst $28                                       ; $609e: $ef
    nop                                           ; $609f: $00
    db $fd                                        ; $60a0: $fd
    ld [bc], a                                    ; $60a1: $02
    rst $10                                       ; $60a2: $d7

jr_076_60a3:
    jr nz, jr_076_60a3                            ; $60a3: $20 $fe

    ld bc, $00ff                                  ; $60a5: $01 $ff $00
    ei                                            ; $60a8: $fb
    nop                                           ; $60a9: $00
    rst $18                                       ; $60aa: $df
    jr nz, @+$01                                  ; $60ab: $20 $ff

    nop                                           ; $60ad: $00
    rst $38                                       ; $60ae: $ff
    nop                                           ; $60af: $00
    rst $38                                       ; $60b0: $ff
    nop                                           ; $60b1: $00
    cp [hl]                                       ; $60b2: $be
    ld bc, $08f6                                  ; $60b3: $01 $f6 $08
    rst $38                                       ; $60b6: $ff
    nop                                           ; $60b7: $00
    rst $28                                       ; $60b8: $ef
    nop                                           ; $60b9: $00
    ld a, a                                       ; $60ba: $7f
    add b                                         ; $60bb: $80
    ei                                            ; $60bc: $fb
    nop                                           ; $60bd: $00
    rst $38                                       ; $60be: $ff
    nop                                           ; $60bf: $00
    ei                                            ; $60c0: $fb
    inc b                                         ; $60c1: $04
    sbc $00                                       ; $60c2: $de $00
    rst $38                                       ; $60c4: $ff
    nop                                           ; $60c5: $00
    rst $28                                       ; $60c6: $ef
    nop                                           ; $60c7: $00
    cp e                                          ; $60c8: $bb
    inc b                                         ; $60c9: $04
    rst $38                                       ; $60ca: $ff
    nop                                           ; $60cb: $00
    cp a                                          ; $60cc: $bf
    nop                                           ; $60cd: $00
    cp $00                                        ; $60ce: $fe $00
    ld l, a                                       ; $60d0: $6f
    db $10                                        ; $60d1: $10
    ei                                            ; $60d2: $fb
    nop                                           ; $60d3: $00
    rst $38                                       ; $60d4: $ff
    nop                                           ; $60d5: $00
    ld a, a                                       ; $60d6: $7f
    nop                                           ; $60d7: $00
    rst $38                                       ; $60d8: $ff
    nop                                           ; $60d9: $00
    xor $10                                       ; $60da: $ee $10
    rst $38                                       ; $60dc: $ff
    nop                                           ; $60dd: $00
    rst $38                                       ; $60de: $ff
    nop                                           ; $60df: $00
    cp a                                          ; $60e0: $bf
    ld b, b                                       ; $60e1: $40
    db $ed                                        ; $60e2: $ed
    ld [bc], a                                    ; $60e3: $02
    rst $38                                       ; $60e4: $ff
    nop                                           ; $60e5: $00
    cp a                                          ; $60e6: $bf
    nop                                           ; $60e7: $00
    sbc $20                                       ; $60e8: $de $20
    rst $38                                       ; $60ea: $ff
    nop                                           ; $60eb: $00
    rst $28                                       ; $60ec: $ef
    nop                                           ; $60ed: $00
    rst $38                                       ; $60ee: $ff
    nop                                           ; $60ef: $00
    add c                                         ; $60f0: $81
    rst $38                                       ; $60f1: $ff
    xor c                                         ; $60f2: $a9
    rst $10                                       ; $60f3: $d7
    or e                                          ; $60f4: $b3
    push bc                                       ; $60f5: $c5
    sub a                                         ; $60f6: $97
    pop bc                                        ; $60f7: $c1
    xor e                                         ; $60f8: $ab
    pop de                                        ; $60f9: $d1
    sub e                                         ; $60fa: $93
    ret                                           ; $60fb: $c9


    xor e                                         ; $60fc: $ab
    pop de                                        ; $60fd: $d1
    rst $10                                       ; $60fe: $d7
    jp hl                                         ; $60ff: $e9


    rst $38                                       ; $6100: $ff
    nop                                           ; $6101: $00
    rst $38                                       ; $6102: $ff
    nop                                           ; $6103: $00
    ld a, [hl]                                    ; $6104: $7e
    add c                                         ; $6105: $81
    ld a, [hl]                                    ; $6106: $7e
    add c                                         ; $6107: $81
    ld a, [hl]                                    ; $6108: $7e
    add c                                         ; $6109: $81
    ld a, [hl]                                    ; $610a: $7e
    add c                                         ; $610b: $81
    ld a, [hl]                                    ; $610c: $7e
    add c                                         ; $610d: $81
    ld a, [hl]                                    ; $610e: $7e
    add c                                         ; $610f: $81
    rst $38                                       ; $6110: $ff
    nop                                           ; $6111: $00
    rst $38                                       ; $6112: $ff
    nop                                           ; $6113: $00
    rst $38                                       ; $6114: $ff
    nop                                           ; $6115: $00
    xor $00                                       ; $6116: $ee $00
    rst $38                                       ; $6118: $ff
    nop                                           ; $6119: $00
    xor d                                         ; $611a: $aa
    nop                                           ; $611b: $00
    ld [hl], a                                    ; $611c: $77
    nop                                           ; $611d: $00
    xor d                                         ; $611e: $aa
    nop                                           ; $611f: $00
    ld d, l                                       ; $6120: $55
    nop                                           ; $6121: $00
    xor d                                         ; $6122: $aa
    nop                                           ; $6123: $00
    ld d, l                                       ; $6124: $55
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    ld d, l                                       ; $6128: $55
    nop                                           ; $6129: $00
    nop                                           ; $612a: $00
    nop                                           ; $612b: $00

jr_076_612c:
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    nop                                           ; $612f: $00
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    nop                                           ; $6135: $00
    ld [bc], a                                    ; $6136: $02
    ld bc, $0609                                  ; $6137: $01 $09 $06
    inc hl                                        ; $613a: $23
    inc e                                         ; $613b: $1c
    adc c                                         ; $613c: $89
    halt                                          ; $613d: $76
    db $10                                        ; $613e: $10
    rst $28                                       ; $613f: $ef
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    ld d, c                                       ; $6144: $51
    ld a, $38                                     ; $6145: $3e $38
    rst $18                                       ; $6147: $df
    ld e, b                                       ; $6148: $58
    cp a                                          ; $6149: $bf
    cp h                                          ; $614a: $bc
    ld a, a                                       ; $614b: $7f
    jr @+$01                                      ; $614c: $18 $ff

    inc a                                         ; $614e: $3c
    rst $38                                       ; $614f: $ff
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    ld b, b                                       ; $6156: $40
    add b                                         ; $6157: $80
    ld bc, $00fe                                  ; $6158: $01 $fe $00
    rst $38                                       ; $615b: $ff
    nop                                           ; $615c: $00
    rst $38                                       ; $615d: $ff
    nop                                           ; $615e: $00
    rst $38                                       ; $615f: $ff
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    add b                                         ; $6168: $80
    nop                                           ; $6169: $00
    jr nz, jr_076_612c                            ; $616a: $20 $c0

    add hl, bc                                    ; $616c: $09
    ldh a, [rNR41]                                ; $616d: $f0 $20
    rst $18                                       ; $616f: $df
    inc b                                         ; $6170: $04
    ei                                            ; $6171: $fb
    ld c, b                                       ; $6172: $48
    or a                                          ; $6173: $b7
    add b                                         ; $6174: $80
    ld a, a                                       ; $6175: $7f
    nop                                           ; $6176: $00
    rst $38                                       ; $6177: $ff
    nop                                           ; $6178: $00
    rst $38                                       ; $6179: $ff
    nop                                           ; $617a: $00
    rst $38                                       ; $617b: $ff
    nop                                           ; $617c: $00
    rst $38                                       ; $617d: $ff
    nop                                           ; $617e: $00
    rst $38                                       ; $617f: $ff
    ld a, h                                       ; $6180: $7c
    rst $38                                       ; $6181: $ff
    ld a, $ff                                     ; $6182: $3e $ff
    ld a, h                                       ; $6184: $7c
    rst $38                                       ; $6185: $ff
    ld a, [hl]                                    ; $6186: $7e
    rst $38                                       ; $6187: $ff
    rst $38                                       ; $6188: $ff
    rst $38                                       ; $6189: $ff
    jr @+$01                                      ; $618a: $18 $ff

    jr @+$01                                      ; $618c: $18 $ff

    nop                                           ; $618e: $00
    rst $38                                       ; $618f: $ff
    nop                                           ; $6190: $00
    rst $38                                       ; $6191: $ff
    nop                                           ; $6192: $00
    rst $38                                       ; $6193: $ff
    nop                                           ; $6194: $00
    rst $38                                       ; $6195: $ff
    nop                                           ; $6196: $00
    rst $38                                       ; $6197: $ff
    nop                                           ; $6198: $00
    rst $38                                       ; $6199: $ff
    nop                                           ; $619a: $00
    rst $38                                       ; $619b: $ff
    nop                                           ; $619c: $00
    rst $38                                       ; $619d: $ff
    nop                                           ; $619e: $00
    rst $38                                       ; $619f: $ff
    ld b, b                                       ; $61a0: $40
    cp a                                          ; $61a1: $bf
    ld [$00f7], sp                                ; $61a2: $08 $f7 $00
    rst $38                                       ; $61a5: $ff
    nop                                           ; $61a6: $00
    rst $38                                       ; $61a7: $ff
    nop                                           ; $61a8: $00
    rst $38                                       ; $61a9: $ff
    nop                                           ; $61aa: $00
    rst $38                                       ; $61ab: $ff
    nop                                           ; $61ac: $00
    rst $38                                       ; $61ad: $ff
    nop                                           ; $61ae: $00
    rst $38                                       ; $61af: $ff
    nop                                           ; $61b0: $00
    rst $38                                       ; $61b1: $ff
    nop                                           ; $61b2: $00
    rst $38                                       ; $61b3: $ff
    add b                                         ; $61b4: $80
    rst $38                                       ; $61b5: $ff
    add b                                         ; $61b6: $80
    rst $38                                       ; $61b7: $ff
    add b                                         ; $61b8: $80
    rst $38                                       ; $61b9: $ff
    add b                                         ; $61ba: $80
    rst $38                                       ; $61bb: $ff
    ret nz                                        ; $61bc: $c0

    rst $38                                       ; $61bd: $ff
    ret nz                                        ; $61be: $c0

    rst $38                                       ; $61bf: $ff
    nop                                           ; $61c0: $00
    rst $38                                       ; $61c1: $ff
    nop                                           ; $61c2: $00
    rst $38                                       ; $61c3: $ff
    nop                                           ; $61c4: $00
    rst $38                                       ; $61c5: $ff
    nop                                           ; $61c6: $00
    rst $38                                       ; $61c7: $ff
    nop                                           ; $61c8: $00
    rst $38                                       ; $61c9: $ff
    nop                                           ; $61ca: $00
    rst $38                                       ; $61cb: $ff
    nop                                           ; $61cc: $00
    rst $38                                       ; $61cd: $ff
    nop                                           ; $61ce: $00
    rst $38                                       ; $61cf: $ff
    ldh [rIE], a                                  ; $61d0: $e0 $ff
    ldh [rIE], a                                  ; $61d2: $e0 $ff
    ldh a, [rIE]                                  ; $61d4: $f0 $ff
    ld hl, sp-$01                                 ; $61d6: $f8 $ff
    ldh a, [rIE]                                  ; $61d8: $f0 $ff
    ldh [rIE], a                                  ; $61da: $e0 $ff
    ldh a, [rIE]                                  ; $61dc: $f0 $ff
    ldh a, [rIE]                                  ; $61de: $f0 $ff
    ld bc, $01ff                                  ; $61e0: $01 $ff $01
    rst $38                                       ; $61e3: $ff
    inc bc                                        ; $61e4: $03
    rst $38                                       ; $61e5: $ff
    rlca                                          ; $61e6: $07
    rst $38                                       ; $61e7: $ff
    inc bc                                        ; $61e8: $03
    rst $38                                       ; $61e9: $ff
    ld bc, $01ff                                  ; $61ea: $01 $ff $01
    rst $38                                       ; $61ed: $ff
    inc bc                                        ; $61ee: $03
    rst $38                                       ; $61ef: $ff
    ld hl, sp-$01                                 ; $61f0: $f8 $ff
    ld hl, sp-$01                                 ; $61f2: $f8 $ff
    db $fc                                        ; $61f4: $fc
    rst $38                                       ; $61f5: $ff
    cp $ff                                        ; $61f6: $fe $ff
    ret nz                                        ; $61f8: $c0

    rst $38                                       ; $61f9: $ff
    ret nz                                        ; $61fa: $c0

    rst $38                                       ; $61fb: $ff
    nop                                           ; $61fc: $00
    rst $38                                       ; $61fd: $ff
    nop                                           ; $61fe: $00
    rst $38                                       ; $61ff: $ff
    inc bc                                        ; $6200: $03
    rst $38                                       ; $6201: $ff
    inc bc                                        ; $6202: $03
    rst $38                                       ; $6203: $ff
    rlca                                          ; $6204: $07
    rst $38                                       ; $6205: $ff
    rrca                                          ; $6206: $0f
    rst $38                                       ; $6207: $ff
    nop                                           ; $6208: $00
    rst $38                                       ; $6209: $ff
    nop                                           ; $620a: $00
    rst $38                                       ; $620b: $ff
    nop                                           ; $620c: $00
    rst $38                                       ; $620d: $ff
    nop                                           ; $620e: $00
    rst $38                                       ; $620f: $ff
    nop                                           ; $6210: $00
    rst $38                                       ; $6211: $ff
    nop                                           ; $6212: $00
    rst $38                                       ; $6213: $ff
    nop                                           ; $6214: $00
    rst $38                                       ; $6215: $ff
    nop                                           ; $6216: $00
    rst $38                                       ; $6217: $ff
    nop                                           ; $6218: $00
    rst $38                                       ; $6219: $ff
    nop                                           ; $621a: $00
    rst $38                                       ; $621b: $ff
    rlca                                          ; $621c: $07
    ld hl, sp+$7d                                 ; $621d: $f8 $7d
    add b                                         ; $621f: $80
    nop                                           ; $6220: $00
    rst $38                                       ; $6221: $ff
    nop                                           ; $6222: $00
    rst $38                                       ; $6223: $ff
    nop                                           ; $6224: $00
    rst $38                                       ; $6225: $ff
    nop                                           ; $6226: $00
    rst $38                                       ; $6227: $ff
    nop                                           ; $6228: $00
    rst $38                                       ; $6229: $ff
    nop                                           ; $622a: $00
    rst $38                                       ; $622b: $ff
    rst $38                                       ; $622c: $ff
    nop                                           ; $622d: $00
    ld b, c                                       ; $622e: $41
    nop                                           ; $622f: $00
    nop                                           ; $6230: $00
    rst $38                                       ; $6231: $ff
    nop                                           ; $6232: $00
    rst $38                                       ; $6233: $ff
    nop                                           ; $6234: $00
    rst $38                                       ; $6235: $ff
    nop                                           ; $6236: $00
    rst $38                                       ; $6237: $ff
    nop                                           ; $6238: $00
    rst $38                                       ; $6239: $ff
    nop                                           ; $623a: $00
    rst $38                                       ; $623b: $ff
    nop                                           ; $623c: $00
    rst $38                                       ; $623d: $ff
    cp $01                                        ; $623e: $fe $01
    nop                                           ; $6240: $00
    rst $38                                       ; $6241: $ff
    nop                                           ; $6242: $00
    rst $38                                       ; $6243: $ff
    nop                                           ; $6244: $00
    rst $38                                       ; $6245: $ff
    nop                                           ; $6246: $00
    rst $38                                       ; $6247: $ff
    nop                                           ; $6248: $00
    rst $38                                       ; $6249: $ff
    nop                                           ; $624a: $00
    rst $38                                       ; $624b: $ff
    nop                                           ; $624c: $00
    rst $38                                       ; $624d: $ff
    nop                                           ; $624e: $00
    rst $38                                       ; $624f: $ff
    ld a, [$d000]                                 ; $6250: $fa $00 $d0
    nop                                           ; $6253: $00
    and b                                         ; $6254: $a0
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    nop                                           ; $625a: $00
    nop                                           ; $625b: $00
    nop                                           ; $625c: $00
    nop                                           ; $625d: $00
    nop                                           ; $625e: $00
    nop                                           ; $625f: $00
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626a: $00
    nop                                           ; $626b: $00
    nop                                           ; $626c: $00
    nop                                           ; $626d: $00
    nop                                           ; $626e: $00
    nop                                           ; $626f: $00
    rlca                                          ; $6270: $07
    nop                                           ; $6271: $00
    ld bc, $0000                                  ; $6272: $01 $00 $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    nop                                           ; $627a: $00
    nop                                           ; $627b: $00
    nop                                           ; $627c: $00
    nop                                           ; $627d: $00
    nop                                           ; $627e: $00
    nop                                           ; $627f: $00
    ldh a, [rIF]                                  ; $6280: $f0 $0f
    ld a, h                                       ; $6282: $7c
    inc bc                                        ; $6283: $03
    cpl                                           ; $6284: $2f
    nop                                           ; $6285: $00
    dec d                                         ; $6286: $15
    nop                                           ; $6287: $00
    ld a, [bc]                                    ; $6288: $0a
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    nop                                           ; $628b: $00
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    nop                                           ; $628f: $00
    db $fd                                        ; $6290: $fd
    ld [bc], a                                    ; $6291: $02
    rst $10                                       ; $6292: $d7

jr_076_6293:
    jr nz, jr_076_6293                            ; $6293: $20 $fe

    ld bc, $00ff                                  ; $6295: $01 $ff $00
    ei                                            ; $6298: $fb
    nop                                           ; $6299: $00
    rst $18                                       ; $629a: $df
    jr nz, @+$01                                  ; $629b: $20 $ff

    nop                                           ; $629d: $00
    rst $38                                       ; $629e: $ff
    nop                                           ; $629f: $00
    rst $38                                       ; $62a0: $ff
    nop                                           ; $62a1: $00
    cp [hl]                                       ; $62a2: $be
    ld bc, $08f6                                  ; $62a3: $01 $f6 $08
    rst $38                                       ; $62a6: $ff
    nop                                           ; $62a7: $00
    rst $28                                       ; $62a8: $ef
    nop                                           ; $62a9: $00
    ld a, a                                       ; $62aa: $7f
    add b                                         ; $62ab: $80
    ei                                            ; $62ac: $fb
    nop                                           ; $62ad: $00
    rst $38                                       ; $62ae: $ff
    nop                                           ; $62af: $00
    ei                                            ; $62b0: $fb
    inc b                                         ; $62b1: $04
    sbc $00                                       ; $62b2: $de $00
    rst $38                                       ; $62b4: $ff
    nop                                           ; $62b5: $00
    rst $28                                       ; $62b6: $ef
    nop                                           ; $62b7: $00
    cp e                                          ; $62b8: $bb
    inc b                                         ; $62b9: $04
    rst $38                                       ; $62ba: $ff
    nop                                           ; $62bb: $00
    cp a                                          ; $62bc: $bf
    nop                                           ; $62bd: $00
    cp $00                                        ; $62be: $fe $00
    rst $38                                       ; $62c0: $ff
    nop                                           ; $62c1: $00
    ei                                            ; $62c2: $fb
    nop                                           ; $62c3: $00
    cp a                                          ; $62c4: $bf
    nop                                           ; $62c5: $00
    or $08                                        ; $62c6: $f6 $08
    ld a, a                                       ; $62c8: $7f
    nop                                           ; $62c9: $00
    rst $38                                       ; $62ca: $ff
    nop                                           ; $62cb: $00
    cp $01                                        ; $62cc: $fe $01
    rst $28                                       ; $62ce: $ef
    nop                                           ; $62cf: $00
    cp a                                          ; $62d0: $bf
    ld b, b                                       ; $62d1: $40
    db $ed                                        ; $62d2: $ed
    ld [bc], a                                    ; $62d3: $02
    rst $38                                       ; $62d4: $ff
    nop                                           ; $62d5: $00
    cp a                                          ; $62d6: $bf
    nop                                           ; $62d7: $00
    sbc $20                                       ; $62d8: $de $20
    rst $38                                       ; $62da: $ff
    nop                                           ; $62db: $00
    rst $28                                       ; $62dc: $ef
    nop                                           ; $62dd: $00
    rst $38                                       ; $62de: $ff
    nop                                           ; $62df: $00
    ld l, a                                       ; $62e0: $6f
    db $10                                        ; $62e1: $10
    ei                                            ; $62e2: $fb
    nop                                           ; $62e3: $00
    rst $38                                       ; $62e4: $ff
    nop                                           ; $62e5: $00
    ld a, a                                       ; $62e6: $7f
    nop                                           ; $62e7: $00
    rst $38                                       ; $62e8: $ff
    nop                                           ; $62e9: $00
    xor $10                                       ; $62ea: $ee $10
    rst $38                                       ; $62ec: $ff
    nop                                           ; $62ed: $00
    rst $38                                       ; $62ee: $ff
    nop                                           ; $62ef: $00
    rst $38                                       ; $62f0: $ff
    nop                                           ; $62f1: $00
    rst $38                                       ; $62f2: $ff
    nop                                           ; $62f3: $00
    ld a, [hl]                                    ; $62f4: $7e
    add c                                         ; $62f5: $81
    ld a, [hl]                                    ; $62f6: $7e
    add c                                         ; $62f7: $81
    ld a, [hl]                                    ; $62f8: $7e
    add c                                         ; $62f9: $81
    ld a, [hl]                                    ; $62fa: $7e
    add c                                         ; $62fb: $81
    ld a, [hl]                                    ; $62fc: $7e
    add c                                         ; $62fd: $81
    ld a, [hl]                                    ; $62fe: $7e
    add c                                         ; $62ff: $81
    add c                                         ; $6300: $81
    rst $38                                       ; $6301: $ff
    xor c                                         ; $6302: $a9
    rst $10                                       ; $6303: $d7
    or e                                          ; $6304: $b3
    push bc                                       ; $6305: $c5
    sub a                                         ; $6306: $97
    pop bc                                        ; $6307: $c1
    xor e                                         ; $6308: $ab
    pop de                                        ; $6309: $d1
    sub e                                         ; $630a: $93
    ret                                           ; $630b: $c9


    xor e                                         ; $630c: $ab
    pop de                                        ; $630d: $d1
    rst $10                                       ; $630e: $d7
    jp hl                                         ; $630f: $e9


    rst $38                                       ; $6310: $ff
    nop                                           ; $6311: $00
    rst $38                                       ; $6312: $ff
    nop                                           ; $6313: $00
    rst $38                                       ; $6314: $ff
    nop                                           ; $6315: $00
    db $dd                                        ; $6316: $dd
    nop                                           ; $6317: $00
    rst $38                                       ; $6318: $ff
    nop                                           ; $6319: $00
    ld d, l                                       ; $631a: $55
    nop                                           ; $631b: $00
    xor $00                                       ; $631c: $ee $00
    ld d, l                                       ; $631e: $55

jr_076_631f:
    nop                                           ; $631f: $00
    xor d                                         ; $6320: $aa
    nop                                           ; $6321: $00
    ld d, l                                       ; $6322: $55
    nop                                           ; $6323: $00
    xor d                                         ; $6324: $aa
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    xor d                                         ; $6328: $aa
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    nop                                           ; $632c: $00
    nop                                           ; $632d: $00
    nop                                           ; $632e: $00
    nop                                           ; $632f: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    inc b                                         ; $6336: $04
    inc bc                                        ; $6337: $03
    ld [de], a                                    ; $6338: $12
    dec c                                         ; $6339: $0d
    ld b, a                                       ; $633a: $47
    jr c, @+$14                                   ; $633b: $38 $12

    db $ed                                        ; $633d: $ed
    jr nz, jr_076_631f                            ; $633e: $20 $df

    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    jp nz, Jump_076_707c                          ; $6344: $c2 $7c $70

    rst $28                                       ; $6347: $ef
    ldh [$7f], a                                  ; $6348: $e0 $7f
    ldh a, [rIE]                                  ; $634a: $f0 $ff
    ld h, b                                       ; $634c: $60
    rst $38                                       ; $634d: $ff
    ldh a, [rIE]                                  ; $634e: $f0 $ff
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    nop                                           ; $6354: $00
    nop                                           ; $6355: $00
    add b                                         ; $6356: $80
    nop                                           ; $6357: $00
    inc bc                                        ; $6358: $03
    db $fc                                        ; $6359: $fc
    nop                                           ; $635a: $00
    rst $38                                       ; $635b: $ff
    nop                                           ; $635c: $00
    rst $38                                       ; $635d: $ff
    nop                                           ; $635e: $00
    rst $38                                       ; $635f: $ff
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    ld b, b                                       ; $636a: $40
    add b                                         ; $636b: $80
    inc de                                        ; $636c: $13
    ldh [rLCDC], a                                ; $636d: $e0 $40
    cp a                                          ; $636f: $bf
    add hl, bc                                    ; $6370: $09
    rst $30                                       ; $6371: $f7
    sub b                                         ; $6372: $90
    ld l, a                                       ; $6373: $6f
    ld bc, $01ff                                  ; $6374: $01 $ff $01
    rst $38                                       ; $6377: $ff
    inc bc                                        ; $6378: $03
    rst $38                                       ; $6379: $ff
    nop                                           ; $637a: $00
    rst $38                                       ; $637b: $ff
    nop                                           ; $637c: $00
    rst $38                                       ; $637d: $ff
    nop                                           ; $637e: $00
    rst $38                                       ; $637f: $ff
    ldh a, [rIE]                                  ; $6380: $f0 $ff
    ld hl, sp-$01                                 ; $6382: $f8 $ff
    ldh a, [rIE]                                  ; $6384: $f0 $ff
    ld hl, sp-$01                                 ; $6386: $f8 $ff
    db $fc                                        ; $6388: $fc
    rst $38                                       ; $6389: $ff
    ld h, b                                       ; $638a: $60
    rst $38                                       ; $638b: $ff
    ld h, b                                       ; $638c: $60
    rst $38                                       ; $638d: $ff
    nop                                           ; $638e: $00
    rst $38                                       ; $638f: $ff
    nop                                           ; $6390: $00
    rst $38                                       ; $6391: $ff
    nop                                           ; $6392: $00
    rst $38                                       ; $6393: $ff
    nop                                           ; $6394: $00
    rst $38                                       ; $6395: $ff
    nop                                           ; $6396: $00
    rst $38                                       ; $6397: $ff
    nop                                           ; $6398: $00
    rst $38                                       ; $6399: $ff
    nop                                           ; $639a: $00
    rst $38                                       ; $639b: $ff
    nop                                           ; $639c: $00
    rst $38                                       ; $639d: $ff
    nop                                           ; $639e: $00
    rst $38                                       ; $639f: $ff
    add b                                         ; $63a0: $80
    ld a, a                                       ; $63a1: $7f
    db $10                                        ; $63a2: $10
    rst $28                                       ; $63a3: $ef
    ld bc, $00fe                                  ; $63a4: $01 $fe $00
    rst $38                                       ; $63a7: $ff
    nop                                           ; $63a8: $00
    rst $38                                       ; $63a9: $ff
    nop                                           ; $63aa: $00
    rst $38                                       ; $63ab: $ff
    nop                                           ; $63ac: $00
    rst $38                                       ; $63ad: $ff
    nop                                           ; $63ae: $00
    rst $38                                       ; $63af: $ff
    nop                                           ; $63b0: $00
    rst $38                                       ; $63b1: $ff
    nop                                           ; $63b2: $00
    rst $38                                       ; $63b3: $ff
    nop                                           ; $63b4: $00
    rst $38                                       ; $63b5: $ff
    nop                                           ; $63b6: $00
    rst $38                                       ; $63b7: $ff
    nop                                           ; $63b8: $00
    rst $38                                       ; $63b9: $ff
    nop                                           ; $63ba: $00
    rst $38                                       ; $63bb: $ff
    nop                                           ; $63bc: $00
    rst $38                                       ; $63bd: $ff
    nop                                           ; $63be: $00
    rst $38                                       ; $63bf: $ff
    nop                                           ; $63c0: $00
    rst $38                                       ; $63c1: $ff
    nop                                           ; $63c2: $00
    rst $38                                       ; $63c3: $ff
    ld [$08ff], sp                                ; $63c4: $08 $ff $08
    rst $38                                       ; $63c7: $ff
    ld [$08ff], sp                                ; $63c8: $08 $ff $08
    rst $38                                       ; $63cb: $ff
    inc c                                         ; $63cc: $0c
    rst $38                                       ; $63cd: $ff
    inc c                                         ; $63ce: $0c
    rst $38                                       ; $63cf: $ff
    nop                                           ; $63d0: $00
    rst $38                                       ; $63d1: $ff
    nop                                           ; $63d2: $00
    rst $38                                       ; $63d3: $ff
    nop                                           ; $63d4: $00
    rst $38                                       ; $63d5: $ff
    add b                                         ; $63d6: $80
    rst $38                                       ; $63d7: $ff
    nop                                           ; $63d8: $00
    rst $38                                       ; $63d9: $ff
    nop                                           ; $63da: $00
    rst $38                                       ; $63db: $ff
    nop                                           ; $63dc: $00
    rst $38                                       ; $63dd: $ff
    nop                                           ; $63de: $00
    rst $38                                       ; $63df: $ff
    ld e, $ff                                     ; $63e0: $1e $ff
    ld e, $ff                                     ; $63e2: $1e $ff
    ccf                                           ; $63e4: $3f
    rst $38                                       ; $63e5: $ff
    ld a, a                                       ; $63e6: $7f
    rst $38                                       ; $63e7: $ff
    ccf                                           ; $63e8: $3f
    rst $38                                       ; $63e9: $ff
    ld e, $ff                                     ; $63ea: $1e $ff
    rra                                           ; $63ec: $1f
    rst $38                                       ; $63ed: $ff
    ccf                                           ; $63ee: $3f
    rst $38                                       ; $63ef: $ff
    add b                                         ; $63f0: $80
    rst $38                                       ; $63f1: $ff
    add b                                         ; $63f2: $80
    rst $38                                       ; $63f3: $ff
    ret nz                                        ; $63f4: $c0

    rst $38                                       ; $63f5: $ff
    ldh [rIE], a                                  ; $63f6: $e0 $ff
    nop                                           ; $63f8: $00
    rst $38                                       ; $63f9: $ff
    nop                                           ; $63fa: $00
    rst $38                                       ; $63fb: $ff
    nop                                           ; $63fc: $00
    rst $38                                       ; $63fd: $ff
    nop                                           ; $63fe: $00
    rst $38                                       ; $63ff: $ff
    ccf                                           ; $6400: $3f
    rst $38                                       ; $6401: $ff
    ccf                                           ; $6402: $3f
    rst $38                                       ; $6403: $ff
    ld a, a                                       ; $6404: $7f
    rst $38                                       ; $6405: $ff
    rst $38                                       ; $6406: $ff
    rst $38                                       ; $6407: $ff
    inc c                                         ; $6408: $0c
    rst $38                                       ; $6409: $ff
    inc c                                         ; $640a: $0c
    rst $38                                       ; $640b: $ff
    nop                                           ; $640c: $00
    rst $38                                       ; $640d: $ff
    nop                                           ; $640e: $00
    rst $38                                       ; $640f: $ff
    nop                                           ; $6410: $00
    rst $38                                       ; $6411: $ff
    nop                                           ; $6412: $00
    rst $38                                       ; $6413: $ff
    nop                                           ; $6414: $00
    rst $38                                       ; $6415: $ff
    nop                                           ; $6416: $00
    rst $38                                       ; $6417: $ff
    nop                                           ; $6418: $00
    rst $38                                       ; $6419: $ff
    nop                                           ; $641a: $00
    rst $38                                       ; $641b: $ff
    rst $38                                       ; $641c: $ff
    nop                                           ; $641d: $00
    ld d, b                                       ; $641e: $50
    nop                                           ; $641f: $00
    nop                                           ; $6420: $00
    rst $38                                       ; $6421: $ff
    nop                                           ; $6422: $00
    rst $38                                       ; $6423: $ff
    nop                                           ; $6424: $00
    rst $38                                       ; $6425: $ff
    nop                                           ; $6426: $00
    rst $38                                       ; $6427: $ff
    nop                                           ; $6428: $00
    rst $38                                       ; $6429: $ff
    nop                                           ; $642a: $00
    rst $38                                       ; $642b: $ff
    ret nz                                        ; $642c: $c0

    ccf                                           ; $642d: $3f
    ld a, a                                       ; $642e: $7f
    nop                                           ; $642f: $00
    nop                                           ; $6430: $00
    rst $38                                       ; $6431: $ff
    nop                                           ; $6432: $00
    rst $38                                       ; $6433: $ff
    nop                                           ; $6434: $00
    rst $38                                       ; $6435: $ff
    nop                                           ; $6436: $00
    rst $38                                       ; $6437: $ff
    nop                                           ; $6438: $00
    rst $38                                       ; $6439: $ff
    nop                                           ; $643a: $00
    rst $38                                       ; $643b: $ff
    nop                                           ; $643c: $00
    rst $38                                       ; $643d: $ff
    add b                                         ; $643e: $80
    ld a, a                                       ; $643f: $7f
    nop                                           ; $6440: $00
    rst $38                                       ; $6441: $ff
    nop                                           ; $6442: $00
    rst $38                                       ; $6443: $ff
    nop                                           ; $6444: $00
    rst $38                                       ; $6445: $ff
    nop                                           ; $6446: $00
    rst $38                                       ; $6447: $ff
    nop                                           ; $6448: $00
    rst $38                                       ; $6449: $ff
    nop                                           ; $644a: $00
    rst $38                                       ; $644b: $ff
    nop                                           ; $644c: $00
    rst $38                                       ; $644d: $ff
    nop                                           ; $644e: $00
    rst $38                                       ; $644f: $ff
    add b                                         ; $6450: $80
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    nop                                           ; $645b: $00
    nop                                           ; $645c: $00
    nop                                           ; $645d: $00
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    ld bc, $0000                                  ; $6460: $01 $00 $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    nop                                           ; $646b: $00
    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    db $fc                                        ; $6470: $fc
    inc bc                                        ; $6471: $03
    ld e, a                                       ; $6472: $5f
    nop                                           ; $6473: $00
    dec bc                                        ; $6474: $0b
    nop                                           ; $6475: $00
    dec b                                         ; $6476: $05
    nop                                           ; $6477: $00
    ld [bc], a                                    ; $6478: $02
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00
    nop                                           ; $647b: $00
    nop                                           ; $647c: $00
    nop                                           ; $647d: $00
    nop                                           ; $647e: $00
    nop                                           ; $647f: $00
    nop                                           ; $6480: $00
    rst $38                                       ; $6481: $ff
    nop                                           ; $6482: $00
    rst $38                                       ; $6483: $ff
    cp $01                                        ; $6484: $fe $01
    ld a, a                                       ; $6486: $7f
    nop                                           ; $6487: $00
    and d                                         ; $6488: $a2
    nop                                           ; $6489: $00
    stop                                          ; $648a: $10 $00
    nop                                           ; $648c: $00
    nop                                           ; $648d: $00
    nop                                           ; $648e: $00
    nop                                           ; $648f: $00
    rst $38                                       ; $6490: $ff
    nop                                           ; $6491: $00
    cp [hl]                                       ; $6492: $be
    ld bc, $08f6                                  ; $6493: $01 $f6 $08
    rst $38                                       ; $6496: $ff
    nop                                           ; $6497: $00
    rst $28                                       ; $6498: $ef
    nop                                           ; $6499: $00
    ld a, a                                       ; $649a: $7f
    add b                                         ; $649b: $80
    ei                                            ; $649c: $fb
    nop                                           ; $649d: $00
    rst $38                                       ; $649e: $ff
    nop                                           ; $649f: $00
    ei                                            ; $64a0: $fb
    inc b                                         ; $64a1: $04
    sbc $00                                       ; $64a2: $de $00
    rst $38                                       ; $64a4: $ff
    nop                                           ; $64a5: $00
    rst $28                                       ; $64a6: $ef
    nop                                           ; $64a7: $00
    cp e                                          ; $64a8: $bb
    inc b                                         ; $64a9: $04
    rst $38                                       ; $64aa: $ff
    nop                                           ; $64ab: $00
    cp a                                          ; $64ac: $bf
    nop                                           ; $64ad: $00
    cp $00                                        ; $64ae: $fe $00
    rst $38                                       ; $64b0: $ff
    nop                                           ; $64b1: $00
    ei                                            ; $64b2: $fb
    nop                                           ; $64b3: $00
    cp a                                          ; $64b4: $bf
    nop                                           ; $64b5: $00
    or $08                                        ; $64b6: $f6 $08
    ld a, a                                       ; $64b8: $7f
    nop                                           ; $64b9: $00
    rst $38                                       ; $64ba: $ff
    nop                                           ; $64bb: $00
    cp $01                                        ; $64bc: $fe $01
    rst $28                                       ; $64be: $ef
    nop                                           ; $64bf: $00
    db $fd                                        ; $64c0: $fd
    ld [bc], a                                    ; $64c1: $02
    rst $10                                       ; $64c2: $d7

jr_076_64c3:
    jr nz, jr_076_64c3                            ; $64c3: $20 $fe

    ld bc, $00ff                                  ; $64c5: $01 $ff $00
    ei                                            ; $64c8: $fb
    nop                                           ; $64c9: $00
    rst $18                                       ; $64ca: $df
    jr nz, @+$01                                  ; $64cb: $20 $ff

    nop                                           ; $64cd: $00
    rst $38                                       ; $64ce: $ff
    nop                                           ; $64cf: $00
    ld l, a                                       ; $64d0: $6f
    db $10                                        ; $64d1: $10
    ei                                            ; $64d2: $fb
    nop                                           ; $64d3: $00
    rst $38                                       ; $64d4: $ff
    nop                                           ; $64d5: $00
    ld a, a                                       ; $64d6: $7f
    nop                                           ; $64d7: $00
    rst $38                                       ; $64d8: $ff
    nop                                           ; $64d9: $00
    xor $10                                       ; $64da: $ee $10
    rst $38                                       ; $64dc: $ff
    nop                                           ; $64dd: $00
    rst $38                                       ; $64de: $ff
    nop                                           ; $64df: $00
    cp a                                          ; $64e0: $bf
    ld b, b                                       ; $64e1: $40
    db $ed                                        ; $64e2: $ed
    ld [bc], a                                    ; $64e3: $02
    rst $38                                       ; $64e4: $ff
    nop                                           ; $64e5: $00
    cp a                                          ; $64e6: $bf
    nop                                           ; $64e7: $00
    sbc $20                                       ; $64e8: $de $20
    rst $38                                       ; $64ea: $ff
    nop                                           ; $64eb: $00
    rst $28                                       ; $64ec: $ef
    nop                                           ; $64ed: $00
    rst $38                                       ; $64ee: $ff
    nop                                           ; $64ef: $00
    add c                                         ; $64f0: $81
    rst $38                                       ; $64f1: $ff
    xor c                                         ; $64f2: $a9
    rst $10                                       ; $64f3: $d7
    or e                                          ; $64f4: $b3
    push bc                                       ; $64f5: $c5
    sub a                                         ; $64f6: $97
    pop bc                                        ; $64f7: $c1
    xor e                                         ; $64f8: $ab
    pop de                                        ; $64f9: $d1
    sub e                                         ; $64fa: $93
    ret                                           ; $64fb: $c9


    xor e                                         ; $64fc: $ab
    pop de                                        ; $64fd: $d1
    rst $10                                       ; $64fe: $d7
    jp hl                                         ; $64ff: $e9


    rst $38                                       ; $6500: $ff
    nop                                           ; $6501: $00
    rst $38                                       ; $6502: $ff
    nop                                           ; $6503: $00
    ld a, [hl]                                    ; $6504: $7e
    add c                                         ; $6505: $81
    ld a, [hl]                                    ; $6506: $7e
    add c                                         ; $6507: $81
    ld a, [hl]                                    ; $6508: $7e
    add c                                         ; $6509: $81
    ld a, [hl]                                    ; $650a: $7e
    add c                                         ; $650b: $81
    ld a, [hl]                                    ; $650c: $7e
    add c                                         ; $650d: $81
    ld a, [hl]                                    ; $650e: $7e
    add c                                         ; $650f: $81
    rst $38                                       ; $6510: $ff
    nop                                           ; $6511: $00
    rst $38                                       ; $6512: $ff
    nop                                           ; $6513: $00
    rst $38                                       ; $6514: $ff
    nop                                           ; $6515: $00
    db $dd                                        ; $6516: $dd
    nop                                           ; $6517: $00
    rst $38                                       ; $6518: $ff
    nop                                           ; $6519: $00
    ld d, l                                       ; $651a: $55
    nop                                           ; $651b: $00
    xor $00                                       ; $651c: $ee $00
    ld d, l                                       ; $651e: $55
    nop                                           ; $651f: $00
    xor d                                         ; $6520: $aa
    nop                                           ; $6521: $00
    ld d, l                                       ; $6522: $55
    nop                                           ; $6523: $00
    xor d                                         ; $6524: $aa
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    xor d                                         ; $6528: $aa
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    ld bc, $0901                                  ; $6534: $01 $01 $09
    rlca                                          ; $6537: $07
    dec h                                         ; $6538: $25
    dec de                                        ; $6539: $1b
    adc a                                         ; $653a: $8f
    ld [hl], e                                    ; $653b: $73
    dec h                                         ; $653c: $25
    db $db                                        ; $653d: $db
    ld b, e                                       ; $653e: $43
    cp a                                          ; $653f: $bf
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    inc b                                         ; $6544: $04
    ld hl, sp-$5f                                 ; $6545: $f8 $a1
    sbc $80                                       ; $6547: $de $80
    rst $38                                       ; $6549: $ff
    ret nz                                        ; $654a: $c0

    rst $38                                       ; $654b: $ff
    add b                                         ; $654c: $80
    rst $38                                       ; $654d: $ff
    ret nz                                        ; $654e: $c0

    rst $38                                       ; $654f: $ff
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    ld b, $f8                                     ; $6558: $06 $f8
    nop                                           ; $655a: $00
    rst $38                                       ; $655b: $ff
    nop                                           ; $655c: $00
    rst $38                                       ; $655d: $ff
    nop                                           ; $655e: $00
    rst $38                                       ; $655f: $ff
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    add b                                         ; $656a: $80
    nop                                           ; $656b: $00
    ld h, $c1                                     ; $656c: $26 $c1
    add c                                         ; $656e: $81
    ld a, a                                       ; $656f: $7f
    rla                                           ; $6570: $17
    rst $28                                       ; $6571: $ef
    inc hl                                        ; $6572: $23
    rst $18                                       ; $6573: $df
    rlca                                          ; $6574: $07
    rst $38                                       ; $6575: $ff
    rlca                                          ; $6576: $07
    rst $38                                       ; $6577: $ff
    rrca                                          ; $6578: $0f
    rst $38                                       ; $6579: $ff
    ld bc, $01ff                                  ; $657a: $01 $ff $01
    rst $38                                       ; $657d: $ff
    nop                                           ; $657e: $00
    rst $38                                       ; $657f: $ff
    ret nz                                        ; $6580: $c0

    rst $38                                       ; $6581: $ff
    ldh [rIE], a                                  ; $6582: $e0 $ff
    ret nz                                        ; $6584: $c0

    rst $38                                       ; $6585: $ff
    ldh [rIE], a                                  ; $6586: $e0 $ff
    ldh a, [rIE]                                  ; $6588: $f0 $ff
    add b                                         ; $658a: $80
    rst $38                                       ; $658b: $ff
    add b                                         ; $658c: $80
    rst $38                                       ; $658d: $ff
    nop                                           ; $658e: $00
    rst $38                                       ; $658f: $ff
    ld bc, $00fe                                  ; $6590: $01 $fe $00
    rst $38                                       ; $6593: $ff
    nop                                           ; $6594: $00
    rst $38                                       ; $6595: $ff
    nop                                           ; $6596: $00
    rst $38                                       ; $6597: $ff
    nop                                           ; $6598: $00
    rst $38                                       ; $6599: $ff
    nop                                           ; $659a: $00
    rst $38                                       ; $659b: $ff
    nop                                           ; $659c: $00
    rst $38                                       ; $659d: $ff
    nop                                           ; $659e: $00
    rst $38                                       ; $659f: $ff
    ld bc, $23ff                                  ; $65a0: $01 $ff $23
    rst $18                                       ; $65a3: $df
    inc bc                                        ; $65a4: $03
    db $fd                                        ; $65a5: $fd
    ld bc, $03ff                                  ; $65a6: $01 $ff $03
    rst $38                                       ; $65a9: $ff
    nop                                           ; $65aa: $00
    rst $38                                       ; $65ab: $ff
    nop                                           ; $65ac: $00
    rst $38                                       ; $65ad: $ff
    nop                                           ; $65ae: $00
    rst $38                                       ; $65af: $ff
    nop                                           ; $65b0: $00
    rst $38                                       ; $65b1: $ff
    nop                                           ; $65b2: $00
    rst $38                                       ; $65b3: $ff
    nop                                           ; $65b4: $00
    rst $38                                       ; $65b5: $ff
    nop                                           ; $65b6: $00
    rst $38                                       ; $65b7: $ff
    nop                                           ; $65b8: $00
    rst $38                                       ; $65b9: $ff
    nop                                           ; $65ba: $00
    rst $38                                       ; $65bb: $ff
    nop                                           ; $65bc: $00
    rst $38                                       ; $65bd: $ff
    nop                                           ; $65be: $00
    rst $38                                       ; $65bf: $ff
    nop                                           ; $65c0: $00
    rst $38                                       ; $65c1: $ff
    nop                                           ; $65c2: $00
    rst $38                                       ; $65c3: $ff
    add b                                         ; $65c4: $80
    rst $38                                       ; $65c5: $ff
    add b                                         ; $65c6: $80
    rst $38                                       ; $65c7: $ff
    add b                                         ; $65c8: $80
    rst $38                                       ; $65c9: $ff
    add b                                         ; $65ca: $80
    rst $38                                       ; $65cb: $ff
    ret nz                                        ; $65cc: $c0

    rst $38                                       ; $65cd: $ff
    ret nz                                        ; $65ce: $c0

    rst $38                                       ; $65cf: $ff
    ld bc, $01ff                                  ; $65d0: $01 $ff $01
    rst $38                                       ; $65d3: $ff
    inc bc                                        ; $65d4: $03
    rst $38                                       ; $65d5: $ff
    rlca                                          ; $65d6: $07
    rst $38                                       ; $65d7: $ff
    inc bc                                        ; $65d8: $03
    rst $38                                       ; $65d9: $ff
    ld bc, $01ff                                  ; $65da: $01 $ff $01
    rst $38                                       ; $65dd: $ff
    inc bc                                        ; $65de: $03
    rst $38                                       ; $65df: $ff
    ldh [rIE], a                                  ; $65e0: $e0 $ff
    ldh [rIE], a                                  ; $65e2: $e0 $ff
    ldh a, [rIE]                                  ; $65e4: $f0 $ff
    ld hl, sp-$01                                 ; $65e6: $f8 $ff
    ldh a, [rIE]                                  ; $65e8: $f0 $ff
    ldh [rIE], a                                  ; $65ea: $e0 $ff
    ldh a, [rIE]                                  ; $65ec: $f0 $ff
    ldh a, [rIE]                                  ; $65ee: $f0 $ff
    inc bc                                        ; $65f0: $03
    rst $38                                       ; $65f1: $ff
    inc bc                                        ; $65f2: $03
    rst $38                                       ; $65f3: $ff
    rlca                                          ; $65f4: $07
    rst $38                                       ; $65f5: $ff
    rrca                                          ; $65f6: $0f
    rst $38                                       ; $65f7: $ff
    nop                                           ; $65f8: $00
    rst $38                                       ; $65f9: $ff
    nop                                           ; $65fa: $00
    rst $38                                       ; $65fb: $ff
    nop                                           ; $65fc: $00
    rst $38                                       ; $65fd: $ff
    nop                                           ; $65fe: $00
    rst $38                                       ; $65ff: $ff
    ld hl, sp-$01                                 ; $6600: $f8 $ff
    ld hl, sp-$01                                 ; $6602: $f8 $ff
    db $fc                                        ; $6604: $fc
    rst $38                                       ; $6605: $ff
    cp $ff                                        ; $6606: $fe $ff
    ret nz                                        ; $6608: $c0

    rst $38                                       ; $6609: $ff
    ret nz                                        ; $660a: $c0

    rst $38                                       ; $660b: $ff
    nop                                           ; $660c: $00
    rst $38                                       ; $660d: $ff
    nop                                           ; $660e: $00
    rst $38                                       ; $660f: $ff
    nop                                           ; $6610: $00
    rst $38                                       ; $6611: $ff
    nop                                           ; $6612: $00
    rst $38                                       ; $6613: $ff
    nop                                           ; $6614: $00
    rst $38                                       ; $6615: $ff
    nop                                           ; $6616: $00
    rst $38                                       ; $6617: $ff
    nop                                           ; $6618: $00
    rst $38                                       ; $6619: $ff
    nop                                           ; $661a: $00
    rst $38                                       ; $661b: $ff
    ldh a, [rIF]                                  ; $661c: $f0 $0f
    rra                                           ; $661e: $1f
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    rst $38                                       ; $6621: $ff
    nop                                           ; $6622: $00
    rst $38                                       ; $6623: $ff
    nop                                           ; $6624: $00
    rst $38                                       ; $6625: $ff
    nop                                           ; $6626: $00
    rst $38                                       ; $6627: $ff
    nop                                           ; $6628: $00
    rst $38                                       ; $6629: $ff
    nop                                           ; $662a: $00
    rst $38                                       ; $662b: $ff
    nop                                           ; $662c: $00
    rst $38                                       ; $662d: $ff
    ldh [$1f], a                                  ; $662e: $e0 $1f
    nop                                           ; $6630: $00
    rst $38                                       ; $6631: $ff
    nop                                           ; $6632: $00
    rst $38                                       ; $6633: $ff
    nop                                           ; $6634: $00
    rst $38                                       ; $6635: $ff
    nop                                           ; $6636: $00
    rst $38                                       ; $6637: $ff
    nop                                           ; $6638: $00
    rst $38                                       ; $6639: $ff
    nop                                           ; $663a: $00
    rst $38                                       ; $663b: $ff
    nop                                           ; $663c: $00
    rst $38                                       ; $663d: $ff
    nop                                           ; $663e: $00
    rst $38                                       ; $663f: $ff
    nop                                           ; $6640: $00
    rst $38                                       ; $6641: $ff
    nop                                           ; $6642: $00
    rst $38                                       ; $6643: $ff
    nop                                           ; $6644: $00
    rst $38                                       ; $6645: $ff
    nop                                           ; $6646: $00
    rst $38                                       ; $6647: $ff
    nop                                           ; $6648: $00
    rst $38                                       ; $6649: $ff
    nop                                           ; $664a: $00
    rst $38                                       ; $664b: $ff
    nop                                           ; $664c: $00
    rst $38                                       ; $664d: $ff
    nop                                           ; $664e: $00
    rst $38                                       ; $664f: $ff
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665a: $00
    nop                                           ; $665b: $00
    nop                                           ; $665c: $00
    nop                                           ; $665d: $00
    nop                                           ; $665e: $00
    nop                                           ; $665f: $00
    ld a, a                                       ; $6660: $7f
    nop                                           ; $6661: $00
    rla                                           ; $6662: $17
    nop                                           ; $6663: $00
    ld [bc], a                                    ; $6664: $02
    nop                                           ; $6665: $00
    ld bc, $0000                                  ; $6666: $01 $00 $00
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    nop                                           ; $666b: $00
    nop                                           ; $666c: $00
    nop                                           ; $666d: $00
    nop                                           ; $666e: $00
    nop                                           ; $666f: $00
    nop                                           ; $6670: $00
    rst $38                                       ; $6671: $ff
    ret nz                                        ; $6672: $c0

    ccf                                           ; $6673: $3f
    rst $38                                       ; $6674: $ff
    nop                                           ; $6675: $00
    ld e, a                                       ; $6676: $5f
    nop                                           ; $6677: $00
    xor b                                         ; $6678: $a8
    nop                                           ; $6679: $00
    inc b                                         ; $667a: $04
    nop                                           ; $667b: $00
    nop                                           ; $667c: $00
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    nop                                           ; $667f: $00
    nop                                           ; $6680: $00
    rst $38                                       ; $6681: $ff
    nop                                           ; $6682: $00
    rst $38                                       ; $6683: $ff
    add e                                         ; $6684: $83
    ld a, h                                       ; $6685: $7c
    rst $38                                       ; $6686: $ff
    nop                                           ; $6687: $00
    sub b                                         ; $6688: $90
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    nop                                           ; $668e: $00
    nop                                           ; $668f: $00
    ei                                            ; $6690: $fb
    inc b                                         ; $6691: $04
    sbc $00                                       ; $6692: $de $00
    rst $38                                       ; $6694: $ff
    nop                                           ; $6695: $00
    rst $28                                       ; $6696: $ef
    nop                                           ; $6697: $00
    cp e                                          ; $6698: $bb
    inc b                                         ; $6699: $04
    rst $38                                       ; $669a: $ff
    nop                                           ; $669b: $00
    cp a                                          ; $669c: $bf
    nop                                           ; $669d: $00
    cp $00                                        ; $669e: $fe $00
    rst $38                                       ; $66a0: $ff
    nop                                           ; $66a1: $00
    ei                                            ; $66a2: $fb
    nop                                           ; $66a3: $00
    cp a                                          ; $66a4: $bf
    nop                                           ; $66a5: $00
    or $08                                        ; $66a6: $f6 $08
    ld a, a                                       ; $66a8: $7f
    nop                                           ; $66a9: $00
    rst $38                                       ; $66aa: $ff
    nop                                           ; $66ab: $00
    cp $01                                        ; $66ac: $fe $01
    rst $28                                       ; $66ae: $ef
    nop                                           ; $66af: $00
    db $fd                                        ; $66b0: $fd
    ld [bc], a                                    ; $66b1: $02
    rst $10                                       ; $66b2: $d7

jr_076_66b3:
    jr nz, jr_076_66b3                            ; $66b3: $20 $fe

    ld bc, $00ff                                  ; $66b5: $01 $ff $00
    ei                                            ; $66b8: $fb
    nop                                           ; $66b9: $00
    rst $18                                       ; $66ba: $df
    jr nz, @+$01                                  ; $66bb: $20 $ff

    nop                                           ; $66bd: $00
    rst $38                                       ; $66be: $ff
    nop                                           ; $66bf: $00
    rst $38                                       ; $66c0: $ff
    nop                                           ; $66c1: $00
    cp [hl]                                       ; $66c2: $be
    ld bc, $08f6                                  ; $66c3: $01 $f6 $08
    rst $38                                       ; $66c6: $ff
    nop                                           ; $66c7: $00
    rst $28                                       ; $66c8: $ef
    nop                                           ; $66c9: $00
    ld a, a                                       ; $66ca: $7f
    add b                                         ; $66cb: $80
    ei                                            ; $66cc: $fb
    nop                                           ; $66cd: $00
    rst $38                                       ; $66ce: $ff
    nop                                           ; $66cf: $00
    cp a                                          ; $66d0: $bf
    ld b, b                                       ; $66d1: $40
    db $ed                                        ; $66d2: $ed
    ld [bc], a                                    ; $66d3: $02
    rst $38                                       ; $66d4: $ff
    nop                                           ; $66d5: $00
    cp a                                          ; $66d6: $bf
    nop                                           ; $66d7: $00
    sbc $20                                       ; $66d8: $de $20
    rst $38                                       ; $66da: $ff
    nop                                           ; $66db: $00
    rst $28                                       ; $66dc: $ef
    nop                                           ; $66dd: $00
    rst $38                                       ; $66de: $ff
    nop                                           ; $66df: $00
    ld l, a                                       ; $66e0: $6f
    db $10                                        ; $66e1: $10
    ei                                            ; $66e2: $fb
    nop                                           ; $66e3: $00
    rst $38                                       ; $66e4: $ff
    nop                                           ; $66e5: $00
    ld a, a                                       ; $66e6: $7f
    nop                                           ; $66e7: $00
    rst $38                                       ; $66e8: $ff
    nop                                           ; $66e9: $00
    xor $10                                       ; $66ea: $ee $10
    rst $38                                       ; $66ec: $ff
    nop                                           ; $66ed: $00
    rst $38                                       ; $66ee: $ff
    nop                                           ; $66ef: $00
    rst $38                                       ; $66f0: $ff
    nop                                           ; $66f1: $00
    rst $38                                       ; $66f2: $ff
    nop                                           ; $66f3: $00
    ld a, [hl]                                    ; $66f4: $7e
    add c                                         ; $66f5: $81
    ld a, [hl]                                    ; $66f6: $7e
    add c                                         ; $66f7: $81
    ld a, [hl]                                    ; $66f8: $7e
    add c                                         ; $66f9: $81
    ld a, [hl]                                    ; $66fa: $7e
    add c                                         ; $66fb: $81
    ld a, [hl]                                    ; $66fc: $7e
    add c                                         ; $66fd: $81
    ld a, [hl]                                    ; $66fe: $7e
    add c                                         ; $66ff: $81
    add c                                         ; $6700: $81
    rst $38                                       ; $6701: $ff
    xor c                                         ; $6702: $a9
    rst $10                                       ; $6703: $d7
    or e                                          ; $6704: $b3
    push bc                                       ; $6705: $c5
    sub a                                         ; $6706: $97
    pop bc                                        ; $6707: $c1
    xor e                                         ; $6708: $ab
    pop de                                        ; $6709: $d1
    sub e                                         ; $670a: $93
    ret                                           ; $670b: $c9


    xor e                                         ; $670c: $ab
    pop de                                        ; $670d: $d1
    rst $10                                       ; $670e: $d7
    jp hl                                         ; $670f: $e9


    rst $38                                       ; $6710: $ff
    nop                                           ; $6711: $00
    rst $38                                       ; $6712: $ff
    nop                                           ; $6713: $00
    rst $38                                       ; $6714: $ff
    nop                                           ; $6715: $00
    cp e                                          ; $6716: $bb
    nop                                           ; $6717: $00
    rst $38                                       ; $6718: $ff
    nop                                           ; $6719: $00
    xor d                                         ; $671a: $aa
    nop                                           ; $671b: $00
    db $dd                                        ; $671c: $dd
    nop                                           ; $671d: $00
    xor d                                         ; $671e: $aa
    nop                                           ; $671f: $00
    ld d, l                                       ; $6720: $55
    nop                                           ; $6721: $00
    xor d                                         ; $6722: $aa
    nop                                           ; $6723: $00
    ld d, l                                       ; $6724: $55
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    ld d, l                                       ; $6728: $55
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    nop                                           ; $672b: $00
    nop                                           ; $672c: $00
    nop                                           ; $672d: $00
    nop                                           ; $672e: $00
    nop                                           ; $672f: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    ld b, $05                                     ; $6734: $06 $05
    rla                                           ; $6736: $17
    ld c, $4e                                     ; $6737: $0e $4e
    scf                                           ; $6739: $37
    rra                                           ; $673a: $1f
    rst $28                                       ; $673b: $ef
    ld c, [hl]                                    ; $673c: $4e
    or a                                          ; $673d: $b7
    adc a                                         ; $673e: $8f
    ld a, a                                       ; $673f: $7f
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    ld [$42f0], sp                                ; $6744: $08 $f0 $42
    cp h                                          ; $6747: $bc
    nop                                           ; $6748: $00
    rst $38                                       ; $6749: $ff
    nop                                           ; $674a: $00
    rst $38                                       ; $674b: $ff
    nop                                           ; $674c: $00
    rst $38                                       ; $674d: $ff
    nop                                           ; $674e: $00
    rst $38                                       ; $674f: $ff
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    inc c                                         ; $6758: $0c
    ldh a, [rSB]                                  ; $6759: $f0 $01
    cp $00                                        ; $675b: $fe $00
    rst $38                                       ; $675d: $ff
    ld bc, $00fe                                  ; $675e: $01 $fe $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    inc bc                                        ; $676a: $03
    ld [bc], a                                    ; $676b: $02
    ld c, [hl]                                    ; $676c: $4e
    add e                                         ; $676d: $83
    ld b, $ff                                     ; $676e: $06 $ff
    ccf                                           ; $6770: $3f
    rst $18                                       ; $6771: $df
    ld c, a                                       ; $6772: $4f
    cp a                                          ; $6773: $bf
    rra                                           ; $6774: $1f
    rst $38                                       ; $6775: $ff
    rra                                           ; $6776: $1f
    rst $38                                       ; $6777: $ff
    ccf                                           ; $6778: $3f
    rst $38                                       ; $6779: $ff
    ld b, $ff                                     ; $677a: $06 $ff
    ld b, $ff                                     ; $677c: $06 $ff
    nop                                           ; $677e: $00
    rst $38                                       ; $677f: $ff
    nop                                           ; $6780: $00
    rst $38                                       ; $6781: $ff
    add b                                         ; $6782: $80
    rst $38                                       ; $6783: $ff
    nop                                           ; $6784: $00
    rst $38                                       ; $6785: $ff
    add b                                         ; $6786: $80
    rst $38                                       ; $6787: $ff
    ret nz                                        ; $6788: $c0

    rst $38                                       ; $6789: $ff
    nop                                           ; $678a: $00
    rst $38                                       ; $678b: $ff
    nop                                           ; $678c: $00
    rst $38                                       ; $678d: $ff
    nop                                           ; $678e: $00
    rst $38                                       ; $678f: $ff
    ld [bc], a                                    ; $6790: $02
    db $fd                                        ; $6791: $fd
    nop                                           ; $6792: $00
    rst $38                                       ; $6793: $ff
    nop                                           ; $6794: $00
    rst $38                                       ; $6795: $ff
    nop                                           ; $6796: $00
    rst $38                                       ; $6797: $ff
    nop                                           ; $6798: $00
    rst $38                                       ; $6799: $ff
    nop                                           ; $679a: $00
    rst $38                                       ; $679b: $ff
    nop                                           ; $679c: $00
    rst $38                                       ; $679d: $ff
    nop                                           ; $679e: $00
    rst $38                                       ; $679f: $ff
    rlca                                          ; $67a0: $07
    rst $38                                       ; $67a1: $ff
    ld c, a                                       ; $67a2: $4f
    cp a                                          ; $67a3: $bf
    rlca                                          ; $67a4: $07
    rst $38                                       ; $67a5: $ff
    rlca                                          ; $67a6: $07
    rst $38                                       ; $67a7: $ff
    rrca                                          ; $67a8: $0f
    rst $38                                       ; $67a9: $ff
    inc bc                                        ; $67aa: $03
    rst $38                                       ; $67ab: $ff
    nop                                           ; $67ac: $00
    rst $38                                       ; $67ad: $ff
    nop                                           ; $67ae: $00
    rst $38                                       ; $67af: $ff
    nop                                           ; $67b0: $00
    rst $38                                       ; $67b1: $ff
    nop                                           ; $67b2: $00
    rst $38                                       ; $67b3: $ff
    ld [$08ff], sp                                ; $67b4: $08 $ff $08
    rst $38                                       ; $67b7: $ff
    ld [$08ff], sp                                ; $67b8: $08 $ff $08
    rst $38                                       ; $67bb: $ff
    inc c                                         ; $67bc: $0c
    rst $38                                       ; $67bd: $ff
    inc c                                         ; $67be: $0c
    rst $38                                       ; $67bf: $ff
    nop                                           ; $67c0: $00
    rst $38                                       ; $67c1: $ff
    nop                                           ; $67c2: $00
    rst $38                                       ; $67c3: $ff
    nop                                           ; $67c4: $00
    rst $38                                       ; $67c5: $ff
    nop                                           ; $67c6: $00
    rst $38                                       ; $67c7: $ff
    nop                                           ; $67c8: $00
    rst $38                                       ; $67c9: $ff
    nop                                           ; $67ca: $00
    rst $38                                       ; $67cb: $ff
    nop                                           ; $67cc: $00
    rst $38                                       ; $67cd: $ff
    nop                                           ; $67ce: $00
    rst $38                                       ; $67cf: $ff
    ld e, $ff                                     ; $67d0: $1e $ff
    ld e, $ff                                     ; $67d2: $1e $ff
    ccf                                           ; $67d4: $3f
    rst $38                                       ; $67d5: $ff
    ld a, a                                       ; $67d6: $7f
    rst $38                                       ; $67d7: $ff
    ccf                                           ; $67d8: $3f
    rst $38                                       ; $67d9: $ff
    ld e, $ff                                     ; $67da: $1e $ff
    rra                                           ; $67dc: $1f
    rst $38                                       ; $67dd: $ff
    ccf                                           ; $67de: $3f
    rst $38                                       ; $67df: $ff
    nop                                           ; $67e0: $00
    rst $38                                       ; $67e1: $ff
    nop                                           ; $67e2: $00
    rst $38                                       ; $67e3: $ff
    nop                                           ; $67e4: $00
    rst $38                                       ; $67e5: $ff
    add b                                         ; $67e6: $80
    rst $38                                       ; $67e7: $ff
    nop                                           ; $67e8: $00
    rst $38                                       ; $67e9: $ff
    nop                                           ; $67ea: $00
    rst $38                                       ; $67eb: $ff
    nop                                           ; $67ec: $00
    rst $38                                       ; $67ed: $ff
    nop                                           ; $67ee: $00
    rst $38                                       ; $67ef: $ff
    ccf                                           ; $67f0: $3f
    rst $38                                       ; $67f1: $ff
    ccf                                           ; $67f2: $3f
    rst $38                                       ; $67f3: $ff
    ld a, a                                       ; $67f4: $7f
    rst $38                                       ; $67f5: $ff
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    inc c                                         ; $67f8: $0c
    rst $38                                       ; $67f9: $ff
    inc c                                         ; $67fa: $0c
    rst $38                                       ; $67fb: $ff
    nop                                           ; $67fc: $00
    rst $38                                       ; $67fd: $ff
    nop                                           ; $67fe: $00
    rst $38                                       ; $67ff: $ff
    add b                                         ; $6800: $80
    rst $38                                       ; $6801: $ff
    add b                                         ; $6802: $80
    rst $38                                       ; $6803: $ff
    ret nz                                        ; $6804: $c0

    rst $38                                       ; $6805: $ff
    ldh [rIE], a                                  ; $6806: $e0 $ff
    nop                                           ; $6808: $00
    rst $38                                       ; $6809: $ff
    nop                                           ; $680a: $00
    rst $38                                       ; $680b: $ff
    nop                                           ; $680c: $00
    rst $38                                       ; $680d: $ff
    nop                                           ; $680e: $00
    rst $38                                       ; $680f: $ff
    nop                                           ; $6810: $00
    rst $38                                       ; $6811: $ff
    nop                                           ; $6812: $00
    rst $38                                       ; $6813: $ff
    nop                                           ; $6814: $00
    rst $38                                       ; $6815: $ff
    nop                                           ; $6816: $00
    rst $38                                       ; $6817: $ff
    nop                                           ; $6818: $00
    rst $38                                       ; $6819: $ff
    nop                                           ; $681a: $00
    rst $38                                       ; $681b: $ff
    nop                                           ; $681c: $00
    rst $38                                       ; $681d: $ff
    ld hl, sp+$07                                 ; $681e: $f8 $07
    nop                                           ; $6820: $00
    rst $38                                       ; $6821: $ff
    nop                                           ; $6822: $00
    rst $38                                       ; $6823: $ff
    nop                                           ; $6824: $00
    rst $38                                       ; $6825: $ff
    nop                                           ; $6826: $00
    rst $38                                       ; $6827: $ff
    nop                                           ; $6828: $00
    rst $38                                       ; $6829: $ff
    nop                                           ; $682a: $00
    rst $38                                       ; $682b: $ff
    nop                                           ; $682c: $00
    rst $38                                       ; $682d: $ff
    nop                                           ; $682e: $00
    rst $38                                       ; $682f: $ff
    nop                                           ; $6830: $00
    rst $38                                       ; $6831: $ff
    nop                                           ; $6832: $00
    rst $38                                       ; $6833: $ff
    nop                                           ; $6834: $00
    rst $38                                       ; $6835: $ff
    nop                                           ; $6836: $00
    rst $38                                       ; $6837: $ff
    nop                                           ; $6838: $00
    rst $38                                       ; $6839: $ff
    nop                                           ; $683a: $00
    rst $38                                       ; $683b: $ff
    nop                                           ; $683c: $00
    rst $38                                       ; $683d: $ff
    nop                                           ; $683e: $00
    rst $38                                       ; $683f: $ff
    nop                                           ; $6840: $00
    rst $38                                       ; $6841: $ff
    nop                                           ; $6842: $00
    rst $38                                       ; $6843: $ff
    nop                                           ; $6844: $00
    rst $38                                       ; $6845: $ff
    nop                                           ; $6846: $00
    rst $38                                       ; $6847: $ff
    nop                                           ; $6848: $00
    rst $38                                       ; $6849: $ff
    nop                                           ; $684a: $00
    rst $38                                       ; $684b: $ff
    nop                                           ; $684c: $00
    rst $38                                       ; $684d: $ff
    ld bc, $1ffe                                  ; $684e: $01 $fe $1f
    nop                                           ; $6851: $00
    dec b                                         ; $6852: $05
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685a: $00
    nop                                           ; $685b: $00
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    ret nz                                        ; $6860: $c0

    ccf                                           ; $6861: $3f
    ldh a, [rIF]                                  ; $6862: $f0 $0f
    cp a                                          ; $6864: $bf
    nop                                           ; $6865: $00
    ld d, a                                       ; $6866: $57
    nop                                           ; $6867: $00
    ld a, [hl+]                                   ; $6868: $2a
    nop                                           ; $6869: $00
    ld bc, $0000                                  ; $686a: $01 $00 $00
    nop                                           ; $686d: $00
    nop                                           ; $686e: $00
    nop                                           ; $686f: $00
    nop                                           ; $6870: $00
    rst $38                                       ; $6871: $ff
    nop                                           ; $6872: $00
    rst $38                                       ; $6873: $ff
    ldh [$1f], a                                  ; $6874: $e0 $1f
    rst $38                                       ; $6876: $ff
    nop                                           ; $6877: $00
    inc h                                         ; $6878: $24
    nop                                           ; $6879: $00
    nop                                           ; $687a: $00
    nop                                           ; $687b: $00
    nop                                           ; $687c: $00
    nop                                           ; $687d: $00
    nop                                           ; $687e: $00
    nop                                           ; $687f: $00
    rrca                                          ; $6880: $0f
    ldh a, [$1f]                                  ; $6881: $f0 $1f
    ldh [$fa], a                                  ; $6883: $e0 $fa
    nop                                           ; $6885: $00
    push af                                       ; $6886: $f5
    nop                                           ; $6887: $00
    ld [$0000], sp                                ; $6888: $08 $00 $00
    nop                                           ; $688b: $00
    nop                                           ; $688c: $00
    nop                                           ; $688d: $00
    nop                                           ; $688e: $00
    nop                                           ; $688f: $00
    rst $38                                       ; $6890: $ff
    nop                                           ; $6891: $00
    ei                                            ; $6892: $fb
    nop                                           ; $6893: $00
    cp a                                          ; $6894: $bf
    nop                                           ; $6895: $00
    or $08                                        ; $6896: $f6 $08
    ld a, a                                       ; $6898: $7f
    nop                                           ; $6899: $00
    rst $38                                       ; $689a: $ff
    nop                                           ; $689b: $00
    cp $01                                        ; $689c: $fe $01
    rst $28                                       ; $689e: $ef
    nop                                           ; $689f: $00
    db $fd                                        ; $68a0: $fd
    ld [bc], a                                    ; $68a1: $02
    rst $10                                       ; $68a2: $d7

jr_076_68a3:
    jr nz, jr_076_68a3                            ; $68a3: $20 $fe

    ld bc, $00ff                                  ; $68a5: $01 $ff $00
    ei                                            ; $68a8: $fb
    nop                                           ; $68a9: $00
    rst $18                                       ; $68aa: $df
    jr nz, @+$01                                  ; $68ab: $20 $ff

    nop                                           ; $68ad: $00
    rst $38                                       ; $68ae: $ff
    nop                                           ; $68af: $00
    rst $38                                       ; $68b0: $ff
    nop                                           ; $68b1: $00
    cp [hl]                                       ; $68b2: $be
    ld bc, $08f6                                  ; $68b3: $01 $f6 $08
    rst $38                                       ; $68b6: $ff
    nop                                           ; $68b7: $00
    rst $28                                       ; $68b8: $ef
    nop                                           ; $68b9: $00
    ld a, a                                       ; $68ba: $7f
    add b                                         ; $68bb: $80
    ei                                            ; $68bc: $fb
    nop                                           ; $68bd: $00
    rst $38                                       ; $68be: $ff
    nop                                           ; $68bf: $00
    ei                                            ; $68c0: $fb
    inc b                                         ; $68c1: $04
    sbc $00                                       ; $68c2: $de $00
    rst $38                                       ; $68c4: $ff
    nop                                           ; $68c5: $00
    rst $28                                       ; $68c6: $ef
    nop                                           ; $68c7: $00
    cp e                                          ; $68c8: $bb
    inc b                                         ; $68c9: $04
    rst $38                                       ; $68ca: $ff
    nop                                           ; $68cb: $00
    cp a                                          ; $68cc: $bf
    nop                                           ; $68cd: $00
    cp $00                                        ; $68ce: $fe $00
    ld l, a                                       ; $68d0: $6f
    db $10                                        ; $68d1: $10
    ei                                            ; $68d2: $fb
    nop                                           ; $68d3: $00
    rst $38                                       ; $68d4: $ff
    nop                                           ; $68d5: $00
    ld a, a                                       ; $68d6: $7f
    nop                                           ; $68d7: $00
    rst $38                                       ; $68d8: $ff
    nop                                           ; $68d9: $00
    xor $10                                       ; $68da: $ee $10
    rst $38                                       ; $68dc: $ff
    nop                                           ; $68dd: $00
    rst $38                                       ; $68de: $ff
    nop                                           ; $68df: $00
    cp a                                          ; $68e0: $bf
    ld b, b                                       ; $68e1: $40
    db $ed                                        ; $68e2: $ed
    ld [bc], a                                    ; $68e3: $02
    rst $38                                       ; $68e4: $ff
    nop                                           ; $68e5: $00
    cp a                                          ; $68e6: $bf
    nop                                           ; $68e7: $00
    sbc $20                                       ; $68e8: $de $20
    rst $38                                       ; $68ea: $ff
    nop                                           ; $68eb: $00
    rst $28                                       ; $68ec: $ef
    nop                                           ; $68ed: $00
    rst $38                                       ; $68ee: $ff
    nop                                           ; $68ef: $00
    add c                                         ; $68f0: $81
    rst $38                                       ; $68f1: $ff
    xor c                                         ; $68f2: $a9
    rst $10                                       ; $68f3: $d7
    or e                                          ; $68f4: $b3
    push bc                                       ; $68f5: $c5
    sub a                                         ; $68f6: $97
    pop bc                                        ; $68f7: $c1
    xor e                                         ; $68f8: $ab
    pop de                                        ; $68f9: $d1
    sub e                                         ; $68fa: $93
    ret                                           ; $68fb: $c9


    xor e                                         ; $68fc: $ab
    pop de                                        ; $68fd: $d1
    rst $10                                       ; $68fe: $d7
    jp hl                                         ; $68ff: $e9


    rst $38                                       ; $6900: $ff
    nop                                           ; $6901: $00
    rst $38                                       ; $6902: $ff
    nop                                           ; $6903: $00
    ld a, [hl]                                    ; $6904: $7e
    add c                                         ; $6905: $81
    ld a, [hl]                                    ; $6906: $7e
    add c                                         ; $6907: $81
    ld a, [hl]                                    ; $6908: $7e
    add c                                         ; $6909: $81
    ld a, [hl]                                    ; $690a: $7e
    add c                                         ; $690b: $81
    ld a, [hl]                                    ; $690c: $7e
    add c                                         ; $690d: $81
    ld a, [hl]                                    ; $690e: $7e
    add c                                         ; $690f: $81
    rst $38                                       ; $6910: $ff
    nop                                           ; $6911: $00
    rst $38                                       ; $6912: $ff
    nop                                           ; $6913: $00
    rst $38                                       ; $6914: $ff
    nop                                           ; $6915: $00
    cp e                                          ; $6916: $bb
    nop                                           ; $6917: $00
    rst $38                                       ; $6918: $ff
    nop                                           ; $6919: $00
    xor d                                         ; $691a: $aa
    nop                                           ; $691b: $00
    db $dd                                        ; $691c: $dd
    nop                                           ; $691d: $00
    xor d                                         ; $691e: $aa
    nop                                           ; $691f: $00
    ld d, l                                       ; $6920: $55
    nop                                           ; $6921: $00
    xor d                                         ; $6922: $aa
    nop                                           ; $6923: $00
    ld d, l                                       ; $6924: $55
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    ld d, l                                       ; $6928: $55
    nop                                           ; $6929: $00
    nop                                           ; $692a: $00
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    nop                                           ; $692e: $00
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    inc d                                         ; $6934: $14
    inc de                                        ; $6935: $13
    ld a, [hl-]                                   ; $6936: $3a
    dec e                                         ; $6937: $1d
    sbc h                                         ; $6938: $9c
    ld a, e                                       ; $6939: $7b

jr_076_693a:
    ld a, $fd                                     ; $693a: $3e $fd
    sbc b                                         ; $693c: $98
    ld a, a                                       ; $693d: $7f
    inc a                                         ; $693e: $3c
    rst $38                                       ; $693f: $ff
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    db $10                                        ; $6944: $10
    ldh [$84], a                                  ; $6945: $e0 $84
    ld a, b                                       ; $6947: $78
    nop                                           ; $6948: $00
    rst $38                                       ; $6949: $ff
    nop                                           ; $694a: $00
    rst $38                                       ; $694b: $ff
    nop                                           ; $694c: $00
    rst $38                                       ; $694d: $ff
    nop                                           ; $694e: $00
    rst $38                                       ; $694f: $ff
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    jr jr_076_693a                                ; $6958: $18 $e0

    ld [bc], a                                    ; $695a: $02
    db $fc                                        ; $695b: $fc
    nop                                           ; $695c: $00
    rst $38                                       ; $695d: $ff
    ld [bc], a                                    ; $695e: $02
    db $fd                                        ; $695f: $fd
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    ld a, [bc]                                    ; $696a: $0a
    add hl, bc                                    ; $696b: $09
    sbc b                                         ; $696c: $98
    rrca                                          ; $696d: $0f
    add hl, de                                    ; $696e: $19
    cp $7c                                        ; $696f: $fe $7c
    rst $38                                       ; $6971: $ff
    cp [hl]                                       ; $6972: $be
    ld a, a                                       ; $6973: $7f
    ld a, h                                       ; $6974: $7c
    rst $38                                       ; $6975: $ff
    ld a, [hl]                                    ; $6976: $7e
    rst $38                                       ; $6977: $ff
    rst $38                                       ; $6978: $ff
    rst $38                                       ; $6979: $ff
    jr @+$01                                      ; $697a: $18 $ff

    jr @+$01                                      ; $697c: $18 $ff

    nop                                           ; $697e: $00
    rst $38                                       ; $697f: $ff
    nop                                           ; $6980: $00
    rst $38                                       ; $6981: $ff
    nop                                           ; $6982: $00
    rst $38                                       ; $6983: $ff
    nop                                           ; $6984: $00
    rst $38                                       ; $6985: $ff
    nop                                           ; $6986: $00
    rst $38                                       ; $6987: $ff
    nop                                           ; $6988: $00
    rst $38                                       ; $6989: $ff
    nop                                           ; $698a: $00
    rst $38                                       ; $698b: $ff
    nop                                           ; $698c: $00
    rst $38                                       ; $698d: $ff
    nop                                           ; $698e: $00
    rst $38                                       ; $698f: $ff
    inc b                                         ; $6990: $04
    ei                                            ; $6991: $fb
    nop                                           ; $6992: $00
    rst $38                                       ; $6993: $ff
    nop                                           ; $6994: $00
    rst $38                                       ; $6995: $ff
    nop                                           ; $6996: $00
    rst $38                                       ; $6997: $ff
    nop                                           ; $6998: $00
    rst $38                                       ; $6999: $ff
    nop                                           ; $699a: $00
    rst $38                                       ; $699b: $ff
    nop                                           ; $699c: $00
    rst $38                                       ; $699d: $ff
    nop                                           ; $699e: $00
    rst $38                                       ; $699f: $ff
    inc e                                         ; $69a0: $1c
    rst $38                                       ; $69a1: $ff
    cp [hl]                                       ; $69a2: $be
    ld a, a                                       ; $69a3: $7f
    inc e                                         ; $69a4: $1c
    rst $38                                       ; $69a5: $ff
    ld e, $ff                                     ; $69a6: $1e $ff
    ccf                                           ; $69a8: $3f
    rst $38                                       ; $69a9: $ff
    inc c                                         ; $69aa: $0c
    rst $38                                       ; $69ab: $ff
    nop                                           ; $69ac: $00
    rst $38                                       ; $69ad: $ff
    nop                                           ; $69ae: $00
    rst $38                                       ; $69af: $ff
    nop                                           ; $69b0: $00
    rst $38                                       ; $69b1: $ff
    nop                                           ; $69b2: $00
    rst $38                                       ; $69b3: $ff
    add b                                         ; $69b4: $80
    rst $38                                       ; $69b5: $ff
    add b                                         ; $69b6: $80
    rst $38                                       ; $69b7: $ff
    add b                                         ; $69b8: $80
    rst $38                                       ; $69b9: $ff
    add b                                         ; $69ba: $80
    rst $38                                       ; $69bb: $ff
    ret nz                                        ; $69bc: $c0

    rst $38                                       ; $69bd: $ff
    ret nz                                        ; $69be: $c0

    rst $38                                       ; $69bf: $ff
    nop                                           ; $69c0: $00
    rst $38                                       ; $69c1: $ff
    nop                                           ; $69c2: $00
    rst $38                                       ; $69c3: $ff
    nop                                           ; $69c4: $00
    rst $38                                       ; $69c5: $ff
    nop                                           ; $69c6: $00
    rst $38                                       ; $69c7: $ff
    nop                                           ; $69c8: $00
    rst $38                                       ; $69c9: $ff
    nop                                           ; $69ca: $00
    rst $38                                       ; $69cb: $ff
    nop                                           ; $69cc: $00
    rst $38                                       ; $69cd: $ff
    nop                                           ; $69ce: $00
    rst $38                                       ; $69cf: $ff
    ldh [rIE], a                                  ; $69d0: $e0 $ff
    ldh [rIE], a                                  ; $69d2: $e0 $ff
    ldh a, [rIE]                                  ; $69d4: $f0 $ff
    ld hl, sp-$01                                 ; $69d6: $f8 $ff
    ldh a, [rIE]                                  ; $69d8: $f0 $ff
    ldh [rIE], a                                  ; $69da: $e0 $ff
    ldh a, [rIE]                                  ; $69dc: $f0 $ff
    ldh a, [rIE]                                  ; $69de: $f0 $ff
    ld bc, $01ff                                  ; $69e0: $01 $ff $01
    rst $38                                       ; $69e3: $ff
    inc bc                                        ; $69e4: $03
    rst $38                                       ; $69e5: $ff
    rlca                                          ; $69e6: $07
    rst $38                                       ; $69e7: $ff
    inc bc                                        ; $69e8: $03
    rst $38                                       ; $69e9: $ff
    ld bc, $01ff                                  ; $69ea: $01 $ff $01
    rst $38                                       ; $69ed: $ff
    inc bc                                        ; $69ee: $03
    rst $38                                       ; $69ef: $ff
    ld hl, sp-$01                                 ; $69f0: $f8 $ff
    ld hl, sp-$01                                 ; $69f2: $f8 $ff
    db $fc                                        ; $69f4: $fc
    rst $38                                       ; $69f5: $ff
    cp $ff                                        ; $69f6: $fe $ff
    ret nz                                        ; $69f8: $c0

    rst $38                                       ; $69f9: $ff
    ret nz                                        ; $69fa: $c0

    rst $38                                       ; $69fb: $ff
    nop                                           ; $69fc: $00
    rst $38                                       ; $69fd: $ff
    nop                                           ; $69fe: $00
    rst $38                                       ; $69ff: $ff
    inc bc                                        ; $6a00: $03
    rst $38                                       ; $6a01: $ff
    inc bc                                        ; $6a02: $03
    rst $38                                       ; $6a03: $ff
    rlca                                          ; $6a04: $07
    rst $38                                       ; $6a05: $ff
    rrca                                          ; $6a06: $0f
    rst $38                                       ; $6a07: $ff
    nop                                           ; $6a08: $00
    rst $38                                       ; $6a09: $ff
    nop                                           ; $6a0a: $00
    rst $38                                       ; $6a0b: $ff
    nop                                           ; $6a0c: $00
    rst $38                                       ; $6a0d: $ff
    nop                                           ; $6a0e: $00
    rst $38                                       ; $6a0f: $ff
    nop                                           ; $6a10: $00
    rst $38                                       ; $6a11: $ff
    nop                                           ; $6a12: $00
    rst $38                                       ; $6a13: $ff
    nop                                           ; $6a14: $00
    rst $38                                       ; $6a15: $ff
    nop                                           ; $6a16: $00
    rst $38                                       ; $6a17: $ff
    nop                                           ; $6a18: $00
    rst $38                                       ; $6a19: $ff
    nop                                           ; $6a1a: $00
    rst $38                                       ; $6a1b: $ff
    nop                                           ; $6a1c: $00
    rst $38                                       ; $6a1d: $ff
    nop                                           ; $6a1e: $00
    rst $38                                       ; $6a1f: $ff
    nop                                           ; $6a20: $00
    rst $38                                       ; $6a21: $ff
    nop                                           ; $6a22: $00
    rst $38                                       ; $6a23: $ff
    nop                                           ; $6a24: $00
    rst $38                                       ; $6a25: $ff
    nop                                           ; $6a26: $00
    rst $38                                       ; $6a27: $ff
    nop                                           ; $6a28: $00
    rst $38                                       ; $6a29: $ff
    nop                                           ; $6a2a: $00
    rst $38                                       ; $6a2b: $ff
    nop                                           ; $6a2c: $00
    rst $38                                       ; $6a2d: $ff
    nop                                           ; $6a2e: $00
    rst $38                                       ; $6a2f: $ff
    nop                                           ; $6a30: $00
    rst $38                                       ; $6a31: $ff
    nop                                           ; $6a32: $00
    rst $38                                       ; $6a33: $ff
    nop                                           ; $6a34: $00
    rst $38                                       ; $6a35: $ff
    nop                                           ; $6a36: $00
    rst $38                                       ; $6a37: $ff
    nop                                           ; $6a38: $00
    rst $38                                       ; $6a39: $ff
    nop                                           ; $6a3a: $00
    rst $38                                       ; $6a3b: $ff
    nop                                           ; $6a3c: $00
    rst $38                                       ; $6a3d: $ff
    nop                                           ; $6a3e: $00
    rst $38                                       ; $6a3f: $ff
    nop                                           ; $6a40: $00
    rst $38                                       ; $6a41: $ff
    nop                                           ; $6a42: $00
    rst $38                                       ; $6a43: $ff
    nop                                           ; $6a44: $00
    rst $38                                       ; $6a45: $ff
    nop                                           ; $6a46: $00
    rst $38                                       ; $6a47: $ff
    nop                                           ; $6a48: $00
    rst $38                                       ; $6a49: $ff
    nop                                           ; $6a4a: $00
    rst $38                                       ; $6a4b: $ff
    nop                                           ; $6a4c: $00
    rst $38                                       ; $6a4d: $ff
    ld a, a                                       ; $6a4e: $7f
    add b                                         ; $6a4f: $80
    ldh a, [rIF]                                  ; $6a50: $f0 $0f
    ld a, h                                       ; $6a52: $7c
    inc bc                                        ; $6a53: $03
    cpl                                           ; $6a54: $2f
    nop                                           ; $6a55: $00
    dec d                                         ; $6a56: $15
    nop                                           ; $6a57: $00
    ld a, [bc]                                    ; $6a58: $0a
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    nop                                           ; $6a60: $00
    rst $38                                       ; $6a61: $ff
    nop                                           ; $6a62: $00
    rst $38                                       ; $6a63: $ff
    ld hl, sp+$07                                 ; $6a64: $f8 $07
    rst $38                                       ; $6a66: $ff
    nop                                           ; $6a67: $00
    adc c                                         ; $6a68: $89
    nop                                           ; $6a69: $00
    ld b, b                                       ; $6a6a: $40
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00
    inc bc                                        ; $6a70: $03
    db $fc                                        ; $6a71: $fc
    rlca                                          ; $6a72: $07
    ld hl, sp+$3e                                 ; $6a73: $f8 $3e
    ret nz                                        ; $6a75: $c0

    db $fd                                        ; $6a76: $fd
    nop                                           ; $6a77: $00
    ld [bc], a                                    ; $6a78: $02
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    nop                                           ; $6a7b: $00
    nop                                           ; $6a7c: $00
    nop                                           ; $6a7d: $00
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    ei                                            ; $6a80: $fb
    nop                                           ; $6a81: $00
    ret nc                                        ; $6a82: $d0

    nop                                           ; $6a83: $00
    and b                                         ; $6a84: $a0
    nop                                           ; $6a85: $00
    ld b, b                                       ; $6a86: $40
    nop                                           ; $6a87: $00
    nop                                           ; $6a88: $00
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    nop                                           ; $6a8c: $00
    nop                                           ; $6a8d: $00
    nop                                           ; $6a8e: $00
    nop                                           ; $6a8f: $00
    db $fd                                        ; $6a90: $fd
    ld [bc], a                                    ; $6a91: $02
    rst $10                                       ; $6a92: $d7

jr_076_6a93:
    jr nz, jr_076_6a93                            ; $6a93: $20 $fe

    ld bc, $00ff                                  ; $6a95: $01 $ff $00
    ei                                            ; $6a98: $fb
    nop                                           ; $6a99: $00
    rst $18                                       ; $6a9a: $df
    jr nz, @+$01                                  ; $6a9b: $20 $ff

    nop                                           ; $6a9d: $00
    rst $38                                       ; $6a9e: $ff
    nop                                           ; $6a9f: $00
    rst $38                                       ; $6aa0: $ff
    nop                                           ; $6aa1: $00
    cp [hl]                                       ; $6aa2: $be
    ld bc, $08f6                                  ; $6aa3: $01 $f6 $08
    rst $38                                       ; $6aa6: $ff
    nop                                           ; $6aa7: $00
    rst $28                                       ; $6aa8: $ef
    nop                                           ; $6aa9: $00
    ld a, a                                       ; $6aaa: $7f
    add b                                         ; $6aab: $80
    ei                                            ; $6aac: $fb
    nop                                           ; $6aad: $00
    rst $38                                       ; $6aae: $ff
    nop                                           ; $6aaf: $00
    ei                                            ; $6ab0: $fb
    inc b                                         ; $6ab1: $04
    sbc $00                                       ; $6ab2: $de $00
    rst $38                                       ; $6ab4: $ff
    nop                                           ; $6ab5: $00
    rst $28                                       ; $6ab6: $ef
    nop                                           ; $6ab7: $00
    cp e                                          ; $6ab8: $bb
    inc b                                         ; $6ab9: $04
    rst $38                                       ; $6aba: $ff
    nop                                           ; $6abb: $00
    cp a                                          ; $6abc: $bf
    nop                                           ; $6abd: $00
    cp $00                                        ; $6abe: $fe $00
    rst $38                                       ; $6ac0: $ff
    nop                                           ; $6ac1: $00
    ei                                            ; $6ac2: $fb
    nop                                           ; $6ac3: $00
    cp a                                          ; $6ac4: $bf
    nop                                           ; $6ac5: $00
    or $08                                        ; $6ac6: $f6 $08
    ld a, a                                       ; $6ac8: $7f
    nop                                           ; $6ac9: $00
    rst $38                                       ; $6aca: $ff
    nop                                           ; $6acb: $00
    cp $01                                        ; $6acc: $fe $01
    rst $28                                       ; $6ace: $ef
    nop                                           ; $6acf: $00
    cp a                                          ; $6ad0: $bf
    ld b, b                                       ; $6ad1: $40
    db $ed                                        ; $6ad2: $ed
    ld [bc], a                                    ; $6ad3: $02
    rst $38                                       ; $6ad4: $ff
    nop                                           ; $6ad5: $00
    cp a                                          ; $6ad6: $bf
    nop                                           ; $6ad7: $00
    sbc $20                                       ; $6ad8: $de $20
    rst $38                                       ; $6ada: $ff
    nop                                           ; $6adb: $00
    rst $28                                       ; $6adc: $ef
    nop                                           ; $6add: $00
    rst $38                                       ; $6ade: $ff
    nop                                           ; $6adf: $00
    ld l, a                                       ; $6ae0: $6f
    db $10                                        ; $6ae1: $10
    ei                                            ; $6ae2: $fb
    nop                                           ; $6ae3: $00
    rst $38                                       ; $6ae4: $ff
    nop                                           ; $6ae5: $00
    ld a, a                                       ; $6ae6: $7f
    nop                                           ; $6ae7: $00
    rst $38                                       ; $6ae8: $ff
    nop                                           ; $6ae9: $00
    xor $10                                       ; $6aea: $ee $10
    rst $38                                       ; $6aec: $ff
    nop                                           ; $6aed: $00
    rst $38                                       ; $6aee: $ff
    nop                                           ; $6aef: $00
    rst $38                                       ; $6af0: $ff
    nop                                           ; $6af1: $00
    rst $38                                       ; $6af2: $ff
    nop                                           ; $6af3: $00
    ld a, [hl]                                    ; $6af4: $7e
    add c                                         ; $6af5: $81
    ld a, [hl]                                    ; $6af6: $7e
    add c                                         ; $6af7: $81
    ld a, [hl]                                    ; $6af8: $7e
    add c                                         ; $6af9: $81
    ld a, [hl]                                    ; $6afa: $7e
    add c                                         ; $6afb: $81
    ld a, [hl]                                    ; $6afc: $7e
    add c                                         ; $6afd: $81
    ld a, [hl]                                    ; $6afe: $7e
    add c                                         ; $6aff: $81
    add c                                         ; $6b00: $81
    rst $38                                       ; $6b01: $ff
    xor c                                         ; $6b02: $a9
    rst $10                                       ; $6b03: $d7
    or e                                          ; $6b04: $b3
    push bc                                       ; $6b05: $c5

jr_076_6b06:
    sub a                                         ; $6b06: $97
    pop bc                                        ; $6b07: $c1
    xor e                                         ; $6b08: $ab
    pop de                                        ; $6b09: $d1
    sub e                                         ; $6b0a: $93
    ret                                           ; $6b0b: $c9


    xor e                                         ; $6b0c: $ab
    pop de                                        ; $6b0d: $d1
    rst $10                                       ; $6b0e: $d7
    jp hl                                         ; $6b0f: $e9


    rst $38                                       ; $6b10: $ff
    nop                                           ; $6b11: $00
    rst $38                                       ; $6b12: $ff
    nop                                           ; $6b13: $00
    rst $38                                       ; $6b14: $ff
    nop                                           ; $6b15: $00
    ld [hl], a                                    ; $6b16: $77
    nop                                           ; $6b17: $00
    rst $38                                       ; $6b18: $ff
    nop                                           ; $6b19: $00

jr_076_6b1a:
    ld d, l                                       ; $6b1a: $55
    nop                                           ; $6b1b: $00
    cp e                                          ; $6b1c: $bb
    nop                                           ; $6b1d: $00
    ld d, l                                       ; $6b1e: $55
    nop                                           ; $6b1f: $00
    xor d                                         ; $6b20: $aa
    nop                                           ; $6b21: $00
    ld d, l                                       ; $6b22: $55
    nop                                           ; $6b23: $00
    xor d                                         ; $6b24: $aa
    nop                                           ; $6b25: $00
    nop                                           ; $6b26: $00
    nop                                           ; $6b27: $00
    xor d                                         ; $6b28: $aa
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    nop                                           ; $6b2b: $00
    nop                                           ; $6b2c: $00
    nop                                           ; $6b2d: $00
    nop                                           ; $6b2e: $00
    nop                                           ; $6b2f: $00
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    nop                                           ; $6b33: $00
    ld c, b                                       ; $6b34: $48
    ld b, a                                       ; $6b35: $47
    ld h, l                                       ; $6b36: $65
    ld a, d                                       ; $6b37: $7a
    ld l, b                                       ; $6b38: $68
    rst $30                                       ; $6b39: $f7
    db $f4                                        ; $6b3a: $f4
    ei                                            ; $6b3b: $fb
    ld h, b                                       ; $6b3c: $60
    rst $38                                       ; $6b3d: $ff
    ldh a, [rIE]                                  ; $6b3e: $f0 $ff
    nop                                           ; $6b40: $00
    nop                                           ; $6b41: $00
    nop                                           ; $6b42: $00
    nop                                           ; $6b43: $00
    jr nz, jr_076_6b06                            ; $6b44: $20 $c0

    ld [$00f0], sp                                ; $6b46: $08 $f0 $00
    rst $38                                       ; $6b49: $ff
    nop                                           ; $6b4a: $00
    rst $38                                       ; $6b4b: $ff
    nop                                           ; $6b4c: $00
    rst $38                                       ; $6b4d: $ff
    nop                                           ; $6b4e: $00
    rst $38                                       ; $6b4f: $ff
    nop                                           ; $6b50: $00
    nop                                           ; $6b51: $00
    nop                                           ; $6b52: $00
    nop                                           ; $6b53: $00
    nop                                           ; $6b54: $00
    nop                                           ; $6b55: $00
    nop                                           ; $6b56: $00
    nop                                           ; $6b57: $00
    jr nc, jr_076_6b1a                            ; $6b58: $30 $c0

    inc b                                         ; $6b5a: $04
    ld hl, sp+$01                                 ; $6b5b: $f8 $01
    cp $04                                        ; $6b5d: $fe $04
    ei                                            ; $6b5f: $fb
    nop                                           ; $6b60: $00
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
    nop                                           ; $6b63: $00
    nop                                           ; $6b64: $00
    nop                                           ; $6b65: $00
    nop                                           ; $6b66: $00
    nop                                           ; $6b67: $00
    ld bc, $2400                                  ; $6b68: $01 $00 $24
    inc hl                                        ; $6b6b: $23
    ld sp, $622e                                  ; $6b6c: $31 $2e $62
    db $fd                                        ; $6b6f: $fd
    ldh a, [rIE]                                  ; $6b70: $f0 $ff
    ld hl, sp-$01                                 ; $6b72: $f8 $ff
    ldh a, [rIE]                                  ; $6b74: $f0 $ff
    ld hl, sp-$01                                 ; $6b76: $f8 $ff
    db $fc                                        ; $6b78: $fc
    rst $38                                       ; $6b79: $ff
    ld h, b                                       ; $6b7a: $60
    rst $38                                       ; $6b7b: $ff
    ld h, b                                       ; $6b7c: $60
    rst $38                                       ; $6b7d: $ff
    nop                                           ; $6b7e: $00
    rst $38                                       ; $6b7f: $ff
    nop                                           ; $6b80: $00
    rst $38                                       ; $6b81: $ff
    nop                                           ; $6b82: $00
    rst $38                                       ; $6b83: $ff
    nop                                           ; $6b84: $00
    rst $38                                       ; $6b85: $ff
    nop                                           ; $6b86: $00
    rst $38                                       ; $6b87: $ff
    nop                                           ; $6b88: $00
    rst $38                                       ; $6b89: $ff
    nop                                           ; $6b8a: $00
    rst $38                                       ; $6b8b: $ff
    nop                                           ; $6b8c: $00
    rst $38                                       ; $6b8d: $ff
    nop                                           ; $6b8e: $00
    rst $38                                       ; $6b8f: $ff
    ld [$01f7], sp                                ; $6b90: $08 $f7 $01
    cp $00                                        ; $6b93: $fe $00
    rst $38                                       ; $6b95: $ff
    nop                                           ; $6b96: $00
    rst $38                                       ; $6b97: $ff
    nop                                           ; $6b98: $00
    rst $38                                       ; $6b99: $ff
    nop                                           ; $6b9a: $00
    rst $38                                       ; $6b9b: $ff
    nop                                           ; $6b9c: $00
    rst $38                                       ; $6b9d: $ff
    nop                                           ; $6b9e: $00
    rst $38                                       ; $6b9f: $ff
    ld [hl], b                                    ; $6ba0: $70
    rst $38                                       ; $6ba1: $ff
    ld sp, hl                                     ; $6ba2: $f9
    cp $71                                        ; $6ba3: $fe $71
    rst $38                                       ; $6ba5: $ff
    ld a, b                                       ; $6ba6: $78
    rst $38                                       ; $6ba7: $ff
    db $fd                                        ; $6ba8: $fd
    rst $38                                       ; $6ba9: $ff
    inc sp                                        ; $6baa: $33
    rst $38                                       ; $6bab: $ff
    nop                                           ; $6bac: $00
    rst $38                                       ; $6bad: $ff
    nop                                           ; $6bae: $00
    rst $38                                       ; $6baf: $ff
    nop                                           ; $6bb0: $00
    rst $38                                       ; $6bb1: $ff
    nop                                           ; $6bb2: $00
    rst $38                                       ; $6bb3: $ff
    nop                                           ; $6bb4: $00
    rst $38                                       ; $6bb5: $ff
    nop                                           ; $6bb6: $00
    rst $38                                       ; $6bb7: $ff
    nop                                           ; $6bb8: $00
    rst $38                                       ; $6bb9: $ff
    nop                                           ; $6bba: $00
    rst $38                                       ; $6bbb: $ff
    nop                                           ; $6bbc: $00
    rst $38                                       ; $6bbd: $ff
    nop                                           ; $6bbe: $00
    rst $38                                       ; $6bbf: $ff
    nop                                           ; $6bc0: $00
    rst $38                                       ; $6bc1: $ff
    nop                                           ; $6bc2: $00
    rst $38                                       ; $6bc3: $ff
    ld [$08ff], sp                                ; $6bc4: $08 $ff $08
    rst $38                                       ; $6bc7: $ff
    ld [$08ff], sp                                ; $6bc8: $08 $ff $08
    rst $38                                       ; $6bcb: $ff
    inc c                                         ; $6bcc: $0c
    rst $38                                       ; $6bcd: $ff
    inc c                                         ; $6bce: $0c
    rst $38                                       ; $6bcf: $ff
    nop                                           ; $6bd0: $00
    rst $38                                       ; $6bd1: $ff
    nop                                           ; $6bd2: $00
    rst $38                                       ; $6bd3: $ff
    nop                                           ; $6bd4: $00
    rst $38                                       ; $6bd5: $ff
    add b                                         ; $6bd6: $80
    rst $38                                       ; $6bd7: $ff
    nop                                           ; $6bd8: $00
    rst $38                                       ; $6bd9: $ff
    nop                                           ; $6bda: $00
    rst $38                                       ; $6bdb: $ff
    nop                                           ; $6bdc: $00
    rst $38                                       ; $6bdd: $ff
    nop                                           ; $6bde: $00
    rst $38                                       ; $6bdf: $ff
    ld e, $ff                                     ; $6be0: $1e $ff
    ld e, $ff                                     ; $6be2: $1e $ff
    ccf                                           ; $6be4: $3f
    rst $38                                       ; $6be5: $ff
    ld a, a                                       ; $6be6: $7f
    rst $38                                       ; $6be7: $ff
    ccf                                           ; $6be8: $3f
    rst $38                                       ; $6be9: $ff
    ld e, $ff                                     ; $6bea: $1e $ff
    rra                                           ; $6bec: $1f
    rst $38                                       ; $6bed: $ff
    ccf                                           ; $6bee: $3f
    rst $38                                       ; $6bef: $ff
    add b                                         ; $6bf0: $80
    rst $38                                       ; $6bf1: $ff
    add b                                         ; $6bf2: $80
    rst $38                                       ; $6bf3: $ff
    ret nz                                        ; $6bf4: $c0

    rst $38                                       ; $6bf5: $ff
    ldh [rIE], a                                  ; $6bf6: $e0 $ff
    nop                                           ; $6bf8: $00
    rst $38                                       ; $6bf9: $ff
    nop                                           ; $6bfa: $00
    rst $38                                       ; $6bfb: $ff
    nop                                           ; $6bfc: $00
    rst $38                                       ; $6bfd: $ff
    nop                                           ; $6bfe: $00
    rst $38                                       ; $6bff: $ff
    ccf                                           ; $6c00: $3f
    rst $38                                       ; $6c01: $ff
    ccf                                           ; $6c02: $3f
    rst $38                                       ; $6c03: $ff
    ld a, a                                       ; $6c04: $7f
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    inc c                                         ; $6c08: $0c
    rst $38                                       ; $6c09: $ff
    inc c                                         ; $6c0a: $0c
    rst $38                                       ; $6c0b: $ff
    nop                                           ; $6c0c: $00
    rst $38                                       ; $6c0d: $ff
    nop                                           ; $6c0e: $00
    rst $38                                       ; $6c0f: $ff
    nop                                           ; $6c10: $00
    rst $38                                       ; $6c11: $ff
    nop                                           ; $6c12: $00
    rst $38                                       ; $6c13: $ff
    nop                                           ; $6c14: $00
    rst $38                                       ; $6c15: $ff
    nop                                           ; $6c16: $00
    rst $38                                       ; $6c17: $ff
    nop                                           ; $6c18: $00
    rst $38                                       ; $6c19: $ff
    nop                                           ; $6c1a: $00
    rst $38                                       ; $6c1b: $ff
    nop                                           ; $6c1c: $00
    rst $38                                       ; $6c1d: $ff
    nop                                           ; $6c1e: $00
    rst $38                                       ; $6c1f: $ff
    nop                                           ; $6c20: $00
    rst $38                                       ; $6c21: $ff
    nop                                           ; $6c22: $00
    rst $38                                       ; $6c23: $ff
    nop                                           ; $6c24: $00
    rst $38                                       ; $6c25: $ff
    nop                                           ; $6c26: $00
    rst $38                                       ; $6c27: $ff
    nop                                           ; $6c28: $00
    rst $38                                       ; $6c29: $ff
    nop                                           ; $6c2a: $00
    rst $38                                       ; $6c2b: $ff
    nop                                           ; $6c2c: $00
    rst $38                                       ; $6c2d: $ff
    nop                                           ; $6c2e: $00
    rst $38                                       ; $6c2f: $ff
    nop                                           ; $6c30: $00
    rst $38                                       ; $6c31: $ff
    nop                                           ; $6c32: $00
    rst $38                                       ; $6c33: $ff
    nop                                           ; $6c34: $00
    rst $38                                       ; $6c35: $ff
    nop                                           ; $6c36: $00
    rst $38                                       ; $6c37: $ff
    nop                                           ; $6c38: $00
    rst $38                                       ; $6c39: $ff
    nop                                           ; $6c3a: $00
    rst $38                                       ; $6c3b: $ff
    nop                                           ; $6c3c: $00
    rst $38                                       ; $6c3d: $ff
    rra                                           ; $6c3e: $1f
    ldh [rP1], a                                  ; $6c3f: $e0 $00
    rst $38                                       ; $6c41: $ff
    nop                                           ; $6c42: $00
    rst $38                                       ; $6c43: $ff
    nop                                           ; $6c44: $00
    rst $38                                       ; $6c45: $ff
    nop                                           ; $6c46: $00
    rst $38                                       ; $6c47: $ff
    nop                                           ; $6c48: $00
    rst $38                                       ; $6c49: $ff
    nop                                           ; $6c4a: $00
    rst $38                                       ; $6c4b: $ff
    nop                                           ; $6c4c: $00
    rst $38                                       ; $6c4d: $ff
    ld hl, sp+$07                                 ; $6c4e: $f8 $07
    nop                                           ; $6c50: $00
    rst $38                                       ; $6c51: $ff
    nop                                           ; $6c52: $00
    rst $38                                       ; $6c53: $ff
    cp $01                                        ; $6c54: $fe $01
    ld a, a                                       ; $6c56: $7f
    nop                                           ; $6c57: $00
    and d                                         ; $6c58: $a2
    nop                                           ; $6c59: $00
    stop                                          ; $6c5a: $10 $00
    nop                                           ; $6c5c: $00
    nop                                           ; $6c5d: $00
    nop                                           ; $6c5e: $00
    nop                                           ; $6c5f: $00
    nop                                           ; $6c60: $00
    rst $38                                       ; $6c61: $ff
    ld bc, $0ffe                                  ; $6c62: $01 $fe $0f
    ldh a, [rIE]                                  ; $6c65: $f0 $ff
    nop                                           ; $6c67: $00
    ld b, b                                       ; $6c68: $40
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    nop                                           ; $6c6b: $00
    nop                                           ; $6c6c: $00
    nop                                           ; $6c6d: $00
    nop                                           ; $6c6e: $00
    nop                                           ; $6c6f: $00
    cp $00                                        ; $6c70: $fe $00
    db $f4                                        ; $6c72: $f4
    nop                                           ; $6c73: $00
    xor b                                         ; $6c74: $a8
    nop                                           ; $6c75: $00
    ld d, b                                       ; $6c76: $50
    nop                                           ; $6c77: $00
    add b                                         ; $6c78: $80
    nop                                           ; $6c79: $00
    nop                                           ; $6c7a: $00
    nop                                           ; $6c7b: $00
    nop                                           ; $6c7c: $00
    nop                                           ; $6c7d: $00
    nop                                           ; $6c7e: $00
    nop                                           ; $6c7f: $00
    rst $38                                       ; $6c80: $ff
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    nop                                           ; $6c83: $00
    nop                                           ; $6c84: $00
    nop                                           ; $6c85: $00
    nop                                           ; $6c86: $00
    nop                                           ; $6c87: $00
    nop                                           ; $6c88: $00
    nop                                           ; $6c89: $00
    nop                                           ; $6c8a: $00
    nop                                           ; $6c8b: $00
    nop                                           ; $6c8c: $00
    nop                                           ; $6c8d: $00
    nop                                           ; $6c8e: $00
    nop                                           ; $6c8f: $00
    rst $38                                       ; $6c90: $ff
    nop                                           ; $6c91: $00
    cp [hl]                                       ; $6c92: $be
    ld bc, $08f6                                  ; $6c93: $01 $f6 $08
    rst $38                                       ; $6c96: $ff
    nop                                           ; $6c97: $00
    rst $28                                       ; $6c98: $ef
    nop                                           ; $6c99: $00
    ld a, a                                       ; $6c9a: $7f
    add b                                         ; $6c9b: $80
    ei                                            ; $6c9c: $fb
    nop                                           ; $6c9d: $00
    rst $38                                       ; $6c9e: $ff
    nop                                           ; $6c9f: $00
    ei                                            ; $6ca0: $fb
    inc b                                         ; $6ca1: $04
    sbc $00                                       ; $6ca2: $de $00
    rst $38                                       ; $6ca4: $ff
    nop                                           ; $6ca5: $00
    rst $28                                       ; $6ca6: $ef
    nop                                           ; $6ca7: $00
    cp e                                          ; $6ca8: $bb
    inc b                                         ; $6ca9: $04
    rst $38                                       ; $6caa: $ff
    nop                                           ; $6cab: $00
    cp a                                          ; $6cac: $bf
    nop                                           ; $6cad: $00
    cp $00                                        ; $6cae: $fe $00
    rst $38                                       ; $6cb0: $ff
    nop                                           ; $6cb1: $00
    ei                                            ; $6cb2: $fb
    nop                                           ; $6cb3: $00
    cp a                                          ; $6cb4: $bf
    nop                                           ; $6cb5: $00
    or $08                                        ; $6cb6: $f6 $08
    ld a, a                                       ; $6cb8: $7f
    nop                                           ; $6cb9: $00
    rst $38                                       ; $6cba: $ff
    nop                                           ; $6cbb: $00
    cp $01                                        ; $6cbc: $fe $01
    rst $28                                       ; $6cbe: $ef
    nop                                           ; $6cbf: $00
    db $fd                                        ; $6cc0: $fd
    ld [bc], a                                    ; $6cc1: $02
    rst $10                                       ; $6cc2: $d7

jr_076_6cc3:
    jr nz, jr_076_6cc3                            ; $6cc3: $20 $fe

    ld bc, $00ff                                  ; $6cc5: $01 $ff $00
    ei                                            ; $6cc8: $fb
    nop                                           ; $6cc9: $00
    rst $18                                       ; $6cca: $df
    jr nz, @+$01                                  ; $6ccb: $20 $ff

    nop                                           ; $6ccd: $00
    rst $38                                       ; $6cce: $ff
    nop                                           ; $6ccf: $00
    ld l, a                                       ; $6cd0: $6f
    db $10                                        ; $6cd1: $10
    ei                                            ; $6cd2: $fb
    nop                                           ; $6cd3: $00
    rst $38                                       ; $6cd4: $ff
    nop                                           ; $6cd5: $00
    ld a, a                                       ; $6cd6: $7f
    nop                                           ; $6cd7: $00
    rst $38                                       ; $6cd8: $ff
    nop                                           ; $6cd9: $00
    xor $10                                       ; $6cda: $ee $10
    rst $38                                       ; $6cdc: $ff
    nop                                           ; $6cdd: $00
    rst $38                                       ; $6cde: $ff
    nop                                           ; $6cdf: $00
    cp a                                          ; $6ce0: $bf
    ld b, b                                       ; $6ce1: $40
    db $ed                                        ; $6ce2: $ed
    ld [bc], a                                    ; $6ce3: $02
    rst $38                                       ; $6ce4: $ff
    nop                                           ; $6ce5: $00
    cp a                                          ; $6ce6: $bf
    nop                                           ; $6ce7: $00
    sbc $20                                       ; $6ce8: $de $20
    rst $38                                       ; $6cea: $ff
    nop                                           ; $6ceb: $00
    rst $28                                       ; $6cec: $ef
    nop                                           ; $6ced: $00
    rst $38                                       ; $6cee: $ff
    nop                                           ; $6cef: $00
    add c                                         ; $6cf0: $81
    rst $38                                       ; $6cf1: $ff
    xor c                                         ; $6cf2: $a9
    rst $10                                       ; $6cf3: $d7
    or e                                          ; $6cf4: $b3
    push bc                                       ; $6cf5: $c5
    sub a                                         ; $6cf6: $97
    pop bc                                        ; $6cf7: $c1
    xor e                                         ; $6cf8: $ab
    pop de                                        ; $6cf9: $d1
    sub e                                         ; $6cfa: $93
    ret                                           ; $6cfb: $c9


    xor e                                         ; $6cfc: $ab
    pop de                                        ; $6cfd: $d1
    rst $10                                       ; $6cfe: $d7
    jp hl                                         ; $6cff: $e9


    rst $38                                       ; $6d00: $ff
    nop                                           ; $6d01: $00
    rst $38                                       ; $6d02: $ff
    nop                                           ; $6d03: $00
    ld a, [hl]                                    ; $6d04: $7e
    add c                                         ; $6d05: $81
    ld a, [hl]                                    ; $6d06: $7e
    add c                                         ; $6d07: $81
    ld a, [hl]                                    ; $6d08: $7e
    add c                                         ; $6d09: $81
    ld a, [hl]                                    ; $6d0a: $7e
    add c                                         ; $6d0b: $81
    ld a, [hl]                                    ; $6d0c: $7e
    add c                                         ; $6d0d: $81
    ld a, [hl]                                    ; $6d0e: $7e
    add c                                         ; $6d0f: $81
    rst $38                                       ; $6d10: $ff
    nop                                           ; $6d11: $00
    rst $38                                       ; $6d12: $ff
    nop                                           ; $6d13: $00
    rst $38                                       ; $6d14: $ff
    nop                                           ; $6d15: $00
    ld [hl], a                                    ; $6d16: $77
    nop                                           ; $6d17: $00
    rst $38                                       ; $6d18: $ff
    nop                                           ; $6d19: $00
    ld d, l                                       ; $6d1a: $55
    nop                                           ; $6d1b: $00
    cp e                                          ; $6d1c: $bb
    nop                                           ; $6d1d: $00
    ld d, l                                       ; $6d1e: $55
    nop                                           ; $6d1f: $00
    xor d                                         ; $6d20: $aa
    nop                                           ; $6d21: $00
    ld d, l                                       ; $6d22: $55
    nop                                           ; $6d23: $00
    xor d                                         ; $6d24: $aa
    nop                                           ; $6d25: $00
    nop                                           ; $6d26: $00
    nop                                           ; $6d27: $00
    xor d                                         ; $6d28: $aa
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    nop                                           ; $6d2c: $00
    nop                                           ; $6d2d: $00
    nop                                           ; $6d2e: $00
    nop                                           ; $6d2f: $00
    nop                                           ; $6d30: $00
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    nop                                           ; $6d33: $00
    db $10                                        ; $6d34: $10
    rrca                                          ; $6d35: $0f
    adc d                                         ; $6d36: $8a
    push af                                       ; $6d37: $f5
    ret nc                                        ; $6d38: $d0

    xor a                                         ; $6d39: $af
    add sp, -$29                                  ; $6d3a: $e8 $d7
    ret nz                                        ; $6d3c: $c0

    cp a                                          ; $6d3d: $bf
    ret nz                                        ; $6d3e: $c0

    rst $38                                       ; $6d3f: $ff
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    nop                                           ; $6d43: $00
    ld b, b                                       ; $6d44: $40
    add b                                         ; $6d45: $80
    db $10                                        ; $6d46: $10
    ldh [rP1], a                                  ; $6d47: $e0 $00
    rst $38                                       ; $6d49: $ff
    nop                                           ; $6d4a: $00
    rst $38                                       ; $6d4b: $ff
    nop                                           ; $6d4c: $00
    rst $38                                       ; $6d4d: $ff
    nop                                           ; $6d4e: $00
    rst $38                                       ; $6d4f: $ff
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    nop                                           ; $6d55: $00
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00
    ld h, b                                       ; $6d58: $60
    add b                                         ; $6d59: $80
    ld [$02f0], sp                                ; $6d5a: $08 $f0 $02
    db $fc                                        ; $6d5d: $fc
    add hl, bc                                    ; $6d5e: $09
    rst $30                                       ; $6d5f: $f7
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    nop                                           ; $6d67: $00
    ld [bc], a                                    ; $6d68: $02
    ld bc, $8788                                  ; $6d69: $01 $88 $87
    db $e3                                        ; $6d6c: $e3
    sbc l                                         ; $6d6d: $9d
    add l                                         ; $6d6e: $85
    ei                                            ; $6d6f: $fb
    ret nz                                        ; $6d70: $c0

    rst $38                                       ; $6d71: $ff
    ldh [rIE], a                                  ; $6d72: $e0 $ff
    ret nz                                        ; $6d74: $c0

    rst $38                                       ; $6d75: $ff
    ldh [rIE], a                                  ; $6d76: $e0 $ff
    ldh a, [rIE]                                  ; $6d78: $f0 $ff
    add b                                         ; $6d7a: $80
    rst $38                                       ; $6d7b: $ff
    add b                                         ; $6d7c: $80
    rst $38                                       ; $6d7d: $ff
    nop                                           ; $6d7e: $00
    rst $38                                       ; $6d7f: $ff
    nop                                           ; $6d80: $00
    rst $38                                       ; $6d81: $ff
    nop                                           ; $6d82: $00
    rst $38                                       ; $6d83: $ff
    nop                                           ; $6d84: $00
    rst $38                                       ; $6d85: $ff
    nop                                           ; $6d86: $00
    rst $38                                       ; $6d87: $ff
    nop                                           ; $6d88: $00
    rst $38                                       ; $6d89: $ff
    nop                                           ; $6d8a: $00
    rst $38                                       ; $6d8b: $ff
    nop                                           ; $6d8c: $00
    rst $38                                       ; $6d8d: $ff
    nop                                           ; $6d8e: $00
    rst $38                                       ; $6d8f: $ff
    ld de, $03ef                                  ; $6d90: $11 $ef $03
    rst $38                                       ; $6d93: $ff
    ld bc, $01ff                                  ; $6d94: $01 $ff $01
    rst $38                                       ; $6d97: $ff
    inc bc                                        ; $6d98: $03
    rst $38                                       ; $6d99: $ff
    nop                                           ; $6d9a: $00
    rst $38                                       ; $6d9b: $ff
    nop                                           ; $6d9c: $00
    rst $38                                       ; $6d9d: $ff
    nop                                           ; $6d9e: $00
    rst $38                                       ; $6d9f: $ff
    pop bc                                        ; $6da0: $c1
    rst $38                                       ; $6da1: $ff
    di                                            ; $6da2: $f3
    rst $28                                       ; $6da3: $ef
    rst $20                                       ; $6da4: $e7
    rst $18                                       ; $6da5: $df
    db $e3                                        ; $6da6: $e3
    rst $38                                       ; $6da7: $ff
    rst $30                                       ; $6da8: $f7
    rst $38                                       ; $6da9: $ff
    rst $08                                       ; $6daa: $cf
    rst $38                                       ; $6dab: $ff
    inc bc                                        ; $6dac: $03
    rst $38                                       ; $6dad: $ff
    nop                                           ; $6dae: $00
    rst $38                                       ; $6daf: $ff
    nop                                           ; $6db0: $00
    rst $38                                       ; $6db1: $ff
    nop                                           ; $6db2: $00
    rst $38                                       ; $6db3: $ff
    nop                                           ; $6db4: $00
    rst $38                                       ; $6db5: $ff
    nop                                           ; $6db6: $00
    rst $38                                       ; $6db7: $ff
    nop                                           ; $6db8: $00
    rst $38                                       ; $6db9: $ff
    nop                                           ; $6dba: $00
    rst $38                                       ; $6dbb: $ff
    nop                                           ; $6dbc: $00
    rst $38                                       ; $6dbd: $ff
    nop                                           ; $6dbe: $00
    rst $38                                       ; $6dbf: $ff
    nop                                           ; $6dc0: $00
    rst $38                                       ; $6dc1: $ff
    nop                                           ; $6dc2: $00
    rst $38                                       ; $6dc3: $ff
    add b                                         ; $6dc4: $80
    rst $38                                       ; $6dc5: $ff
    add b                                         ; $6dc6: $80
    rst $38                                       ; $6dc7: $ff
    add b                                         ; $6dc8: $80
    rst $38                                       ; $6dc9: $ff
    add b                                         ; $6dca: $80
    rst $38                                       ; $6dcb: $ff
    ret nz                                        ; $6dcc: $c0

    rst $38                                       ; $6dcd: $ff
    ret nz                                        ; $6dce: $c0

    rst $38                                       ; $6dcf: $ff
    ld bc, $01ff                                  ; $6dd0: $01 $ff $01
    rst $38                                       ; $6dd3: $ff
    inc bc                                        ; $6dd4: $03
    rst $38                                       ; $6dd5: $ff
    rlca                                          ; $6dd6: $07
    rst $38                                       ; $6dd7: $ff
    inc bc                                        ; $6dd8: $03
    rst $38                                       ; $6dd9: $ff
    ld bc, $01ff                                  ; $6dda: $01 $ff $01
    rst $38                                       ; $6ddd: $ff
    inc bc                                        ; $6dde: $03
    rst $38                                       ; $6ddf: $ff
    ldh [rIE], a                                  ; $6de0: $e0 $ff
    ldh [rIE], a                                  ; $6de2: $e0 $ff
    ldh a, [rIE]                                  ; $6de4: $f0 $ff
    ld hl, sp-$01                                 ; $6de6: $f8 $ff
    ldh a, [rIE]                                  ; $6de8: $f0 $ff
    ldh [rIE], a                                  ; $6dea: $e0 $ff
    ldh a, [rIE]                                  ; $6dec: $f0 $ff
    ldh a, [rIE]                                  ; $6dee: $f0 $ff
    inc bc                                        ; $6df0: $03
    rst $38                                       ; $6df1: $ff
    inc bc                                        ; $6df2: $03
    rst $38                                       ; $6df3: $ff
    rlca                                          ; $6df4: $07
    rst $38                                       ; $6df5: $ff
    rrca                                          ; $6df6: $0f
    rst $38                                       ; $6df7: $ff
    nop                                           ; $6df8: $00
    rst $38                                       ; $6df9: $ff
    nop                                           ; $6dfa: $00
    rst $38                                       ; $6dfb: $ff
    nop                                           ; $6dfc: $00
    rst $38                                       ; $6dfd: $ff
    nop                                           ; $6dfe: $00
    rst $38                                       ; $6dff: $ff
    ld hl, sp-$01                                 ; $6e00: $f8 $ff
    ld hl, sp-$01                                 ; $6e02: $f8 $ff
    db $fc                                        ; $6e04: $fc
    rst $38                                       ; $6e05: $ff
    cp $ff                                        ; $6e06: $fe $ff
    ret nz                                        ; $6e08: $c0

    rst $38                                       ; $6e09: $ff
    ret nz                                        ; $6e0a: $c0

    rst $38                                       ; $6e0b: $ff
    nop                                           ; $6e0c: $00
    rst $38                                       ; $6e0d: $ff
    nop                                           ; $6e0e: $00
    rst $38                                       ; $6e0f: $ff
    nop                                           ; $6e10: $00
    rst $38                                       ; $6e11: $ff
    nop                                           ; $6e12: $00
    rst $38                                       ; $6e13: $ff
    nop                                           ; $6e14: $00
    rst $38                                       ; $6e15: $ff
    nop                                           ; $6e16: $00
    rst $38                                       ; $6e17: $ff
    nop                                           ; $6e18: $00
    rst $38                                       ; $6e19: $ff
    nop                                           ; $6e1a: $00
    rst $38                                       ; $6e1b: $ff
    nop                                           ; $6e1c: $00
    rst $38                                       ; $6e1d: $ff
    nop                                           ; $6e1e: $00
    rst $38                                       ; $6e1f: $ff
    nop                                           ; $6e20: $00
    rst $38                                       ; $6e21: $ff
    nop                                           ; $6e22: $00
    rst $38                                       ; $6e23: $ff
    nop                                           ; $6e24: $00
    rst $38                                       ; $6e25: $ff
    nop                                           ; $6e26: $00
    rst $38                                       ; $6e27: $ff
    nop                                           ; $6e28: $00
    rst $38                                       ; $6e29: $ff
    nop                                           ; $6e2a: $00
    rst $38                                       ; $6e2b: $ff
    nop                                           ; $6e2c: $00
    rst $38                                       ; $6e2d: $ff
    rlca                                          ; $6e2e: $07
    ld hl, sp+$00                                 ; $6e2f: $f8 $00
    rst $38                                       ; $6e31: $ff
    nop                                           ; $6e32: $00
    rst $38                                       ; $6e33: $ff
    nop                                           ; $6e34: $00
    rst $38                                       ; $6e35: $ff
    nop                                           ; $6e36: $00
    rst $38                                       ; $6e37: $ff
    nop                                           ; $6e38: $00
    rst $38                                       ; $6e39: $ff
    nop                                           ; $6e3a: $00
    rst $38                                       ; $6e3b: $ff
    nop                                           ; $6e3c: $00
    rst $38                                       ; $6e3d: $ff
    cp $01                                        ; $6e3e: $fe $01
    nop                                           ; $6e40: $00
    rst $38                                       ; $6e41: $ff
    nop                                           ; $6e42: $00
    rst $38                                       ; $6e43: $ff
    nop                                           ; $6e44: $00
    rst $38                                       ; $6e45: $ff
    nop                                           ; $6e46: $00
    rst $38                                       ; $6e47: $ff
    nop                                           ; $6e48: $00
    rst $38                                       ; $6e49: $ff
    nop                                           ; $6e4a: $00
    rst $38                                       ; $6e4b: $ff
    nop                                           ; $6e4c: $00
    rst $38                                       ; $6e4d: $ff
    nop                                           ; $6e4e: $00
    rst $38                                       ; $6e4f: $ff
    nop                                           ; $6e50: $00
    rst $38                                       ; $6e51: $ff
    nop                                           ; $6e52: $00
    rst $38                                       ; $6e53: $ff
    add e                                         ; $6e54: $83
    ld a, h                                       ; $6e55: $7c
    rst $38                                       ; $6e56: $ff
    nop                                           ; $6e57: $00
    sub b                                         ; $6e58: $90
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    nop                                           ; $6e5b: $00
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    ccf                                           ; $6e60: $3f
    ret nz                                        ; $6e61: $c0

    ld a, l                                       ; $6e62: $7d
    add b                                         ; $6e63: $80
    ld [$d400], a                                 ; $6e64: $ea $00 $d4
    nop                                           ; $6e67: $00
    jr nz, jr_076_6e6a                            ; $6e68: $20 $00

jr_076_6e6a:
    nop                                           ; $6e6a: $00
    nop                                           ; $6e6b: $00
    nop                                           ; $6e6c: $00
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    nop                                           ; $6e6f: $00
    cp a                                          ; $6e70: $bf
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    nop                                           ; $6e73: $00
    nop                                           ; $6e74: $00
    nop                                           ; $6e75: $00
    nop                                           ; $6e76: $00
    nop                                           ; $6e77: $00
    nop                                           ; $6e78: $00
    nop                                           ; $6e79: $00
    nop                                           ; $6e7a: $00
    nop                                           ; $6e7b: $00
    nop                                           ; $6e7c: $00
    nop                                           ; $6e7d: $00
    nop                                           ; $6e7e: $00
    nop                                           ; $6e7f: $00
    ret nz                                        ; $6e80: $c0

    ccf                                           ; $6e81: $3f
    jr nc, @+$11                                  ; $6e82: $30 $0f

    rra                                           ; $6e84: $1f
    nop                                           ; $6e85: $00
    dec b                                         ; $6e86: $05
    nop                                           ; $6e87: $00
    ld [bc], a                                    ; $6e88: $02
    nop                                           ; $6e89: $00
    ld bc, $0000                                  ; $6e8a: $01 $00 $00
    nop                                           ; $6e8d: $00
    nop                                           ; $6e8e: $00
    nop                                           ; $6e8f: $00
    ei                                            ; $6e90: $fb
    inc b                                         ; $6e91: $04
    sbc $00                                       ; $6e92: $de $00
    rst $38                                       ; $6e94: $ff
    nop                                           ; $6e95: $00
    rst $28                                       ; $6e96: $ef
    nop                                           ; $6e97: $00
    cp e                                          ; $6e98: $bb
    inc b                                         ; $6e99: $04
    rst $38                                       ; $6e9a: $ff
    nop                                           ; $6e9b: $00
    cp a                                          ; $6e9c: $bf
    nop                                           ; $6e9d: $00
    cp $00                                        ; $6e9e: $fe $00
    rst $38                                       ; $6ea0: $ff
    nop                                           ; $6ea1: $00
    ei                                            ; $6ea2: $fb
    nop                                           ; $6ea3: $00
    cp a                                          ; $6ea4: $bf
    nop                                           ; $6ea5: $00
    or $08                                        ; $6ea6: $f6 $08
    ld a, a                                       ; $6ea8: $7f
    nop                                           ; $6ea9: $00
    rst $38                                       ; $6eaa: $ff
    nop                                           ; $6eab: $00
    cp $01                                        ; $6eac: $fe $01
    rst $28                                       ; $6eae: $ef
    nop                                           ; $6eaf: $00
    db $fd                                        ; $6eb0: $fd
    ld [bc], a                                    ; $6eb1: $02
    rst $10                                       ; $6eb2: $d7

jr_076_6eb3:
    jr nz, jr_076_6eb3                            ; $6eb3: $20 $fe

    ld bc, $00ff                                  ; $6eb5: $01 $ff $00
    ei                                            ; $6eb8: $fb
    nop                                           ; $6eb9: $00
    rst $18                                       ; $6eba: $df
    jr nz, @+$01                                  ; $6ebb: $20 $ff

    nop                                           ; $6ebd: $00
    rst $38                                       ; $6ebe: $ff
    nop                                           ; $6ebf: $00
    rst $38                                       ; $6ec0: $ff
    nop                                           ; $6ec1: $00
    cp [hl]                                       ; $6ec2: $be
    ld bc, $08f6                                  ; $6ec3: $01 $f6 $08
    rst $38                                       ; $6ec6: $ff
    nop                                           ; $6ec7: $00
    rst $28                                       ; $6ec8: $ef
    nop                                           ; $6ec9: $00
    ld a, a                                       ; $6eca: $7f
    add b                                         ; $6ecb: $80
    ei                                            ; $6ecc: $fb
    nop                                           ; $6ecd: $00
    rst $38                                       ; $6ece: $ff
    nop                                           ; $6ecf: $00
    cp a                                          ; $6ed0: $bf
    ld b, b                                       ; $6ed1: $40
    db $ed                                        ; $6ed2: $ed
    ld [bc], a                                    ; $6ed3: $02
    rst $38                                       ; $6ed4: $ff
    nop                                           ; $6ed5: $00
    cp a                                          ; $6ed6: $bf
    nop                                           ; $6ed7: $00
    sbc $20                                       ; $6ed8: $de $20
    rst $38                                       ; $6eda: $ff
    nop                                           ; $6edb: $00
    rst $28                                       ; $6edc: $ef
    nop                                           ; $6edd: $00
    rst $38                                       ; $6ede: $ff
    nop                                           ; $6edf: $00
    ld l, a                                       ; $6ee0: $6f
    db $10                                        ; $6ee1: $10
    ei                                            ; $6ee2: $fb
    nop                                           ; $6ee3: $00
    rst $38                                       ; $6ee4: $ff
    nop                                           ; $6ee5: $00
    ld a, a                                       ; $6ee6: $7f
    nop                                           ; $6ee7: $00
    rst $38                                       ; $6ee8: $ff
    nop                                           ; $6ee9: $00
    xor $10                                       ; $6eea: $ee $10
    rst $38                                       ; $6eec: $ff
    nop                                           ; $6eed: $00
    rst $38                                       ; $6eee: $ff
    nop                                           ; $6eef: $00
    rst $38                                       ; $6ef0: $ff
    nop                                           ; $6ef1: $00
    rst $38                                       ; $6ef2: $ff
    nop                                           ; $6ef3: $00
    ld a, [hl]                                    ; $6ef4: $7e
    add c                                         ; $6ef5: $81
    ld a, [hl]                                    ; $6ef6: $7e
    add c                                         ; $6ef7: $81
    ld a, [hl]                                    ; $6ef8: $7e
    add c                                         ; $6ef9: $81
    ld a, [hl]                                    ; $6efa: $7e
    add c                                         ; $6efb: $81
    ld a, [hl]                                    ; $6efc: $7e
    add c                                         ; $6efd: $81
    ld a, [hl]                                    ; $6efe: $7e
    add c                                         ; $6eff: $81
    add c                                         ; $6f00: $81
    rst $38                                       ; $6f01: $ff
    xor c                                         ; $6f02: $a9
    rst $10                                       ; $6f03: $d7
    or e                                          ; $6f04: $b3
    push bc                                       ; $6f05: $c5
    sub a                                         ; $6f06: $97
    pop bc                                        ; $6f07: $c1

jr_076_6f08:
    xor e                                         ; $6f08: $ab
    pop de                                        ; $6f09: $d1
    sub e                                         ; $6f0a: $93
    ret                                           ; $6f0b: $c9


    xor e                                         ; $6f0c: $ab
    pop de                                        ; $6f0d: $d1
    rst $10                                       ; $6f0e: $d7
    jp hl                                         ; $6f0f: $e9


    rst $38                                       ; $6f10: $ff
    nop                                           ; $6f11: $00
    rst $38                                       ; $6f12: $ff
    nop                                           ; $6f13: $00
    rst $38                                       ; $6f14: $ff
    nop                                           ; $6f15: $00
    xor $00                                       ; $6f16: $ee $00
    rst $38                                       ; $6f18: $ff
    nop                                           ; $6f19: $00
    xor d                                         ; $6f1a: $aa
    nop                                           ; $6f1b: $00
    ld [hl], a                                    ; $6f1c: $77
    nop                                           ; $6f1d: $00
    xor d                                         ; $6f1e: $aa
    nop                                           ; $6f1f: $00
    ld d, l                                       ; $6f20: $55
    nop                                           ; $6f21: $00
    xor d                                         ; $6f22: $aa
    nop                                           ; $6f23: $00
    ld d, l                                       ; $6f24: $55
    nop                                           ; $6f25: $00
    nop                                           ; $6f26: $00
    nop                                           ; $6f27: $00
    ld d, l                                       ; $6f28: $55
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    nop                                           ; $6f2c: $00
    nop                                           ; $6f2d: $00
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    nop                                           ; $6f33: $00
    jr nz, jr_076_6f55                            ; $6f34: $20 $1f

    inc d                                         ; $6f36: $14
    db $eb                                        ; $6f37: $eb
    and b                                         ; $6f38: $a0
    ld e, a                                       ; $6f39: $5f
    ret nc                                        ; $6f3a: $d0

    cpl                                           ; $6f3b: $2f
    add b                                         ; $6f3c: $80
    ld a, a                                       ; $6f3d: $7f
    nop                                           ; $6f3e: $00
    rst $38                                       ; $6f3f: $ff
    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    nop                                           ; $6f43: $00
    add b                                         ; $6f44: $80
    nop                                           ; $6f45: $00
    jr nz, jr_076_6f08                            ; $6f46: $20 $c0

    nop                                           ; $6f48: $00
    rst $38                                       ; $6f49: $ff
    nop                                           ; $6f4a: $00
    rst $38                                       ; $6f4b: $ff
    nop                                           ; $6f4c: $00
    rst $38                                       ; $6f4d: $ff
    nop                                           ; $6f4e: $00
    rst $38                                       ; $6f4f: $ff
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00

jr_076_6f55:
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    ret nz                                        ; $6f58: $c0

    nop                                           ; $6f59: $00
    ld [de], a                                    ; $6f5a: $12
    ld [c], a                                     ; $6f5b: $e2
    ld b, $fa                                     ; $6f5c: $06 $fa
    ld d, $ef                                     ; $6f5e: $16 $ef
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    nop                                           ; $6f63: $00
    nop                                           ; $6f64: $00
    nop                                           ; $6f65: $00
    ld bc, $0400                                  ; $6f66: $01 $00 $04
    inc bc                                        ; $6f69: $03
    ld de, $c40e                                  ; $6f6a: $11 $0e $c4
    ccf                                           ; $6f6d: $3f
    inc c                                         ; $6f6e: $0c
    rst $30                                       ; $6f6f: $f7
    nop                                           ; $6f70: $00
    rst $38                                       ; $6f71: $ff
    add b                                         ; $6f72: $80
    rst $38                                       ; $6f73: $ff
    nop                                           ; $6f74: $00
    rst $38                                       ; $6f75: $ff
    add b                                         ; $6f76: $80
    rst $38                                       ; $6f77: $ff
    ret nz                                        ; $6f78: $c0

    rst $38                                       ; $6f79: $ff
    nop                                           ; $6f7a: $00
    rst $38                                       ; $6f7b: $ff
    nop                                           ; $6f7c: $00
    rst $38                                       ; $6f7d: $ff
    nop                                           ; $6f7e: $00
    rst $38                                       ; $6f7f: $ff
    nop                                           ; $6f80: $00
    rst $38                                       ; $6f81: $ff
    nop                                           ; $6f82: $00
    rst $38                                       ; $6f83: $ff
    nop                                           ; $6f84: $00
    rst $38                                       ; $6f85: $ff
    nop                                           ; $6f86: $00
    rst $38                                       ; $6f87: $ff
    nop                                           ; $6f88: $00
    rst $38                                       ; $6f89: $ff
    nop                                           ; $6f8a: $00
    rst $38                                       ; $6f8b: $ff
    nop                                           ; $6f8c: $00
    rst $38                                       ; $6f8d: $ff
    nop                                           ; $6f8e: $00
    rst $38                                       ; $6f8f: $ff
    daa                                           ; $6f90: $27
    rst $18                                       ; $6f91: $df
    rrca                                          ; $6f92: $0f
    rst $38                                       ; $6f93: $ff
    rlca                                          ; $6f94: $07
    rst $38                                       ; $6f95: $ff
    rlca                                          ; $6f96: $07
    rst $38                                       ; $6f97: $ff
    rrca                                          ; $6f98: $0f
    rst $38                                       ; $6f99: $ff
    inc bc                                        ; $6f9a: $03
    rst $38                                       ; $6f9b: $ff
    nop                                           ; $6f9c: $00
    rst $38                                       ; $6f9d: $ff
    nop                                           ; $6f9e: $00
    rst $38                                       ; $6f9f: $ff
    ld b, $ff                                     ; $6fa0: $06 $ff
    xor [hl]                                      ; $6fa2: $ae
    rst $18                                       ; $6fa3: $df
    ld e, a                                       ; $6fa4: $5f
    cp a                                          ; $6fa5: $bf
    adc [hl]                                      ; $6fa6: $8e
    rst $38                                       ; $6fa7: $ff
    sbc $ff                                       ; $6fa8: $de $ff
    ccf                                           ; $6faa: $3f
    rst $38                                       ; $6fab: $ff
    inc c                                         ; $6fac: $0c
    rst $38                                       ; $6fad: $ff
    nop                                           ; $6fae: $00
    rst $38                                       ; $6faf: $ff
    nop                                           ; $6fb0: $00
    rst $38                                       ; $6fb1: $ff
    nop                                           ; $6fb2: $00
    rst $38                                       ; $6fb3: $ff
    ld [$08ff], sp                                ; $6fb4: $08 $ff $08
    rst $38                                       ; $6fb7: $ff
    ld [$08ff], sp                                ; $6fb8: $08 $ff $08
    rst $38                                       ; $6fbb: $ff
    inc c                                         ; $6fbc: $0c
    rst $38                                       ; $6fbd: $ff
    inc c                                         ; $6fbe: $0c
    rst $38                                       ; $6fbf: $ff
    nop                                           ; $6fc0: $00
    rst $38                                       ; $6fc1: $ff
    nop                                           ; $6fc2: $00
    rst $38                                       ; $6fc3: $ff
    nop                                           ; $6fc4: $00
    rst $38                                       ; $6fc5: $ff
    nop                                           ; $6fc6: $00
    rst $38                                       ; $6fc7: $ff
    nop                                           ; $6fc8: $00
    rst $38                                       ; $6fc9: $ff
    nop                                           ; $6fca: $00
    rst $38                                       ; $6fcb: $ff
    nop                                           ; $6fcc: $00
    rst $38                                       ; $6fcd: $ff
    nop                                           ; $6fce: $00
    rst $38                                       ; $6fcf: $ff
    ld e, $ff                                     ; $6fd0: $1e $ff
    ld e, $ff                                     ; $6fd2: $1e $ff
    ccf                                           ; $6fd4: $3f
    rst $38                                       ; $6fd5: $ff
    ld a, a                                       ; $6fd6: $7f
    rst $38                                       ; $6fd7: $ff
    ccf                                           ; $6fd8: $3f
    rst $38                                       ; $6fd9: $ff
    ld e, $ff                                     ; $6fda: $1e $ff
    rra                                           ; $6fdc: $1f
    rst $38                                       ; $6fdd: $ff
    ccf                                           ; $6fde: $3f
    rst $38                                       ; $6fdf: $ff
    nop                                           ; $6fe0: $00
    rst $38                                       ; $6fe1: $ff
    nop                                           ; $6fe2: $00
    rst $38                                       ; $6fe3: $ff
    nop                                           ; $6fe4: $00
    rst $38                                       ; $6fe5: $ff
    add b                                         ; $6fe6: $80
    rst $38                                       ; $6fe7: $ff
    nop                                           ; $6fe8: $00
    rst $38                                       ; $6fe9: $ff
    nop                                           ; $6fea: $00
    rst $38                                       ; $6feb: $ff
    nop                                           ; $6fec: $00
    rst $38                                       ; $6fed: $ff
    nop                                           ; $6fee: $00
    rst $38                                       ; $6fef: $ff
    ccf                                           ; $6ff0: $3f
    rst $38                                       ; $6ff1: $ff
    ccf                                           ; $6ff2: $3f
    rst $38                                       ; $6ff3: $ff
    ld a, a                                       ; $6ff4: $7f
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    inc c                                         ; $6ff8: $0c
    rst $38                                       ; $6ff9: $ff
    inc c                                         ; $6ffa: $0c
    rst $38                                       ; $6ffb: $ff
    nop                                           ; $6ffc: $00
    rst $38                                       ; $6ffd: $ff
    nop                                           ; $6ffe: $00
    rst $38                                       ; $6fff: $ff
    add b                                         ; $7000: $80
    rst $38                                       ; $7001: $ff
    add b                                         ; $7002: $80
    rst $38                                       ; $7003: $ff
    ret nz                                        ; $7004: $c0

    rst $38                                       ; $7005: $ff
    ldh [rIE], a                                  ; $7006: $e0 $ff
    nop                                           ; $7008: $00
    rst $38                                       ; $7009: $ff
    nop                                           ; $700a: $00
    rst $38                                       ; $700b: $ff
    nop                                           ; $700c: $00
    rst $38                                       ; $700d: $ff
    nop                                           ; $700e: $00
    rst $38                                       ; $700f: $ff
    nop                                           ; $7010: $00
    rst $38                                       ; $7011: $ff
    nop                                           ; $7012: $00
    rst $38                                       ; $7013: $ff
    nop                                           ; $7014: $00
    rst $38                                       ; $7015: $ff
    nop                                           ; $7016: $00
    rst $38                                       ; $7017: $ff
    nop                                           ; $7018: $00
    rst $38                                       ; $7019: $ff
    nop                                           ; $701a: $00
    rst $38                                       ; $701b: $ff
    nop                                           ; $701c: $00
    rst $38                                       ; $701d: $ff
    ld bc, $00fe                                  ; $701e: $01 $fe $00
    rst $38                                       ; $7021: $ff
    nop                                           ; $7022: $00
    rst $38                                       ; $7023: $ff
    nop                                           ; $7024: $00
    rst $38                                       ; $7025: $ff
    nop                                           ; $7026: $00
    rst $38                                       ; $7027: $ff
    nop                                           ; $7028: $00
    rst $38                                       ; $7029: $ff
    nop                                           ; $702a: $00
    rst $38                                       ; $702b: $ff
    nop                                           ; $702c: $00
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    nop                                           ; $702f: $00
    nop                                           ; $7030: $00
    rst $38                                       ; $7031: $ff
    nop                                           ; $7032: $00
    rst $38                                       ; $7033: $ff
    nop                                           ; $7034: $00
    rst $38                                       ; $7035: $ff
    nop                                           ; $7036: $00
    rst $38                                       ; $7037: $ff
    nop                                           ; $7038: $00
    rst $38                                       ; $7039: $ff
    nop                                           ; $703a: $00
    rst $38                                       ; $703b: $ff
    nop                                           ; $703c: $00
    rst $38                                       ; $703d: $ff
    add b                                         ; $703e: $80
    ld a, a                                       ; $703f: $7f
    nop                                           ; $7040: $00
    rst $38                                       ; $7041: $ff
    nop                                           ; $7042: $00
    rst $38                                       ; $7043: $ff
    nop                                           ; $7044: $00
    rst $38                                       ; $7045: $ff
    nop                                           ; $7046: $00
    rst $38                                       ; $7047: $ff
    nop                                           ; $7048: $00
    rst $38                                       ; $7049: $ff
    nop                                           ; $704a: $00
    rst $38                                       ; $704b: $ff
    nop                                           ; $704c: $00
    rst $38                                       ; $704d: $ff
    nop                                           ; $704e: $00
    rst $38                                       ; $704f: $ff
    rrca                                          ; $7050: $0f
    ldh a, [$1f]                                  ; $7051: $f0 $1f
    ldh [$fa], a                                  ; $7053: $e0 $fa
    nop                                           ; $7055: $00
    push af                                       ; $7056: $f5
    nop                                           ; $7057: $00
    ld [$0000], sp                                ; $7058: $08 $00 $00
    nop                                           ; $705b: $00
    nop                                           ; $705c: $00
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    rst $28                                       ; $7060: $ef
    nop                                           ; $7061: $00
    ld b, b                                       ; $7062: $40
    nop                                           ; $7063: $00
    add b                                         ; $7064: $80
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706a: $00
    nop                                           ; $706b: $00
    nop                                           ; $706c: $00
    nop                                           ; $706d: $00
    nop                                           ; $706e: $00
    nop                                           ; $706f: $00
    ldh a, [rIF]                                  ; $7070: $f0 $0f
    inc c                                         ; $7072: $0c
    inc bc                                        ; $7073: $03
    rlca                                          ; $7074: $07
    nop                                           ; $7075: $00
    ld bc, $0000                                  ; $7076: $01 $00 $00
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00
    nop                                           ; $707b: $00

Jump_076_707c:
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    inc bc                                        ; $7080: $03
    db $fc                                        ; $7081: $fc
    dec a                                         ; $7082: $3d
    ret nz                                        ; $7083: $c0

    ld a, [$5400]                                 ; $7084: $fa $00 $54
    nop                                           ; $7087: $00
    xor b                                         ; $7088: $a8
    nop                                           ; $7089: $00
    ld b, b                                       ; $708a: $40
    nop                                           ; $708b: $00
    nop                                           ; $708c: $00
    nop                                           ; $708d: $00
    nop                                           ; $708e: $00
    nop                                           ; $708f: $00
    rst $38                                       ; $7090: $ff
    nop                                           ; $7091: $00
    ei                                            ; $7092: $fb
    nop                                           ; $7093: $00
    cp a                                          ; $7094: $bf
    nop                                           ; $7095: $00
    or $08                                        ; $7096: $f6 $08
    ld a, a                                       ; $7098: $7f
    nop                                           ; $7099: $00
    rst $38                                       ; $709a: $ff
    nop                                           ; $709b: $00
    cp $01                                        ; $709c: $fe $01
    rst $28                                       ; $709e: $ef
    nop                                           ; $709f: $00
    db $fd                                        ; $70a0: $fd
    ld [bc], a                                    ; $70a1: $02
    rst $10                                       ; $70a2: $d7

jr_076_70a3:
    jr nz, jr_076_70a3                            ; $70a3: $20 $fe

    ld bc, $00ff                                  ; $70a5: $01 $ff $00
    ei                                            ; $70a8: $fb
    nop                                           ; $70a9: $00
    rst $18                                       ; $70aa: $df
    jr nz, @+$01                                  ; $70ab: $20 $ff

    nop                                           ; $70ad: $00
    rst $38                                       ; $70ae: $ff
    nop                                           ; $70af: $00
    rst $38                                       ; $70b0: $ff
    nop                                           ; $70b1: $00
    cp [hl]                                       ; $70b2: $be
    ld bc, $08f6                                  ; $70b3: $01 $f6 $08
    rst $38                                       ; $70b6: $ff
    nop                                           ; $70b7: $00
    rst $28                                       ; $70b8: $ef
    nop                                           ; $70b9: $00
    ld a, a                                       ; $70ba: $7f
    add b                                         ; $70bb: $80
    ei                                            ; $70bc: $fb
    nop                                           ; $70bd: $00
    rst $38                                       ; $70be: $ff
    nop                                           ; $70bf: $00
    ei                                            ; $70c0: $fb
    inc b                                         ; $70c1: $04
    sbc $00                                       ; $70c2: $de $00
    rst $38                                       ; $70c4: $ff
    nop                                           ; $70c5: $00
    rst $28                                       ; $70c6: $ef
    nop                                           ; $70c7: $00
    cp e                                          ; $70c8: $bb
    inc b                                         ; $70c9: $04
    rst $38                                       ; $70ca: $ff
    nop                                           ; $70cb: $00
    cp a                                          ; $70cc: $bf
    nop                                           ; $70cd: $00
    cp $00                                        ; $70ce: $fe $00
    ld l, a                                       ; $70d0: $6f
    db $10                                        ; $70d1: $10
    ei                                            ; $70d2: $fb
    nop                                           ; $70d3: $00
    rst $38                                       ; $70d4: $ff
    nop                                           ; $70d5: $00
    ld a, a                                       ; $70d6: $7f
    nop                                           ; $70d7: $00
    rst $38                                       ; $70d8: $ff
    nop                                           ; $70d9: $00
    xor $10                                       ; $70da: $ee $10
    rst $38                                       ; $70dc: $ff
    nop                                           ; $70dd: $00
    rst $38                                       ; $70de: $ff
    nop                                           ; $70df: $00
    cp a                                          ; $70e0: $bf
    ld b, b                                       ; $70e1: $40
    db $ed                                        ; $70e2: $ed
    ld [bc], a                                    ; $70e3: $02
    rst $38                                       ; $70e4: $ff
    nop                                           ; $70e5: $00
    cp a                                          ; $70e6: $bf
    nop                                           ; $70e7: $00
    sbc $20                                       ; $70e8: $de $20
    rst $38                                       ; $70ea: $ff
    nop                                           ; $70eb: $00
    rst $28                                       ; $70ec: $ef
    nop                                           ; $70ed: $00
    rst $38                                       ; $70ee: $ff
    nop                                           ; $70ef: $00
    add c                                         ; $70f0: $81
    rst $38                                       ; $70f1: $ff
    xor c                                         ; $70f2: $a9
    rst $10                                       ; $70f3: $d7
    or e                                          ; $70f4: $b3
    push bc                                       ; $70f5: $c5
    sub a                                         ; $70f6: $97
    pop bc                                        ; $70f7: $c1
    xor e                                         ; $70f8: $ab
    pop de                                        ; $70f9: $d1
    sub e                                         ; $70fa: $93
    ret                                           ; $70fb: $c9


    xor e                                         ; $70fc: $ab
    pop de                                        ; $70fd: $d1
    rst $10                                       ; $70fe: $d7
    jp hl                                         ; $70ff: $e9


    rst $38                                       ; $7100: $ff
    nop                                           ; $7101: $00
    rst $38                                       ; $7102: $ff
    nop                                           ; $7103: $00
    ld a, [hl]                                    ; $7104: $7e
    add c                                         ; $7105: $81
    ld a, [hl]                                    ; $7106: $7e
    add c                                         ; $7107: $81
    ld a, [hl]                                    ; $7108: $7e
    add c                                         ; $7109: $81
    ld a, [hl]                                    ; $710a: $7e
    add c                                         ; $710b: $81
    ld a, [hl]                                    ; $710c: $7e
    add c                                         ; $710d: $81
    ld a, [hl]                                    ; $710e: $7e
    add c                                         ; $710f: $81
    rst $38                                       ; $7110: $ff
    nop                                           ; $7111: $00
    rst $38                                       ; $7112: $ff
    nop                                           ; $7113: $00
    rst $38                                       ; $7114: $ff
    nop                                           ; $7115: $00
    xor $00                                       ; $7116: $ee $00
    rst $38                                       ; $7118: $ff
    nop                                           ; $7119: $00
    xor d                                         ; $711a: $aa
    nop                                           ; $711b: $00
    ld [hl], a                                    ; $711c: $77
    nop                                           ; $711d: $00
    xor d                                         ; $711e: $aa
    nop                                           ; $711f: $00
    ld d, l                                       ; $7120: $55
    nop                                           ; $7121: $00
    xor d                                         ; $7122: $aa
    nop                                           ; $7123: $00

jr_076_7124:
    ld d, l                                       ; $7124: $55
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    ld d, l                                       ; $7128: $55
    nop                                           ; $7129: $00
    nop                                           ; $712a: $00
    nop                                           ; $712b: $00
    nop                                           ; $712c: $00
    nop                                           ; $712d: $00
    nop                                           ; $712e: $00
    nop                                           ; $712f: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    ld b, c                                       ; $7134: $41
    ld a, $28                                     ; $7135: $3e $28
    rst $10                                       ; $7137: $d7
    ld b, b                                       ; $7138: $40
    cp a                                          ; $7139: $bf
    and b                                         ; $713a: $a0
    ld e, a                                       ; $713b: $5f
    nop                                           ; $713c: $00
    rst $38                                       ; $713d: $ff
    nop                                           ; $713e: $00
    rst $38                                       ; $713f: $ff
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    ld b, b                                       ; $7146: $40
    add b                                         ; $7147: $80
    ld bc, $00fe                                  ; $7148: $01 $fe $00
    rst $38                                       ; $714b: $ff
    nop                                           ; $714c: $00
    rst $38                                       ; $714d: $ff
    nop                                           ; $714e: $00
    rst $38                                       ; $714f: $ff
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    add b                                         ; $7158: $80
    nop                                           ; $7159: $00
    jr z, jr_076_7124                             ; $715a: $28 $c8

    add hl, bc                                    ; $715c: $09
    ld hl, sp+$38                                 ; $715d: $f8 $38
    rst $18                                       ; $715f: $df
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    ld [bc], a                                    ; $7166: $02
    ld bc, $0609                                  ; $7167: $01 $09 $06
    inc hl                                        ; $716a: $23
    inc e                                         ; $716b: $1c
    sbc c                                         ; $716c: $99
    halt                                          ; $716d: $76
    db $10                                        ; $716e: $10
    rst $38                                       ; $716f: $ff
    nop                                           ; $7170: $00
    rst $38                                       ; $7171: $ff
    nop                                           ; $7172: $00
    rst $38                                       ; $7173: $ff
    nop                                           ; $7174: $00
    rst $38                                       ; $7175: $ff
    nop                                           ; $7176: $00
    rst $38                                       ; $7177: $ff
    nop                                           ; $7178: $00
    rst $38                                       ; $7179: $ff
    nop                                           ; $717a: $00
    rst $38                                       ; $717b: $ff
    nop                                           ; $717c: $00
    rst $38                                       ; $717d: $ff
    nop                                           ; $717e: $00
    rst $38                                       ; $717f: $ff
    nop                                           ; $7180: $00
    rst $38                                       ; $7181: $ff
    nop                                           ; $7182: $00
    rst $38                                       ; $7183: $ff
    nop                                           ; $7184: $00
    rst $38                                       ; $7185: $ff
    nop                                           ; $7186: $00
    rst $38                                       ; $7187: $ff
    nop                                           ; $7188: $00
    rst $38                                       ; $7189: $ff
    nop                                           ; $718a: $00
    rst $38                                       ; $718b: $ff
    nop                                           ; $718c: $00
    rst $38                                       ; $718d: $ff
    nop                                           ; $718e: $00
    rst $38                                       ; $718f: $ff
    ld e, h                                       ; $7190: $5c
    cp a                                          ; $7191: $bf
    ld a, $ff                                     ; $7192: $3e $ff
    inc e                                         ; $7194: $1c
    rst $38                                       ; $7195: $ff
    ld e, $ff                                     ; $7196: $1e $ff
    ccf                                           ; $7198: $3f
    rst $38                                       ; $7199: $ff
    inc c                                         ; $719a: $0c
    rst $38                                       ; $719b: $ff
    nop                                           ; $719c: $00
    rst $38                                       ; $719d: $ff
    nop                                           ; $719e: $00
    rst $38                                       ; $719f: $ff
    inc e                                         ; $71a0: $1c
    ei                                            ; $71a1: $fb
    ld a, b                                       ; $71a2: $78
    cp a                                          ; $71a3: $bf
    db $fc                                        ; $71a4: $fc
    ld a, a                                       ; $71a5: $7f
    jr c, @+$01                                   ; $71a6: $38 $ff

    ld a, b                                       ; $71a8: $78
    rst $38                                       ; $71a9: $ff
    db $fc                                        ; $71aa: $fc
    rst $38                                       ; $71ab: $ff
    jr nc, @+$01                                  ; $71ac: $30 $ff

    nop                                           ; $71ae: $00
    rst $38                                       ; $71af: $ff
    nop                                           ; $71b0: $00
    rst $38                                       ; $71b1: $ff
    nop                                           ; $71b2: $00
    rst $38                                       ; $71b3: $ff
    add b                                         ; $71b4: $80
    rst $38                                       ; $71b5: $ff
    add b                                         ; $71b6: $80
    rst $38                                       ; $71b7: $ff
    add b                                         ; $71b8: $80
    rst $38                                       ; $71b9: $ff
    add b                                         ; $71ba: $80
    rst $38                                       ; $71bb: $ff
    ret nz                                        ; $71bc: $c0

    rst $38                                       ; $71bd: $ff
    ret nz                                        ; $71be: $c0

    rst $38                                       ; $71bf: $ff
    nop                                           ; $71c0: $00
    rst $38                                       ; $71c1: $ff
    nop                                           ; $71c2: $00
    rst $38                                       ; $71c3: $ff
    nop                                           ; $71c4: $00
    rst $38                                       ; $71c5: $ff
    nop                                           ; $71c6: $00
    rst $38                                       ; $71c7: $ff
    nop                                           ; $71c8: $00
    rst $38                                       ; $71c9: $ff
    nop                                           ; $71ca: $00
    rst $38                                       ; $71cb: $ff
    nop                                           ; $71cc: $00
    rst $38                                       ; $71cd: $ff
    nop                                           ; $71ce: $00
    rst $38                                       ; $71cf: $ff
    ldh [rIE], a                                  ; $71d0: $e0 $ff
    ldh [rIE], a                                  ; $71d2: $e0 $ff
    ldh a, [rIE]                                  ; $71d4: $f0 $ff
    ld hl, sp-$01                                 ; $71d6: $f8 $ff
    ldh a, [rIE]                                  ; $71d8: $f0 $ff
    ldh [rIE], a                                  ; $71da: $e0 $ff
    ldh a, [rIE]                                  ; $71dc: $f0 $ff
    ldh a, [rIE]                                  ; $71de: $f0 $ff
    ld bc, $01ff                                  ; $71e0: $01 $ff $01
    rst $38                                       ; $71e3: $ff
    inc bc                                        ; $71e4: $03
    rst $38                                       ; $71e5: $ff
    rlca                                          ; $71e6: $07
    rst $38                                       ; $71e7: $ff
    inc bc                                        ; $71e8: $03
    rst $38                                       ; $71e9: $ff
    ld bc, $01ff                                  ; $71ea: $01 $ff $01
    rst $38                                       ; $71ed: $ff
    inc bc                                        ; $71ee: $03
    rst $38                                       ; $71ef: $ff
    ld hl, sp-$01                                 ; $71f0: $f8 $ff
    ld hl, sp-$01                                 ; $71f2: $f8 $ff
    db $fc                                        ; $71f4: $fc
    rst $38                                       ; $71f5: $ff
    cp $ff                                        ; $71f6: $fe $ff
    ret nz                                        ; $71f8: $c0

    rst $38                                       ; $71f9: $ff
    ret nz                                        ; $71fa: $c0

    rst $38                                       ; $71fb: $ff
    nop                                           ; $71fc: $00
    rst $38                                       ; $71fd: $ff
    nop                                           ; $71fe: $00
    rst $38                                       ; $71ff: $ff
    inc bc                                        ; $7200: $03
    rst $38                                       ; $7201: $ff
    inc bc                                        ; $7202: $03
    rst $38                                       ; $7203: $ff
    rlca                                          ; $7204: $07
    rst $38                                       ; $7205: $ff
    rrca                                          ; $7206: $0f
    rst $38                                       ; $7207: $ff
    nop                                           ; $7208: $00
    rst $38                                       ; $7209: $ff
    nop                                           ; $720a: $00
    rst $38                                       ; $720b: $ff
    nop                                           ; $720c: $00
    rst $38                                       ; $720d: $ff
    nop                                           ; $720e: $00
    rst $38                                       ; $720f: $ff
    nop                                           ; $7210: $00
    rst $38                                       ; $7211: $ff
    nop                                           ; $7212: $00
    rst $38                                       ; $7213: $ff
    nop                                           ; $7214: $00
    rst $38                                       ; $7215: $ff
    nop                                           ; $7216: $00
    rst $38                                       ; $7217: $ff
    nop                                           ; $7218: $00
    rst $38                                       ; $7219: $ff
    nop                                           ; $721a: $00
    rst $38                                       ; $721b: $ff
    nop                                           ; $721c: $00
    rst $38                                       ; $721d: $ff
    ld a, a                                       ; $721e: $7f
    add b                                         ; $721f: $80
    nop                                           ; $7220: $00
    rst $38                                       ; $7221: $ff
    nop                                           ; $7222: $00
    rst $38                                       ; $7223: $ff
    nop                                           ; $7224: $00
    rst $38                                       ; $7225: $ff
    nop                                           ; $7226: $00
    rst $38                                       ; $7227: $ff
    nop                                           ; $7228: $00
    rst $38                                       ; $7229: $ff
    nop                                           ; $722a: $00
    rst $38                                       ; $722b: $ff
    nop                                           ; $722c: $00
    rst $38                                       ; $722d: $ff
    ldh [$1f], a                                  ; $722e: $e0 $1f
    nop                                           ; $7230: $00
    rst $38                                       ; $7231: $ff
    nop                                           ; $7232: $00
    rst $38                                       ; $7233: $ff
    nop                                           ; $7234: $00
    rst $38                                       ; $7235: $ff
    nop                                           ; $7236: $00
    rst $38                                       ; $7237: $ff
    nop                                           ; $7238: $00
    rst $38                                       ; $7239: $ff
    nop                                           ; $723a: $00
    rst $38                                       ; $723b: $ff
    nop                                           ; $723c: $00
    rst $38                                       ; $723d: $ff
    nop                                           ; $723e: $00
    rst $38                                       ; $723f: $ff
    nop                                           ; $7240: $00
    rst $38                                       ; $7241: $ff
    nop                                           ; $7242: $00
    rst $38                                       ; $7243: $ff
    nop                                           ; $7244: $00
    rst $38                                       ; $7245: $ff
    nop                                           ; $7246: $00
    rst $38                                       ; $7247: $ff
    nop                                           ; $7248: $00
    rst $38                                       ; $7249: $ff
    nop                                           ; $724a: $00
    rst $38                                       ; $724b: $ff
    nop                                           ; $724c: $00
    rst $38                                       ; $724d: $ff
    nop                                           ; $724e: $00
    rst $38                                       ; $724f: $ff
    ei                                            ; $7250: $fb
    nop                                           ; $7251: $00
    ret nc                                        ; $7252: $d0

    nop                                           ; $7253: $00
    and b                                         ; $7254: $a0
    nop                                           ; $7255: $00
    ld b, b                                       ; $7256: $40
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    db $fc                                        ; $7260: $fc
    inc bc                                        ; $7261: $03
    inc bc                                        ; $7262: $03
    nop                                           ; $7263: $00
    ld bc, $0000                                  ; $7264: $01 $00 $00
    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    nop                                           ; $726b: $00
    nop                                           ; $726c: $00
    nop                                           ; $726d: $00
    nop                                           ; $726e: $00
    nop                                           ; $726f: $00
    nop                                           ; $7270: $00
    rst $38                                       ; $7271: $ff
    rrca                                          ; $7272: $0f
    ldh a, [$fe]                                  ; $7273: $f0 $fe
    nop                                           ; $7275: $00
    ld d, l                                       ; $7276: $55
    nop                                           ; $7277: $00
    ld a, [hl+]                                   ; $7278: $2a
    nop                                           ; $7279: $00
    stop                                          ; $727a: $10 $00
    nop                                           ; $727c: $00
    nop                                           ; $727d: $00
    nop                                           ; $727e: $00
    nop                                           ; $727f: $00
    ld hl, sp+$07                                 ; $7280: $f8 $07
    ld c, a                                       ; $7282: $4f
    nop                                           ; $7283: $00
    add b                                         ; $7284: $80
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    nop                                           ; $728c: $00
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
    db $fd                                        ; $7290: $fd
    ld [bc], a                                    ; $7291: $02
    rst $10                                       ; $7292: $d7

jr_076_7293:
    jr nz, jr_076_7293                            ; $7293: $20 $fe

    ld bc, $00ff                                  ; $7295: $01 $ff $00
    ei                                            ; $7298: $fb
    nop                                           ; $7299: $00
    rst $18                                       ; $729a: $df
    jr nz, @+$01                                  ; $729b: $20 $ff

    nop                                           ; $729d: $00
    rst $38                                       ; $729e: $ff
    nop                                           ; $729f: $00
    rst $38                                       ; $72a0: $ff
    nop                                           ; $72a1: $00
    cp [hl]                                       ; $72a2: $be
    ld bc, $08f6                                  ; $72a3: $01 $f6 $08
    rst $38                                       ; $72a6: $ff
    nop                                           ; $72a7: $00
    rst $28                                       ; $72a8: $ef
    nop                                           ; $72a9: $00
    ld a, a                                       ; $72aa: $7f
    add b                                         ; $72ab: $80
    ei                                            ; $72ac: $fb
    nop                                           ; $72ad: $00
    rst $38                                       ; $72ae: $ff
    nop                                           ; $72af: $00
    ei                                            ; $72b0: $fb
    inc b                                         ; $72b1: $04
    sbc $00                                       ; $72b2: $de $00
    rst $38                                       ; $72b4: $ff
    nop                                           ; $72b5: $00
    rst $28                                       ; $72b6: $ef
    nop                                           ; $72b7: $00
    cp e                                          ; $72b8: $bb
    inc b                                         ; $72b9: $04
    rst $38                                       ; $72ba: $ff
    nop                                           ; $72bb: $00
    cp a                                          ; $72bc: $bf
    nop                                           ; $72bd: $00
    cp $00                                        ; $72be: $fe $00
    rst $38                                       ; $72c0: $ff
    nop                                           ; $72c1: $00
    ei                                            ; $72c2: $fb
    nop                                           ; $72c3: $00
    cp a                                          ; $72c4: $bf
    nop                                           ; $72c5: $00
    or $08                                        ; $72c6: $f6 $08
    ld a, a                                       ; $72c8: $7f
    nop                                           ; $72c9: $00
    rst $38                                       ; $72ca: $ff
    nop                                           ; $72cb: $00
    cp $01                                        ; $72cc: $fe $01
    rst $28                                       ; $72ce: $ef
    nop                                           ; $72cf: $00
    cp a                                          ; $72d0: $bf
    ld b, b                                       ; $72d1: $40
    db $ed                                        ; $72d2: $ed
    ld [bc], a                                    ; $72d3: $02
    rst $38                                       ; $72d4: $ff
    nop                                           ; $72d5: $00
    cp a                                          ; $72d6: $bf
    nop                                           ; $72d7: $00
    sbc $20                                       ; $72d8: $de $20
    rst $38                                       ; $72da: $ff
    nop                                           ; $72db: $00
    rst $28                                       ; $72dc: $ef
    nop                                           ; $72dd: $00
    rst $38                                       ; $72de: $ff
    nop                                           ; $72df: $00
    ld l, a                                       ; $72e0: $6f
    db $10                                        ; $72e1: $10
    ei                                            ; $72e2: $fb
    nop                                           ; $72e3: $00
    rst $38                                       ; $72e4: $ff
    nop                                           ; $72e5: $00
    ld a, a                                       ; $72e6: $7f
    nop                                           ; $72e7: $00
    rst $38                                       ; $72e8: $ff
    nop                                           ; $72e9: $00
    xor $10                                       ; $72ea: $ee $10
    rst $38                                       ; $72ec: $ff
    nop                                           ; $72ed: $00
    rst $38                                       ; $72ee: $ff
    nop                                           ; $72ef: $00
    rst $38                                       ; $72f0: $ff
    nop                                           ; $72f1: $00
    rst $38                                       ; $72f2: $ff
    nop                                           ; $72f3: $00
    ld a, [hl]                                    ; $72f4: $7e
    add c                                         ; $72f5: $81
    ld a, [hl]                                    ; $72f6: $7e
    add c                                         ; $72f7: $81
    ld a, [hl]                                    ; $72f8: $7e
    add c                                         ; $72f9: $81
    ld a, [hl]                                    ; $72fa: $7e
    add c                                         ; $72fb: $81
    ld a, [hl]                                    ; $72fc: $7e
    add c                                         ; $72fd: $81
    ld a, [hl]                                    ; $72fe: $7e
    add c                                         ; $72ff: $81
    add c                                         ; $7300: $81
    rst $38                                       ; $7301: $ff
    xor c                                         ; $7302: $a9
    rst $10                                       ; $7303: $d7
    or e                                          ; $7304: $b3
    push bc                                       ; $7305: $c5
    sub a                                         ; $7306: $97
    pop bc                                        ; $7307: $c1
    xor e                                         ; $7308: $ab
    pop de                                        ; $7309: $d1
    sub e                                         ; $730a: $93
    ret                                           ; $730b: $c9


    xor e                                         ; $730c: $ab
    pop de                                        ; $730d: $d1
    rst $10                                       ; $730e: $d7
    jp hl                                         ; $730f: $e9


    rst $38                                       ; $7310: $ff
    nop                                           ; $7311: $00
    rst $38                                       ; $7312: $ff
    nop                                           ; $7313: $00
    rst $38                                       ; $7314: $ff
    nop                                           ; $7315: $00
    db $dd                                        ; $7316: $dd
    nop                                           ; $7317: $00
    rst $38                                       ; $7318: $ff
    nop                                           ; $7319: $00
    ld d, l                                       ; $731a: $55
    nop                                           ; $731b: $00
    xor $00                                       ; $731c: $ee $00
    ld d, l                                       ; $731e: $55
    nop                                           ; $731f: $00
    xor d                                         ; $7320: $aa
    nop                                           ; $7321: $00
    ld d, l                                       ; $7322: $55
    nop                                           ; $7323: $00
    xor d                                         ; $7324: $aa
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    xor d                                         ; $7328: $aa
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    nop                                           ; $732b: $00
    nop                                           ; $732c: $00
    nop                                           ; $732d: $00
    nop                                           ; $732e: $00
    nop                                           ; $732f: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    add d                                         ; $7334: $82
    ld a, h                                       ; $7335: $7c
    ld d, b                                       ; $7336: $50
    xor a                                         ; $7337: $af
    add b                                         ; $7338: $80
    ld a, a                                       ; $7339: $7f
    ld b, b                                       ; $733a: $40
    cp a                                          ; $733b: $bf
    nop                                           ; $733c: $00
    rst $38                                       ; $733d: $ff
    nop                                           ; $733e: $00
    rst $38                                       ; $733f: $ff
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    nop                                           ; $7345: $00
    add b                                         ; $7346: $80
    nop                                           ; $7347: $00
    inc bc                                        ; $7348: $03
    db $fc                                        ; $7349: $fc
    nop                                           ; $734a: $00
    rst $38                                       ; $734b: $ff
    nop                                           ; $734c: $00
    rst $38                                       ; $734d: $ff
    nop                                           ; $734e: $00
    rst $38                                       ; $734f: $ff
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    ld h, b                                       ; $735a: $60
    and b                                         ; $735b: $a0
    inc sp                                        ; $735c: $33
    ldh [$60], a                                  ; $735d: $e0 $60
    rst $38                                       ; $735f: $ff
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    inc b                                         ; $7366: $04
    inc bc                                        ; $7367: $03
    ld [de], a                                    ; $7368: $12
    dec c                                         ; $7369: $0d
    ld b, a                                       ; $736a: $47
    jr c, jr_076_73bf                             ; $736b: $38 $52

    db $ed                                        ; $736d: $ed
    ld h, b                                       ; $736e: $60
    rst $18                                       ; $736f: $df
    nop                                           ; $7370: $00
    rst $38                                       ; $7371: $ff
    nop                                           ; $7372: $00
    rst $38                                       ; $7373: $ff
    nop                                           ; $7374: $00
    rst $38                                       ; $7375: $ff
    nop                                           ; $7376: $00
    rst $38                                       ; $7377: $ff
    nop                                           ; $7378: $00
    rst $38                                       ; $7379: $ff
    nop                                           ; $737a: $00
    rst $38                                       ; $737b: $ff
    nop                                           ; $737c: $00
    rst $38                                       ; $737d: $ff
    nop                                           ; $737e: $00
    rst $38                                       ; $737f: $ff
    nop                                           ; $7380: $00
    rst $38                                       ; $7381: $ff
    nop                                           ; $7382: $00
    rst $38                                       ; $7383: $ff
    nop                                           ; $7384: $00
    rst $38                                       ; $7385: $ff
    nop                                           ; $7386: $00
    rst $38                                       ; $7387: $ff
    nop                                           ; $7388: $00
    rst $38                                       ; $7389: $ff
    nop                                           ; $738a: $00
    rst $38                                       ; $738b: $ff
    nop                                           ; $738c: $00
    rst $38                                       ; $738d: $ff
    nop                                           ; $738e: $00
    rst $38                                       ; $738f: $ff
    ldh a, [$7f]                                  ; $7390: $f0 $7f
    ld hl, sp-$01                                 ; $7392: $f8 $ff
    ld [hl], c                                    ; $7394: $71
    rst $38                                       ; $7395: $ff
    ld a, b                                       ; $7396: $78
    rst $38                                       ; $7397: $ff
    db $fd                                        ; $7398: $fd
    rst $38                                       ; $7399: $ff
    inc sp                                        ; $739a: $33
    rst $38                                       ; $739b: $ff
    nop                                           ; $739c: $00
    rst $38                                       ; $739d: $ff
    nop                                           ; $739e: $00
    rst $38                                       ; $739f: $ff
    ld l, b                                       ; $73a0: $68
    rst $30                                       ; $73a1: $f7
    ldh a, [$ef]                                  ; $73a2: $f0 $ef
    ldh a, [rIE]                                  ; $73a4: $f0 $ff
    ldh [rIE], a                                  ; $73a6: $e0 $ff
    ldh [rIE], a                                  ; $73a8: $e0 $ff
    ldh a, [rIE]                                  ; $73aa: $f0 $ff
    ret nz                                        ; $73ac: $c0

    rst $38                                       ; $73ad: $ff
    nop                                           ; $73ae: $00
    rst $38                                       ; $73af: $ff
    nop                                           ; $73b0: $00
    rst $38                                       ; $73b1: $ff
    nop                                           ; $73b2: $00
    rst $38                                       ; $73b3: $ff
    nop                                           ; $73b4: $00
    rst $38                                       ; $73b5: $ff
    nop                                           ; $73b6: $00
    rst $38                                       ; $73b7: $ff
    nop                                           ; $73b8: $00
    rst $38                                       ; $73b9: $ff
    nop                                           ; $73ba: $00
    rst $38                                       ; $73bb: $ff
    nop                                           ; $73bc: $00
    rst $38                                       ; $73bd: $ff
    nop                                           ; $73be: $00

jr_076_73bf:
    rst $38                                       ; $73bf: $ff
    nop                                           ; $73c0: $00
    rst $38                                       ; $73c1: $ff
    nop                                           ; $73c2: $00
    rst $38                                       ; $73c3: $ff
    ld [$08ff], sp                                ; $73c4: $08 $ff $08
    rst $38                                       ; $73c7: $ff
    ld [$08ff], sp                                ; $73c8: $08 $ff $08
    rst $38                                       ; $73cb: $ff
    inc c                                         ; $73cc: $0c
    rst $38                                       ; $73cd: $ff
    inc c                                         ; $73ce: $0c
    rst $38                                       ; $73cf: $ff
    nop                                           ; $73d0: $00
    rst $38                                       ; $73d1: $ff
    nop                                           ; $73d2: $00
    rst $38                                       ; $73d3: $ff
    nop                                           ; $73d4: $00
    rst $38                                       ; $73d5: $ff
    add b                                         ; $73d6: $80
    rst $38                                       ; $73d7: $ff
    nop                                           ; $73d8: $00
    rst $38                                       ; $73d9: $ff
    nop                                           ; $73da: $00
    rst $38                                       ; $73db: $ff
    nop                                           ; $73dc: $00
    rst $38                                       ; $73dd: $ff
    nop                                           ; $73de: $00
    rst $38                                       ; $73df: $ff
    ld e, $ff                                     ; $73e0: $1e $ff
    ld e, $ff                                     ; $73e2: $1e $ff
    ccf                                           ; $73e4: $3f
    rst $38                                       ; $73e5: $ff
    ld a, a                                       ; $73e6: $7f
    rst $38                                       ; $73e7: $ff
    ccf                                           ; $73e8: $3f
    rst $38                                       ; $73e9: $ff
    ld e, $ff                                     ; $73ea: $1e $ff
    rra                                           ; $73ec: $1f
    rst $38                                       ; $73ed: $ff
    ccf                                           ; $73ee: $3f
    rst $38                                       ; $73ef: $ff
    add b                                         ; $73f0: $80
    rst $38                                       ; $73f1: $ff
    add b                                         ; $73f2: $80
    rst $38                                       ; $73f3: $ff
    ret nz                                        ; $73f4: $c0

    rst $38                                       ; $73f5: $ff
    ldh [rIE], a                                  ; $73f6: $e0 $ff
    nop                                           ; $73f8: $00
    rst $38                                       ; $73f9: $ff
    nop                                           ; $73fa: $00
    rst $38                                       ; $73fb: $ff
    nop                                           ; $73fc: $00
    rst $38                                       ; $73fd: $ff
    nop                                           ; $73fe: $00
    rst $38                                       ; $73ff: $ff
    ccf                                           ; $7400: $3f
    rst $38                                       ; $7401: $ff
    ccf                                           ; $7402: $3f
    rst $38                                       ; $7403: $ff
    ld a, a                                       ; $7404: $7f
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    inc c                                         ; $7408: $0c
    rst $38                                       ; $7409: $ff
    inc c                                         ; $740a: $0c
    rst $38                                       ; $740b: $ff
    nop                                           ; $740c: $00
    rst $38                                       ; $740d: $ff
    nop                                           ; $740e: $00
    rst $38                                       ; $740f: $ff
    nop                                           ; $7410: $00
    rst $38                                       ; $7411: $ff
    nop                                           ; $7412: $00
    rst $38                                       ; $7413: $ff
    nop                                           ; $7414: $00
    rst $38                                       ; $7415: $ff
    nop                                           ; $7416: $00
    rst $38                                       ; $7417: $ff
    nop                                           ; $7418: $00
    rst $38                                       ; $7419: $ff
    nop                                           ; $741a: $00
    rst $38                                       ; $741b: $ff
    nop                                           ; $741c: $00
    rst $38                                       ; $741d: $ff
    ld hl, sp+$07                                 ; $741e: $f8 $07
    nop                                           ; $7420: $00
    rst $38                                       ; $7421: $ff
    nop                                           ; $7422: $00
    rst $38                                       ; $7423: $ff
    nop                                           ; $7424: $00
    rst $38                                       ; $7425: $ff
    nop                                           ; $7426: $00
    rst $38                                       ; $7427: $ff
    nop                                           ; $7428: $00
    rst $38                                       ; $7429: $ff
    nop                                           ; $742a: $00
    rst $38                                       ; $742b: $ff
    nop                                           ; $742c: $00
    rst $38                                       ; $742d: $ff
    nop                                           ; $742e: $00
    rst $38                                       ; $742f: $ff
    nop                                           ; $7430: $00
    rst $38                                       ; $7431: $ff
    nop                                           ; $7432: $00
    rst $38                                       ; $7433: $ff
    nop                                           ; $7434: $00
    rst $38                                       ; $7435: $ff
    nop                                           ; $7436: $00
    rst $38                                       ; $7437: $ff
    nop                                           ; $7438: $00
    rst $38                                       ; $7439: $ff
    nop                                           ; $743a: $00
    rst $38                                       ; $743b: $ff
    nop                                           ; $743c: $00
    rst $38                                       ; $743d: $ff
    nop                                           ; $743e: $00
    rst $38                                       ; $743f: $ff
    nop                                           ; $7440: $00
    rst $38                                       ; $7441: $ff
    nop                                           ; $7442: $00
    rst $38                                       ; $7443: $ff
    nop                                           ; $7444: $00
    rst $38                                       ; $7445: $ff
    nop                                           ; $7446: $00
    rst $38                                       ; $7447: $ff
    nop                                           ; $7448: $00
    rst $38                                       ; $7449: $ff
    nop                                           ; $744a: $00
    rst $38                                       ; $744b: $ff
    nop                                           ; $744c: $00
    rst $38                                       ; $744d: $ff
    nop                                           ; $744e: $00
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    nop                                           ; $7457: $00
    nop                                           ; $7458: $00
    nop                                           ; $7459: $00
    nop                                           ; $745a: $00
    nop                                           ; $745b: $00
    nop                                           ; $745c: $00
    nop                                           ; $745d: $00
    nop                                           ; $745e: $00
    nop                                           ; $745f: $00
    nop                                           ; $7460: $00
    rst $38                                       ; $7461: $ff
    jp Jump_076_7f3c                              ; $7462: $c3 $3c $7f


    nop                                           ; $7465: $00
    dec d                                         ; $7466: $15
    nop                                           ; $7467: $00
    ld a, [bc]                                    ; $7468: $0a
    nop                                           ; $7469: $00
    inc b                                         ; $746a: $04
    nop                                           ; $746b: $00
    nop                                           ; $746c: $00
    nop                                           ; $746d: $00
    nop                                           ; $746e: $00
    nop                                           ; $746f: $00
    ld a, $c1                                     ; $7470: $3e $c1
    db $d3                                        ; $7472: $d3
    nop                                           ; $7473: $00
    and b                                         ; $7474: $a0
    nop                                           ; $7475: $00
    ld b, b                                       ; $7476: $40
    nop                                           ; $7477: $00
    add b                                         ; $7478: $80
    nop                                           ; $7479: $00
    nop                                           ; $747a: $00
    nop                                           ; $747b: $00
    nop                                           ; $747c: $00
    nop                                           ; $747d: $00
    nop                                           ; $747e: $00
    nop                                           ; $747f: $00
    nop                                           ; $7480: $00
    rst $38                                       ; $7481: $ff
    ldh [$1f], a                                  ; $7482: $e0 $1f
    ccf                                           ; $7484: $3f
    nop                                           ; $7485: $00
    rlca                                          ; $7486: $07
    nop                                           ; $7487: $00
    ld [bc], a                                    ; $7488: $02
    nop                                           ; $7489: $00
    ld bc, $0000                                  ; $748a: $01 $00 $00
    nop                                           ; $748d: $00
    nop                                           ; $748e: $00
    nop                                           ; $748f: $00
    rst $38                                       ; $7490: $ff
    nop                                           ; $7491: $00
    cp [hl]                                       ; $7492: $be
    ld bc, $08f6                                  ; $7493: $01 $f6 $08
    rst $38                                       ; $7496: $ff
    nop                                           ; $7497: $00
    rst $28                                       ; $7498: $ef
    nop                                           ; $7499: $00
    ld a, a                                       ; $749a: $7f
    add b                                         ; $749b: $80
    ei                                            ; $749c: $fb
    nop                                           ; $749d: $00
    rst $38                                       ; $749e: $ff
    nop                                           ; $749f: $00
    ei                                            ; $74a0: $fb
    inc b                                         ; $74a1: $04
    sbc $00                                       ; $74a2: $de $00
    rst $38                                       ; $74a4: $ff
    nop                                           ; $74a5: $00
    rst $28                                       ; $74a6: $ef
    nop                                           ; $74a7: $00
    cp e                                          ; $74a8: $bb
    inc b                                         ; $74a9: $04
    rst $38                                       ; $74aa: $ff
    nop                                           ; $74ab: $00
    cp a                                          ; $74ac: $bf
    nop                                           ; $74ad: $00
    cp $00                                        ; $74ae: $fe $00
    rst $38                                       ; $74b0: $ff
    nop                                           ; $74b1: $00
    ei                                            ; $74b2: $fb
    nop                                           ; $74b3: $00
    cp a                                          ; $74b4: $bf
    nop                                           ; $74b5: $00
    or $08                                        ; $74b6: $f6 $08
    ld a, a                                       ; $74b8: $7f
    nop                                           ; $74b9: $00
    rst $38                                       ; $74ba: $ff
    nop                                           ; $74bb: $00
    cp $01                                        ; $74bc: $fe $01
    rst $28                                       ; $74be: $ef
    nop                                           ; $74bf: $00
    db $fd                                        ; $74c0: $fd
    ld [bc], a                                    ; $74c1: $02
    rst $10                                       ; $74c2: $d7

jr_076_74c3:
    jr nz, jr_076_74c3                            ; $74c3: $20 $fe

    ld bc, $00ff                                  ; $74c5: $01 $ff $00
    ei                                            ; $74c8: $fb
    nop                                           ; $74c9: $00
    rst $18                                       ; $74ca: $df
    jr nz, @+$01                                  ; $74cb: $20 $ff

    nop                                           ; $74cd: $00
    rst $38                                       ; $74ce: $ff
    nop                                           ; $74cf: $00
    ld l, a                                       ; $74d0: $6f
    db $10                                        ; $74d1: $10
    ei                                            ; $74d2: $fb
    nop                                           ; $74d3: $00
    rst $38                                       ; $74d4: $ff
    nop                                           ; $74d5: $00
    ld a, a                                       ; $74d6: $7f
    nop                                           ; $74d7: $00
    rst $38                                       ; $74d8: $ff
    nop                                           ; $74d9: $00
    xor $10                                       ; $74da: $ee $10
    rst $38                                       ; $74dc: $ff
    nop                                           ; $74dd: $00
    rst $38                                       ; $74de: $ff
    nop                                           ; $74df: $00
    cp a                                          ; $74e0: $bf
    ld b, b                                       ; $74e1: $40
    db $ed                                        ; $74e2: $ed
    ld [bc], a                                    ; $74e3: $02
    rst $38                                       ; $74e4: $ff
    nop                                           ; $74e5: $00
    cp a                                          ; $74e6: $bf
    nop                                           ; $74e7: $00
    sbc $20                                       ; $74e8: $de $20
    rst $38                                       ; $74ea: $ff
    nop                                           ; $74eb: $00
    rst $28                                       ; $74ec: $ef
    nop                                           ; $74ed: $00
    rst $38                                       ; $74ee: $ff
    nop                                           ; $74ef: $00
    add c                                         ; $74f0: $81
    rst $38                                       ; $74f1: $ff
    xor c                                         ; $74f2: $a9
    rst $10                                       ; $74f3: $d7
    or e                                          ; $74f4: $b3
    push bc                                       ; $74f5: $c5
    sub a                                         ; $74f6: $97
    pop bc                                        ; $74f7: $c1
    xor e                                         ; $74f8: $ab
    pop de                                        ; $74f9: $d1
    sub e                                         ; $74fa: $93
    ret                                           ; $74fb: $c9


    xor e                                         ; $74fc: $ab
    pop de                                        ; $74fd: $d1
    rst $10                                       ; $74fe: $d7
    jp hl                                         ; $74ff: $e9


    rst $38                                       ; $7500: $ff
    nop                                           ; $7501: $00
    rst $38                                       ; $7502: $ff
    nop                                           ; $7503: $00
    ld a, [hl]                                    ; $7504: $7e
    add c                                         ; $7505: $81
    ld a, [hl]                                    ; $7506: $7e
    add c                                         ; $7507: $81
    ld a, [hl]                                    ; $7508: $7e
    add c                                         ; $7509: $81
    ld a, [hl]                                    ; $750a: $7e
    add c                                         ; $750b: $81
    ld a, [hl]                                    ; $750c: $7e
    add c                                         ; $750d: $81
    ld a, [hl]                                    ; $750e: $7e
    add c                                         ; $750f: $81
    rst $38                                       ; $7510: $ff
    nop                                           ; $7511: $00
    rst $38                                       ; $7512: $ff
    nop                                           ; $7513: $00
    rst $38                                       ; $7514: $ff
    nop                                           ; $7515: $00
    db $dd                                        ; $7516: $dd
    nop                                           ; $7517: $00
    rst $38                                       ; $7518: $ff
    nop                                           ; $7519: $00
    ld d, l                                       ; $751a: $55
    nop                                           ; $751b: $00
    xor $00                                       ; $751c: $ee $00
    ld d, l                                       ; $751e: $55
    nop                                           ; $751f: $00
    xor d                                         ; $7520: $aa
    nop                                           ; $7521: $00
    ld d, l                                       ; $7522: $55
    nop                                           ; $7523: $00
    xor d                                         ; $7524: $aa
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    xor d                                         ; $7528: $aa
    nop                                           ; $7529: $00
    nop                                           ; $752a: $00
    nop                                           ; $752b: $00
    nop                                           ; $752c: $00
    nop                                           ; $752d: $00
    nop                                           ; $752e: $00
    nop                                           ; $752f: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    inc b                                         ; $7534: $04
    ld hl, sp-$5f                                 ; $7535: $f8 $a1
    ld e, [hl]                                    ; $7537: $5e
    nop                                           ; $7538: $00
    rst $38                                       ; $7539: $ff
    add b                                         ; $753a: $80
    ld a, a                                       ; $753b: $7f
    nop                                           ; $753c: $00
    rst $38                                       ; $753d: $ff
    nop                                           ; $753e: $00
    rst $38                                       ; $753f: $ff
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    ld b, $f8                                     ; $7548: $06 $f8
    nop                                           ; $754a: $00
    rst $38                                       ; $754b: $ff
    nop                                           ; $754c: $00
    rst $38                                       ; $754d: $ff
    ld bc, $00ff                                  ; $754e: $01 $ff $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    add b                                         ; $755a: $80
    add b                                         ; $755b: $80
    and a                                         ; $755c: $a7
    pop bc                                        ; $755d: $c1
    add c                                         ; $755e: $81
    rst $38                                       ; $755f: $ff
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    ld bc, $0800                                  ; $7564: $01 $00 $08
    rlca                                          ; $7567: $07
    dec h                                         ; $7568: $25
    ld a, [de]                                    ; $7569: $1a
    adc [hl]                                      ; $756a: $8e
    ld [hl], c                                    ; $756b: $71
    inc h                                         ; $756c: $24
    db $db                                        ; $756d: $db
    ld b, b                                       ; $756e: $40
    cp a                                          ; $756f: $bf
    nop                                           ; $7570: $00
    rst $38                                       ; $7571: $ff
    nop                                           ; $7572: $00
    rst $38                                       ; $7573: $ff
    nop                                           ; $7574: $00
    rst $38                                       ; $7575: $ff
    nop                                           ; $7576: $00
    rst $38                                       ; $7577: $ff
    nop                                           ; $7578: $00
    rst $38                                       ; $7579: $ff
    nop                                           ; $757a: $00
    rst $38                                       ; $757b: $ff
    nop                                           ; $757c: $00
    rst $38                                       ; $757d: $ff
    nop                                           ; $757e: $00
    rst $38                                       ; $757f: $ff
    ld bc, $03ff                                  ; $7580: $01 $ff $03
    rst $38                                       ; $7583: $ff
    ld bc, $01ff                                  ; $7584: $01 $ff $01
    rst $38                                       ; $7587: $ff
    inc bc                                        ; $7588: $03
    rst $38                                       ; $7589: $ff
    nop                                           ; $758a: $00
    rst $38                                       ; $758b: $ff
    nop                                           ; $758c: $00
    rst $38                                       ; $758d: $ff
    nop                                           ; $758e: $00
    rst $38                                       ; $758f: $ff
    pop bc                                        ; $7590: $c1
    rst $38                                       ; $7591: $ff
    db $e3                                        ; $7592: $e3
    rst $38                                       ; $7593: $ff
    rst $00                                       ; $7594: $c7
    rst $38                                       ; $7595: $ff
    db $e3                                        ; $7596: $e3
    rst $38                                       ; $7597: $ff
    rst $30                                       ; $7598: $f7
    rst $38                                       ; $7599: $ff
    rst $08                                       ; $759a: $cf
    rst $38                                       ; $759b: $ff
    inc bc                                        ; $759c: $03
    rst $38                                       ; $759d: $ff
    nop                                           ; $759e: $00
    rst $38                                       ; $759f: $ff
    sub b                                         ; $75a0: $90
    rst $28                                       ; $75a1: $ef
    and b                                         ; $75a2: $a0
    rst $18                                       ; $75a3: $df
    ret nz                                        ; $75a4: $c0

    rst $38                                       ; $75a5: $ff
    add b                                         ; $75a6: $80
    rst $38                                       ; $75a7: $ff
    add b                                         ; $75a8: $80
    rst $38                                       ; $75a9: $ff
    ret nz                                        ; $75aa: $c0

    rst $38                                       ; $75ab: $ff
    nop                                           ; $75ac: $00
    rst $38                                       ; $75ad: $ff
    nop                                           ; $75ae: $00
    rst $38                                       ; $75af: $ff
    nop                                           ; $75b0: $00
    rst $38                                       ; $75b1: $ff
    nop                                           ; $75b2: $00
    rst $38                                       ; $75b3: $ff
    nop                                           ; $75b4: $00
    rst $38                                       ; $75b5: $ff
    nop                                           ; $75b6: $00
    rst $38                                       ; $75b7: $ff
    nop                                           ; $75b8: $00
    rst $38                                       ; $75b9: $ff
    nop                                           ; $75ba: $00
    rst $38                                       ; $75bb: $ff
    nop                                           ; $75bc: $00
    rst $38                                       ; $75bd: $ff
    nop                                           ; $75be: $00
    rst $38                                       ; $75bf: $ff
    nop                                           ; $75c0: $00
    rst $38                                       ; $75c1: $ff
    nop                                           ; $75c2: $00
    rst $38                                       ; $75c3: $ff
    add b                                         ; $75c4: $80
    rst $38                                       ; $75c5: $ff
    add b                                         ; $75c6: $80
    rst $38                                       ; $75c7: $ff
    add b                                         ; $75c8: $80
    rst $38                                       ; $75c9: $ff
    add b                                         ; $75ca: $80
    rst $38                                       ; $75cb: $ff
    ret nz                                        ; $75cc: $c0

    rst $38                                       ; $75cd: $ff
    ret nz                                        ; $75ce: $c0

    rst $38                                       ; $75cf: $ff
    ld bc, $01ff                                  ; $75d0: $01 $ff $01
    rst $38                                       ; $75d3: $ff
    inc bc                                        ; $75d4: $03
    rst $38                                       ; $75d5: $ff
    rlca                                          ; $75d6: $07
    rst $38                                       ; $75d7: $ff
    inc bc                                        ; $75d8: $03
    rst $38                                       ; $75d9: $ff
    ld bc, $01ff                                  ; $75da: $01 $ff $01
    rst $38                                       ; $75dd: $ff
    inc bc                                        ; $75de: $03
    rst $38                                       ; $75df: $ff
    ldh [rIE], a                                  ; $75e0: $e0 $ff
    ldh [rIE], a                                  ; $75e2: $e0 $ff
    ldh a, [rIE]                                  ; $75e4: $f0 $ff
    ld hl, sp-$01                                 ; $75e6: $f8 $ff
    ldh a, [rIE]                                  ; $75e8: $f0 $ff
    ldh [rIE], a                                  ; $75ea: $e0 $ff
    ldh a, [rIE]                                  ; $75ec: $f0 $ff
    ldh a, [rIE]                                  ; $75ee: $f0 $ff
    inc bc                                        ; $75f0: $03
    rst $38                                       ; $75f1: $ff
    inc bc                                        ; $75f2: $03
    rst $38                                       ; $75f3: $ff
    rlca                                          ; $75f4: $07
    rst $38                                       ; $75f5: $ff
    rrca                                          ; $75f6: $0f
    rst $38                                       ; $75f7: $ff
    nop                                           ; $75f8: $00
    rst $38                                       ; $75f9: $ff
    nop                                           ; $75fa: $00
    rst $38                                       ; $75fb: $ff
    nop                                           ; $75fc: $00
    rst $38                                       ; $75fd: $ff
    nop                                           ; $75fe: $00
    rst $38                                       ; $75ff: $ff
    ld hl, sp-$01                                 ; $7600: $f8 $ff
    ld hl, sp-$01                                 ; $7602: $f8 $ff
    db $fc                                        ; $7604: $fc
    rst $38                                       ; $7605: $ff
    cp $ff                                        ; $7606: $fe $ff
    ret nz                                        ; $7608: $c0

    rst $38                                       ; $7609: $ff
    ret nz                                        ; $760a: $c0

    rst $38                                       ; $760b: $ff
    nop                                           ; $760c: $00
    rst $38                                       ; $760d: $ff
    nop                                           ; $760e: $00
    rst $38                                       ; $760f: $ff
    nop                                           ; $7610: $00
    rst $38                                       ; $7611: $ff
    nop                                           ; $7612: $00
    rst $38                                       ; $7613: $ff
    nop                                           ; $7614: $00
    rst $38                                       ; $7615: $ff
    nop                                           ; $7616: $00
    rst $38                                       ; $7617: $ff
    nop                                           ; $7618: $00
    rst $38                                       ; $7619: $ff
    nop                                           ; $761a: $00
    rst $38                                       ; $761b: $ff
    nop                                           ; $761c: $00
    rst $38                                       ; $761d: $ff
    nop                                           ; $761e: $00
    rst $38                                       ; $761f: $ff
    nop                                           ; $7620: $00
    rst $38                                       ; $7621: $ff
    nop                                           ; $7622: $00
    rst $38                                       ; $7623: $ff
    nop                                           ; $7624: $00
    rst $38                                       ; $7625: $ff
    nop                                           ; $7626: $00
    rst $38                                       ; $7627: $ff
    nop                                           ; $7628: $00
    rst $38                                       ; $7629: $ff
    nop                                           ; $762a: $00
    rst $38                                       ; $762b: $ff
    nop                                           ; $762c: $00
    rst $38                                       ; $762d: $ff
    nop                                           ; $762e: $00
    rst $38                                       ; $762f: $ff
    nop                                           ; $7630: $00
    rst $38                                       ; $7631: $ff
    nop                                           ; $7632: $00
    rst $38                                       ; $7633: $ff
    nop                                           ; $7634: $00
    rst $38                                       ; $7635: $ff
    nop                                           ; $7636: $00
    rst $38                                       ; $7637: $ff
    nop                                           ; $7638: $00
    rst $38                                       ; $7639: $ff
    nop                                           ; $763a: $00
    rst $38                                       ; $763b: $ff
    nop                                           ; $763c: $00
    rst $38                                       ; $763d: $ff
    nop                                           ; $763e: $00
    rst $38                                       ; $763f: $ff
    nop                                           ; $7640: $00
    rst $38                                       ; $7641: $ff
    nop                                           ; $7642: $00
    rst $38                                       ; $7643: $ff
    nop                                           ; $7644: $00
    rst $38                                       ; $7645: $ff
    nop                                           ; $7646: $00
    rst $38                                       ; $7647: $ff
    nop                                           ; $7648: $00
    rst $38                                       ; $7649: $ff
    nop                                           ; $764a: $00
    rst $38                                       ; $764b: $ff
    nop                                           ; $764c: $00
    rst $38                                       ; $764d: $ff
    nop                                           ; $764e: $00
    rst $38                                       ; $764f: $ff
    ret nz                                        ; $7650: $c0

    ccf                                           ; $7651: $3f
    jr nc, jr_076_7663                            ; $7652: $30 $0f

    rra                                           ; $7654: $1f
    nop                                           ; $7655: $00
    dec b                                         ; $7656: $05
    nop                                           ; $7657: $00
    ld [bc], a                                    ; $7658: $02
    nop                                           ; $7659: $00
    ld bc, $0000                                  ; $765a: $01 $00 $00
    nop                                           ; $765d: $00
    nop                                           ; $765e: $00
    nop                                           ; $765f: $00
    rrca                                          ; $7660: $0f
    ldh a, [$f4]                                  ; $7661: $f0 $f4

jr_076_7663:
    nop                                           ; $7663: $00
    add sp, $00                                   ; $7664: $e8 $00
    ld d, b                                       ; $7666: $50
    nop                                           ; $7667: $00
    and b                                         ; $7668: $a0
    nop                                           ; $7669: $00
    nop                                           ; $766a: $00
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    nop                                           ; $766d: $00
    nop                                           ; $766e: $00
    nop                                           ; $766f: $00
    add b                                         ; $7670: $80
    ld a, a                                       ; $7671: $7f
    ld hl, sp+$07                                 ; $7672: $f8 $07
    rrca                                          ; $7674: $0f
    nop                                           ; $7675: $00
    ld bc, $0000                                  ; $7676: $01 $00 $00
    nop                                           ; $7679: $00
    nop                                           ; $767a: $00
    nop                                           ; $767b: $00
    nop                                           ; $767c: $00
    nop                                           ; $767d: $00
    nop                                           ; $767e: $00
    nop                                           ; $767f: $00
    nop                                           ; $7680: $00
    rst $38                                       ; $7681: $ff
    rlca                                          ; $7682: $07
    ld hl, sp-$21                                 ; $7683: $f8 $df
    jr nz, @-$01                                  ; $7685: $20 $fd

    nop                                           ; $7687: $00
    xor d                                         ; $7688: $aa
    nop                                           ; $7689: $00
    ld d, l                                       ; $768a: $55
    nop                                           ; $768b: $00
    nop                                           ; $768c: $00
    nop                                           ; $768d: $00
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    ei                                            ; $7690: $fb
    inc b                                         ; $7691: $04
    sbc $00                                       ; $7692: $de $00
    rst $38                                       ; $7694: $ff
    nop                                           ; $7695: $00
    rst $28                                       ; $7696: $ef
    nop                                           ; $7697: $00
    cp e                                          ; $7698: $bb
    inc b                                         ; $7699: $04
    rst $38                                       ; $769a: $ff
    nop                                           ; $769b: $00
    cp a                                          ; $769c: $bf
    nop                                           ; $769d: $00
    cp $00                                        ; $769e: $fe $00
    rst $38                                       ; $76a0: $ff
    nop                                           ; $76a1: $00
    ei                                            ; $76a2: $fb
    nop                                           ; $76a3: $00
    cp a                                          ; $76a4: $bf
    nop                                           ; $76a5: $00
    or $08                                        ; $76a6: $f6 $08
    ld a, a                                       ; $76a8: $7f
    nop                                           ; $76a9: $00
    rst $38                                       ; $76aa: $ff
    nop                                           ; $76ab: $00
    cp $01                                        ; $76ac: $fe $01
    rst $28                                       ; $76ae: $ef
    nop                                           ; $76af: $00
    db $fd                                        ; $76b0: $fd
    ld [bc], a                                    ; $76b1: $02
    rst $10                                       ; $76b2: $d7

jr_076_76b3:
    jr nz, jr_076_76b3                            ; $76b3: $20 $fe

    ld bc, $00ff                                  ; $76b5: $01 $ff $00
    ei                                            ; $76b8: $fb
    nop                                           ; $76b9: $00
    rst $18                                       ; $76ba: $df
    jr nz, @+$01                                  ; $76bb: $20 $ff

    nop                                           ; $76bd: $00
    rst $38                                       ; $76be: $ff
    nop                                           ; $76bf: $00
    rst $38                                       ; $76c0: $ff
    nop                                           ; $76c1: $00
    cp [hl]                                       ; $76c2: $be
    ld bc, $08f6                                  ; $76c3: $01 $f6 $08
    rst $38                                       ; $76c6: $ff
    nop                                           ; $76c7: $00
    rst $28                                       ; $76c8: $ef
    nop                                           ; $76c9: $00
    ld a, a                                       ; $76ca: $7f
    add b                                         ; $76cb: $80
    ei                                            ; $76cc: $fb
    nop                                           ; $76cd: $00
    rst $38                                       ; $76ce: $ff
    nop                                           ; $76cf: $00
    cp a                                          ; $76d0: $bf
    ld b, b                                       ; $76d1: $40
    db $ed                                        ; $76d2: $ed
    ld [bc], a                                    ; $76d3: $02
    rst $38                                       ; $76d4: $ff
    nop                                           ; $76d5: $00
    cp a                                          ; $76d6: $bf
    nop                                           ; $76d7: $00
    sbc $20                                       ; $76d8: $de $20
    rst $38                                       ; $76da: $ff
    nop                                           ; $76db: $00
    rst $28                                       ; $76dc: $ef
    nop                                           ; $76dd: $00
    rst $38                                       ; $76de: $ff
    nop                                           ; $76df: $00
    ld l, a                                       ; $76e0: $6f
    db $10                                        ; $76e1: $10
    ei                                            ; $76e2: $fb
    nop                                           ; $76e3: $00
    rst $38                                       ; $76e4: $ff
    nop                                           ; $76e5: $00
    ld a, a                                       ; $76e6: $7f
    nop                                           ; $76e7: $00
    rst $38                                       ; $76e8: $ff
    nop                                           ; $76e9: $00
    xor $10                                       ; $76ea: $ee $10
    rst $38                                       ; $76ec: $ff
    nop                                           ; $76ed: $00
    rst $38                                       ; $76ee: $ff
    nop                                           ; $76ef: $00
    rst $38                                       ; $76f0: $ff
    nop                                           ; $76f1: $00
    rst $38                                       ; $76f2: $ff
    nop                                           ; $76f3: $00
    ld a, [hl]                                    ; $76f4: $7e
    add c                                         ; $76f5: $81
    ld a, [hl]                                    ; $76f6: $7e
    add c                                         ; $76f7: $81
    ld a, [hl]                                    ; $76f8: $7e
    add c                                         ; $76f9: $81
    ld a, [hl]                                    ; $76fa: $7e
    add c                                         ; $76fb: $81
    ld a, [hl]                                    ; $76fc: $7e
    add c                                         ; $76fd: $81
    ld a, [hl]                                    ; $76fe: $7e
    add c                                         ; $76ff: $81
    add c                                         ; $7700: $81
    rst $38                                       ; $7701: $ff
    xor c                                         ; $7702: $a9
    rst $10                                       ; $7703: $d7
    or e                                          ; $7704: $b3
    push bc                                       ; $7705: $c5
    sub a                                         ; $7706: $97
    pop bc                                        ; $7707: $c1
    xor e                                         ; $7708: $ab
    pop de                                        ; $7709: $d1
    sub e                                         ; $770a: $93
    ret                                           ; $770b: $c9


    xor e                                         ; $770c: $ab
    pop de                                        ; $770d: $d1
    rst $10                                       ; $770e: $d7
    jp hl                                         ; $770f: $e9


    rst $38                                       ; $7710: $ff
    nop                                           ; $7711: $00
    rst $38                                       ; $7712: $ff
    nop                                           ; $7713: $00
    rst $38                                       ; $7714: $ff
    nop                                           ; $7715: $00
    cp e                                          ; $7716: $bb
    nop                                           ; $7717: $00
    rst $38                                       ; $7718: $ff
    nop                                           ; $7719: $00
    xor d                                         ; $771a: $aa
    nop                                           ; $771b: $00
    db $dd                                        ; $771c: $dd
    nop                                           ; $771d: $00
    xor d                                         ; $771e: $aa
    nop                                           ; $771f: $00
    ld d, l                                       ; $7720: $55
    nop                                           ; $7721: $00
    xor d                                         ; $7722: $aa
    nop                                           ; $7723: $00
    ld d, l                                       ; $7724: $55
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    ld d, l                                       ; $7728: $55
    nop                                           ; $7729: $00
    nop                                           ; $772a: $00
    nop                                           ; $772b: $00
    nop                                           ; $772c: $00
    nop                                           ; $772d: $00
    nop                                           ; $772e: $00
    nop                                           ; $772f: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    ld [$42f0], sp                                ; $7734: $08 $f0 $42
    cp h                                          ; $7737: $bc
    nop                                           ; $7738: $00
    rst $38                                       ; $7739: $ff
    nop                                           ; $773a: $00
    rst $38                                       ; $773b: $ff
    nop                                           ; $773c: $00
    rst $38                                       ; $773d: $ff
    nop                                           ; $773e: $00
    rst $38                                       ; $773f: $ff
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    inc c                                         ; $7748: $0c
    ldh a, [$03]                                  ; $7749: $f0 $03
    cp $02                                        ; $774b: $fe $02
    rst $38                                       ; $774d: $ff
    rlca                                          ; $774e: $07
    cp $00                                        ; $774f: $fe $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    ld bc, $4c00                                  ; $775a: $01 $00 $4c
    add a                                         ; $775d: $87
    inc b                                         ; $775e: $04
    rst $38                                       ; $775f: $ff
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    ld [bc], a                                    ; $7764: $02
    ld bc, $0e11                                  ; $7765: $01 $11 $0e
    ld c, d                                       ; $7768: $4a
    dec [hl]                                      ; $7769: $35
    dec e                                         ; $776a: $1d
    ld [c], a                                     ; $776b: $e2
    ld c, b                                       ; $776c: $48
    or a                                          ; $776d: $b7
    add b                                         ; $776e: $80
    ld a, a                                       ; $776f: $7f
    nop                                           ; $7770: $00
    rst $38                                       ; $7771: $ff
    nop                                           ; $7772: $00
    rst $38                                       ; $7773: $ff
    nop                                           ; $7774: $00
    rst $38                                       ; $7775: $ff
    nop                                           ; $7776: $00
    rst $38                                       ; $7777: $ff
    nop                                           ; $7778: $00
    rst $38                                       ; $7779: $ff
    nop                                           ; $777a: $00
    rst $38                                       ; $777b: $ff
    nop                                           ; $777c: $00
    rst $38                                       ; $777d: $ff
    nop                                           ; $777e: $00
    rst $38                                       ; $777f: $ff
    rlca                                          ; $7780: $07

jr_076_7781:
    rst $38                                       ; $7781: $ff
    rrca                                          ; $7782: $0f
    rst $38                                       ; $7783: $ff
    rlca                                          ; $7784: $07
    rst $38                                       ; $7785: $ff
    rlca                                          ; $7786: $07
    rst $38                                       ; $7787: $ff
    rrca                                          ; $7788: $0f
    rst $38                                       ; $7789: $ff
    inc bc                                        ; $778a: $03
    rst $38                                       ; $778b: $ff
    nop                                           ; $778c: $00
    rst $38                                       ; $778d: $ff
    nop                                           ; $778e: $00
    rst $38                                       ; $778f: $ff
    ld b, $ff                                     ; $7790: $06 $ff
    adc $bf                                       ; $7792: $ce $bf
    rra                                           ; $7794: $1f
    rst $38                                       ; $7795: $ff
    adc [hl]                                      ; $7796: $8e
    rst $38                                       ; $7797: $ff
    sbc $ff                                       ; $7798: $de $ff
    ccf                                           ; $779a: $3f
    rst $38                                       ; $779b: $ff
    inc c                                         ; $779c: $0c
    rst $38                                       ; $779d: $ff
    nop                                           ; $779e: $00
    rst $38                                       ; $779f: $ff
    jr nz, jr_076_7781                            ; $77a0: $20 $df

    ld b, b                                       ; $77a2: $40
    cp a                                          ; $77a3: $bf
    nop                                           ; $77a4: $00
    rst $38                                       ; $77a5: $ff
    nop                                           ; $77a6: $00
    rst $38                                       ; $77a7: $ff
    nop                                           ; $77a8: $00
    rst $38                                       ; $77a9: $ff
    nop                                           ; $77aa: $00
    rst $38                                       ; $77ab: $ff
    nop                                           ; $77ac: $00
    rst $38                                       ; $77ad: $ff
    nop                                           ; $77ae: $00
    rst $38                                       ; $77af: $ff
    nop                                           ; $77b0: $00
    rst $38                                       ; $77b1: $ff
    nop                                           ; $77b2: $00
    rst $38                                       ; $77b3: $ff
    ld [$08ff], sp                                ; $77b4: $08 $ff $08
    rst $38                                       ; $77b7: $ff
    ld [$08ff], sp                                ; $77b8: $08 $ff $08
    rst $38                                       ; $77bb: $ff
    inc c                                         ; $77bc: $0c
    rst $38                                       ; $77bd: $ff
    inc c                                         ; $77be: $0c
    rst $38                                       ; $77bf: $ff
    nop                                           ; $77c0: $00
    rst $38                                       ; $77c1: $ff
    nop                                           ; $77c2: $00
    rst $38                                       ; $77c3: $ff
    nop                                           ; $77c4: $00
    rst $38                                       ; $77c5: $ff
    nop                                           ; $77c6: $00
    rst $38                                       ; $77c7: $ff
    nop                                           ; $77c8: $00
    rst $38                                       ; $77c9: $ff
    nop                                           ; $77ca: $00
    rst $38                                       ; $77cb: $ff
    nop                                           ; $77cc: $00
    rst $38                                       ; $77cd: $ff
    nop                                           ; $77ce: $00
    rst $38                                       ; $77cf: $ff
    ld e, $ff                                     ; $77d0: $1e $ff
    ld e, $ff                                     ; $77d2: $1e $ff
    ccf                                           ; $77d4: $3f
    rst $38                                       ; $77d5: $ff
    ld a, a                                       ; $77d6: $7f
    rst $38                                       ; $77d7: $ff
    ccf                                           ; $77d8: $3f
    rst $38                                       ; $77d9: $ff
    ld e, $ff                                     ; $77da: $1e $ff
    rra                                           ; $77dc: $1f
    rst $38                                       ; $77dd: $ff
    ccf                                           ; $77de: $3f
    rst $38                                       ; $77df: $ff
    nop                                           ; $77e0: $00
    rst $38                                       ; $77e1: $ff
    nop                                           ; $77e2: $00
    rst $38                                       ; $77e3: $ff
    nop                                           ; $77e4: $00
    rst $38                                       ; $77e5: $ff
    add b                                         ; $77e6: $80
    rst $38                                       ; $77e7: $ff
    nop                                           ; $77e8: $00
    rst $38                                       ; $77e9: $ff
    nop                                           ; $77ea: $00
    rst $38                                       ; $77eb: $ff
    nop                                           ; $77ec: $00
    rst $38                                       ; $77ed: $ff
    nop                                           ; $77ee: $00
    rst $38                                       ; $77ef: $ff
    ccf                                           ; $77f0: $3f
    rst $38                                       ; $77f1: $ff
    ccf                                           ; $77f2: $3f
    rst $38                                       ; $77f3: $ff
    ld a, a                                       ; $77f4: $7f
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    inc c                                         ; $77f8: $0c
    rst $38                                       ; $77f9: $ff
    inc c                                         ; $77fa: $0c
    rst $38                                       ; $77fb: $ff
    nop                                           ; $77fc: $00
    rst $38                                       ; $77fd: $ff
    nop                                           ; $77fe: $00
    rst $38                                       ; $77ff: $ff
    add b                                         ; $7800: $80
    rst $38                                       ; $7801: $ff
    add b                                         ; $7802: $80
    rst $38                                       ; $7803: $ff
    ret nz                                        ; $7804: $c0

    rst $38                                       ; $7805: $ff
    ldh [rIE], a                                  ; $7806: $e0 $ff
    nop                                           ; $7808: $00
    rst $38                                       ; $7809: $ff
    nop                                           ; $780a: $00
    rst $38                                       ; $780b: $ff
    nop                                           ; $780c: $00
    rst $38                                       ; $780d: $ff
    nop                                           ; $780e: $00
    rst $38                                       ; $780f: $ff
    nop                                           ; $7810: $00
    rst $38                                       ; $7811: $ff
    nop                                           ; $7812: $00
    rst $38                                       ; $7813: $ff
    nop                                           ; $7814: $00
    rst $38                                       ; $7815: $ff
    nop                                           ; $7816: $00
    rst $38                                       ; $7817: $ff
    nop                                           ; $7818: $00
    rst $38                                       ; $7819: $ff
    nop                                           ; $781a: $00
    rst $38                                       ; $781b: $ff
    nop                                           ; $781c: $00
    rst $38                                       ; $781d: $ff
    nop                                           ; $781e: $00
    rst $38                                       ; $781f: $ff
    nop                                           ; $7820: $00
    rst $38                                       ; $7821: $ff
    nop                                           ; $7822: $00
    rst $38                                       ; $7823: $ff
    nop                                           ; $7824: $00
    rst $38                                       ; $7825: $ff
    nop                                           ; $7826: $00
    rst $38                                       ; $7827: $ff
    nop                                           ; $7828: $00
    rst $38                                       ; $7829: $ff
    nop                                           ; $782a: $00
    rst $38                                       ; $782b: $ff
    nop                                           ; $782c: $00
    rst $38                                       ; $782d: $ff
    nop                                           ; $782e: $00
    rst $38                                       ; $782f: $ff
    nop                                           ; $7830: $00
    rst $38                                       ; $7831: $ff
    nop                                           ; $7832: $00
    rst $38                                       ; $7833: $ff
    nop                                           ; $7834: $00
    rst $38                                       ; $7835: $ff
    nop                                           ; $7836: $00
    rst $38                                       ; $7837: $ff
    nop                                           ; $7838: $00
    rst $38                                       ; $7839: $ff
    nop                                           ; $783a: $00
    rst $38                                       ; $783b: $ff
    nop                                           ; $783c: $00
    rst $38                                       ; $783d: $ff
    nop                                           ; $783e: $00
    rst $38                                       ; $783f: $ff
    nop                                           ; $7840: $00
    rst $38                                       ; $7841: $ff
    nop                                           ; $7842: $00
    rst $38                                       ; $7843: $ff
    nop                                           ; $7844: $00
    rst $38                                       ; $7845: $ff
    nop                                           ; $7846: $00
    rst $38                                       ; $7847: $ff
    nop                                           ; $7848: $00
    rst $38                                       ; $7849: $ff
    nop                                           ; $784a: $00
    rst $38                                       ; $784b: $ff
    nop                                           ; $784c: $00
    rst $38                                       ; $784d: $ff
    ld bc, $03fe                                  ; $784e: $01 $fe $03
    db $fc                                        ; $7851: $fc
    dec a                                         ; $7852: $3d
    ret nz                                        ; $7853: $c0

    ld a, [$5400]                                 ; $7854: $fa $00 $54
    nop                                           ; $7857: $00
    xor b                                         ; $7858: $a8
    nop                                           ; $7859: $00
    ld b, b                                       ; $785a: $40
    nop                                           ; $785b: $00
    nop                                           ; $785c: $00
    nop                                           ; $785d: $00
    nop                                           ; $785e: $00
    nop                                           ; $785f: $00
    ldh [$1f], a                                  ; $7860: $e0 $1f
    ld a, $01                                     ; $7862: $3e $01
    inc bc                                        ; $7864: $03
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    nop                                           ; $786a: $00
    nop                                           ; $786b: $00
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00
    nop                                           ; $786f: $00
    nop                                           ; $7870: $00
    rst $38                                       ; $7871: $ff
    ld bc, $f7fe                                  ; $7872: $01 $fe $f7
    ld [$007f], sp                                ; $7875: $08 $7f $00
    ld a, [hl+]                                   ; $7878: $2a
    nop                                           ; $7879: $00
    dec d                                         ; $787a: $15
    nop                                           ; $787b: $00
    nop                                           ; $787c: $00
    nop                                           ; $787d: $00
    nop                                           ; $787e: $00
    nop                                           ; $787f: $00
    rrca                                          ; $7880: $0f
    ldh a, [rIE]                                  ; $7881: $f0 $ff
    nop                                           ; $7883: $00
    ld a, [$5400]                                 ; $7884: $fa $00 $54
    nop                                           ; $7887: $00
    xor b                                         ; $7888: $a8
    nop                                           ; $7889: $00
    ld d, b                                       ; $788a: $50
    nop                                           ; $788b: $00
    nop                                           ; $788c: $00
    nop                                           ; $788d: $00
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    rst $38                                       ; $7890: $ff
    nop                                           ; $7891: $00
    ei                                            ; $7892: $fb
    nop                                           ; $7893: $00
    cp a                                          ; $7894: $bf
    nop                                           ; $7895: $00
    or $08                                        ; $7896: $f6 $08
    ld a, a                                       ; $7898: $7f
    nop                                           ; $7899: $00
    rst $38                                       ; $789a: $ff
    nop                                           ; $789b: $00
    cp $01                                        ; $789c: $fe $01
    rst $28                                       ; $789e: $ef
    nop                                           ; $789f: $00
    db $fd                                        ; $78a0: $fd
    ld [bc], a                                    ; $78a1: $02
    rst $10                                       ; $78a2: $d7

jr_076_78a3:
    jr nz, jr_076_78a3                            ; $78a3: $20 $fe

    ld bc, $00ff                                  ; $78a5: $01 $ff $00
    ei                                            ; $78a8: $fb
    nop                                           ; $78a9: $00
    rst $18                                       ; $78aa: $df
    jr nz, @+$01                                  ; $78ab: $20 $ff

    nop                                           ; $78ad: $00
    rst $38                                       ; $78ae: $ff
    nop                                           ; $78af: $00
    rst $38                                       ; $78b0: $ff
    nop                                           ; $78b1: $00
    cp [hl]                                       ; $78b2: $be
    ld bc, $08f6                                  ; $78b3: $01 $f6 $08
    rst $38                                       ; $78b6: $ff
    nop                                           ; $78b7: $00
    rst $28                                       ; $78b8: $ef
    nop                                           ; $78b9: $00
    ld a, a                                       ; $78ba: $7f
    add b                                         ; $78bb: $80
    ei                                            ; $78bc: $fb
    nop                                           ; $78bd: $00
    rst $38                                       ; $78be: $ff
    nop                                           ; $78bf: $00
    ei                                            ; $78c0: $fb
    inc b                                         ; $78c1: $04
    sbc $00                                       ; $78c2: $de $00
    rst $38                                       ; $78c4: $ff
    nop                                           ; $78c5: $00
    rst $28                                       ; $78c6: $ef
    nop                                           ; $78c7: $00
    cp e                                          ; $78c8: $bb
    inc b                                         ; $78c9: $04
    rst $38                                       ; $78ca: $ff
    nop                                           ; $78cb: $00
    cp a                                          ; $78cc: $bf
    nop                                           ; $78cd: $00
    cp $00                                        ; $78ce: $fe $00
    ld l, a                                       ; $78d0: $6f
    db $10                                        ; $78d1: $10
    ei                                            ; $78d2: $fb
    nop                                           ; $78d3: $00
    rst $38                                       ; $78d4: $ff
    nop                                           ; $78d5: $00
    ld a, a                                       ; $78d6: $7f
    nop                                           ; $78d7: $00
    rst $38                                       ; $78d8: $ff
    nop                                           ; $78d9: $00
    xor $10                                       ; $78da: $ee $10
    rst $38                                       ; $78dc: $ff
    nop                                           ; $78dd: $00
    rst $38                                       ; $78de: $ff
    nop                                           ; $78df: $00
    cp a                                          ; $78e0: $bf
    ld b, b                                       ; $78e1: $40
    db $ed                                        ; $78e2: $ed
    ld [bc], a                                    ; $78e3: $02
    rst $38                                       ; $78e4: $ff
    nop                                           ; $78e5: $00
    cp a                                          ; $78e6: $bf
    nop                                           ; $78e7: $00
    sbc $20                                       ; $78e8: $de $20
    rst $38                                       ; $78ea: $ff
    nop                                           ; $78eb: $00
    rst $28                                       ; $78ec: $ef
    nop                                           ; $78ed: $00
    rst $38                                       ; $78ee: $ff
    nop                                           ; $78ef: $00
    add c                                         ; $78f0: $81
    rst $38                                       ; $78f1: $ff
    xor c                                         ; $78f2: $a9
    rst $10                                       ; $78f3: $d7
    or e                                          ; $78f4: $b3
    push bc                                       ; $78f5: $c5
    sub a                                         ; $78f6: $97
    pop bc                                        ; $78f7: $c1
    xor e                                         ; $78f8: $ab
    pop de                                        ; $78f9: $d1
    sub e                                         ; $78fa: $93
    ret                                           ; $78fb: $c9


    xor e                                         ; $78fc: $ab
    pop de                                        ; $78fd: $d1
    rst $10                                       ; $78fe: $d7
    jp hl                                         ; $78ff: $e9


    rst $38                                       ; $7900: $ff
    nop                                           ; $7901: $00
    rst $38                                       ; $7902: $ff
    nop                                           ; $7903: $00
    ld a, [hl]                                    ; $7904: $7e
    add c                                         ; $7905: $81
    ld a, [hl]                                    ; $7906: $7e
    add c                                         ; $7907: $81
    ld a, [hl]                                    ; $7908: $7e
    add c                                         ; $7909: $81
    ld a, [hl]                                    ; $790a: $7e
    add c                                         ; $790b: $81
    ld a, [hl]                                    ; $790c: $7e
    add c                                         ; $790d: $81
    ld a, [hl]                                    ; $790e: $7e
    add c                                         ; $790f: $81
    rst $38                                       ; $7910: $ff
    nop                                           ; $7911: $00
    rst $38                                       ; $7912: $ff
    nop                                           ; $7913: $00
    rst $38                                       ; $7914: $ff
    nop                                           ; $7915: $00
    cp e                                          ; $7916: $bb
    nop                                           ; $7917: $00
    rst $38                                       ; $7918: $ff
    nop                                           ; $7919: $00
    xor d                                         ; $791a: $aa
    nop                                           ; $791b: $00
    db $dd                                        ; $791c: $dd
    nop                                           ; $791d: $00
    xor d                                         ; $791e: $aa
    nop                                           ; $791f: $00
    ld d, l                                       ; $7920: $55
    nop                                           ; $7921: $00
    xor d                                         ; $7922: $aa
    nop                                           ; $7923: $00
    ld d, l                                       ; $7924: $55
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    ld d, l                                       ; $7928: $55
    nop                                           ; $7929: $00

jr_076_792a:
    nop                                           ; $792a: $00
    nop                                           ; $792b: $00
    nop                                           ; $792c: $00
    nop                                           ; $792d: $00
    nop                                           ; $792e: $00
    nop                                           ; $792f: $00
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    db $10                                        ; $7934: $10
    ldh [$84], a                                  ; $7935: $e0 $84
    ld a, b                                       ; $7937: $78
    nop                                           ; $7938: $00
    rst $38                                       ; $7939: $ff
    nop                                           ; $793a: $00
    rst $38                                       ; $793b: $ff
    nop                                           ; $793c: $00
    rst $38                                       ; $793d: $ff
    nop                                           ; $793e: $00
    rst $38                                       ; $793f: $ff
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    nop                                           ; $7947: $00
    jr jr_076_792a                                ; $7948: $18 $e0

    ld a, [bc]                                    ; $794a: $0a
    db $fc                                        ; $794b: $fc
    ld [$1aff], sp                                ; $794c: $08 $ff $1a
    db $fd                                        ; $794f: $fd
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    nop                                           ; $7955: $00
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    ld [bc], a                                    ; $795a: $02
    ld bc, $1798                                  ; $795b: $01 $98 $17
    ld de, $00fe                                  ; $795e: $11 $fe $00
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    inc b                                         ; $7964: $04
    inc bc                                        ; $7965: $03
    ld [hl+], a                                   ; $7966: $22
    dec e                                         ; $7967: $1d
    sub h                                         ; $7968: $94
    ld l, e                                       ; $7969: $6b
    ld a, [hl-]                                   ; $796a: $3a
    push bc                                       ; $796b: $c5
    sub b                                         ; $796c: $90
    ld l, a                                       ; $796d: $6f
    nop                                           ; $796e: $00
    rst $38                                       ; $796f: $ff
    nop                                           ; $7970: $00
    rst $38                                       ; $7971: $ff
    nop                                           ; $7972: $00
    rst $38                                       ; $7973: $ff
    nop                                           ; $7974: $00
    rst $38                                       ; $7975: $ff
    nop                                           ; $7976: $00
    rst $38                                       ; $7977: $ff
    nop                                           ; $7978: $00
    rst $38                                       ; $7979: $ff
    nop                                           ; $797a: $00
    rst $38                                       ; $797b: $ff
    nop                                           ; $797c: $00
    rst $38                                       ; $797d: $ff
    nop                                           ; $797e: $00
    rst $38                                       ; $797f: $ff
    inc e                                         ; $7980: $1c
    rst $38                                       ; $7981: $ff
    ld a, $ff                                     ; $7982: $3e $ff
    inc e                                         ; $7984: $1c
    rst $38                                       ; $7985: $ff
    ld e, $ff                                     ; $7986: $1e $ff
    ccf                                           ; $7988: $3f
    rst $38                                       ; $7989: $ff
    inc c                                         ; $798a: $0c
    rst $38                                       ; $798b: $ff
    nop                                           ; $798c: $00
    rst $38                                       ; $798d: $ff
    nop                                           ; $798e: $00
    rst $38                                       ; $798f: $ff
    jr @+$01                                      ; $7990: $18 $ff

    cp h                                          ; $7992: $bc
    ld a, e                                       ; $7993: $7b
    ld a, h                                       ; $7994: $7c
    rst $38                                       ; $7995: $ff
    jr c, @+$01                                   ; $7996: $38 $ff

    ld a, b                                       ; $7998: $78
    rst $38                                       ; $7999: $ff
    db $fc                                        ; $799a: $fc
    rst $38                                       ; $799b: $ff
    jr nc, @+$01                                  ; $799c: $30 $ff

    nop                                           ; $799e: $00
    rst $38                                       ; $799f: $ff
    ld b, b                                       ; $79a0: $40
    cp a                                          ; $79a1: $bf
    add b                                         ; $79a2: $80
    ld a, a                                       ; $79a3: $7f
    nop                                           ; $79a4: $00
    rst $38                                       ; $79a5: $ff
    nop                                           ; $79a6: $00
    rst $38                                       ; $79a7: $ff
    nop                                           ; $79a8: $00
    rst $38                                       ; $79a9: $ff
    nop                                           ; $79aa: $00
    rst $38                                       ; $79ab: $ff
    nop                                           ; $79ac: $00
    rst $38                                       ; $79ad: $ff
    nop                                           ; $79ae: $00
    rst $38                                       ; $79af: $ff
    nop                                           ; $79b0: $00
    rst $38                                       ; $79b1: $ff
    nop                                           ; $79b2: $00
    rst $38                                       ; $79b3: $ff
    add b                                         ; $79b4: $80
    rst $38                                       ; $79b5: $ff
    add b                                         ; $79b6: $80
    rst $38                                       ; $79b7: $ff
    add b                                         ; $79b8: $80
    rst $38                                       ; $79b9: $ff
    add b                                         ; $79ba: $80
    rst $38                                       ; $79bb: $ff
    ret nz                                        ; $79bc: $c0

    rst $38                                       ; $79bd: $ff
    ret nz                                        ; $79be: $c0

    rst $38                                       ; $79bf: $ff
    nop                                           ; $79c0: $00
    rst $38                                       ; $79c1: $ff
    nop                                           ; $79c2: $00
    rst $38                                       ; $79c3: $ff
    nop                                           ; $79c4: $00
    rst $38                                       ; $79c5: $ff
    nop                                           ; $79c6: $00
    rst $38                                       ; $79c7: $ff
    nop                                           ; $79c8: $00
    rst $38                                       ; $79c9: $ff
    nop                                           ; $79ca: $00
    rst $38                                       ; $79cb: $ff
    nop                                           ; $79cc: $00
    rst $38                                       ; $79cd: $ff
    nop                                           ; $79ce: $00
    rst $38                                       ; $79cf: $ff
    ldh [rIE], a                                  ; $79d0: $e0 $ff
    ldh [rIE], a                                  ; $79d2: $e0 $ff
    ldh a, [rIE]                                  ; $79d4: $f0 $ff
    ld hl, sp-$01                                 ; $79d6: $f8 $ff
    ldh a, [rIE]                                  ; $79d8: $f0 $ff
    ldh [rIE], a                                  ; $79da: $e0 $ff
    ldh a, [rIE]                                  ; $79dc: $f0 $ff
    ldh a, [rIE]                                  ; $79de: $f0 $ff
    ld bc, $01ff                                  ; $79e0: $01 $ff $01
    rst $38                                       ; $79e3: $ff
    inc bc                                        ; $79e4: $03
    rst $38                                       ; $79e5: $ff
    rlca                                          ; $79e6: $07
    rst $38                                       ; $79e7: $ff
    inc bc                                        ; $79e8: $03
    rst $38                                       ; $79e9: $ff
    ld bc, $01ff                                  ; $79ea: $01 $ff $01
    rst $38                                       ; $79ed: $ff
    inc bc                                        ; $79ee: $03
    rst $38                                       ; $79ef: $ff
    ld hl, sp-$01                                 ; $79f0: $f8 $ff
    ld hl, sp-$01                                 ; $79f2: $f8 $ff
    db $fc                                        ; $79f4: $fc
    rst $38                                       ; $79f5: $ff
    cp $ff                                        ; $79f6: $fe $ff
    ret nz                                        ; $79f8: $c0

    rst $38                                       ; $79f9: $ff
    ret nz                                        ; $79fa: $c0

    rst $38                                       ; $79fb: $ff
    nop                                           ; $79fc: $00
    rst $38                                       ; $79fd: $ff
    nop                                           ; $79fe: $00
    rst $38                                       ; $79ff: $ff
    inc bc                                        ; $7a00: $03
    rst $38                                       ; $7a01: $ff
    inc bc                                        ; $7a02: $03
    rst $38                                       ; $7a03: $ff
    rlca                                          ; $7a04: $07
    rst $38                                       ; $7a05: $ff
    rrca                                          ; $7a06: $0f
    rst $38                                       ; $7a07: $ff
    nop                                           ; $7a08: $00
    rst $38                                       ; $7a09: $ff
    nop                                           ; $7a0a: $00
    rst $38                                       ; $7a0b: $ff
    nop                                           ; $7a0c: $00
    rst $38                                       ; $7a0d: $ff
    nop                                           ; $7a0e: $00
    rst $38                                       ; $7a0f: $ff
    nop                                           ; $7a10: $00
    rst $38                                       ; $7a11: $ff
    nop                                           ; $7a12: $00
    rst $38                                       ; $7a13: $ff
    nop                                           ; $7a14: $00
    rst $38                                       ; $7a15: $ff
    nop                                           ; $7a16: $00
    rst $38                                       ; $7a17: $ff
    nop                                           ; $7a18: $00
    rst $38                                       ; $7a19: $ff
    nop                                           ; $7a1a: $00
    rst $38                                       ; $7a1b: $ff
    nop                                           ; $7a1c: $00
    rst $38                                       ; $7a1d: $ff
    nop                                           ; $7a1e: $00
    rst $38                                       ; $7a1f: $ff
    nop                                           ; $7a20: $00
    rst $38                                       ; $7a21: $ff
    nop                                           ; $7a22: $00
    rst $38                                       ; $7a23: $ff
    nop                                           ; $7a24: $00
    rst $38                                       ; $7a25: $ff
    nop                                           ; $7a26: $00
    rst $38                                       ; $7a27: $ff
    nop                                           ; $7a28: $00
    rst $38                                       ; $7a29: $ff
    nop                                           ; $7a2a: $00
    rst $38                                       ; $7a2b: $ff
    nop                                           ; $7a2c: $00
    rst $38                                       ; $7a2d: $ff
    nop                                           ; $7a2e: $00
    rst $38                                       ; $7a2f: $ff
    nop                                           ; $7a30: $00
    rst $38                                       ; $7a31: $ff
    nop                                           ; $7a32: $00
    rst $38                                       ; $7a33: $ff
    nop                                           ; $7a34: $00
    rst $38                                       ; $7a35: $ff
    nop                                           ; $7a36: $00
    rst $38                                       ; $7a37: $ff
    nop                                           ; $7a38: $00
    rst $38                                       ; $7a39: $ff
    nop                                           ; $7a3a: $00
    rst $38                                       ; $7a3b: $ff
    nop                                           ; $7a3c: $00
    rst $38                                       ; $7a3d: $ff
    nop                                           ; $7a3e: $00
    rst $38                                       ; $7a3f: $ff
    nop                                           ; $7a40: $00
    rst $38                                       ; $7a41: $ff
    nop                                           ; $7a42: $00
    rst $38                                       ; $7a43: $ff
    nop                                           ; $7a44: $00
    rst $38                                       ; $7a45: $ff
    nop                                           ; $7a46: $00
    rst $38                                       ; $7a47: $ff
    nop                                           ; $7a48: $00
    rst $38                                       ; $7a49: $ff
    nop                                           ; $7a4a: $00
    rst $38                                       ; $7a4b: $ff
    rlca                                          ; $7a4c: $07
    ld hl, sp+$7d                                 ; $7a4d: $f8 $7d
    add b                                         ; $7a4f: $80
    ld hl, sp+$07                                 ; $7a50: $f8 $07
    ld c, a                                       ; $7a52: $4f
    nop                                           ; $7a53: $00
    add b                                         ; $7a54: $80
    nop                                           ; $7a55: $00
    nop                                           ; $7a56: $00
    nop                                           ; $7a57: $00
    nop                                           ; $7a58: $00
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    nop                                           ; $7a5d: $00
    nop                                           ; $7a5e: $00
    nop                                           ; $7a5f: $00
    nop                                           ; $7a60: $00
    rst $38                                       ; $7a61: $ff
    add b                                         ; $7a62: $80
    ld a, a                                       ; $7a63: $7f
    db $fd                                        ; $7a64: $fd
    ld [bc], a                                    ; $7a65: $02
    rra                                           ; $7a66: $1f
    nop                                           ; $7a67: $00
    ld a, [bc]                                    ; $7a68: $0a
    nop                                           ; $7a69: $00
    dec b                                         ; $7a6a: $05
    nop                                           ; $7a6b: $00
    nop                                           ; $7a6c: $00
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    nop                                           ; $7a6f: $00
    inc bc                                        ; $7a70: $03
    db $fc                                        ; $7a71: $fc
    ld a, a                                       ; $7a72: $7f
    add b                                         ; $7a73: $80
    cp $00                                        ; $7a74: $fe $00
    push de                                       ; $7a76: $d5
    nop                                           ; $7a77: $00
    xor d                                         ; $7a78: $aa
    nop                                           ; $7a79: $00
    ld d, h                                       ; $7a7a: $54
    nop                                           ; $7a7b: $00
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    ld a, [$d000]                                 ; $7a80: $fa $00 $d0
    nop                                           ; $7a83: $00
    and b                                         ; $7a84: $a0
    nop                                           ; $7a85: $00
    nop                                           ; $7a86: $00
    nop                                           ; $7a87: $00
    nop                                           ; $7a88: $00
    nop                                           ; $7a89: $00
    nop                                           ; $7a8a: $00
    nop                                           ; $7a8b: $00
    nop                                           ; $7a8c: $00
    nop                                           ; $7a8d: $00
    nop                                           ; $7a8e: $00
    nop                                           ; $7a8f: $00
    db $fd                                        ; $7a90: $fd
    ld [bc], a                                    ; $7a91: $02
    rst $10                                       ; $7a92: $d7

jr_076_7a93:
    jr nz, jr_076_7a93                            ; $7a93: $20 $fe

    ld bc, $00ff                                  ; $7a95: $01 $ff $00
    ei                                            ; $7a98: $fb
    nop                                           ; $7a99: $00
    rst $18                                       ; $7a9a: $df
    jr nz, @+$01                                  ; $7a9b: $20 $ff

    nop                                           ; $7a9d: $00
    rst $38                                       ; $7a9e: $ff
    nop                                           ; $7a9f: $00
    rst $38                                       ; $7aa0: $ff
    nop                                           ; $7aa1: $00
    cp [hl]                                       ; $7aa2: $be
    ld bc, $08f6                                  ; $7aa3: $01 $f6 $08
    rst $38                                       ; $7aa6: $ff
    nop                                           ; $7aa7: $00
    rst $28                                       ; $7aa8: $ef
    nop                                           ; $7aa9: $00
    ld a, a                                       ; $7aaa: $7f
    add b                                         ; $7aab: $80
    ei                                            ; $7aac: $fb
    nop                                           ; $7aad: $00
    rst $38                                       ; $7aae: $ff
    nop                                           ; $7aaf: $00
    ei                                            ; $7ab0: $fb
    inc b                                         ; $7ab1: $04
    sbc $00                                       ; $7ab2: $de $00
    rst $38                                       ; $7ab4: $ff
    nop                                           ; $7ab5: $00
    rst $28                                       ; $7ab6: $ef
    nop                                           ; $7ab7: $00
    cp e                                          ; $7ab8: $bb
    inc b                                         ; $7ab9: $04
    rst $38                                       ; $7aba: $ff
    nop                                           ; $7abb: $00
    cp a                                          ; $7abc: $bf
    nop                                           ; $7abd: $00
    cp $00                                        ; $7abe: $fe $00
    rst $38                                       ; $7ac0: $ff
    nop                                           ; $7ac1: $00
    ei                                            ; $7ac2: $fb
    nop                                           ; $7ac3: $00
    cp a                                          ; $7ac4: $bf
    nop                                           ; $7ac5: $00
    or $08                                        ; $7ac6: $f6 $08
    ld a, a                                       ; $7ac8: $7f
    nop                                           ; $7ac9: $00
    rst $38                                       ; $7aca: $ff
    nop                                           ; $7acb: $00
    cp $01                                        ; $7acc: $fe $01
    rst $28                                       ; $7ace: $ef
    nop                                           ; $7acf: $00
    cp a                                          ; $7ad0: $bf
    ld b, b                                       ; $7ad1: $40
    db $ed                                        ; $7ad2: $ed
    ld [bc], a                                    ; $7ad3: $02
    rst $38                                       ; $7ad4: $ff
    nop                                           ; $7ad5: $00
    cp a                                          ; $7ad6: $bf
    nop                                           ; $7ad7: $00
    sbc $20                                       ; $7ad8: $de $20
    rst $38                                       ; $7ada: $ff
    nop                                           ; $7adb: $00
    rst $28                                       ; $7adc: $ef
    nop                                           ; $7add: $00
    rst $38                                       ; $7ade: $ff
    nop                                           ; $7adf: $00
    ld l, a                                       ; $7ae0: $6f
    db $10                                        ; $7ae1: $10
    ei                                            ; $7ae2: $fb
    nop                                           ; $7ae3: $00
    rst $38                                       ; $7ae4: $ff
    nop                                           ; $7ae5: $00
    ld a, a                                       ; $7ae6: $7f
    nop                                           ; $7ae7: $00
    rst $38                                       ; $7ae8: $ff
    nop                                           ; $7ae9: $00
    xor $10                                       ; $7aea: $ee $10
    rst $38                                       ; $7aec: $ff
    nop                                           ; $7aed: $00
    rst $38                                       ; $7aee: $ff
    nop                                           ; $7aef: $00
    rst $38                                       ; $7af0: $ff
    nop                                           ; $7af1: $00
    rst $38                                       ; $7af2: $ff
    nop                                           ; $7af3: $00
    ld a, [hl]                                    ; $7af4: $7e
    add c                                         ; $7af5: $81

jr_076_7af6:
    ld a, [hl]                                    ; $7af6: $7e
    add c                                         ; $7af7: $81
    ld a, [hl]                                    ; $7af8: $7e
    add c                                         ; $7af9: $81
    ld a, [hl]                                    ; $7afa: $7e
    add c                                         ; $7afb: $81
    ld a, [hl]                                    ; $7afc: $7e
    add c                                         ; $7afd: $81
    ld a, [hl]                                    ; $7afe: $7e
    add c                                         ; $7aff: $81
    add c                                         ; $7b00: $81
    rst $38                                       ; $7b01: $ff
    xor c                                         ; $7b02: $a9
    rst $10                                       ; $7b03: $d7
    or e                                          ; $7b04: $b3
    push bc                                       ; $7b05: $c5
    sub a                                         ; $7b06: $97
    pop bc                                        ; $7b07: $c1
    xor e                                         ; $7b08: $ab
    pop de                                        ; $7b09: $d1

jr_076_7b0a:
    sub e                                         ; $7b0a: $93
    ret                                           ; $7b0b: $c9


    xor e                                         ; $7b0c: $ab
    pop de                                        ; $7b0d: $d1
    rst $10                                       ; $7b0e: $d7
    jp hl                                         ; $7b0f: $e9


    rst $38                                       ; $7b10: $ff
    nop                                           ; $7b11: $00
    rst $38                                       ; $7b12: $ff
    nop                                           ; $7b13: $00
    rst $38                                       ; $7b14: $ff
    nop                                           ; $7b15: $00
    ld [hl], a                                    ; $7b16: $77
    nop                                           ; $7b17: $00
    rst $38                                       ; $7b18: $ff
    nop                                           ; $7b19: $00
    ld d, l                                       ; $7b1a: $55
    nop                                           ; $7b1b: $00
    cp e                                          ; $7b1c: $bb
    nop                                           ; $7b1d: $00
    ld d, l                                       ; $7b1e: $55
    nop                                           ; $7b1f: $00
    xor d                                         ; $7b20: $aa
    nop                                           ; $7b21: $00
    ld d, l                                       ; $7b22: $55
    nop                                           ; $7b23: $00
    xor d                                         ; $7b24: $aa
    nop                                           ; $7b25: $00
    nop                                           ; $7b26: $00
    nop                                           ; $7b27: $00
    xor d                                         ; $7b28: $aa
    nop                                           ; $7b29: $00
    nop                                           ; $7b2a: $00
    nop                                           ; $7b2b: $00
    nop                                           ; $7b2c: $00
    nop                                           ; $7b2d: $00
    nop                                           ; $7b2e: $00
    nop                                           ; $7b2f: $00
    nop                                           ; $7b30: $00
    nop                                           ; $7b31: $00
    nop                                           ; $7b32: $00
    nop                                           ; $7b33: $00
    jr nz, jr_076_7af6                            ; $7b34: $20 $c0

    ld [$00f0], sp                                ; $7b36: $08 $f0 $00
    rst $38                                       ; $7b39: $ff
    nop                                           ; $7b3a: $00
    rst $38                                       ; $7b3b: $ff
    nop                                           ; $7b3c: $00
    rst $38                                       ; $7b3d: $ff
    nop                                           ; $7b3e: $00
    rst $38                                       ; $7b3f: $ff
    nop                                           ; $7b40: $00

jr_076_7b41:
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    nop                                           ; $7b43: $00
    nop                                           ; $7b44: $00
    nop                                           ; $7b45: $00
    nop                                           ; $7b46: $00
    nop                                           ; $7b47: $00
    jr nc, jr_076_7b0a                            ; $7b48: $30 $c0

    inc h                                         ; $7b4a: $24
    ld hl, sp+$21                                 ; $7b4b: $f8 $21

jr_076_7b4d:
    cp $64                                        ; $7b4d: $fe $64
    ei                                            ; $7b4f: $fb
    nop                                           ; $7b50: $00
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    nop                                           ; $7b53: $00
    nop                                           ; $7b54: $00
    nop                                           ; $7b55: $00
    nop                                           ; $7b56: $00
    nop                                           ; $7b57: $00
    ld bc, $0400                                  ; $7b58: $01 $00 $04
    inc bc                                        ; $7b5b: $03
    ld [hl], c                                    ; $7b5c: $71
    ld c, [hl]                                    ; $7b5d: $4e
    ld b, d                                       ; $7b5e: $42
    db $fd                                        ; $7b5f: $fd
    nop                                           ; $7b60: $00
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    nop                                           ; $7b63: $00
    ld [$4507], sp                                ; $7b64: $08 $07 $45
    ld a, [hl-]                                   ; $7b67: $3a
    jr z, jr_076_7b41                             ; $7b68: $28 $d7

    ld [hl], h                                    ; $7b6a: $74
    adc e                                         ; $7b6b: $8b
    jr nz, jr_076_7b4d                            ; $7b6c: $20 $df

    nop                                           ; $7b6e: $00
    rst $38                                       ; $7b6f: $ff
    nop                                           ; $7b70: $00
    rst $38                                       ; $7b71: $ff
    nop                                           ; $7b72: $00
    rst $38                                       ; $7b73: $ff
    nop                                           ; $7b74: $00
    rst $38                                       ; $7b75: $ff
    nop                                           ; $7b76: $00
    rst $38                                       ; $7b77: $ff
    nop                                           ; $7b78: $00
    rst $38                                       ; $7b79: $ff
    nop                                           ; $7b7a: $00
    rst $38                                       ; $7b7b: $ff
    nop                                           ; $7b7c: $00
    rst $38                                       ; $7b7d: $ff
    nop                                           ; $7b7e: $00
    rst $38                                       ; $7b7f: $ff
    ld a, b                                       ; $7b80: $78
    rst $30                                       ; $7b81: $f7
    ld sp, hl                                     ; $7b82: $f9
    cp $71                                        ; $7b83: $fe $71
    rst $38                                       ; $7b85: $ff
    ld a, b                                       ; $7b86: $78
    rst $38                                       ; $7b87: $ff
    db $fd                                        ; $7b88: $fd
    rst $38                                       ; $7b89: $ff
    inc sp                                        ; $7b8a: $33
    rst $38                                       ; $7b8b: $ff
    nop                                           ; $7b8c: $00
    rst $38                                       ; $7b8d: $ff
    nop                                           ; $7b8e: $00
    rst $38                                       ; $7b8f: $ff
    ld h, b                                       ; $7b90: $60
    rst $38                                       ; $7b91: $ff
    jp hl                                         ; $7b92: $e9


    or $f0                                        ; $7b93: $f6 $f0
    rst $38                                       ; $7b95: $ff
    ldh [rIE], a                                  ; $7b96: $e0 $ff
    ldh [rIE], a                                  ; $7b98: $e0 $ff
    ldh a, [rIE]                                  ; $7b9a: $f0 $ff
    ret nz                                        ; $7b9c: $c0

    rst $38                                       ; $7b9d: $ff
    nop                                           ; $7b9e: $00
    rst $38                                       ; $7b9f: $ff
    add b                                         ; $7ba0: $80
    ld a, a                                       ; $7ba1: $7f
    nop                                           ; $7ba2: $00
    rst $38                                       ; $7ba3: $ff
    nop                                           ; $7ba4: $00
    rst $38                                       ; $7ba5: $ff
    nop                                           ; $7ba6: $00
    rst $38                                       ; $7ba7: $ff
    nop                                           ; $7ba8: $00
    rst $38                                       ; $7ba9: $ff
    nop                                           ; $7baa: $00
    rst $38                                       ; $7bab: $ff
    nop                                           ; $7bac: $00
    rst $38                                       ; $7bad: $ff
    nop                                           ; $7bae: $00
    rst $38                                       ; $7baf: $ff
    nop                                           ; $7bb0: $00
    rst $38                                       ; $7bb1: $ff
    nop                                           ; $7bb2: $00
    rst $38                                       ; $7bb3: $ff
    nop                                           ; $7bb4: $00
    rst $38                                       ; $7bb5: $ff
    nop                                           ; $7bb6: $00
    rst $38                                       ; $7bb7: $ff
    nop                                           ; $7bb8: $00
    rst $38                                       ; $7bb9: $ff
    nop                                           ; $7bba: $00
    rst $38                                       ; $7bbb: $ff
    nop                                           ; $7bbc: $00
    rst $38                                       ; $7bbd: $ff
    nop                                           ; $7bbe: $00
    rst $38                                       ; $7bbf: $ff
    nop                                           ; $7bc0: $00
    rst $38                                       ; $7bc1: $ff
    nop                                           ; $7bc2: $00
    rst $38                                       ; $7bc3: $ff
    ld [$08ff], sp                                ; $7bc4: $08 $ff $08
    rst $38                                       ; $7bc7: $ff
    ld [$08ff], sp                                ; $7bc8: $08 $ff $08
    rst $38                                       ; $7bcb: $ff
    inc c                                         ; $7bcc: $0c
    rst $38                                       ; $7bcd: $ff
    inc c                                         ; $7bce: $0c
    rst $38                                       ; $7bcf: $ff
    nop                                           ; $7bd0: $00
    rst $38                                       ; $7bd1: $ff
    nop                                           ; $7bd2: $00
    rst $38                                       ; $7bd3: $ff
    nop                                           ; $7bd4: $00
    rst $38                                       ; $7bd5: $ff
    add b                                         ; $7bd6: $80
    rst $38                                       ; $7bd7: $ff
    nop                                           ; $7bd8: $00
    rst $38                                       ; $7bd9: $ff
    nop                                           ; $7bda: $00
    rst $38                                       ; $7bdb: $ff
    nop                                           ; $7bdc: $00
    rst $38                                       ; $7bdd: $ff
    nop                                           ; $7bde: $00
    rst $38                                       ; $7bdf: $ff
    ld e, $ff                                     ; $7be0: $1e $ff
    ld e, $ff                                     ; $7be2: $1e $ff
    ccf                                           ; $7be4: $3f
    rst $38                                       ; $7be5: $ff
    ld a, a                                       ; $7be6: $7f
    rst $38                                       ; $7be7: $ff
    ccf                                           ; $7be8: $3f
    rst $38                                       ; $7be9: $ff
    ld e, $ff                                     ; $7bea: $1e $ff
    rra                                           ; $7bec: $1f
    rst $38                                       ; $7bed: $ff
    ccf                                           ; $7bee: $3f
    rst $38                                       ; $7bef: $ff
    add b                                         ; $7bf0: $80
    rst $38                                       ; $7bf1: $ff
    add b                                         ; $7bf2: $80
    rst $38                                       ; $7bf3: $ff
    ret nz                                        ; $7bf4: $c0

    rst $38                                       ; $7bf5: $ff
    ldh [rIE], a                                  ; $7bf6: $e0 $ff
    nop                                           ; $7bf8: $00
    rst $38                                       ; $7bf9: $ff
    nop                                           ; $7bfa: $00
    rst $38                                       ; $7bfb: $ff
    nop                                           ; $7bfc: $00
    rst $38                                       ; $7bfd: $ff
    nop                                           ; $7bfe: $00
    rst $38                                       ; $7bff: $ff
    ccf                                           ; $7c00: $3f
    rst $38                                       ; $7c01: $ff
    ccf                                           ; $7c02: $3f
    rst $38                                       ; $7c03: $ff
    ld a, a                                       ; $7c04: $7f
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    inc c                                         ; $7c08: $0c
    rst $38                                       ; $7c09: $ff
    inc c                                         ; $7c0a: $0c
    rst $38                                       ; $7c0b: $ff
    nop                                           ; $7c0c: $00
    rst $38                                       ; $7c0d: $ff
    nop                                           ; $7c0e: $00
    rst $38                                       ; $7c0f: $ff
    nop                                           ; $7c10: $00
    rst $38                                       ; $7c11: $ff
    nop                                           ; $7c12: $00
    rst $38                                       ; $7c13: $ff
    nop                                           ; $7c14: $00
    rst $38                                       ; $7c15: $ff
    nop                                           ; $7c16: $00
    rst $38                                       ; $7c17: $ff
    nop                                           ; $7c18: $00
    rst $38                                       ; $7c19: $ff
    nop                                           ; $7c1a: $00
    rst $38                                       ; $7c1b: $ff
    nop                                           ; $7c1c: $00
    rst $38                                       ; $7c1d: $ff
    nop                                           ; $7c1e: $00
    rst $38                                       ; $7c1f: $ff
    nop                                           ; $7c20: $00
    rst $38                                       ; $7c21: $ff
    nop                                           ; $7c22: $00
    rst $38                                       ; $7c23: $ff
    nop                                           ; $7c24: $00
    rst $38                                       ; $7c25: $ff
    nop                                           ; $7c26: $00
    rst $38                                       ; $7c27: $ff
    nop                                           ; $7c28: $00
    rst $38                                       ; $7c29: $ff
    nop                                           ; $7c2a: $00
    rst $38                                       ; $7c2b: $ff
    nop                                           ; $7c2c: $00
    rst $38                                       ; $7c2d: $ff
    nop                                           ; $7c2e: $00
    rst $38                                       ; $7c2f: $ff
    nop                                           ; $7c30: $00
    rst $38                                       ; $7c31: $ff
    nop                                           ; $7c32: $00
    rst $38                                       ; $7c33: $ff
    nop                                           ; $7c34: $00
    rst $38                                       ; $7c35: $ff
    nop                                           ; $7c36: $00
    rst $38                                       ; $7c37: $ff
    nop                                           ; $7c38: $00
    rst $38                                       ; $7c39: $ff
    nop                                           ; $7c3a: $00
    rst $38                                       ; $7c3b: $ff
    ld bc, $1ffe                                  ; $7c3c: $01 $fe $1f
    ldh [rP1], a                                  ; $7c3f: $e0 $00
    rst $38                                       ; $7c41: $ff
    nop                                           ; $7c42: $00
    rst $38                                       ; $7c43: $ff
    nop                                           ; $7c44: $00
    rst $38                                       ; $7c45: $ff
    nop                                           ; $7c46: $00
    rst $38                                       ; $7c47: $ff
    nop                                           ; $7c48: $00
    rst $38                                       ; $7c49: $ff
    nop                                           ; $7c4a: $00
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    nop                                           ; $7c4d: $00
    ld d, b                                       ; $7c4e: $50
    nop                                           ; $7c4f: $00
    nop                                           ; $7c50: $00
    rst $38                                       ; $7c51: $ff
    ldh [$1f], a                                  ; $7c52: $e0 $1f
    ccf                                           ; $7c54: $3f
    nop                                           ; $7c55: $00
    rlca                                          ; $7c56: $07
    nop                                           ; $7c57: $00
    ld [bc], a                                    ; $7c58: $02
    nop                                           ; $7c59: $00
    ld bc, $0000                                  ; $7c5a: $01 $00 $00
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    nop                                           ; $7c60: $00
    rst $38                                       ; $7c61: $ff
    rra                                           ; $7c62: $1f
    ldh [$7f], a                                  ; $7c63: $e0 $7f
    add b                                         ; $7c65: $80
    push af                                       ; $7c66: $f5
    nop                                           ; $7c67: $00
    xor d                                         ; $7c68: $aa
    nop                                           ; $7c69: $00
    ld d, l                                       ; $7c6a: $55
    nop                                           ; $7c6b: $00
    nop                                           ; $7c6c: $00
    nop                                           ; $7c6d: $00
    nop                                           ; $7c6e: $00
    nop                                           ; $7c6f: $00
    cp $00                                        ; $7c70: $fe $00
    db $f4                                        ; $7c72: $f4
    nop                                           ; $7c73: $00
    xor b                                         ; $7c74: $a8
    nop                                           ; $7c75: $00
    ld b, b                                       ; $7c76: $40
    nop                                           ; $7c77: $00
    add b                                         ; $7c78: $80
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00
    nop                                           ; $7c7b: $00
    nop                                           ; $7c7c: $00
    nop                                           ; $7c7d: $00
    nop                                           ; $7c7e: $00
    nop                                           ; $7c7f: $00
    add b                                         ; $7c80: $80
    nop                                           ; $7c81: $00
    nop                                           ; $7c82: $00
    nop                                           ; $7c83: $00
    nop                                           ; $7c84: $00
    nop                                           ; $7c85: $00
    nop                                           ; $7c86: $00
    nop                                           ; $7c87: $00
    nop                                           ; $7c88: $00
    nop                                           ; $7c89: $00
    nop                                           ; $7c8a: $00
    nop                                           ; $7c8b: $00
    nop                                           ; $7c8c: $00
    nop                                           ; $7c8d: $00
    nop                                           ; $7c8e: $00
    nop                                           ; $7c8f: $00
    rst $38                                       ; $7c90: $ff
    nop                                           ; $7c91: $00
    cp [hl]                                       ; $7c92: $be
    ld bc, $08f6                                  ; $7c93: $01 $f6 $08
    rst $38                                       ; $7c96: $ff
    nop                                           ; $7c97: $00
    rst $28                                       ; $7c98: $ef
    nop                                           ; $7c99: $00
    ld a, a                                       ; $7c9a: $7f
    add b                                         ; $7c9b: $80
    ei                                            ; $7c9c: $fb
    nop                                           ; $7c9d: $00
    rst $38                                       ; $7c9e: $ff
    nop                                           ; $7c9f: $00
    ei                                            ; $7ca0: $fb
    inc b                                         ; $7ca1: $04
    sbc $00                                       ; $7ca2: $de $00
    rst $38                                       ; $7ca4: $ff
    nop                                           ; $7ca5: $00
    rst $28                                       ; $7ca6: $ef
    nop                                           ; $7ca7: $00
    cp e                                          ; $7ca8: $bb
    inc b                                         ; $7ca9: $04
    rst $38                                       ; $7caa: $ff
    nop                                           ; $7cab: $00
    cp a                                          ; $7cac: $bf
    nop                                           ; $7cad: $00
    cp $00                                        ; $7cae: $fe $00
    rst $38                                       ; $7cb0: $ff
    nop                                           ; $7cb1: $00
    ei                                            ; $7cb2: $fb
    nop                                           ; $7cb3: $00
    cp a                                          ; $7cb4: $bf
    nop                                           ; $7cb5: $00
    or $08                                        ; $7cb6: $f6 $08
    ld a, a                                       ; $7cb8: $7f
    nop                                           ; $7cb9: $00
    rst $38                                       ; $7cba: $ff
    nop                                           ; $7cbb: $00
    cp $01                                        ; $7cbc: $fe $01
    rst $28                                       ; $7cbe: $ef
    nop                                           ; $7cbf: $00
    db $fd                                        ; $7cc0: $fd
    ld [bc], a                                    ; $7cc1: $02
    rst $10                                       ; $7cc2: $d7

jr_076_7cc3:
    jr nz, jr_076_7cc3                            ; $7cc3: $20 $fe

    ld bc, $00ff                                  ; $7cc5: $01 $ff $00
    ei                                            ; $7cc8: $fb
    nop                                           ; $7cc9: $00
    rst $18                                       ; $7cca: $df
    jr nz, @+$01                                  ; $7ccb: $20 $ff

    nop                                           ; $7ccd: $00
    rst $38                                       ; $7cce: $ff
    nop                                           ; $7ccf: $00
    ld l, a                                       ; $7cd0: $6f
    db $10                                        ; $7cd1: $10
    ei                                            ; $7cd2: $fb
    nop                                           ; $7cd3: $00
    rst $38                                       ; $7cd4: $ff
    nop                                           ; $7cd5: $00
    ld a, a                                       ; $7cd6: $7f
    nop                                           ; $7cd7: $00
    rst $38                                       ; $7cd8: $ff
    nop                                           ; $7cd9: $00
    xor $10                                       ; $7cda: $ee $10
    rst $38                                       ; $7cdc: $ff
    nop                                           ; $7cdd: $00
    rst $38                                       ; $7cde: $ff
    nop                                           ; $7cdf: $00
    cp a                                          ; $7ce0: $bf
    ld b, b                                       ; $7ce1: $40
    db $ed                                        ; $7ce2: $ed
    ld [bc], a                                    ; $7ce3: $02
    rst $38                                       ; $7ce4: $ff
    nop                                           ; $7ce5: $00
    cp a                                          ; $7ce6: $bf
    nop                                           ; $7ce7: $00
    sbc $20                                       ; $7ce8: $de $20
    rst $38                                       ; $7cea: $ff
    nop                                           ; $7ceb: $00
    rst $28                                       ; $7cec: $ef
    nop                                           ; $7ced: $00
    rst $38                                       ; $7cee: $ff
    nop                                           ; $7cef: $00
    add c                                         ; $7cf0: $81
    rst $38                                       ; $7cf1: $ff
    xor c                                         ; $7cf2: $a9
    rst $10                                       ; $7cf3: $d7
    or e                                          ; $7cf4: $b3
    push bc                                       ; $7cf5: $c5
    sub a                                         ; $7cf6: $97
    pop bc                                        ; $7cf7: $c1
    xor e                                         ; $7cf8: $ab
    pop de                                        ; $7cf9: $d1
    sub e                                         ; $7cfa: $93
    ret                                           ; $7cfb: $c9


    xor e                                         ; $7cfc: $ab
    pop de                                        ; $7cfd: $d1
    rst $10                                       ; $7cfe: $d7
    jp hl                                         ; $7cff: $e9


    rst $38                                       ; $7d00: $ff
    nop                                           ; $7d01: $00
    rst $38                                       ; $7d02: $ff
    nop                                           ; $7d03: $00
    ld a, [hl]                                    ; $7d04: $7e
    add c                                         ; $7d05: $81
    ld a, [hl]                                    ; $7d06: $7e
    add c                                         ; $7d07: $81
    ld a, [hl]                                    ; $7d08: $7e
    add c                                         ; $7d09: $81
    ld a, [hl]                                    ; $7d0a: $7e
    add c                                         ; $7d0b: $81
    ld a, [hl]                                    ; $7d0c: $7e
    add c                                         ; $7d0d: $81
    ld a, [hl]                                    ; $7d0e: $7e
    add c                                         ; $7d0f: $81
    rst $38                                       ; $7d10: $ff
    nop                                           ; $7d11: $00
    rst $38                                       ; $7d12: $ff
    nop                                           ; $7d13: $00
    rst $38                                       ; $7d14: $ff
    nop                                           ; $7d15: $00
    ld [hl], a                                    ; $7d16: $77
    nop                                           ; $7d17: $00
    rst $38                                       ; $7d18: $ff
    nop                                           ; $7d19: $00
    ld d, l                                       ; $7d1a: $55
    nop                                           ; $7d1b: $00
    cp e                                          ; $7d1c: $bb
    nop                                           ; $7d1d: $00
    ld d, l                                       ; $7d1e: $55
    nop                                           ; $7d1f: $00
    xor d                                         ; $7d20: $aa
    nop                                           ; $7d21: $00
    ld d, l                                       ; $7d22: $55
    nop                                           ; $7d23: $00
    xor d                                         ; $7d24: $aa
    nop                                           ; $7d25: $00
    nop                                           ; $7d26: $00
    nop                                           ; $7d27: $00
    xor d                                         ; $7d28: $aa
    nop                                           ; $7d29: $00
    nop                                           ; $7d2a: $00
    nop                                           ; $7d2b: $00
    nop                                           ; $7d2c: $00
    nop                                           ; $7d2d: $00
    nop                                           ; $7d2e: $00
    nop                                           ; $7d2f: $00
    nop                                           ; $7d30: $00
    nop                                           ; $7d31: $00
    nop                                           ; $7d32: $00
    nop                                           ; $7d33: $00
    ld b, b                                       ; $7d34: $40
    add b                                         ; $7d35: $80
    db $10                                        ; $7d36: $10
    ldh [rP1], a                                  ; $7d37: $e0 $00
    rst $38                                       ; $7d39: $ff
    nop                                           ; $7d3a: $00
    rst $38                                       ; $7d3b: $ff
    nop                                           ; $7d3c: $00
    rst $38                                       ; $7d3d: $ff
    ld bc, $00ff                                  ; $7d3e: $01 $ff $00
    nop                                           ; $7d41: $00
    nop                                           ; $7d42: $00
    nop                                           ; $7d43: $00
    nop                                           ; $7d44: $00
    nop                                           ; $7d45: $00
    nop                                           ; $7d46: $00
    nop                                           ; $7d47: $00
    ld h, b                                       ; $7d48: $60
    add b                                         ; $7d49: $80
    adc b                                         ; $7d4a: $88
    ldh a, [$83]                                  ; $7d4b: $f0 $83
    db $fd                                        ; $7d4d: $fd
    adc c                                         ; $7d4e: $89
    rst $30                                       ; $7d4f: $f7
    nop                                           ; $7d50: $00
    nop                                           ; $7d51: $00
    nop                                           ; $7d52: $00
    nop                                           ; $7d53: $00
    nop                                           ; $7d54: $00
    nop                                           ; $7d55: $00
    nop                                           ; $7d56: $00
    nop                                           ; $7d57: $00
    ld [bc], a                                    ; $7d58: $02
    ld bc, $0708                                  ; $7d59: $01 $08 $07
    ld h, d                                       ; $7d5c: $62
    dec e                                         ; $7d5d: $1d
    inc b                                         ; $7d5e: $04
    ei                                            ; $7d5f: $fb
    nop                                           ; $7d60: $00
    nop                                           ; $7d61: $00
    nop                                           ; $7d62: $00
    nop                                           ; $7d63: $00
    db $10                                        ; $7d64: $10
    rrca                                          ; $7d65: $0f
    adc d                                         ; $7d66: $8a
    ld [hl], l                                    ; $7d67: $75
    ld d, b                                       ; $7d68: $50
    xor a                                         ; $7d69: $af
    add sp, $17                                   ; $7d6a: $e8 $17
    ld b, b                                       ; $7d6c: $40
    cp a                                          ; $7d6d: $bf
    nop                                           ; $7d6e: $00
    rst $38                                       ; $7d6f: $ff
    ld bc, $03ff                                  ; $7d70: $01 $ff $03
    rst $38                                       ; $7d73: $ff
    ld bc, $01ff                                  ; $7d74: $01 $ff $01
    rst $38                                       ; $7d77: $ff
    inc bc                                        ; $7d78: $03
    rst $38                                       ; $7d79: $ff
    nop                                           ; $7d7a: $00
    rst $38                                       ; $7d7b: $ff
    nop                                           ; $7d7c: $00
    rst $38                                       ; $7d7d: $ff
    nop                                           ; $7d7e: $00
    rst $38                                       ; $7d7f: $ff
    pop de                                        ; $7d80: $d1
    rst $28                                       ; $7d81: $ef
    db $e3                                        ; $7d82: $e3
    rst $38                                       ; $7d83: $ff
    rst $00                                       ; $7d84: $c7
    rst $38                                       ; $7d85: $ff
    db $e3                                        ; $7d86: $e3
    rst $38                                       ; $7d87: $ff
    rst $30                                       ; $7d88: $f7
    rst $38                                       ; $7d89: $ff
    rst $08                                       ; $7d8a: $cf
    rst $38                                       ; $7d8b: $ff
    inc bc                                        ; $7d8c: $03
    rst $38                                       ; $7d8d: $ff
    nop                                           ; $7d8e: $00
    rst $38                                       ; $7d8f: $ff
    add c                                         ; $7d90: $81
    cp $92                                        ; $7d91: $fe $92
    db $ed                                        ; $7d93: $ed
    ldh [$df], a                                  ; $7d94: $e0 $df
    add b                                         ; $7d96: $80
    rst $38                                       ; $7d97: $ff
    add b                                         ; $7d98: $80
    rst $38                                       ; $7d99: $ff
    ret nz                                        ; $7d9a: $c0

    rst $38                                       ; $7d9b: $ff
    nop                                           ; $7d9c: $00
    rst $38                                       ; $7d9d: $ff
    nop                                           ; $7d9e: $00
    rst $38                                       ; $7d9f: $ff
    nop                                           ; $7da0: $00
    rst $38                                       ; $7da1: $ff
    nop                                           ; $7da2: $00
    rst $38                                       ; $7da3: $ff
    nop                                           ; $7da4: $00
    rst $38                                       ; $7da5: $ff
    nop                                           ; $7da6: $00
    rst $38                                       ; $7da7: $ff
    nop                                           ; $7da8: $00
    rst $38                                       ; $7da9: $ff
    nop                                           ; $7daa: $00
    rst $38                                       ; $7dab: $ff
    nop                                           ; $7dac: $00
    rst $38                                       ; $7dad: $ff
    nop                                           ; $7dae: $00
    rst $38                                       ; $7daf: $ff
    nop                                           ; $7db0: $00
    rst $38                                       ; $7db1: $ff
    nop                                           ; $7db2: $00
    rst $38                                       ; $7db3: $ff
    nop                                           ; $7db4: $00
    rst $38                                       ; $7db5: $ff
    nop                                           ; $7db6: $00
    rst $38                                       ; $7db7: $ff
    nop                                           ; $7db8: $00
    rst $38                                       ; $7db9: $ff
    nop                                           ; $7dba: $00
    rst $38                                       ; $7dbb: $ff
    nop                                           ; $7dbc: $00
    rst $38                                       ; $7dbd: $ff
    nop                                           ; $7dbe: $00
    rst $38                                       ; $7dbf: $ff
    nop                                           ; $7dc0: $00
    rst $38                                       ; $7dc1: $ff
    nop                                           ; $7dc2: $00
    rst $38                                       ; $7dc3: $ff
    add b                                         ; $7dc4: $80
    rst $38                                       ; $7dc5: $ff
    add b                                         ; $7dc6: $80
    rst $38                                       ; $7dc7: $ff
    add b                                         ; $7dc8: $80
    rst $38                                       ; $7dc9: $ff
    add b                                         ; $7dca: $80
    rst $38                                       ; $7dcb: $ff
    ret nz                                        ; $7dcc: $c0

    rst $38                                       ; $7dcd: $ff
    ret nz                                        ; $7dce: $c0

    rst $38                                       ; $7dcf: $ff
    ld bc, $01ff                                  ; $7dd0: $01 $ff $01
    rst $38                                       ; $7dd3: $ff
    inc bc                                        ; $7dd4: $03
    rst $38                                       ; $7dd5: $ff
    rlca                                          ; $7dd6: $07
    rst $38                                       ; $7dd7: $ff
    inc bc                                        ; $7dd8: $03
    rst $38                                       ; $7dd9: $ff
    ld bc, $01ff                                  ; $7dda: $01 $ff $01
    rst $38                                       ; $7ddd: $ff
    inc bc                                        ; $7dde: $03
    rst $38                                       ; $7ddf: $ff
    ldh [rIE], a                                  ; $7de0: $e0 $ff
    ldh [rIE], a                                  ; $7de2: $e0 $ff
    ldh a, [rIE]                                  ; $7de4: $f0 $ff
    ld hl, sp-$01                                 ; $7de6: $f8 $ff
    ldh a, [rIE]                                  ; $7de8: $f0 $ff
    ldh [rIE], a                                  ; $7dea: $e0 $ff
    ldh a, [rIE]                                  ; $7dec: $f0 $ff
    ldh a, [rIE]                                  ; $7dee: $f0 $ff
    inc bc                                        ; $7df0: $03
    rst $38                                       ; $7df1: $ff
    inc bc                                        ; $7df2: $03
    rst $38                                       ; $7df3: $ff
    rlca                                          ; $7df4: $07
    rst $38                                       ; $7df5: $ff
    rrca                                          ; $7df6: $0f
    rst $38                                       ; $7df7: $ff
    nop                                           ; $7df8: $00
    rst $38                                       ; $7df9: $ff
    nop                                           ; $7dfa: $00
    rst $38                                       ; $7dfb: $ff
    nop                                           ; $7dfc: $00
    rst $38                                       ; $7dfd: $ff
    nop                                           ; $7dfe: $00
    rst $38                                       ; $7dff: $ff
    ld hl, sp-$01                                 ; $7e00: $f8 $ff
    ld hl, sp-$01                                 ; $7e02: $f8 $ff
    db $fc                                        ; $7e04: $fc
    rst $38                                       ; $7e05: $ff
    cp $ff                                        ; $7e06: $fe $ff
    ret nz                                        ; $7e08: $c0

    rst $38                                       ; $7e09: $ff
    ret nz                                        ; $7e0a: $c0

    rst $38                                       ; $7e0b: $ff
    nop                                           ; $7e0c: $00
    rst $38                                       ; $7e0d: $ff
    nop                                           ; $7e0e: $00
    rst $38                                       ; $7e0f: $ff
    nop                                           ; $7e10: $00
    rst $38                                       ; $7e11: $ff
    nop                                           ; $7e12: $00
    rst $38                                       ; $7e13: $ff
    nop                                           ; $7e14: $00
    rst $38                                       ; $7e15: $ff
    nop                                           ; $7e16: $00
    rst $38                                       ; $7e17: $ff
    nop                                           ; $7e18: $00
    rst $38                                       ; $7e19: $ff
    nop                                           ; $7e1a: $00
    rst $38                                       ; $7e1b: $ff
    nop                                           ; $7e1c: $00
    rst $38                                       ; $7e1d: $ff
    nop                                           ; $7e1e: $00
    rst $38                                       ; $7e1f: $ff
    nop                                           ; $7e20: $00
    rst $38                                       ; $7e21: $ff
    nop                                           ; $7e22: $00
    rst $38                                       ; $7e23: $ff
    nop                                           ; $7e24: $00
    rst $38                                       ; $7e25: $ff
    nop                                           ; $7e26: $00
    rst $38                                       ; $7e27: $ff
    nop                                           ; $7e28: $00
    rst $38                                       ; $7e29: $ff
    nop                                           ; $7e2a: $00
    rst $38                                       ; $7e2b: $ff
    nop                                           ; $7e2c: $00
    rst $38                                       ; $7e2d: $ff
    rlca                                          ; $7e2e: $07
    ld hl, sp+$00                                 ; $7e2f: $f8 $00
    rst $38                                       ; $7e31: $ff
    nop                                           ; $7e32: $00
    rst $38                                       ; $7e33: $ff
    nop                                           ; $7e34: $00
    rst $38                                       ; $7e35: $ff
    nop                                           ; $7e36: $00
    rst $38                                       ; $7e37: $ff
    nop                                           ; $7e38: $00
    rst $38                                       ; $7e39: $ff
    nop                                           ; $7e3a: $00
    rst $38                                       ; $7e3b: $ff
    ld a, a                                       ; $7e3c: $7f
    add b                                         ; $7e3d: $80
    call nc, RST_00                               ; $7e3e: $d4 $00 $00
    rst $38                                       ; $7e41: $ff
    nop                                           ; $7e42: $00
    rst $38                                       ; $7e43: $ff
    nop                                           ; $7e44: $00
    rst $38                                       ; $7e45: $ff
    nop                                           ; $7e46: $00
    rst $38                                       ; $7e47: $ff
    nop                                           ; $7e48: $00
    rst $38                                       ; $7e49: $ff
    nop                                           ; $7e4a: $00
    rst $38                                       ; $7e4b: $ff
    ldh a, [rIF]                                  ; $7e4c: $f0 $0f
    rra                                           ; $7e4e: $1f
    nop                                           ; $7e4f: $00
    nop                                           ; $7e50: $00
    rst $38                                       ; $7e51: $ff
    rlca                                          ; $7e52: $07
    ld hl, sp-$21                                 ; $7e53: $f8 $df
    jr nz, @-$01                                  ; $7e55: $20 $fd

    nop                                           ; $7e57: $00
    xor d                                         ; $7e58: $aa
    nop                                           ; $7e59: $00
    ld d, l                                       ; $7e5a: $55
    nop                                           ; $7e5b: $00
    nop                                           ; $7e5c: $00
    nop                                           ; $7e5d: $00
    nop                                           ; $7e5e: $00
    nop                                           ; $7e5f: $00
    ccf                                           ; $7e60: $3f
    ret nz                                        ; $7e61: $c0

    db $fd                                        ; $7e62: $fd
    nop                                           ; $7e63: $00
    ld [$5000], a                                 ; $7e64: $ea $00 $50
    nop                                           ; $7e67: $00
    and b                                         ; $7e68: $a0
    nop                                           ; $7e69: $00
    ld b, b                                       ; $7e6a: $40
    nop                                           ; $7e6b: $00
    nop                                           ; $7e6c: $00
    nop                                           ; $7e6d: $00
    nop                                           ; $7e6e: $00
    nop                                           ; $7e6f: $00
    and b                                         ; $7e70: $a0
    nop                                           ; $7e71: $00
    nop                                           ; $7e72: $00
    nop                                           ; $7e73: $00
    nop                                           ; $7e74: $00
    nop                                           ; $7e75: $00
    nop                                           ; $7e76: $00
    nop                                           ; $7e77: $00
    nop                                           ; $7e78: $00
    nop                                           ; $7e79: $00
    nop                                           ; $7e7a: $00
    nop                                           ; $7e7b: $00
    nop                                           ; $7e7c: $00
    nop                                           ; $7e7d: $00
    nop                                           ; $7e7e: $00
    nop                                           ; $7e7f: $00
    nop                                           ; $7e80: $00
    nop                                           ; $7e81: $00
    nop                                           ; $7e82: $00
    nop                                           ; $7e83: $00
    nop                                           ; $7e84: $00
    nop                                           ; $7e85: $00
    nop                                           ; $7e86: $00
    nop                                           ; $7e87: $00
    nop                                           ; $7e88: $00
    nop                                           ; $7e89: $00
    nop                                           ; $7e8a: $00
    nop                                           ; $7e8b: $00
    nop                                           ; $7e8c: $00
    nop                                           ; $7e8d: $00
    nop                                           ; $7e8e: $00
    nop                                           ; $7e8f: $00
    ei                                            ; $7e90: $fb
    inc b                                         ; $7e91: $04
    sbc $00                                       ; $7e92: $de $00
    rst $38                                       ; $7e94: $ff
    nop                                           ; $7e95: $00
    rst $28                                       ; $7e96: $ef
    nop                                           ; $7e97: $00
    cp e                                          ; $7e98: $bb
    inc b                                         ; $7e99: $04
    rst $38                                       ; $7e9a: $ff
    nop                                           ; $7e9b: $00
    cp a                                          ; $7e9c: $bf
    nop                                           ; $7e9d: $00
    cp $00                                        ; $7e9e: $fe $00
    rst $38                                       ; $7ea0: $ff
    nop                                           ; $7ea1: $00
    ei                                            ; $7ea2: $fb
    nop                                           ; $7ea3: $00
    cp a                                          ; $7ea4: $bf
    nop                                           ; $7ea5: $00
    or $08                                        ; $7ea6: $f6 $08
    ld a, a                                       ; $7ea8: $7f
    nop                                           ; $7ea9: $00
    rst $38                                       ; $7eaa: $ff
    nop                                           ; $7eab: $00
    cp $01                                        ; $7eac: $fe $01
    rst $28                                       ; $7eae: $ef
    nop                                           ; $7eaf: $00
    db $fd                                        ; $7eb0: $fd
    ld [bc], a                                    ; $7eb1: $02
    rst $10                                       ; $7eb2: $d7

jr_076_7eb3:
    jr nz, jr_076_7eb3                            ; $7eb3: $20 $fe

    ld bc, $00ff                                  ; $7eb5: $01 $ff $00
    ei                                            ; $7eb8: $fb
    nop                                           ; $7eb9: $00
    rst $18                                       ; $7eba: $df
    jr nz, @+$01                                  ; $7ebb: $20 $ff

    nop                                           ; $7ebd: $00
    rst $38                                       ; $7ebe: $ff
    nop                                           ; $7ebf: $00
    rst $38                                       ; $7ec0: $ff
    nop                                           ; $7ec1: $00
    cp [hl]                                       ; $7ec2: $be
    ld bc, $08f6                                  ; $7ec3: $01 $f6 $08
    rst $38                                       ; $7ec6: $ff
    nop                                           ; $7ec7: $00
    rst $28                                       ; $7ec8: $ef
    nop                                           ; $7ec9: $00
    ld a, a                                       ; $7eca: $7f
    add b                                         ; $7ecb: $80
    ei                                            ; $7ecc: $fb
    nop                                           ; $7ecd: $00
    rst $38                                       ; $7ece: $ff
    nop                                           ; $7ecf: $00
    cp a                                          ; $7ed0: $bf
    ld b, b                                       ; $7ed1: $40
    db $ed                                        ; $7ed2: $ed
    ld [bc], a                                    ; $7ed3: $02
    rst $38                                       ; $7ed4: $ff
    nop                                           ; $7ed5: $00
    cp a                                          ; $7ed6: $bf
    nop                                           ; $7ed7: $00
    sbc $20                                       ; $7ed8: $de $20
    rst $38                                       ; $7eda: $ff
    nop                                           ; $7edb: $00
    rst $28                                       ; $7edc: $ef
    nop                                           ; $7edd: $00
    rst $38                                       ; $7ede: $ff
    nop                                           ; $7edf: $00
    ld l, a                                       ; $7ee0: $6f
    db $10                                        ; $7ee1: $10
    ei                                            ; $7ee2: $fb
    nop                                           ; $7ee3: $00
    rst $38                                       ; $7ee4: $ff
    nop                                           ; $7ee5: $00
    ld a, a                                       ; $7ee6: $7f
    nop                                           ; $7ee7: $00
    rst $38                                       ; $7ee8: $ff
    nop                                           ; $7ee9: $00
    xor $10                                       ; $7eea: $ee $10
    rst $38                                       ; $7eec: $ff
    nop                                           ; $7eed: $00
    rst $38                                       ; $7eee: $ff
    nop                                           ; $7eef: $00
    rst $38                                       ; $7ef0: $ff
    nop                                           ; $7ef1: $00
    rst $38                                       ; $7ef2: $ff
    nop                                           ; $7ef3: $00
    ld a, [hl]                                    ; $7ef4: $7e
    add c                                         ; $7ef5: $81
    ld a, [hl]                                    ; $7ef6: $7e
    add c                                         ; $7ef7: $81
    ld a, [hl]                                    ; $7ef8: $7e
    add c                                         ; $7ef9: $81
    ld a, [hl]                                    ; $7efa: $7e
    add c                                         ; $7efb: $81
    ld a, [hl]                                    ; $7efc: $7e
    add c                                         ; $7efd: $81
    ld a, [hl]                                    ; $7efe: $7e
    add c                                         ; $7eff: $81
    add c                                         ; $7f00: $81
    rst $38                                       ; $7f01: $ff
    xor c                                         ; $7f02: $a9
    rst $10                                       ; $7f03: $d7
    or e                                          ; $7f04: $b3
    push bc                                       ; $7f05: $c5
    sub a                                         ; $7f06: $97
    pop bc                                        ; $7f07: $c1
    xor e                                         ; $7f08: $ab
    pop de                                        ; $7f09: $d1
    sub e                                         ; $7f0a: $93
    ret                                           ; $7f0b: $c9


    xor e                                         ; $7f0c: $ab
    pop de                                        ; $7f0d: $d1
    rst $10                                       ; $7f0e: $d7
    jp hl                                         ; $7f0f: $e9


    ld l, $00                                     ; $7f10: $2e $00
    nop                                           ; $7f12: $00
    nop                                           ; $7f13: $00
    nop                                           ; $7f14: $00
    ld bc, $0200                                  ; $7f15: $01 $00 $02
    nop                                           ; $7f18: $00
    inc bc                                        ; $7f19: $03
    nop                                           ; $7f1a: $00
    nop                                           ; $7f1b: $00
    stop                                          ; $7f1c: $10 $00
    inc b                                         ; $7f1e: $04
    nop                                           ; $7f1f: $00
    dec b                                         ; $7f20: $05
    nop                                           ; $7f21: $00
    ld b, $00                                     ; $7f22: $06 $00
    nop                                           ; $7f24: $00
    rlca                                          ; $7f25: $07
    nop                                           ; $7f26: $00
    ld de, $0800                                  ; $7f27: $11 $00 $08
    nop                                           ; $7f2a: $00
    add hl, bc                                    ; $7f2b: $09
    nop                                           ; $7f2c: $00
    nop                                           ; $7f2d: $00
    ld a, [bc]                                    ; $7f2e: $0a
    nop                                           ; $7f2f: $00
    dec bc                                        ; $7f30: $0b
    nop                                           ; $7f31: $00
    ld [de], a                                    ; $7f32: $12
    nop                                           ; $7f33: $00
    inc c                                         ; $7f34: $0c
    nop                                           ; $7f35: $00
    nop                                           ; $7f36: $00
    dec c                                         ; $7f37: $0d
    nop                                           ; $7f38: $00
    ld c, $00                                     ; $7f39: $0e $00
    rrca                                          ; $7f3b: $0f

Jump_076_7f3c:
    nop                                           ; $7f3c: $00
    inc de                                        ; $7f3d: $13
    nop                                           ; $7f3e: $00
    ld b, h                                       ; $7f3f: $44
    inc d                                         ; $7f40: $14
    ld [bc], a                                    ; $7f41: $02
    nop                                           ; $7f42: $00
    dec d                                         ; $7f43: $15
    nop                                           ; $7f44: $00
    ld d, $08                                     ; $7f45: $16 $08
    nop                                           ; $7f47: $00
    jr nc, jr_076_7f4a                            ; $7f48: $30 $00

jr_076_7f4a:
    nop                                           ; $7f4a: $00
    nop                                           ; $7f4b: $00
    nop                                           ; $7f4c: $00
    ld bc, $0200                                  ; $7f4d: $01 $00 $02
    nop                                           ; $7f50: $00
    inc bc                                        ; $7f51: $03
    nop                                           ; $7f52: $00
    nop                                           ; $7f53: $00
    stop                                          ; $7f54: $10 $00
    inc b                                         ; $7f56: $04
    nop                                           ; $7f57: $00
    dec b                                         ; $7f58: $05
    nop                                           ; $7f59: $00
    ld b, $00                                     ; $7f5a: $06 $00
    nop                                           ; $7f5c: $00
    rlca                                          ; $7f5d: $07
    nop                                           ; $7f5e: $00
    ld de, $0800                                  ; $7f5f: $11 $00 $08
    nop                                           ; $7f62: $00
    add hl, bc                                    ; $7f63: $09
    nop                                           ; $7f64: $00
    nop                                           ; $7f65: $00
    ld a, [bc]                                    ; $7f66: $0a
    nop                                           ; $7f67: $00
    dec bc                                        ; $7f68: $0b
    nop                                           ; $7f69: $00
    ld [de], a                                    ; $7f6a: $12
    nop                                           ; $7f6b: $00
    inc c                                         ; $7f6c: $0c
    nop                                           ; $7f6d: $00
    nop                                           ; $7f6e: $00
    dec c                                         ; $7f6f: $0d
    nop                                           ; $7f70: $00
    ld c, $00                                     ; $7f71: $0e $00
    rrca                                          ; $7f73: $0f
    nop                                           ; $7f74: $00
    inc de                                        ; $7f75: $13
    nop                                           ; $7f76: $00
    inc b                                         ; $7f77: $04
    inc d                                         ; $7f78: $14
    nop                                           ; $7f79: $00
    dec d                                         ; $7f7a: $15
    nop                                           ; $7f7b: $00
    ld d, $06                                     ; $7f7c: $16 $06
    nop                                           ; $7f7e: $00
    inc d                                         ; $7f7f: $14
    nop                                           ; $7f80: $00
    ld l, $00                                     ; $7f81: $2e $00
    nop                                           ; $7f83: $00
    nop                                           ; $7f84: $00
    nop                                           ; $7f85: $00
    ld bc, $0200                                  ; $7f86: $01 $00 $02
    nop                                           ; $7f89: $00
    inc bc                                        ; $7f8a: $03
    nop                                           ; $7f8b: $00
    nop                                           ; $7f8c: $00
    stop                                          ; $7f8d: $10 $00
    inc b                                         ; $7f8f: $04
    nop                                           ; $7f90: $00
    dec b                                         ; $7f91: $05
    nop                                           ; $7f92: $00
    ld b, $00                                     ; $7f93: $06 $00
    nop                                           ; $7f95: $00
    rlca                                          ; $7f96: $07
    nop                                           ; $7f97: $00
    ld de, $0800                                  ; $7f98: $11 $00 $08
    nop                                           ; $7f9b: $00
    add hl, bc                                    ; $7f9c: $09
    nop                                           ; $7f9d: $00
    nop                                           ; $7f9e: $00
    ld a, [bc]                                    ; $7f9f: $0a
    nop                                           ; $7fa0: $00
    dec bc                                        ; $7fa1: $0b
    nop                                           ; $7fa2: $00
    ld [de], a                                    ; $7fa3: $12
    nop                                           ; $7fa4: $00
    inc c                                         ; $7fa5: $0c
    nop                                           ; $7fa6: $00
    nop                                           ; $7fa7: $00
    dec c                                         ; $7fa8: $0d
    nop                                           ; $7fa9: $00
    ld c, $00                                     ; $7faa: $0e $00
    rrca                                          ; $7fac: $0f
    nop                                           ; $7fad: $00
    inc de                                        ; $7fae: $13
    nop                                           ; $7faf: $00
    inc b                                         ; $7fb0: $04
    inc d                                         ; $7fb1: $14
    nop                                           ; $7fb2: $00
    dec d                                         ; $7fb3: $15
    nop                                           ; $7fb4: $00
    ld d, $02                                     ; $7fb5: $16 $02
    db $10                                        ; $7fb7: $10

    db $30, $00, $00, $00, $00, $01, $00, $02, $00, $03, $00, $00, $10, $00, $04, $00
    db $05, $00, $06, $00, $00, $07, $00, $11, $00, $08, $00, $09, $00, $00, $0a, $00
    db $0b, $00, $12, $00, $0c, $00, $00, $0d, $00, $0e, $00, $0f, $00, $13, $00, $04
    db $14, $00, $15, $00, $16, $06, $00, $14, $00, $10, $00, $02, $00, $40, $00, $01
    db $60

    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
