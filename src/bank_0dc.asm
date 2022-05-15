; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0dc", ROMX[$4000], BANK[$dc]

    db $dc

    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ld sp, hl                                     ; $4003: $f9
    ld [$01f2], sp                                ; $4004: $08 $f2 $01
    add sp, -$06                                  ; $4007: $e8 $fa
    add sp, -$01                                  ; $4009: $e8 $ff
    ld hl, sp-$06                                 ; $400b: $f8 $fa
    ld hl, sp-$01                                 ; $400d: $f8 $ff
    add d                                         ; $400f: $82
    dec [hl]                                      ; $4010: $35
    ld a, a                                       ; $4011: $7f
    ld [bc], a                                    ; $4012: $02
    add b                                         ; $4013: $80
    sub h                                         ; $4014: $94
    ld a, [bc]                                    ; $4015: $0a
    xor d                                         ; $4016: $aa
    and b                                         ; $4017: $a0
    cp [hl]                                       ; $4018: $be
    ld a, [bc]                                    ; $4019: $0a
    xor e                                         ; $401a: $ab
    adc d                                         ; $401b: $8a
    cp [hl]                                       ; $401c: $be
    db $20, $ba                                   ; $401d: $20 $ba
    ld a, [hl+]                                   ; $401f: $2a
    cp e                                          ; $4020: $bb
    add b                                         ; $4021: $80
    xor [hl]                                      ; $4022: $ae
    adc b                                         ; $4023: $88
    cp d                                          ; $4024: $ba
    nop                                           ; $4025: $00
    xor a                                         ; $4026: $af
    nop                                           ; $4027: $00
    xor d                                         ; $4028: $aa
    ld [bc], a                                    ; $4029: $02
    add b                                         ; $402a: $80
    add d                                         ; $402b: $82
    inc d                                         ; $402c: $14
    ld a, a                                       ; $402d: $7f
    inc bc                                        ; $402e: $03
    nop                                           ; $402f: $00
    add e                                         ; $4030: $83
    rst $38                                       ; $4031: $ff
    inc b                                         ; $4032: $04
    ld e, $03                                     ; $4033: $1e $03
    ld bc, $1597                                  ; $4035: $01 $97 $15
    db $10                                        ; $4038: $10
    dec d                                         ; $4039: $15
    nop                                           ; $403a: $00
    dec d                                         ; $403b: $15
    ld bc, $001d                                  ; $403c: $01 $1d $00
    dec d                                         ; $403f: $15
    nop                                           ; $4040: $00
    dec d                                         ; $4041: $15
    nop                                           ; $4042: $00
    dec e                                         ; $4043: $1d
    nop                                           ; $4044: $00
    dec d                                         ; $4045: $15
    nop                                           ; $4046: $00
    dec d                                         ; $4047: $15
    ld bc, $0015                                  ; $4048: $01 $15 $00
    ld bc, $1e08                                  ; $404b: $01 $08 $1e
    inc bc                                        ; $404e: $03
    nop                                           ; $404f: $00
    adc l                                         ; $4050: $8d
    rra                                           ; $4051: $1f
    nop                                           ; $4052: $00
    add b                                         ; $4053: $80
    nop                                           ; $4054: $00
    xor d                                         ; $4055: $aa
    nop                                           ; $4056: $00
    or h                                          ; $4057: $b4
    nop                                           ; $4058: $00
    xor d                                         ; $4059: $aa
    nop                                           ; $405a: $00
    add b                                         ; $405b: $80
    nop                                           ; $405c: $00
    rst $38                                       ; $405d: $ff
    dec d                                         ; $405e: $15
    nop                                           ; $405f: $00
    adc e                                         ; $4060: $8b
    ld bc, $1500                                  ; $4061: $01 $00 $15
    nop                                           ; $4064: $00
    ld de, $0500                                  ; $4065: $11 $00 $05
    nop                                           ; $4068: $00
    ld bc, $1f00                                  ; $4069: $01 $00 $1f
    inc d                                         ; $406c: $14
    nop                                           ; $406d: $00
    rst $38                                       ; $406e: $ff
    dec c                                         ; $406f: $0d
    inc b                                         ; $4070: $04
    ld sp, hl                                     ; $4071: $f9
    rlca                                          ; $4072: $07
    ld a, [c]                                     ; $4073: $f2
    ld bc, $f9e6                                  ; $4074: $01 $e6 $f9
    and $00                                       ; $4077: $e6 $00
    or $f9                                        ; $4079: $f6 $f9
    or $00                                        ; $407b: $f6 $00
    ld [bc], a                                    ; $407d: $02
    rst $38                                       ; $407e: $ff
    ld [bc], a                                    ; $407f: $02
    ret nz                                        ; $4080: $c0

    ld [bc], a                                    ; $4081: $02
    cp a                                          ; $4082: $bf
    ld [bc], a                                    ; $4083: $02
    xor d                                         ; $4084: $aa
    ld [bc], a                                    ; $4085: $02
    and b                                         ; $4086: $a0
    ld [bc], a                                    ; $4087: $02
    xor d                                         ; $4088: $aa
    inc b                                         ; $4089: $04
    and d                                         ; $408a: $a2
    ld [bc], a                                    ; $408b: $02
    xor b                                         ; $408c: $a8
    ld [bc], a                                    ; $408d: $02
    and d                                         ; $408e: $a2
    ld [bc], a                                    ; $408f: $02
    xor b                                         ; $4090: $a8
    ld [bc], a                                    ; $4091: $02
    xor d                                         ; $4092: $aa
    ld [bc], a                                    ; $4093: $02
    cp a                                          ; $4094: $bf
    ld [bc], a                                    ; $4095: $02
    ret nz                                        ; $4096: $c0

    ld [bc], a                                    ; $4097: $02
    rst $38                                       ; $4098: $ff
    ld [bc], a                                    ; $4099: $02
    add b                                         ; $409a: $80
    ld [bc], a                                    ; $409b: $02
    ld a, a                                       ; $409c: $7f
    ld [bc], a                                    ; $409d: $02
    inc bc                                        ; $409e: $03
    ld [bc], a                                    ; $409f: $02
    ld a, l                                       ; $40a0: $7d
    inc b                                         ; $40a1: $04
    ld d, l                                       ; $40a2: $55
    ld [bc], a                                    ; $40a3: $02
    dec d                                         ; $40a4: $15
    ld [bc], a                                    ; $40a5: $02
    ld d, l                                       ; $40a6: $55
    ld [bc], a                                    ; $40a7: $02
    dec d                                         ; $40a8: $15
    ld [bc], a                                    ; $40a9: $02
    ld b, l                                       ; $40aa: $45
    ld [bc], a                                    ; $40ab: $02
    ld d, l                                       ; $40ac: $55
    ld [bc], a                                    ; $40ad: $02
    dec d                                         ; $40ae: $15
    ld [bc], a                                    ; $40af: $02
    ld d, l                                       ; $40b0: $55
    ld [bc], a                                    ; $40b1: $02
    ld a, l                                       ; $40b2: $7d
    ld [bc], a                                    ; $40b3: $02
    inc bc                                        ; $40b4: $03
    ld [bc], a                                    ; $40b5: $02
    ld a, a                                       ; $40b6: $7f
    ld [bc], a                                    ; $40b7: $02
    ld bc, $bf02                                  ; $40b8: $01 $02 $bf
    ld [bc], a                                    ; $40bb: $02
    and l                                         ; $40bc: $a5
    ld [bc], a                                    ; $40bd: $02
    xor d                                         ; $40be: $aa
    ld [bc], a                                    ; $40bf: $02
    and l                                         ; $40c0: $a5
    ld [bc], a                                    ; $40c1: $02

jr_0dc_40c2:
    cp a                                          ; $40c2: $bf
    ld [bc], a                                    ; $40c3: $02
    add b                                         ; $40c4: $80
    ld [bc], a                                    ; $40c5: $02
    rst $38                                       ; $40c6: $ff
    ld [bc], a                                    ; $40c7: $02
    rra                                           ; $40c8: $1f
    add c                                         ; $40c9: $81
    dec a                                         ; $40ca: $3d
    inc bc                                        ; $40cb: $03
    ccf                                           ; $40cc: $3f
    ld [bc], a                                    ; $40cd: $02
    rra                                           ; $40ce: $1f
    ld [bc], a                                    ; $40cf: $02
    rlca                                          ; $40d0: $07
    ld [$0200], sp                                ; $40d1: $08 $00 $02
    ld a, l                                       ; $40d4: $7d
    ld [bc], a                                    ; $40d5: $02
    ld e, l                                       ; $40d6: $5d
    ld [bc], a                                    ; $40d7: $02
    ld [hl], l                                    ; $40d8: $75
    ld [bc], a                                    ; $40d9: $02
    ld e, l                                       ; $40da: $5d
    ld [bc], a                                    ; $40db: $02
    ld a, l                                       ; $40dc: $7d
    ld [bc], a                                    ; $40dd: $02
    ld bc, $7f02                                  ; $40de: $01 $02 $7f
    add e                                         ; $40e1: $83
    ld l, b                                       ; $40e2: $68
    ld a, b                                       ; $40e3: $78
    ld l, b                                       ; $40e4: $68
    dec b                                         ; $40e5: $05
    ld a, b                                       ; $40e6: $78
    ld [bc], a                                    ; $40e7: $02
    ld [hl], b                                    ; $40e8: $70
    ld [$ff00], sp                                ; $40e9: $08 $00 $ff
    dec c                                         ; $40ec: $0d
    inc b                                         ; $40ed: $04
    ld sp, hl                                     ; $40ee: $f9
    ld [$01f2], sp                                ; $40ef: $08 $f2 $01
    rst $20                                       ; $40f2: $e7
    ld a, [$ffe7]                                 ; $40f3: $fa $e7 $ff
    rst $30                                       ; $40f6: $f7
    ld a, [$fff7]                                 ; $40f7: $fa $f7 $ff
    add d                                         ; $40fa: $82
    dec [hl]                                      ; $40fb: $35
    ld a, a                                       ; $40fc: $7f
    ld [bc], a                                    ; $40fd: $02
    add b                                         ; $40fe: $80
    sub d                                         ; $40ff: $92
    ld a, [bc]                                    ; $4100: $0a
    xor d                                         ; $4101: $aa
    and b                                         ; $4102: $a0
    cp [hl]                                       ; $4103: $be
    ld a, [bc]                                    ; $4104: $0a
    xor e                                         ; $4105: $ab
    jr nz, jr_0dc_40c2                            ; $4106: $20 $ba

    ld a, [hl+]                                   ; $4108: $2a
    cp e                                          ; $4109: $bb
    add b                                         ; $410a: $80
    xor [hl]                                      ; $410b: $ae
    adc b                                         ; $410c: $88
    cp d                                          ; $410d: $ba
    nop                                           ; $410e: $00
    xor a                                         ; $410f: $af
    nop                                           ; $4110: $00
    xor d                                         ; $4111: $aa
    ld [bc], a                                    ; $4112: $02
    add b                                         ; $4113: $80
    add d                                         ; $4114: $82
    inc d                                         ; $4115: $14
    ld a, a                                       ; $4116: $7f
    inc bc                                        ; $4117: $03
    nop                                           ; $4118: $00
    add l                                         ; $4119: $85
    rst $38                                       ; $411a: $ff
    nop                                           ; $411b: $00
    add b                                         ; $411c: $80
    inc b                                         ; $411d: $04
    ld e, $03                                     ; $411e: $1e $03
    ld bc, $1595                                  ; $4120: $01 $95 $15
    db $10                                        ; $4123: $10
    dec d                                         ; $4124: $15
    nop                                           ; $4125: $00
    dec d                                         ; $4126: $15
    ld bc, $0015                                  ; $4127: $01 $15 $00
    dec d                                         ; $412a: $15
    nop                                           ; $412b: $00
    dec e                                         ; $412c: $1d
    nop                                           ; $412d: $00
    dec d                                         ; $412e: $15
    nop                                           ; $412f: $00
    dec d                                         ; $4130: $15
    ld bc, $0015                                  ; $4131: $01 $15 $00
    ld bc, $1e08                                  ; $4134: $01 $08 $1e
    inc bc                                        ; $4137: $03
    nop                                           ; $4138: $00
    adc l                                         ; $4139: $8d
    rra                                           ; $413a: $1f
    nop                                           ; $413b: $00
    ld bc, $b400                                  ; $413c: $01 $00 $b4
    nop                                           ; $413f: $00
    xor d                                         ; $4140: $aa
    nop                                           ; $4141: $00
    or h                                          ; $4142: $b4
    nop                                           ; $4143: $00
    add b                                         ; $4144: $80
    nop                                           ; $4145: $00
    rst $38                                       ; $4146: $ff
    rla                                           ; $4147: $17
    nop                                           ; $4148: $00
    adc c                                         ; $4149: $89
    ld de, $0500                                  ; $414a: $11 $00 $05
    nop                                           ; $414d: $00
    ld de, $0100                                  ; $414e: $11 $00 $01
    nop                                           ; $4151: $00
    rra                                           ; $4152: $1f
    ld d, $00                                     ; $4153: $16 $00
    rst $38                                       ; $4155: $ff
    dec c                                         ; $4156: $0d
    inc b                                         ; $4157: $04
    ld sp, hl                                     ; $4158: $f9
    rlca                                          ; $4159: $07
    ld a, [c]                                     ; $415a: $f2
    ld bc, $f8e5                                  ; $415b: $01 $e5 $f8
    push hl                                       ; $415e: $e5
    nop                                           ; $415f: $00
    push af                                       ; $4160: $f5
    ld hl, sp-$0b                                 ; $4161: $f8 $f5
    nop                                           ; $4163: $00
    ld [bc], a                                    ; $4164: $02
    ld bc, $fe02                                  ; $4165: $01 $02 $fe
    ld [bc], a                                    ; $4168: $02
    pop bc                                        ; $4169: $c1
    ld [bc], a                                    ; $416a: $02
    cp [hl]                                       ; $416b: $be
    ld [bc], a                                    ; $416c: $02
    xor d                                         ; $416d: $aa
    ld [bc], a                                    ; $416e: $02
    and b                                         ; $416f: $a0
    ld [bc], a                                    ; $4170: $02
    xor d                                         ; $4171: $aa
    inc b                                         ; $4172: $04
    and d                                         ; $4173: $a2
    ld [bc], a                                    ; $4174: $02
    xor b                                         ; $4175: $a8
    ld [bc], a                                    ; $4176: $02
    and d                                         ; $4177: $a2
    ld [bc], a                                    ; $4178: $02
    xor b                                         ; $4179: $a8
    ld [bc], a                                    ; $417a: $02
    xor e                                         ; $417b: $ab
    ld [bc], a                                    ; $417c: $02
    cp [hl]                                       ; $417d: $be
    ld [bc], a                                    ; $417e: $02
    pop bc                                        ; $417f: $c1
    inc b                                         ; $4180: $04
    cp $02                                        ; $4181: $fe $02
    ld b, $02                                     ; $4183: $06 $02
    ld a, [$aa04]                                 ; $4185: $fa $04 $aa
    ld [bc], a                                    ; $4188: $02
    ld a, [hl+]                                   ; $4189: $2a
    ld [bc], a                                    ; $418a: $02
    xor d                                         ; $418b: $aa
    ld [bc], a                                    ; $418c: $02
    ld a, [hl+]                                   ; $418d: $2a
    ld [bc], a                                    ; $418e: $02
    adc d                                         ; $418f: $8a
    ld [bc], a                                    ; $4190: $02
    xor e                                         ; $4191: $ab
    ld [bc], a                                    ; $4192: $02
    dec hl                                        ; $4193: $2b
    ld [bc], a                                    ; $4194: $02
    xor e                                         ; $4195: $ab
    ld [bc], a                                    ; $4196: $02
    ei                                            ; $4197: $fb
    ld [bc], a                                    ; $4198: $02
    rlca                                          ; $4199: $07
    ld [bc], a                                    ; $419a: $02
    rst $38                                       ; $419b: $ff
    ld [bc], a                                    ; $419c: $02
    inc bc                                        ; $419d: $03
    ld [bc], a                                    ; $419e: $02
    add b                                         ; $419f: $80
    ld [bc], a                                    ; $41a0: $02
    cp a                                          ; $41a1: $bf
    ld [bc], a                                    ; $41a2: $02
    and l                                         ; $41a3: $a5
    ld [bc], a                                    ; $41a4: $02
    xor d                                         ; $41a5: $aa
    ld [bc], a                                    ; $41a6: $02
    ld d, a                                       ; $41a7: $57
    ld [bc], a                                    ; $41a8: $02
    ld e, h                                       ; $41a9: $5c
    ld [bc], a                                    ; $41aa: $02
    ld b, c                                       ; $41ab: $41
    ld [bc], a                                    ; $41ac: $02

jr_0dc_41ad:
    ld a, a                                       ; $41ad: $7f
    add e                                         ; $41ae: $83
    ld c, $0f                                     ; $41af: $0e $0f
    ld e, $03                                     ; $41b1: $1e $03
    rra                                           ; $41b3: $1f
    add d                                         ; $41b4: $82
    inc e                                         ; $41b5: $1c
    rra                                           ; $41b6: $1f
    ld [bc], a                                    ; $41b7: $02
    rrca                                          ; $41b8: $0f
    ld b, $00                                     ; $41b9: $06 $00
    inc b                                         ; $41bb: $04
    ei                                            ; $41bc: $fb
    ld [bc], a                                    ; $41bd: $02
    xor e                                         ; $41be: $ab
    ld [bc], a                                    ; $41bf: $02
    push de                                       ; $41c0: $d5
    ld [bc], a                                    ; $41c1: $02
    db $fd                                        ; $41c2: $fd
    ld [bc], a                                    ; $41c3: $02
    ld bc, $ff02                                  ; $41c4: $01 $02 $ff
    add h                                         ; $41c7: $84
    ld a, [$ecfe]                                 ; $41c8: $fa $fe $ec
    db $fc                                        ; $41cb: $fc
    ld b, $f8                                     ; $41cc: $06 $f8
    ld [bc], a                                    ; $41ce: $02
    ldh [rTMA], a                                 ; $41cf: $e0 $06
    nop                                           ; $41d1: $00
    rst $38                                       ; $41d2: $ff
    dec c                                         ; $41d3: $0d
    inc b                                         ; $41d4: $04
    ld sp, hl                                     ; $41d5: $f9
    ld [$01f2], sp                                ; $41d6: $08 $f2 $01
    and $f9                                       ; $41d9: $e6 $f9
    and $fe                                       ; $41db: $e6 $fe
    or $f9                                        ; $41dd: $f6 $f9
    or $ff                                        ; $41df: $f6 $ff
    add h                                         ; $41e1: $84
    ld bc, $3403                                  ; $41e2: $01 $03 $34
    ld a, h                                       ; $41e5: $7c
    ld [bc], a                                    ; $41e6: $02
    add d                                         ; $41e7: $82
    sbc h                                         ; $41e8: $9c
    ld [$a2aa], sp                                ; $41e9: $08 $aa $a2
    cp a                                          ; $41ec: $bf
    ld [$22aa], sp                                ; $41ed: $08 $aa $22
    cp e                                          ; $41f0: $bb
    jr z, jr_0dc_41ad                             ; $41f1: $28 $ba

    add b                                         ; $41f3: $80
    xor [hl]                                      ; $41f4: $ae
    adc b                                         ; $41f5: $88
    cp e                                          ; $41f6: $bb
    nop                                           ; $41f7: $00
    xor [hl]                                      ; $41f8: $ae
    nop                                           ; $41f9: $00
    xor b                                         ; $41fa: $a8
    add b                                         ; $41fb: $80
    add e                                         ; $41fc: $83
    inc d                                         ; $41fd: $14
    ld a, h                                       ; $41fe: $7c
    nop                                           ; $41ff: $00
    inc bc                                        ; $4200: $03
    nop                                           ; $4201: $00
    cp $04                                        ; $4202: $fe $04
    ld e, $03                                     ; $4204: $1e $03
    ld bc, $1595                                  ; $4206: $01 $95 $15
    db $10                                        ; $4209: $10
    dec d                                         ; $420a: $15
    nop                                           ; $420b: $00
    dec d                                         ; $420c: $15
    ld bc, $0015                                  ; $420d: $01 $15 $00
    dec d                                         ; $4210: $15
    nop                                           ; $4211: $00
    dec e                                         ; $4212: $1d
    nop                                           ; $4213: $00
    dec d                                         ; $4214: $15
    nop                                           ; $4215: $00
    dec d                                         ; $4216: $15
    ld bc, $0015                                  ; $4217: $01 $15 $00
    ld bc, $1e08                                  ; $421a: $01 $08 $1e
    inc bc                                        ; $421d: $03
    nop                                           ; $421e: $00
    adc a                                         ; $421f: $8f
    rra                                           ; $4220: $1f
    nop                                           ; $4221: $00
    ld bc, $8000                                  ; $4222: $01 $00 $80
    nop                                           ; $4225: $00
    or h                                          ; $4226: $b4
    nop                                           ; $4227: $00
    xor d                                         ; $4228: $aa
    nop                                           ; $4229: $00
    ld d, b                                       ; $422a: $50
    nop                                           ; $422b: $00
    ld b, a                                       ; $422c: $47
    nop                                           ; $422d: $00
    ld a, h                                       ; $422e: $7c
    dec d                                         ; $422f: $15
    nop                                           ; $4230: $00
    adc c                                         ; $4231: $89
    ld [bc], a                                    ; $4232: $02
    nop                                           ; $4233: $00
    ld a, [hl+]                                   ; $4234: $2a
    nop                                           ; $4235: $00
    dec d                                         ; $4236: $15
    nop                                           ; $4237: $00
    ld bc, $3f00                                  ; $4238: $01 $00 $3f
    ld d, $00                                     ; $423b: $16 $00
    rst $38                                       ; $423d: $ff
    dec c                                         ; $423e: $0d
    inc b                                         ; $423f: $04
    ld sp, hl                                     ; $4240: $f9
    rlca                                          ; $4241: $07
    ld a, [c]                                     ; $4242: $f2
    ld bc, $f8e6                                  ; $4243: $01 $e6 $f8
    push hl                                       ; $4246: $e5
    nop                                           ; $4247: $00
    push af                                       ; $4248: $f5
    ld hl, sp-$0b                                 ; $4249: $f8 $f5
    nop                                           ; $424b: $00
    ld [bc], a                                    ; $424c: $02
    rlca                                          ; $424d: $07
    ld [bc], a                                    ; $424e: $02
    ld hl, sp+$02                                 ; $424f: $f8 $02
    rst $00                                       ; $4251: $c7
    ld [bc], a                                    ; $4252: $02
    cp d                                          ; $4253: $ba
    ld [bc], a                                    ; $4254: $02
    xor b                                         ; $4255: $a8
    ld [bc], a                                    ; $4256: $02
    and d                                         ; $4257: $a2
    ld [bc], a                                    ; $4258: $02
    xor d                                         ; $4259: $aa
    ld [bc], a                                    ; $425a: $02
    and d                                         ; $425b: $a2
    ld [bc], a                                    ; $425c: $02
    and b                                         ; $425d: $a0
    ld [bc], a                                    ; $425e: $02
    xor d                                         ; $425f: $aa
    ld [bc], a                                    ; $4260: $02
    and b                                         ; $4261: $a0
    ld [bc], a                                    ; $4262: $02
    xor d                                         ; $4263: $aa
    ld [bc], a                                    ; $4264: $02
    xor a                                         ; $4265: $af
    ld [bc], a                                    ; $4266: $02
    cp b                                          ; $4267: $b8
    ld [bc], a                                    ; $4268: $02
    rst $00                                       ; $4269: $c7
    ld [bc], a                                    ; $426a: $02
    ld hl, sp+$02                                 ; $426b: $f8 $02
    ld a, $02                                     ; $426d: $3e $02
    add $02                                       ; $426f: $c6 $02
    ld a, [hl-]                                   ; $4271: $3a
    ld [bc], a                                    ; $4272: $02
    ld [$aa04], a                                 ; $4273: $ea $04 $aa
    ld [bc], a                                    ; $4276: $02
    ld a, [hl+]                                   ; $4277: $2a
    ld [bc], a                                    ; $4278: $02
    xor e                                         ; $4279: $ab
    ld [bc], a                                    ; $427a: $02
    dec bc                                        ; $427b: $0b
    inc b                                         ; $427c: $04
    xor e                                         ; $427d: $ab
    ld [bc], a                                    ; $427e: $02
    dec hl                                        ; $427f: $2b
    ld [bc], a                                    ; $4280: $02
    cp e                                          ; $4281: $bb
    ld [bc], a                                    ; $4282: $02
    rst $00                                       ; $4283: $c7
    ld [bc], a                                    ; $4284: $02
    ccf                                           ; $4285: $3f
    ld [bc], a                                    ; $4286: $02
    jp $0002                                      ; $4287: $c3 $02 $00


    ld [bc], a                                    ; $428a: $02
    add e                                         ; $428b: $83
    ld [bc], a                                    ; $428c: $02
    cp a                                          ; $428d: $bf
    ld [bc], a                                    ; $428e: $02
    xor c                                         ; $428f: $a9
    ld [bc], a                                    ; $4290: $02
    and h                                         ; $4291: $a4
    ld [bc], a                                    ; $4292: $02
    ld d, a                                       ; $4293: $57
    ld [bc], a                                    ; $4294: $02
    ld e, b                                       ; $4295: $58
    ld [bc], a                                    ; $4296: $02
    ld b, e                                       ; $4297: $43
    ld [bc], a                                    ; $4298: $02
    ld a, a                                       ; $4299: $7f
    add d                                         ; $429a: $82
    ld c, $0f                                     ; $429b: $0e $0f
    inc b                                         ; $429d: $04
    rra                                           ; $429e: $1f

jr_0dc_429f:
    ld [bc], a                                    ; $429f: $02
    rlca                                          ; $42a0: $07
    ld b, $00                                     ; $42a1: $06 $00
    ld [bc], a                                    ; $42a3: $02
    dec de                                        ; $42a4: $1b
    ld [bc], a                                    ; $42a5: $02
    ei                                            ; $42a6: $fb
    ld [bc], a                                    ; $42a7: $02
    or l                                          ; $42a8: $b5
    ld [bc], a                                    ; $42a9: $02
    ld l, l                                       ; $42aa: $6d
    ld [bc], a                                    ; $42ab: $02
    cp l                                          ; $42ac: $bd
    ld [bc], a                                    ; $42ad: $02
    pop bc                                        ; $42ae: $c1
    ld [bc], a                                    ; $42af: $02
    rra                                           ; $42b0: $1f
    ld [bc], a                                    ; $42b1: $02
    cp $02                                        ; $42b2: $fe $02
    ld hl, sp-$7c                                 ; $42b4: $f8 $84
    add sp, -$08                                  ; $42b6: $e8 $f8
    ld a, b                                       ; $42b8: $78
    ld hl, sp+$02                                 ; $42b9: $f8 $02
    ldh a, [rSC]                                  ; $42bb: $f0 $02
    ret nz                                        ; $42bd: $c0

    ld b, $00                                     ; $42be: $06 $00
    rst $38                                       ; $42c0: $ff
    dec c                                         ; $42c1: $0d
    inc b                                         ; $42c2: $04
    ld sp, hl                                     ; $42c3: $f9
    ld [$01f2], sp                                ; $42c4: $08 $f2 $01
    rst $20                                       ; $42c7: $e7
    ld sp, hl                                     ; $42c8: $f9
    and $fe                                       ; $42c9: $e6 $fe
    or $f9                                        ; $42cb: $f6 $f9
    or $ff                                        ; $42cd: $f6 $ff
    add h                                         ; $42cf: $84
    dec b                                         ; $42d0: $05
    rrca                                          ; $42d1: $0f
    jr nc, jr_0dc_4344                            ; $42d2: $30 $70

    ld [bc], a                                    ; $42d4: $02
    adc d                                         ; $42d5: $8a
    cp d                                          ; $42d6: $ba
    nop                                           ; $42d7: $00
    xor [hl]                                      ; $42d8: $ae
    xor d                                         ; $42d9: $aa
    cp e                                          ; $42da: $bb
    nop                                           ; $42db: $00
    xor d                                         ; $42dc: $aa
    ld a, [hl+]                                   ; $42dd: $2a
    cp e                                          ; $42de: $bb
    jr nz, jr_0dc_429f                            ; $42df: $20 $be

    adc b                                         ; $42e1: $88
    xor d                                         ; $42e2: $aa
    add b                                         ; $42e3: $80
    cp a                                          ; $42e4: $bf
    nop                                           ; $42e5: $00
    xor d                                         ; $42e6: $aa
    nop                                           ; $42e7: $00
    and b                                         ; $42e8: $a0
    add h                                         ; $42e9: $84
    adc a                                         ; $42ea: $8f
    db $10                                        ; $42eb: $10
    ld [hl], b                                    ; $42ec: $70
    nop                                           ; $42ed: $00
    rrca                                          ; $42ee: $0f
    nop                                           ; $42ef: $00
    ld hl, sp+$04                                 ; $42f0: $f8 $04
    ld c, $01                                     ; $42f2: $0e $01
    ld de, $0501                                  ; $42f4: $11 $01 $05
    nop                                           ; $42f7: $00
    dec d                                         ; $42f8: $15
    ld de, $0115                                  ; $42f9: $11 $15 $01
    dec d                                         ; $42fc: $15
    nop                                           ; $42fd: $00
    dec d                                         ; $42fe: $15
    nop                                           ; $42ff: $00
    dec e                                         ; $4300: $1d
    nop                                           ; $4301: $00
    dec d                                         ; $4302: $15
    nop                                           ; $4303: $00
    dec d                                         ; $4304: $15
    ld bc, $0015                                  ; $4305: $01 $15 $00
    ld de, $0e08                                  ; $4308: $11 $08 $0e
    nop                                           ; $430b: $00
    stop                                          ; $430c: $10 $00
    rrca                                          ; $430e: $0f
    nop                                           ; $430f: $00
    add hl, de                                    ; $4310: $19
    inc bc                                        ; $4311: $03
    nop                                           ; $4312: $00
    adc e                                         ; $4313: $8b
    add b                                         ; $4314: $80
    nop                                           ; $4315: $00
    xor l                                         ; $4316: $ad
    nop                                           ; $4317: $00
    or [hl]                                       ; $4318: $b6
    nop                                           ; $4319: $00
    ld d, b                                       ; $431a: $50
    nop                                           ; $431b: $00
    ld c, a                                       ; $431c: $4f
    nop                                           ; $431d: $00
    ld a, b                                       ; $431e: $78
    inc de                                        ; $431f: $13
    nop                                           ; $4320: $00
    adc e                                         ; $4321: $8b
    ld [bc], a                                    ; $4322: $02
    nop                                           ; $4323: $00
    dec h                                         ; $4324: $25
    nop                                           ; $4325: $00
    add hl, bc                                    ; $4326: $09
    nop                                           ; $4327: $00
    ld hl, $1f00                                  ; $4328: $21 $00 $1f
    nop                                           ; $432b: $00
    jr nc, jr_0dc_4342                            ; $432c: $30 $14

    nop                                           ; $432e: $00
    rst $38                                       ; $432f: $ff
    dec c                                         ; $4330: $0d
    inc b                                         ; $4331: $04
    ld sp, hl                                     ; $4332: $f9
    rlca                                          ; $4333: $07
    ld a, [c]                                     ; $4334: $f2
    ld bc, $f9e7                                  ; $4335: $01 $e7 $f9
    rst $20                                       ; $4338: $e7
    nop                                           ; $4339: $00
    rst $30                                       ; $433a: $f7
    ld sp, hl                                     ; $433b: $f9
    rst $30                                       ; $433c: $f7
    nop                                           ; $433d: $00
    ld [bc], a                                    ; $433e: $02
    rst $38                                       ; $433f: $ff
    ld [bc], a                                    ; $4340: $02
    ret nz                                        ; $4341: $c0

jr_0dc_4342:
    ld [bc], a                                    ; $4342: $02
    cp a                                          ; $4343: $bf

jr_0dc_4344:
    ld [bc], a                                    ; $4344: $02
    xor d                                         ; $4345: $aa
    ld [bc], a                                    ; $4346: $02
    and b                                         ; $4347: $a0
    ld [bc], a                                    ; $4348: $02
    xor d                                         ; $4349: $aa
    ld [bc], a                                    ; $434a: $02
    and b                                         ; $434b: $a0
    inc b                                         ; $434c: $04
    and d                                         ; $434d: $a2
    ld [bc], a                                    ; $434e: $02
    xor b                                         ; $434f: $a8
    ld [bc], a                                    ; $4350: $02
    and d                                         ; $4351: $a2
    ld [bc], a                                    ; $4352: $02
    xor b                                         ; $4353: $a8
    ld [bc], a                                    ; $4354: $02
    xor d                                         ; $4355: $aa
    ld [bc], a                                    ; $4356: $02
    cp a                                          ; $4357: $bf
    ld [bc], a                                    ; $4358: $02
    ret nz                                        ; $4359: $c0

    ld [bc], a                                    ; $435a: $02
    rst $38                                       ; $435b: $ff
    ld [bc], a                                    ; $435c: $02
    ld a, a                                       ; $435d: $7f
    ld [bc], a                                    ; $435e: $02
    inc bc                                        ; $435f: $03
    ld [bc], a                                    ; $4360: $02
    ld a, l                                       ; $4361: $7d
    inc b                                         ; $4362: $04
    ld d, l                                       ; $4363: $55
    ld [bc], a                                    ; $4364: $02
    dec d                                         ; $4365: $15
    ld [bc], a                                    ; $4366: $02
    ld b, l                                       ; $4367: $45
    ld [bc], a                                    ; $4368: $02
    ld d, l                                       ; $4369: $55
    ld [bc], a                                    ; $436a: $02
    dec d                                         ; $436b: $15
    ld [bc], a                                    ; $436c: $02
    ld b, l                                       ; $436d: $45
    ld [bc], a                                    ; $436e: $02
    ld d, l                                       ; $436f: $55
    ld [bc], a                                    ; $4370: $02
    dec d                                         ; $4371: $15
    ld [bc], a                                    ; $4372: $02
    ld d, l                                       ; $4373: $55
    ld [bc], a                                    ; $4374: $02
    ld a, l                                       ; $4375: $7d
    ld [bc], a                                    ; $4376: $02
    inc bc                                        ; $4377: $03
    ld [bc], a                                    ; $4378: $02
    ld a, a                                       ; $4379: $7f
    ld [bc], a                                    ; $437a: $02
    add b                                         ; $437b: $80
    ld [bc], a                                    ; $437c: $02
    cp a                                          ; $437d: $bf
    ld [bc], a                                    ; $437e: $02

jr_0dc_437f:
    xor d                                         ; $437f: $aa
    ld [bc], a                                    ; $4380: $02
    and l                                         ; $4381: $a5
    ld [bc], a                                    ; $4382: $02
    xor d                                         ; $4383: $aa
    ld [bc], a                                    ; $4384: $02
    cp a                                          ; $4385: $bf
    ld [bc], a                                    ; $4386: $02
    add b                                         ; $4387: $80
    ld [bc], a                                    ; $4388: $02
    rst $38                                       ; $4389: $ff
    inc b                                         ; $438a: $04
    rra                                           ; $438b: $1f
    ld [bc], a                                    ; $438c: $02
    rrca                                          ; $438d: $0f
    ld a, [bc]                                    ; $438e: $0a
    nop                                           ; $438f: $00
    ld [bc], a                                    ; $4390: $02
    ld bc, $7d02                                  ; $4391: $01 $02 $7d
    ld [bc], a                                    ; $4394: $02
    ld d, l                                       ; $4395: $55
    ld [bc], a                                    ; $4396: $02
    ld e, l                                       ; $4397: $5d
    ld [bc], a                                    ; $4398: $02
    ld [hl], l                                    ; $4399: $75
    ld [bc], a                                    ; $439a: $02
    ld a, l                                       ; $439b: $7d
    ld [bc], a                                    ; $439c: $02
    ld bc, $7f02                                  ; $439d: $01 $02 $7f
    inc b                                         ; $43a0: $04
    ld a, b                                       ; $43a1: $78
    ld [bc], a                                    ; $43a2: $02
    ld h, b                                       ; $43a3: $60
    ld a, [bc]                                    ; $43a4: $0a
    nop                                           ; $43a5: $00
    rst $38                                       ; $43a6: $ff
    dec c                                         ; $43a7: $0d
    inc b                                         ; $43a8: $04
    ld sp, hl                                     ; $43a9: $f9
    ld [$01f2], sp                                ; $43aa: $08 $f2 $01
    add sp, -$06                                  ; $43ad: $e8 $fa
    add sp, -$01                                  ; $43af: $e8 $ff
    ld hl, sp-$06                                 ; $43b1: $f8 $fa
    ld hl, sp-$01                                 ; $43b3: $f8 $ff
    add d                                         ; $43b5: $82
    dec [hl]                                      ; $43b6: $35
    ld a, a                                       ; $43b7: $7f
    ld [bc], a                                    ; $43b8: $02
    add b                                         ; $43b9: $80
    sub h                                         ; $43ba: $94
    ld a, [bc]                                    ; $43bb: $0a
    xor d                                         ; $43bc: $aa
    and b                                         ; $43bd: $a0
    cp [hl]                                       ; $43be: $be
    ld a, [bc]                                    ; $43bf: $0a
    xor e                                         ; $43c0: $ab
    adc d                                         ; $43c1: $8a
    cp [hl]                                       ; $43c2: $be
    jr nz, jr_0dc_437f                            ; $43c3: $20 $ba

    ld a, [hl+]                                   ; $43c5: $2a
    cp e                                          ; $43c6: $bb
    add b                                         ; $43c7: $80
    xor [hl]                                      ; $43c8: $ae
    adc b                                         ; $43c9: $88
    cp d                                          ; $43ca: $ba
    nop                                           ; $43cb: $00
    xor a                                         ; $43cc: $af
    nop                                           ; $43cd: $00
    xor d                                         ; $43ce: $aa
    ld [bc], a                                    ; $43cf: $02
    add b                                         ; $43d0: $80
    add d                                         ; $43d1: $82
    inc d                                         ; $43d2: $14
    ld a, a                                       ; $43d3: $7f
    inc bc                                        ; $43d4: $03
    nop                                           ; $43d5: $00
    add e                                         ; $43d6: $83
    rst $38                                       ; $43d7: $ff
    inc b                                         ; $43d8: $04
    ld e, $03                                     ; $43d9: $1e $03
    ld bc, $1597                                  ; $43db: $01 $97 $15
    db $10                                        ; $43de: $10
    dec d                                         ; $43df: $15
    nop                                           ; $43e0: $00
    dec d                                         ; $43e1: $15
    ld bc, $001d                                  ; $43e2: $01 $1d $00
    dec d                                         ; $43e5: $15
    nop                                           ; $43e6: $00
    dec d                                         ; $43e7: $15
    nop                                           ; $43e8: $00
    dec e                                         ; $43e9: $1d
    nop                                           ; $43ea: $00
    dec d                                         ; $43eb: $15
    nop                                           ; $43ec: $00
    dec d                                         ; $43ed: $15
    ld bc, $0015                                  ; $43ee: $01 $15 $00
    ld bc, $1e08                                  ; $43f1: $01 $08 $1e
    inc bc                                        ; $43f4: $03
    nop                                           ; $43f5: $00
    adc l                                         ; $43f6: $8d
    rra                                           ; $43f7: $1f
    nop                                           ; $43f8: $00
    add b                                         ; $43f9: $80
    nop                                           ; $43fa: $00
    xor d                                         ; $43fb: $aa
    nop                                           ; $43fc: $00
    or h                                          ; $43fd: $b4
    nop                                           ; $43fe: $00
    xor d                                         ; $43ff: $aa
    nop                                           ; $4400: $00
    add b                                         ; $4401: $80
    nop                                           ; $4402: $00
    rst $38                                       ; $4403: $ff
    dec d                                         ; $4404: $15
    nop                                           ; $4405: $00
    adc e                                         ; $4406: $8b
    ld bc, $1500                                  ; $4407: $01 $00 $15
    nop                                           ; $440a: $00
    ld de, $0500                                  ; $440b: $11 $00 $05
    nop                                           ; $440e: $00
    ld bc, $1f00                                  ; $440f: $01 $00 $1f
    inc d                                         ; $4412: $14
    nop                                           ; $4413: $00
    rst $38                                       ; $4414: $ff
    dec c                                         ; $4415: $0d
    inc b                                         ; $4416: $04
    ld sp, hl                                     ; $4417: $f9
    rlca                                          ; $4418: $07
    ld a, [c]                                     ; $4419: $f2
    ld bc, $f9e6                                  ; $441a: $01 $e6 $f9
    and $00                                       ; $441d: $e6 $00
    or $f9                                        ; $441f: $f6 $f9
    or $00                                        ; $4421: $f6 $00
    ld [bc], a                                    ; $4423: $02
    rst $38                                       ; $4424: $ff
    ld [bc], a                                    ; $4425: $02
    ret nz                                        ; $4426: $c0

    ld [bc], a                                    ; $4427: $02
    cp a                                          ; $4428: $bf
    ld [bc], a                                    ; $4429: $02
    xor d                                         ; $442a: $aa
    ld [bc], a                                    ; $442b: $02
    and b                                         ; $442c: $a0
    ld [bc], a                                    ; $442d: $02
    xor d                                         ; $442e: $aa
    inc b                                         ; $442f: $04
    and d                                         ; $4430: $a2
    ld [bc], a                                    ; $4431: $02
    xor b                                         ; $4432: $a8
    ld [bc], a                                    ; $4433: $02
    and d                                         ; $4434: $a2
    ld [bc], a                                    ; $4435: $02
    xor b                                         ; $4436: $a8
    ld [bc], a                                    ; $4437: $02
    xor d                                         ; $4438: $aa
    ld [bc], a                                    ; $4439: $02
    cp a                                          ; $443a: $bf
    ld [bc], a                                    ; $443b: $02
    ret nz                                        ; $443c: $c0

    ld [bc], a                                    ; $443d: $02
    rst $38                                       ; $443e: $ff
    ld [bc], a                                    ; $443f: $02
    add b                                         ; $4440: $80
    ld [bc], a                                    ; $4441: $02
    ld a, a                                       ; $4442: $7f
    ld [bc], a                                    ; $4443: $02
    inc bc                                        ; $4444: $03
    ld [bc], a                                    ; $4445: $02
    ld a, l                                       ; $4446: $7d
    inc b                                         ; $4447: $04
    ld d, l                                       ; $4448: $55
    ld [bc], a                                    ; $4449: $02
    dec d                                         ; $444a: $15
    ld [bc], a                                    ; $444b: $02
    ld d, l                                       ; $444c: $55
    ld [bc], a                                    ; $444d: $02
    dec d                                         ; $444e: $15
    ld [bc], a                                    ; $444f: $02
    ld b, l                                       ; $4450: $45
    ld [bc], a                                    ; $4451: $02
    ld d, l                                       ; $4452: $55
    ld [bc], a                                    ; $4453: $02
    dec d                                         ; $4454: $15
    ld [bc], a                                    ; $4455: $02
    ld d, l                                       ; $4456: $55
    ld [bc], a                                    ; $4457: $02
    ld a, l                                       ; $4458: $7d
    ld [bc], a                                    ; $4459: $02
    inc bc                                        ; $445a: $03
    ld [bc], a                                    ; $445b: $02
    ld a, a                                       ; $445c: $7f
    ld [bc], a                                    ; $445d: $02
    ld bc, $bf02                                  ; $445e: $01 $02 $bf
    ld [bc], a                                    ; $4461: $02
    and l                                         ; $4462: $a5
    ld [bc], a                                    ; $4463: $02

jr_0dc_4464:
    xor d                                         ; $4464: $aa
    ld [bc], a                                    ; $4465: $02
    and l                                         ; $4466: $a5
    ld [bc], a                                    ; $4467: $02
    cp a                                          ; $4468: $bf
    ld [bc], a                                    ; $4469: $02
    add b                                         ; $446a: $80
    ld [bc], a                                    ; $446b: $02
    rst $38                                       ; $446c: $ff
    ld [$021f], sp                                ; $446d: $08 $1f $02
    rrca                                          ; $4470: $0f
    ld [$0200], sp                                ; $4471: $08 $00 $02
    ld a, l                                       ; $4474: $7d
    ld [bc], a                                    ; $4475: $02
    ld e, l                                       ; $4476: $5d
    ld [bc], a                                    ; $4477: $02
    ld [hl], l                                    ; $4478: $75
    ld [bc], a                                    ; $4479: $02
    ld e, l                                       ; $447a: $5d
    ld [bc], a                                    ; $447b: $02
    ld a, l                                       ; $447c: $7d
    ld [bc], a                                    ; $447d: $02
    ld bc, $7f02                                  ; $447e: $01 $02 $7f
    ld [bc], a                                    ; $4481: $02
    ld a, b                                       ; $4482: $78
    add c                                         ; $4483: $81
    ld [hl], h                                    ; $4484: $74
    inc bc                                        ; $4485: $03
    ld a, h                                       ; $4486: $7c
    ld [bc], a                                    ; $4487: $02
    ld a, b                                       ; $4488: $78
    ld [bc], a                                    ; $4489: $02
    ld h, b                                       ; $448a: $60
    ld [$ff00], sp                                ; $448b: $08 $00 $ff
    dec c                                         ; $448e: $0d
    inc b                                         ; $448f: $04
    ld sp, hl                                     ; $4490: $f9
    ld [$01f2], sp                                ; $4491: $08 $f2 $01
    rst $20                                       ; $4494: $e7
    ld a, [$ffe7]                                 ; $4495: $fa $e7 $ff
    rst $30                                       ; $4498: $f7
    ld a, [$fff7]                                 ; $4499: $fa $f7 $ff
    add d                                         ; $449c: $82
    dec [hl]                                      ; $449d: $35
    ld a, a                                       ; $449e: $7f
    ld [bc], a                                    ; $449f: $02
    add b                                         ; $44a0: $80
    sub d                                         ; $44a1: $92
    ld a, [bc]                                    ; $44a2: $0a
    xor d                                         ; $44a3: $aa
    and b                                         ; $44a4: $a0
    cp [hl]                                       ; $44a5: $be
    ld a, [bc]                                    ; $44a6: $0a
    xor e                                         ; $44a7: $ab
    jr nz, jr_0dc_4464                            ; $44a8: $20 $ba

    ld a, [hl+]                                   ; $44aa: $2a
    cp e                                          ; $44ab: $bb
    add b                                         ; $44ac: $80
    xor [hl]                                      ; $44ad: $ae
    adc b                                         ; $44ae: $88
    cp d                                          ; $44af: $ba
    nop                                           ; $44b0: $00
    xor a                                         ; $44b1: $af
    nop                                           ; $44b2: $00
    xor d                                         ; $44b3: $aa
    ld [bc], a                                    ; $44b4: $02
    add b                                         ; $44b5: $80
    add d                                         ; $44b6: $82
    inc d                                         ; $44b7: $14
    ld a, a                                       ; $44b8: $7f
    inc bc                                        ; $44b9: $03
    nop                                           ; $44ba: $00
    add l                                         ; $44bb: $85
    rst $38                                       ; $44bc: $ff
    nop                                           ; $44bd: $00
    add b                                         ; $44be: $80
    inc b                                         ; $44bf: $04
    ld e, $03                                     ; $44c0: $1e $03
    ld bc, $1595                                  ; $44c2: $01 $95 $15
    db $10                                        ; $44c5: $10
    dec d                                         ; $44c6: $15
    nop                                           ; $44c7: $00
    dec d                                         ; $44c8: $15
    ld bc, $0015                                  ; $44c9: $01 $15 $00
    dec d                                         ; $44cc: $15
    nop                                           ; $44cd: $00
    dec e                                         ; $44ce: $1d
    nop                                           ; $44cf: $00
    dec d                                         ; $44d0: $15
    nop                                           ; $44d1: $00
    dec d                                         ; $44d2: $15
    ld bc, $0015                                  ; $44d3: $01 $15 $00
    ld bc, $1e08                                  ; $44d6: $01 $08 $1e
    inc bc                                        ; $44d9: $03
    nop                                           ; $44da: $00
    adc l                                         ; $44db: $8d
    rra                                           ; $44dc: $1f
    nop                                           ; $44dd: $00
    ld bc, $b400                                  ; $44de: $01 $00 $b4
    nop                                           ; $44e1: $00
    xor d                                         ; $44e2: $aa
    nop                                           ; $44e3: $00
    or h                                          ; $44e4: $b4
    nop                                           ; $44e5: $00
    add b                                         ; $44e6: $80
    nop                                           ; $44e7: $00
    rst $38                                       ; $44e8: $ff
    rla                                           ; $44e9: $17
    nop                                           ; $44ea: $00
    adc c                                         ; $44eb: $89
    ld de, $0500                                  ; $44ec: $11 $00 $05
    nop                                           ; $44ef: $00
    ld de, $0100                                  ; $44f0: $11 $00 $01
    nop                                           ; $44f3: $00
    rra                                           ; $44f4: $1f
    ld d, $00                                     ; $44f5: $16 $00
    rst $38                                       ; $44f7: $ff
    dec c                                         ; $44f8: $0d
    inc b                                         ; $44f9: $04
    ld sp, hl                                     ; $44fa: $f9
    rlca                                          ; $44fb: $07
    ld a, [c]                                     ; $44fc: $f2
    ld bc, $f9e5                                  ; $44fd: $01 $e5 $f9
    push hl                                       ; $4500: $e5
    nop                                           ; $4501: $00
    push af                                       ; $4502: $f5
    ld sp, hl                                     ; $4503: $f9
    push af                                       ; $4504: $f5
    nop                                           ; $4505: $00
    ld [bc], a                                    ; $4506: $02
    rst $38                                       ; $4507: $ff
    ld [bc], a                                    ; $4508: $02
    ret nz                                        ; $4509: $c0

    ld [bc], a                                    ; $450a: $02
    cp a                                          ; $450b: $bf
    inc b                                         ; $450c: $04
    xor d                                         ; $450d: $aa
    ld [bc], a                                    ; $450e: $02
    and b                                         ; $450f: $a0
    ld [bc], a                                    ; $4510: $02
    xor b                                         ; $4511: $a8
    ld [bc], a                                    ; $4512: $02
    and b                                         ; $4513: $a0
    ld [bc], a                                    ; $4514: $02
    and d                                         ; $4515: $a2
    ld [bc], a                                    ; $4516: $02
    xor b                                         ; $4517: $a8
    ld [bc], a                                    ; $4518: $02
    xor d                                         ; $4519: $aa
    ld [bc], a                                    ; $451a: $02
    and d                                         ; $451b: $a2
    ld [bc], a                                    ; $451c: $02
    xor d                                         ; $451d: $aa
    ld [bc], a                                    ; $451e: $02
    cp a                                          ; $451f: $bf
    ld [bc], a                                    ; $4520: $02
    ret nz                                        ; $4521: $c0

    ld [bc], a                                    ; $4522: $02
    rst $38                                       ; $4523: $ff
    ld [bc], a                                    ; $4524: $02
    ld a, a                                       ; $4525: $7f
    ld [bc], a                                    ; $4526: $02
    inc bc                                        ; $4527: $03
    ld [bc], a                                    ; $4528: $02
    ld a, l                                       ; $4529: $7d
    ld [bc], a                                    ; $452a: $02
    ld d, l                                       ; $452b: $55
    ld [bc], a                                    ; $452c: $02
    dec b                                         ; $452d: $05
    ld [bc], a                                    ; $452e: $02
    ld d, l                                       ; $452f: $55
    ld [bc], a                                    ; $4530: $02
    dec d                                         ; $4531: $15
    inc b                                         ; $4532: $04
    ld b, l                                       ; $4533: $45
    ld [bc], a                                    ; $4534: $02
    dec d                                         ; $4535: $15
    inc b                                         ; $4536: $04
    ld d, l                                       ; $4537: $55
    ld [bc], a                                    ; $4538: $02
    dec d                                         ; $4539: $15
    ld [bc], a                                    ; $453a: $02
    ld a, l                                       ; $453b: $7d
    ld [bc], a                                    ; $453c: $02
    inc bc                                        ; $453d: $03
    ld [bc], a                                    ; $453e: $02
    ld a, a                                       ; $453f: $7f
    ld [bc], a                                    ; $4540: $02
    add b                                         ; $4541: $80
    ld [bc], a                                    ; $4542: $02
    cp a                                          ; $4543: $bf
    ld [bc], a                                    ; $4544: $02
    xor d                                         ; $4545: $aa
    ld [bc], a                                    ; $4546: $02
    and c                                         ; $4547: $a1
    ld [bc], a                                    ; $4548: $02
    xor c                                         ; $4549: $a9
    ld [bc], a                                    ; $454a: $02
    cp a                                          ; $454b: $bf
    ld [bc], a                                    ; $454c: $02
    ldh [$85], a                                  ; $454d: $e0 $85
    rst $38                                       ; $454f: $ff
    sbc a                                         ; $4550: $9f
    ld a, l                                       ; $4551: $7d
    ld a, a                                       ; $4552: $7f
    dec sp                                        ; $4553: $3b
    inc bc                                        ; $4554: $03
    ccf                                           ; $4555: $3f
    add d                                         ; $4556: $82
    ld [de], a                                    ; $4557: $12
    ld e, $02                                     ; $4558: $1e $02
    inc c                                         ; $455a: $0c
    ld b, $00                                     ; $455b: $06 $00
    ld [bc], a                                    ; $455d: $02
    ld bc, $7d02                                  ; $455e: $01 $02 $7d
    ld [bc], a                                    ; $4561: $02
    dec l                                         ; $4562: $2d
    ld [bc], a                                    ; $4563: $02
    dec d                                         ; $4564: $15
    ld [bc], a                                    ; $4565: $02
    dec l                                         ; $4566: $2d
    ld [bc], a                                    ; $4567: $02
    ld a, l                                       ; $4568: $7d
    ld [bc], a                                    ; $4569: $02
    rlca                                          ; $456a: $07
    add l                                         ; $456b: $85
    ld a, a                                       ; $456c: $7f
    ld a, c                                       ; $456d: $79
    ld a, $7e                                     ; $456e: $3e $7e
    ld d, h                                       ; $4570: $54
    inc bc                                        ; $4571: $03
    ld a, h                                       ; $4572: $7c
    add d                                         ; $4573: $82
    ld c, b                                       ; $4574: $48
    ld a, b                                       ; $4575: $78
    ld [bc], a                                    ; $4576: $02
    jr nc, @+$08                                  ; $4577: $30 $06

    nop                                           ; $4579: $00
    rst $38                                       ; $457a: $ff
    dec c                                         ; $457b: $0d
    inc b                                         ; $457c: $04
    ld sp, hl                                     ; $457d: $f9
    ld [$01f2], sp                                ; $457e: $08 $f2 $01
    and $fa                                       ; $4581: $e6 $fa
    and $ff                                       ; $4583: $e6 $ff
    or $fa                                        ; $4585: $f6 $fa
    or $ff                                        ; $4587: $f6 $ff
    add d                                         ; $4589: $82
    add hl, hl                                    ; $458a: $29
    ld a, a                                       ; $458b: $7f
    ld [bc], a                                    ; $458c: $02
    add b                                         ; $458d: $80
    ld [bc], a                                    ; $458e: $02
    xor d                                         ; $458f: $aa
    sub d                                         ; $4590: $92
    and d                                         ; $4591: $a2
    xor e                                         ; $4592: $ab
    ld [$02be], sp                                ; $4593: $08 $be $02
    xor a                                         ; $4596: $af
    xor b                                         ; $4597: $a8
    cp [hl]                                       ; $4598: $be
    nop                                           ; $4599: $00
    cp d                                          ; $459a: $ba
    ld [$80af], sp                                ; $459b: $08 $af $80
    xor d                                         ; $459e: $aa
    nop                                           ; $459f: $00
    cp d                                          ; $45a0: $ba
    nop                                           ; $45a1: $00
    xor e                                         ; $45a2: $ab
    ld [bc], a                                    ; $45a3: $02
    add b                                         ; $45a4: $80
    add d                                         ; $45a5: $82
    add hl, bc                                    ; $45a6: $09
    ld a, a                                       ; $45a7: $7f
    inc bc                                        ; $45a8: $03
    nop                                           ; $45a9: $00
    add e                                         ; $45aa: $83
    rst $38                                       ; $45ab: $ff
    ld [$021e], sp                                ; $45ac: $08 $1e $02
    ld bc, $0094                                  ; $45af: $01 $94 $00
    dec d                                         ; $45b2: $15
    ld bc, $011d                                  ; $45b3: $01 $1d $01
    dec d                                         ; $45b6: $15
    nop                                           ; $45b7: $00
    dec d                                         ; $45b8: $15
    nop                                           ; $45b9: $00
    dec e                                         ; $45ba: $1d
    nop                                           ; $45bb: $00
    dec e                                         ; $45bc: $1d
    nop                                           ; $45bd: $00
    dec d                                         ; $45be: $15
    ld bc, $0015                                  ; $45bf: $01 $15 $00
    dec d                                         ; $45c2: $15
    nop                                           ; $45c3: $00
    dec d                                         ; $45c4: $15
    ld [bc], a                                    ; $45c5: $02
    ld bc, $0882                                  ; $45c6: $01 $82 $08
    ld e, $03                                     ; $45c9: $1e $03
    nop                                           ; $45cb: $00
    adc l                                         ; $45cc: $8d
    rra                                           ; $45cd: $1f
    nop                                           ; $45ce: $00
    add b                                         ; $45cf: $80
    nop                                           ; $45d0: $00
    xor e                                         ; $45d1: $ab
    nop                                           ; $45d2: $00
    cp l                                          ; $45d3: $bd
    nop                                           ; $45d4: $00
    xor l                                         ; $45d5: $ad
    nop                                           ; $45d6: $00
    add b                                         ; $45d7: $80
    nop                                           ; $45d8: $00
    ccf                                           ; $45d9: $3f
    dec d                                         ; $45da: $15
    nop                                           ; $45db: $00
    adc e                                         ; $45dc: $8b
    ld bc, $0900                                  ; $45dd: $01 $00 $09
    nop                                           ; $45e0: $00
    dec d                                         ; $45e1: $15
    nop                                           ; $45e2: $00
    add hl, bc                                    ; $45e3: $09
    nop                                           ; $45e4: $00
    ld bc, $1c00                                  ; $45e5: $01 $00 $1c
    inc d                                         ; $45e8: $14
    nop                                           ; $45e9: $00
    rst $38                                       ; $45ea: $ff
    dec c                                         ; $45eb: $0d
    inc b                                         ; $45ec: $04
    ld sp, hl                                     ; $45ed: $f9
    rlca                                          ; $45ee: $07
    ld a, [c]                                     ; $45ef: $f2
    ld bc, $f8e4                                  ; $45f0: $01 $e4 $f8
    db $e4                                        ; $45f3: $e4
    nop                                           ; $45f4: $00
    db $f4                                        ; $45f5: $f4
    ld hl, sp-$0c                                 ; $45f6: $f8 $f4
    nop                                           ; $45f8: $00
    ld [bc], a                                    ; $45f9: $02
    ld bc, $fe02                                  ; $45fa: $01 $02 $fe
    ld [bc], a                                    ; $45fd: $02
    pop bc                                        ; $45fe: $c1
    ld [bc], a                                    ; $45ff: $02
    cp [hl]                                       ; $4600: $be
    inc b                                         ; $4601: $04
    xor d                                         ; $4602: $aa
    ld [bc], a                                    ; $4603: $02
    and b                                         ; $4604: $a0
    ld [bc], a                                    ; $4605: $02
    xor b                                         ; $4606: $a8
    ld [bc], a                                    ; $4607: $02
    and b                                         ; $4608: $a0
    ld [bc], a                                    ; $4609: $02
    xor b                                         ; $460a: $a8
    ld [bc], a                                    ; $460b: $02
    xor d                                         ; $460c: $aa
    ld [bc], a                                    ; $460d: $02
    and d                                         ; $460e: $a2
    ld [bc], a                                    ; $460f: $02
    xor e                                         ; $4610: $ab
    ld [bc], a                                    ; $4611: $02
    cp [hl]                                       ; $4612: $be
    ld [bc], a                                    ; $4613: $02
    pop bc                                        ; $4614: $c1
    inc b                                         ; $4615: $04
    cp $02                                        ; $4616: $fe $02
    ld b, $02                                     ; $4618: $06 $02
    ld a, [$aa02]                                 ; $461a: $fa $02 $aa
    ld [bc], a                                    ; $461d: $02
    ld a, [bc]                                    ; $461e: $0a
    ld [bc], a                                    ; $461f: $02
    xor d                                         ; $4620: $aa
    ld [bc], a                                    ; $4621: $02
    ld a, [hl+]                                   ; $4622: $2a
    ld [bc], a                                    ; $4623: $02
    adc d                                         ; $4624: $8a
    ld [bc], a                                    ; $4625: $02
    ld a, [hl+]                                   ; $4626: $2a
    inc b                                         ; $4627: $04
    xor e                                         ; $4628: $ab
    ld [bc], a                                    ; $4629: $02
    dec hl                                        ; $462a: $2b
    ld [bc], a                                    ; $462b: $02
    ei                                            ; $462c: $fb
    ld [bc], a                                    ; $462d: $02
    rlca                                          ; $462e: $07
    ld [bc], a                                    ; $462f: $02
    rst $38                                       ; $4630: $ff
    ld [bc], a                                    ; $4631: $02
    inc bc                                        ; $4632: $03
    ld [bc], a                                    ; $4633: $02
    add b                                         ; $4634: $80
    ld [bc], a                                    ; $4635: $02
    cp a                                          ; $4636: $bf
    ld [bc], a                                    ; $4637: $02
    xor d                                         ; $4638: $aa
    ld [bc], a                                    ; $4639: $02
    and l                                         ; $463a: $a5
    ld [bc], a                                    ; $463b: $02
    ld e, e                                       ; $463c: $5b
    ld [bc], a                                    ; $463d: $02
    ld e, h                                       ; $463e: $5c
    ld [bc], a                                    ; $463f: $02
    ld [hl], c                                    ; $4640: $71
    add h                                         ; $4641: $84
    ld a, a                                       ; $4642: $7f
    ld c, a                                       ; $4643: $4f
    ld a, $3f                                     ; $4644: $3e $3f
    ld [bc], a                                    ; $4646: $02
    rlca                                          ; $4647: $07
    ld [bc], a                                    ; $4648: $02
    rrca                                          ; $4649: $0f
    add d                                         ; $464a: $82
    add hl, bc                                    ; $464b: $09
    rrca                                          ; $464c: $0f
    ld [bc], a                                    ; $464d: $02
    rlca                                          ; $464e: $07
    ld b, $00                                     ; $464f: $06 $00
    ld [bc], a                                    ; $4651: $02
    ei                                            ; $4652: $fb
    ld [bc], a                                    ; $4653: $02
    ld e, e                                       ; $4654: $5b
    ld [bc], a                                    ; $4655: $02
    dec hl                                        ; $4656: $2b
    ld [bc], a                                    ; $4657: $02
    ld d, l                                       ; $4658: $55
    ld [bc], a                                    ; $4659: $02
    db $fd                                        ; $465a: $fd
    ld [bc], a                                    ; $465b: $02
    rlca                                          ; $465c: $07
    add a                                         ; $465d: $87
    rst $38                                       ; $465e: $ff
    ld sp, hl                                     ; $465f: $f9
    cp [hl]                                       ; $4660: $be
    cp $d8                                        ; $4661: $fe $d8
    ld hl, sp-$14                                 ; $4663: $f8 $ec
    inc bc                                        ; $4665: $03
    db $fc                                        ; $4666: $fc
    add d                                         ; $4667: $82
    db $e4                                        ; $4668: $e4
    db $fc                                        ; $4669: $fc
    ld [bc], a                                    ; $466a: $02
    inc a                                         ; $466b: $3c
    ld [bc], a                                    ; $466c: $02
    jr c, jr_0dc_4673                             ; $466d: $38 $04

    nop                                           ; $466f: $00
    rst $38                                       ; $4670: $ff
    dec c                                         ; $4671: $0d
    inc b                                         ; $4672: $04

jr_0dc_4673:
    ld sp, hl                                     ; $4673: $f9
    ld [$01f2], sp                                ; $4674: $08 $f2 $01
    push hl                                       ; $4677: $e5
    ld sp, hl                                     ; $4678: $f9
    push hl                                       ; $4679: $e5
    cp $f5                                        ; $467a: $fe $f5
    ld sp, hl                                     ; $467c: $f9
    push af                                       ; $467d: $f5
    rst $38                                       ; $467e: $ff
    add h                                         ; $467f: $84
    ld bc, $2803                                  ; $4680: $01 $03 $28
    ld a, h                                       ; $4683: $7c
    ld [bc], a                                    ; $4684: $02
    add d                                         ; $4685: $82
    sbc h                                         ; $4686: $9c
    xor d                                         ; $4687: $aa
    xor e                                         ; $4688: $ab
    and b                                         ; $4689: $a0
    xor d                                         ; $468a: $aa
    ld a, [bc]                                    ; $468b: $0a
    cp a                                          ; $468c: $bf
    nop                                           ; $468d: $00
    xor [hl]                                      ; $468e: $ae
    xor b                                         ; $468f: $a8
    cp a                                          ; $4690: $bf
    ld [$80ae], sp                                ; $4691: $08 $ae $80
    xor d                                         ; $4694: $aa
    nop                                           ; $4695: $00
    cp e                                          ; $4696: $bb
    nop                                           ; $4697: $00
    xor b                                         ; $4698: $a8
    add c                                         ; $4699: $81
    add e                                         ; $469a: $83
    ld [$007c], sp                                ; $469b: $08 $7c $00
    inc bc                                        ; $469e: $03
    nop                                           ; $469f: $00
    cp $08                                        ; $46a0: $fe $08
    ld e, $02                                     ; $46a2: $1e $02
    ld bc, $0092                                  ; $46a4: $01 $92 $00
    dec d                                         ; $46a7: $15
    ld bc, $011d                                  ; $46a8: $01 $1d $01
    dec d                                         ; $46ab: $15
    nop                                           ; $46ac: $00
    dec d                                         ; $46ad: $15
    nop                                           ; $46ae: $00
    dec e                                         ; $46af: $1d
    nop                                           ; $46b0: $00
    dec d                                         ; $46b1: $15
    ld bc, $0015                                  ; $46b2: $01 $15 $00
    dec d                                         ; $46b5: $15
    nop                                           ; $46b6: $00
    dec d                                         ; $46b7: $15
    ld [bc], a                                    ; $46b8: $02
    ld bc, $0882                                  ; $46b9: $01 $82 $08
    ld e, $03                                     ; $46bc: $1e $03
    nop                                           ; $46be: $00
    adc a                                         ; $46bf: $8f
    rra                                           ; $46c0: $1f
    nop                                           ; $46c1: $00
    ld bc, $8100                                  ; $46c2: $01 $00 $81
    nop                                           ; $46c5: $00
    xor e                                         ; $46c6: $ab
    nop                                           ; $46c7: $00
    or l                                          ; $46c8: $b5
    nop                                           ; $46c9: $00
    ld c, b                                       ; $46ca: $48
    nop                                           ; $46cb: $00
    ld b, a                                       ; $46cc: $47
    nop                                           ; $46cd: $00
    inc e                                         ; $46ce: $1c
    dec d                                         ; $46cf: $15
    nop                                           ; $46d0: $00
    adc c                                         ; $46d1: $89
    ld [de], a                                    ; $46d2: $12
    nop                                           ; $46d3: $00
    ld a, [hl+]                                   ; $46d4: $2a
    nop                                           ; $46d5: $00
    dec d                                         ; $46d6: $15
    nop                                           ; $46d7: $00
    ld bc, $3c00                                  ; $46d8: $01 $00 $3c
    ld d, $00                                     ; $46db: $16 $00
    rst $38                                       ; $46dd: $ff
    dec c                                         ; $46de: $0d
    inc b                                         ; $46df: $04
    ld sp, hl                                     ; $46e0: $f9
    rlca                                          ; $46e1: $07
    ld a, [c]                                     ; $46e2: $f2
    ld bc, $f8e5                                  ; $46e3: $01 $e5 $f8
    db $e4                                        ; $46e6: $e4
    nop                                           ; $46e7: $00
    db $f4                                        ; $46e8: $f4
    ld hl, sp-$0c                                 ; $46e9: $f8 $f4
    nop                                           ; $46eb: $00
    ld [bc], a                                    ; $46ec: $02
    rlca                                          ; $46ed: $07
    ld [bc], a                                    ; $46ee: $02
    ld hl, sp+$02                                 ; $46ef: $f8 $02
    rst $00                                       ; $46f1: $c7
    ld [bc], a                                    ; $46f2: $02
    cp d                                          ; $46f3: $ba
    ld [bc], a                                    ; $46f4: $02
    xor d                                         ; $46f5: $aa
    ld [bc], a                                    ; $46f6: $02
    xor b                                         ; $46f7: $a8
    ld [bc], a                                    ; $46f8: $02
    and b                                         ; $46f9: $a0
    ld [bc], a                                    ; $46fa: $02
    xor b                                         ; $46fb: $a8
    ld [bc], a                                    ; $46fc: $02
    and d                                         ; $46fd: $a2
    ld [bc], a                                    ; $46fe: $02
    and b                                         ; $46ff: $a0
    ld [bc], a                                    ; $4700: $02
    xor d                                         ; $4701: $aa
    ld [bc], a                                    ; $4702: $02
    and d                                         ; $4703: $a2
    ld [bc], a                                    ; $4704: $02
    xor a                                         ; $4705: $af
    ld [bc], a                                    ; $4706: $02
    cp b                                          ; $4707: $b8
    ld [bc], a                                    ; $4708: $02
    rst $00                                       ; $4709: $c7
    ld [bc], a                                    ; $470a: $02
    ld hl, sp+$02                                 ; $470b: $f8 $02
    ld a, $02                                     ; $470d: $3e $02
    add $02                                       ; $470f: $c6 $02
    ld a, [hl-]                                   ; $4711: $3a
    ld [bc], a                                    ; $4712: $02
    ld [$8a02], a                                 ; $4713: $ea $02 $8a
    ld [bc], a                                    ; $4716: $02
    ld a, [hl+]                                   ; $4717: $2a
    ld [bc], a                                    ; $4718: $02
    xor d                                         ; $4719: $aa
    ld [bc], a                                    ; $471a: $02
    dec bc                                        ; $471b: $0b
    ld [bc], a                                    ; $471c: $02
    adc e                                         ; $471d: $8b
    ld [bc], a                                    ; $471e: $02
    xor e                                         ; $471f: $ab
    ld [bc], a                                    ; $4720: $02
    dec hl                                        ; $4721: $2b
    ld [bc], a                                    ; $4722: $02
    xor e                                         ; $4723: $ab
    ld [bc], a                                    ; $4724: $02
    dec sp                                        ; $4725: $3b
    ld [bc], a                                    ; $4726: $02
    rst $00                                       ; $4727: $c7
    ld [bc], a                                    ; $4728: $02
    ccf                                           ; $4729: $3f
    ld [bc], a                                    ; $472a: $02
    jp $0002                                      ; $472b: $c3 $02 $00


    ld [bc], a                                    ; $472e: $02
    add e                                         ; $472f: $83
    ld [bc], a                                    ; $4730: $02
    cp l                                          ; $4731: $bd
    ld [bc], a                                    ; $4732: $02
    xor d                                         ; $4733: $aa
    ld [bc], a                                    ; $4734: $02
    cp c                                          ; $4735: $b9
    ld [bc], a                                    ; $4736: $02
    ld d, a                                       ; $4737: $57
    ld [bc], a                                    ; $4738: $02
    ld e, b                                       ; $4739: $58
    ld [bc], a                                    ; $473a: $02
    ld [hl], e                                    ; $473b: $73
    add [hl]                                      ; $473c: $86
    ld a, a                                       ; $473d: $7f
    ld c, a                                       ; $473e: $4f
    ld a, $3f                                     ; $473f: $3e $3f
    ld c, $0f                                     ; $4741: $0e $0f
    inc b                                         ; $4743: $04
    rlca                                          ; $4744: $07
    ld b, $00                                     ; $4745: $06 $00
    ld [bc], a                                    ; $4747: $02
    dec de                                        ; $4748: $1b
    ld [bc], a                                    ; $4749: $02
    db $eb                                        ; $474a: $eb
    ld [bc], a                                    ; $474b: $02
    ld d, l                                       ; $474c: $55
    ld [bc], a                                    ; $474d: $02
    dec l                                         ; $474e: $2d
    ld [bc], a                                    ; $474f: $02
    dec a                                         ; $4750: $3d
    ld [bc], a                                    ; $4751: $02
    rst $00                                       ; $4752: $c7
    add d                                         ; $4753: $82
    rra                                           ; $4754: $1f
    add hl, de                                    ; $4755: $19
    ld [bc], a                                    ; $4756: $02
    cp $86                                        ; $4757: $fe $86
    cp b                                          ; $4759: $b8
    ld hl, sp-$28                                 ; $475a: $f8 $d8
    ld hl, sp-$28                                 ; $475c: $f8 $d8
    ld hl, sp+$02                                 ; $475e: $f8 $02
    db $fc                                        ; $4760: $fc
    add d                                         ; $4761: $82
    call z, Call_000_02fc                         ; $4762: $cc $fc $02
    ld a, b                                       ; $4765: $78
    inc b                                         ; $4766: $04
    nop                                           ; $4767: $00
    rst $38                                       ; $4768: $ff
    dec c                                         ; $4769: $0d
    inc b                                         ; $476a: $04
    ld sp, hl                                     ; $476b: $f9
    ld [$01f2], sp                                ; $476c: $08 $f2 $01
    and $f9                                       ; $476f: $e6 $f9
    push hl                                       ; $4771: $e5
    cp $f5                                        ; $4772: $fe $f5
    ld sp, hl                                     ; $4774: $f9
    push af                                       ; $4775: $f5
    rst $38                                       ; $4776: $ff
    add h                                         ; $4777: $84
    add hl, bc                                    ; $4778: $09
    rrca                                          ; $4779: $0f
    jr nz, jr_0dc_47ec                            ; $477a: $20 $70

    ld [bc], a                                    ; $477c: $02
    adc d                                         ; $477d: $8a
    cp d                                          ; $477e: $ba
    and d                                         ; $477f: $a2
    xor e                                         ; $4780: $ab
    xor b                                         ; $4781: $a8
    xor [hl]                                      ; $4782: $ae
    ld [bc], a                                    ; $4783: $02
    cp a                                          ; $4784: $bf
    ld [$a0ae], sp                                ; $4785: $08 $ae $a0
    cp d                                          ; $4788: $ba
    ld [$00bf], sp                                ; $4789: $08 $bf $00
    xor d                                         ; $478c: $aa
    nop                                           ; $478d: $00
    cp e                                          ; $478e: $bb
    nop                                           ; $478f: $00
    and b                                         ; $4790: $a0
    adc c                                         ; $4791: $89
    adc a                                         ; $4792: $8f
    nop                                           ; $4793: $00
    ld [hl], b                                    ; $4794: $70
    nop                                           ; $4795: $00
    rrca                                          ; $4796: $0f
    nop                                           ; $4797: $00
    ld hl, sp+$08                                 ; $4798: $f8 $08
    ld c, $01                                     ; $479a: $0e $01
    ld de, $0501                                  ; $479c: $11 $01 $05
    nop                                           ; $479f: $00
    dec e                                         ; $47a0: $1d
    ld bc, $0015                                  ; $47a1: $01 $15 $00
    dec d                                         ; $47a4: $15
    nop                                           ; $47a5: $00
    dec e                                         ; $47a6: $1d
    ld bc, $011d                                  ; $47a7: $01 $1d $01
    dec d                                         ; $47aa: $15
    nop                                           ; $47ab: $00
    dec d                                         ; $47ac: $15
    nop                                           ; $47ad: $00
    dec d                                         ; $47ae: $15
    ld bc, $0811                                  ; $47af: $01 $11 $08
    ld c, $00                                     ; $47b2: $0e $00
    stop                                          ; $47b4: $10 $00
    rrca                                          ; $47b6: $0f
    nop                                           ; $47b7: $00
    add hl, de                                    ; $47b8: $19
    inc bc                                        ; $47b9: $03
    nop                                           ; $47ba: $00
    adc e                                         ; $47bb: $8b
    add l                                         ; $47bc: $85
    nop                                           ; $47bd: $00
    xor e                                         ; $47be: $ab
    nop                                           ; $47bf: $00
    adc l                                         ; $47c0: $8d
    nop                                           ; $47c1: $00
    ld d, b                                       ; $47c2: $50
    nop                                           ; $47c3: $00
    ld c, a                                       ; $47c4: $4f
    nop                                           ; $47c5: $00
    jr jr_0dc_47db                                ; $47c6: $18 $13

    nop                                           ; $47c8: $00
    adc e                                         ; $47c9: $8b
    ld a, [bc]                                    ; $47ca: $0a
    nop                                           ; $47cb: $00
    dec d                                         ; $47cc: $15
    nop                                           ; $47cd: $00
    add hl, hl                                    ; $47ce: $29
    nop                                           ; $47cf: $00
    ld hl, $1c00                                  ; $47d0: $21 $00 $1c
    nop                                           ; $47d3: $00
    jr nc, jr_0dc_47ea                            ; $47d4: $30 $14

    nop                                           ; $47d6: $00
    rst $38                                       ; $47d7: $ff
    dec c                                         ; $47d8: $0d
    inc b                                         ; $47d9: $04
    ld sp, hl                                     ; $47da: $f9

jr_0dc_47db:
    rlca                                          ; $47db: $07
    ld a, [c]                                     ; $47dc: $f2
    ld bc, $f9e6                                  ; $47dd: $01 $e6 $f9
    and $00                                       ; $47e0: $e6 $00
    or $f9                                        ; $47e2: $f6 $f9
    or $00                                        ; $47e4: $f6 $00
    ld [bc], a                                    ; $47e6: $02
    rst $38                                       ; $47e7: $ff
    ld [bc], a                                    ; $47e8: $02
    ret nz                                        ; $47e9: $c0

jr_0dc_47ea:
    ld [bc], a                                    ; $47ea: $02
    cp a                                          ; $47eb: $bf

jr_0dc_47ec:
    inc b                                         ; $47ec: $04
    xor d                                         ; $47ed: $aa
    ld [bc], a                                    ; $47ee: $02
    and b                                         ; $47ef: $a0
    ld [bc], a                                    ; $47f0: $02
    xor b                                         ; $47f1: $a8
    ld [bc], a                                    ; $47f2: $02
    and b                                         ; $47f3: $a0
    ld [bc], a                                    ; $47f4: $02
    and d                                         ; $47f5: $a2
    ld [bc], a                                    ; $47f6: $02
    xor b                                         ; $47f7: $a8
    ld [bc], a                                    ; $47f8: $02
    xor d                                         ; $47f9: $aa
    ld [bc], a                                    ; $47fa: $02
    and d                                         ; $47fb: $a2
    ld [bc], a                                    ; $47fc: $02
    xor d                                         ; $47fd: $aa
    ld [bc], a                                    ; $47fe: $02
    cp a                                          ; $47ff: $bf
    ld [bc], a                                    ; $4800: $02
    ret nz                                        ; $4801: $c0

    ld [bc], a                                    ; $4802: $02
    rst $38                                       ; $4803: $ff
    ld [bc], a                                    ; $4804: $02
    ld a, a                                       ; $4805: $7f
    ld [bc], a                                    ; $4806: $02
    inc bc                                        ; $4807: $03
    ld [bc], a                                    ; $4808: $02
    ld a, l                                       ; $4809: $7d
    ld [bc], a                                    ; $480a: $02
    ld d, l                                       ; $480b: $55
    ld [bc], a                                    ; $480c: $02
    dec b                                         ; $480d: $05
    ld [bc], a                                    ; $480e: $02
    ld d, l                                       ; $480f: $55
    ld [bc], a                                    ; $4810: $02
    dec d                                         ; $4811: $15
    inc b                                         ; $4812: $04
    ld b, l                                       ; $4813: $45
    ld [bc], a                                    ; $4814: $02
    dec d                                         ; $4815: $15
    inc b                                         ; $4816: $04
    ld d, l                                       ; $4817: $55
    ld [bc], a                                    ; $4818: $02
    dec d                                         ; $4819: $15
    ld [bc], a                                    ; $481a: $02
    ld a, l                                       ; $481b: $7d
    ld [bc], a                                    ; $481c: $02
    inc bc                                        ; $481d: $03
    ld [bc], a                                    ; $481e: $02
    ld a, a                                       ; $481f: $7f
    ld [bc], a                                    ; $4820: $02
    add b                                         ; $4821: $80
    ld [bc], a                                    ; $4822: $02
    cp a                                          ; $4823: $bf
    ld [bc], a                                    ; $4824: $02
    xor d                                         ; $4825: $aa
    ld [bc], a                                    ; $4826: $02
    and c                                         ; $4827: $a1
    ld [bc], a                                    ; $4828: $02
    xor c                                         ; $4829: $a9
    ld [bc], a                                    ; $482a: $02
    cp a                                          ; $482b: $bf
    ld [bc], a                                    ; $482c: $02
    ldh [$82], a                                  ; $482d: $e0 $82
    rst $38                                       ; $482f: $ff
    sbc a                                         ; $4830: $9f
    ld [bc], a                                    ; $4831: $02
    ld a, a                                       ; $4832: $7f
    add d                                         ; $4833: $82
    dec de                                        ; $4834: $1b
    rra                                           ; $4835: $1f
    ld [bc], a                                    ; $4836: $02
    ld c, $0a                                     ; $4837: $0e $0a
    nop                                           ; $4839: $00
    ld [bc], a                                    ; $483a: $02
    ld bc, $7d02                                  ; $483b: $01 $02 $7d
    ld [bc], a                                    ; $483e: $02
    dec l                                         ; $483f: $2d
    ld [bc], a                                    ; $4840: $02
    dec d                                         ; $4841: $15
    ld [bc], a                                    ; $4842: $02
    dec l                                         ; $4843: $2d
    ld [bc], a                                    ; $4844: $02
    ld a, l                                       ; $4845: $7d
    ld [bc], a                                    ; $4846: $02
    rlca                                          ; $4847: $07
    add h                                         ; $4848: $84
    ld a, a                                       ; $4849: $7f
    ld a, c                                       ; $484a: $79
    ld e, [hl]                                    ; $484b: $5e
    ld a, [hl]                                    ; $484c: $7e
    ld [bc], a                                    ; $484d: $02
    ld a, h                                       ; $484e: $7c
    add d                                         ; $484f: $82
    ld c, b                                       ; $4850: $48
    ld a, b                                       ; $4851: $78
    ld [bc], a                                    ; $4852: $02
    ld [hl], b                                    ; $4853: $70
    ld [$ff00], sp                                ; $4854: $08 $00 $ff
    dec c                                         ; $4857: $0d
    inc b                                         ; $4858: $04
    ld sp, hl                                     ; $4859: $f9
    ld [$01f2], sp                                ; $485a: $08 $f2 $01
    rst $20                                       ; $485d: $e7
    ld a, [$ffe7]                                 ; $485e: $fa $e7 $ff
    rst $30                                       ; $4861: $f7
    ld a, [$fff7]                                 ; $4862: $fa $f7 $ff
    add d                                         ; $4865: $82
    add hl, hl                                    ; $4866: $29
    ld a, a                                       ; $4867: $7f
    ld [bc], a                                    ; $4868: $02
    add b                                         ; $4869: $80
    ld [bc], a                                    ; $486a: $02
    xor d                                         ; $486b: $aa
    sub d                                         ; $486c: $92
    and d                                         ; $486d: $a2
    xor e                                         ; $486e: $ab
    ld [$02be], sp                                ; $486f: $08 $be $02
    xor a                                         ; $4872: $af
    xor b                                         ; $4873: $a8
    cp [hl]                                       ; $4874: $be
    nop                                           ; $4875: $00
    cp d                                          ; $4876: $ba
    ld [$80af], sp                                ; $4877: $08 $af $80
    xor d                                         ; $487a: $aa
    nop                                           ; $487b: $00
    cp d                                          ; $487c: $ba
    nop                                           ; $487d: $00
    xor e                                         ; $487e: $ab
    ld [bc], a                                    ; $487f: $02
    add b                                         ; $4880: $80
    add d                                         ; $4881: $82
    add hl, bc                                    ; $4882: $09
    ld a, a                                       ; $4883: $7f
    inc bc                                        ; $4884: $03
    nop                                           ; $4885: $00
    add e                                         ; $4886: $83
    rst $38                                       ; $4887: $ff
    ld [$021e], sp                                ; $4888: $08 $1e $02
    ld bc, $0094                                  ; $488b: $01 $94 $00
    dec d                                         ; $488e: $15
    ld bc, $011d                                  ; $488f: $01 $1d $01
    dec d                                         ; $4892: $15
    nop                                           ; $4893: $00
    dec d                                         ; $4894: $15
    nop                                           ; $4895: $00
    dec e                                         ; $4896: $1d
    nop                                           ; $4897: $00
    dec e                                         ; $4898: $1d
    nop                                           ; $4899: $00
    dec d                                         ; $489a: $15
    ld bc, $0015                                  ; $489b: $01 $15 $00
    dec d                                         ; $489e: $15
    nop                                           ; $489f: $00
    dec d                                         ; $48a0: $15
    ld [bc], a                                    ; $48a1: $02
    ld bc, $0882                                  ; $48a2: $01 $82 $08
    ld e, $03                                     ; $48a5: $1e $03
    nop                                           ; $48a7: $00
    adc l                                         ; $48a8: $8d
    rra                                           ; $48a9: $1f
    nop                                           ; $48aa: $00
    add b                                         ; $48ab: $80
    nop                                           ; $48ac: $00
    xor e                                         ; $48ad: $ab
    nop                                           ; $48ae: $00
    cp l                                          ; $48af: $bd
    nop                                           ; $48b0: $00
    xor l                                         ; $48b1: $ad
    nop                                           ; $48b2: $00
    add b                                         ; $48b3: $80
    nop                                           ; $48b4: $00
    ccf                                           ; $48b5: $3f
    dec d                                         ; $48b6: $15
    nop                                           ; $48b7: $00
    adc e                                         ; $48b8: $8b
    ld bc, $0900                                  ; $48b9: $01 $00 $09
    nop                                           ; $48bc: $00
    dec d                                         ; $48bd: $15
    nop                                           ; $48be: $00
    add hl, bc                                    ; $48bf: $09
    nop                                           ; $48c0: $00
    ld bc, $1c00                                  ; $48c1: $01 $00 $1c
    inc d                                         ; $48c4: $14
    nop                                           ; $48c5: $00
    rst $38                                       ; $48c6: $ff
    dec c                                         ; $48c7: $0d
    inc b                                         ; $48c8: $04
    ld sp, hl                                     ; $48c9: $f9
    rlca                                          ; $48ca: $07
    ld a, [c]                                     ; $48cb: $f2
    ld bc, $f9e5                                  ; $48cc: $01 $e5 $f9
    push hl                                       ; $48cf: $e5
    nop                                           ; $48d0: $00
    push af                                       ; $48d1: $f5
    ld sp, hl                                     ; $48d2: $f9
    push af                                       ; $48d3: $f5
    nop                                           ; $48d4: $00
    ld [bc], a                                    ; $48d5: $02
    rst $38                                       ; $48d6: $ff
    ld [bc], a                                    ; $48d7: $02
    ret nz                                        ; $48d8: $c0

    ld [bc], a                                    ; $48d9: $02
    cp a                                          ; $48da: $bf
    inc b                                         ; $48db: $04
    xor d                                         ; $48dc: $aa
    inc b                                         ; $48dd: $04
    and b                                         ; $48de: $a0
    ld [bc], a                                    ; $48df: $02
    and d                                         ; $48e0: $a2
    ld [bc], a                                    ; $48e1: $02
    xor b                                         ; $48e2: $a8
    ld [bc], a                                    ; $48e3: $02
    xor d                                         ; $48e4: $aa
    ld [bc], a                                    ; $48e5: $02
    and d                                         ; $48e6: $a2
    ld [bc], a                                    ; $48e7: $02
    xor d                                         ; $48e8: $aa
    ld [bc], a                                    ; $48e9: $02
    cp a                                          ; $48ea: $bf
    ld [bc], a                                    ; $48eb: $02
    ret nz                                        ; $48ec: $c0

    ld [bc], a                                    ; $48ed: $02
    rst $38                                       ; $48ee: $ff
    ld [bc], a                                    ; $48ef: $02
    add b                                         ; $48f0: $80
    ld [bc], a                                    ; $48f1: $02
    ld a, a                                       ; $48f2: $7f
    ld [bc], a                                    ; $48f3: $02
    inc bc                                        ; $48f4: $03
    ld [bc], a                                    ; $48f5: $02
    ld a, l                                       ; $48f6: $7d
    ld [bc], a                                    ; $48f7: $02
    ld d, l                                       ; $48f8: $55
    ld [bc], a                                    ; $48f9: $02
    dec b                                         ; $48fa: $05
    ld [bc], a                                    ; $48fb: $02
    ld d, l                                       ; $48fc: $55
    inc b                                         ; $48fd: $04
    ld b, l                                       ; $48fe: $45
    ld [bc], a                                    ; $48ff: $02
    dec d                                         ; $4900: $15
    inc b                                         ; $4901: $04
    ld d, l                                       ; $4902: $55
    ld [bc], a                                    ; $4903: $02
    dec d                                         ; $4904: $15
    ld [bc], a                                    ; $4905: $02
    ld a, l                                       ; $4906: $7d
    ld [bc], a                                    ; $4907: $02
    inc bc                                        ; $4908: $03
    ld [bc], a                                    ; $4909: $02
    ld a, a                                       ; $490a: $7f
    ld [bc], a                                    ; $490b: $02
    ld bc, $bf02                                  ; $490c: $01 $02 $bf
    ld [bc], a                                    ; $490f: $02
    xor d                                         ; $4910: $aa
    inc b                                         ; $4911: $04
    and d                                         ; $4912: $a2
    ld [bc], a                                    ; $4913: $02
    cp a                                          ; $4914: $bf
    ld [bc], a                                    ; $4915: $02
    ldh [$84], a                                  ; $4916: $e0 $84
    rst $38                                       ; $4918: $ff
    sbc a                                         ; $4919: $9f
    ld [hl], e                                    ; $491a: $73
    ld a, a                                       ; $491b: $7f
    ld [bc], a                                    ; $491c: $02
    rra                                           ; $491d: $1f
    ld [bc], a                                    ; $491e: $02
    ccf                                           ; $491f: $3f
    add d                                         ; $4920: $82
    daa                                           ; $4921: $27
    ccf                                           ; $4922: $3f
    ld [bc], a                                    ; $4923: $02
    inc e                                         ; $4924: $1c
    ld [$0200], sp                                ; $4925: $08 $00 $02
    ld a, l                                       ; $4928: $7d
    ld [bc], a                                    ; $4929: $02
    dec d                                         ; $492a: $15
    ld [bc], a                                    ; $492b: $02
    dec l                                         ; $492c: $2d
    ld [bc], a                                    ; $492d: $02
    ld d, l                                       ; $492e: $55
    ld [bc], a                                    ; $492f: $02
    ld a, l                                       ; $4930: $7d
    ld [bc], a                                    ; $4931: $02
    rlca                                          ; $4932: $07
    add a                                         ; $4933: $87
    ld a, a                                       ; $4934: $7f
    ld a, c                                       ; $4935: $79
    ld a, $7e                                     ; $4936: $3e $7e
    jr c, jr_0dc_49b2                             ; $4938: $38 $78

    ld e, h                                       ; $493a: $5c
    inc bc                                        ; $493b: $03
    ld a, h                                       ; $493c: $7c
    add d                                         ; $493d: $82
    ld c, b                                       ; $493e: $48
    ld a, b                                       ; $493f: $78
    ld [bc], a                                    ; $4940: $02
    jr nc, @+$08                                  ; $4941: $30 $06

    nop                                           ; $4943: $00
    rst $38                                       ; $4944: $ff
    dec c                                         ; $4945: $0d
    inc b                                         ; $4946: $04
    ld sp, hl                                     ; $4947: $f9
    ld [$01f2], sp                                ; $4948: $08 $f2 $01
    and $fa                                       ; $494b: $e6 $fa
    and $ff                                       ; $494d: $e6 $ff
    or $fa                                        ; $494f: $f6 $fa
    or $ff                                        ; $4951: $f6 $ff
    add d                                         ; $4953: $82
    add hl, hl                                    ; $4954: $29
    ld a, a                                       ; $4955: $7f
    ld [bc], a                                    ; $4956: $02
    add b                                         ; $4957: $80
    ld [bc], a                                    ; $4958: $02
    xor d                                         ; $4959: $aa
    sub b                                         ; $495a: $90
    and d                                         ; $495b: $a2
    xor e                                         ; $495c: $ab
    ld [$a8be], sp                                ; $495d: $08 $be $a8
    cp [hl]                                       ; $4960: $be
    nop                                           ; $4961: $00
    cp d                                          ; $4962: $ba
    ld [$80af], sp                                ; $4963: $08 $af $80
    xor d                                         ; $4966: $aa
    nop                                           ; $4967: $00
    cp d                                          ; $4968: $ba
    nop                                           ; $4969: $00
    xor e                                         ; $496a: $ab
    ld [bc], a                                    ; $496b: $02
    add b                                         ; $496c: $80
    add d                                         ; $496d: $82
    add hl, bc                                    ; $496e: $09
    ld a, a                                       ; $496f: $7f
    inc bc                                        ; $4970: $03
    nop                                           ; $4971: $00
    add l                                         ; $4972: $85
    rst $38                                       ; $4973: $ff
    nop                                           ; $4974: $00
    add b                                         ; $4975: $80
    ld [$021e], sp                                ; $4976: $08 $1e $02
    ld bc, $0092                                  ; $4979: $01 $92 $00
    dec d                                         ; $497c: $15
    ld bc, $011d                                  ; $497d: $01 $1d $01
    dec d                                         ; $4980: $15
    nop                                           ; $4981: $00
    dec e                                         ; $4982: $1d
    nop                                           ; $4983: $00
    dec e                                         ; $4984: $1d
    nop                                           ; $4985: $00
    dec d                                         ; $4986: $15
    ld bc, $0015                                  ; $4987: $01 $15 $00
    dec d                                         ; $498a: $15
    nop                                           ; $498b: $00
    dec d                                         ; $498c: $15
    ld [bc], a                                    ; $498d: $02
    ld bc, $0882                                  ; $498e: $01 $82 $08
    ld e, $03                                     ; $4991: $1e $03
    nop                                           ; $4993: $00
    adc l                                         ; $4994: $8d
    rra                                           ; $4995: $1f
    nop                                           ; $4996: $00
    ld bc, $ab00                                  ; $4997: $01 $00 $ab
    nop                                           ; $499a: $00
    cp e                                          ; $499b: $bb
    nop                                           ; $499c: $00
    cp d                                          ; $499d: $ba
    nop                                           ; $499e: $00
    add b                                         ; $499f: $80
    nop                                           ; $49a0: $00
    ccf                                           ; $49a1: $3f
    rla                                           ; $49a2: $17
    nop                                           ; $49a3: $00
    adc c                                         ; $49a4: $89
    dec d                                         ; $49a5: $15
    nop                                           ; $49a6: $00
    add hl, bc                                    ; $49a7: $09
    nop                                           ; $49a8: $00
    dec d                                         ; $49a9: $15
    nop                                           ; $49aa: $00
    ld bc, $1c00                                  ; $49ab: $01 $00 $1c
    ld d, $00                                     ; $49ae: $16 $00
    rst $38                                       ; $49b0: $ff
    dec c                                         ; $49b1: $0d

jr_0dc_49b2:
    inc b                                         ; $49b2: $04
    ld sp, hl                                     ; $49b3: $f9
    rlca                                          ; $49b4: $07
    ld a, [c]                                     ; $49b5: $f2
    ld bc, $f9e4                                  ; $49b6: $01 $e4 $f9
    db $e4                                        ; $49b9: $e4
    ld bc, $f9f4                                  ; $49ba: $01 $f4 $f9
    db $f4                                        ; $49bd: $f4
    ld bc, $7f02                                  ; $49be: $01 $02 $7f
    ld [bc], a                                    ; $49c1: $02
    ld h, b                                       ; $49c2: $60
    ld [bc], a                                    ; $49c3: $02
    ld e, a                                       ; $49c4: $5f
    inc b                                         ; $49c5: $04
    ld d, l                                       ; $49c6: $55
    ld [bc], a                                    ; $49c7: $02
    ld d, b                                       ; $49c8: $50
    ld [bc], a                                    ; $49c9: $02
    ld d, l                                       ; $49ca: $55
    ld [bc], a                                    ; $49cb: $02
    ld d, c                                       ; $49cc: $51
    ld [bc], a                                    ; $49cd: $02
    ld d, h                                       ; $49ce: $54
    ld [bc], a                                    ; $49cf: $02
    push de                                       ; $49d0: $d5
    ld [bc], a                                    ; $49d1: $02
    pop de                                        ; $49d2: $d1
    ld [bc], a                                    ; $49d3: $02
    push de                                       ; $49d4: $d5
    ld [bc], a                                    ; $49d5: $02
    rst $18                                       ; $49d6: $df
    ld [bc], a                                    ; $49d7: $02
    ldh [rSC], a                                  ; $49d8: $e0 $02
    rst $38                                       ; $49da: $ff
    ld [bc], a                                    ; $49db: $02
    ret nz                                        ; $49dc: $c0

    ld [bc], a                                    ; $49dd: $02
    add b                                         ; $49de: $80
    ld [bc], a                                    ; $49df: $02
    ld a, a                                       ; $49e0: $7f
    ld [bc], a                                    ; $49e1: $02
    add e                                         ; $49e2: $83
    ld [bc], a                                    ; $49e3: $02
    ld a, l                                       ; $49e4: $7d
    ld [bc], a                                    ; $49e5: $02
    ld d, l                                       ; $49e6: $55
    ld [bc], a                                    ; $49e7: $02
    dec b                                         ; $49e8: $05
    ld [bc], a                                    ; $49e9: $02
    ld d, l                                       ; $49ea: $55
    ld [bc], a                                    ; $49eb: $02
    dec d                                         ; $49ec: $15
    ld [bc], a                                    ; $49ed: $02
    ld b, l                                       ; $49ee: $45
    ld [bc], a                                    ; $49ef: $02
    dec d                                         ; $49f0: $15
    inc b                                         ; $49f1: $04
    ld d, l                                       ; $49f2: $55
    ld [bc], a                                    ; $49f3: $02
    sub l                                         ; $49f4: $95
    ld [bc], a                                    ; $49f5: $02
    ld a, l                                       ; $49f6: $7d
    ld [bc], a                                    ; $49f7: $02
    add e                                         ; $49f8: $83
    ld [bc], a                                    ; $49f9: $02
    ld a, a                                       ; $49fa: $7f
    ld [bc], a                                    ; $49fb: $02
    rst $18                                       ; $49fc: $df
    ld [bc], a                                    ; $49fd: $02
    jp c, $d202                                   ; $49fe: $da $02 $d2

    ld [bc], a                                    ; $4a01: $02
    xor b                                         ; $4a02: $a8
    ld [bc], a                                    ; $4a03: $02
    cp a                                          ; $4a04: $bf
    ld [bc], a                                    ; $4a05: $02
    ldh [$87], a                                  ; $4a06: $e0 $87
    rst $38                                       ; $4a08: $ff
    sbc a                                         ; $4a09: $9f
    ld a, l                                       ; $4a0a: $7d
    ld a, a                                       ; $4a0b: $7f
    dec de                                        ; $4a0c: $1b
    rra                                           ; $4a0d: $1f
    scf                                           ; $4a0e: $37
    inc bc                                        ; $4a0f: $03
    ccf                                           ; $4a10: $3f
    add d                                         ; $4a11: $82
    daa                                           ; $4a12: $27
    ccf                                           ; $4a13: $3f
    ld [bc], a                                    ; $4a14: $02
    inc a                                         ; $4a15: $3c
    ld [bc], a                                    ; $4a16: $02
    inc e                                         ; $4a17: $1c
    inc b                                         ; $4a18: $04
    nop                                           ; $4a19: $00
    ld [bc], a                                    ; $4a1a: $02
    ld bc, $fd02                                  ; $4a1b: $01 $02 $fd
    ld [bc], a                                    ; $4a1e: $02
    dec l                                         ; $4a1f: $2d
    ld [bc], a                                    ; $4a20: $02
    sub l                                         ; $4a21: $95
    ld [bc], a                                    ; $4a22: $02
    ld [$3a02], a                                 ; $4a23: $ea $02 $3a
    ld [bc], a                                    ; $4a26: $02
    adc [hl]                                      ; $4a27: $8e
    add h                                         ; $4a28: $84
    cp $f2                                        ; $4a29: $fe $f2
    ld a, h                                       ; $4a2b: $7c
    db $fc                                        ; $4a2c: $fc
    ld [bc], a                                    ; $4a2d: $02
    ldh [rSC], a                                  ; $4a2e: $e0 $02
    ldh a, [$82]                                  ; $4a30: $f0 $82
    sub b                                         ; $4a32: $90
    ldh a, [rSC]                                  ; $4a33: $f0 $02
    ldh [rTMA], a                                 ; $4a35: $e0 $06
    nop                                           ; $4a37: $00
    rst $38                                       ; $4a38: $ff
    dec c                                         ; $4a39: $0d
    inc b                                         ; $4a3a: $04
    ld sp, hl                                     ; $4a3b: $f9
    ld [$01f2], sp                                ; $4a3c: $08 $f2 $01
    push hl                                       ; $4a3f: $e5
    ei                                            ; $4a40: $fb
    and $00                                       ; $4a41: $e6 $00
    push af                                       ; $4a43: $f5
    ld a, [$00f5]                                 ; $4a44: $fa $f5 $00
    add d                                         ; $4a47: $82
    jr z, @+$80                                   ; $4a48: $28 $7e

    ld [bc], a                                    ; $4a4a: $02
    add c                                         ; $4a4b: $81
    ld [bc], a                                    ; $4a4c: $02
    xor d                                         ; $4a4d: $aa
    sub h                                         ; $4a4e: $94
    and d                                         ; $4a4f: $a2
    xor d                                         ; $4a50: $aa
    ld [$00bf], sp                                ; $4a51: $08 $bf $00
    xor d                                         ; $4a54: $aa
    xor b                                         ; $4a55: $a8
    cp e                                          ; $4a56: $bb
    nop                                           ; $4a57: $00
    xor [hl]                                      ; $4a58: $ae
    add b                                         ; $4a59: $80
    xor e                                         ; $4a5a: $ab
    nop                                           ; $4a5b: $00
    cp d                                          ; $4a5c: $ba
    nop                                           ; $4a5d: $00
    xor d                                         ; $4a5e: $aa
    add b                                         ; $4a5f: $80
    add c                                         ; $4a60: $81
    ld [$027e], sp                                ; $4a61: $08 $7e $02
    ld bc, $0086                                  ; $4a64: $01 $86 $00
    cp $00                                        ; $4a67: $fe $00
    add e                                         ; $4a69: $83
    ld [$021e], sp                                ; $4a6a: $08 $1e $02
    ld bc, $0092                                  ; $4a6d: $01 $92 $00
    dec d                                         ; $4a70: $15
    ld bc, $011d                                  ; $4a71: $01 $1d $01
    dec d                                         ; $4a74: $15
    nop                                           ; $4a75: $00
    dec d                                         ; $4a76: $15
    nop                                           ; $4a77: $00
    dec e                                         ; $4a78: $1d
    nop                                           ; $4a79: $00
    dec d                                         ; $4a7a: $15
    ld bc, $0015                                  ; $4a7b: $01 $15 $00
    dec d                                         ; $4a7e: $15
    nop                                           ; $4a7f: $00
    dec d                                         ; $4a80: $15
    ld [bc], a                                    ; $4a81: $02
    ld bc, $0882                                  ; $4a82: $01 $82 $08
    ld e, $03                                     ; $4a85: $1e $03
    nop                                           ; $4a87: $00
    adc l                                         ; $4a88: $8d
    rra                                           ; $4a89: $1f
    nop                                           ; $4a8a: $00
    add c                                         ; $4a8b: $81
    nop                                           ; $4a8c: $00
    ld c, b                                       ; $4a8d: $48
    nop                                           ; $4a8e: $00
    ld e, e                                       ; $4a8f: $5b
    nop                                           ; $4a90: $00
    xor [hl]                                      ; $4a91: $ae
    nop                                           ; $4a92: $00
    add b                                         ; $4a93: $80
    nop                                           ; $4a94: $00
    ccf                                           ; $4a95: $3f
    add hl, de                                    ; $4a96: $19
    nop                                           ; $4a97: $00
    adc c                                         ; $4a98: $89
    add hl, hl                                    ; $4a99: $29
    nop                                           ; $4a9a: $00
    dec [hl]                                      ; $4a9b: $35
    nop                                           ; $4a9c: $00
    ld a, [bc]                                    ; $4a9d: $0a
    nop                                           ; $4a9e: $00
    ld [hl+], a                                   ; $4a9f: $22
    nop                                           ; $4aa0: $00
    jr c, jr_0dc_4ab7                             ; $4aa1: $38 $14

    nop                                           ; $4aa3: $00
    rst $38                                       ; $4aa4: $ff
    dec c                                         ; $4aa5: $0d
    inc b                                         ; $4aa6: $04
    ld sp, hl                                     ; $4aa7: $f9
    rlca                                          ; $4aa8: $07
    ld a, [c]                                     ; $4aa9: $f2
    ld bc, $f9e4                                  ; $4aaa: $01 $e4 $f9
    push hl                                       ; $4aad: $e5
    ld bc, $f9f4                                  ; $4aae: $01 $f4 $f9
    db $f4                                        ; $4ab1: $f4
    ld bc, $7c02                                  ; $4ab2: $01 $02 $7c
    ld [bc], a                                    ; $4ab5: $02
    ld h, e                                       ; $4ab6: $63

jr_0dc_4ab7:
    ld [bc], a                                    ; $4ab7: $02
    ld e, h                                       ; $4ab8: $5c
    ld [bc], a                                    ; $4ab9: $02
    ld d, a                                       ; $4aba: $57
    ld [bc], a                                    ; $4abb: $02
    ld d, l                                       ; $4abc: $55
    ld [bc], a                                    ; $4abd: $02
    ld d, c                                       ; $4abe: $51
    ld [bc], a                                    ; $4abf: $02
    ld d, h                                       ; $4ac0: $54
    ld [bc], a                                    ; $4ac1: $02
    pop de                                        ; $4ac2: $d1
    ld [bc], a                                    ; $4ac3: $02
    push de                                       ; $4ac4: $d5
    ld [bc], a                                    ; $4ac5: $02
    call nc, $d102                                ; $4ac6: $d4 $02 $d1
    ld [bc], a                                    ; $4ac9: $02
    push de                                       ; $4aca: $d5
    ld [bc], a                                    ; $4acb: $02
    db $dd                                        ; $4acc: $dd
    ld [bc], a                                    ; $4acd: $02
    db $e3                                        ; $4ace: $e3
    ld [bc], a                                    ; $4acf: $02
    db $fc                                        ; $4ad0: $fc
    ld [bc], a                                    ; $4ad1: $02
    jp $e002                                      ; $4ad2: $c3 $02 $e0


    ld [bc], a                                    ; $4ad5: $02
    rra                                           ; $4ad6: $1f
    ld [bc], a                                    ; $4ad7: $02
    db $e3                                        ; $4ad8: $e3
    ld [bc], a                                    ; $4ad9: $02
    ld e, l                                       ; $4ada: $5d
    ld [bc], a                                    ; $4adb: $02
    dec d                                         ; $4adc: $15
    ld [bc], a                                    ; $4add: $02
    ld b, l                                       ; $4ade: $45
    ld [bc], a                                    ; $4adf: $02
    dec d                                         ; $4ae0: $15
    ld [bc], a                                    ; $4ae1: $02
    ld b, l                                       ; $4ae2: $45
    ld [bc], a                                    ; $4ae3: $02
    dec b                                         ; $4ae4: $05
    inc b                                         ; $4ae5: $04
    ld d, l                                       ; $4ae6: $55
    ld [bc], a                                    ; $4ae7: $02
    dec d                                         ; $4ae8: $15
    ld [bc], a                                    ; $4ae9: $02
    push af                                       ; $4aea: $f5
    ld [bc], a                                    ; $4aeb: $02
    dec e                                         ; $4aec: $1d
    ld [bc], a                                    ; $4aed: $02
    db $e3                                        ; $4aee: $e3
    ld [bc], a                                    ; $4aef: $02
    rra                                           ; $4af0: $1f
    ld [bc], a                                    ; $4af1: $02
    ret c                                         ; $4af2: $d8

    ld [bc], a                                    ; $4af3: $02
    rst $10                                       ; $4af4: $d7
    ld [bc], a                                    ; $4af5: $02
    xor d                                         ; $4af6: $aa
    ld [bc], a                                    ; $4af7: $02
    xor c                                         ; $4af8: $a9
    ld [bc], a                                    ; $4af9: $02
    cp l                                          ; $4afa: $bd
    ld [bc], a                                    ; $4afb: $02
    db $e3                                        ; $4afc: $e3
    add d                                         ; $4afd: $82
    ld hl, sp-$68                                 ; $4afe: $f8 $98
    ld [bc], a                                    ; $4b00: $02
    ld a, a                                       ; $4b01: $7f
    add [hl]                                      ; $4b02: $86
    dec c                                         ; $4b03: $0d
    rrca                                          ; $4b04: $0f
    dec de                                        ; $4b05: $1b
    rra                                           ; $4b06: $1f
    dec de                                        ; $4b07: $1b
    rra                                           ; $4b08: $1f
    ld [bc], a                                    ; $4b09: $02
    ccf                                           ; $4b0a: $3f
    add d                                         ; $4b0b: $82
    inc sp                                        ; $4b0c: $33
    ccf                                           ; $4b0d: $3f
    ld [bc], a                                    ; $4b0e: $02
    ld e, $06                                     ; $4b0f: $1e $06
    nop                                           ; $4b11: $00
    ld [bc], a                                    ; $4b12: $02
    pop bc                                        ; $4b13: $c1
    ld [bc], a                                    ; $4b14: $02
    cp l                                          ; $4b15: $bd
    ld [bc], a                                    ; $4b16: $02
    dec l                                         ; $4b17: $2d
    ld [bc], a                                    ; $4b18: $02
    ld d, l                                       ; $4b19: $55
    ld [bc], a                                    ; $4b1a: $02
    ld [$1a02], a                                 ; $4b1b: $ea $02 $1a
    ld [bc], a                                    ; $4b1e: $02
    adc $86                                       ; $4b1f: $ce $86
    cp $f2                                        ; $4b21: $fe $f2
    ld a, h                                       ; $4b23: $7c
    db $fc                                        ; $4b24: $fc
    ld [hl], b                                    ; $4b25: $70
    ldh a, [rDIV]                                 ; $4b26: $f0 $04
    ldh [rTMA], a                                 ; $4b28: $e0 $06
    nop                                           ; $4b2a: $00
    rst $38                                       ; $4b2b: $ff
    dec c                                         ; $4b2c: $0d
    inc b                                         ; $4b2d: $04
    ld sp, hl                                     ; $4b2e: $f9
    ld [$01f2], sp                                ; $4b2f: $08 $f2 $01
    push hl                                       ; $4b32: $e5
    ei                                            ; $4b33: $fb
    and $00                                       ; $4b34: $e6 $00
    push af                                       ; $4b36: $f5
    ld a, [$00f5]                                 ; $4b37: $fa $f5 $00
    add h                                         ; $4b3a: $84
    jr nz, jr_0dc_4bad                            ; $4b3b: $20 $70

    adc c                                         ; $4b3d: $89
    adc a                                         ; $4b3e: $8f
    ld [bc], a                                    ; $4b3f: $02
    and b                                         ; $4b40: $a0
    ld [bc], a                                    ; $4b41: $02
    xor d                                         ; $4b42: $aa
    call nz, $bb00                                ; $4b43: $c4 $00 $bb
    ld [$a0ae], sp                                ; $4b46: $08 $ae $a0
    cp e                                          ; $4b49: $bb
    nop                                           ; $4b4a: $00
    xor d                                         ; $4b4b: $aa
    add b                                         ; $4b4c: $80
    xor a                                         ; $4b4d: $af
    nop                                           ; $4b4e: $00
    cp d                                          ; $4b4f: $ba
    nop                                           ; $4b50: $00
    xor d                                         ; $4b51: $aa
    add b                                         ; $4b52: $80
    adc e                                         ; $4b53: $8b
    nop                                           ; $4b54: $00
    ld [hl], b                                    ; $4b55: $70
    add hl, bc                                    ; $4b56: $09
    rrca                                          ; $4b57: $0f
    nop                                           ; $4b58: $00
    ldh a, [rP1]                                  ; $4b59: $f0 $00
    sbc a                                         ; $4b5b: $9f
    nop                                           ; $4b5c: $00
    db $10                                        ; $4b5d: $10
    ld [$010e], sp                                ; $4b5e: $08 $0e $01
    ld de, $1500                                  ; $4b61: $11 $00 $15
    ld bc, $011d                                  ; $4b64: $01 $1d $01
    dec d                                         ; $4b67: $15
    nop                                           ; $4b68: $00
    dec e                                         ; $4b69: $1d
    nop                                           ; $4b6a: $00
    dec e                                         ; $4b6b: $1d
    nop                                           ; $4b6c: $00
    dec d                                         ; $4b6d: $15
    ld bc, $0015                                  ; $4b6e: $01 $15 $00
    dec d                                         ; $4b71: $15
    nop                                           ; $4b72: $00
    dec b                                         ; $4b73: $05
    ld bc, $0811                                  ; $4b74: $01 $11 $08
    ld c, $00                                     ; $4b77: $0e $00
    stop                                          ; $4b79: $10 $00
    rra                                           ; $4b7b: $1f
    nop                                           ; $4b7c: $00
    ld d, b                                       ; $4b7d: $50
    nop                                           ; $4b7e: $00
    xor d                                         ; $4b7f: $aa
    nop                                           ; $4b80: $00
    xor l                                         ; $4b81: $ad
    nop                                           ; $4b82: $00
    add l                                         ; $4b83: $85
    nop                                           ; $4b84: $00
    jr c, jr_0dc_4b87                             ; $4b85: $38 $00

jr_0dc_4b87:
    rrca                                          ; $4b87: $0f
    rla                                           ; $4b88: $17
    nop                                           ; $4b89: $00
    adc e                                         ; $4b8a: $8b
    ld hl, $2900                                  ; $4b8b: $21 $00 $29
    nop                                           ; $4b8e: $00
    dec d                                         ; $4b8f: $15
    nop                                           ; $4b90: $00
    ld a, [bc]                                    ; $4b91: $0a
    nop                                           ; $4b92: $00
    ld [hl-], a                                   ; $4b93: $32
    nop                                           ; $4b94: $00
    jr jr_0dc_4ba9                                ; $4b95: $18 $12

    nop                                           ; $4b97: $00
    rst $38                                       ; $4b98: $ff
    dec c                                         ; $4b99: $0d
    inc b                                         ; $4b9a: $04
    ld sp, hl                                     ; $4b9b: $f9
    rlca                                          ; $4b9c: $07
    ld a, [c]                                     ; $4b9d: $f2
    ld bc, $f9e6                                  ; $4b9e: $01 $e6 $f9
    and $00                                       ; $4ba1: $e6 $00
    or $f9                                        ; $4ba3: $f6 $f9
    or $00                                        ; $4ba5: $f6 $00
    ld [bc], a                                    ; $4ba7: $02
    rst $38                                       ; $4ba8: $ff

jr_0dc_4ba9:
    ld [bc], a                                    ; $4ba9: $02
    ret nz                                        ; $4baa: $c0

    ld [bc], a                                    ; $4bab: $02
    cp a                                          ; $4bac: $bf

jr_0dc_4bad:
    inc b                                         ; $4bad: $04
    xor d                                         ; $4bae: $aa
    ld [bc], a                                    ; $4baf: $02
    and b                                         ; $4bb0: $a0
    ld [bc], a                                    ; $4bb1: $02
    xor b                                         ; $4bb2: $a8
    ld [bc], a                                    ; $4bb3: $02
    and b                                         ; $4bb4: $a0
    ld [bc], a                                    ; $4bb5: $02
    and d                                         ; $4bb6: $a2
    ld [bc], a                                    ; $4bb7: $02
    xor b                                         ; $4bb8: $a8
    ld [bc], a                                    ; $4bb9: $02
    xor d                                         ; $4bba: $aa
    ld [bc], a                                    ; $4bbb: $02
    and d                                         ; $4bbc: $a2
    ld [bc], a                                    ; $4bbd: $02
    xor d                                         ; $4bbe: $aa
    ld [bc], a                                    ; $4bbf: $02
    cp a                                          ; $4bc0: $bf
    ld [bc], a                                    ; $4bc1: $02
    ret nz                                        ; $4bc2: $c0

    ld [bc], a                                    ; $4bc3: $02
    rst $38                                       ; $4bc4: $ff
    ld [bc], a                                    ; $4bc5: $02
    ld a, a                                       ; $4bc6: $7f
    ld [bc], a                                    ; $4bc7: $02
    inc bc                                        ; $4bc8: $03
    ld [bc], a                                    ; $4bc9: $02
    ld a, l                                       ; $4bca: $7d
    ld [bc], a                                    ; $4bcb: $02
    ld d, l                                       ; $4bcc: $55
    ld [bc], a                                    ; $4bcd: $02
    dec b                                         ; $4bce: $05
    ld [bc], a                                    ; $4bcf: $02
    ld d, l                                       ; $4bd0: $55
    ld [bc], a                                    ; $4bd1: $02
    dec d                                         ; $4bd2: $15
    inc b                                         ; $4bd3: $04
    ld b, l                                       ; $4bd4: $45
    ld [bc], a                                    ; $4bd5: $02
    dec d                                         ; $4bd6: $15
    inc b                                         ; $4bd7: $04
    ld d, l                                       ; $4bd8: $55
    ld [bc], a                                    ; $4bd9: $02
    dec d                                         ; $4bda: $15
    ld [bc], a                                    ; $4bdb: $02
    ld a, l                                       ; $4bdc: $7d
    ld [bc], a                                    ; $4bdd: $02
    inc bc                                        ; $4bde: $03
    ld [bc], a                                    ; $4bdf: $02
    ld a, a                                       ; $4be0: $7f
    ld [bc], a                                    ; $4be1: $02
    add b                                         ; $4be2: $80
    ld [bc], a                                    ; $4be3: $02
    cp a                                          ; $4be4: $bf
    ld [bc], a                                    ; $4be5: $02
    xor d                                         ; $4be6: $aa
    ld [bc], a                                    ; $4be7: $02
    and c                                         ; $4be8: $a1
    ld [bc], a                                    ; $4be9: $02
    xor c                                         ; $4bea: $a9
    ld [bc], a                                    ; $4beb: $02
    cp a                                          ; $4bec: $bf
    ld [bc], a                                    ; $4bed: $02
    ldh [$84], a                                  ; $4bee: $e0 $84
    rst $38                                       ; $4bf0: $ff
    sbc a                                         ; $4bf1: $9f
    ld a, e                                       ; $4bf2: $7b
    ld a, a                                       ; $4bf3: $7f
    ld [bc], a                                    ; $4bf4: $02
    ccf                                           ; $4bf5: $3f
    add d                                         ; $4bf6: $82
    ld [de], a                                    ; $4bf7: $12
    ld e, $02                                     ; $4bf8: $1e $02
    ld c, $08                                     ; $4bfa: $0e $08
    nop                                           ; $4bfc: $00
    ld [bc], a                                    ; $4bfd: $02
    ld bc, $7d02                                  ; $4bfe: $01 $02 $7d
    ld [bc], a                                    ; $4c01: $02
    dec l                                         ; $4c02: $2d
    ld [bc], a                                    ; $4c03: $02
    dec d                                         ; $4c04: $15
    ld [bc], a                                    ; $4c05: $02
    dec l                                         ; $4c06: $2d
    ld [bc], a                                    ; $4c07: $02
    ld a, l                                       ; $4c08: $7d
    ld [bc], a                                    ; $4c09: $02
    rlca                                          ; $4c0a: $07
    add d                                         ; $4c0b: $82
    ld a, a                                       ; $4c0c: $7f
    ld a, c                                       ; $4c0d: $79
    ld [bc], a                                    ; $4c0e: $02
    ld a, [hl]                                    ; $4c0f: $7e
    add d                                         ; $4c10: $82
    ld e, b                                       ; $4c11: $58
    ld a, b                                       ; $4c12: $78
    ld [bc], a                                    ; $4c13: $02
    ld [hl], b                                    ; $4c14: $70
    ld a, [bc]                                    ; $4c15: $0a
    nop                                           ; $4c16: $00
    rst $38                                       ; $4c17: $ff
    dec c                                         ; $4c18: $0d
    inc b                                         ; $4c19: $04
    ld sp, hl                                     ; $4c1a: $f9
    ld [$01f2], sp                                ; $4c1b: $08 $f2 $01
    rst $20                                       ; $4c1e: $e7
    ld a, [$ffe7]                                 ; $4c1f: $fa $e7 $ff
    rst $30                                       ; $4c22: $f7
    ld a, [$fff7]                                 ; $4c23: $fa $f7 $ff
    add d                                         ; $4c26: $82
    add hl, hl                                    ; $4c27: $29
    ld a, a                                       ; $4c28: $7f
    ld [bc], a                                    ; $4c29: $02
    add b                                         ; $4c2a: $80
    ld [bc], a                                    ; $4c2b: $02
    xor d                                         ; $4c2c: $aa
    sub d                                         ; $4c2d: $92
    and d                                         ; $4c2e: $a2
    xor e                                         ; $4c2f: $ab
    ld [$02be], sp                                ; $4c30: $08 $be $02
    xor a                                         ; $4c33: $af
    xor b                                         ; $4c34: $a8
    cp [hl]                                       ; $4c35: $be
    nop                                           ; $4c36: $00
    cp d                                          ; $4c37: $ba
    ld [$80af], sp                                ; $4c38: $08 $af $80
    xor d                                         ; $4c3b: $aa
    nop                                           ; $4c3c: $00
    cp d                                          ; $4c3d: $ba
    nop                                           ; $4c3e: $00
    xor e                                         ; $4c3f: $ab
    ld [bc], a                                    ; $4c40: $02
    add b                                         ; $4c41: $80
    add d                                         ; $4c42: $82
    add hl, bc                                    ; $4c43: $09
    ld a, a                                       ; $4c44: $7f
    inc bc                                        ; $4c45: $03
    nop                                           ; $4c46: $00
    add e                                         ; $4c47: $83
    rst $38                                       ; $4c48: $ff
    ld [$021e], sp                                ; $4c49: $08 $1e $02
    ld bc, $0094                                  ; $4c4c: $01 $94 $00
    dec d                                         ; $4c4f: $15
    ld bc, $011d                                  ; $4c50: $01 $1d $01
    dec d                                         ; $4c53: $15
    nop                                           ; $4c54: $00
    dec d                                         ; $4c55: $15
    nop                                           ; $4c56: $00
    dec e                                         ; $4c57: $1d
    nop                                           ; $4c58: $00
    dec e                                         ; $4c59: $1d
    nop                                           ; $4c5a: $00
    dec d                                         ; $4c5b: $15
    ld bc, $0015                                  ; $4c5c: $01 $15 $00
    dec d                                         ; $4c5f: $15
    nop                                           ; $4c60: $00
    dec d                                         ; $4c61: $15
    ld [bc], a                                    ; $4c62: $02
    ld bc, $0882                                  ; $4c63: $01 $82 $08
    ld e, $03                                     ; $4c66: $1e $03
    nop                                           ; $4c68: $00
    adc l                                         ; $4c69: $8d
    rra                                           ; $4c6a: $1f
    nop                                           ; $4c6b: $00
    add b                                         ; $4c6c: $80
    nop                                           ; $4c6d: $00
    xor e                                         ; $4c6e: $ab
    nop                                           ; $4c6f: $00
    cp l                                          ; $4c70: $bd
    nop                                           ; $4c71: $00
    xor l                                         ; $4c72: $ad
    nop                                           ; $4c73: $00
    add b                                         ; $4c74: $80
    nop                                           ; $4c75: $00
    ccf                                           ; $4c76: $3f
    dec d                                         ; $4c77: $15
    nop                                           ; $4c78: $00
    adc e                                         ; $4c79: $8b
    ld bc, $0900                                  ; $4c7a: $01 $00 $09
    nop                                           ; $4c7d: $00
    dec d                                         ; $4c7e: $15
    nop                                           ; $4c7f: $00
    add hl, bc                                    ; $4c80: $09
    nop                                           ; $4c81: $00
    ld bc, $1c00                                  ; $4c82: $01 $00 $1c
    inc d                                         ; $4c85: $14
    nop                                           ; $4c86: $00
    rst $38                                       ; $4c87: $ff
    dec c                                         ; $4c88: $0d
    inc b                                         ; $4c89: $04
    ld sp, hl                                     ; $4c8a: $f9
    rlca                                          ; $4c8b: $07
    ld a, [c]                                     ; $4c8c: $f2
    ld bc, $f9e5                                  ; $4c8d: $01 $e5 $f9
    push hl                                       ; $4c90: $e5
    nop                                           ; $4c91: $00
    push af                                       ; $4c92: $f5
    ld sp, hl                                     ; $4c93: $f9
    push af                                       ; $4c94: $f5
    nop                                           ; $4c95: $00
    ld [bc], a                                    ; $4c96: $02
    rst $38                                       ; $4c97: $ff
    ld [bc], a                                    ; $4c98: $02
    ret nz                                        ; $4c99: $c0

    ld [bc], a                                    ; $4c9a: $02
    cp a                                          ; $4c9b: $bf
    inc b                                         ; $4c9c: $04
    xor d                                         ; $4c9d: $aa
    inc b                                         ; $4c9e: $04
    and b                                         ; $4c9f: $a0
    ld [bc], a                                    ; $4ca0: $02
    and d                                         ; $4ca1: $a2
    ld [bc], a                                    ; $4ca2: $02
    xor b                                         ; $4ca3: $a8
    ld [bc], a                                    ; $4ca4: $02
    xor d                                         ; $4ca5: $aa
    ld [bc], a                                    ; $4ca6: $02
    and d                                         ; $4ca7: $a2
    ld [bc], a                                    ; $4ca8: $02
    xor d                                         ; $4ca9: $aa
    ld [bc], a                                    ; $4caa: $02
    cp a                                          ; $4cab: $bf
    ld [bc], a                                    ; $4cac: $02
    ret nz                                        ; $4cad: $c0

    ld [bc], a                                    ; $4cae: $02
    rst $38                                       ; $4caf: $ff
    ld [bc], a                                    ; $4cb0: $02
    add b                                         ; $4cb1: $80
    ld [bc], a                                    ; $4cb2: $02
    ld a, a                                       ; $4cb3: $7f
    ld [bc], a                                    ; $4cb4: $02
    inc bc                                        ; $4cb5: $03
    ld [bc], a                                    ; $4cb6: $02
    ld a, l                                       ; $4cb7: $7d
    ld [bc], a                                    ; $4cb8: $02
    ld d, l                                       ; $4cb9: $55
    ld [bc], a                                    ; $4cba: $02
    dec b                                         ; $4cbb: $05
    ld [bc], a                                    ; $4cbc: $02
    ld d, l                                       ; $4cbd: $55
    inc b                                         ; $4cbe: $04
    ld b, l                                       ; $4cbf: $45
    ld [bc], a                                    ; $4cc0: $02
    dec d                                         ; $4cc1: $15
    inc b                                         ; $4cc2: $04
    ld d, l                                       ; $4cc3: $55
    ld [bc], a                                    ; $4cc4: $02
    dec d                                         ; $4cc5: $15
    ld [bc], a                                    ; $4cc6: $02
    ld a, l                                       ; $4cc7: $7d
    ld [bc], a                                    ; $4cc8: $02
    inc bc                                        ; $4cc9: $03
    ld [bc], a                                    ; $4cca: $02
    ld a, a                                       ; $4ccb: $7f
    ld [bc], a                                    ; $4ccc: $02
    ld bc, $bf02                                  ; $4ccd: $01 $02 $bf
    ld [bc], a                                    ; $4cd0: $02
    xor d                                         ; $4cd1: $aa
    ld [bc], a                                    ; $4cd2: $02
    and d                                         ; $4cd3: $a2
    ld [bc], a                                    ; $4cd4: $02
    xor c                                         ; $4cd5: $a9
    ld [bc], a                                    ; $4cd6: $02
    cp a                                          ; $4cd7: $bf
    ld [bc], a                                    ; $4cd8: $02
    ldh [$87], a                                  ; $4cd9: $e0 $87
    rst $38                                       ; $4cdb: $ff
    sbc a                                         ; $4cdc: $9f
    ld a, l                                       ; $4cdd: $7d
    ld a, a                                       ; $4cde: $7f
    dec e                                         ; $4cdf: $1d
    rra                                           ; $4ce0: $1f
    dec sp                                        ; $4ce1: $3b
    inc bc                                        ; $4ce2: $03
    ccf                                           ; $4ce3: $3f
    add d                                         ; $4ce4: $82
    ld [de], a                                    ; $4ce5: $12
    ld e, $02                                     ; $4ce6: $1e $02
    inc c                                         ; $4ce8: $0c
    ld b, $00                                     ; $4ce9: $06 $00
    ld [bc], a                                    ; $4ceb: $02
    ld a, l                                       ; $4cec: $7d
    ld [bc], a                                    ; $4ced: $02
    dec d                                         ; $4cee: $15
    ld [bc], a                                    ; $4cef: $02
    dec l                                         ; $4cf0: $2d
    ld [bc], a                                    ; $4cf1: $02
    dec d                                         ; $4cf2: $15
    ld [bc], a                                    ; $4cf3: $02
    ld a, l                                       ; $4cf4: $7d
    ld [bc], a                                    ; $4cf5: $02
    rlca                                          ; $4cf6: $07
    add h                                         ; $4cf7: $84
    ld a, a                                       ; $4cf8: $7f
    ld a, c                                       ; $4cf9: $79
    ld c, [hl]                                    ; $4cfa: $4e
    ld a, [hl]                                    ; $4cfb: $7e
    ld [bc], a                                    ; $4cfc: $02
    ld a, b                                       ; $4cfd: $78
    ld [bc], a                                    ; $4cfe: $02
    ld a, h                                       ; $4cff: $7c
    add d                                         ; $4d00: $82
    ld h, h                                       ; $4d01: $64
    ld a, h                                       ; $4d02: $7c
    ld [bc], a                                    ; $4d03: $02
    jr c, jr_0dc_4d0e                             ; $4d04: $38 $08

    nop                                           ; $4d06: $00
    rst $38                                       ; $4d07: $ff
    dec c                                         ; $4d08: $0d
    inc b                                         ; $4d09: $04
    ld sp, hl                                     ; $4d0a: $f9
    ld [$01f2], sp                                ; $4d0b: $08 $f2 $01

jr_0dc_4d0e:
    and $fa                                       ; $4d0e: $e6 $fa
    and $ff                                       ; $4d10: $e6 $ff
    or $fa                                        ; $4d12: $f6 $fa
    or $ff                                        ; $4d14: $f6 $ff
    add d                                         ; $4d16: $82
    add hl, hl                                    ; $4d17: $29
    ld a, a                                       ; $4d18: $7f
    ld [bc], a                                    ; $4d19: $02
    add b                                         ; $4d1a: $80
    ld [bc], a                                    ; $4d1b: $02
    xor d                                         ; $4d1c: $aa
    sub b                                         ; $4d1d: $90
    and d                                         ; $4d1e: $a2
    xor e                                         ; $4d1f: $ab
    ld [$a8be], sp                                ; $4d20: $08 $be $a8
    cp [hl]                                       ; $4d23: $be
    nop                                           ; $4d24: $00
    cp d                                          ; $4d25: $ba
    ld [$80af], sp                                ; $4d26: $08 $af $80
    xor d                                         ; $4d29: $aa
    nop                                           ; $4d2a: $00
    cp d                                          ; $4d2b: $ba
    nop                                           ; $4d2c: $00
    xor e                                         ; $4d2d: $ab
    ld [bc], a                                    ; $4d2e: $02
    add b                                         ; $4d2f: $80
    add d                                         ; $4d30: $82
    add hl, bc                                    ; $4d31: $09
    ld a, a                                       ; $4d32: $7f
    inc bc                                        ; $4d33: $03
    nop                                           ; $4d34: $00
    add l                                         ; $4d35: $85
    rst $38                                       ; $4d36: $ff
    nop                                           ; $4d37: $00
    add b                                         ; $4d38: $80
    ld [$021e], sp                                ; $4d39: $08 $1e $02
    ld bc, $0092                                  ; $4d3c: $01 $92 $00
    dec d                                         ; $4d3f: $15
    ld bc, $011d                                  ; $4d40: $01 $1d $01
    dec d                                         ; $4d43: $15
    nop                                           ; $4d44: $00
    dec e                                         ; $4d45: $1d
    nop                                           ; $4d46: $00
    dec e                                         ; $4d47: $1d
    nop                                           ; $4d48: $00
    dec d                                         ; $4d49: $15
    ld bc, $0015                                  ; $4d4a: $01 $15 $00
    dec d                                         ; $4d4d: $15
    nop                                           ; $4d4e: $00
    dec d                                         ; $4d4f: $15
    ld [bc], a                                    ; $4d50: $02
    ld bc, $0882                                  ; $4d51: $01 $82 $08
    ld e, $03                                     ; $4d54: $1e $03
    nop                                           ; $4d56: $00
    adc l                                         ; $4d57: $8d
    rra                                           ; $4d58: $1f
    nop                                           ; $4d59: $00
    ld bc, $ab00                                  ; $4d5a: $01 $00 $ab
    nop                                           ; $4d5d: $00
    cp e                                          ; $4d5e: $bb
    nop                                           ; $4d5f: $00
    xor l                                         ; $4d60: $ad
    nop                                           ; $4d61: $00
    add b                                         ; $4d62: $80
    nop                                           ; $4d63: $00
    ccf                                           ; $4d64: $3f
    rla                                           ; $4d65: $17
    nop                                           ; $4d66: $00
    adc c                                         ; $4d67: $89
    dec d                                         ; $4d68: $15
    nop                                           ; $4d69: $00
    add hl, bc                                    ; $4d6a: $09
    nop                                           ; $4d6b: $00
    dec d                                         ; $4d6c: $15
    nop                                           ; $4d6d: $00
    ld bc, $1c00                                  ; $4d6e: $01 $00 $1c
    ld d, $00                                     ; $4d71: $16 $00
    rst $38                                       ; $4d73: $ff
    ld de, $f906                                  ; $4d74: $11 $06 $f9
    rlca                                          ; $4d77: $07
    ld a, [c]                                     ; $4d78: $f2
    ld bc, $f6e7                                  ; $4d79: $01 $e7 $f6
    rst $20                                       ; $4d7c: $e7
    cp $e7                                        ; $4d7d: $fe $e7
    nop                                           ; $4d7f: $00
    rst $30                                       ; $4d80: $f7
    push af                                       ; $4d81: $f5
    rst $30                                       ; $4d82: $f7
    db $fd                                        ; $4d83: $fd
    rst $30                                       ; $4d84: $f7
    ld bc, $ff02                                  ; $4d85: $01 $02 $ff
    ld [bc], a                                    ; $4d88: $02
    ret nz                                        ; $4d89: $c0

    ld [bc], a                                    ; $4d8a: $02
    cp a                                          ; $4d8b: $bf
    ld [bc], a                                    ; $4d8c: $02
    and b                                         ; $4d8d: $a0
    ld [bc], a                                    ; $4d8e: $02
    cp l                                          ; $4d8f: $bd
    ld [bc], a                                    ; $4d90: $02
    and b                                         ; $4d91: $a0
    ld [bc], a                                    ; $4d92: $02
    cp l                                          ; $4d93: $bd
    ld [bc], a                                    ; $4d94: $02
    and b                                         ; $4d95: $a0
    ld [bc], a                                    ; $4d96: $02
    or h                                          ; $4d97: $b4
    ld [bc], a                                    ; $4d98: $02
    and b                                         ; $4d99: $a0
    ld [bc], a                                    ; $4d9a: $02
    cp a                                          ; $4d9b: $bf
    ld [bc], a                                    ; $4d9c: $02
    ret nz                                        ; $4d9d: $c0

    ld [bc], a                                    ; $4d9e: $02
    rst $38                                       ; $4d9f: $ff
    ld [bc], a                                    ; $4da0: $02
    add b                                         ; $4da1: $80
    ld [bc], a                                    ; $4da2: $02
    cp a                                          ; $4da3: $bf
    ld [bc], a                                    ; $4da4: $02
    xor b                                         ; $4da5: $a8
    ld [bc], a                                    ; $4da6: $02
    rst $38                                       ; $4da7: $ff
    ld [bc], a                                    ; $4da8: $02
    nop                                           ; $4da9: $00
    ld [bc], a                                    ; $4daa: $02
    rst $38                                       ; $4dab: $ff
    ld [bc], a                                    ; $4dac: $02
    ld bc, $9702                                  ; $4dad: $01 $02 $97
    ld [bc], a                                    ; $4db0: $02
    ld bc, $4702                                  ; $4db1: $01 $02 $47
    ld [bc], a                                    ; $4db4: $02
    ld bc, $6b02                                  ; $4db5: $01 $02 $6b
    ld [bc], a                                    ; $4db8: $02
    ld bc, $ff02                                  ; $4db9: $01 $02 $ff
    ld [bc], a                                    ; $4dbc: $02
    nop                                           ; $4dbd: $00
    ld [bc], a                                    ; $4dbe: $02
    rst $38                                       ; $4dbf: $ff
    ld [bc], a                                    ; $4dc0: $02
    nop                                           ; $4dc1: $00
    ld [bc], a                                    ; $4dc2: $02
    rst $38                                       ; $4dc3: $ff
    ld [bc], a                                    ; $4dc4: $02
    xor e                                         ; $4dc5: $ab
    inc b                                         ; $4dc6: $04
    inc bc                                        ; $4dc7: $03
    ld [de], a                                    ; $4dc8: $12
    ld bc, $0304                                  ; $4dc9: $01 $04 $03
    ld b, $01                                     ; $4dcc: $06 $01
    ld [bc], a                                    ; $4dce: $02
    ld d, e                                       ; $4dcf: $53
    ld [bc], a                                    ; $4dd0: $02
    ld d, a                                       ; $4dd1: $57
    ld [bc], a                                    ; $4dd2: $02
    ld d, e                                       ; $4dd3: $53
    ld [bc], a                                    ; $4dd4: $02
    ld e, [hl]                                    ; $4dd5: $5e
    ld [bc], a                                    ; $4dd6: $02
    ld b, c                                       ; $4dd7: $41
    adc d                                         ; $4dd8: $8a
    ld a, a                                       ; $4dd9: $7f
    ld a, [hl]                                    ; $4dda: $7e
    dec a                                         ; $4ddb: $3d
    ccf                                           ; $4ddc: $3f
    ld a, e                                       ; $4ddd: $7b
    ld a, a                                       ; $4dde: $7f
    or a                                          ; $4ddf: $b7
    rst $38                                       ; $4de0: $ff
    ld e, c                                       ; $4de1: $59
    ld a, a                                       ; $4de2: $7f
    ld [bc], a                                    ; $4de3: $02
    ccf                                           ; $4de4: $3f
    ld a, [bc]                                    ; $4de5: $0a
    nop                                           ; $4de6: $00
    ld [bc], a                                    ; $4de7: $02
    dec l                                         ; $4de8: $2d
    ld [bc], a                                    ; $4de9: $02
    sbc [hl]                                      ; $4dea: $9e
    ld [bc], a                                    ; $4deb: $02
    ld c, l                                       ; $4dec: $4d
    ld [bc], a                                    ; $4ded: $02
    di                                            ; $4dee: $f3
    adc h                                         ; $4def: $8c
    ret nz                                        ; $4df0: $c0

    ld b, b                                       ; $4df1: $40
    rst $38                                       ; $4df2: $ff
    ld a, a                                       ; $4df3: $7f
    cp [hl]                                       ; $4df4: $be
    cp a                                          ; $4df5: $bf
    ld a, l                                       ; $4df6: $7d
    ld a, a                                       ; $4df7: $7f
    ld e, a                                       ; $4df8: $5f
    ld a, a                                       ; $4df9: $7f
    inc l                                         ; $4dfa: $2c
    ccf                                           ; $4dfb: $3f
    ld [bc], a                                    ; $4dfc: $02
    sbc a                                         ; $4dfd: $9f
    ld a, [bc]                                    ; $4dfe: $0a
    nop                                           ; $4dff: $00
    ld [$840a], sp                                ; $4e00: $08 $0a $84
    rlca                                          ; $4e03: $07
    dec b                                         ; $4e04: $05
    ld c, $0a                                     ; $4e05: $0e $0a
    ld b, $0c                                     ; $4e07: $06 $0c
    add d                                         ; $4e09: $82
    ld b, $0e                                     ; $4e0a: $06 $0e
    ld [bc], a                                    ; $4e0c: $02
    inc c                                         ; $4e0d: $0c
    ld a, [bc]                                    ; $4e0e: $0a
    nop                                           ; $4e0f: $00
    rst $38                                       ; $4e10: $ff
    dec c                                         ; $4e11: $0d
    inc b                                         ; $4e12: $04
    di                                            ; $4e13: $f3
    ld a, [bc]                                    ; $4e14: $0a
    ld a, [c]                                     ; $4e15: $f2
    ld bc, $f7e8                                  ; $4e16: $01 $e8 $f7
    add sp, -$01                                  ; $4e19: $e8 $ff
    ld hl, sp-$09                                 ; $4e1b: $f8 $f7
    ld hl, sp-$01                                 ; $4e1d: $f8 $ff
    sub [hl]                                      ; $4e1f: $96
    ld c, b                                       ; $4e20: $48
    ld a, a                                       ; $4e21: $7f
    nop                                           ; $4e22: $00
    add b                                         ; $4e23: $80
    nop                                           ; $4e24: $00
    cp a                                          ; $4e25: $bf
    add b                                         ; $4e26: $80
    add h                                         ; $4e27: $84
    add hl, bc                                    ; $4e28: $09
    cp a                                          ; $4e29: $bf
    nop                                           ; $4e2a: $00
    add l                                         ; $4e2b: $85
    nop                                           ; $4e2c: $00
    cp a                                          ; $4e2d: $bf
    nop                                           ; $4e2e: $00
    sub a                                         ; $4e2f: $97
    nop                                           ; $4e30: $00
    cp a                                          ; $4e31: $bf
    nop                                           ; $4e32: $00
    add b                                         ; $4e33: $80
    jr nz, jr_0dc_4eb5                            ; $4e34: $20 $7f

    inc bc                                        ; $4e36: $03
    nop                                           ; $4e37: $00
    sbc l                                         ; $4e38: $9d
    rst $38                                       ; $4e39: $ff
    nop                                           ; $4e3a: $00
    add b                                         ; $4e3b: $80
    nop                                           ; $4e3c: $00
    xor [hl]                                      ; $4e3d: $ae
    nop                                           ; $4e3e: $00
    or e                                          ; $4e3f: $b3
    ld c, [hl]                                    ; $4e40: $4e
    cp $00                                        ; $4e41: $fe $00
    ld bc, $fd4d                                  ; $4e43: $01 $4d $fd
    nop                                           ; $4e46: $00
    pop de                                        ; $4e47: $d1
    ld d, l                                       ; $4e48: $55
    db $fd                                        ; $4e49: $fd
    nop                                           ; $4e4a: $00
    ld [hl], c                                    ; $4e4b: $71
    inc l                                         ; $4e4c: $2c
    db $fd                                        ; $4e4d: $fd
    ld bc, $0829                                  ; $4e4e: $01 $29 $08
    db $fd                                        ; $4e51: $fd
    nop                                           ; $4e52: $00
    ld bc, $fe88                                  ; $4e53: $01 $88 $fe
    inc bc                                        ; $4e56: $03
    nop                                           ; $4e57: $00
    adc a                                         ; $4e58: $8f
    rst $38                                       ; $4e59: $ff
    nop                                           ; $4e5a: $00
    ld bc, $a900                                  ; $4e5b: $01 $00 $a9
    nop                                           ; $4e5e: $00
    ld c, c                                       ; $4e5f: $49
    nop                                           ; $4e60: $00
    and c                                         ; $4e61: $a1
    ld [bc], a                                    ; $4e62: $02
    or d                                          ; $4e63: $b2
    nop                                           ; $4e64: $00
    add h                                         ; $4e65: $84
    nop                                           ; $4e66: $00
    ld hl, sp+$19                                 ; $4e67: $f8 $19
    nop                                           ; $4e69: $00
    add a                                         ; $4e6a: $87
    add l                                         ; $4e6b: $85
    nop                                           ; $4e6c: $00
    ret                                           ; $4e6d: $c9


    nop                                           ; $4e6e: $00
    ld sp, $fe00                                  ; $4e6f: $31 $00 $fe
    jr jr_0dc_4e74                                ; $4e72: $18 $00

jr_0dc_4e74:
    rst $38                                       ; $4e74: $ff
    ld de, $f906                                  ; $4e75: $11 $06 $f9
    rlca                                          ; $4e78: $07
    ld a, [c]                                     ; $4e79: $f2
    ld bc, $f6e8                                  ; $4e7a: $01 $e8 $f6
    add sp, -$02                                  ; $4e7d: $e8 $fe
    add sp, $00                                   ; $4e7f: $e8 $00
    ld hl, sp-$0b                                 ; $4e81: $f8 $f5
    ld hl, sp-$03                                 ; $4e83: $f8 $fd
    ld hl, sp+$02                                 ; $4e85: $f8 $02
    ld [bc], a                                    ; $4e87: $02
    rst $38                                       ; $4e88: $ff
    ld [bc], a                                    ; $4e89: $02
    ret nz                                        ; $4e8a: $c0

    ld [bc], a                                    ; $4e8b: $02
    cp a                                          ; $4e8c: $bf
    ld [bc], a                                    ; $4e8d: $02
    and b                                         ; $4e8e: $a0
    ld [bc], a                                    ; $4e8f: $02
    cp l                                          ; $4e90: $bd
    ld [bc], a                                    ; $4e91: $02
    and b                                         ; $4e92: $a0
    ld [bc], a                                    ; $4e93: $02
    cp l                                          ; $4e94: $bd
    ld [bc], a                                    ; $4e95: $02
    and b                                         ; $4e96: $a0
    ld [bc], a                                    ; $4e97: $02
    or l                                          ; $4e98: $b5
    ld [bc], a                                    ; $4e99: $02
    and b                                         ; $4e9a: $a0
    ld [bc], a                                    ; $4e9b: $02
    cp a                                          ; $4e9c: $bf
    ld [bc], a                                    ; $4e9d: $02
    ret nz                                        ; $4e9e: $c0

    ld [bc], a                                    ; $4e9f: $02
    rst $38                                       ; $4ea0: $ff
    ld [bc], a                                    ; $4ea1: $02
    add b                                         ; $4ea2: $80
    ld [bc], a                                    ; $4ea3: $02
    cp a                                          ; $4ea4: $bf
    ld [bc], a                                    ; $4ea5: $02
    xor d                                         ; $4ea6: $aa
    ld [bc], a                                    ; $4ea7: $02
    rst $38                                       ; $4ea8: $ff
    ld [bc], a                                    ; $4ea9: $02
    nop                                           ; $4eaa: $00
    ld [bc], a                                    ; $4eab: $02
    rst $38                                       ; $4eac: $ff
    ld [bc], a                                    ; $4ead: $02
    ld bc, $9702                                  ; $4eae: $01 $02 $97
    ld [bc], a                                    ; $4eb1: $02
    ld bc, $4702                                  ; $4eb2: $01 $02 $47

jr_0dc_4eb5:
    ld [bc], a                                    ; $4eb5: $02
    ld bc, $6b02                                  ; $4eb6: $01 $02 $6b
    ld [bc], a                                    ; $4eb9: $02
    ld bc, $ff02                                  ; $4eba: $01 $02 $ff
    ld [bc], a                                    ; $4ebd: $02
    nop                                           ; $4ebe: $00
    ld [bc], a                                    ; $4ebf: $02
    rst $38                                       ; $4ec0: $ff
    ld [bc], a                                    ; $4ec1: $02
    nop                                           ; $4ec2: $00
    ld [bc], a                                    ; $4ec3: $02
    rst $38                                       ; $4ec4: $ff
    ld [bc], a                                    ; $4ec5: $02
    xor e                                         ; $4ec6: $ab
    inc b                                         ; $4ec7: $04
    inc bc                                        ; $4ec8: $03
    ld [de], a                                    ; $4ec9: $12
    ld bc, $0304                                  ; $4eca: $01 $04 $03
    ld b, $01                                     ; $4ecd: $06 $01
    ld [bc], a                                    ; $4ecf: $02
    ld d, a                                       ; $4ed0: $57
    ld [bc], a                                    ; $4ed1: $02
    ld d, e                                       ; $4ed2: $53
    ld [bc], a                                    ; $4ed3: $02
    ld e, [hl]                                    ; $4ed4: $5e
    ld [bc], a                                    ; $4ed5: $02
    ld b, c                                       ; $4ed6: $41
    add d                                         ; $4ed7: $82
    ld a, a                                       ; $4ed8: $7f
    ld a, [hl]                                    ; $4ed9: $7e
    ld [bc], a                                    ; $4eda: $02
    ld a, a                                       ; $4edb: $7f
    add [hl]                                      ; $4edc: $86
    or [hl]                                       ; $4edd: $b6
    rst $38                                       ; $4ede: $ff
    cp a                                          ; $4edf: $bf
    rst $38                                       ; $4ee0: $ff
    or $fe                                        ; $4ee1: $f6 $fe
    ld [bc], a                                    ; $4ee3: $02
    ld a, h                                       ; $4ee4: $7c
    inc c                                         ; $4ee5: $0c
    nop                                           ; $4ee6: $00
    ld [bc], a                                    ; $4ee7: $02
    cp a                                          ; $4ee8: $bf
    ld [bc], a                                    ; $4ee9: $02
    call Call_0dc_7b02                            ; $4eea: $cd $02 $7b
    ld [bc], a                                    ; $4eed: $02
    ret nz                                        ; $4eee: $c0

    adc d                                         ; $4eef: $8a
    rst $38                                       ; $4ef0: $ff
    ld a, a                                       ; $4ef1: $7f
    cp l                                          ; $4ef2: $bd
    cp a                                          ; $4ef3: $bf
    ld a, e                                       ; $4ef4: $7b
    rst $38                                       ; $4ef5: $ff
    rst $10                                       ; $4ef6: $d7
    rst $38                                       ; $4ef7: $ff
    ld a, d                                       ; $4ef8: $7a
    ld a, [hl]                                    ; $4ef9: $7e
    ld [bc], a                                    ; $4efa: $02
    ccf                                           ; $4efb: $3f
    inc c                                         ; $4efc: $0c
    nop                                           ; $4efd: $00
    ld b, $14                                     ; $4efe: $06 $14
    add h                                         ; $4f00: $84
    ld c, $0a                                     ; $4f01: $0e $0a
    ld e, $16                                     ; $4f03: $1e $16
    ld [bc], a                                    ; $4f05: $02
    rra                                           ; $4f06: $1f
    add h                                         ; $4f07: $84
    add hl, de                                    ; $4f08: $19
    rra                                           ; $4f09: $1f
    ld d, $1e                                     ; $4f0a: $16 $1e
    ld [bc], a                                    ; $4f0c: $02
    ld [$000e], sp                                ; $4f0d: $08 $0e $00
    rst $38                                       ; $4f10: $ff
    dec c                                         ; $4f11: $0d
    inc b                                         ; $4f12: $04
    di                                            ; $4f13: $f3
    ld a, [bc]                                    ; $4f14: $0a
    ld a, [c]                                     ; $4f15: $f2
    ld bc, $f7e9                                  ; $4f16: $01 $e9 $f7
    jp hl                                         ; $4f19: $e9


    rst $38                                       ; $4f1a: $ff
    ld sp, hl                                     ; $4f1b: $f9
    rst $30                                       ; $4f1c: $f7
    ld sp, hl                                     ; $4f1d: $f9
    rst $38                                       ; $4f1e: $ff
    sub [hl]                                      ; $4f1f: $96
    ld c, b                                       ; $4f20: $48
    ld a, a                                       ; $4f21: $7f
    nop                                           ; $4f22: $00
    add b                                         ; $4f23: $80
    ld [bc], a                                    ; $4f24: $02
    cp a                                          ; $4f25: $bf
    add b                                         ; $4f26: $80
    add h                                         ; $4f27: $84
    dec b                                         ; $4f28: $05
    cp a                                          ; $4f29: $bf
    nop                                           ; $4f2a: $00
    add l                                         ; $4f2b: $85
    nop                                           ; $4f2c: $00
    cp a                                          ; $4f2d: $bf
    nop                                           ; $4f2e: $00
    sub l                                         ; $4f2f: $95
    nop                                           ; $4f30: $00
    cp a                                          ; $4f31: $bf
    nop                                           ; $4f32: $00
    add b                                         ; $4f33: $80
    jr nz, jr_0dc_4fb5                            ; $4f34: $20 $7f

    inc bc                                        ; $4f36: $03
    nop                                           ; $4f37: $00
    sbc l                                         ; $4f38: $9d
    rst $38                                       ; $4f39: $ff
    nop                                           ; $4f3a: $00
    add b                                         ; $4f3b: $80
    nop                                           ; $4f3c: $00
    xor d                                         ; $4f3d: $aa
    nop                                           ; $4f3e: $00
    and c                                         ; $4f3f: $a1
    ld c, [hl]                                    ; $4f40: $4e
    cp $00                                        ; $4f41: $fe $00
    ld bc, $fdad                                  ; $4f43: $01 $ad $fd
    nop                                           ; $4f46: $00
    pop de                                        ; $4f47: $d1
    add hl, sp                                    ; $4f48: $39
    db $fd                                        ; $4f49: $fd
    nop                                           ; $4f4a: $00
    ld [hl], c                                    ; $4f4b: $71
    ld e, b                                       ; $4f4c: $58
    db $fd                                        ; $4f4d: $fd
    ld bc, $0029                                  ; $4f4e: $01 $29 $00
    db $fd                                        ; $4f51: $fd
    nop                                           ; $4f52: $00
    ld bc, $fe88                                  ; $4f53: $01 $88 $fe
    inc bc                                        ; $4f56: $03
    nop                                           ; $4f57: $00
    adc l                                         ; $4f58: $8d
    rst $38                                       ; $4f59: $ff
    nop                                           ; $4f5a: $00
    ld bc, $a900                                  ; $4f5b: $01 $00 $a9
    nop                                           ; $4f5e: $00
    ld bc, $b000                                  ; $4f5f: $01 $00 $b0
    nop                                           ; $4f62: $00
    add [hl]                                      ; $4f63: $86
    nop                                           ; $4f64: $00
    ld hl, sp+$1b                                 ; $4f65: $f8 $1b
    nop                                           ; $4f67: $00
    add l                                         ; $4f68: $85
    ret                                           ; $4f69: $c9


    nop                                           ; $4f6a: $00
    ld de, $fe00                                  ; $4f6b: $11 $00 $fe
    ld a, [de]                                    ; $4f6e: $1a
    nop                                           ; $4f6f: $00
    rst $38                                       ; $4f70: $ff
    ld de, $f906                                  ; $4f71: $11 $06 $f9
    rlca                                          ; $4f74: $07
    ld a, [c]                                     ; $4f75: $f2
    ld bc, $f6e9                                  ; $4f76: $01 $e9 $f6
    jp hl                                         ; $4f79: $e9


    cp $e9                                        ; $4f7a: $fe $e9
    nop                                           ; $4f7c: $00
    ld sp, hl                                     ; $4f7d: $f9
    push af                                       ; $4f7e: $f5
    ld sp, hl                                     ; $4f7f: $f9
    db $fd                                        ; $4f80: $fd
    ld sp, hl                                     ; $4f81: $f9
    ld [bc], a                                    ; $4f82: $02
    ld [bc], a                                    ; $4f83: $02
    rst $38                                       ; $4f84: $ff
    ld [bc], a                                    ; $4f85: $02
    ret nz                                        ; $4f86: $c0

    ld [bc], a                                    ; $4f87: $02
    cp a                                          ; $4f88: $bf
    ld [bc], a                                    ; $4f89: $02
    and b                                         ; $4f8a: $a0
    ld [bc], a                                    ; $4f8b: $02
    cp l                                          ; $4f8c: $bd
    ld [bc], a                                    ; $4f8d: $02
    and b                                         ; $4f8e: $a0
    ld [bc], a                                    ; $4f8f: $02
    cp l                                          ; $4f90: $bd
    ld [bc], a                                    ; $4f91: $02
    and b                                         ; $4f92: $a0
    ld [bc], a                                    ; $4f93: $02
    or a                                          ; $4f94: $b7
    ld [bc], a                                    ; $4f95: $02
    and b                                         ; $4f96: $a0
    ld [bc], a                                    ; $4f97: $02
    cp a                                          ; $4f98: $bf
    ld [bc], a                                    ; $4f99: $02
    ret nz                                        ; $4f9a: $c0

    ld [bc], a                                    ; $4f9b: $02
    rst $38                                       ; $4f9c: $ff
    ld [bc], a                                    ; $4f9d: $02
    add b                                         ; $4f9e: $80
    ld [bc], a                                    ; $4f9f: $02
    cp a                                          ; $4fa0: $bf
    ld [bc], a                                    ; $4fa1: $02
    xor d                                         ; $4fa2: $aa
    ld [bc], a                                    ; $4fa3: $02
    rst $38                                       ; $4fa4: $ff
    ld [bc], a                                    ; $4fa5: $02
    nop                                           ; $4fa6: $00
    ld [bc], a                                    ; $4fa7: $02
    rst $38                                       ; $4fa8: $ff
    ld [bc], a                                    ; $4fa9: $02
    ld bc, $9702                                  ; $4faa: $01 $02 $97
    ld [bc], a                                    ; $4fad: $02
    ld bc, $4702                                  ; $4fae: $01 $02 $47
    ld [bc], a                                    ; $4fb1: $02
    ld bc, $6b02                                  ; $4fb2: $01 $02 $6b

jr_0dc_4fb5:
    ld [bc], a                                    ; $4fb5: $02
    ld bc, $ff02                                  ; $4fb6: $01 $02 $ff
    ld [bc], a                                    ; $4fb9: $02
    nop                                           ; $4fba: $00
    ld [bc], a                                    ; $4fbb: $02
    rst $38                                       ; $4fbc: $ff
    ld [bc], a                                    ; $4fbd: $02
    nop                                           ; $4fbe: $00
    ld [bc], a                                    ; $4fbf: $02
    rst $38                                       ; $4fc0: $ff
    ld [bc], a                                    ; $4fc1: $02
    xor e                                         ; $4fc2: $ab
    inc b                                         ; $4fc3: $04
    inc bc                                        ; $4fc4: $03
    ld [de], a                                    ; $4fc5: $12
    ld bc, $0304                                  ; $4fc6: $01 $04 $03
    ld b, $01                                     ; $4fc9: $06 $01
    ld [bc], a                                    ; $4fcb: $02
    ld d, a                                       ; $4fcc: $57
    ld [bc], a                                    ; $4fcd: $02
    ld d, e                                       ; $4fce: $53
    ld [bc], a                                    ; $4fcf: $02
    ld e, [hl]                                    ; $4fd0: $5e
    ld [bc], a                                    ; $4fd1: $02
    ld b, c                                       ; $4fd2: $41
    adc b                                         ; $4fd3: $88
    ld a, a                                       ; $4fd4: $7f
    ld a, [hl]                                    ; $4fd5: $7e
    ei                                            ; $4fd6: $fb
    rst $38                                       ; $4fd7: $ff
    or [hl]                                       ; $4fd8: $b6
    rst $38                                       ; $4fd9: $ff
    cp a                                          ; $4fda: $bf
    rst $38                                       ; $4fdb: $ff
    ld [bc], a                                    ; $4fdc: $02
    ld a, h                                       ; $4fdd: $7c
    ld c, $00                                     ; $4fde: $0e $00
    ld [bc], a                                    ; $4fe0: $02
    cp a                                          ; $4fe1: $bf
    ld [bc], a                                    ; $4fe2: $02
    call Call_0dc_7b02                            ; $4fe3: $cd $02 $7b
    ld [bc], a                                    ; $4fe6: $02
    ret nz                                        ; $4fe7: $c0

    adc b                                         ; $4fe8: $88
    rst $38                                       ; $4fe9: $ff
    ld a, a                                       ; $4fea: $7f
    xor l                                         ; $4feb: $ad
    cp a                                          ; $4fec: $bf
    xor a                                         ; $4fed: $af
    cp a                                          ; $4fee: $bf
    cp e                                          ; $4fef: $bb
    cp a                                          ; $4ff0: $bf
    ld [bc], a                                    ; $4ff1: $02
    ld e, $0e                                     ; $4ff2: $1e $0e
    nop                                           ; $4ff4: $00
    ld b, $14                                     ; $4ff5: $06 $14
    add h                                         ; $4ff7: $84
    ld c, $0a                                     ; $4ff8: $0e $0a
    inc e                                         ; $4ffa: $1c
    inc d                                         ; $4ffb: $14
    ld [bc], a                                    ; $4ffc: $02
    ld e, $82                                     ; $4ffd: $1e $82
    ld de, $021f                                  ; $4fff: $11 $1f $02
    ld e, $10                                     ; $5002: $1e $10
    nop                                           ; $5004: $00
    rst $38                                       ; $5005: $ff
    dec c                                         ; $5006: $0d
    inc b                                         ; $5007: $04
    di                                            ; $5008: $f3
    ld a, [bc]                                    ; $5009: $0a
    ld a, [c]                                     ; $500a: $f2
    ld bc, $f7ea                                  ; $500b: $01 $ea $f7
    ld [$faff], a                                 ; $500e: $ea $ff $fa
    rst $30                                       ; $5011: $f7
    ld a, [$96ff]                                 ; $5012: $fa $ff $96
    ld c, b                                       ; $5015: $48
    ld a, a                                       ; $5016: $7f
    nop                                           ; $5017: $00
    add b                                         ; $5018: $80
    ld [bc], a                                    ; $5019: $02
    cp a                                          ; $501a: $bf
    add b                                         ; $501b: $80
    add h                                         ; $501c: $84
    dec b                                         ; $501d: $05
    cp a                                          ; $501e: $bf
    nop                                           ; $501f: $00
    add l                                         ; $5020: $85
    nop                                           ; $5021: $00
    cp a                                          ; $5022: $bf
    nop                                           ; $5023: $00
    sub c                                         ; $5024: $91
    nop                                           ; $5025: $00
    cp a                                          ; $5026: $bf
    nop                                           ; $5027: $00
    add b                                         ; $5028: $80
    jr nz, jr_0dc_50aa                            ; $5029: $20 $7f

    inc bc                                        ; $502b: $03
    nop                                           ; $502c: $00
    sbc l                                         ; $502d: $9d
    rst $38                                       ; $502e: $ff
    nop                                           ; $502f: $00
    add b                                         ; $5030: $80
    nop                                           ; $5031: $00
    xor d                                         ; $5032: $aa
    nop                                           ; $5033: $00
    and c                                         ; $5034: $a1
    ld c, [hl]                                    ; $5035: $4e
    cp $00                                        ; $5036: $fe $00
    ld bc, $fdad                                  ; $5038: $01 $ad $fd
    nop                                           ; $503b: $00
    pop de                                        ; $503c: $d1
    add hl, sp                                    ; $503d: $39
    db $fd                                        ; $503e: $fd
    nop                                           ; $503f: $00
    ld [hl], c                                    ; $5040: $71
    ld e, b                                       ; $5041: $58
    db $fd                                        ; $5042: $fd
    ld bc, $0029                                  ; $5043: $01 $29 $00
    db $fd                                        ; $5046: $fd
    nop                                           ; $5047: $00
    ld bc, $fe88                                  ; $5048: $01 $88 $fe
    inc bc                                        ; $504b: $03
    nop                                           ; $504c: $00
    adc l                                         ; $504d: $8d
    rst $38                                       ; $504e: $ff
    nop                                           ; $504f: $00
    ld bc, $a900                                  ; $5050: $01 $00 $a9
    nop                                           ; $5053: $00
    ld bc, $b000                                  ; $5054: $01 $00 $b0
    nop                                           ; $5057: $00
    add [hl]                                      ; $5058: $86
    nop                                           ; $5059: $00
    ld hl, sp+$1b                                 ; $505a: $f8 $1b
    nop                                           ; $505c: $00
    add l                                         ; $505d: $85
    ret                                           ; $505e: $c9


    nop                                           ; $505f: $00
    ld de, $fe00                                  ; $5060: $11 $00 $fe
    ld a, [de]                                    ; $5063: $1a
    nop                                           ; $5064: $00
    rst $38                                       ; $5065: $ff
    ld de, $f906                                  ; $5066: $11 $06 $f9
    rlca                                          ; $5069: $07
    ld a, [c]                                     ; $506a: $f2
    ld bc, $f6e7                                  ; $506b: $01 $e7 $f6
    rst $20                                       ; $506e: $e7
    cp $e7                                        ; $506f: $fe $e7
    nop                                           ; $5071: $00
    rst $30                                       ; $5072: $f7
    push af                                       ; $5073: $f5
    rst $30                                       ; $5074: $f7
    db $fd                                        ; $5075: $fd
    rst $30                                       ; $5076: $f7
    ld bc, $ff02                                  ; $5077: $01 $02 $ff
    ld [bc], a                                    ; $507a: $02
    ret nz                                        ; $507b: $c0

    ld [bc], a                                    ; $507c: $02
    cp a                                          ; $507d: $bf
    ld [bc], a                                    ; $507e: $02
    and b                                         ; $507f: $a0
    ld [bc], a                                    ; $5080: $02
    cp l                                          ; $5081: $bd
    ld [bc], a                                    ; $5082: $02
    and b                                         ; $5083: $a0
    ld [bc], a                                    ; $5084: $02
    cp l                                          ; $5085: $bd
    ld [bc], a                                    ; $5086: $02
    and b                                         ; $5087: $a0
    ld [bc], a                                    ; $5088: $02
    or l                                          ; $5089: $b5
    ld [bc], a                                    ; $508a: $02
    and b                                         ; $508b: $a0
    ld [bc], a                                    ; $508c: $02
    cp a                                          ; $508d: $bf
    ld [bc], a                                    ; $508e: $02
    ret nz                                        ; $508f: $c0

    ld [bc], a                                    ; $5090: $02
    rst $38                                       ; $5091: $ff
    ld [bc], a                                    ; $5092: $02
    add b                                         ; $5093: $80
    ld [bc], a                                    ; $5094: $02
    cp a                                          ; $5095: $bf
    ld [bc], a                                    ; $5096: $02
    xor b                                         ; $5097: $a8
    ld [bc], a                                    ; $5098: $02
    rst $38                                       ; $5099: $ff
    ld [bc], a                                    ; $509a: $02
    nop                                           ; $509b: $00
    ld [bc], a                                    ; $509c: $02
    rst $38                                       ; $509d: $ff
    ld [bc], a                                    ; $509e: $02
    ld bc, $9702                                  ; $509f: $01 $02 $97
    ld [bc], a                                    ; $50a2: $02
    ld bc, $4702                                  ; $50a3: $01 $02 $47
    ld [bc], a                                    ; $50a6: $02
    ld bc, $6b02                                  ; $50a7: $01 $02 $6b

jr_0dc_50aa:
    ld [bc], a                                    ; $50aa: $02
    ld bc, $ff02                                  ; $50ab: $01 $02 $ff
    ld [bc], a                                    ; $50ae: $02
    nop                                           ; $50af: $00
    ld [bc], a                                    ; $50b0: $02
    rst $38                                       ; $50b1: $ff
    ld [bc], a                                    ; $50b2: $02
    nop                                           ; $50b3: $00
    ld [bc], a                                    ; $50b4: $02
    rst $38                                       ; $50b5: $ff
    ld [bc], a                                    ; $50b6: $02
    xor e                                         ; $50b7: $ab
    inc b                                         ; $50b8: $04
    inc bc                                        ; $50b9: $03
    ld [de], a                                    ; $50ba: $12
    ld bc, $0304                                  ; $50bb: $01 $04 $03
    ld b, $01                                     ; $50be: $06 $01
    ld [bc], a                                    ; $50c0: $02
    ld d, e                                       ; $50c1: $53
    ld [bc], a                                    ; $50c2: $02
    ld d, a                                       ; $50c3: $57
    ld [bc], a                                    ; $50c4: $02
    ld d, e                                       ; $50c5: $53
    ld [bc], a                                    ; $50c6: $02
    ld e, [hl]                                    ; $50c7: $5e
    ld [bc], a                                    ; $50c8: $02
    ld b, c                                       ; $50c9: $41
    adc d                                         ; $50ca: $8a
    ld a, a                                       ; $50cb: $7f
    ld a, [hl]                                    ; $50cc: $7e
    ld a, e                                       ; $50cd: $7b
    ld a, a                                       ; $50ce: $7f
    ld a, d                                       ; $50cf: $7a
    ld a, [hl]                                    ; $50d0: $7e
    or a                                          ; $50d1: $b7
    rst $38                                       ; $50d2: $ff
    sbc a                                         ; $50d3: $9f
    rst $38                                       ; $50d4: $ff
    ld [bc], a                                    ; $50d5: $02
    ld a, b                                       ; $50d6: $78
    ld a, [bc]                                    ; $50d7: $0a
    nop                                           ; $50d8: $00
    ld [bc], a                                    ; $50d9: $02
    dec l                                         ; $50da: $2d
    ld [bc], a                                    ; $50db: $02
    sbc [hl]                                      ; $50dc: $9e
    ld [bc], a                                    ; $50dd: $02
    ld c, l                                       ; $50de: $4d
    ld [bc], a                                    ; $50df: $02
    di                                            ; $50e0: $f3
    add h                                         ; $50e1: $84
    ret nz                                        ; $50e2: $c0

    ld b, b                                       ; $50e3: $40
    rst $38                                       ; $50e4: $ff
    ld a, a                                       ; $50e5: $7f
    ld [bc], a                                    ; $50e6: $02
    rra                                           ; $50e7: $1f
    add c                                         ; $50e8: $81
    ld [hl], $03                                  ; $50e9: $36 $03
    ccf                                           ; $50eb: $3f
    add d                                         ; $50ec: $82
    inc l                                         ; $50ed: $2c
    ccf                                           ; $50ee: $3f
    ld [bc], a                                    ; $50ef: $02
    rra                                           ; $50f0: $1f
    ld a, [bc]                                    ; $50f1: $0a
    nop                                           ; $50f2: $00
    ld [$850a], sp                                ; $50f3: $08 $0a $85
    rlca                                          ; $50f6: $07
    dec b                                         ; $50f7: $05
    ld c, $0a                                     ; $50f8: $0e $0a
    ld b, $03                                     ; $50fa: $06 $03
    ld c, $82                                     ; $50fc: $0e $82
    ld a, [bc]                                    ; $50fe: $0a
    ld c, $02                                     ; $50ff: $0e $02
    rrca                                          ; $5101: $0f
    ld [bc], a                                    ; $5102: $02
    ld [$000a], sp                                ; $5103: $08 $0a $00
    rst $38                                       ; $5106: $ff
    dec c                                         ; $5107: $0d
    inc b                                         ; $5108: $04
    di                                            ; $5109: $f3
    ld a, [bc]                                    ; $510a: $0a
    ld a, [c]                                     ; $510b: $f2
    ld bc, $f7e8                                  ; $510c: $01 $e8 $f7
    add sp, -$01                                  ; $510f: $e8 $ff
    ld hl, sp-$09                                 ; $5111: $f8 $f7
    ld hl, sp-$01                                 ; $5113: $f8 $ff
    sub [hl]                                      ; $5115: $96
    ld c, b                                       ; $5116: $48
    ld a, a                                       ; $5117: $7f
    nop                                           ; $5118: $00
    add b                                         ; $5119: $80
    nop                                           ; $511a: $00
    cp a                                          ; $511b: $bf
    add b                                         ; $511c: $80
    add h                                         ; $511d: $84
    add hl, bc                                    ; $511e: $09
    cp a                                          ; $511f: $bf
    nop                                           ; $5120: $00
    add l                                         ; $5121: $85
    nop                                           ; $5122: $00
    cp a                                          ; $5123: $bf
    nop                                           ; $5124: $00
    sub l                                         ; $5125: $95
    nop                                           ; $5126: $00
    cp a                                          ; $5127: $bf
    nop                                           ; $5128: $00
    add b                                         ; $5129: $80
    jr nz, jr_0dc_51ab                            ; $512a: $20 $7f

    inc bc                                        ; $512c: $03
    nop                                           ; $512d: $00
    sbc l                                         ; $512e: $9d
    rst $38                                       ; $512f: $ff
    nop                                           ; $5130: $00
    add b                                         ; $5131: $80
    nop                                           ; $5132: $00
    xor [hl]                                      ; $5133: $ae
    nop                                           ; $5134: $00
    or e                                          ; $5135: $b3
    ld c, [hl]                                    ; $5136: $4e
    cp $00                                        ; $5137: $fe $00
    ld bc, $fd4d                                  ; $5139: $01 $4d $fd
    nop                                           ; $513c: $00
    pop de                                        ; $513d: $d1
    ld d, l                                       ; $513e: $55
    db $fd                                        ; $513f: $fd
    nop                                           ; $5140: $00
    ld [hl], c                                    ; $5141: $71
    inc l                                         ; $5142: $2c
    db $fd                                        ; $5143: $fd
    ld bc, $0829                                  ; $5144: $01 $29 $08
    db $fd                                        ; $5147: $fd
    nop                                           ; $5148: $00
    ld bc, $fe88                                  ; $5149: $01 $88 $fe
    inc bc                                        ; $514c: $03
    nop                                           ; $514d: $00
    adc a                                         ; $514e: $8f
    rst $38                                       ; $514f: $ff
    nop                                           ; $5150: $00
    ld bc, $a900                                  ; $5151: $01 $00 $a9
    nop                                           ; $5154: $00
    ld c, c                                       ; $5155: $49
    nop                                           ; $5156: $00
    and c                                         ; $5157: $a1
    ld [bc], a                                    ; $5158: $02
    or d                                          ; $5159: $b2
    nop                                           ; $515a: $00
    add h                                         ; $515b: $84
    nop                                           ; $515c: $00
    ld hl, sp+$19                                 ; $515d: $f8 $19
    nop                                           ; $515f: $00
    add a                                         ; $5160: $87
    add l                                         ; $5161: $85
    nop                                           ; $5162: $00
    ret                                           ; $5163: $c9


    nop                                           ; $5164: $00
    ld sp, $fe00                                  ; $5165: $31 $00 $fe
    jr jr_0dc_516a                                ; $5168: $18 $00

jr_0dc_516a:
    rst $38                                       ; $516a: $ff
    ld de, $f906                                  ; $516b: $11 $06 $f9
    rlca                                          ; $516e: $07
    ld a, [c]                                     ; $516f: $f2
    ld bc, $f6e6                                  ; $5170: $01 $e6 $f6
    and $fe                                       ; $5173: $e6 $fe
    and $00                                       ; $5175: $e6 $00
    or $f5                                        ; $5177: $f6 $f5
    or $fd                                        ; $5179: $f6 $fd
    or $01                                        ; $517b: $f6 $01
    ld [bc], a                                    ; $517d: $02
    rst $38                                       ; $517e: $ff
    ld [bc], a                                    ; $517f: $02
    ret nz                                        ; $5180: $c0

    ld [bc], a                                    ; $5181: $02
    cp a                                          ; $5182: $bf
    ld [bc], a                                    ; $5183: $02
    and b                                         ; $5184: $a0
    ld [bc], a                                    ; $5185: $02
    cp l                                          ; $5186: $bd
    ld [bc], a                                    ; $5187: $02
    and b                                         ; $5188: $a0
    ld [bc], a                                    ; $5189: $02
    cp l                                          ; $518a: $bd
    ld [bc], a                                    ; $518b: $02
    and b                                         ; $518c: $a0
    ld [bc], a                                    ; $518d: $02
    or h                                          ; $518e: $b4
    ld [bc], a                                    ; $518f: $02
    and b                                         ; $5190: $a0
    ld [bc], a                                    ; $5191: $02
    cp a                                          ; $5192: $bf
    ld [bc], a                                    ; $5193: $02
    ret nz                                        ; $5194: $c0

    ld [bc], a                                    ; $5195: $02
    rst $38                                       ; $5196: $ff
    ld [bc], a                                    ; $5197: $02
    add b                                         ; $5198: $80
    ld [bc], a                                    ; $5199: $02
    cp a                                          ; $519a: $bf
    ld [bc], a                                    ; $519b: $02
    xor b                                         ; $519c: $a8
    ld [bc], a                                    ; $519d: $02
    rst $38                                       ; $519e: $ff
    ld [bc], a                                    ; $519f: $02
    nop                                           ; $51a0: $00
    ld [bc], a                                    ; $51a1: $02
    rst $38                                       ; $51a2: $ff
    ld [bc], a                                    ; $51a3: $02
    ld bc, $9702                                  ; $51a4: $01 $02 $97
    ld [bc], a                                    ; $51a7: $02
    ld bc, $4702                                  ; $51a8: $01 $02 $47

jr_0dc_51ab:
    ld [bc], a                                    ; $51ab: $02
    ld bc, $6b02                                  ; $51ac: $01 $02 $6b
    ld [bc], a                                    ; $51af: $02
    ld bc, $ff02                                  ; $51b0: $01 $02 $ff
    ld [bc], a                                    ; $51b3: $02
    nop                                           ; $51b4: $00
    ld [bc], a                                    ; $51b5: $02
    rst $38                                       ; $51b6: $ff
    ld [bc], a                                    ; $51b7: $02
    nop                                           ; $51b8: $00
    ld [bc], a                                    ; $51b9: $02
    rst $38                                       ; $51ba: $ff
    ld [bc], a                                    ; $51bb: $02
    xor e                                         ; $51bc: $ab
    inc b                                         ; $51bd: $04
    inc bc                                        ; $51be: $03
    ld [de], a                                    ; $51bf: $12
    ld bc, $0304                                  ; $51c0: $01 $04 $03
    ld b, $01                                     ; $51c3: $06 $01
    ld [bc], a                                    ; $51c5: $02
    ld d, e                                       ; $51c6: $53
    ld [bc], a                                    ; $51c7: $02
    ld d, a                                       ; $51c8: $57
    ld [bc], a                                    ; $51c9: $02
    ld d, e                                       ; $51ca: $53
    ld [bc], a                                    ; $51cb: $02
    ld e, [hl]                                    ; $51cc: $5e
    ld [bc], a                                    ; $51cd: $02
    ld b, c                                       ; $51ce: $41
    add d                                         ; $51cf: $82
    ld a, a                                       ; $51d0: $7f
    ld a, [hl]                                    ; $51d1: $7e
    ld [bc], a                                    ; $51d2: $02
    ccf                                           ; $51d3: $3f
    add c                                         ; $51d4: $81
    ld a, l                                       ; $51d5: $7d
    inc bc                                        ; $51d6: $03
    ld a, a                                       ; $51d7: $7f
    add h                                         ; $51d8: $84
    cp c                                          ; $51d9: $b9
    rst $38                                       ; $51da: $ff
    ld e, a                                       ; $51db: $5f
    ld a, a                                       ; $51dc: $7f
    ld [bc], a                                    ; $51dd: $02
    jr c, jr_0dc_51e8                             ; $51de: $38 $08

    nop                                           ; $51e0: $00
    ld [bc], a                                    ; $51e1: $02
    dec l                                         ; $51e2: $2d
    ld [bc], a                                    ; $51e3: $02
    sbc [hl]                                      ; $51e4: $9e
    ld [bc], a                                    ; $51e5: $02
    ld c, l                                       ; $51e6: $4d
    ld [bc], a                                    ; $51e7: $02

jr_0dc_51e8:
    di                                            ; $51e8: $f3
    add h                                         ; $51e9: $84
    ret nz                                        ; $51ea: $c0

    ld b, b                                       ; $51eb: $40
    rst $38                                       ; $51ec: $ff
    ld a, a                                       ; $51ed: $7f
    inc b                                         ; $51ee: $04
    cp a                                          ; $51ef: $bf
    ld [bc], a                                    ; $51f0: $02
    rst $38                                       ; $51f1: $ff
    add h                                         ; $51f2: $84
    ld e, [hl]                                    ; $51f3: $5e
    ld a, a                                       ; $51f4: $7f
    xor a                                         ; $51f5: $af
    cp a                                          ; $51f6: $bf
    ld [bc], a                                    ; $51f7: $02
    inc e                                         ; $51f8: $1c
    ld [$0800], sp                                ; $51f9: $08 $00 $08
    ld a, [bc]                                    ; $51fc: $0a
    add h                                         ; $51fd: $84
    rlca                                          ; $51fe: $07
    dec b                                         ; $51ff: $05
    ld c, $0a                                     ; $5200: $0e $0a
    ld [bc], a                                    ; $5202: $02
    ld c, $82                                     ; $5203: $0e $82
    inc b                                         ; $5205: $04
    inc c                                         ; $5206: $0c
    ld [bc], a                                    ; $5207: $02
    ld c, $82                                     ; $5208: $0e $82
    inc bc                                        ; $520a: $03
    rrca                                          ; $520b: $0f
    ld [bc], a                                    ; $520c: $02
    ld c, $0a                                     ; $520d: $0e $0a
    nop                                           ; $520f: $00
    rst $38                                       ; $5210: $ff
    dec c                                         ; $5211: $0d
    inc b                                         ; $5212: $04
    di                                            ; $5213: $f3
    ld a, [bc]                                    ; $5214: $0a
    ld a, [c]                                     ; $5215: $f2
    ld bc, $f7e7                                  ; $5216: $01 $e7 $f7
    rst $20                                       ; $5219: $e7
    rst $38                                       ; $521a: $ff
    rst $30                                       ; $521b: $f7
    rst $30                                       ; $521c: $f7
    rst $30                                       ; $521d: $f7
    rst $38                                       ; $521e: $ff
    sub [hl]                                      ; $521f: $96
    ld c, b                                       ; $5220: $48
    ld a, a                                       ; $5221: $7f
    nop                                           ; $5222: $00
    add b                                         ; $5223: $80
    nop                                           ; $5224: $00
    cp a                                          ; $5225: $bf
    add b                                         ; $5226: $80
    add h                                         ; $5227: $84
    add hl, bc                                    ; $5228: $09
    cp a                                          ; $5229: $bf
    nop                                           ; $522a: $00
    add l                                         ; $522b: $85
    nop                                           ; $522c: $00
    cp a                                          ; $522d: $bf
    nop                                           ; $522e: $00
    sub a                                         ; $522f: $97
    nop                                           ; $5230: $00
    cp a                                          ; $5231: $bf
    nop                                           ; $5232: $00
    add b                                         ; $5233: $80
    jr nz, jr_0dc_52b5                            ; $5234: $20 $7f

    inc bc                                        ; $5236: $03
    nop                                           ; $5237: $00
    sbc l                                         ; $5238: $9d
    rst $38                                       ; $5239: $ff
    nop                                           ; $523a: $00
    add b                                         ; $523b: $80
    nop                                           ; $523c: $00
    xor [hl]                                      ; $523d: $ae
    nop                                           ; $523e: $00
    or e                                          ; $523f: $b3
    ld c, [hl]                                    ; $5240: $4e
    cp $00                                        ; $5241: $fe $00
    ld bc, $fd4d                                  ; $5243: $01 $4d $fd
    nop                                           ; $5246: $00
    pop de                                        ; $5247: $d1
    ld d, l                                       ; $5248: $55
    db $fd                                        ; $5249: $fd
    nop                                           ; $524a: $00
    ld [hl], c                                    ; $524b: $71
    inc l                                         ; $524c: $2c
    db $fd                                        ; $524d: $fd
    ld bc, $0829                                  ; $524e: $01 $29 $08
    db $fd                                        ; $5251: $fd
    nop                                           ; $5252: $00
    ld bc, $fe88                                  ; $5253: $01 $88 $fe
    inc bc                                        ; $5256: $03
    nop                                           ; $5257: $00
    adc a                                         ; $5258: $8f
    rst $38                                       ; $5259: $ff
    nop                                           ; $525a: $00
    ld bc, $a900                                  ; $525b: $01 $00 $a9
    nop                                           ; $525e: $00
    ld c, c                                       ; $525f: $49
    nop                                           ; $5260: $00
    and c                                         ; $5261: $a1
    ld [bc], a                                    ; $5262: $02
    or d                                          ; $5263: $b2
    nop                                           ; $5264: $00
    add h                                         ; $5265: $84
    nop                                           ; $5266: $00
    ld hl, sp+$19                                 ; $5267: $f8 $19
    nop                                           ; $5269: $00
    add a                                         ; $526a: $87
    add l                                         ; $526b: $85
    nop                                           ; $526c: $00
    ret                                           ; $526d: $c9


    nop                                           ; $526e: $00
    ld sp, $fe00                                  ; $526f: $31 $00 $fe
    jr jr_0dc_5274                                ; $5272: $18 $00

jr_0dc_5274:
    rst $38                                       ; $5274: $ff
    ld de, $f906                                  ; $5275: $11 $06 $f9
    rlca                                          ; $5278: $07
    ld a, [c]                                     ; $5279: $f2
    ld bc, $f6e6                                  ; $527a: $01 $e6 $f6
    and $fe                                       ; $527d: $e6 $fe
    and $00                                       ; $527f: $e6 $00
    or $f5                                        ; $5281: $f6 $f5
    or $fd                                        ; $5283: $f6 $fd
    or $03                                        ; $5285: $f6 $03
    ld [bc], a                                    ; $5287: $02
    rst $38                                       ; $5288: $ff
    ld [bc], a                                    ; $5289: $02
    ret nz                                        ; $528a: $c0

    ld [bc], a                                    ; $528b: $02
    cp a                                          ; $528c: $bf
    ld [bc], a                                    ; $528d: $02
    and b                                         ; $528e: $a0
    ld [bc], a                                    ; $528f: $02
    cp d                                          ; $5290: $ba
    ld [bc], a                                    ; $5291: $02
    and b                                         ; $5292: $a0
    ld [bc], a                                    ; $5293: $02
    cp c                                          ; $5294: $b9
    ld [bc], a                                    ; $5295: $02
    and b                                         ; $5296: $a0
    ld [bc], a                                    ; $5297: $02
    or d                                          ; $5298: $b2
    ld [bc], a                                    ; $5299: $02
    cp a                                          ; $529a: $bf
    ld [bc], a                                    ; $529b: $02
    ret nz                                        ; $529c: $c0

    ld [bc], a                                    ; $529d: $02
    rst $38                                       ; $529e: $ff
    ld [bc], a                                    ; $529f: $02
    add b                                         ; $52a0: $80
    ld [bc], a                                    ; $52a1: $02
    cp a                                          ; $52a2: $bf
    ld [bc], a                                    ; $52a3: $02
    xor b                                         ; $52a4: $a8
    ld [bc], a                                    ; $52a5: $02
    and [hl]                                      ; $52a6: $a6
    ld [bc], a                                    ; $52a7: $02
    rst $38                                       ; $52a8: $ff
    ld [bc], a                                    ; $52a9: $02
    nop                                           ; $52aa: $00
    ld [bc], a                                    ; $52ab: $02
    rst $38                                       ; $52ac: $ff
    ld [bc], a                                    ; $52ad: $02
    ld bc, $bb02                                  ; $52ae: $01 $02 $bb
    ld [bc], a                                    ; $52b1: $02
    ld bc, $eb02                                  ; $52b2: $01 $02 $eb

jr_0dc_52b5:
    ld [bc], a                                    ; $52b5: $02
    ld bc, $2b02                                  ; $52b6: $01 $02 $2b
    ld [bc], a                                    ; $52b9: $02
    rst $38                                       ; $52ba: $ff
    ld [bc], a                                    ; $52bb: $02
    nop                                           ; $52bc: $00
    ld [bc], a                                    ; $52bd: $02
    rst $38                                       ; $52be: $ff
    ld [bc], a                                    ; $52bf: $02
    nop                                           ; $52c0: $00
    ld [bc], a                                    ; $52c1: $02
    rst $38                                       ; $52c2: $ff
    ld [bc], a                                    ; $52c3: $02
    and e                                         ; $52c4: $a3
    ld [bc], a                                    ; $52c5: $02
    add hl, de                                    ; $52c6: $19
    inc b                                         ; $52c7: $04
    inc bc                                        ; $52c8: $03
    db $10                                        ; $52c9: $10
    ld bc, $0304                                  ; $52ca: $01 $04 $03
    ld [$0201], sp                                ; $52cd: $08 $01 $02
    ld d, a                                       ; $52d0: $57
    ld [bc], a                                    ; $52d1: $02
    ld d, e                                       ; $52d2: $53
    ld [bc], a                                    ; $52d3: $02
    ld e, h                                       ; $52d4: $5c
    ld [bc], a                                    ; $52d5: $02
    ld b, c                                       ; $52d6: $41
    adc [hl]                                      ; $52d7: $8e
    ld a, a                                       ; $52d8: $7f
    ld a, [hl]                                    ; $52d9: $7e
    dec a                                         ; $52da: $3d
    ccf                                           ; $52db: $3f
    dec a                                         ; $52dc: $3d
    ccf                                           ; $52dd: $3f
    inc a                                         ; $52de: $3c
    ccf                                           ; $52df: $3f
    ld a, e                                       ; $52e0: $7b
    ld a, a                                       ; $52e1: $7f
    cp [hl]                                       ; $52e2: $be
    rst $38                                       ; $52e3: $ff
    ld c, a                                       ; $52e4: $4f
    ld a, a                                       ; $52e5: $7f
    ld [bc], a                                    ; $52e6: $02
    ld a, [hl-]                                   ; $52e7: $3a
    ld [$0200], sp                                ; $52e8: $08 $00 $02
    sbc [hl]                                      ; $52eb: $9e
    ld [bc], a                                    ; $52ec: $02
    dec l                                         ; $52ed: $2d
    ld [bc], a                                    ; $52ee: $02
    di                                            ; $52ef: $f3
    add h                                         ; $52f0: $84
    ret nz                                        ; $52f1: $c0

    ld b, b                                       ; $52f2: $40
    rst $38                                       ; $52f3: $ff
    ld a, a                                       ; $52f4: $7f
    ld [bc], a                                    ; $52f5: $02
    cp a                                          ; $52f6: $bf
    ld [bc], a                                    ; $52f7: $02
    ccf                                           ; $52f8: $3f
    adc b                                         ; $52f9: $88
    cp [hl]                                       ; $52fa: $be
    cp a                                          ; $52fb: $bf
    cp $ff                                        ; $52fc: $fe $ff
    ld a, a                                       ; $52fe: $7f
    rst $38                                       ; $52ff: $ff
    rst $28                                       ; $5300: $ef
    rst $38                                       ; $5301: $ff
    ld [bc], a                                    ; $5302: $02
    ld e, $08                                     ; $5303: $1e $08
    nop                                           ; $5305: $00
    ld b, $28                                     ; $5306: $06 $28
    adc b                                         ; $5308: $88
    inc e                                         ; $5309: $1c
    inc d                                         ; $530a: $14
    inc a                                         ; $530b: $3c
    inc h                                         ; $530c: $24
    jr jr_0dc_5347                                ; $530d: $18 $38

    db $10                                        ; $530f: $10
    jr nc, jr_0dc_5314                            ; $5310: $30 $02

    jr c, jr_0dc_5316                             ; $5312: $38 $02

jr_0dc_5314:
    ccf                                           ; $5314: $3f
    add h                                         ; $5315: $84

jr_0dc_5316:
    add hl, sp                                    ; $5316: $39
    ccf                                           ; $5317: $3f
    ld [hl], $3e                                  ; $5318: $36 $3e
    ld [bc], a                                    ; $531a: $02
    jr c, @+$0a                                   ; $531b: $38 $08

    nop                                           ; $531d: $00
    rst $38                                       ; $531e: $ff
    dec c                                         ; $531f: $0d
    inc b                                         ; $5320: $04
    di                                            ; $5321: $f3
    ld a, [bc]                                    ; $5322: $0a
    ld a, [c]                                     ; $5323: $f2
    ld bc, $f7e7                                  ; $5324: $01 $e7 $f7
    rst $20                                       ; $5327: $e7
    rst $38                                       ; $5328: $ff
    rst $30                                       ; $5329: $f7
    rst $30                                       ; $532a: $f7
    rst $30                                       ; $532b: $f7
    rst $38                                       ; $532c: $ff
    add e                                         ; $532d: $83
    jr nz, jr_0dc_53af                            ; $532e: $20 $7f

    nop                                           ; $5330: $00
    ld [bc], a                                    ; $5331: $02
    add b                                         ; $5332: $80
    adc a                                         ; $5333: $8f
    cp a                                          ; $5334: $bf
    nop                                           ; $5335: $00
    adc d                                         ; $5336: $8a
    add hl, bc                                    ; $5337: $09
    cp a                                          ; $5338: $bf
    nop                                           ; $5339: $00
    adc h                                         ; $533a: $8c
    add b                                         ; $533b: $80
    cp a                                          ; $533c: $bf
    nop                                           ; $533d: $00
    sbc e                                         ; $533e: $9b
    nop                                           ; $533f: $00
    add b                                         ; $5340: $80
    ld b, d                                       ; $5341: $42
    ld a, a                                       ; $5342: $7f
    inc bc                                        ; $5343: $03
    nop                                           ; $5344: $00
    sbc l                                         ; $5345: $9d
    rst $38                                       ; $5346: $ff

jr_0dc_5347:
    nop                                           ; $5347: $00
    add b                                         ; $5348: $80
    nop                                           ; $5349: $00
    xor [hl]                                      ; $534a: $ae
    nop                                           ; $534b: $00
    or e                                          ; $534c: $b3
    nop                                           ; $534d: $00
    and c                                         ; $534e: $a1
    ld a, [bc]                                    ; $534f: $0a
    cp $00                                        ; $5350: $fe $00
    ld bc, $fd4d                                  ; $5352: $01 $4d $fd
    ld bc, $5589                                  ; $5355: $01 $89 $55
    db $fd                                        ; $5358: $fd
    nop                                           ; $5359: $00
    add hl, hl                                    ; $535a: $29
    dec l                                         ; $535b: $2d
    db $fd                                        ; $535c: $fd
    ld bc, $00a9                                  ; $535d: $01 $a9 $00
    ld bc, $fea8                                  ; $5360: $01 $a8 $fe
    inc bc                                        ; $5363: $03
    nop                                           ; $5364: $00
    adc a                                         ; $5365: $8f
    rst $38                                       ; $5366: $ff
    nop                                           ; $5367: $00
    ld bc, $b900                                  ; $5368: $01 $00 $b9
    nop                                           ; $536b: $00
    call $8500                                    ; $536c: $cd $00 $85
    ld [bc], a                                    ; $536f: $02
    or e                                          ; $5370: $b3
    inc b                                         ; $5371: $04
    adc h                                         ; $5372: $8c
    nop                                           ; $5373: $00
    ld hl, sp+$1b                                 ; $5374: $f8 $1b
    nop                                           ; $5376: $00
    add l                                         ; $5377: $85
    ld c, c                                       ; $5378: $49
    nop                                           ; $5379: $00
    ld sp, $fe00                                  ; $537a: $31 $00 $fe
    ld a, [de]                                    ; $537d: $1a
    nop                                           ; $537e: $00
    rst $38                                       ; $537f: $ff
    ld de, $f906                                  ; $5380: $11 $06 $f9
    rlca                                          ; $5383: $07
    ld a, [c]                                     ; $5384: $f2
    ld bc, $f6e7                                  ; $5385: $01 $e7 $f6
    rst $20                                       ; $5388: $e7
    cp $e7                                        ; $5389: $fe $e7
    nop                                           ; $538b: $00
    rst $30                                       ; $538c: $f7
    push af                                       ; $538d: $f5
    rst $30                                       ; $538e: $f7
    db $fd                                        ; $538f: $fd
    rst $30                                       ; $5390: $f7
    inc bc                                        ; $5391: $03
    ld [bc], a                                    ; $5392: $02
    rst $38                                       ; $5393: $ff
    ld [bc], a                                    ; $5394: $02
    ret nz                                        ; $5395: $c0

    ld [bc], a                                    ; $5396: $02
    cp a                                          ; $5397: $bf
    ld [bc], a                                    ; $5398: $02
    and b                                         ; $5399: $a0
    ld [bc], a                                    ; $539a: $02
    or [hl]                                       ; $539b: $b6
    ld [bc], a                                    ; $539c: $02
    and b                                         ; $539d: $a0
    ld [bc], a                                    ; $539e: $02
    cp c                                          ; $539f: $b9
    ld [bc], a                                    ; $53a0: $02
    and b                                         ; $53a1: $a0
    ld [bc], a                                    ; $53a2: $02
    or d                                          ; $53a3: $b2
    ld [bc], a                                    ; $53a4: $02
    cp a                                          ; $53a5: $bf
    ld [bc], a                                    ; $53a6: $02
    ret nz                                        ; $53a7: $c0

    ld [bc], a                                    ; $53a8: $02
    rst $38                                       ; $53a9: $ff
    ld [bc], a                                    ; $53aa: $02
    add b                                         ; $53ab: $80
    ld [bc], a                                    ; $53ac: $02
    cp a                                          ; $53ad: $bf
    ld [bc], a                                    ; $53ae: $02

jr_0dc_53af:
    xor b                                         ; $53af: $a8
    ld [bc], a                                    ; $53b0: $02
    and [hl]                                      ; $53b1: $a6
    ld [bc], a                                    ; $53b2: $02
    rst $38                                       ; $53b3: $ff
    ld [bc], a                                    ; $53b4: $02
    nop                                           ; $53b5: $00
    ld [bc], a                                    ; $53b6: $02
    rst $38                                       ; $53b7: $ff
    ld [bc], a                                    ; $53b8: $02
    ld bc, $bb02                                  ; $53b9: $01 $02 $bb
    ld [bc], a                                    ; $53bc: $02
    ld bc, $eb02                                  ; $53bd: $01 $02 $eb
    ld [bc], a                                    ; $53c0: $02
    ld bc, $2b02                                  ; $53c1: $01 $02 $2b
    ld [bc], a                                    ; $53c4: $02
    rst $38                                       ; $53c5: $ff
    ld [bc], a                                    ; $53c6: $02
    nop                                           ; $53c7: $00
    ld [bc], a                                    ; $53c8: $02
    rst $38                                       ; $53c9: $ff
    ld [bc], a                                    ; $53ca: $02
    nop                                           ; $53cb: $00
    ld [bc], a                                    ; $53cc: $02
    rst $38                                       ; $53cd: $ff
    ld [bc], a                                    ; $53ce: $02
    and e                                         ; $53cf: $a3
    ld [bc], a                                    ; $53d0: $02
    add hl, de                                    ; $53d1: $19
    inc b                                         ; $53d2: $04
    inc bc                                        ; $53d3: $03
    db $10                                        ; $53d4: $10
    ld bc, $0304                                  ; $53d5: $01 $04 $03
    ld [$0201], sp                                ; $53d8: $08 $01 $02
    ld d, a                                       ; $53db: $57
    ld [bc], a                                    ; $53dc: $02
    ld d, e                                       ; $53dd: $53
    ld [bc], a                                    ; $53de: $02
    ld e, h                                       ; $53df: $5c
    ld [bc], a                                    ; $53e0: $02
    ld b, c                                       ; $53e1: $41
    adc h                                         ; $53e2: $8c
    ld a, a                                       ; $53e3: $7f
    ld a, [hl]                                    ; $53e4: $7e
    dec a                                         ; $53e5: $3d
    ccf                                           ; $53e6: $3f
    ld a, l                                       ; $53e7: $7d
    ld a, a                                       ; $53e8: $7f
    ld a, e                                       ; $53e9: $7b
    ld a, a                                       ; $53ea: $7f
    cp e                                          ; $53eb: $bb
    rst $38                                       ; $53ec: $ff
    ld e, h                                       ; $53ed: $5c
    ld a, a                                       ; $53ee: $7f
    ld [bc], a                                    ; $53ef: $02
    ccf                                           ; $53f0: $3f
    ld a, [bc]                                    ; $53f1: $0a
    nop                                           ; $53f2: $00
    ld [bc], a                                    ; $53f3: $02
    sbc [hl]                                      ; $53f4: $9e
    ld [bc], a                                    ; $53f5: $02
    dec l                                         ; $53f6: $2d
    ld [bc], a                                    ; $53f7: $02
    di                                            ; $53f8: $f3
    add h                                         ; $53f9: $84
    ret nz                                        ; $53fa: $c0

    ld b, b                                       ; $53fb: $40
    rst $38                                       ; $53fc: $ff
    ld a, a                                       ; $53fd: $7f
    ld [bc], a                                    ; $53fe: $02
    cp a                                          ; $53ff: $bf
    adc b                                         ; $5400: $88
    ld a, $3f                                     ; $5401: $3e $3f
    ld a, $3f                                     ; $5403: $3e $3f
    ld e, l                                       ; $5405: $5d
    ld a, a                                       ; $5406: $7f
    rst $18                                       ; $5407: $df
    rst $38                                       ; $5408: $ff
    ld [bc], a                                    ; $5409: $02
    db $fd                                        ; $540a: $fd
    ld a, [bc]                                    ; $540b: $0a
    nop                                           ; $540c: $00
    ld b, $28                                     ; $540d: $06 $28
    add [hl]                                      ; $540f: $86
    inc e                                         ; $5410: $1c
    inc d                                         ; $5411: $14
    inc a                                         ; $5412: $3c
    inc h                                         ; $5413: $24
    jr jr_0dc_544e                                ; $5414: $18 $38

    ld [bc], a                                    ; $5416: $02
    jr nc, jr_0dc_541b                            ; $5417: $30 $02

    jr c, jr_0dc_541d                             ; $5419: $38 $02

jr_0dc_541b:
    ld a, $82                                     ; $541b: $3e $82

jr_0dc_541d:
    inc hl                                        ; $541d: $23
    ccf                                           ; $541e: $3f
    ld [bc], a                                    ; $541f: $02
    ld a, $0a                                     ; $5420: $3e $0a
    nop                                           ; $5422: $00
    rst $38                                       ; $5423: $ff
    dec c                                         ; $5424: $0d
    inc b                                         ; $5425: $04
    di                                            ; $5426: $f3
    ld a, [bc]                                    ; $5427: $0a
    ld a, [c]                                     ; $5428: $f2
    ld bc, $f7e8                                  ; $5429: $01 $e8 $f7
    add sp, -$01                                  ; $542c: $e8 $ff
    ld hl, sp-$09                                 ; $542e: $f8 $f7
    ld hl, sp-$01                                 ; $5430: $f8 $ff
    add e                                         ; $5432: $83
    jr nz, jr_0dc_54b4                            ; $5433: $20 $7f

    nop                                           ; $5435: $00
    ld [bc], a                                    ; $5436: $02
    add b                                         ; $5437: $80
    adc a                                         ; $5438: $8f
    cp a                                          ; $5439: $bf
    add b                                         ; $543a: $80
    sub d                                         ; $543b: $92
    add hl, bc                                    ; $543c: $09
    cp a                                          ; $543d: $bf
    nop                                           ; $543e: $00
    adc h                                         ; $543f: $8c
    nop                                           ; $5440: $00
    cp a                                          ; $5441: $bf
    nop                                           ; $5442: $00
    sbc e                                         ; $5443: $9b
    nop                                           ; $5444: $00
    add b                                         ; $5445: $80
    jr nz, @+$81                                  ; $5446: $20 $7f

    inc bc                                        ; $5448: $03
    nop                                           ; $5449: $00
    sbc l                                         ; $544a: $9d
    rst $38                                       ; $544b: $ff
    nop                                           ; $544c: $00
    add b                                         ; $544d: $80

jr_0dc_544e:
    nop                                           ; $544e: $00
    xor [hl]                                      ; $544f: $ae
    nop                                           ; $5450: $00
    or e                                          ; $5451: $b3
    nop                                           ; $5452: $00
    and c                                         ; $5453: $a1
    ld a, [bc]                                    ; $5454: $0a
    cp $00                                        ; $5455: $fe $00
    ld bc, $fd4d                                  ; $5457: $01 $4d $fd
    ld bc, $5589                                  ; $545a: $01 $89 $55
    db $fd                                        ; $545d: $fd
    nop                                           ; $545e: $00
    add hl, hl                                    ; $545f: $29
    dec l                                         ; $5460: $2d
    db $fd                                        ; $5461: $fd
    ld bc, $00a9                                  ; $5462: $01 $a9 $00
    ld bc, $fea8                                  ; $5465: $01 $a8 $fe
    inc bc                                        ; $5468: $03
    nop                                           ; $5469: $00
    adc a                                         ; $546a: $8f
    rst $38                                       ; $546b: $ff
    nop                                           ; $546c: $00
    ld bc, $b900                                  ; $546d: $01 $00 $b9
    nop                                           ; $5470: $00
    call $8500                                    ; $5471: $cd $00 $85
    ld [bc], a                                    ; $5474: $02
    or e                                          ; $5475: $b3
    inc b                                         ; $5476: $04
    adc h                                         ; $5477: $8c
    nop                                           ; $5478: $00
    ld hl, sp+$1b                                 ; $5479: $f8 $1b
    nop                                           ; $547b: $00
    add l                                         ; $547c: $85
    ld c, c                                       ; $547d: $49
    nop                                           ; $547e: $00
    ld sp, $fe00                                  ; $547f: $31 $00 $fe
    ld a, [de]                                    ; $5482: $1a
    nop                                           ; $5483: $00
    rst $38                                       ; $5484: $ff
    ld de, $f906                                  ; $5485: $11 $06 $f9
    rlca                                          ; $5488: $07
    ld a, [c]                                     ; $5489: $f2
    ld bc, $f6e6                                  ; $548a: $01 $e6 $f6
    and $fe                                       ; $548d: $e6 $fe
    and $00                                       ; $548f: $e6 $00
    or $f5                                        ; $5491: $f6 $f5
    or $fd                                        ; $5493: $f6 $fd
    or $02                                        ; $5495: $f6 $02
    ld [bc], a                                    ; $5497: $02
    rst $38                                       ; $5498: $ff
    ld [bc], a                                    ; $5499: $02
    ret nz                                        ; $549a: $c0

    ld [bc], a                                    ; $549b: $02
    cp a                                          ; $549c: $bf
    ld [bc], a                                    ; $549d: $02
    and b                                         ; $549e: $a0
    ld [bc], a                                    ; $549f: $02
    cp l                                          ; $54a0: $bd
    ld [bc], a                                    ; $54a1: $02
    and b                                         ; $54a2: $a0
    ld [bc], a                                    ; $54a3: $02
    cp l                                          ; $54a4: $bd
    ld [bc], a                                    ; $54a5: $02
    and b                                         ; $54a6: $a0
    ld [bc], a                                    ; $54a7: $02
    or h                                          ; $54a8: $b4
    ld [bc], a                                    ; $54a9: $02
    and b                                         ; $54aa: $a0
    ld [bc], a                                    ; $54ab: $02
    cp a                                          ; $54ac: $bf
    ld [bc], a                                    ; $54ad: $02
    ret nz                                        ; $54ae: $c0

    ld [bc], a                                    ; $54af: $02
    rst $38                                       ; $54b0: $ff
    ld [bc], a                                    ; $54b1: $02
    add b                                         ; $54b2: $80
    ld [bc], a                                    ; $54b3: $02

jr_0dc_54b4:
    cp a                                          ; $54b4: $bf
    ld [bc], a                                    ; $54b5: $02
    xor b                                         ; $54b6: $a8
    ld [bc], a                                    ; $54b7: $02
    rst $38                                       ; $54b8: $ff
    ld [bc], a                                    ; $54b9: $02
    nop                                           ; $54ba: $00
    ld [bc], a                                    ; $54bb: $02
    rst $38                                       ; $54bc: $ff
    ld [bc], a                                    ; $54bd: $02
    ld bc, $9702                                  ; $54be: $01 $02 $97
    ld [bc], a                                    ; $54c1: $02
    ld bc, $4702                                  ; $54c2: $01 $02 $47
    ld [bc], a                                    ; $54c5: $02
    ld bc, $6b02                                  ; $54c6: $01 $02 $6b
    ld [bc], a                                    ; $54c9: $02
    ld bc, $ff02                                  ; $54ca: $01 $02 $ff
    ld [bc], a                                    ; $54cd: $02
    nop                                           ; $54ce: $00
    ld [bc], a                                    ; $54cf: $02
    rst $38                                       ; $54d0: $ff
    ld [bc], a                                    ; $54d1: $02
    nop                                           ; $54d2: $00
    ld [bc], a                                    ; $54d3: $02
    rst $38                                       ; $54d4: $ff
    ld [bc], a                                    ; $54d5: $02
    xor e                                         ; $54d6: $ab
    inc b                                         ; $54d7: $04
    inc bc                                        ; $54d8: $03
    ld [de], a                                    ; $54d9: $12
    ld bc, $0304                                  ; $54da: $01 $04 $03
    ld b, $01                                     ; $54dd: $06 $01
    ld [bc], a                                    ; $54df: $02
    ld d, e                                       ; $54e0: $53
    ld [bc], a                                    ; $54e1: $02
    ld d, a                                       ; $54e2: $57
    ld [bc], a                                    ; $54e3: $02
    ld d, e                                       ; $54e4: $53
    ld [bc], a                                    ; $54e5: $02
    ld e, [hl]                                    ; $54e6: $5e
    ld [bc], a                                    ; $54e7: $02
    ld b, c                                       ; $54e8: $41
    adc h                                         ; $54e9: $8c
    ld a, a                                       ; $54ea: $7f
    ld a, [hl]                                    ; $54eb: $7e
    dec a                                         ; $54ec: $3d
    ccf                                           ; $54ed: $3f
    ld a, l                                       ; $54ee: $7d
    ld a, a                                       ; $54ef: $7f
    ei                                            ; $54f0: $fb
    rst $38                                       ; $54f1: $ff
    cp [hl]                                       ; $54f2: $be
    cp $59                                        ; $54f3: $fe $59
    ld a, a                                       ; $54f5: $7f
    ld [bc], a                                    ; $54f6: $02
    ccf                                           ; $54f7: $3f
    ld [$0200], sp                                ; $54f8: $08 $00 $02
    dec l                                         ; $54fb: $2d

Call_0dc_54fc:
    ld [bc], a                                    ; $54fc: $02
    sbc [hl]                                      ; $54fd: $9e
    ld [bc], a                                    ; $54fe: $02
    ld c, l                                       ; $54ff: $4d
    ld [bc], a                                    ; $5500: $02
    di                                            ; $5501: $f3
    add h                                         ; $5502: $84
    ret nz                                        ; $5503: $c0

    ld b, b                                       ; $5504: $40
    rst $38                                       ; $5505: $ff
    ld a, a                                       ; $5506: $7f
    ld [bc], a                                    ; $5507: $02
    sbc a                                         ; $5508: $9f
    adc b                                         ; $5509: $88
    ld a, $3f                                     ; $550a: $3e $3f
    ld a, $3f                                     ; $550c: $3e $3f
    ld a, l                                       ; $550e: $7d
    ld a, a                                       ; $550f: $7f
    ld e, a                                       ; $5510: $5f
    ld a, a                                       ; $5511: $7f
    ld [bc], a                                    ; $5512: $02
    cp a                                          ; $5513: $bf
    ld [$0800], sp                                ; $5514: $08 $00 $08
    inc d                                         ; $5517: $14
    add l                                         ; $5518: $85
    ld c, $0a                                     ; $5519: $0e $0a
    inc e                                         ; $551b: $1c
    inc d                                         ; $551c: $14
    ld [$1805], sp                                ; $551d: $08 $05 $18
    ld [bc], a                                    ; $5520: $02
    inc e                                         ; $5521: $1c
    add d                                         ; $5522: $82
    inc bc                                        ; $5523: $03
    rra                                           ; $5524: $1f
    ld [bc], a                                    ; $5525: $02
    ld e, $08                                     ; $5526: $1e $08
    nop                                           ; $5528: $00
    rst $38                                       ; $5529: $ff
    dec c                                         ; $552a: $0d
    inc b                                         ; $552b: $04
    di                                            ; $552c: $f3
    ld a, [bc]                                    ; $552d: $0a
    ld a, [c]                                     ; $552e: $f2
    ld bc, $f7e7                                  ; $552f: $01 $e7 $f7
    rst $20                                       ; $5532: $e7
    rst $38                                       ; $5533: $ff
    rst $30                                       ; $5534: $f7
    rst $30                                       ; $5535: $f7
    rst $30                                       ; $5536: $f7
    rst $38                                       ; $5537: $ff
    sub [hl]                                      ; $5538: $96
    ld c, b                                       ; $5539: $48
    ld a, a                                       ; $553a: $7f
    nop                                           ; $553b: $00
    add b                                         ; $553c: $80
    nop                                           ; $553d: $00
    cp a                                          ; $553e: $bf
    add b                                         ; $553f: $80
    add h                                         ; $5540: $84
    add hl, bc                                    ; $5541: $09
    cp a                                          ; $5542: $bf
    nop                                           ; $5543: $00
    add l                                         ; $5544: $85
    nop                                           ; $5545: $00
    cp a                                          ; $5546: $bf
    nop                                           ; $5547: $00
    sub a                                         ; $5548: $97
    nop                                           ; $5549: $00
    cp a                                          ; $554a: $bf
    nop                                           ; $554b: $00
    add b                                         ; $554c: $80
    jr nz, jr_0dc_55ce                            ; $554d: $20 $7f

    inc bc                                        ; $554f: $03
    nop                                           ; $5550: $00
    sbc l                                         ; $5551: $9d
    rst $38                                       ; $5552: $ff
    nop                                           ; $5553: $00
    add b                                         ; $5554: $80
    nop                                           ; $5555: $00
    xor [hl]                                      ; $5556: $ae
    nop                                           ; $5557: $00
    or e                                          ; $5558: $b3
    ld c, [hl]                                    ; $5559: $4e
    cp $00                                        ; $555a: $fe $00
    ld bc, $fd4d                                  ; $555c: $01 $4d $fd
    nop                                           ; $555f: $00
    pop de                                        ; $5560: $d1
    ld d, l                                       ; $5561: $55
    db $fd                                        ; $5562: $fd
    nop                                           ; $5563: $00
    ld [hl], c                                    ; $5564: $71
    inc l                                         ; $5565: $2c
    db $fd                                        ; $5566: $fd
    ld bc, $0829                                  ; $5567: $01 $29 $08
    db $fd                                        ; $556a: $fd
    nop                                           ; $556b: $00
    ld bc, $fe88                                  ; $556c: $01 $88 $fe
    inc bc                                        ; $556f: $03
    nop                                           ; $5570: $00
    adc a                                         ; $5571: $8f
    rst $38                                       ; $5572: $ff
    nop                                           ; $5573: $00
    ld bc, $a900                                  ; $5574: $01 $00 $a9
    nop                                           ; $5577: $00
    ld c, c                                       ; $5578: $49
    nop                                           ; $5579: $00
    and c                                         ; $557a: $a1
    ld [bc], a                                    ; $557b: $02
    or d                                          ; $557c: $b2
    nop                                           ; $557d: $00
    add h                                         ; $557e: $84
    nop                                           ; $557f: $00
    ld hl, sp+$19                                 ; $5580: $f8 $19
    nop                                           ; $5582: $00
    add a                                         ; $5583: $87
    add l                                         ; $5584: $85
    nop                                           ; $5585: $00
    ret                                           ; $5586: $c9


    nop                                           ; $5587: $00
    ld sp, $fe00                                  ; $5588: $31 $00 $fe
    jr jr_0dc_558d                                ; $558b: $18 $00

jr_0dc_558d:
    rst $38                                       ; $558d: $ff
    ld de, $f906                                  ; $558e: $11 $06 $f9
    rlca                                          ; $5591: $07
    ld a, [c]                                     ; $5592: $f2
    ld bc, $f6e7                                  ; $5593: $01 $e7 $f6
    rst $20                                       ; $5596: $e7
    cp $e7                                        ; $5597: $fe $e7
    nop                                           ; $5599: $00
    rst $30                                       ; $559a: $f7
    push af                                       ; $559b: $f5
    rst $30                                       ; $559c: $f7
    db $fd                                        ; $559d: $fd
    rst $30                                       ; $559e: $f7
    ld bc, $ff02                                  ; $559f: $01 $02 $ff
    ld [bc], a                                    ; $55a2: $02
    ret nz                                        ; $55a3: $c0

    ld [bc], a                                    ; $55a4: $02
    cp a                                          ; $55a5: $bf
    ld [bc], a                                    ; $55a6: $02
    and b                                         ; $55a7: $a0
    ld [bc], a                                    ; $55a8: $02
    cp l                                          ; $55a9: $bd
    ld [bc], a                                    ; $55aa: $02
    and b                                         ; $55ab: $a0
    ld [bc], a                                    ; $55ac: $02
    cp l                                          ; $55ad: $bd
    ld [bc], a                                    ; $55ae: $02
    and b                                         ; $55af: $a0
    ld [bc], a                                    ; $55b0: $02
    or h                                          ; $55b1: $b4
    ld [bc], a                                    ; $55b2: $02
    and b                                         ; $55b3: $a0
    ld [bc], a                                    ; $55b4: $02
    cp a                                          ; $55b5: $bf
    ld [bc], a                                    ; $55b6: $02
    ret nz                                        ; $55b7: $c0

    ld [bc], a                                    ; $55b8: $02
    rst $38                                       ; $55b9: $ff
    ld [bc], a                                    ; $55ba: $02
    add b                                         ; $55bb: $80
    ld [bc], a                                    ; $55bc: $02
    cp a                                          ; $55bd: $bf
    ld [bc], a                                    ; $55be: $02
    xor b                                         ; $55bf: $a8
    ld [bc], a                                    ; $55c0: $02
    rst $38                                       ; $55c1: $ff
    ld [bc], a                                    ; $55c2: $02
    nop                                           ; $55c3: $00
    ld [bc], a                                    ; $55c4: $02
    rst $38                                       ; $55c5: $ff
    ld [bc], a                                    ; $55c6: $02
    ld bc, $9702                                  ; $55c7: $01 $02 $97
    ld [bc], a                                    ; $55ca: $02
    ld bc, $4702                                  ; $55cb: $01 $02 $47

jr_0dc_55ce:
    ld [bc], a                                    ; $55ce: $02
    ld bc, $6b02                                  ; $55cf: $01 $02 $6b
    ld [bc], a                                    ; $55d2: $02
    ld bc, $ff02                                  ; $55d3: $01 $02 $ff
    ld [bc], a                                    ; $55d6: $02
    nop                                           ; $55d7: $00
    ld [bc], a                                    ; $55d8: $02
    rst $38                                       ; $55d9: $ff
    ld [bc], a                                    ; $55da: $02
    nop                                           ; $55db: $00
    ld [bc], a                                    ; $55dc: $02
    rst $38                                       ; $55dd: $ff
    ld [bc], a                                    ; $55de: $02
    xor e                                         ; $55df: $ab
    inc b                                         ; $55e0: $04
    inc bc                                        ; $55e1: $03
    ld [de], a                                    ; $55e2: $12
    ld bc, $0304                                  ; $55e3: $01 $04 $03
    ld b, $01                                     ; $55e6: $06 $01
    ld [bc], a                                    ; $55e8: $02
    ld d, e                                       ; $55e9: $53
    ld [bc], a                                    ; $55ea: $02
    ld d, a                                       ; $55eb: $57
    ld [bc], a                                    ; $55ec: $02
    ld d, e                                       ; $55ed: $53
    ld [bc], a                                    ; $55ee: $02
    ld e, [hl]                                    ; $55ef: $5e
    ld [bc], a                                    ; $55f0: $02
    ld b, c                                       ; $55f1: $41
    adc d                                         ; $55f2: $8a
    ld a, a                                       ; $55f3: $7f
    ld a, [hl]                                    ; $55f4: $7e
    ld a, e                                       ; $55f5: $7b
    ld a, a                                       ; $55f6: $7f
    rst $30                                       ; $55f7: $f7
    rst $38                                       ; $55f8: $ff
    cp a                                          ; $55f9: $bf
    rst $38                                       ; $55fa: $ff
    ld e, d                                       ; $55fb: $5a
    ld a, [hl]                                    ; $55fc: $7e
    ld [bc], a                                    ; $55fd: $02
    ccf                                           ; $55fe: $3f
    ld a, [bc]                                    ; $55ff: $0a
    nop                                           ; $5600: $00
    ld [bc], a                                    ; $5601: $02
    dec l                                         ; $5602: $2d
    ld [bc], a                                    ; $5603: $02
    sbc [hl]                                      ; $5604: $9e
    ld [bc], a                                    ; $5605: $02
    ld c, l                                       ; $5606: $4d
    ld [bc], a                                    ; $5607: $02
    di                                            ; $5608: $f3
    adc h                                         ; $5609: $8c
    ret nz                                        ; $560a: $c0

    ld b, b                                       ; $560b: $40
    rst $38                                       ; $560c: $ff
    ld a, a                                       ; $560d: $7f
    sbc l                                         ; $560e: $9d
    sbc a                                         ; $560f: $9f
    dec a                                         ; $5610: $3d
    ccf                                           ; $5611: $3f
    xor a                                         ; $5612: $af
    cp a                                          ; $5613: $bf
    jr c, jr_0dc_5655                             ; $5614: $38 $3f

    ld [bc], a                                    ; $5616: $02
    rra                                           ; $5617: $1f
    ld a, [bc]                                    ; $5618: $0a
    nop                                           ; $5619: $00
    ld [$840a], sp                                ; $561a: $08 $0a $84
    rlca                                          ; $561d: $07
    dec b                                         ; $561e: $05
    ld c, $0a                                     ; $561f: $0e $0a
    ld [bc], a                                    ; $5621: $02
    ld c, $82                                     ; $5622: $0e $82
    ld [bc], a                                    ; $5624: $02
    ld c, $04                                     ; $5625: $0e $04
    inc c                                         ; $5627: $0c
    ld [bc], a                                    ; $5628: $02
    ld [$000a], sp                                ; $5629: $08 $0a $00
    rst $38                                       ; $562c: $ff
    dec c                                         ; $562d: $0d
    inc b                                         ; $562e: $04
    di                                            ; $562f: $f3
    ld a, [bc]                                    ; $5630: $0a
    ld a, [c]                                     ; $5631: $f2
    ld bc, $f7e8                                  ; $5632: $01 $e8 $f7
    add sp, -$01                                  ; $5635: $e8 $ff
    ld hl, sp-$09                                 ; $5637: $f8 $f7
    ld hl, sp-$01                                 ; $5639: $f8 $ff
    sub [hl]                                      ; $563b: $96
    ld c, b                                       ; $563c: $48
    ld a, a                                       ; $563d: $7f
    nop                                           ; $563e: $00
    add b                                         ; $563f: $80
    nop                                           ; $5640: $00
    cp a                                          ; $5641: $bf
    add b                                         ; $5642: $80
    add h                                         ; $5643: $84
    add hl, bc                                    ; $5644: $09
    cp a                                          ; $5645: $bf
    nop                                           ; $5646: $00
    add l                                         ; $5647: $85
    nop                                           ; $5648: $00
    cp a                                          ; $5649: $bf
    nop                                           ; $564a: $00
    sub a                                         ; $564b: $97
    nop                                           ; $564c: $00
    cp a                                          ; $564d: $bf
    nop                                           ; $564e: $00
    add b                                         ; $564f: $80
    jr nz, jr_0dc_56d1                            ; $5650: $20 $7f

    inc bc                                        ; $5652: $03
    nop                                           ; $5653: $00
    sbc l                                         ; $5654: $9d

jr_0dc_5655:
    rst $38                                       ; $5655: $ff
    nop                                           ; $5656: $00
    add b                                         ; $5657: $80
    nop                                           ; $5658: $00
    xor [hl]                                      ; $5659: $ae
    nop                                           ; $565a: $00
    or e                                          ; $565b: $b3
    ld c, [hl]                                    ; $565c: $4e
    cp $00                                        ; $565d: $fe $00
    ld bc, $fd4d                                  ; $565f: $01 $4d $fd
    nop                                           ; $5662: $00
    pop de                                        ; $5663: $d1
    ld d, l                                       ; $5664: $55
    db $fd                                        ; $5665: $fd
    nop                                           ; $5666: $00
    ld [hl], c                                    ; $5667: $71
    inc l                                         ; $5668: $2c
    db $fd                                        ; $5669: $fd
    ld bc, $0829                                  ; $566a: $01 $29 $08
    db $fd                                        ; $566d: $fd
    nop                                           ; $566e: $00
    ld bc, $fe88                                  ; $566f: $01 $88 $fe
    inc bc                                        ; $5672: $03
    nop                                           ; $5673: $00
    adc a                                         ; $5674: $8f
    rst $38                                       ; $5675: $ff
    nop                                           ; $5676: $00
    ld bc, $a900                                  ; $5677: $01 $00 $a9
    nop                                           ; $567a: $00
    ld c, c                                       ; $567b: $49
    nop                                           ; $567c: $00
    and c                                         ; $567d: $a1
    ld [bc], a                                    ; $567e: $02
    or d                                          ; $567f: $b2
    nop                                           ; $5680: $00
    add h                                         ; $5681: $84
    nop                                           ; $5682: $00
    ld hl, sp+$19                                 ; $5683: $f8 $19
    nop                                           ; $5685: $00
    add a                                         ; $5686: $87
    add l                                         ; $5687: $85
    nop                                           ; $5688: $00
    ret                                           ; $5689: $c9


    nop                                           ; $568a: $00
    ld sp, $fe00                                  ; $568b: $31 $00 $fe
    jr jr_0dc_5690                                ; $568e: $18 $00

jr_0dc_5690:
    rst $38                                       ; $5690: $ff
    dec c                                         ; $5691: $0d
    inc b                                         ; $5692: $04
    ld sp, hl                                     ; $5693: $f9
    rlca                                          ; $5694: $07
    ld a, [c]                                     ; $5695: $f2
    ld bc, $f9e5                                  ; $5696: $01 $e5 $f9
    push hl                                       ; $5699: $e5
    nop                                           ; $569a: $00
    push af                                       ; $569b: $f5
    ld sp, hl                                     ; $569c: $f9
    push af                                       ; $569d: $f5
    nop                                           ; $569e: $00
    reti                                          ; $569f: $d9


    rst $38                                       ; $56a0: $ff
    nop                                           ; $56a1: $00
    ret nz                                        ; $56a2: $c0

    nop                                           ; $56a3: $00
    cp a                                          ; $56a4: $bf
    nop                                           ; $56a5: $00
    xor d                                         ; $56a6: $aa
    nop                                           ; $56a7: $00
    and b                                         ; $56a8: $a0
    nop                                           ; $56a9: $00
    xor d                                         ; $56aa: $aa
    nop                                           ; $56ab: $00
    and b                                         ; $56ac: $a0
    nop                                           ; $56ad: $00
    and d                                         ; $56ae: $a2
    nop                                           ; $56af: $00
    and d                                         ; $56b0: $a2
    nop                                           ; $56b1: $00
    xor b                                         ; $56b2: $a8
    nop                                           ; $56b3: $00
    and d                                         ; $56b4: $a2
    nop                                           ; $56b5: $00
    xor b                                         ; $56b6: $a8
    nop                                           ; $56b7: $00
    xor d                                         ; $56b8: $aa
    nop                                           ; $56b9: $00
    cp a                                          ; $56ba: $bf
    nop                                           ; $56bb: $00
    ret nz                                        ; $56bc: $c0

    nop                                           ; $56bd: $00
    rst $38                                       ; $56be: $ff
    nop                                           ; $56bf: $00
    ld a, a                                       ; $56c0: $7f
    nop                                           ; $56c1: $00
    inc bc                                        ; $56c2: $03
    nop                                           ; $56c3: $00
    ld a, l                                       ; $56c4: $7d
    nop                                           ; $56c5: $00
    ld d, l                                       ; $56c6: $55
    nop                                           ; $56c7: $00
    ld d, l                                       ; $56c8: $55
    nop                                           ; $56c9: $00
    dec d                                         ; $56ca: $15
    nop                                           ; $56cb: $00
    ld b, l                                       ; $56cc: $45
    nop                                           ; $56cd: $00
    ld d, l                                       ; $56ce: $55
    nop                                           ; $56cf: $00
    dec d                                         ; $56d0: $15

jr_0dc_56d1:
    nop                                           ; $56d1: $00
    ld b, l                                       ; $56d2: $45
    nop                                           ; $56d3: $00
    ld d, l                                       ; $56d4: $55
    nop                                           ; $56d5: $00
    dec d                                         ; $56d6: $15
    nop                                           ; $56d7: $00
    ld d, l                                       ; $56d8: $55
    nop                                           ; $56d9: $00
    ld a, l                                       ; $56da: $7d
    nop                                           ; $56db: $00
    inc bc                                        ; $56dc: $03
    nop                                           ; $56dd: $00
    ld a, a                                       ; $56de: $7f
    nop                                           ; $56df: $00
    add b                                         ; $56e0: $80
    nop                                           ; $56e1: $00
    cp a                                          ; $56e2: $bf
    nop                                           ; $56e3: $00
    xor d                                         ; $56e4: $aa
    nop                                           ; $56e5: $00
    and l                                         ; $56e6: $a5
    nop                                           ; $56e7: $00
    xor d                                         ; $56e8: $aa
    nop                                           ; $56e9: $00
    cp a                                          ; $56ea: $bf
    nop                                           ; $56eb: $00
    add b                                         ; $56ec: $80
    nop                                           ; $56ed: $00
    rst $38                                       ; $56ee: $ff
    nop                                           ; $56ef: $00
    stop                                          ; $56f0: $10 $00
    jr nz, jr_0dc_56f4                            ; $56f2: $20 $00

jr_0dc_56f4:
    jr z, jr_0dc_56f6                             ; $56f4: $28 $00

jr_0dc_56f6:
    inc hl                                        ; $56f6: $23
    nop                                           ; $56f7: $00
    rra                                           ; $56f8: $1f
    rlca                                          ; $56f9: $07
    nop                                           ; $56fa: $00
    sbc c                                         ; $56fb: $99
    ld bc, $7d00                                  ; $56fc: $01 $00 $7d
    nop                                           ; $56ff: $00
    ld d, l                                       ; $5700: $55
    nop                                           ; $5701: $00
    ld e, l                                       ; $5702: $5d
    nop                                           ; $5703: $00
    ld [hl], l                                    ; $5704: $75
    nop                                           ; $5705: $00
    ld a, l                                       ; $5706: $7d
    nop                                           ; $5707: $00
    ld bc, $7f00                                  ; $5708: $01 $00 $7f
    nop                                           ; $570b: $00
    jr jr_0dc_570e                                ; $570c: $18 $00

jr_0dc_570e:
    inc c                                         ; $570e: $0c
    nop                                           ; $570f: $00
    inc d                                         ; $5710: $14
    nop                                           ; $5711: $00
    ld h, h                                       ; $5712: $64
    nop                                           ; $5713: $00
    ld a, b                                       ; $5714: $78
    rlca                                          ; $5715: $07
    nop                                           ; $5716: $00
    rst $38                                       ; $5717: $ff
    dec c                                         ; $5718: $0d
    inc b                                         ; $5719: $04
    ld sp, hl                                     ; $571a: $f9
    rlca                                          ; $571b: $07
    ld a, [c]                                     ; $571c: $f2
    ld bc, $f9e5                                  ; $571d: $01 $e5 $f9
    push hl                                       ; $5720: $e5
    ld bc, $f9f5                                  ; $5721: $01 $f5 $f9
    push af                                       ; $5724: $f5
    ld bc, $7fd9                                  ; $5725: $01 $d9 $7f
    nop                                           ; $5728: $00
    ld h, b                                       ; $5729: $60
    nop                                           ; $572a: $00
    ld e, a                                       ; $572b: $5f
    nop                                           ; $572c: $00
    ld d, l                                       ; $572d: $55
    nop                                           ; $572e: $00
    ld d, b                                       ; $572f: $50
    nop                                           ; $5730: $00
    ld d, l                                       ; $5731: $55
    nop                                           ; $5732: $00
    ld d, c                                       ; $5733: $51
    nop                                           ; $5734: $00
    ld d, c                                       ; $5735: $51
    nop                                           ; $5736: $00
    ld d, h                                       ; $5737: $54
    nop                                           ; $5738: $00
    pop de                                        ; $5739: $d1
    nop                                           ; $573a: $00
    call nc, $d500                                ; $573b: $d4 $00 $d5
    nop                                           ; $573e: $00
    rst $18                                       ; $573f: $df
    nop                                           ; $5740: $00
    ldh [rP1], a                                  ; $5741: $e0 $00
    rst $38                                       ; $5743: $ff
    nop                                           ; $5744: $00
    ret nz                                        ; $5745: $c0

    nop                                           ; $5746: $00
    add b                                         ; $5747: $80
    nop                                           ; $5748: $00
    ld a, a                                       ; $5749: $7f
    nop                                           ; $574a: $00
    add e                                         ; $574b: $83
    nop                                           ; $574c: $00
    ld a, l                                       ; $574d: $7d
    nop                                           ; $574e: $00
    ld d, l                                       ; $574f: $55
    nop                                           ; $5750: $00
    ld d, l                                       ; $5751: $55
    nop                                           ; $5752: $00
    dec d                                         ; $5753: $15
    nop                                           ; $5754: $00
    ld d, l                                       ; $5755: $55
    nop                                           ; $5756: $00
    dec d                                         ; $5757: $15
    nop                                           ; $5758: $00
    ld b, l                                       ; $5759: $45
    nop                                           ; $575a: $00
    ld d, l                                       ; $575b: $55
    nop                                           ; $575c: $00
    dec d                                         ; $575d: $15
    nop                                           ; $575e: $00
    push de                                       ; $575f: $d5
    nop                                           ; $5760: $00
    ld a, l                                       ; $5761: $7d
    nop                                           ; $5762: $00
    add e                                         ; $5763: $83
    nop                                           ; $5764: $00
    ld a, a                                       ; $5765: $7f
    nop                                           ; $5766: $00
    rst $18                                       ; $5767: $df
    nop                                           ; $5768: $00
    jp nc, $d500                                  ; $5769: $d2 $00 $d5

    nop                                           ; $576c: $00
    and d                                         ; $576d: $a2
    nop                                           ; $576e: $00
    cp a                                          ; $576f: $bf
    nop                                           ; $5770: $00
    add b                                         ; $5771: $80
    nop                                           ; $5772: $00
    rst $38                                       ; $5773: $ff
    nop                                           ; $5774: $00
    ld h, b                                       ; $5775: $60
    nop                                           ; $5776: $00
    jr nz, jr_0dc_5779                            ; $5777: $20 $00

jr_0dc_5779:
    stop                                          ; $5779: $10 $00
    stop                                          ; $577b: $10 $00
    jr jr_0dc_577f                                ; $577d: $18 $00

jr_0dc_577f:
    rlca                                          ; $577f: $07
    rlca                                          ; $5780: $07
    nop                                           ; $5781: $00
    sbc c                                         ; $5782: $99
    ld bc, $fd00                                  ; $5783: $01 $00 $fd
    nop                                           ; $5786: $00
    dec [hl]                                      ; $5787: $35
    nop                                           ; $5788: $00
    db $dd                                        ; $5789: $dd
    nop                                           ; $578a: $00
    ld [$3a00], a                                 ; $578b: $ea $00 $3a
    nop                                           ; $578e: $00
    add d                                         ; $578f: $82
    nop                                           ; $5790: $00
    ld a, [hl]                                    ; $5791: $7e
    nop                                           ; $5792: $00
    jr nc, jr_0dc_5795                            ; $5793: $30 $00

jr_0dc_5795:
    jr jr_0dc_5797                                ; $5795: $18 $00

jr_0dc_5797:
    jr z, jr_0dc_5799                             ; $5797: $28 $00

jr_0dc_5799:
    ret z                                         ; $5799: $c8

    nop                                           ; $579a: $00
    ldh a, [rTAC]                                 ; $579b: $f0 $07
    nop                                           ; $579d: $00
    rst $38                                       ; $579e: $ff
    dec c                                         ; $579f: $0d
    inc b                                         ; $57a0: $04
    ld sp, hl                                     ; $57a1: $f9
    rlca                                          ; $57a2: $07
    ld a, [c]                                     ; $57a3: $f2
    ld bc, $f9e5                                  ; $57a4: $01 $e5 $f9
    and $01                                       ; $57a7: $e6 $01
    push af                                       ; $57a9: $f5
    ld sp, hl                                     ; $57aa: $f9
    push af                                       ; $57ab: $f5
    ld bc, $7cd9                                  ; $57ac: $01 $d9 $7c
    nop                                           ; $57af: $00
    ld h, e                                       ; $57b0: $63
    nop                                           ; $57b1: $00
    ld e, h                                       ; $57b2: $5c
    nop                                           ; $57b3: $00
    ld d, a                                       ; $57b4: $57
    nop                                           ; $57b5: $00
    ld d, c                                       ; $57b6: $51
    nop                                           ; $57b7: $00
    ld d, h                                       ; $57b8: $54
    nop                                           ; $57b9: $00
    ld d, c                                       ; $57ba: $51
    nop                                           ; $57bb: $00
    pop de                                        ; $57bc: $d1
    nop                                           ; $57bd: $00
    push de                                       ; $57be: $d5
    nop                                           ; $57bf: $00
    ret nc                                        ; $57c0: $d0

    nop                                           ; $57c1: $00
    push de                                       ; $57c2: $d5
    nop                                           ; $57c3: $00
    call nc, $dd00                                ; $57c4: $d4 $00 $dd
    nop                                           ; $57c7: $00
    db $e3                                        ; $57c8: $e3
    nop                                           ; $57c9: $00
    db $fc                                        ; $57ca: $fc
    nop                                           ; $57cb: $00
    jp $e000                                      ; $57cc: $c3 $00 $e0


    nop                                           ; $57cf: $00
    rra                                           ; $57d0: $1f
    nop                                           ; $57d1: $00
    db $e3                                        ; $57d2: $e3
    nop                                           ; $57d3: $00
    ld e, l                                       ; $57d4: $5d
    nop                                           ; $57d5: $00
    ld d, l                                       ; $57d6: $55
    nop                                           ; $57d7: $00
    dec d                                         ; $57d8: $15
    nop                                           ; $57d9: $00
    ld d, l                                       ; $57da: $55
    nop                                           ; $57db: $00
    dec d                                         ; $57dc: $15
    nop                                           ; $57dd: $00
    ld d, l                                       ; $57de: $55
    nop                                           ; $57df: $00
    ld b, l                                       ; $57e0: $45
    nop                                           ; $57e1: $00
    dec d                                         ; $57e2: $15
    nop                                           ; $57e3: $00
    ld d, l                                       ; $57e4: $55
    nop                                           ; $57e5: $00
    push af                                       ; $57e6: $f5
    nop                                           ; $57e7: $00
    dec e                                         ; $57e8: $1d
    nop                                           ; $57e9: $00
    db $e3                                        ; $57ea: $e3
    nop                                           ; $57eb: $00
    rra                                           ; $57ec: $1f
    nop                                           ; $57ed: $00
    ret c                                         ; $57ee: $d8

    nop                                           ; $57ef: $00
    rst $10                                       ; $57f0: $d7
    nop                                           ; $57f1: $00
    and d                                         ; $57f2: $a2
    nop                                           ; $57f3: $00
    and l                                         ; $57f4: $a5
    nop                                           ; $57f5: $00
    cp h                                          ; $57f6: $bc
    nop                                           ; $57f7: $00
    add e                                         ; $57f8: $83
    nop                                           ; $57f9: $00
    ld hl, sp+$00                                 ; $57fa: $f8 $00
    ld h, a                                       ; $57fc: $67
    nop                                           ; $57fd: $00
    stop                                          ; $57fe: $10 $00
    stop                                          ; $5800: $10 $00
    stop                                          ; $5802: $10 $00
    inc c                                         ; $5804: $0c
    nop                                           ; $5805: $00
    inc bc                                        ; $5806: $03
    add hl, bc                                    ; $5807: $09
    nop                                           ; $5808: $00
    sub a                                         ; $5809: $97
    pop bc                                        ; $580a: $c1
    nop                                           ; $580b: $00
    cp l                                          ; $580c: $bd
    nop                                           ; $580d: $00
    ld l, l                                       ; $580e: $6d
    nop                                           ; $580f: $00
    or l                                          ; $5810: $b5
    nop                                           ; $5811: $00
    ld a, [$1a00]                                 ; $5812: $fa $00 $1a
    nop                                           ; $5815: $00
    jp nz, $3e00                                  ; $5816: $c2 $00 $3e

    nop                                           ; $5819: $00
    stop                                          ; $581a: $10 $00
    ld e, b                                       ; $581c: $58
    nop                                           ; $581d: $00
    jr jr_0dc_5820                                ; $581e: $18 $00

jr_0dc_5820:
    ldh [rTAC], a                                 ; $5820: $e0 $07
    nop                                           ; $5822: $00
    rst $38                                       ; $5823: $ff
    dec c                                         ; $5824: $0d
    inc b                                         ; $5825: $04
    ld sp, hl                                     ; $5826: $f9
    rlca                                          ; $5827: $07
    ld a, [c]                                     ; $5828: $f2
    ld bc, $f9e7                                  ; $5829: $01 $e7 $f9
    rst $20                                       ; $582c: $e7
    nop                                           ; $582d: $00
    rst $30                                       ; $582e: $f7
    ld sp, hl                                     ; $582f: $f9
    rst $30                                       ; $5830: $f7
    nop                                           ; $5831: $00
    push de                                       ; $5832: $d5
    rst $38                                       ; $5833: $ff
    nop                                           ; $5834: $00
    ret nz                                        ; $5835: $c0

    nop                                           ; $5836: $00
    cp a                                          ; $5837: $bf
    nop                                           ; $5838: $00
    xor d                                         ; $5839: $aa
    nop                                           ; $583a: $00
    and b                                         ; $583b: $a0
    nop                                           ; $583c: $00
    xor d                                         ; $583d: $aa
    nop                                           ; $583e: $00
    and b                                         ; $583f: $a0
    nop                                           ; $5840: $00
    and d                                         ; $5841: $a2
    nop                                           ; $5842: $00
    and d                                         ; $5843: $a2
    nop                                           ; $5844: $00
    xor b                                         ; $5845: $a8
    nop                                           ; $5846: $00
    and d                                         ; $5847: $a2
    nop                                           ; $5848: $00
    xor b                                         ; $5849: $a8
    nop                                           ; $584a: $00
    xor d                                         ; $584b: $aa
    nop                                           ; $584c: $00
    cp a                                          ; $584d: $bf
    nop                                           ; $584e: $00
    ret nz                                        ; $584f: $c0

    nop                                           ; $5850: $00
    rst $38                                       ; $5851: $ff
    nop                                           ; $5852: $00
    ld a, a                                       ; $5853: $7f
    nop                                           ; $5854: $00
    inc bc                                        ; $5855: $03
    nop                                           ; $5856: $00
    ld a, l                                       ; $5857: $7d
    nop                                           ; $5858: $00
    ld d, l                                       ; $5859: $55
    nop                                           ; $585a: $00
    ld d, l                                       ; $585b: $55
    nop                                           ; $585c: $00
    dec d                                         ; $585d: $15
    nop                                           ; $585e: $00
    ld b, l                                       ; $585f: $45
    nop                                           ; $5860: $00
    ld d, l                                       ; $5861: $55
    nop                                           ; $5862: $00
    dec d                                         ; $5863: $15
    nop                                           ; $5864: $00
    ld b, l                                       ; $5865: $45
    nop                                           ; $5866: $00
    ld d, l                                       ; $5867: $55
    nop                                           ; $5868: $00
    dec d                                         ; $5869: $15
    nop                                           ; $586a: $00
    ld d, l                                       ; $586b: $55
    nop                                           ; $586c: $00
    ld a, l                                       ; $586d: $7d
    nop                                           ; $586e: $00
    inc bc                                        ; $586f: $03
    nop                                           ; $5870: $00
    ld a, a                                       ; $5871: $7f
    nop                                           ; $5872: $00
    add b                                         ; $5873: $80
    nop                                           ; $5874: $00
    cp a                                          ; $5875: $bf
    nop                                           ; $5876: $00
    xor d                                         ; $5877: $aa
    nop                                           ; $5878: $00
    and l                                         ; $5879: $a5
    nop                                           ; $587a: $00
    xor d                                         ; $587b: $aa
    nop                                           ; $587c: $00
    cp a                                          ; $587d: $bf
    nop                                           ; $587e: $00
    add b                                         ; $587f: $80
    nop                                           ; $5880: $00
    rst $38                                       ; $5881: $ff
    nop                                           ; $5882: $00
    stop                                          ; $5883: $10 $00
    jr jr_0dc_5887                                ; $5885: $18 $00

jr_0dc_5887:
    rlca                                          ; $5887: $07
    dec bc                                        ; $5888: $0b
    nop                                           ; $5889: $00
    sub l                                         ; $588a: $95
    ld bc, $7d00                                  ; $588b: $01 $00 $7d
    nop                                           ; $588e: $00
    ld d, l                                       ; $588f: $55
    nop                                           ; $5890: $00
    ld e, l                                       ; $5891: $5d
    nop                                           ; $5892: $00
    ld [hl], l                                    ; $5893: $75
    nop                                           ; $5894: $00
    ld a, l                                       ; $5895: $7d
    nop                                           ; $5896: $00
    ld bc, $7f00                                  ; $5897: $01 $00 $7f
    nop                                           ; $589a: $00
    ld [$0800], sp                                ; $589b: $08 $00 $08
    nop                                           ; $589e: $00
    ld [hl], b                                    ; $589f: $70
    dec bc                                        ; $58a0: $0b
    nop                                           ; $58a1: $00
    rst $38                                       ; $58a2: $ff
    dec c                                         ; $58a3: $0d
    inc b                                         ; $58a4: $04
    ld sp, hl                                     ; $58a5: $f9
    rlca                                          ; $58a6: $07
    ld a, [c]                                     ; $58a7: $f2
    ld bc, $f9e6                                  ; $58a8: $01 $e6 $f9
    and $00                                       ; $58ab: $e6 $00
    or $f9                                        ; $58ad: $f6 $f9
    or $00                                        ; $58af: $f6 $00
    rst $10                                       ; $58b1: $d7
    rst $38                                       ; $58b2: $ff
    nop                                           ; $58b3: $00
    ret nz                                        ; $58b4: $c0

    nop                                           ; $58b5: $00
    cp a                                          ; $58b6: $bf
    nop                                           ; $58b7: $00
    xor d                                         ; $58b8: $aa
    nop                                           ; $58b9: $00
    and b                                         ; $58ba: $a0
    nop                                           ; $58bb: $00
    xor d                                         ; $58bc: $aa
    nop                                           ; $58bd: $00
    and d                                         ; $58be: $a2
    nop                                           ; $58bf: $00
    and d                                         ; $58c0: $a2
    nop                                           ; $58c1: $00
    xor b                                         ; $58c2: $a8
    nop                                           ; $58c3: $00
    and d                                         ; $58c4: $a2
    nop                                           ; $58c5: $00
    xor b                                         ; $58c6: $a8
    nop                                           ; $58c7: $00
    xor d                                         ; $58c8: $aa
    nop                                           ; $58c9: $00
    cp a                                          ; $58ca: $bf
    nop                                           ; $58cb: $00
    ret nz                                        ; $58cc: $c0

    nop                                           ; $58cd: $00
    rst $38                                       ; $58ce: $ff
    nop                                           ; $58cf: $00
    add b                                         ; $58d0: $80
    nop                                           ; $58d1: $00
    ld a, a                                       ; $58d2: $7f
    nop                                           ; $58d3: $00
    inc bc                                        ; $58d4: $03
    nop                                           ; $58d5: $00
    ld a, l                                       ; $58d6: $7d
    nop                                           ; $58d7: $00
    ld d, l                                       ; $58d8: $55
    nop                                           ; $58d9: $00
    ld d, l                                       ; $58da: $55
    nop                                           ; $58db: $00
    dec d                                         ; $58dc: $15
    nop                                           ; $58dd: $00
    ld d, l                                       ; $58de: $55
    nop                                           ; $58df: $00
    dec d                                         ; $58e0: $15
    nop                                           ; $58e1: $00
    ld b, l                                       ; $58e2: $45
    nop                                           ; $58e3: $00
    ld d, l                                       ; $58e4: $55
    nop                                           ; $58e5: $00
    dec d                                         ; $58e6: $15
    nop                                           ; $58e7: $00
    ld d, l                                       ; $58e8: $55
    nop                                           ; $58e9: $00
    ld a, l                                       ; $58ea: $7d
    nop                                           ; $58eb: $00
    inc bc                                        ; $58ec: $03
    nop                                           ; $58ed: $00
    ld a, a                                       ; $58ee: $7f
    nop                                           ; $58ef: $00
    ld bc, $bf00                                  ; $58f0: $01 $00 $bf
    nop                                           ; $58f3: $00
    and l                                         ; $58f4: $a5
    nop                                           ; $58f5: $00
    xor d                                         ; $58f6: $aa
    nop                                           ; $58f7: $00
    and l                                         ; $58f8: $a5
    nop                                           ; $58f9: $00
    cp a                                          ; $58fa: $bf
    nop                                           ; $58fb: $00
    add b                                         ; $58fc: $80
    nop                                           ; $58fd: $00
    rst $38                                       ; $58fe: $ff
    nop                                           ; $58ff: $00
    stop                                          ; $5900: $10 $00
    ld [hl+], a                                   ; $5902: $22
    nop                                           ; $5903: $00
    jr nz, jr_0dc_5906                            ; $5904: $20 $00

jr_0dc_5906:
    jr jr_0dc_5908                                ; $5906: $18 $00

jr_0dc_5908:
    rlca                                          ; $5908: $07
    add hl, bc                                    ; $5909: $09
    nop                                           ; $590a: $00
    sub a                                         ; $590b: $97
    ld a, l                                       ; $590c: $7d
    nop                                           ; $590d: $00
    ld e, l                                       ; $590e: $5d
    nop                                           ; $590f: $00
    ld [hl], l                                    ; $5910: $75
    nop                                           ; $5911: $00
    ld e, l                                       ; $5912: $5d
    nop                                           ; $5913: $00
    ld a, l                                       ; $5914: $7d
    nop                                           ; $5915: $00
    ld bc, $7f00                                  ; $5916: $01 $00 $7f
    nop                                           ; $5919: $00
    jr jr_0dc_591c                                ; $591a: $18 $00

jr_0dc_591c:
    jr jr_0dc_591e                                ; $591c: $18 $00

jr_0dc_591e:
    ld [$0800], sp                                ; $591e: $08 $00 $08
    nop                                           ; $5921: $00
    ld [hl], b                                    ; $5922: $70
    add hl, bc                                    ; $5923: $09
    nop                                           ; $5924: $00
    rst $38                                       ; $5925: $ff
    dec c                                         ; $5926: $0d
    inc b                                         ; $5927: $04
    ld sp, hl                                     ; $5928: $f9
    rlca                                          ; $5929: $07
    ld a, [c]                                     ; $592a: $f2
    ld bc, $f8e5                                  ; $592b: $01 $e5 $f8
    push hl                                       ; $592e: $e5
    nop                                           ; $592f: $00
    push af                                       ; $5930: $f5
    ld hl, sp-$0b                                 ; $5931: $f8 $f5
    nop                                           ; $5933: $00
    reti                                          ; $5934: $d9


    ld bc, $fe00                                  ; $5935: $01 $00 $fe
    nop                                           ; $5938: $00
    pop bc                                        ; $5939: $c1
    nop                                           ; $593a: $00
    cp [hl]                                       ; $593b: $be
    nop                                           ; $593c: $00
    xor d                                         ; $593d: $aa
    nop                                           ; $593e: $00
    and b                                         ; $593f: $a0
    nop                                           ; $5940: $00
    xor d                                         ; $5941: $aa
    nop                                           ; $5942: $00
    and d                                         ; $5943: $a2
    nop                                           ; $5944: $00
    and d                                         ; $5945: $a2
    nop                                           ; $5946: $00
    xor b                                         ; $5947: $a8
    nop                                           ; $5948: $00
    and d                                         ; $5949: $a2
    nop                                           ; $594a: $00
    xor b                                         ; $594b: $a8
    nop                                           ; $594c: $00
    xor e                                         ; $594d: $ab
    nop                                           ; $594e: $00
    cp [hl]                                       ; $594f: $be
    nop                                           ; $5950: $00
    pop bc                                        ; $5951: $c1
    nop                                           ; $5952: $00
    cp $00                                        ; $5953: $fe $00
    cp $00                                        ; $5955: $fe $00
    ld b, $00                                     ; $5957: $06 $00
    ld a, [$aa00]                                 ; $5959: $fa $00 $aa
    nop                                           ; $595c: $00
    xor d                                         ; $595d: $aa
    nop                                           ; $595e: $00
    ld a, [hl+]                                   ; $595f: $2a
    nop                                           ; $5960: $00
    xor d                                         ; $5961: $aa
    nop                                           ; $5962: $00
    ld a, [hl+]                                   ; $5963: $2a
    nop                                           ; $5964: $00
    adc d                                         ; $5965: $8a
    nop                                           ; $5966: $00
    xor e                                         ; $5967: $ab
    nop                                           ; $5968: $00
    dec hl                                        ; $5969: $2b
    nop                                           ; $596a: $00
    xor e                                         ; $596b: $ab
    nop                                           ; $596c: $00
    ei                                            ; $596d: $fb
    nop                                           ; $596e: $00
    rlca                                          ; $596f: $07
    nop                                           ; $5970: $00
    rst $38                                       ; $5971: $ff
    nop                                           ; $5972: $00
    inc bc                                        ; $5973: $03
    nop                                           ; $5974: $00
    add b                                         ; $5975: $80
    nop                                           ; $5976: $00
    cp a                                          ; $5977: $bf
    nop                                           ; $5978: $00
    and l                                         ; $5979: $a5
    nop                                           ; $597a: $00
    xor d                                         ; $597b: $aa
    nop                                           ; $597c: $00
    ld d, a                                       ; $597d: $57
    nop                                           ; $597e: $00
    ld e, h                                       ; $597f: $5c
    nop                                           ; $5980: $00
    ld b, c                                       ; $5981: $41
    nop                                           ; $5982: $00
    ld a, [hl]                                    ; $5983: $7e
    nop                                           ; $5984: $00
    add hl, bc                                    ; $5985: $09
    nop                                           ; $5986: $00
    ld de, $1000                                  ; $5987: $11 $00 $10
    nop                                           ; $598a: $00
    inc de                                        ; $598b: $13
    nop                                           ; $598c: $00
    rrca                                          ; $598d: $0f
    rlca                                          ; $598e: $07
    nop                                           ; $598f: $00
    sbc c                                         ; $5990: $99
    ei                                            ; $5991: $fb
    nop                                           ; $5992: $00
    ei                                            ; $5993: $fb
    nop                                           ; $5994: $00
    xor e                                         ; $5995: $ab
    nop                                           ; $5996: $00
    push de                                       ; $5997: $d5
    nop                                           ; $5998: $00
    db $fd                                        ; $5999: $fd
    nop                                           ; $599a: $00
    ld bc, $ff00                                  ; $599b: $01 $00 $ff
    nop                                           ; $599e: $00
    ld b, $00                                     ; $599f: $06 $00
    inc d                                         ; $59a1: $14
    nop                                           ; $59a2: $00
    ld [$0800], sp                                ; $59a3: $08 $00 $08
    nop                                           ; $59a6: $00
    jr jr_0dc_59a9                                ; $59a7: $18 $00

jr_0dc_59a9:
    ldh [rTAC], a                                 ; $59a9: $e0 $07
    nop                                           ; $59ab: $00
    rst $38                                       ; $59ac: $ff
    dec c                                         ; $59ad: $0d
    inc b                                         ; $59ae: $04
    ld sp, hl                                     ; $59af: $f9
    rlca                                          ; $59b0: $07
    ld a, [c]                                     ; $59b1: $f2
    ld bc, $f8e6                                  ; $59b2: $01 $e6 $f8
    push hl                                       ; $59b5: $e5
    nop                                           ; $59b6: $00
    push af                                       ; $59b7: $f5
    ld hl, sp-$0b                                 ; $59b8: $f8 $f5
    nop                                           ; $59ba: $00
    cp a                                          ; $59bb: $bf
    rlca                                          ; $59bc: $07
    nop                                           ; $59bd: $00
    ld hl, sp+$00                                 ; $59be: $f8 $00
    rst $00                                       ; $59c0: $c7
    nop                                           ; $59c1: $00
    cp d                                          ; $59c2: $ba
    nop                                           ; $59c3: $00
    xor b                                         ; $59c4: $a8
    nop                                           ; $59c5: $00
    and d                                         ; $59c6: $a2
    nop                                           ; $59c7: $00
    xor d                                         ; $59c8: $aa
    nop                                           ; $59c9: $00
    and d                                         ; $59ca: $a2
    nop                                           ; $59cb: $00
    and b                                         ; $59cc: $a0
    nop                                           ; $59cd: $00
    xor d                                         ; $59ce: $aa
    nop                                           ; $59cf: $00
    and b                                         ; $59d0: $a0
    nop                                           ; $59d1: $00
    xor d                                         ; $59d2: $aa
    nop                                           ; $59d3: $00
    xor a                                         ; $59d4: $af
    nop                                           ; $59d5: $00
    cp b                                          ; $59d6: $b8
    nop                                           ; $59d7: $00
    rst $00                                       ; $59d8: $c7
    nop                                           ; $59d9: $00
    ld hl, sp+$00                                 ; $59da: $f8 $00
    ld a, $00                                     ; $59dc: $3e $00
    add $00                                       ; $59de: $c6 $00
    ld a, [hl-]                                   ; $59e0: $3a
    nop                                           ; $59e1: $00
    ld [$aa00], a                                 ; $59e2: $ea $00 $aa
    nop                                           ; $59e5: $00
    xor d                                         ; $59e6: $aa
    nop                                           ; $59e7: $00
    ld a, [hl+]                                   ; $59e8: $2a
    nop                                           ; $59e9: $00
    xor e                                         ; $59ea: $ab
    nop                                           ; $59eb: $00
    dec bc                                        ; $59ec: $0b
    nop                                           ; $59ed: $00
    xor e                                         ; $59ee: $ab
    nop                                           ; $59ef: $00
    xor e                                         ; $59f0: $ab
    nop                                           ; $59f1: $00
    dec hl                                        ; $59f2: $2b
    nop                                           ; $59f3: $00
    cp e                                          ; $59f4: $bb
    nop                                           ; $59f5: $00
    rst $00                                       ; $59f6: $c7
    nop                                           ; $59f7: $00
    ccf                                           ; $59f8: $3f
    nop                                           ; $59f9: $00
    jp $0003                                      ; $59fa: $c3 $03 $00


    sub a                                         ; $59fd: $97
    add e                                         ; $59fe: $83
    nop                                           ; $59ff: $00
    cp a                                          ; $5a00: $bf
    nop                                           ; $5a01: $00
    xor c                                         ; $5a02: $a9
    nop                                           ; $5a03: $00
    and h                                         ; $5a04: $a4
    nop                                           ; $5a05: $00
    ld d, a                                       ; $5a06: $57
    nop                                           ; $5a07: $00
    ld e, b                                       ; $5a08: $58
    nop                                           ; $5a09: $00
    ld b, e                                       ; $5a0a: $43
    nop                                           ; $5a0b: $00
    ld a, h                                       ; $5a0c: $7c
    nop                                           ; $5a0d: $00
    add hl, bc                                    ; $5a0e: $09
    nop                                           ; $5a0f: $00
    stop                                          ; $5a10: $10 $00
    jr jr_0dc_5a14                                ; $5a12: $18 $00

jr_0dc_5a14:
    rlca                                          ; $5a14: $07
    rlca                                          ; $5a15: $07
    nop                                           ; $5a16: $00
    sbc c                                         ; $5a17: $99
    dec de                                        ; $5a18: $1b
    nop                                           ; $5a19: $00
    ei                                            ; $5a1a: $fb
    nop                                           ; $5a1b: $00
    or l                                          ; $5a1c: $b5
    nop                                           ; $5a1d: $00
    ld l, l                                       ; $5a1e: $6d
    nop                                           ; $5a1f: $00
    cp l                                          ; $5a20: $bd
    nop                                           ; $5a21: $00
    pop bc                                        ; $5a22: $c1
    nop                                           ; $5a23: $00
    rra                                           ; $5a24: $1f
    nop                                           ; $5a25: $00
    and $00                                       ; $5a26: $e6 $00
    ld [$1800], sp                                ; $5a28: $08 $00 $18
    nop                                           ; $5a2b: $00
    adc b                                         ; $5a2c: $88
    nop                                           ; $5a2d: $00
    jr nc, jr_0dc_5a30                            ; $5a2e: $30 $00

jr_0dc_5a30:
    ret nz                                        ; $5a30: $c0

    rlca                                          ; $5a31: $07
    nop                                           ; $5a32: $00
    rst $38                                       ; $5a33: $ff
    dec c                                         ; $5a34: $0d
    inc b                                         ; $5a35: $04
    ld sp, hl                                     ; $5a36: $f9
    rlca                                          ; $5a37: $07
    ld a, [c]                                     ; $5a38: $f2
    ld bc, $f9e7                                  ; $5a39: $01 $e7 $f9
    rst $20                                       ; $5a3c: $e7
    nop                                           ; $5a3d: $00
    rst $30                                       ; $5a3e: $f7
    ld sp, hl                                     ; $5a3f: $f9
    rst $30                                       ; $5a40: $f7
    nop                                           ; $5a41: $00
    push de                                       ; $5a42: $d5
    rst $38                                       ; $5a43: $ff
    nop                                           ; $5a44: $00
    ret nz                                        ; $5a45: $c0

    nop                                           ; $5a46: $00
    cp a                                          ; $5a47: $bf
    nop                                           ; $5a48: $00
    xor d                                         ; $5a49: $aa
    nop                                           ; $5a4a: $00
    and b                                         ; $5a4b: $a0
    nop                                           ; $5a4c: $00
    xor d                                         ; $5a4d: $aa
    nop                                           ; $5a4e: $00
    and b                                         ; $5a4f: $a0
    nop                                           ; $5a50: $00
    and d                                         ; $5a51: $a2
    nop                                           ; $5a52: $00
    and d                                         ; $5a53: $a2
    nop                                           ; $5a54: $00
    xor b                                         ; $5a55: $a8
    nop                                           ; $5a56: $00
    and d                                         ; $5a57: $a2
    nop                                           ; $5a58: $00
    xor b                                         ; $5a59: $a8
    nop                                           ; $5a5a: $00
    xor d                                         ; $5a5b: $aa
    nop                                           ; $5a5c: $00
    cp a                                          ; $5a5d: $bf
    nop                                           ; $5a5e: $00
    ret nz                                        ; $5a5f: $c0

    nop                                           ; $5a60: $00
    rst $38                                       ; $5a61: $ff
    nop                                           ; $5a62: $00
    ld a, a                                       ; $5a63: $7f
    nop                                           ; $5a64: $00
    inc bc                                        ; $5a65: $03
    nop                                           ; $5a66: $00
    ld a, l                                       ; $5a67: $7d
    nop                                           ; $5a68: $00
    ld d, l                                       ; $5a69: $55
    nop                                           ; $5a6a: $00
    ld d, l                                       ; $5a6b: $55
    nop                                           ; $5a6c: $00
    dec d                                         ; $5a6d: $15
    nop                                           ; $5a6e: $00
    ld b, l                                       ; $5a6f: $45
    nop                                           ; $5a70: $00
    ld d, l                                       ; $5a71: $55
    nop                                           ; $5a72: $00
    dec d                                         ; $5a73: $15
    nop                                           ; $5a74: $00
    ld b, l                                       ; $5a75: $45
    nop                                           ; $5a76: $00
    ld d, l                                       ; $5a77: $55
    nop                                           ; $5a78: $00
    dec d                                         ; $5a79: $15
    nop                                           ; $5a7a: $00
    ld d, l                                       ; $5a7b: $55
    nop                                           ; $5a7c: $00
    ld a, l                                       ; $5a7d: $7d
    nop                                           ; $5a7e: $00
    inc bc                                        ; $5a7f: $03
    nop                                           ; $5a80: $00
    ld a, a                                       ; $5a81: $7f
    nop                                           ; $5a82: $00
    add b                                         ; $5a83: $80
    nop                                           ; $5a84: $00
    cp a                                          ; $5a85: $bf
    nop                                           ; $5a86: $00
    xor d                                         ; $5a87: $aa
    nop                                           ; $5a88: $00
    and l                                         ; $5a89: $a5
    nop                                           ; $5a8a: $00
    xor d                                         ; $5a8b: $aa
    nop                                           ; $5a8c: $00
    cp a                                          ; $5a8d: $bf
    nop                                           ; $5a8e: $00
    add b                                         ; $5a8f: $80
    nop                                           ; $5a90: $00
    rst $38                                       ; $5a91: $ff
    nop                                           ; $5a92: $00
    stop                                          ; $5a93: $10 $00
    stop                                          ; $5a95: $10 $00
    rrca                                          ; $5a97: $0f
    dec bc                                        ; $5a98: $0b
    nop                                           ; $5a99: $00
    sub l                                         ; $5a9a: $95
    ld bc, $7d00                                  ; $5a9b: $01 $00 $7d
    nop                                           ; $5a9e: $00
    ld d, l                                       ; $5a9f: $55
    nop                                           ; $5aa0: $00
    ld e, l                                       ; $5aa1: $5d
    nop                                           ; $5aa2: $00
    ld [hl], l                                    ; $5aa3: $75
    nop                                           ; $5aa4: $00
    ld a, l                                       ; $5aa5: $7d
    nop                                           ; $5aa6: $00
    ld bc, $7f00                                  ; $5aa7: $01 $00 $7f
    nop                                           ; $5aaa: $00
    ld [$1800], sp                                ; $5aab: $08 $00 $18
    nop                                           ; $5aae: $00
    ld h, b                                       ; $5aaf: $60
    dec bc                                        ; $5ab0: $0b
    nop                                           ; $5ab1: $00
    rst $38                                       ; $5ab2: $ff
    dec c                                         ; $5ab3: $0d
    inc b                                         ; $5ab4: $04
    ld sp, hl                                     ; $5ab5: $f9
    rlca                                          ; $5ab6: $07
    ld a, [c]                                     ; $5ab7: $f2
    ld bc, $f9e6                                  ; $5ab8: $01 $e6 $f9
    and $00                                       ; $5abb: $e6 $00
    or $f9                                        ; $5abd: $f6 $f9
    or $00                                        ; $5abf: $f6 $00
    rst $10                                       ; $5ac1: $d7
    rst $38                                       ; $5ac2: $ff
    nop                                           ; $5ac3: $00
    ret nz                                        ; $5ac4: $c0

    nop                                           ; $5ac5: $00
    cp a                                          ; $5ac6: $bf
    nop                                           ; $5ac7: $00
    xor d                                         ; $5ac8: $aa
    nop                                           ; $5ac9: $00
    and b                                         ; $5aca: $a0
    nop                                           ; $5acb: $00
    xor d                                         ; $5acc: $aa
    nop                                           ; $5acd: $00
    and d                                         ; $5ace: $a2
    nop                                           ; $5acf: $00
    and d                                         ; $5ad0: $a2
    nop                                           ; $5ad1: $00
    xor b                                         ; $5ad2: $a8
    nop                                           ; $5ad3: $00
    and d                                         ; $5ad4: $a2
    nop                                           ; $5ad5: $00
    xor b                                         ; $5ad6: $a8
    nop                                           ; $5ad7: $00
    xor d                                         ; $5ad8: $aa
    nop                                           ; $5ad9: $00
    cp a                                          ; $5ada: $bf
    nop                                           ; $5adb: $00
    ret nz                                        ; $5adc: $c0

    nop                                           ; $5add: $00
    rst $38                                       ; $5ade: $ff
    nop                                           ; $5adf: $00
    add b                                         ; $5ae0: $80
    nop                                           ; $5ae1: $00
    ld a, a                                       ; $5ae2: $7f
    nop                                           ; $5ae3: $00
    inc bc                                        ; $5ae4: $03
    nop                                           ; $5ae5: $00
    ld a, l                                       ; $5ae6: $7d
    nop                                           ; $5ae7: $00
    ld d, l                                       ; $5ae8: $55
    nop                                           ; $5ae9: $00
    ld d, l                                       ; $5aea: $55
    nop                                           ; $5aeb: $00
    dec d                                         ; $5aec: $15
    nop                                           ; $5aed: $00
    ld d, l                                       ; $5aee: $55
    nop                                           ; $5aef: $00
    dec d                                         ; $5af0: $15
    nop                                           ; $5af1: $00
    ld b, l                                       ; $5af2: $45
    nop                                           ; $5af3: $00
    ld d, l                                       ; $5af4: $55
    nop                                           ; $5af5: $00
    dec d                                         ; $5af6: $15
    nop                                           ; $5af7: $00
    ld d, l                                       ; $5af8: $55
    nop                                           ; $5af9: $00
    ld a, l                                       ; $5afa: $7d
    nop                                           ; $5afb: $00
    inc bc                                        ; $5afc: $03
    nop                                           ; $5afd: $00
    ld a, a                                       ; $5afe: $7f
    nop                                           ; $5aff: $00
    ld bc, $bf00                                  ; $5b00: $01 $00 $bf
    nop                                           ; $5b03: $00
    and l                                         ; $5b04: $a5
    nop                                           ; $5b05: $00
    xor d                                         ; $5b06: $aa
    nop                                           ; $5b07: $00
    and l                                         ; $5b08: $a5
    nop                                           ; $5b09: $00
    cp a                                          ; $5b0a: $bf
    nop                                           ; $5b0b: $00
    add b                                         ; $5b0c: $80
    nop                                           ; $5b0d: $00
    rst $38                                       ; $5b0e: $ff
    nop                                           ; $5b0f: $00
    stop                                          ; $5b10: $10 $00
    stop                                          ; $5b12: $10 $00
    stop                                          ; $5b14: $10 $00
    stop                                          ; $5b16: $10 $00
    rrca                                          ; $5b18: $0f
    add hl, bc                                    ; $5b19: $09
    nop                                           ; $5b1a: $00
    sub a                                         ; $5b1b: $97
    ld a, l                                       ; $5b1c: $7d
    nop                                           ; $5b1d: $00
    ld e, l                                       ; $5b1e: $5d
    nop                                           ; $5b1f: $00
    ld [hl], l                                    ; $5b20: $75
    nop                                           ; $5b21: $00
    ld e, l                                       ; $5b22: $5d
    nop                                           ; $5b23: $00
    ld a, l                                       ; $5b24: $7d
    nop                                           ; $5b25: $00
    ld bc, $7f00                                  ; $5b26: $01 $00 $7f
    nop                                           ; $5b29: $00
    ld [$0c00], sp                                ; $5b2a: $08 $00 $0c
    nop                                           ; $5b2d: $00
    inc b                                         ; $5b2e: $04
    nop                                           ; $5b2f: $00
    jr jr_0dc_5b32                                ; $5b30: $18 $00

jr_0dc_5b32:
    ld h, b                                       ; $5b32: $60
    add hl, bc                                    ; $5b33: $09
    nop                                           ; $5b34: $00
    rst $38                                       ; $5b35: $ff
    dec c                                         ; $5b36: $0d
    inc b                                         ; $5b37: $04
    ld sp, hl                                     ; $5b38: $f9
    rlca                                          ; $5b39: $07
    ld a, [c]                                     ; $5b3a: $f2
    ld bc, $f9e5                                  ; $5b3b: $01 $e5 $f9
    push hl                                       ; $5b3e: $e5
    nop                                           ; $5b3f: $00
    push af                                       ; $5b40: $f5
    ld sp, hl                                     ; $5b41: $f9
    push af                                       ; $5b42: $f5
    nop                                           ; $5b43: $00
    reti                                          ; $5b44: $d9


    rst $38                                       ; $5b45: $ff
    nop                                           ; $5b46: $00
    ret nz                                        ; $5b47: $c0

    nop                                           ; $5b48: $00
    cp a                                          ; $5b49: $bf
    nop                                           ; $5b4a: $00
    xor d                                         ; $5b4b: $aa
    nop                                           ; $5b4c: $00
    xor d                                         ; $5b4d: $aa
    nop                                           ; $5b4e: $00
    and b                                         ; $5b4f: $a0
    nop                                           ; $5b50: $00
    xor b                                         ; $5b51: $a8
    nop                                           ; $5b52: $00
    and b                                         ; $5b53: $a0
    nop                                           ; $5b54: $00
    and d                                         ; $5b55: $a2
    nop                                           ; $5b56: $00
    xor b                                         ; $5b57: $a8
    nop                                           ; $5b58: $00
    xor d                                         ; $5b59: $aa
    nop                                           ; $5b5a: $00
    and d                                         ; $5b5b: $a2
    nop                                           ; $5b5c: $00
    xor d                                         ; $5b5d: $aa
    nop                                           ; $5b5e: $00
    cp a                                          ; $5b5f: $bf
    nop                                           ; $5b60: $00
    ret nz                                        ; $5b61: $c0

    nop                                           ; $5b62: $00
    rst $38                                       ; $5b63: $ff
    nop                                           ; $5b64: $00
    ld a, a                                       ; $5b65: $7f
    nop                                           ; $5b66: $00
    inc bc                                        ; $5b67: $03
    nop                                           ; $5b68: $00
    ld a, l                                       ; $5b69: $7d
    nop                                           ; $5b6a: $00
    ld d, l                                       ; $5b6b: $55
    nop                                           ; $5b6c: $00
    dec b                                         ; $5b6d: $05
    nop                                           ; $5b6e: $00
    ld d, l                                       ; $5b6f: $55
    nop                                           ; $5b70: $00
    dec d                                         ; $5b71: $15
    nop                                           ; $5b72: $00
    ld b, l                                       ; $5b73: $45
    nop                                           ; $5b74: $00
    ld b, l                                       ; $5b75: $45
    nop                                           ; $5b76: $00
    dec d                                         ; $5b77: $15
    nop                                           ; $5b78: $00
    ld d, l                                       ; $5b79: $55
    nop                                           ; $5b7a: $00
    ld d, l                                       ; $5b7b: $55
    nop                                           ; $5b7c: $00
    dec d                                         ; $5b7d: $15
    nop                                           ; $5b7e: $00
    ld a, l                                       ; $5b7f: $7d
    nop                                           ; $5b80: $00
    inc bc                                        ; $5b81: $03
    nop                                           ; $5b82: $00
    ld a, a                                       ; $5b83: $7f
    nop                                           ; $5b84: $00
    add b                                         ; $5b85: $80
    nop                                           ; $5b86: $00
    cp a                                          ; $5b87: $bf
    nop                                           ; $5b88: $00
    xor d                                         ; $5b89: $aa
    nop                                           ; $5b8a: $00
    and c                                         ; $5b8b: $a1
    nop                                           ; $5b8c: $00
    xor c                                         ; $5b8d: $a9
    nop                                           ; $5b8e: $00
    cp a                                          ; $5b8f: $bf
    nop                                           ; $5b90: $00
    ldh [rP1], a                                  ; $5b91: $e0 $00
    rst $38                                       ; $5b93: $ff
    nop                                           ; $5b94: $00
    ld h, d                                       ; $5b95: $62
    nop                                           ; $5b96: $00
    inc h                                         ; $5b97: $24
    nop                                           ; $5b98: $00
    ld hl, $1e00                                  ; $5b99: $21 $00 $1e
    nop                                           ; $5b9c: $00
    inc c                                         ; $5b9d: $0c
    rlca                                          ; $5b9e: $07
    nop                                           ; $5b9f: $00
    sbc c                                         ; $5ba0: $99
    ld bc, $7d00                                  ; $5ba1: $01 $00 $7d
    nop                                           ; $5ba4: $00
    dec l                                         ; $5ba5: $2d
    nop                                           ; $5ba6: $00
    dec d                                         ; $5ba7: $15
    nop                                           ; $5ba8: $00
    dec l                                         ; $5ba9: $2d
    nop                                           ; $5baa: $00
    ld a, l                                       ; $5bab: $7d
    nop                                           ; $5bac: $00
    rlca                                          ; $5bad: $07
    nop                                           ; $5bae: $00
    ld a, a                                       ; $5baf: $7f
    nop                                           ; $5bb0: $00
    ld b, [hl]                                    ; $5bb1: $46
    nop                                           ; $5bb2: $00
    inc l                                         ; $5bb3: $2c
    nop                                           ; $5bb4: $00
    inc b                                         ; $5bb5: $04
    nop                                           ; $5bb6: $00
    ld a, b                                       ; $5bb7: $78
    nop                                           ; $5bb8: $00
    jr nc, jr_0dc_5bc2                            ; $5bb9: $30 $07

    nop                                           ; $5bbb: $00
    rst $38                                       ; $5bbc: $ff
    dec c                                         ; $5bbd: $0d
    inc b                                         ; $5bbe: $04
    ld sp, hl                                     ; $5bbf: $f9
    rlca                                          ; $5bc0: $07
    ld a, [c]                                     ; $5bc1: $f2

jr_0dc_5bc2:
    ld bc, $f8e4                                  ; $5bc2: $01 $e4 $f8
    db $e4                                        ; $5bc5: $e4
    nop                                           ; $5bc6: $00
    db $f4                                        ; $5bc7: $f4
    ld hl, sp-$0c                                 ; $5bc8: $f8 $f4
    nop                                           ; $5bca: $00
    reti                                          ; $5bcb: $d9


    ld bc, $fe00                                  ; $5bcc: $01 $00 $fe
    nop                                           ; $5bcf: $00
    pop bc                                        ; $5bd0: $c1
    nop                                           ; $5bd1: $00
    cp [hl]                                       ; $5bd2: $be
    nop                                           ; $5bd3: $00
    xor d                                         ; $5bd4: $aa
    nop                                           ; $5bd5: $00
    xor d                                         ; $5bd6: $aa
    nop                                           ; $5bd7: $00
    and b                                         ; $5bd8: $a0
    nop                                           ; $5bd9: $00
    xor b                                         ; $5bda: $a8
    nop                                           ; $5bdb: $00
    and b                                         ; $5bdc: $a0
    nop                                           ; $5bdd: $00
    xor b                                         ; $5bde: $a8
    nop                                           ; $5bdf: $00
    xor d                                         ; $5be0: $aa
    nop                                           ; $5be1: $00
    and d                                         ; $5be2: $a2
    nop                                           ; $5be3: $00
    xor e                                         ; $5be4: $ab
    nop                                           ; $5be5: $00
    cp [hl]                                       ; $5be6: $be
    nop                                           ; $5be7: $00
    pop bc                                        ; $5be8: $c1
    nop                                           ; $5be9: $00
    cp $00                                        ; $5bea: $fe $00
    cp $00                                        ; $5bec: $fe $00
    ld b, $00                                     ; $5bee: $06 $00
    ld a, [$aa00]                                 ; $5bf0: $fa $00 $aa
    nop                                           ; $5bf3: $00
    ld a, [bc]                                    ; $5bf4: $0a
    nop                                           ; $5bf5: $00
    xor d                                         ; $5bf6: $aa
    nop                                           ; $5bf7: $00
    ld a, [hl+]                                   ; $5bf8: $2a
    nop                                           ; $5bf9: $00
    adc d                                         ; $5bfa: $8a
    nop                                           ; $5bfb: $00
    ld a, [hl+]                                   ; $5bfc: $2a
    nop                                           ; $5bfd: $00
    xor e                                         ; $5bfe: $ab
    nop                                           ; $5bff: $00
    xor e                                         ; $5c00: $ab
    nop                                           ; $5c01: $00
    dec hl                                        ; $5c02: $2b
    nop                                           ; $5c03: $00
    ei                                            ; $5c04: $fb
    nop                                           ; $5c05: $00
    rlca                                          ; $5c06: $07
    nop                                           ; $5c07: $00
    rst $38                                       ; $5c08: $ff
    nop                                           ; $5c09: $00
    inc bc                                        ; $5c0a: $03
    nop                                           ; $5c0b: $00
    add b                                         ; $5c0c: $80
    nop                                           ; $5c0d: $00
    cp a                                          ; $5c0e: $bf
    nop                                           ; $5c0f: $00
    xor d                                         ; $5c10: $aa
    nop                                           ; $5c11: $00
    and l                                         ; $5c12: $a5
    nop                                           ; $5c13: $00
    ld e, e                                       ; $5c14: $5b
    nop                                           ; $5c15: $00
    ld e, h                                       ; $5c16: $5c
    nop                                           ; $5c17: $00
    ld [hl], c                                    ; $5c18: $71
    nop                                           ; $5c19: $00
    ld a, [hl]                                    ; $5c1a: $7e
    nop                                           ; $5c1b: $00
    add hl, sp                                    ; $5c1c: $39
    nop                                           ; $5c1d: $00
    inc b                                         ; $5c1e: $04
    nop                                           ; $5c1f: $00
    ld [$0e00], sp                                ; $5c20: $08 $00 $0e
    nop                                           ; $5c23: $00
    rlca                                          ; $5c24: $07
    rlca                                          ; $5c25: $07
    nop                                           ; $5c26: $00
    sbc e                                         ; $5c27: $9b
    ei                                            ; $5c28: $fb
    nop                                           ; $5c29: $00
    ld e, e                                       ; $5c2a: $5b
    nop                                           ; $5c2b: $00
    dec hl                                        ; $5c2c: $2b
    nop                                           ; $5c2d: $00
    ld d, l                                       ; $5c2e: $55
    nop                                           ; $5c2f: $00
    db $fd                                        ; $5c30: $fd
    nop                                           ; $5c31: $00
    rlca                                          ; $5c32: $07
    nop                                           ; $5c33: $00
    rst $38                                       ; $5c34: $ff
    nop                                           ; $5c35: $00
    ld b, [hl]                                    ; $5c36: $46
    nop                                           ; $5c37: $00
    jr z, jr_0dc_5c3a                             ; $5c38: $28 $00

jr_0dc_5c3a:
    inc d                                         ; $5c3a: $14
    nop                                           ; $5c3b: $00
    inc b                                         ; $5c3c: $04
    nop                                           ; $5c3d: $00
    call c, Call_000_2400                         ; $5c3e: $dc $00 $24
    nop                                           ; $5c41: $00
    jr c, jr_0dc_5c49                             ; $5c42: $38 $05

    nop                                           ; $5c44: $00
    rst $38                                       ; $5c45: $ff
    dec c                                         ; $5c46: $0d
    inc b                                         ; $5c47: $04
    ld sp, hl                                     ; $5c48: $f9

jr_0dc_5c49:
    rlca                                          ; $5c49: $07
    ld a, [c]                                     ; $5c4a: $f2
    ld bc, $f8e5                                  ; $5c4b: $01 $e5 $f8
    db $e4                                        ; $5c4e: $e4
    nop                                           ; $5c4f: $00
    db $f4                                        ; $5c50: $f4
    ld hl, sp-$0c                                 ; $5c51: $f8 $f4
    nop                                           ; $5c53: $00
    cp a                                          ; $5c54: $bf
    rlca                                          ; $5c55: $07
    nop                                           ; $5c56: $00
    ld hl, sp+$00                                 ; $5c57: $f8 $00
    rst $00                                       ; $5c59: $c7
    nop                                           ; $5c5a: $00
    cp d                                          ; $5c5b: $ba
    nop                                           ; $5c5c: $00
    xor d                                         ; $5c5d: $aa
    nop                                           ; $5c5e: $00
    xor b                                         ; $5c5f: $a8
    nop                                           ; $5c60: $00
    and b                                         ; $5c61: $a0
    nop                                           ; $5c62: $00
    xor b                                         ; $5c63: $a8
    nop                                           ; $5c64: $00
    and d                                         ; $5c65: $a2
    nop                                           ; $5c66: $00
    and b                                         ; $5c67: $a0
    nop                                           ; $5c68: $00
    xor d                                         ; $5c69: $aa
    nop                                           ; $5c6a: $00
    and d                                         ; $5c6b: $a2
    nop                                           ; $5c6c: $00
    xor a                                         ; $5c6d: $af
    nop                                           ; $5c6e: $00
    cp b                                          ; $5c6f: $b8
    nop                                           ; $5c70: $00
    rst $00                                       ; $5c71: $c7
    nop                                           ; $5c72: $00
    ld hl, sp+$00                                 ; $5c73: $f8 $00
    ld a, $00                                     ; $5c75: $3e $00
    add $00                                       ; $5c77: $c6 $00
    ld a, [hl-]                                   ; $5c79: $3a
    nop                                           ; $5c7a: $00
    ld [$8a00], a                                 ; $5c7b: $ea $00 $8a
    nop                                           ; $5c7e: $00
    ld a, [hl+]                                   ; $5c7f: $2a
    nop                                           ; $5c80: $00
    xor d                                         ; $5c81: $aa
    nop                                           ; $5c82: $00
    dec bc                                        ; $5c83: $0b
    nop                                           ; $5c84: $00
    adc e                                         ; $5c85: $8b
    nop                                           ; $5c86: $00
    xor e                                         ; $5c87: $ab
    nop                                           ; $5c88: $00
    dec hl                                        ; $5c89: $2b
    nop                                           ; $5c8a: $00
    xor e                                         ; $5c8b: $ab
    nop                                           ; $5c8c: $00
    dec sp                                        ; $5c8d: $3b
    nop                                           ; $5c8e: $00
    rst $00                                       ; $5c8f: $c7
    nop                                           ; $5c90: $00
    ccf                                           ; $5c91: $3f
    nop                                           ; $5c92: $00
    jp $0003                                      ; $5c93: $c3 $03 $00


    sub a                                         ; $5c96: $97
    add e                                         ; $5c97: $83
    nop                                           ; $5c98: $00
    cp l                                          ; $5c99: $bd
    nop                                           ; $5c9a: $00
    xor d                                         ; $5c9b: $aa
    nop                                           ; $5c9c: $00
    cp c                                          ; $5c9d: $b9
    nop                                           ; $5c9e: $00
    ld d, a                                       ; $5c9f: $57
    nop                                           ; $5ca0: $00
    ld e, b                                       ; $5ca1: $58
    nop                                           ; $5ca2: $00
    ld [hl], e                                    ; $5ca3: $73
    nop                                           ; $5ca4: $00
    ld a, h                                       ; $5ca5: $7c
    nop                                           ; $5ca6: $00
    ld sp, $0900                                  ; $5ca7: $31 $00 $09
    nop                                           ; $5caa: $00
    inc b                                         ; $5cab: $04
    nop                                           ; $5cac: $00
    rlca                                          ; $5cad: $07
    rlca                                          ; $5cae: $07
    nop                                           ; $5caf: $00
    sbc e                                         ; $5cb0: $9b
    dec de                                        ; $5cb1: $1b
    nop                                           ; $5cb2: $00
    db $eb                                        ; $5cb3: $eb
    nop                                           ; $5cb4: $00
    ld d, l                                       ; $5cb5: $55
    nop                                           ; $5cb6: $00
    dec l                                         ; $5cb7: $2d
    nop                                           ; $5cb8: $00
    dec a                                         ; $5cb9: $3d
    nop                                           ; $5cba: $00
    rst $00                                       ; $5cbb: $c7
    nop                                           ; $5cbc: $00
    rra                                           ; $5cbd: $1f
    nop                                           ; $5cbe: $00
    and $00                                       ; $5cbf: $e6 $00
    ld c, b                                       ; $5cc1: $48
    nop                                           ; $5cc2: $00
    jr z, jr_0dc_5cc5                             ; $5cc3: $28 $00

jr_0dc_5cc5:
    jr z, jr_0dc_5cc7                             ; $5cc5: $28 $00

jr_0dc_5cc7:
    inc b                                         ; $5cc7: $04
    nop                                           ; $5cc8: $00
    or h                                          ; $5cc9: $b4
    nop                                           ; $5cca: $00
    ld a, b                                       ; $5ccb: $78
    dec b                                         ; $5ccc: $05
    nop                                           ; $5ccd: $00
    rst $38                                       ; $5cce: $ff
    dec c                                         ; $5ccf: $0d
    inc b                                         ; $5cd0: $04
    ld sp, hl                                     ; $5cd1: $f9
    rlca                                          ; $5cd2: $07
    ld a, [c]                                     ; $5cd3: $f2
    ld bc, $f9e6                                  ; $5cd4: $01 $e6 $f9
    and $00                                       ; $5cd7: $e6 $00
    or $f9                                        ; $5cd9: $f6 $f9
    or $00                                        ; $5cdb: $f6 $00
    push de                                       ; $5cdd: $d5
    rst $38                                       ; $5cde: $ff
    nop                                           ; $5cdf: $00
    ret nz                                        ; $5ce0: $c0

    nop                                           ; $5ce1: $00
    cp a                                          ; $5ce2: $bf
    nop                                           ; $5ce3: $00
    xor d                                         ; $5ce4: $aa
    nop                                           ; $5ce5: $00
    xor d                                         ; $5ce6: $aa
    nop                                           ; $5ce7: $00
    and b                                         ; $5ce8: $a0
    nop                                           ; $5ce9: $00
    xor b                                         ; $5cea: $a8
    nop                                           ; $5ceb: $00
    and b                                         ; $5cec: $a0
    nop                                           ; $5ced: $00
    and d                                         ; $5cee: $a2
    nop                                           ; $5cef: $00
    xor b                                         ; $5cf0: $a8
    nop                                           ; $5cf1: $00
    xor d                                         ; $5cf2: $aa
    nop                                           ; $5cf3: $00
    and d                                         ; $5cf4: $a2
    nop                                           ; $5cf5: $00
    xor d                                         ; $5cf6: $aa
    nop                                           ; $5cf7: $00
    cp a                                          ; $5cf8: $bf
    nop                                           ; $5cf9: $00
    ret nz                                        ; $5cfa: $c0

    nop                                           ; $5cfb: $00
    rst $38                                       ; $5cfc: $ff
    nop                                           ; $5cfd: $00
    ld a, a                                       ; $5cfe: $7f
    nop                                           ; $5cff: $00
    inc bc                                        ; $5d00: $03
    nop                                           ; $5d01: $00
    ld a, l                                       ; $5d02: $7d
    nop                                           ; $5d03: $00
    ld d, l                                       ; $5d04: $55
    nop                                           ; $5d05: $00
    dec b                                         ; $5d06: $05
    nop                                           ; $5d07: $00
    ld d, l                                       ; $5d08: $55
    nop                                           ; $5d09: $00
    dec d                                         ; $5d0a: $15
    nop                                           ; $5d0b: $00
    ld b, l                                       ; $5d0c: $45
    nop                                           ; $5d0d: $00
    ld b, l                                       ; $5d0e: $45
    nop                                           ; $5d0f: $00
    dec d                                         ; $5d10: $15
    nop                                           ; $5d11: $00
    ld d, l                                       ; $5d12: $55
    nop                                           ; $5d13: $00
    ld d, l                                       ; $5d14: $55
    nop                                           ; $5d15: $00
    dec d                                         ; $5d16: $15
    nop                                           ; $5d17: $00
    ld a, l                                       ; $5d18: $7d
    nop                                           ; $5d19: $00
    inc bc                                        ; $5d1a: $03
    nop                                           ; $5d1b: $00
    ld a, a                                       ; $5d1c: $7f
    nop                                           ; $5d1d: $00
    add b                                         ; $5d1e: $80
    nop                                           ; $5d1f: $00
    cp a                                          ; $5d20: $bf
    nop                                           ; $5d21: $00
    xor d                                         ; $5d22: $aa
    nop                                           ; $5d23: $00
    and c                                         ; $5d24: $a1
    nop                                           ; $5d25: $00
    xor c                                         ; $5d26: $a9
    nop                                           ; $5d27: $00
    cp a                                          ; $5d28: $bf
    nop                                           ; $5d29: $00
    ldh [rP1], a                                  ; $5d2a: $e0 $00
    rst $38                                       ; $5d2c: $ff
    nop                                           ; $5d2d: $00
    ld h, b                                       ; $5d2e: $60
    nop                                           ; $5d2f: $00
    dec d                                         ; $5d30: $15
    nop                                           ; $5d31: $00
    ld c, $0b                                     ; $5d32: $0e $0b
    nop                                           ; $5d34: $00
    sub a                                         ; $5d35: $97
    ld bc, $7d00                                  ; $5d36: $01 $00 $7d
    nop                                           ; $5d39: $00
    dec l                                         ; $5d3a: $2d
    nop                                           ; $5d3b: $00
    dec d                                         ; $5d3c: $15
    nop                                           ; $5d3d: $00
    dec l                                         ; $5d3e: $2d
    nop                                           ; $5d3f: $00
    ld a, l                                       ; $5d40: $7d
    nop                                           ; $5d41: $00
    rlca                                          ; $5d42: $07
    nop                                           ; $5d43: $00
    ld a, a                                       ; $5d44: $7f
    nop                                           ; $5d45: $00
    ld h, $00                                     ; $5d46: $26 $00
    inc b                                         ; $5d48: $04
    nop                                           ; $5d49: $00
    ld a, b                                       ; $5d4a: $78
    nop                                           ; $5d4b: $00
    ld [hl], b                                    ; $5d4c: $70
    add hl, bc                                    ; $5d4d: $09
    nop                                           ; $5d4e: $00
    rst $38                                       ; $5d4f: $ff
    dec c                                         ; $5d50: $0d
    inc b                                         ; $5d51: $04
    ld sp, hl                                     ; $5d52: $f9
    rlca                                          ; $5d53: $07
    ld a, [c]                                     ; $5d54: $f2
    ld bc, $f9e5                                  ; $5d55: $01 $e5 $f9
    push hl                                       ; $5d58: $e5
    nop                                           ; $5d59: $00
    push af                                       ; $5d5a: $f5
    ld sp, hl                                     ; $5d5b: $f9
    push af                                       ; $5d5c: $f5
    nop                                           ; $5d5d: $00
    rst $10                                       ; $5d5e: $d7
    rst $38                                       ; $5d5f: $ff
    nop                                           ; $5d60: $00
    ret nz                                        ; $5d61: $c0

    nop                                           ; $5d62: $00
    cp a                                          ; $5d63: $bf
    nop                                           ; $5d64: $00
    xor d                                         ; $5d65: $aa
    nop                                           ; $5d66: $00
    xor d                                         ; $5d67: $aa
    nop                                           ; $5d68: $00
    and b                                         ; $5d69: $a0
    nop                                           ; $5d6a: $00
    and b                                         ; $5d6b: $a0
    nop                                           ; $5d6c: $00
    and d                                         ; $5d6d: $a2
    nop                                           ; $5d6e: $00
    xor b                                         ; $5d6f: $a8
    nop                                           ; $5d70: $00
    xor d                                         ; $5d71: $aa
    nop                                           ; $5d72: $00
    and d                                         ; $5d73: $a2
    nop                                           ; $5d74: $00
    xor d                                         ; $5d75: $aa
    nop                                           ; $5d76: $00
    cp a                                          ; $5d77: $bf
    nop                                           ; $5d78: $00
    ret nz                                        ; $5d79: $c0

    nop                                           ; $5d7a: $00
    rst $38                                       ; $5d7b: $ff
    nop                                           ; $5d7c: $00
    add b                                         ; $5d7d: $80
    nop                                           ; $5d7e: $00
    ld a, a                                       ; $5d7f: $7f
    nop                                           ; $5d80: $00
    inc bc                                        ; $5d81: $03
    nop                                           ; $5d82: $00
    ld a, l                                       ; $5d83: $7d
    nop                                           ; $5d84: $00
    ld d, l                                       ; $5d85: $55
    nop                                           ; $5d86: $00
    dec b                                         ; $5d87: $05
    nop                                           ; $5d88: $00
    ld d, l                                       ; $5d89: $55
    nop                                           ; $5d8a: $00
    ld b, l                                       ; $5d8b: $45
    nop                                           ; $5d8c: $00
    ld b, l                                       ; $5d8d: $45
    nop                                           ; $5d8e: $00
    dec d                                         ; $5d8f: $15
    nop                                           ; $5d90: $00
    ld d, l                                       ; $5d91: $55
    nop                                           ; $5d92: $00
    ld d, l                                       ; $5d93: $55
    nop                                           ; $5d94: $00
    dec d                                         ; $5d95: $15
    nop                                           ; $5d96: $00
    ld a, l                                       ; $5d97: $7d
    nop                                           ; $5d98: $00
    inc bc                                        ; $5d99: $03
    nop                                           ; $5d9a: $00
    ld a, a                                       ; $5d9b: $7f
    nop                                           ; $5d9c: $00
    ld bc, $bf00                                  ; $5d9d: $01 $00 $bf
    nop                                           ; $5da0: $00
    xor d                                         ; $5da1: $aa
    nop                                           ; $5da2: $00
    and d                                         ; $5da3: $a2
    nop                                           ; $5da4: $00
    and d                                         ; $5da5: $a2
    nop                                           ; $5da6: $00
    cp a                                          ; $5da7: $bf
    nop                                           ; $5da8: $00
    ldh [rP1], a                                  ; $5da9: $e0 $00
    rst $38                                       ; $5dab: $ff
    nop                                           ; $5dac: $00
    ld l, h                                       ; $5dad: $6c
    nop                                           ; $5dae: $00
    stop                                          ; $5daf: $10 $00
    jr nz, jr_0dc_5db3                            ; $5db1: $20 $00

jr_0dc_5db3:
    dec sp                                        ; $5db3: $3b
    nop                                           ; $5db4: $00
    inc e                                         ; $5db5: $1c
    add hl, bc                                    ; $5db6: $09
    nop                                           ; $5db7: $00
    sbc c                                         ; $5db8: $99
    ld a, l                                       ; $5db9: $7d
    nop                                           ; $5dba: $00
    dec d                                         ; $5dbb: $15
    nop                                           ; $5dbc: $00
    dec l                                         ; $5dbd: $2d
    nop                                           ; $5dbe: $00
    ld d, l                                       ; $5dbf: $55
    nop                                           ; $5dc0: $00
    ld a, l                                       ; $5dc1: $7d
    nop                                           ; $5dc2: $00
    rlca                                          ; $5dc3: $07
    nop                                           ; $5dc4: $00
    ld a, a                                       ; $5dc5: $7f
    nop                                           ; $5dc6: $00
    ld b, [hl]                                    ; $5dc7: $46
    nop                                           ; $5dc8: $00
    ld c, b                                       ; $5dc9: $48
    nop                                           ; $5dca: $00
    inc h                                         ; $5dcb: $24
    nop                                           ; $5dcc: $00
    inc b                                         ; $5dcd: $04
    nop                                           ; $5dce: $00
    ld a, b                                       ; $5dcf: $78
    nop                                           ; $5dd0: $00
    jr nc, jr_0dc_5dda                            ; $5dd1: $30 $07

    nop                                           ; $5dd3: $00
    rst $38                                       ; $5dd4: $ff
    dec c                                         ; $5dd5: $0d
    inc b                                         ; $5dd6: $04
    ld sp, hl                                     ; $5dd7: $f9
    rlca                                          ; $5dd8: $07
    ld a, [c]                                     ; $5dd9: $f2

jr_0dc_5dda:
    ld bc, $f9e4                                  ; $5dda: $01 $e4 $f9
    db $e4                                        ; $5ddd: $e4
    ld bc, $f9f4                                  ; $5dde: $01 $f4 $f9
    db $f4                                        ; $5de1: $f4
    ld bc, $7fdb                                  ; $5de2: $01 $db $7f
    nop                                           ; $5de5: $00
    ld h, b                                       ; $5de6: $60
    nop                                           ; $5de7: $00
    ld e, a                                       ; $5de8: $5f
    nop                                           ; $5de9: $00
    ld d, l                                       ; $5dea: $55
    nop                                           ; $5deb: $00
    ld d, l                                       ; $5dec: $55
    nop                                           ; $5ded: $00
    ld d, b                                       ; $5dee: $50
    nop                                           ; $5def: $00
    ld d, l                                       ; $5df0: $55
    nop                                           ; $5df1: $00
    ld d, c                                       ; $5df2: $51
    nop                                           ; $5df3: $00
    ld d, h                                       ; $5df4: $54
    nop                                           ; $5df5: $00
    push de                                       ; $5df6: $d5
    nop                                           ; $5df7: $00
    pop de                                        ; $5df8: $d1
    nop                                           ; $5df9: $00
    push de                                       ; $5dfa: $d5
    nop                                           ; $5dfb: $00
    rst $18                                       ; $5dfc: $df
    nop                                           ; $5dfd: $00
    ldh [rP1], a                                  ; $5dfe: $e0 $00
    rst $38                                       ; $5e00: $ff
    nop                                           ; $5e01: $00
    ret nz                                        ; $5e02: $c0

    nop                                           ; $5e03: $00
    add b                                         ; $5e04: $80
    nop                                           ; $5e05: $00
    ld a, a                                       ; $5e06: $7f
    nop                                           ; $5e07: $00
    add e                                         ; $5e08: $83
    nop                                           ; $5e09: $00
    ld a, l                                       ; $5e0a: $7d
    nop                                           ; $5e0b: $00
    ld d, l                                       ; $5e0c: $55
    nop                                           ; $5e0d: $00
    dec b                                         ; $5e0e: $05
    nop                                           ; $5e0f: $00
    ld d, l                                       ; $5e10: $55
    nop                                           ; $5e11: $00
    dec d                                         ; $5e12: $15
    nop                                           ; $5e13: $00
    ld b, l                                       ; $5e14: $45
    nop                                           ; $5e15: $00
    dec d                                         ; $5e16: $15
    nop                                           ; $5e17: $00
    ld d, l                                       ; $5e18: $55
    nop                                           ; $5e19: $00
    ld d, l                                       ; $5e1a: $55
    nop                                           ; $5e1b: $00
    sub l                                         ; $5e1c: $95
    nop                                           ; $5e1d: $00
    ld a, l                                       ; $5e1e: $7d
    nop                                           ; $5e1f: $00
    add e                                         ; $5e20: $83
    nop                                           ; $5e21: $00
    ld a, a                                       ; $5e22: $7f
    nop                                           ; $5e23: $00
    rst $18                                       ; $5e24: $df
    nop                                           ; $5e25: $00
    jp c, $d200                                   ; $5e26: $da $00 $d2

    nop                                           ; $5e29: $00
    xor b                                         ; $5e2a: $a8
    nop                                           ; $5e2b: $00
    cp a                                          ; $5e2c: $bf
    nop                                           ; $5e2d: $00
    ldh [rP1], a                                  ; $5e2e: $e0 $00
    rst $38                                       ; $5e30: $ff
    nop                                           ; $5e31: $00
    ld h, d                                       ; $5e32: $62
    nop                                           ; $5e33: $00
    inc d                                         ; $5e34: $14
    nop                                           ; $5e35: $00
    jr z, jr_0dc_5e38                             ; $5e36: $28 $00

jr_0dc_5e38:
    jr nz, jr_0dc_5e3a                            ; $5e38: $20 $00

jr_0dc_5e3a:
    dec sp                                        ; $5e3a: $3b
    nop                                           ; $5e3b: $00
    inc h                                         ; $5e3c: $24
    nop                                           ; $5e3d: $00
    inc e                                         ; $5e3e: $1c
    dec b                                         ; $5e3f: $05
    nop                                           ; $5e40: $00
    sbc c                                         ; $5e41: $99
    ld bc, $fd00                                  ; $5e42: $01 $00 $fd
    nop                                           ; $5e45: $00
    dec l                                         ; $5e46: $2d
    nop                                           ; $5e47: $00
    sub l                                         ; $5e48: $95
    nop                                           ; $5e49: $00
    ld [$3a00], a                                 ; $5e4a: $ea $00 $3a
    nop                                           ; $5e4d: $00
    adc [hl]                                      ; $5e4e: $8e
    nop                                           ; $5e4f: $00
    ld a, [hl]                                    ; $5e50: $7e
    nop                                           ; $5e51: $00
    sbc h                                         ; $5e52: $9c
    nop                                           ; $5e53: $00
    jr nz, jr_0dc_5e56                            ; $5e54: $20 $00

jr_0dc_5e56:
    stop                                          ; $5e56: $10 $00
    ld [hl], b                                    ; $5e58: $70
    nop                                           ; $5e59: $00
    ldh [rTAC], a                                 ; $5e5a: $e0 $07
    nop                                           ; $5e5c: $00
    rst $38                                       ; $5e5d: $ff
    dec c                                         ; $5e5e: $0d
    inc b                                         ; $5e5f: $04
    ld sp, hl                                     ; $5e60: $f9
    rlca                                          ; $5e61: $07
    ld a, [c]                                     ; $5e62: $f2
    ld bc, $f9e4                                  ; $5e63: $01 $e4 $f9
    push hl                                       ; $5e66: $e5
    ld bc, $f9f4                                  ; $5e67: $01 $f4 $f9
    db $f4                                        ; $5e6a: $f4
    ld bc, $7cdb                                  ; $5e6b: $01 $db $7c
    nop                                           ; $5e6e: $00
    ld h, e                                       ; $5e6f: $63
    nop                                           ; $5e70: $00
    ld e, h                                       ; $5e71: $5c
    nop                                           ; $5e72: $00
    ld d, a                                       ; $5e73: $57
    nop                                           ; $5e74: $00
    ld d, l                                       ; $5e75: $55
    nop                                           ; $5e76: $00
    ld d, c                                       ; $5e77: $51
    nop                                           ; $5e78: $00
    ld d, h                                       ; $5e79: $54
    nop                                           ; $5e7a: $00
    pop de                                        ; $5e7b: $d1
    nop                                           ; $5e7c: $00
    push de                                       ; $5e7d: $d5
    nop                                           ; $5e7e: $00
    call nc, $d100                                ; $5e7f: $d4 $00 $d1
    nop                                           ; $5e82: $00
    push de                                       ; $5e83: $d5
    nop                                           ; $5e84: $00
    db $dd                                        ; $5e85: $dd
    nop                                           ; $5e86: $00
    db $e3                                        ; $5e87: $e3
    nop                                           ; $5e88: $00
    db $fc                                        ; $5e89: $fc
    nop                                           ; $5e8a: $00
    jp $e000                                      ; $5e8b: $c3 $00 $e0


    nop                                           ; $5e8e: $00
    rra                                           ; $5e8f: $1f
    nop                                           ; $5e90: $00
    db $e3                                        ; $5e91: $e3
    nop                                           ; $5e92: $00
    ld e, l                                       ; $5e93: $5d
    nop                                           ; $5e94: $00
    dec d                                         ; $5e95: $15
    nop                                           ; $5e96: $00
    ld b, l                                       ; $5e97: $45
    nop                                           ; $5e98: $00
    dec d                                         ; $5e99: $15
    nop                                           ; $5e9a: $00
    ld b, l                                       ; $5e9b: $45
    nop                                           ; $5e9c: $00
    dec b                                         ; $5e9d: $05
    nop                                           ; $5e9e: $00
    ld d, l                                       ; $5e9f: $55
    nop                                           ; $5ea0: $00
    ld d, l                                       ; $5ea1: $55
    nop                                           ; $5ea2: $00
    dec d                                         ; $5ea3: $15
    nop                                           ; $5ea4: $00
    push af                                       ; $5ea5: $f5
    nop                                           ; $5ea6: $00
    dec e                                         ; $5ea7: $1d
    nop                                           ; $5ea8: $00
    db $e3                                        ; $5ea9: $e3
    nop                                           ; $5eaa: $00
    rra                                           ; $5eab: $1f
    nop                                           ; $5eac: $00
    ret c                                         ; $5ead: $d8

    nop                                           ; $5eae: $00
    rst $10                                       ; $5eaf: $d7
    nop                                           ; $5eb0: $00
    xor d                                         ; $5eb1: $aa
    nop                                           ; $5eb2: $00
    xor c                                         ; $5eb3: $a9
    nop                                           ; $5eb4: $00
    cp l                                          ; $5eb5: $bd
    nop                                           ; $5eb6: $00
    db $e3                                        ; $5eb7: $e3
    nop                                           ; $5eb8: $00
    ld hl, sp+$00                                 ; $5eb9: $f8 $00
    ld [hl], a                                    ; $5ebb: $77
    nop                                           ; $5ebc: $00
    ld a, [bc]                                    ; $5ebd: $0a
    nop                                           ; $5ebe: $00
    inc d                                         ; $5ebf: $14
    nop                                           ; $5ec0: $00
    inc d                                         ; $5ec1: $14
    nop                                           ; $5ec2: $00
    jr nz, jr_0dc_5ec5                            ; $5ec3: $20 $00

jr_0dc_5ec5:
    dec l                                         ; $5ec5: $2d
    nop                                           ; $5ec6: $00
    ld e, $07                                     ; $5ec7: $1e $07
    nop                                           ; $5ec9: $00
    sub a                                         ; $5eca: $97
    pop bc                                        ; $5ecb: $c1
    nop                                           ; $5ecc: $00
    cp l                                          ; $5ecd: $bd
    nop                                           ; $5ece: $00
    dec l                                         ; $5ecf: $2d
    nop                                           ; $5ed0: $00
    ld d, l                                       ; $5ed1: $55
    nop                                           ; $5ed2: $00
    ld [$1a00], a                                 ; $5ed3: $ea $00 $1a
    nop                                           ; $5ed6: $00
    adc $00                                       ; $5ed7: $ce $00
    ld a, $00                                     ; $5ed9: $3e $00
    adc h                                         ; $5edb: $8c
    nop                                           ; $5edc: $00
    sub b                                         ; $5edd: $90
    nop                                           ; $5ede: $00
    jr nz, jr_0dc_5ee1                            ; $5edf: $20 $00

jr_0dc_5ee1:
    ldh [rTAC], a                                 ; $5ee1: $e0 $07
    nop                                           ; $5ee3: $00
    rst $38                                       ; $5ee4: $ff
    dec c                                         ; $5ee5: $0d
    inc b                                         ; $5ee6: $04
    ld sp, hl                                     ; $5ee7: $f9
    rlca                                          ; $5ee8: $07
    ld a, [c]                                     ; $5ee9: $f2
    ld bc, $f9e6                                  ; $5eea: $01 $e6 $f9
    and $00                                       ; $5eed: $e6 $00
    or $f9                                        ; $5eef: $f6 $f9
    or $00                                        ; $5ef1: $f6 $00
    rst $10                                       ; $5ef3: $d7
    rst $38                                       ; $5ef4: $ff
    nop                                           ; $5ef5: $00
    ret nz                                        ; $5ef6: $c0

    nop                                           ; $5ef7: $00
    cp a                                          ; $5ef8: $bf
    nop                                           ; $5ef9: $00
    xor d                                         ; $5efa: $aa
    nop                                           ; $5efb: $00
    xor d                                         ; $5efc: $aa
    nop                                           ; $5efd: $00
    and b                                         ; $5efe: $a0
    nop                                           ; $5eff: $00
    xor b                                         ; $5f00: $a8
    nop                                           ; $5f01: $00
    and b                                         ; $5f02: $a0
    nop                                           ; $5f03: $00
    and d                                         ; $5f04: $a2
    nop                                           ; $5f05: $00
    xor b                                         ; $5f06: $a8
    nop                                           ; $5f07: $00
    xor d                                         ; $5f08: $aa
    nop                                           ; $5f09: $00
    and d                                         ; $5f0a: $a2
    nop                                           ; $5f0b: $00
    xor d                                         ; $5f0c: $aa
    nop                                           ; $5f0d: $00
    cp a                                          ; $5f0e: $bf
    nop                                           ; $5f0f: $00
    ret nz                                        ; $5f10: $c0

    nop                                           ; $5f11: $00
    rst $38                                       ; $5f12: $ff
    nop                                           ; $5f13: $00
    ld a, a                                       ; $5f14: $7f
    nop                                           ; $5f15: $00
    inc bc                                        ; $5f16: $03
    nop                                           ; $5f17: $00
    ld a, l                                       ; $5f18: $7d
    nop                                           ; $5f19: $00
    ld d, l                                       ; $5f1a: $55
    nop                                           ; $5f1b: $00
    dec b                                         ; $5f1c: $05
    nop                                           ; $5f1d: $00
    ld d, l                                       ; $5f1e: $55
    nop                                           ; $5f1f: $00
    dec d                                         ; $5f20: $15
    nop                                           ; $5f21: $00
    ld b, l                                       ; $5f22: $45
    nop                                           ; $5f23: $00
    ld b, l                                       ; $5f24: $45
    nop                                           ; $5f25: $00
    dec d                                         ; $5f26: $15
    nop                                           ; $5f27: $00
    ld d, l                                       ; $5f28: $55
    nop                                           ; $5f29: $00
    ld d, l                                       ; $5f2a: $55
    nop                                           ; $5f2b: $00
    dec d                                         ; $5f2c: $15
    nop                                           ; $5f2d: $00
    ld a, l                                       ; $5f2e: $7d
    nop                                           ; $5f2f: $00
    inc bc                                        ; $5f30: $03
    nop                                           ; $5f31: $00
    ld a, a                                       ; $5f32: $7f
    nop                                           ; $5f33: $00
    add b                                         ; $5f34: $80
    nop                                           ; $5f35: $00
    cp a                                          ; $5f36: $bf
    nop                                           ; $5f37: $00
    xor d                                         ; $5f38: $aa
    nop                                           ; $5f39: $00
    and c                                         ; $5f3a: $a1
    nop                                           ; $5f3b: $00
    xor c                                         ; $5f3c: $a9
    nop                                           ; $5f3d: $00
    cp a                                          ; $5f3e: $bf
    nop                                           ; $5f3f: $00
    ldh [rP1], a                                  ; $5f40: $e0 $00
    rst $38                                       ; $5f42: $ff
    nop                                           ; $5f43: $00
    ld h, h                                       ; $5f44: $64
    nop                                           ; $5f45: $00
    ld hl, $1e00                                  ; $5f46: $21 $00 $1e
    nop                                           ; $5f49: $00
    ld c, $09                                     ; $5f4a: $0e $09
    nop                                           ; $5f4c: $00
    sub l                                         ; $5f4d: $95
    ld bc, $7d00                                  ; $5f4e: $01 $00 $7d
    nop                                           ; $5f51: $00
    dec l                                         ; $5f52: $2d
    nop                                           ; $5f53: $00
    dec d                                         ; $5f54: $15
    nop                                           ; $5f55: $00
    dec l                                         ; $5f56: $2d
    nop                                           ; $5f57: $00
    ld a, l                                       ; $5f58: $7d
    nop                                           ; $5f59: $00
    rlca                                          ; $5f5a: $07
    nop                                           ; $5f5b: $00
    ld a, a                                       ; $5f5c: $7f
    nop                                           ; $5f5d: $00
    ld b, $00                                     ; $5f5e: $06 $00
    jr z, jr_0dc_5f62                             ; $5f60: $28 $00

jr_0dc_5f62:
    ld [hl], b                                    ; $5f62: $70
    dec bc                                        ; $5f63: $0b
    nop                                           ; $5f64: $00
    rst $38                                       ; $5f65: $ff
    dec c                                         ; $5f66: $0d
    inc b                                         ; $5f67: $04
    ld sp, hl                                     ; $5f68: $f9
    rlca                                          ; $5f69: $07
    ld a, [c]                                     ; $5f6a: $f2
    ld bc, $f9e5                                  ; $5f6b: $01 $e5 $f9
    push hl                                       ; $5f6e: $e5
    nop                                           ; $5f6f: $00
    push af                                       ; $5f70: $f5
    ld sp, hl                                     ; $5f71: $f9
    push af                                       ; $5f72: $f5
    nop                                           ; $5f73: $00
    reti                                          ; $5f74: $d9


    rst $38                                       ; $5f75: $ff
    nop                                           ; $5f76: $00
    ret nz                                        ; $5f77: $c0

    nop                                           ; $5f78: $00
    cp a                                          ; $5f79: $bf
    nop                                           ; $5f7a: $00
    xor d                                         ; $5f7b: $aa
    nop                                           ; $5f7c: $00
    xor d                                         ; $5f7d: $aa
    nop                                           ; $5f7e: $00
    and b                                         ; $5f7f: $a0
    nop                                           ; $5f80: $00
    and b                                         ; $5f81: $a0
    nop                                           ; $5f82: $00
    and d                                         ; $5f83: $a2
    nop                                           ; $5f84: $00
    xor b                                         ; $5f85: $a8
    nop                                           ; $5f86: $00
    xor d                                         ; $5f87: $aa
    nop                                           ; $5f88: $00
    and d                                         ; $5f89: $a2
    nop                                           ; $5f8a: $00
    xor d                                         ; $5f8b: $aa
    nop                                           ; $5f8c: $00
    cp a                                          ; $5f8d: $bf
    nop                                           ; $5f8e: $00
    ret nz                                        ; $5f8f: $c0

    nop                                           ; $5f90: $00
    rst $38                                       ; $5f91: $ff
    nop                                           ; $5f92: $00
    add b                                         ; $5f93: $80
    nop                                           ; $5f94: $00
    ld a, a                                       ; $5f95: $7f
    nop                                           ; $5f96: $00
    inc bc                                        ; $5f97: $03
    nop                                           ; $5f98: $00
    ld a, l                                       ; $5f99: $7d
    nop                                           ; $5f9a: $00
    ld d, l                                       ; $5f9b: $55
    nop                                           ; $5f9c: $00
    dec b                                         ; $5f9d: $05
    nop                                           ; $5f9e: $00
    ld d, l                                       ; $5f9f: $55
    nop                                           ; $5fa0: $00
    ld b, l                                       ; $5fa1: $45
    nop                                           ; $5fa2: $00
    ld b, l                                       ; $5fa3: $45
    nop                                           ; $5fa4: $00
    dec d                                         ; $5fa5: $15
    nop                                           ; $5fa6: $00
    ld d, l                                       ; $5fa7: $55
    nop                                           ; $5fa8: $00
    ld d, l                                       ; $5fa9: $55
    nop                                           ; $5faa: $00
    dec d                                         ; $5fab: $15
    nop                                           ; $5fac: $00
    ld a, l                                       ; $5fad: $7d
    nop                                           ; $5fae: $00
    inc bc                                        ; $5faf: $03
    nop                                           ; $5fb0: $00
    ld a, a                                       ; $5fb1: $7f
    nop                                           ; $5fb2: $00
    ld bc, $bf00                                  ; $5fb3: $01 $00 $bf
    nop                                           ; $5fb6: $00
    xor d                                         ; $5fb7: $aa
    nop                                           ; $5fb8: $00
    and d                                         ; $5fb9: $a2
    nop                                           ; $5fba: $00
    xor c                                         ; $5fbb: $a9
    nop                                           ; $5fbc: $00
    cp a                                          ; $5fbd: $bf
    nop                                           ; $5fbe: $00
    ldh [rP1], a                                  ; $5fbf: $e0 $00
    rst $38                                       ; $5fc1: $ff
    nop                                           ; $5fc2: $00
    ld h, d                                       ; $5fc3: $62
    nop                                           ; $5fc4: $00
    ld [de], a                                    ; $5fc5: $12
    nop                                           ; $5fc6: $00
    inc h                                         ; $5fc7: $24
    nop                                           ; $5fc8: $00
    ld hl, $1e00                                  ; $5fc9: $21 $00 $1e
    nop                                           ; $5fcc: $00
    inc c                                         ; $5fcd: $0c
    rlca                                          ; $5fce: $07
    nop                                           ; $5fcf: $00
    sub a                                         ; $5fd0: $97
    ld a, l                                       ; $5fd1: $7d
    nop                                           ; $5fd2: $00
    dec d                                         ; $5fd3: $15
    nop                                           ; $5fd4: $00
    dec l                                         ; $5fd5: $2d
    nop                                           ; $5fd6: $00
    dec d                                         ; $5fd7: $15
    nop                                           ; $5fd8: $00
    ld a, l                                       ; $5fd9: $7d
    nop                                           ; $5fda: $00
    rlca                                          ; $5fdb: $07
    nop                                           ; $5fdc: $00
    ld a, a                                       ; $5fdd: $7f
    nop                                           ; $5fde: $00
    ld [hl], $00                                  ; $5fdf: $36 $00
    ld [$0400], sp                                ; $5fe1: $08 $00 $04
    nop                                           ; $5fe4: $00
    ld e, h                                       ; $5fe5: $5c
    nop                                           ; $5fe6: $00
    jr c, @+$0b                                   ; $5fe7: $38 $09

    nop                                           ; $5fe9: $00
    rst $38                                       ; $5fea: $ff
    ld de, $f906                                  ; $5feb: $11 $06 $f9
    rlca                                          ; $5fee: $07
    ld a, [c]                                     ; $5fef: $f2
    ld bc, $f6e7                                  ; $5ff0: $01 $e7 $f6
    rst $20                                       ; $5ff3: $e7
    cp $e7                                        ; $5ff4: $fe $e7
    nop                                           ; $5ff6: $00
    rst $30                                       ; $5ff7: $f7
    push af                                       ; $5ff8: $f5
    rst $30                                       ; $5ff9: $f7
    db $fd                                        ; $5ffa: $fd
    rst $30                                       ; $5ffb: $f7
    ld bc, $ffa1                                  ; $5ffc: $01 $a1 $ff
    nop                                           ; $5fff: $00
    ret nz                                        ; $6000: $c0

    nop                                           ; $6001: $00
    cp a                                          ; $6002: $bf
    nop                                           ; $6003: $00
    and b                                         ; $6004: $a0
    nop                                           ; $6005: $00
    cp l                                          ; $6006: $bd
    nop                                           ; $6007: $00
    and b                                         ; $6008: $a0
    nop                                           ; $6009: $00
    cp l                                          ; $600a: $bd
    nop                                           ; $600b: $00
    and b                                         ; $600c: $a0
    nop                                           ; $600d: $00
    or h                                          ; $600e: $b4
    nop                                           ; $600f: $00
    and b                                         ; $6010: $a0
    nop                                           ; $6011: $00
    cp a                                          ; $6012: $bf
    nop                                           ; $6013: $00
    ret nz                                        ; $6014: $c0

    nop                                           ; $6015: $00
    rst $38                                       ; $6016: $ff
    nop                                           ; $6017: $00
    add b                                         ; $6018: $80
    nop                                           ; $6019: $00
    cp a                                          ; $601a: $bf
    nop                                           ; $601b: $00
    xor b                                         ; $601c: $a8
    nop                                           ; $601d: $00
    rst $38                                       ; $601e: $ff
    inc bc                                        ; $601f: $03
    nop                                           ; $6020: $00
    sub c                                         ; $6021: $91
    rst $38                                       ; $6022: $ff
    nop                                           ; $6023: $00
    ld bc, $9700                                  ; $6024: $01 $00 $97
    nop                                           ; $6027: $00
    ld bc, $4700                                  ; $6028: $01 $00 $47
    nop                                           ; $602b: $00
    ld bc, $6b00                                  ; $602c: $01 $00 $6b
    nop                                           ; $602f: $00
    ld bc, $ff00                                  ; $6030: $01 $00 $ff
    inc bc                                        ; $6033: $03
    nop                                           ; $6034: $00
    add c                                         ; $6035: $81
    rst $38                                       ; $6036: $ff
    inc bc                                        ; $6037: $03
    nop                                           ; $6038: $00
    cp c                                          ; $6039: $b9
    rst $38                                       ; $603a: $ff
    nop                                           ; $603b: $00
    xor e                                         ; $603c: $ab
    nop                                           ; $603d: $00
    inc bc                                        ; $603e: $03
    nop                                           ; $603f: $00
    inc bc                                        ; $6040: $03
    nop                                           ; $6041: $00
    ld bc, $0100                                  ; $6042: $01 $00 $01
    nop                                           ; $6045: $00
    ld bc, $0100                                  ; $6046: $01 $00 $01
    nop                                           ; $6049: $00
    ld bc, $0100                                  ; $604a: $01 $00 $01
    nop                                           ; $604d: $00
    ld bc, $0100                                  ; $604e: $01 $00 $01
    nop                                           ; $6051: $00
    ld bc, $0300                                  ; $6052: $01 $00 $03
    nop                                           ; $6055: $00
    inc bc                                        ; $6056: $03
    nop                                           ; $6057: $00
    ld bc, $0100                                  ; $6058: $01 $00 $01
    nop                                           ; $605b: $00
    ld bc, $5300                                  ; $605c: $01 $00 $53
    nop                                           ; $605f: $00
    ld d, a                                       ; $6060: $57
    nop                                           ; $6061: $00
    ld d, e                                       ; $6062: $53
    nop                                           ; $6063: $00
    ld e, [hl]                                    ; $6064: $5e
    nop                                           ; $6065: $00
    ld b, c                                       ; $6066: $41
    nop                                           ; $6067: $00
    ld a, a                                       ; $6068: $7f
    nop                                           ; $6069: $00
    inc hl                                        ; $606a: $23
    nop                                           ; $606b: $00
    ld b, l                                       ; $606c: $45
    nop                                           ; $606d: $00
    ret                                           ; $606e: $c9


    nop                                           ; $606f: $00
    ld h, a                                       ; $6070: $67
    nop                                           ; $6071: $00
    ccf                                           ; $6072: $3f
    dec bc                                        ; $6073: $0b
    nop                                           ; $6074: $00
    sub l                                         ; $6075: $95
    dec l                                         ; $6076: $2d
    nop                                           ; $6077: $00
    sbc [hl]                                      ; $6078: $9e
    nop                                           ; $6079: $00
    ld c, l                                       ; $607a: $4d
    nop                                           ; $607b: $00
    di                                            ; $607c: $f3
    nop                                           ; $607d: $00
    ret nz                                        ; $607e: $c0

    nop                                           ; $607f: $00
    rst $38                                       ; $6080: $ff
    nop                                           ; $6081: $00
    and c                                         ; $6082: $a1
    nop                                           ; $6083: $00
    ld b, d                                       ; $6084: $42
    nop                                           ; $6085: $00
    ld h, b                                       ; $6086: $60
    nop                                           ; $6087: $00
    inc sp                                        ; $6088: $33
    nop                                           ; $6089: $00
    sbc a                                         ; $608a: $9f
    dec bc                                        ; $608b: $0b
    nop                                           ; $608c: $00
    sub l                                         ; $608d: $95
    ld a, [bc]                                    ; $608e: $0a
    nop                                           ; $608f: $00
    ld a, [bc]                                    ; $6090: $0a
    nop                                           ; $6091: $00
    ld a, [bc]                                    ; $6092: $0a
    nop                                           ; $6093: $00
    ld a, [bc]                                    ; $6094: $0a
    nop                                           ; $6095: $00
    rlca                                          ; $6096: $07
    nop                                           ; $6097: $00
    ld c, $00                                     ; $6098: $0e $00
    inc b                                         ; $609a: $04
    nop                                           ; $609b: $00
    inc b                                         ; $609c: $04
    nop                                           ; $609d: $00
    inc b                                         ; $609e: $04
    nop                                           ; $609f: $00
    ld a, [bc]                                    ; $60a0: $0a
    nop                                           ; $60a1: $00
    inc c                                         ; $60a2: $0c
    dec bc                                        ; $60a3: $0b
    nop                                           ; $60a4: $00
    rst $38                                       ; $60a5: $ff
    ld de, $f906                                  ; $60a6: $11 $06 $f9
    rlca                                          ; $60a9: $07
    ld a, [c]                                     ; $60aa: $f2
    ld bc, $f6e8                                  ; $60ab: $01 $e8 $f6
    add sp, -$02                                  ; $60ae: $e8 $fe
    add sp, $00                                   ; $60b0: $e8 $00
    ld hl, sp-$0b                                 ; $60b2: $f8 $f5
    ld hl, sp-$03                                 ; $60b4: $f8 $fd
    ld hl, sp+$02                                 ; $60b6: $f8 $02
    and c                                         ; $60b8: $a1
    rst $38                                       ; $60b9: $ff
    nop                                           ; $60ba: $00
    ret nz                                        ; $60bb: $c0

    nop                                           ; $60bc: $00
    cp a                                          ; $60bd: $bf
    nop                                           ; $60be: $00
    and b                                         ; $60bf: $a0
    nop                                           ; $60c0: $00
    cp l                                          ; $60c1: $bd
    nop                                           ; $60c2: $00
    and b                                         ; $60c3: $a0
    nop                                           ; $60c4: $00
    cp l                                          ; $60c5: $bd
    nop                                           ; $60c6: $00
    and b                                         ; $60c7: $a0
    nop                                           ; $60c8: $00
    or l                                          ; $60c9: $b5
    nop                                           ; $60ca: $00
    and b                                         ; $60cb: $a0
    nop                                           ; $60cc: $00
    cp a                                          ; $60cd: $bf
    nop                                           ; $60ce: $00
    ret nz                                        ; $60cf: $c0

    nop                                           ; $60d0: $00
    rst $38                                       ; $60d1: $ff
    nop                                           ; $60d2: $00
    add b                                         ; $60d3: $80
    nop                                           ; $60d4: $00
    cp a                                          ; $60d5: $bf
    nop                                           ; $60d6: $00
    xor d                                         ; $60d7: $aa
    nop                                           ; $60d8: $00
    rst $38                                       ; $60d9: $ff
    inc bc                                        ; $60da: $03
    nop                                           ; $60db: $00
    sub c                                         ; $60dc: $91
    rst $38                                       ; $60dd: $ff
    nop                                           ; $60de: $00
    ld bc, $9700                                  ; $60df: $01 $00 $97
    nop                                           ; $60e2: $00
    ld bc, $4700                                  ; $60e3: $01 $00 $47
    nop                                           ; $60e6: $00
    ld bc, $6b00                                  ; $60e7: $01 $00 $6b
    nop                                           ; $60ea: $00
    ld bc, $ff00                                  ; $60eb: $01 $00 $ff
    inc bc                                        ; $60ee: $03
    nop                                           ; $60ef: $00
    add c                                         ; $60f0: $81
    rst $38                                       ; $60f1: $ff
    inc bc                                        ; $60f2: $03
    nop                                           ; $60f3: $00
    or a                                          ; $60f4: $b7
    rst $38                                       ; $60f5: $ff
    nop                                           ; $60f6: $00
    xor e                                         ; $60f7: $ab
    nop                                           ; $60f8: $00
    inc bc                                        ; $60f9: $03
    nop                                           ; $60fa: $00
    inc bc                                        ; $60fb: $03
    nop                                           ; $60fc: $00
    ld bc, $0100                                  ; $60fd: $01 $00 $01
    nop                                           ; $6100: $00
    ld bc, $0100                                  ; $6101: $01 $00 $01
    nop                                           ; $6104: $00
    ld bc, $0100                                  ; $6105: $01 $00 $01
    nop                                           ; $6108: $00
    ld bc, $0100                                  ; $6109: $01 $00 $01
    nop                                           ; $610c: $00
    ld bc, $0300                                  ; $610d: $01 $00 $03
    nop                                           ; $6110: $00
    inc bc                                        ; $6111: $03
    nop                                           ; $6112: $00
    ld bc, $0100                                  ; $6113: $01 $00 $01
    nop                                           ; $6116: $00
    ld bc, $5700                                  ; $6117: $01 $00 $57
    nop                                           ; $611a: $00
    ld d, e                                       ; $611b: $53
    nop                                           ; $611c: $00
    ld e, [hl]                                    ; $611d: $5e
    nop                                           ; $611e: $00
    ld b, c                                       ; $611f: $41
    nop                                           ; $6120: $00
    ld a, a                                       ; $6121: $7f
    nop                                           ; $6122: $00
    ld b, c                                       ; $6123: $41
    nop                                           ; $6124: $00
    ret                                           ; $6125: $c9


    nop                                           ; $6126: $00
    pop bc                                        ; $6127: $c1
    nop                                           ; $6128: $00
    adc d                                         ; $6129: $8a
    nop                                           ; $612a: $00
    ld a, h                                       ; $612b: $7c
    dec c                                         ; $612c: $0d
    nop                                           ; $612d: $00
    sub e                                         ; $612e: $93
    cp a                                          ; $612f: $bf
    nop                                           ; $6130: $00
    call Call_0dc_7b00                            ; $6131: $cd $00 $7b
    nop                                           ; $6134: $00
    ret nz                                        ; $6135: $c0

    nop                                           ; $6136: $00
    rst $38                                       ; $6137: $ff
    nop                                           ; $6138: $00
    and d                                         ; $6139: $a2
    nop                                           ; $613a: $00
    call nz, $a900                                ; $613b: $c4 $00 $a9
    nop                                           ; $613e: $00
    ld b, [hl]                                    ; $613f: $46
    nop                                           ; $6140: $00
    ccf                                           ; $6141: $3f
    dec c                                         ; $6142: $0d
    nop                                           ; $6143: $00
    sub c                                         ; $6144: $91
    inc d                                         ; $6145: $14
    nop                                           ; $6146: $00
    inc d                                         ; $6147: $14
    nop                                           ; $6148: $00
    inc d                                         ; $6149: $14
    nop                                           ; $614a: $00
    ld c, $00                                     ; $614b: $0e $00
    ld e, $00                                     ; $614d: $1e $00
    add hl, bc                                    ; $614f: $09
    nop                                           ; $6150: $00
    rlca                                          ; $6151: $07
    nop                                           ; $6152: $00
    ld e, $00                                     ; $6153: $1e $00
    ld [$000f], sp                                ; $6155: $08 $0f $00
    rst $38                                       ; $6158: $ff
    ld de, $f906                                  ; $6159: $11 $06 $f9
    rlca                                          ; $615c: $07
    ld a, [c]                                     ; $615d: $f2
    ld bc, $f6e9                                  ; $615e: $01 $e9 $f6
    jp hl                                         ; $6161: $e9


    cp $e9                                        ; $6162: $fe $e9
    nop                                           ; $6164: $00
    ld sp, hl                                     ; $6165: $f9
    push af                                       ; $6166: $f5
    ld sp, hl                                     ; $6167: $f9
    db $fd                                        ; $6168: $fd
    ld sp, hl                                     ; $6169: $f9
    ld [bc], a                                    ; $616a: $02
    and c                                         ; $616b: $a1
    rst $38                                       ; $616c: $ff
    nop                                           ; $616d: $00
    ret nz                                        ; $616e: $c0

    nop                                           ; $616f: $00
    cp a                                          ; $6170: $bf
    nop                                           ; $6171: $00
    and b                                         ; $6172: $a0
    nop                                           ; $6173: $00
    cp l                                          ; $6174: $bd
    nop                                           ; $6175: $00
    and b                                         ; $6176: $a0
    nop                                           ; $6177: $00
    cp l                                          ; $6178: $bd
    nop                                           ; $6179: $00
    and b                                         ; $617a: $a0
    nop                                           ; $617b: $00
    or a                                          ; $617c: $b7
    nop                                           ; $617d: $00
    and b                                         ; $617e: $a0
    nop                                           ; $617f: $00
    cp a                                          ; $6180: $bf
    nop                                           ; $6181: $00
    ret nz                                        ; $6182: $c0

    nop                                           ; $6183: $00
    rst $38                                       ; $6184: $ff
    nop                                           ; $6185: $00
    add b                                         ; $6186: $80
    nop                                           ; $6187: $00
    cp a                                          ; $6188: $bf
    nop                                           ; $6189: $00
    xor d                                         ; $618a: $aa
    nop                                           ; $618b: $00
    rst $38                                       ; $618c: $ff
    inc bc                                        ; $618d: $03
    nop                                           ; $618e: $00
    sub c                                         ; $618f: $91
    rst $38                                       ; $6190: $ff
    nop                                           ; $6191: $00
    ld bc, $9700                                  ; $6192: $01 $00 $97
    nop                                           ; $6195: $00
    ld bc, $4700                                  ; $6196: $01 $00 $47
    nop                                           ; $6199: $00
    ld bc, $6b00                                  ; $619a: $01 $00 $6b
    nop                                           ; $619d: $00
    ld bc, $ff00                                  ; $619e: $01 $00 $ff
    inc bc                                        ; $61a1: $03
    nop                                           ; $61a2: $00
    add c                                         ; $61a3: $81
    rst $38                                       ; $61a4: $ff
    inc bc                                        ; $61a5: $03
    nop                                           ; $61a6: $00
    or l                                          ; $61a7: $b5
    rst $38                                       ; $61a8: $ff
    nop                                           ; $61a9: $00
    xor e                                         ; $61aa: $ab
    nop                                           ; $61ab: $00
    inc bc                                        ; $61ac: $03
    nop                                           ; $61ad: $00
    inc bc                                        ; $61ae: $03
    nop                                           ; $61af: $00
    ld bc, $0100                                  ; $61b0: $01 $00 $01
    nop                                           ; $61b3: $00
    ld bc, $0100                                  ; $61b4: $01 $00 $01
    nop                                           ; $61b7: $00
    ld bc, $0100                                  ; $61b8: $01 $00 $01
    nop                                           ; $61bb: $00
    ld bc, $0100                                  ; $61bc: $01 $00 $01
    nop                                           ; $61bf: $00
    ld bc, $0300                                  ; $61c0: $01 $00 $03
    nop                                           ; $61c3: $00
    inc bc                                        ; $61c4: $03
    nop                                           ; $61c5: $00
    ld bc, $0100                                  ; $61c6: $01 $00 $01
    nop                                           ; $61c9: $00
    ld bc, $5700                                  ; $61ca: $01 $00 $57
    nop                                           ; $61cd: $00
    ld d, e                                       ; $61ce: $53
    nop                                           ; $61cf: $00
    ld e, [hl]                                    ; $61d0: $5e
    nop                                           ; $61d1: $00
    ld b, c                                       ; $61d2: $41
    nop                                           ; $61d3: $00
    ld a, a                                       ; $61d4: $7f
    nop                                           ; $61d5: $00
    add l                                         ; $61d6: $85
    nop                                           ; $61d7: $00
    ret                                           ; $61d8: $c9


    nop                                           ; $61d9: $00
    jp $7c00                                      ; $61da: $c3 $00 $7c


    rrca                                          ; $61dd: $0f
    nop                                           ; $61de: $00
    sub c                                         ; $61df: $91
    cp a                                          ; $61e0: $bf
    nop                                           ; $61e1: $00
    call Call_0dc_7b00                            ; $61e2: $cd $00 $7b
    nop                                           ; $61e5: $00
    ret nz                                        ; $61e6: $c0

    nop                                           ; $61e7: $00
    rst $38                                       ; $61e8: $ff
    nop                                           ; $61e9: $00
    or d                                          ; $61ea: $b2
    nop                                           ; $61eb: $00
    or b                                          ; $61ec: $b0
    nop                                           ; $61ed: $00
    and l                                         ; $61ee: $a5
    nop                                           ; $61ef: $00
    ld e, $0f                                     ; $61f0: $1e $0f
    nop                                           ; $61f2: $00
    adc a                                         ; $61f3: $8f
    inc d                                         ; $61f4: $14
    nop                                           ; $61f5: $00
    inc d                                         ; $61f6: $14
    nop                                           ; $61f7: $00
    inc d                                         ; $61f8: $14
    nop                                           ; $61f9: $00
    ld c, $00                                     ; $61fa: $0e $00
    inc e                                         ; $61fc: $1c
    nop                                           ; $61fd: $00
    ld [bc], a                                    ; $61fe: $02
    nop                                           ; $61ff: $00
    rrca                                          ; $6200: $0f
    nop                                           ; $6201: $00
    ld e, $11                                     ; $6202: $1e $11
    nop                                           ; $6204: $00
    rst $38                                       ; $6205: $ff
    ld de, $f906                                  ; $6206: $11 $06 $f9
    rlca                                          ; $6209: $07
    ld a, [c]                                     ; $620a: $f2
    ld bc, $f6e7                                  ; $620b: $01 $e7 $f6
    rst $20                                       ; $620e: $e7
    cp $e7                                        ; $620f: $fe $e7
    nop                                           ; $6211: $00
    rst $30                                       ; $6212: $f7
    push af                                       ; $6213: $f5
    rst $30                                       ; $6214: $f7
    db $fd                                        ; $6215: $fd
    rst $30                                       ; $6216: $f7
    ld bc, $ffa1                                  ; $6217: $01 $a1 $ff
    nop                                           ; $621a: $00
    ret nz                                        ; $621b: $c0

    nop                                           ; $621c: $00
    cp a                                          ; $621d: $bf
    nop                                           ; $621e: $00
    and b                                         ; $621f: $a0
    nop                                           ; $6220: $00
    cp l                                          ; $6221: $bd
    nop                                           ; $6222: $00
    and b                                         ; $6223: $a0
    nop                                           ; $6224: $00
    cp l                                          ; $6225: $bd
    nop                                           ; $6226: $00
    and b                                         ; $6227: $a0
    nop                                           ; $6228: $00
    or l                                          ; $6229: $b5
    nop                                           ; $622a: $00
    and b                                         ; $622b: $a0
    nop                                           ; $622c: $00
    cp a                                          ; $622d: $bf
    nop                                           ; $622e: $00
    ret nz                                        ; $622f: $c0

    nop                                           ; $6230: $00
    rst $38                                       ; $6231: $ff
    nop                                           ; $6232: $00
    add b                                         ; $6233: $80
    nop                                           ; $6234: $00
    cp a                                          ; $6235: $bf
    nop                                           ; $6236: $00
    xor b                                         ; $6237: $a8
    nop                                           ; $6238: $00
    rst $38                                       ; $6239: $ff
    inc bc                                        ; $623a: $03
    nop                                           ; $623b: $00
    sub c                                         ; $623c: $91
    rst $38                                       ; $623d: $ff
    nop                                           ; $623e: $00
    ld bc, $9700                                  ; $623f: $01 $00 $97
    nop                                           ; $6242: $00
    ld bc, $4700                                  ; $6243: $01 $00 $47
    nop                                           ; $6246: $00
    ld bc, $6b00                                  ; $6247: $01 $00 $6b
    nop                                           ; $624a: $00
    ld bc, $ff00                                  ; $624b: $01 $00 $ff
    inc bc                                        ; $624e: $03
    nop                                           ; $624f: $00
    add c                                         ; $6250: $81
    rst $38                                       ; $6251: $ff
    inc bc                                        ; $6252: $03
    nop                                           ; $6253: $00
    cp c                                          ; $6254: $b9
    rst $38                                       ; $6255: $ff
    nop                                           ; $6256: $00
    xor e                                         ; $6257: $ab
    nop                                           ; $6258: $00
    inc bc                                        ; $6259: $03
    nop                                           ; $625a: $00
    inc bc                                        ; $625b: $03
    nop                                           ; $625c: $00
    ld bc, $0100                                  ; $625d: $01 $00 $01
    nop                                           ; $6260: $00
    ld bc, $0100                                  ; $6261: $01 $00 $01
    nop                                           ; $6264: $00
    ld bc, $0100                                  ; $6265: $01 $00 $01
    nop                                           ; $6268: $00
    ld bc, $0100                                  ; $6269: $01 $00 $01
    nop                                           ; $626c: $00
    ld bc, $0300                                  ; $626d: $01 $00 $03
    nop                                           ; $6270: $00
    inc bc                                        ; $6271: $03
    nop                                           ; $6272: $00
    ld bc, $0100                                  ; $6273: $01 $00 $01
    nop                                           ; $6276: $00
    ld bc, $5300                                  ; $6277: $01 $00 $53
    nop                                           ; $627a: $00
    ld d, a                                       ; $627b: $57
    nop                                           ; $627c: $00
    ld d, e                                       ; $627d: $53
    nop                                           ; $627e: $00
    ld e, [hl]                                    ; $627f: $5e
    nop                                           ; $6280: $00
    ld b, c                                       ; $6281: $41
    nop                                           ; $6282: $00
    ld a, a                                       ; $6283: $7f
    nop                                           ; $6284: $00
    ld b, a                                       ; $6285: $47
    nop                                           ; $6286: $00
    ld b, [hl]                                    ; $6287: $46
    nop                                           ; $6288: $00
    ret                                           ; $6289: $c9


    nop                                           ; $628a: $00
    rst $20                                       ; $628b: $e7
    nop                                           ; $628c: $00
    ld a, b                                       ; $628d: $78
    dec bc                                        ; $628e: $0b
    nop                                           ; $628f: $00
    sub l                                         ; $6290: $95
    dec l                                         ; $6291: $2d
    nop                                           ; $6292: $00
    sbc [hl]                                      ; $6293: $9e
    nop                                           ; $6294: $00
    ld c, l                                       ; $6295: $4d
    nop                                           ; $6296: $00
    di                                            ; $6297: $f3
    nop                                           ; $6298: $00
    ret nz                                        ; $6299: $c0

    nop                                           ; $629a: $00
    rst $38                                       ; $629b: $ff
    nop                                           ; $629c: $00
    sub b                                         ; $629d: $90
    nop                                           ; $629e: $00
    add hl, hl                                    ; $629f: $29
    nop                                           ; $62a0: $00
    jr nz, jr_0dc_62a3                            ; $62a1: $20 $00

jr_0dc_62a3:
    inc sp                                        ; $62a3: $33
    nop                                           ; $62a4: $00
    rra                                           ; $62a5: $1f
    dec bc                                        ; $62a6: $0b
    nop                                           ; $62a7: $00
    sub l                                         ; $62a8: $95
    ld a, [bc]                                    ; $62a9: $0a
    nop                                           ; $62aa: $00
    ld a, [bc]                                    ; $62ab: $0a
    nop                                           ; $62ac: $00
    ld a, [bc]                                    ; $62ad: $0a
    nop                                           ; $62ae: $00
    ld a, [bc]                                    ; $62af: $0a
    nop                                           ; $62b0: $00
    rlca                                          ; $62b1: $07
    nop                                           ; $62b2: $00
    ld c, $00                                     ; $62b3: $0e $00
    ld c, $00                                     ; $62b5: $0e $00
    ld [bc], a                                    ; $62b7: $02
    nop                                           ; $62b8: $00
    ld b, $00                                     ; $62b9: $06 $00
    rlca                                          ; $62bb: $07
    nop                                           ; $62bc: $00
    ld [$000b], sp                                ; $62bd: $08 $0b $00
    rst $38                                       ; $62c0: $ff
    ld de, $f906                                  ; $62c1: $11 $06 $f9
    rlca                                          ; $62c4: $07
    ld a, [c]                                     ; $62c5: $f2
    ld bc, $f6e6                                  ; $62c6: $01 $e6 $f6
    and $fe                                       ; $62c9: $e6 $fe
    and $00                                       ; $62cb: $e6 $00
    or $f5                                        ; $62cd: $f6 $f5
    or $fd                                        ; $62cf: $f6 $fd
    or $01                                        ; $62d1: $f6 $01
    and c                                         ; $62d3: $a1
    rst $38                                       ; $62d4: $ff
    nop                                           ; $62d5: $00
    ret nz                                        ; $62d6: $c0

    nop                                           ; $62d7: $00
    cp a                                          ; $62d8: $bf
    nop                                           ; $62d9: $00
    and b                                         ; $62da: $a0
    nop                                           ; $62db: $00
    cp l                                          ; $62dc: $bd
    nop                                           ; $62dd: $00
    and b                                         ; $62de: $a0
    nop                                           ; $62df: $00
    cp l                                          ; $62e0: $bd
    nop                                           ; $62e1: $00
    and b                                         ; $62e2: $a0
    nop                                           ; $62e3: $00
    or h                                          ; $62e4: $b4
    nop                                           ; $62e5: $00
    and b                                         ; $62e6: $a0
    nop                                           ; $62e7: $00
    cp a                                          ; $62e8: $bf
    nop                                           ; $62e9: $00
    ret nz                                        ; $62ea: $c0

    nop                                           ; $62eb: $00
    rst $38                                       ; $62ec: $ff
    nop                                           ; $62ed: $00
    add b                                         ; $62ee: $80
    nop                                           ; $62ef: $00
    cp a                                          ; $62f0: $bf
    nop                                           ; $62f1: $00
    xor b                                         ; $62f2: $a8
    nop                                           ; $62f3: $00
    rst $38                                       ; $62f4: $ff
    inc bc                                        ; $62f5: $03
    nop                                           ; $62f6: $00
    sub c                                         ; $62f7: $91
    rst $38                                       ; $62f8: $ff
    nop                                           ; $62f9: $00
    ld bc, $9700                                  ; $62fa: $01 $00 $97
    nop                                           ; $62fd: $00
    ld bc, $4700                                  ; $62fe: $01 $00 $47
    nop                                           ; $6301: $00
    ld bc, $6b00                                  ; $6302: $01 $00 $6b
    nop                                           ; $6305: $00
    ld bc, $ff00                                  ; $6306: $01 $00 $ff
    inc bc                                        ; $6309: $03
    nop                                           ; $630a: $00
    add c                                         ; $630b: $81
    rst $38                                       ; $630c: $ff
    inc bc                                        ; $630d: $03
    nop                                           ; $630e: $00
    cp e                                          ; $630f: $bb
    rst $38                                       ; $6310: $ff
    nop                                           ; $6311: $00
    xor e                                         ; $6312: $ab
    nop                                           ; $6313: $00
    inc bc                                        ; $6314: $03
    nop                                           ; $6315: $00
    inc bc                                        ; $6316: $03
    nop                                           ; $6317: $00
    ld bc, $0100                                  ; $6318: $01 $00 $01
    nop                                           ; $631b: $00
    ld bc, $0100                                  ; $631c: $01 $00 $01
    nop                                           ; $631f: $00
    ld bc, $0100                                  ; $6320: $01 $00 $01
    nop                                           ; $6323: $00
    ld bc, $0100                                  ; $6324: $01 $00 $01
    nop                                           ; $6327: $00
    ld bc, $0300                                  ; $6328: $01 $00 $03
    nop                                           ; $632b: $00
    inc bc                                        ; $632c: $03
    nop                                           ; $632d: $00
    ld bc, $0100                                  ; $632e: $01 $00 $01
    nop                                           ; $6331: $00
    ld bc, $5300                                  ; $6332: $01 $00 $53
    nop                                           ; $6335: $00
    ld d, a                                       ; $6336: $57
    nop                                           ; $6337: $00
    ld d, e                                       ; $6338: $53
    nop                                           ; $6339: $00
    ld e, [hl]                                    ; $633a: $5e
    nop                                           ; $633b: $00
    ld b, c                                       ; $633c: $41
    nop                                           ; $633d: $00
    ld a, a                                       ; $633e: $7f
    nop                                           ; $633f: $00
    ld hl, $4200                                  ; $6340: $21 $00 $42
    nop                                           ; $6343: $00
    ld b, b                                       ; $6344: $40
    nop                                           ; $6345: $00
    rst $00                                       ; $6346: $c7
    nop                                           ; $6347: $00
    ld h, a                                       ; $6348: $67
    nop                                           ; $6349: $00
    jr c, jr_0dc_6355                             ; $634a: $38 $09

    nop                                           ; $634c: $00
    sub a                                         ; $634d: $97
    dec l                                         ; $634e: $2d
    nop                                           ; $634f: $00
    sbc [hl]                                      ; $6350: $9e
    nop                                           ; $6351: $00
    ld c, l                                       ; $6352: $4d
    nop                                           ; $6353: $00
    di                                            ; $6354: $f3

jr_0dc_6355:
    nop                                           ; $6355: $00
    ret nz                                        ; $6356: $c0

    nop                                           ; $6357: $00
    rst $38                                       ; $6358: $ff
    nop                                           ; $6359: $00
    and b                                         ; $635a: $a0
    nop                                           ; $635b: $00
    and b                                         ; $635c: $a0
    nop                                           ; $635d: $00
    ret nz                                        ; $635e: $c0

    nop                                           ; $635f: $00
    ld h, c                                       ; $6360: $61
    nop                                           ; $6361: $00
    or e                                          ; $6362: $b3
    nop                                           ; $6363: $00
    inc e                                         ; $6364: $1c
    add hl, bc                                    ; $6365: $09
    nop                                           ; $6366: $00
    sub l                                         ; $6367: $95
    ld a, [bc]                                    ; $6368: $0a
    nop                                           ; $6369: $00
    ld a, [bc]                                    ; $636a: $0a
    nop                                           ; $636b: $00
    ld a, [bc]                                    ; $636c: $0a
    nop                                           ; $636d: $00
    ld a, [bc]                                    ; $636e: $0a
    nop                                           ; $636f: $00
    rlca                                          ; $6370: $07
    nop                                           ; $6371: $00
    ld c, $00                                     ; $6372: $0e $00
    ld b, $00                                     ; $6374: $06 $00
    inc c                                         ; $6376: $0c
    nop                                           ; $6377: $00
    ld [bc], a                                    ; $6378: $02
    nop                                           ; $6379: $00
    dec c                                         ; $637a: $0d
    nop                                           ; $637b: $00
    ld c, $0b                                     ; $637c: $0e $0b
    nop                                           ; $637e: $00
    rst $38                                       ; $637f: $ff
    ld de, $f906                                  ; $6380: $11 $06 $f9
    rlca                                          ; $6383: $07
    ld a, [c]                                     ; $6384: $f2
    ld bc, $f6e6                                  ; $6385: $01 $e6 $f6
    and $fe                                       ; $6388: $e6 $fe
    and $00                                       ; $638a: $e6 $00
    or $f5                                        ; $638c: $f6 $f5
    or $fd                                        ; $638e: $f6 $fd
    or $03                                        ; $6390: $f6 $03
    and c                                         ; $6392: $a1
    rst $38                                       ; $6393: $ff
    nop                                           ; $6394: $00
    ret nz                                        ; $6395: $c0

    nop                                           ; $6396: $00
    cp a                                          ; $6397: $bf
    nop                                           ; $6398: $00
    and b                                         ; $6399: $a0
    nop                                           ; $639a: $00
    cp d                                          ; $639b: $ba
    nop                                           ; $639c: $00
    and b                                         ; $639d: $a0
    nop                                           ; $639e: $00
    cp c                                          ; $639f: $b9
    nop                                           ; $63a0: $00
    and b                                         ; $63a1: $a0
    nop                                           ; $63a2: $00
    or d                                          ; $63a3: $b2
    nop                                           ; $63a4: $00
    cp a                                          ; $63a5: $bf
    nop                                           ; $63a6: $00
    ret nz                                        ; $63a7: $c0

    nop                                           ; $63a8: $00
    rst $38                                       ; $63a9: $ff
    nop                                           ; $63aa: $00
    add b                                         ; $63ab: $80
    nop                                           ; $63ac: $00
    cp a                                          ; $63ad: $bf
    nop                                           ; $63ae: $00
    xor b                                         ; $63af: $a8
    nop                                           ; $63b0: $00
    and [hl]                                      ; $63b1: $a6
    nop                                           ; $63b2: $00
    rst $38                                       ; $63b3: $ff
    inc bc                                        ; $63b4: $03
    nop                                           ; $63b5: $00
    adc a                                         ; $63b6: $8f
    rst $38                                       ; $63b7: $ff
    nop                                           ; $63b8: $00
    ld bc, $bb00                                  ; $63b9: $01 $00 $bb
    nop                                           ; $63bc: $00
    ld bc, $eb00                                  ; $63bd: $01 $00 $eb
    nop                                           ; $63c0: $00
    ld bc, $2b00                                  ; $63c1: $01 $00 $2b
    nop                                           ; $63c4: $00
    rst $38                                       ; $63c5: $ff
    inc bc                                        ; $63c6: $03
    nop                                           ; $63c7: $00
    add c                                         ; $63c8: $81
    rst $38                                       ; $63c9: $ff
    inc bc                                        ; $63ca: $03
    nop                                           ; $63cb: $00
    cp l                                          ; $63cc: $bd
    rst $38                                       ; $63cd: $ff
    nop                                           ; $63ce: $00
    and e                                         ; $63cf: $a3
    nop                                           ; $63d0: $00
    add hl, de                                    ; $63d1: $19
    nop                                           ; $63d2: $00
    inc bc                                        ; $63d3: $03
    nop                                           ; $63d4: $00
    inc bc                                        ; $63d5: $03
    nop                                           ; $63d6: $00
    ld bc, $0100                                  ; $63d7: $01 $00 $01
    nop                                           ; $63da: $00
    ld bc, $0100                                  ; $63db: $01 $00 $01
    nop                                           ; $63de: $00
    ld bc, $0100                                  ; $63df: $01 $00 $01
    nop                                           ; $63e2: $00
    ld bc, $0100                                  ; $63e3: $01 $00 $01
    nop                                           ; $63e6: $00
    inc bc                                        ; $63e7: $03
    nop                                           ; $63e8: $00
    inc bc                                        ; $63e9: $03
    nop                                           ; $63ea: $00
    ld bc, $0100                                  ; $63eb: $01 $00 $01
    nop                                           ; $63ee: $00
    ld bc, $0100                                  ; $63ef: $01 $00 $01
    nop                                           ; $63f2: $00
    ld d, a                                       ; $63f3: $57
    nop                                           ; $63f4: $00
    ld d, e                                       ; $63f5: $53
    nop                                           ; $63f6: $00
    ld e, h                                       ; $63f7: $5c
    nop                                           ; $63f8: $00
    ld b, c                                       ; $63f9: $41
    nop                                           ; $63fa: $00
    ld a, a                                       ; $63fb: $7f
    nop                                           ; $63fc: $00
    inc hl                                        ; $63fd: $23
    nop                                           ; $63fe: $00
    inc hl                                        ; $63ff: $23
    nop                                           ; $6400: $00
    inc hl                                        ; $6401: $23
    nop                                           ; $6402: $00
    ld b, h                                       ; $6403: $44
    nop                                           ; $6404: $00
    pop bc                                        ; $6405: $c1
    nop                                           ; $6406: $00
    ld [hl], l                                    ; $6407: $75
    nop                                           ; $6408: $00
    ld a, [hl-]                                   ; $6409: $3a
    add hl, bc                                    ; $640a: $09
    nop                                           ; $640b: $00
    sub a                                         ; $640c: $97
    sbc [hl]                                      ; $640d: $9e
    nop                                           ; $640e: $00
    dec l                                         ; $640f: $2d
    nop                                           ; $6410: $00
    di                                            ; $6411: $f3
    nop                                           ; $6412: $00
    ret nz                                        ; $6413: $c0

    nop                                           ; $6414: $00
    rst $38                                       ; $6415: $ff
    nop                                           ; $6416: $00
    and b                                         ; $6417: $a0
    nop                                           ; $6418: $00
    jr nz, jr_0dc_641b                            ; $6419: $20 $00

jr_0dc_641b:
    and c                                         ; $641b: $a1
    nop                                           ; $641c: $00
    ld b, c                                       ; $641d: $41
    nop                                           ; $641e: $00
    add b                                         ; $641f: $80
    nop                                           ; $6420: $00
    pop af                                        ; $6421: $f1
    nop                                           ; $6422: $00
    ld e, $09                                     ; $6423: $1e $09
    nop                                           ; $6425: $00
    sub a                                         ; $6426: $97
    jr z, jr_0dc_6429                             ; $6427: $28 $00

jr_0dc_6429:
    jr z, jr_0dc_642b                             ; $6429: $28 $00

jr_0dc_642b:
    jr z, jr_0dc_642d                             ; $642b: $28 $00

jr_0dc_642d:
    inc e                                         ; $642d: $1c
    nop                                           ; $642e: $00
    inc a                                         ; $642f: $3c
    nop                                           ; $6430: $00
    jr c, jr_0dc_6433                             ; $6431: $38 $00

jr_0dc_6433:
    jr nc, jr_0dc_6435                            ; $6433: $30 $00

jr_0dc_6435:
    ld [$0700], sp                                ; $6435: $08 $00 $07
    nop                                           ; $6438: $00
    rlca                                          ; $6439: $07
    nop                                           ; $643a: $00
    ld c, $00                                     ; $643b: $0e $00
    jr c, @+$0b                                   ; $643d: $38 $09

    nop                                           ; $643f: $00
    rst $38                                       ; $6440: $ff
    ld de, $f906                                  ; $6441: $11 $06 $f9
    rlca                                          ; $6444: $07
    ld a, [c]                                     ; $6445: $f2
    ld bc, $f6e7                                  ; $6446: $01 $e7 $f6
    rst $20                                       ; $6449: $e7
    cp $e7                                        ; $644a: $fe $e7
    nop                                           ; $644c: $00
    rst $30                                       ; $644d: $f7
    push af                                       ; $644e: $f5
    rst $30                                       ; $644f: $f7
    db $fd                                        ; $6450: $fd
    rst $30                                       ; $6451: $f7
    inc bc                                        ; $6452: $03
    and c                                         ; $6453: $a1
    rst $38                                       ; $6454: $ff
    nop                                           ; $6455: $00
    ret nz                                        ; $6456: $c0

    nop                                           ; $6457: $00
    cp a                                          ; $6458: $bf
    nop                                           ; $6459: $00
    and b                                         ; $645a: $a0
    nop                                           ; $645b: $00
    or [hl]                                       ; $645c: $b6
    nop                                           ; $645d: $00
    and b                                         ; $645e: $a0
    nop                                           ; $645f: $00
    cp c                                          ; $6460: $b9
    nop                                           ; $6461: $00
    and b                                         ; $6462: $a0
    nop                                           ; $6463: $00
    or d                                          ; $6464: $b2
    nop                                           ; $6465: $00
    cp a                                          ; $6466: $bf
    nop                                           ; $6467: $00
    ret nz                                        ; $6468: $c0

    nop                                           ; $6469: $00
    rst $38                                       ; $646a: $ff
    nop                                           ; $646b: $00
    add b                                         ; $646c: $80
    nop                                           ; $646d: $00
    cp a                                          ; $646e: $bf
    nop                                           ; $646f: $00
    xor b                                         ; $6470: $a8
    nop                                           ; $6471: $00
    and [hl]                                      ; $6472: $a6
    nop                                           ; $6473: $00
    rst $38                                       ; $6474: $ff
    inc bc                                        ; $6475: $03
    nop                                           ; $6476: $00
    adc a                                         ; $6477: $8f
    rst $38                                       ; $6478: $ff
    nop                                           ; $6479: $00
    ld bc, $bb00                                  ; $647a: $01 $00 $bb
    nop                                           ; $647d: $00
    ld bc, $eb00                                  ; $647e: $01 $00 $eb
    nop                                           ; $6481: $00
    ld bc, $2b00                                  ; $6482: $01 $00 $2b
    nop                                           ; $6485: $00
    rst $38                                       ; $6486: $ff
    inc bc                                        ; $6487: $03
    nop                                           ; $6488: $00
    add c                                         ; $6489: $81
    rst $38                                       ; $648a: $ff
    inc bc                                        ; $648b: $03
    nop                                           ; $648c: $00
    cp e                                          ; $648d: $bb
    rst $38                                       ; $648e: $ff
    nop                                           ; $648f: $00
    and e                                         ; $6490: $a3
    nop                                           ; $6491: $00
    add hl, de                                    ; $6492: $19
    nop                                           ; $6493: $00
    inc bc                                        ; $6494: $03
    nop                                           ; $6495: $00
    inc bc                                        ; $6496: $03
    nop                                           ; $6497: $00
    ld bc, $0100                                  ; $6498: $01 $00 $01
    nop                                           ; $649b: $00
    ld bc, $0100                                  ; $649c: $01 $00 $01
    nop                                           ; $649f: $00
    ld bc, $0100                                  ; $64a0: $01 $00 $01
    nop                                           ; $64a3: $00
    ld bc, $0100                                  ; $64a4: $01 $00 $01
    nop                                           ; $64a7: $00
    inc bc                                        ; $64a8: $03
    nop                                           ; $64a9: $00
    inc bc                                        ; $64aa: $03
    nop                                           ; $64ab: $00
    ld bc, $0100                                  ; $64ac: $01 $00 $01
    nop                                           ; $64af: $00
    ld bc, $0100                                  ; $64b0: $01 $00 $01
    nop                                           ; $64b3: $00
    ld d, a                                       ; $64b4: $57
    nop                                           ; $64b5: $00
    ld d, e                                       ; $64b6: $53
    nop                                           ; $64b7: $00
    ld e, h                                       ; $64b8: $5c
    nop                                           ; $64b9: $00
    ld b, c                                       ; $64ba: $41
    nop                                           ; $64bb: $00
    ld a, a                                       ; $64bc: $7f
    nop                                           ; $64bd: $00
    inc hl                                        ; $64be: $23
    nop                                           ; $64bf: $00
    ld b, e                                       ; $64c0: $43
    nop                                           ; $64c1: $00
    ld b, l                                       ; $64c2: $45
    nop                                           ; $64c3: $00
    push bc                                       ; $64c4: $c5
    nop                                           ; $64c5: $00
    ld h, e                                       ; $64c6: $63
    nop                                           ; $64c7: $00
    ccf                                           ; $64c8: $3f
    dec bc                                        ; $64c9: $0b
    nop                                           ; $64ca: $00
    sub l                                         ; $64cb: $95
    sbc [hl]                                      ; $64cc: $9e
    nop                                           ; $64cd: $00
    dec l                                         ; $64ce: $2d
    nop                                           ; $64cf: $00
    di                                            ; $64d0: $f3
    nop                                           ; $64d1: $00
    ret nz                                        ; $64d2: $c0

    nop                                           ; $64d3: $00
    rst $38                                       ; $64d4: $ff
    nop                                           ; $64d5: $00
    and b                                         ; $64d6: $a0
    nop                                           ; $64d7: $00
    ld hl, $2100                                  ; $64d8: $21 $00 $21
    nop                                           ; $64db: $00
    ld h, d                                       ; $64dc: $62
    nop                                           ; $64dd: $00
    and d                                         ; $64de: $a2
    nop                                           ; $64df: $00
    db $fd                                        ; $64e0: $fd
    dec bc                                        ; $64e1: $0b
    nop                                           ; $64e2: $00
    sub l                                         ; $64e3: $95
    jr z, jr_0dc_64e6                             ; $64e4: $28 $00

jr_0dc_64e6:
    jr z, jr_0dc_64e8                             ; $64e6: $28 $00

jr_0dc_64e8:
    jr z, jr_0dc_64ea                             ; $64e8: $28 $00

jr_0dc_64ea:
    inc e                                         ; $64ea: $1c
    nop                                           ; $64eb: $00
    inc a                                         ; $64ec: $3c
    nop                                           ; $64ed: $00
    jr c, jr_0dc_64f0                             ; $64ee: $38 $00

jr_0dc_64f0:
    stop                                          ; $64f0: $10 $00
    ld [$0600], sp                                ; $64f2: $08 $00 $06
    nop                                           ; $64f5: $00
    dec e                                         ; $64f6: $1d
    nop                                           ; $64f7: $00
    ld a, $0b                                     ; $64f8: $3e $0b
    nop                                           ; $64fa: $00
    rst $38                                       ; $64fb: $ff
    ld de, $f906                                  ; $64fc: $11 $06 $f9
    rlca                                          ; $64ff: $07
    ld a, [c]                                     ; $6500: $f2
    ld bc, $f6e6                                  ; $6501: $01 $e6 $f6
    and $fe                                       ; $6504: $e6 $fe
    and $00                                       ; $6506: $e6 $00
    or $f5                                        ; $6508: $f6 $f5
    or $fd                                        ; $650a: $f6 $fd
    or $02                                        ; $650c: $f6 $02
    and c                                         ; $650e: $a1
    rst $38                                       ; $650f: $ff
    nop                                           ; $6510: $00
    ret nz                                        ; $6511: $c0

    nop                                           ; $6512: $00
    cp a                                          ; $6513: $bf
    nop                                           ; $6514: $00
    and b                                         ; $6515: $a0
    nop                                           ; $6516: $00
    cp l                                          ; $6517: $bd
    nop                                           ; $6518: $00
    and b                                         ; $6519: $a0
    nop                                           ; $651a: $00
    cp l                                          ; $651b: $bd
    nop                                           ; $651c: $00
    and b                                         ; $651d: $a0
    nop                                           ; $651e: $00
    or h                                          ; $651f: $b4
    nop                                           ; $6520: $00
    and b                                         ; $6521: $a0
    nop                                           ; $6522: $00
    cp a                                          ; $6523: $bf
    nop                                           ; $6524: $00
    ret nz                                        ; $6525: $c0

    nop                                           ; $6526: $00
    rst $38                                       ; $6527: $ff
    nop                                           ; $6528: $00
    add b                                         ; $6529: $80
    nop                                           ; $652a: $00
    cp a                                          ; $652b: $bf
    nop                                           ; $652c: $00
    xor b                                         ; $652d: $a8
    nop                                           ; $652e: $00
    rst $38                                       ; $652f: $ff
    inc bc                                        ; $6530: $03
    nop                                           ; $6531: $00
    sub c                                         ; $6532: $91
    rst $38                                       ; $6533: $ff
    nop                                           ; $6534: $00
    ld bc, $9700                                  ; $6535: $01 $00 $97
    nop                                           ; $6538: $00
    ld bc, $4700                                  ; $6539: $01 $00 $47
    nop                                           ; $653c: $00
    ld bc, $6b00                                  ; $653d: $01 $00 $6b
    nop                                           ; $6540: $00
    ld bc, $ff00                                  ; $6541: $01 $00 $ff
    inc bc                                        ; $6544: $03
    nop                                           ; $6545: $00
    add c                                         ; $6546: $81
    rst $38                                       ; $6547: $ff
    inc bc                                        ; $6548: $03
    nop                                           ; $6549: $00
    cp e                                          ; $654a: $bb
    rst $38                                       ; $654b: $ff
    nop                                           ; $654c: $00
    xor e                                         ; $654d: $ab
    nop                                           ; $654e: $00
    inc bc                                        ; $654f: $03
    nop                                           ; $6550: $00
    inc bc                                        ; $6551: $03
    nop                                           ; $6552: $00
    ld bc, $0100                                  ; $6553: $01 $00 $01
    nop                                           ; $6556: $00
    ld bc, $0100                                  ; $6557: $01 $00 $01
    nop                                           ; $655a: $00
    ld bc, $0100                                  ; $655b: $01 $00 $01
    nop                                           ; $655e: $00
    ld bc, $0100                                  ; $655f: $01 $00 $01
    nop                                           ; $6562: $00
    ld bc, $0300                                  ; $6563: $01 $00 $03
    nop                                           ; $6566: $00
    inc bc                                        ; $6567: $03
    nop                                           ; $6568: $00
    ld bc, $0100                                  ; $6569: $01 $00 $01
    nop                                           ; $656c: $00
    ld bc, $5300                                  ; $656d: $01 $00 $53
    nop                                           ; $6570: $00
    ld d, a                                       ; $6571: $57
    nop                                           ; $6572: $00
    ld d, e                                       ; $6573: $53
    nop                                           ; $6574: $00
    ld e, [hl]                                    ; $6575: $5e
    nop                                           ; $6576: $00
    ld b, c                                       ; $6577: $41
    nop                                           ; $6578: $00
    ld a, a                                       ; $6579: $7f
    nop                                           ; $657a: $00
    inc hl                                        ; $657b: $23
    nop                                           ; $657c: $00
    ld b, e                                       ; $657d: $43
    nop                                           ; $657e: $00
    add l                                         ; $657f: $85
    nop                                           ; $6580: $00
    jp nz, Jump_0dc_6700                          ; $6581: $c2 $00 $67

    nop                                           ; $6584: $00
    ccf                                           ; $6585: $3f
    add hl, bc                                    ; $6586: $09
    nop                                           ; $6587: $00
    sub a                                         ; $6588: $97
    dec l                                         ; $6589: $2d
    nop                                           ; $658a: $00
    sbc [hl]                                      ; $658b: $9e
    nop                                           ; $658c: $00
    ld c, l                                       ; $658d: $4d
    nop                                           ; $658e: $00
    di                                            ; $658f: $f3
    nop                                           ; $6590: $00
    ret nz                                        ; $6591: $c0

    nop                                           ; $6592: $00
    rst $38                                       ; $6593: $ff
    nop                                           ; $6594: $00
    sub b                                         ; $6595: $90
    nop                                           ; $6596: $00
    ld hl, $2100                                  ; $6597: $21 $00 $21
    nop                                           ; $659a: $00
    ld b, d                                       ; $659b: $42
    nop                                           ; $659c: $00
    ld h, b                                       ; $659d: $60
    nop                                           ; $659e: $00
    cp a                                          ; $659f: $bf
    add hl, bc                                    ; $65a0: $09
    nop                                           ; $65a1: $00
    sub a                                         ; $65a2: $97
    inc d                                         ; $65a3: $14
    nop                                           ; $65a4: $00
    inc d                                         ; $65a5: $14
    nop                                           ; $65a6: $00
    inc d                                         ; $65a7: $14
    nop                                           ; $65a8: $00
    inc d                                         ; $65a9: $14
    nop                                           ; $65aa: $00
    ld c, $00                                     ; $65ab: $0e $00
    inc e                                         ; $65ad: $1c
    nop                                           ; $65ae: $00
    jr jr_0dc_65b1                                ; $65af: $18 $00

jr_0dc_65b1:
    ld [$0800], sp                                ; $65b1: $08 $00 $08
    nop                                           ; $65b4: $00
    inc b                                         ; $65b5: $04
    nop                                           ; $65b6: $00
    rra                                           ; $65b7: $1f
    nop                                           ; $65b8: $00
    ld e, $09                                     ; $65b9: $1e $09
    nop                                           ; $65bb: $00
    rst $38                                       ; $65bc: $ff
    ld de, $f906                                  ; $65bd: $11 $06 $f9
    rlca                                          ; $65c0: $07
    ld a, [c]                                     ; $65c1: $f2
    ld bc, $f6e7                                  ; $65c2: $01 $e7 $f6
    rst $20                                       ; $65c5: $e7
    cp $e7                                        ; $65c6: $fe $e7
    nop                                           ; $65c8: $00
    rst $30                                       ; $65c9: $f7
    push af                                       ; $65ca: $f5
    rst $30                                       ; $65cb: $f7
    db $fd                                        ; $65cc: $fd
    rst $30                                       ; $65cd: $f7
    ld bc, $ffa1                                  ; $65ce: $01 $a1 $ff
    nop                                           ; $65d1: $00
    ret nz                                        ; $65d2: $c0

    nop                                           ; $65d3: $00
    cp a                                          ; $65d4: $bf
    nop                                           ; $65d5: $00
    and b                                         ; $65d6: $a0
    nop                                           ; $65d7: $00
    cp l                                          ; $65d8: $bd
    nop                                           ; $65d9: $00
    and b                                         ; $65da: $a0
    nop                                           ; $65db: $00
    cp l                                          ; $65dc: $bd
    nop                                           ; $65dd: $00
    and b                                         ; $65de: $a0
    nop                                           ; $65df: $00
    or h                                          ; $65e0: $b4
    nop                                           ; $65e1: $00
    and b                                         ; $65e2: $a0
    nop                                           ; $65e3: $00
    cp a                                          ; $65e4: $bf
    nop                                           ; $65e5: $00
    ret nz                                        ; $65e6: $c0

    nop                                           ; $65e7: $00
    rst $38                                       ; $65e8: $ff
    nop                                           ; $65e9: $00
    add b                                         ; $65ea: $80
    nop                                           ; $65eb: $00
    cp a                                          ; $65ec: $bf
    nop                                           ; $65ed: $00
    xor b                                         ; $65ee: $a8
    nop                                           ; $65ef: $00
    rst $38                                       ; $65f0: $ff
    inc bc                                        ; $65f1: $03
    nop                                           ; $65f2: $00
    sub c                                         ; $65f3: $91
    rst $38                                       ; $65f4: $ff
    nop                                           ; $65f5: $00
    ld bc, $9700                                  ; $65f6: $01 $00 $97
    nop                                           ; $65f9: $00
    ld bc, $4700                                  ; $65fa: $01 $00 $47
    nop                                           ; $65fd: $00
    ld bc, $6b00                                  ; $65fe: $01 $00 $6b
    nop                                           ; $6601: $00
    ld bc, $ff00                                  ; $6602: $01 $00 $ff
    inc bc                                        ; $6605: $03
    nop                                           ; $6606: $00
    add c                                         ; $6607: $81
    rst $38                                       ; $6608: $ff
    inc bc                                        ; $6609: $03
    nop                                           ; $660a: $00
    cp c                                          ; $660b: $b9
    rst $38                                       ; $660c: $ff
    nop                                           ; $660d: $00
    xor e                                         ; $660e: $ab
    nop                                           ; $660f: $00
    inc bc                                        ; $6610: $03
    nop                                           ; $6611: $00
    inc bc                                        ; $6612: $03
    nop                                           ; $6613: $00
    ld bc, $0100                                  ; $6614: $01 $00 $01
    nop                                           ; $6617: $00
    ld bc, $0100                                  ; $6618: $01 $00 $01
    nop                                           ; $661b: $00
    ld bc, $0100                                  ; $661c: $01 $00 $01
    nop                                           ; $661f: $00
    ld bc, $0100                                  ; $6620: $01 $00 $01
    nop                                           ; $6623: $00
    ld bc, $0300                                  ; $6624: $01 $00 $03
    nop                                           ; $6627: $00
    inc bc                                        ; $6628: $03
    nop                                           ; $6629: $00
    ld bc, $0100                                  ; $662a: $01 $00 $01
    nop                                           ; $662d: $00
    ld bc, $5300                                  ; $662e: $01 $00 $53
    nop                                           ; $6631: $00
    ld d, a                                       ; $6632: $57
    nop                                           ; $6633: $00
    ld d, e                                       ; $6634: $53
    nop                                           ; $6635: $00
    ld e, [hl]                                    ; $6636: $5e
    nop                                           ; $6637: $00
    ld b, c                                       ; $6638: $41
    nop                                           ; $6639: $00
    ld a, a                                       ; $663a: $7f
    nop                                           ; $663b: $00
    ld b, l                                       ; $663c: $45
    nop                                           ; $663d: $00
    adc c                                         ; $663e: $89
    nop                                           ; $663f: $00
    pop bc                                        ; $6640: $c1
    nop                                           ; $6641: $00
    ld h, [hl]                                    ; $6642: $66
    nop                                           ; $6643: $00
    ccf                                           ; $6644: $3f
    dec bc                                        ; $6645: $0b
    nop                                           ; $6646: $00
    sub l                                         ; $6647: $95
    dec l                                         ; $6648: $2d
    nop                                           ; $6649: $00
    sbc [hl]                                      ; $664a: $9e
    nop                                           ; $664b: $00
    ld c, l                                       ; $664c: $4d
    nop                                           ; $664d: $00
    di                                            ; $664e: $f3
    nop                                           ; $664f: $00
    ret nz                                        ; $6650: $c0

    nop                                           ; $6651: $00
    rst $38                                       ; $6652: $ff
    nop                                           ; $6653: $00
    sub d                                         ; $6654: $92
    nop                                           ; $6655: $00
    ld [hl+], a                                   ; $6656: $22
    nop                                           ; $6657: $00
    or b                                          ; $6658: $b0
    nop                                           ; $6659: $00
    daa                                           ; $665a: $27
    nop                                           ; $665b: $00
    rra                                           ; $665c: $1f
    dec bc                                        ; $665d: $0b
    nop                                           ; $665e: $00
    sub l                                         ; $665f: $95
    ld a, [bc]                                    ; $6660: $0a
    nop                                           ; $6661: $00
    ld a, [bc]                                    ; $6662: $0a
    nop                                           ; $6663: $00
    ld a, [bc]                                    ; $6664: $0a
    nop                                           ; $6665: $00
    ld a, [bc]                                    ; $6666: $0a
    nop                                           ; $6667: $00
    rlca                                          ; $6668: $07

jr_0dc_6669:
    nop                                           ; $6669: $00
    ld c, $00                                     ; $666a: $0e $00
    ld b, $00                                     ; $666c: $06 $00
    ld c, $00                                     ; $666e: $0e $00
    inc b                                         ; $6670: $04
    nop                                           ; $6671: $00
    inc b                                         ; $6672: $04
    nop                                           ; $6673: $00
    ld [$000b], sp                                ; $6674: $08 $0b $00
    rst $38                                       ; $6677: $ff
    db $11                                        ; $6678: $11

    db $06, $f8, $07, $f3, $fe

    db $e4                                        ; $667e: $e4
    or $e3                                        ; $667f: $f6 $e3
    cp $e8                                        ; $6681: $fe $e8
    inc bc                                        ; $6683: $03
    di                                            ; $6684: $f3
    push af                                       ; $6685: $f5
    di                                            ; $6686: $f3
    db $fd                                        ; $6687: $fd
    di                                            ; $6688: $f3
    inc bc                                        ; $6689: $03
    ld [bc], a                                    ; $668a: $02
    inc bc                                        ; $668b: $03
    sbc [hl]                                      ; $668c: $9e
    inc b                                         ; $668d: $04
    rlca                                          ; $668e: $07
    dec b                                         ; $668f: $05
    rlca                                          ; $6690: $07
    ld [$0d0f], sp                                ; $6691: $08 $0f $0d
    rrca                                          ; $6694: $0f
    ld a, [de]                                    ; $6695: $1a
    rra                                           ; $6696: $1f
    inc d                                         ; $6697: $14
    rra                                           ; $6698: $1f
    add hl, bc                                    ; $6699: $09
    rrca                                          ; $669a: $0f
    dec d                                         ; $669b: $15
    rra                                           ; $669c: $1f
    dec sp                                        ; $669d: $3b
    ccf                                           ; $669e: $3f
    ld a, d                                       ; $669f: $7a
    ld a, a                                       ; $66a0: $7f
    ld e, h                                       ; $66a1: $5c
    ld a, a                                       ; $66a2: $7f
    cp a                                          ; $66a3: $bf
    rst $38                                       ; $66a4: $ff
    sbc a                                         ; $66a5: $9f
    rst $38                                       ; $66a6: $ff
    sbc l                                         ; $66a7: $9d
    rst $38                                       ; $66a8: $ff
    ld a, [hl-]                                   ; $66a9: $3a
    rst $38                                       ; $66aa: $ff
    ld [bc], a                                    ; $66ab: $02
    add sp, -$62                                  ; $66ac: $e8 $9e
    ld d, h                                       ; $66ae: $54
    db $fc                                        ; $66af: $fc
    adc d                                         ; $66b0: $8a
    cp $02                                        ; $66b1: $fe $02
    cp $15                                        ; $66b3: $fe $15
    rst $38                                       ; $66b5: $ff

jr_0dc_66b6:
    ld [bc], a                                    ; $66b6: $02
    rst $38                                       ; $66b7: $ff
    sub [hl]                                      ; $66b8: $96
    rst $38                                       ; $66b9: $ff
    and l                                         ; $66ba: $a5

jr_0dc_66bb:
    rst $38                                       ; $66bb: $ff
    rla                                           ; $66bc: $17
    rst $38                                       ; $66bd: $ff
    ld l, e                                       ; $66be: $6b

jr_0dc_66bf:
    rst $38                                       ; $66bf: $ff
    ld e, h                                       ; $66c0: $5c
    rst $38                                       ; $66c1: $ff
    or c                                          ; $66c2: $b1
    rst $38                                       ; $66c3: $ff
    ld [bc], a                                    ; $66c4: $02
    rst $38                                       ; $66c5: $ff
    db $fc                                        ; $66c6: $fc
    rst $38                                       ; $66c7: $ff
    jp hl                                         ; $66c8: $e9


    rst $38                                       ; $66c9: $ff
    ld de, $04ff                                  ; $66ca: $11 $ff $04
    db $10                                        ; $66cd: $10
    ld [bc], a                                    ; $66ce: $02
    nop                                           ; $66cf: $00
    inc b                                         ; $66d0: $04
    db $10                                        ; $66d1: $10
    ld [bc], a                                    ; $66d2: $02
    jr jr_0dc_6669                                ; $66d3: $18 $94

    inc c                                         ; $66d5: $0c
    inc e                                         ; $66d6: $1c
    inc d                                         ; $66d7: $14
    inc e                                         ; $66d8: $1c
    ld [de], a                                    ; $66d9: $12
    ld e, $12                                     ; $66da: $1e $12
    ld e, $12                                     ; $66dc: $1e $12
    ld e, $39                                     ; $66de: $1e $39
    rst $38                                       ; $66e0: $ff
    dec a                                         ; $66e1: $3d
    rst $38                                       ; $66e2: $ff
    dec sp                                        ; $66e3: $3b
    rst $38                                       ; $66e4: $ff
    ld a, a                                       ; $66e5: $7f
    rst $38                                       ; $66e6: $ff
    ei                                            ; $66e7: $fb
    rst $38                                       ; $66e8: $ff
    ld [bc], a                                    ; $66e9: $02
    add b                                         ; $66ea: $80
    sub h                                         ; $66eb: $94
    cp [hl]                                       ; $66ec: $be
    rst $38                                       ; $66ed: $ff
    sbc $ff                                       ; $66ee: $de $ff
    cp $ff                                        ; $66f0: $fe $ff
    rst $18                                       ; $66f2: $df
    rst $38                                       ; $66f3: $ff
    db $db                                        ; $66f4: $db
    cp a                                          ; $66f5: $bf
    ld a, h                                       ; $66f6: $7c
    ld a, a                                       ; $66f7: $7f
    ld a, [de]                                    ; $66f8: $1a
    rra                                           ; $66f9: $1f
    inc d                                         ; $66fa: $14
    rra                                           ; $66fb: $1f
    ld a, [de]                                    ; $66fc: $1a
    rra                                           ; $66fd: $1f
    inc c                                         ; $66fe: $0c
    rrca                                          ; $66ff: $0f

Jump_0dc_6700:
    ld [bc], a                                    ; $6700: $02
    rlca                                          ; $6701: $07
    add c                                         ; $6702: $81
    dec bc                                        ; $6703: $0b
    inc bc                                        ; $6704: $03
    rrca                                          ; $6705: $0f
    ld [bc], a                                    ; $6706: $02
    rlca                                          ; $6707: $07
    ld [bc], a                                    ; $6708: $02
    inc bc                                        ; $6709: $03
    sub a                                         ; $670a: $97
    jr nz, @+$7e                                  ; $670b: $20 $7c

    add b                                         ; $670d: $80
    db $fc                                        ; $670e: $fc
    nop                                           ; $670f: $00
    db $fc                                        ; $6710: $fc
    nop                                           ; $6711: $00
    db $fc                                        ; $6712: $fc
    ld a, b                                       ; $6713: $78
    db $fc                                        ; $6714: $fc
    ld a, d                                       ; $6715: $7a
    rst $38                                       ; $6716: $ff
    ld bc, $00ff                                  ; $6717: $01 $ff $00
    rst $38                                       ; $671a: $ff
    ld bc, $00ff                                  ; $671b: $01 $ff $00
    rst $38                                       ; $671e: $ff
    push bc                                       ; $671f: $c5
    rst $38                                       ; $6720: $ff
    ld d, e                                       ; $6721: $53
    inc bc                                        ; $6722: $03
    rst $38                                       ; $6723: $ff
    add h                                         ; $6724: $84
    adc $cf                                       ; $6725: $ce $cf
    ld c, [hl]                                    ; $6727: $4e
    rst $08                                       ; $6728: $cf
    ld [bc], a                                    ; $6729: $02
    add a                                         ; $672a: $87
    ld a, [bc]                                    ; $672b: $0a
    nop                                           ; $672c: $00
    add h                                         ; $672d: $84
    dec sp                                        ; $672e: $3b
    dec a                                         ; $672f: $3d
    ld e, $3e                                     ; $6730: $1e $3e
    ld [bc], a                                    ; $6732: $02
    jr c, jr_0dc_66b6                             ; $6733: $38 $81

    jr jr_0dc_673a                                ; $6735: $18 $03

    jr c, jr_0dc_66bb                             ; $6737: $38 $82

    db $10                                        ; $6739: $10

jr_0dc_673a:
    jr nc, jr_0dc_673e                            ; $673a: $30 $02

    jr nz, jr_0dc_66bf                            ; $673c: $20 $81

jr_0dc_673e:
    db $10                                        ; $673e: $10
    inc bc                                        ; $673f: $03
    jr nc, jr_0dc_6744                            ; $6740: $30 $02

    jr nz, @+$04                                  ; $6742: $20 $02

jr_0dc_6744:
    nop                                           ; $6744: $00
    rst $38                                       ; $6745: $ff

    db $11, $06, $f8, $07, $f3, $fe, $e4, $f6, $e3, $fe, $e9, $03, $f3, $f5, $f3, $fd
    db $f3, $02, $02, $03, $90, $04, $07, $05, $07, $08, $0f, $0d, $0f, $0a, $0f, $14
    db $1f, $19, $1f, $15, $1f, $02, $3f, $8c, $7a, $7f, $5c, $7f, $5f, $7f, $9f, $ff
    db $9d, $ff, $ba, $ff, $02, $e8, $9e, $54, $fc, $8a, $fe, $02, $fe, $15, $ff, $03
    db $ff, $96, $ff, $a5, $ff, $17, $ff, $6b, $ff, $5e, $ff, $b9, $ff, $f2, $ff, $0c
    db $ff, $f8, $ff, $11, $ff, $08, $10, $02, $18, $96, $0c, $1c, $14, $1c, $1a, $1e
    db $12, $1e, $12, $1e, $39, $ff, $3b, $ff, $3f, $ff, $3f, $ff, $fb, $ff, $db, $fd
    db $02, $00, $85, $9e, $ff, $be, $ff, $de, $03, $ff, $8b, $db, $bf, $dc, $bf, $78
    db $7f, $1c, $1f, $18, $1f, $1c, $03, $1f, $82, $0e, $0f, $02, $07, $04, $00, $9c
    db $20, $7c, $80, $fc, $00, $fc, $00, $fc, $78, $fc, $78, $fc, $00, $ff, $00, $ff
    db $00, $ff, $00, $ff, $00, $ff, $01, $ff, $fe, $ff, $0e, $0f, $02, $07, $0e, $00
    db $8a, $0f, $1f, $14, $1c, $0a, $1e, $16, $1e, $0c, $1c, $04, $18, $02, $10, $04
    db $00, $ff, $11, $06, $f8, $07, $f3, $fe, $e4, $f6, $e3, $fe, $e8, $03, $f3, $f5
    db $f3, $fd, $f3, $00, $02, $03, $9e, $04, $07, $05, $07, $08, $0f, $0d, $0f, $1a
    db $1f, $14, $1f, $09, $0f, $15, $1f, $3b, $3f, $3a, $3f, $5c, $7f, $5f, $7f, $9f
    db $ff, $9d, $ff, $9a, $ff, $02, $e8, $9e, $54, $fc, $8a, $fe, $02, $fe, $15, $ff
    db $02, $ff, $96, $ff, $a5, $ff, $17, $ff, $6b, $ff, $5c, $ff, $b1, $ff, $02, $ff
    db $fc, $ff, $e8, $ff, $10, $ff, $04, $10, $02, $00, $04, $10, $02, $18, $94, $14
    db $1c, $04, $1c, $12, $1e, $12, $1e, $11, $1f, $39, $ff, $3b, $ff, $7f, $ff, $fa
    db $fe, $bc, $fc, $02, $00, $96, $5e, $7f, $be, $ff, $9f, $ff, $ef, $ff, $fe, $9f
    db $da, $bf, $74, $5f, $3a, $3f, $14, $1f, $08, $0f, $06, $07, $02, $01, $06, $00
    db $97, $20, $7c, $80, $fc, $00, $fc, $78, $fc, $78, $fc, $00, $ff, $00, $ff, $00
    db $ff, $00, $ff, $00, $ff, $00, $ff, $03, $03, $ff, $84, $0c, $0f, $0e, $0f, $02
    db $07, $0a, $00, $04, $07, $86, $03, $07, $05, $07, $03, $07, $08, $06, $02, $04
    db $02, $00, $ff, $11, $06, $f8, $07, $f3, $fe, $e5, $f6, $e4, $fe, $e9, $03, $f4
    db $f5, $f4, $fd, $f4, $03, $02, $03, $9e, $04, $07, $09, $0f, $09, $0f, $0c, $0f
    db $18, $1f, $19, $1f, $0e, $0f, $15, $1f, $3b, $3f, $7c, $7f, $5f, $7f, $5f, $7f
    db $9f, $ff, $9d, $ff, $ba, $ff, $02, $e8, $9e, $54, $fc, $8a, $fe, $11, $ff, $05
    db $ff, $86, $ff, $d2, $ff, $4b, $ff, $95, $ff, $57, $ff, $ec, $ff, $03, $ff, $fe
    db $ff, $f8, $ff, $e8, $ff, $51, $ff, $04, $10, $02, $00, $04, $10, $02, $18, $8f
    db $0c, $1c, $14, $1c, $1a, $1e, $12, $1e, $12, $1e, $39, $ff, $3d, $ff, $7f, $03
    db $ff, $82, $3b, $ff, $02, $00, $83, $9e, $ff, $bd, $05, $ff, $8c, $d2, $bf, $da
    db $bf, $74, $7f, $1a, $1f, $14, $1f, $0e, $0f, $04, $07, $07, $00, $99, $7c, $80
    db $fc, $00, $fc, $38, $fc, $70, $fc, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $01
    db $ff, $07, $ff, $f8, $ff, $96, $9f, $04, $1f, $0c, $00, $8a, $3b, $3d, $1e, $3e
    db $18, $38, $18, $38, $28, $38, $02, $30, $06, $20, $04, $00, $ff, $11, $06, $f8
    db $07, $f3, $fe, $e4, $f6, $e3, $fe, $e9, $03, $f3, $f5, $f3, $fd, $f3, $03, $02
    db $03, $90, $04, $07, $05, $07, $08, $0f, $0d, $0f, $0a, $0f, $14, $1f, $19, $1f
    db $15, $1f, $02, $3f, $8c, $7a, $7f, $5c, $7f, $bf, $ff, $9f, $ff, $9d, $ff, $3a
    db $ff, $02, $e8, $9e, $54, $fc, $8a, $fe, $02, $fe, $15, $ff, $03, $ff, $96, $ff
    db $a5, $ff, $17, $ff, $6b, $ff, $5e, $ff, $b9, $ff, $f2, $ff, $0c, $ff, $f9, $ff
    db $11, $ff, $08, $10, $02, $18, $91, $0c, $1c, $14, $1c, $14, $1c, $12, $1e, $12
    db $1e, $3a, $fe, $39, $ff, $3d, $ff, $3b, $03, $ff, $82, $bb, $fd, $02, $80, $95
    db $de, $ff, $fc, $ff, $fe, $ff, $df, $ff, $df, $bf, $7a, $7f, $14, $1f, $2a, $3f
    db $34, $3f, $1a, $1f, $0e, $03, $0f, $02, $07, $02, $03, $02, $00, $97, $20, $7c
    db $80, $fc, $00, $fc, $00, $fc, $78, $fc, $78, $fc, $00, $ff, $00, $ff, $00, $ff
    db $00, $ff, $00, $ff, $03, $03, $ff, $82, $43, $c3, $02, $80, $0e, $00, $89, $1b
    db $3d, $1e, $3e, $08, $38, $08, $38, $18, $03, $38, $82, $10, $30, $02, $20, $04
    db $00, $ff, $11, $06, $f8, $07, $f3, $fe, $e4, $f5, $e3, $fd, $e7, $03, $f3, $f5
    db $f3, $fd, $f3, $03, $02, $01, $9e, $02, $03, $02, $03, $04, $07, $06, $07, $0d
    db $0f, $0a, $0f, $04, $07, $0a, $0f, $1d, $1f, $2d, $3f, $4e, $7f, $4f, $7f, $4f
    db $7f, $8e, $ff, $9d, $ff, $02, $74, $9e, $aa, $fe, $45, $ff, $81, $ff, $0a, $ff
    db $81, $ff, $4b, $ff, $52, $ff, $8b, $ff, $b5, $ff, $ae, $ff, $58, $ff, $01, $ff
    db $fe, $ff, $f4, $ff, $88, $ff, $02, $20, $02, $30, $81, $10, $03, $30, $02, $20
    db $02, $30, $94, $18, $38, $28, $38, $14, $3c, $14, $3c, $32, $3e, $32, $3e, $32
    db $fe, $3a, $fe, $3d, $ff, $f9, $ff, $02, $00, $86, $de, $ff, $fe, $ff, $5f, $7f
    db $02, $3f, $8b, $18, $1f, $1c, $1f, $1a, $1f, $1c, $1f, $18, $1f, $0c, $05, $0f
    db $82, $0c, $0f, $02, $07, $02, $03, $98, $20, $fc, $80, $fc, $00, $fc, $78, $fc
    db $7b, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $01, $ff
    db $02, $fe, $04, $c0, $02, $80, $08, $00, $8e, $37, $3f, $1f, $39, $1b, $3d, $2e
    db $3a, $1c, $3c, $28, $38, $10, $30, $02, $20, $08, $00, $ff, $11, $06, $f8, $07
    db $f3, $fe, $e5, $f6, $e4, $fe, $e9, $03, $f4, $f5, $f4, $fd, $f4, $03, $02, $03
    db $9e, $04, $07, $09, $0f, $09, $0f, $0c, $0f, $18, $1f, $19, $1f, $0e, $0f, $15
    db $1f, $3b, $3f, $7c, $7f, $5f, $7f, $bf, $ff, $9f, $ff, $9a, $ff, $3d, $ff, $02
    db $e8, $9e, $54, $fc, $8a, $fe, $11, $ff, $05, $ff, $86, $ff, $d2, $ff, $4b, $ff
    db $95, $ff, $57, $ff, $ec, $ff, $03, $ff, $fe, $ff, $f8, $ff, $e9, $ff, $51, $ff
    db $04, $10, $02, $00, $04, $10, $02, $18, $8f, $0c, $1c, $14, $1c, $14, $1c, $12
    db $1e, $12, $1e, $3a, $fe, $39, $ff, $3d, $05, $ff, $02, $80, $81, $bd, $05, $ff
    db $8c, $d8, $ff, $d8, $bf, $78, $7f, $1c, $1f, $18, $1f, $16, $1f, $02, $0f, $81
    db $06, $05, $07, $02, $03, $03, $00, $99, $7c, $00, $fc, $00, $fc, $70, $fc, $38
    db $fc, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $81, $ff, $7f, $ff, $a7
    db $e7, $04, $e0, $0c, $00, $8a, $0b, $3d, $1b, $3d, $2e, $3e, $18, $38, $28, $38
    db $02, $30, $04, $20, $06, $00, $ff, $11, $06, $f8, $07, $f3, $fe, $e4, $f5, $e3
    db $fd, $e6, $03, $f3, $f5, $f3, $fd, $f3, $03, $02, $01, $8b, $02, $03, $05, $07
    db $05, $07, $0e, $0f, $0b, $0f, $0e, $03, $0f, $90, $12, $1f, $33, $3f, $39, $3f
    db $4c, $7f, $4e, $7f, $5f, $7f, $9e, $ff, $dd, $ff, $02, $fc, $9e, $0a, $fe, $dd
    db $b7, $12, $ef, $fe, $cf, $fd, $43, $ff, $4b, $b5, $ff, $32, $cf, $85, $ff, $d3
    db $ff, $6a, $ff, $fc, $ff, $79, $ff, $7a, $ff, $cf, $fd, $04, $20, $85, $10, $30
    db $10, $30, $10, $03, $30, $94, $08, $38, $0c, $3c, $1c, $3c, $32, $3e, $32, $3e
    db $3a, $3e, $39, $3f, $bb, $ff, $3f, $ff, $b9, $ff, $02, $00, $92, $fe, $ff, $9d
    db $ff, $fc, $ff, $f9, $bf, $fc, $9f, $b9, $df, $78, $7f, $31, $3f, $1c, $1f, $02
    db $07, $82, $06, $07, $02, $0f, $84, $19, $1f, $1d, $1f, $02, $0e, $81, $e4, $05
    db $fc, $8e, $fb, $fd, $de, $ef, $bc, $ff, $8e, $ff, $bf, $fd, $b6, $ff, $fc, $ff
    db $02, $cf, $86, $86, $87, $4f, $cf, $ce, $cf, $02, $87, $02, $01, $06, $00, $02
    db $3f, $8a, $1f, $3d, $1f, $39, $1d, $3b, $1e, $3e, $1c, $3c, $02, $38, $04, $20
    db $02, $30, $84, $08, $38, $28, $38, $02, $30, $ff

    ld de, $f806                                  ; $6ca0: $11 $06 $f8
    rlca                                          ; $6ca3: $07
    di                                            ; $6ca4: $f3
    cp $e4                                        ; $6ca5: $fe $e4
    push af                                       ; $6ca7: $f5
    db $e3                                        ; $6ca8: $e3
    db $fd                                        ; $6ca9: $fd
    rst $20                                       ; $6caa: $e7
    inc bc                                        ; $6cab: $03
    di                                            ; $6cac: $f3
    push af                                       ; $6cad: $f5
    di                                            ; $6cae: $f3
    db $fd                                        ; $6caf: $fd
    di                                            ; $6cb0: $f3
    inc bc                                        ; $6cb1: $03
    ld [bc], a                                    ; $6cb2: $02
    ld bc, $0281                                  ; $6cb3: $01 $81 $02
    inc bc                                        ; $6cb6: $03
    inc bc                                        ; $6cb7: $03
    add a                                         ; $6cb8: $87
    dec b                                         ; $6cb9: $05
    rlca                                          ; $6cba: $07
    ld b, $07                                     ; $6cbb: $06 $07
    dec bc                                        ; $6cbd: $0b
    rrca                                          ; $6cbe: $0f
    ld a, [bc]                                    ; $6cbf: $0a
    inc bc                                        ; $6cc0: $03
    rrca                                          ; $6cc1: $0f
    sub b                                         ; $6cc2: $90
    ld [de], a                                    ; $6cc3: $12
    rra                                           ; $6cc4: $1f
    inc sp                                        ; $6cc5: $33
    ccf                                           ; $6cc6: $3f
    add hl, sp                                    ; $6cc7: $39
    ccf                                           ; $6cc8: $3f
    ld c, h                                       ; $6cc9: $4c
    ld a, a                                       ; $6cca: $7f
    ld c, [hl]                                    ; $6ccb: $4e
    ld a, a                                       ; $6ccc: $7f
    ld e, a                                       ; $6ccd: $5f
    ld a, a                                       ; $6cce: $7f
    sbc a                                         ; $6ccf: $9f
    rst $38                                       ; $6cd0: $ff
    sbc $ff                                       ; $6cd1: $de $ff
    ld [bc], a                                    ; $6cd3: $02
    db $fc                                        ; $6cd4: $fc
    sbc [hl]                                      ; $6cd5: $9e
    ld a, [bc]                                    ; $6cd6: $0a
    cp $dd                                        ; $6cd7: $fe $dd
    or a                                          ; $6cd9: $b7
    inc hl                                        ; $6cda: $23
    rst $18                                       ; $6cdb: $df
    cp $cf                                        ; $6cdc: $fe $cf
    db $fd                                        ; $6cde: $fd
    ld b, e                                       ; $6cdf: $43
    rst $38                                       ; $6ce0: $ff
    ld c, e                                       ; $6ce1: $4b
    or l                                          ; $6ce2: $b5
    rst $38                                       ; $6ce3: $ff
    ld [hl-], a                                   ; $6ce4: $32
    rst $08                                       ; $6ce5: $cf
    add l                                         ; $6ce6: $85
    rst $38                                       ; $6ce7: $ff
    jp $aaff                                      ; $6ce8: $c3 $ff $aa


jr_0dc_6ceb:
    rst $38                                       ; $6ceb: $ff
    db $f4                                        ; $6cec: $f4
    rst $38                                       ; $6ced: $ff
    ld a, c                                       ; $6cee: $79
    rst $38                                       ; $6cef: $ff
    ld a, d                                       ; $6cf0: $7a
    rst $38                                       ; $6cf1: $ff
    rst $08                                       ; $6cf2: $cf
    db $fd                                        ; $6cf3: $fd
    inc b                                         ; $6cf4: $04
    jr nz, @-$7b                                  ; $6cf5: $20 $83

    db $10                                        ; $6cf7: $10
    jr nc, jr_0dc_6d0a                            ; $6cf8: $30 $10

    inc bc                                        ; $6cfa: $03
    jr nc, @-$6b                                  ; $6cfb: $30 $93

    ld [$0c38], sp                                ; $6cfd: $08 $38 $0c
    inc a                                         ; $6d00: $3c
    inc e                                         ; $6d01: $1c
    inc a                                         ; $6d02: $3c
    ld [hl-], a                                   ; $6d03: $32
    ld a, $32                                     ; $6d04: $3e $32
    ld a, $3b                                     ; $6d06: $3e $3b
    ccf                                           ; $6d08: $3f
    add hl, sp                                    ; $6d09: $39

jr_0dc_6d0a:
    ccf                                           ; $6d0a: $3f
    cp e                                          ; $6d0b: $bb
    rst $38                                       ; $6d0c: $ff
    ccf                                           ; $6d0d: $3f
    rst $38                                       ; $6d0e: $ff
    cp c                                          ; $6d0f: $b9
    ld [bc], a                                    ; $6d10: $02
    rst $38                                       ; $6d11: $ff
    add c                                         ; $6d12: $81
    ld a, a                                       ; $6d13: $7f
    ld [bc], a                                    ; $6d14: $02
    nop                                           ; $6d15: $00
    sub d                                         ; $6d16: $92
    db $fd                                        ; $6d17: $fd
    rst $38                                       ; $6d18: $ff
    sbc h                                         ; $6d19: $9c
    rst $38                                       ; $6d1a: $ff
    db $fd                                        ; $6d1b: $fd
    rst $38                                       ; $6d1c: $ff
    call c, $e9bf                                 ; $6d1d: $dc $bf $e9
    sbc a                                         ; $6d20: $9f
    ld hl, sp-$61                                 ; $6d21: $f8 $9f
    ld a, c                                       ; $6d23: $79
    ld a, a                                       ; $6d24: $7f
    jr nc, @+$41                                  ; $6d25: $30 $3f

    dec e                                         ; $6d27: $1d
    rra                                           ; $6d28: $1f
    inc b                                         ; $6d29: $04
    rlca                                          ; $6d2a: $07
    add h                                         ; $6d2b: $84
    inc c                                         ; $6d2c: $0c
    rrca                                          ; $6d2d: $0f
    dec bc                                        ; $6d2e: $0b
    rrca                                          ; $6d2f: $0f
    ld [bc], a                                    ; $6d30: $02
    rlca                                          ; $6d31: $07
    ld [bc], a                                    ; $6d32: $02
    nop                                           ; $6d33: $00
    add c                                         ; $6d34: $81
    db $e4                                        ; $6d35: $e4
    dec b                                         ; $6d36: $05
    db $fc                                        ; $6d37: $fc
    adc [hl]                                      ; $6d38: $8e
    ld hl, sp-$04                                 ; $6d39: $f8 $fc
    sbc $ef                                       ; $6d3b: $de $ef
    cp h                                          ; $6d3d: $bc
    rst $38                                       ; $6d3e: $ff
    adc l                                         ; $6d3f: $8d
    rst $38                                       ; $6d40: $ff
    cp a                                          ; $6d41: $bf
    cp $b5                                        ; $6d42: $fe $b5
    rst $38                                       ; $6d44: $ff
    db $fc                                        ; $6d45: $fc
    rst $38                                       ; $6d46: $ff
    ld [bc], a                                    ; $6d47: $02
    rst $28                                       ; $6d48: $ef
    ld [bc], a                                    ; $6d49: $02
    rst $08                                       ; $6d4a: $cf
    add d                                         ; $6d4b: $82
    adc $cf                                       ; $6d4c: $ce $cf
    ld [bc], a                                    ; $6d4e: $02
    rst $00                                       ; $6d4f: $c7
    ld [bc], a                                    ; $6d50: $02
    add c                                         ; $6d51: $81
    ld a, [bc]                                    ; $6d52: $0a
    nop                                           ; $6d53: $00
    add [hl]                                      ; $6d54: $86
    rra                                           ; $6d55: $1f
    dec a                                         ; $6d56: $3d
    rra                                           ; $6d57: $1f
    add hl, sp                                    ; $6d58: $39
    dec e                                         ; $6d59: $1d
    dec sp                                        ; $6d5a: $3b
    ld [bc], a                                    ; $6d5b: $02
    ld a, $82                                     ; $6d5c: $3e $82
    inc e                                         ; $6d5e: $1c
    inc a                                         ; $6d5f: $3c
    ld [bc], a                                    ; $6d60: $02
    jr c, jr_0dc_6d65                             ; $6d61: $38 $02

    jr nz, jr_0dc_6d67                            ; $6d63: $20 $02

jr_0dc_6d65:
    jr nc, jr_0dc_6ceb                            ; $6d65: $30 $84

jr_0dc_6d67:
    ld [$2838], sp                                ; $6d67: $08 $38 $28
    jr c, jr_0dc_6d6e                             ; $6d6a: $38 $02

    jr nc, jr_0dc_6d70                            ; $6d6c: $30 $02

jr_0dc_6d6e:
    nop                                           ; $6d6e: $00
    rst $38                                       ; $6d6f: $ff

jr_0dc_6d70:
    ld de, $f806                                  ; $6d70: $11 $06 $f8
    rlca                                          ; $6d73: $07
    di                                            ; $6d74: $f3
    cp $e4                                        ; $6d75: $fe $e4
    push af                                       ; $6d77: $f5
    db $e3                                        ; $6d78: $e3
    db $fd                                        ; $6d79: $fd
    and $03                                       ; $6d7a: $e6 $03
    di                                            ; $6d7c: $f3
    push af                                       ; $6d7d: $f5
    di                                            ; $6d7e: $f3
    db $fd                                        ; $6d7f: $fd
    di                                            ; $6d80: $f3
    inc bc                                        ; $6d81: $03
    ld [bc], a                                    ; $6d82: $02
    ld bc, $0302                                  ; $6d83: $01 $02 $03
    add h                                         ; $6d86: $84
    inc b                                         ; $6d87: $04
    rlca                                          ; $6d88: $07
    dec b                                         ; $6d89: $05
    rlca                                          ; $6d8a: $07
    ld [bc], a                                    ; $6d8b: $02
    rrca                                          ; $6d8c: $0f
    sub [hl]                                      ; $6d8d: $96
    dec bc                                        ; $6d8e: $0b
    rrca                                          ; $6d8f: $0f
    dec bc                                        ; $6d90: $0b
    rrca                                          ; $6d91: $0f
    ld c, $0f                                     ; $6d92: $0e $0f
    inc de                                        ; $6d94: $13
    rra                                           ; $6d95: $1f
    inc sp                                        ; $6d96: $33
    ccf                                           ; $6d97: $3f
    add hl, sp                                    ; $6d98: $39
    ccf                                           ; $6d99: $3f
    inc l                                         ; $6d9a: $2c
    ccf                                           ; $6d9b: $3f
    ld c, [hl]                                    ; $6d9c: $4e
    ld a, a                                       ; $6d9d: $7f
    ld e, a                                       ; $6d9e: $5f
    ld a, a                                       ; $6d9f: $7f
    sbc [hl]                                      ; $6da0: $9e
    rst $38                                       ; $6da1: $ff
    sbc a                                         ; $6da2: $9f
    rst $38                                       ; $6da3: $ff
    ld [bc], a                                    ; $6da4: $02
    db $fc                                        ; $6da5: $fc
    sbc [hl]                                      ; $6da6: $9e
    ld a, [bc]                                    ; $6da7: $0a
    cp $b1                                        ; $6da8: $fe $b1
    ld l, a                                       ; $6daa: $6f
    ld h, $df                                     ; $6dab: $26 $df
    cp $9f                                        ; $6dad: $fe $9f
    rst $38                                       ; $6daf: $ff
    inc bc                                        ; $6db0: $03
    ld sp, hl                                     ; $6db1: $f9
    sub a                                         ; $6db2: $97
    ld l, e                                       ; $6db3: $6b
    rst $38                                       ; $6db4: $ff
    ld [hl], h                                    ; $6db5: $74
    adc a                                         ; $6db6: $8f
    dec bc                                        ; $6db7: $0b
    rst $38                                       ; $6db8: $ff
    pop de                                        ; $6db9: $d1

jr_0dc_6dba:
    rst $38                                       ; $6dba: $ff
    ld l, d                                       ; $6dbb: $6a
    rst $38                                       ; $6dbc: $ff
    db $fc                                        ; $6dbd: $fc
    rst $38                                       ; $6dbe: $ff
    ld a, l                                       ; $6dbf: $7d
    rst $38                                       ; $6dc0: $ff
    ld a, d                                       ; $6dc1: $7a
    rst $38                                       ; $6dc2: $ff
    set 7, l                                      ; $6dc3: $cb $fd
    inc b                                         ; $6dc5: $04
    jr nz, @-$79                                  ; $6dc6: $20 $85

    db $10                                        ; $6dc8: $10
    jr nc, jr_0dc_6ddb                            ; $6dc9: $30 $10

    jr nc, jr_0dc_6ddd                            ; $6dcb: $30 $10

    inc bc                                        ; $6dcd: $03
    jr nc, @-$6a                                  ; $6dce: $30 $94

    ld [$1c38], sp                                ; $6dd0: $08 $38 $1c
    inc a                                         ; $6dd3: $3c
    inc d                                         ; $6dd4: $14
    inc a                                         ; $6dd5: $3c
    ld [hl-], a                                   ; $6dd6: $32
    ld a, $3a                                     ; $6dd7: $3e $3a
    ld a, $3b                                     ; $6dd9: $3e $3b

jr_0dc_6ddb:
    ccf                                           ; $6ddb: $3f
    dec a                                         ; $6ddc: $3d

jr_0dc_6ddd:
    ccf                                           ; $6ddd: $3f
    cp a                                          ; $6dde: $bf
    rst $38                                       ; $6ddf: $ff
    ccf                                           ; $6de0: $3f
    rst $38                                       ; $6de1: $ff
    ld e, l                                       ; $6de2: $5d
    rst $38                                       ; $6de3: $ff
    ld [bc], a                                    ; $6de4: $02
    nop                                           ; $6de5: $00
    sub d                                         ; $6de6: $92
    adc $ff                                       ; $6de7: $ce $ff
    db $fd                                        ; $6de9: $fd
    rst $38                                       ; $6dea: $ff
    adc h                                         ; $6deb: $8c
    rst $38                                       ; $6dec: $ff
    cp l                                          ; $6ded: $bd
    rst $38                                       ; $6dee: $ff
    db $fc                                        ; $6def: $fc
    adc a                                         ; $6df0: $8f
    db $fd                                        ; $6df1: $fd
    add a                                         ; $6df2: $87
    ld a, b                                       ; $6df3: $78
    ld c, a                                       ; $6df4: $4f
    add hl, sp                                    ; $6df5: $39
    ccf                                           ; $6df6: $3f
    inc e                                         ; $6df7: $1c
    rra                                           ; $6df8: $1f
    ld b, $07                                     ; $6df9: $06 $07
    add c                                         ; $6dfb: $81
    inc b                                         ; $6dfc: $04
    inc bc                                        ; $6dfd: $03
    rlca                                          ; $6dfe: $07
    ld [bc], a                                    ; $6dff: $02
    nop                                           ; $6e00: $00
    add c                                         ; $6e01: $81
    db $e4                                        ; $6e02: $e4
    dec b                                         ; $6e03: $05
    db $fc                                        ; $6e04: $fc
    sub d                                         ; $6e05: $92
    rst $38                                       ; $6e06: $ff
    cp $df                                        ; $6e07: $fe $df
    rst $28                                       ; $6e09: $ef
    ld a, [$82ff]                                 ; $6e0a: $fa $ff $82
    rst $38                                       ; $6e0d: $ff
    or e                                          ; $6e0e: $b3
    rst $38                                       ; $6e0f: $ff
    ld a, [$fbff]                                 ; $6e10: $fa $ff $fb
    rst $38                                       ; $6e13: $ff
    db $eb                                        ; $6e14: $eb
    rst $28                                       ; $6e15: $ef
    call Call_000_02cf                            ; $6e16: $cd $cf $02
    rst $00                                       ; $6e19: $c7
    add d                                         ; $6e1a: $82
    add $c7                                       ; $6e1b: $c6 $c7

jr_0dc_6e1d:
    ld [bc], a                                    ; $6e1d: $02
    add a                                         ; $6e1e: $87
    ld [bc], a                                    ; $6e1f: $02
    rlca                                          ; $6e20: $07
    ld b, $00                                     ; $6e21: $06 $00
    adc [hl]                                      ; $6e23: $8e
    ccf                                           ; $6e24: $3f
    dec a                                         ; $6e25: $3d
    rra                                           ; $6e26: $1f
    dec a                                         ; $6e27: $3d
    ld c, $3e                                     ; $6e28: $0e $3e
    ld l, $3e                                     ; $6e2a: $2e $3e
    inc a                                         ; $6e2c: $3c
    inc e                                         ; $6e2d: $1c
    inc l                                         ; $6e2e: $2c
    inc a                                         ; $6e2f: $3c
    inc e                                         ; $6e30: $1c
    inc a                                         ; $6e31: $3c
    ld [bc], a                                    ; $6e32: $02
    jr c, jr_0dc_6e37                             ; $6e33: $38 $02

    jr nz, jr_0dc_6e39                            ; $6e35: $20 $02

jr_0dc_6e37:
    jr nc, jr_0dc_6dba                            ; $6e37: $30 $81

jr_0dc_6e39:
    ld [$3803], sp                                ; $6e39: $08 $03 $38
    ld [bc], a                                    ; $6e3c: $02
    jr nc, @+$01                                  ; $6e3d: $30 $ff

    ld de, $f806                                  ; $6e3f: $11 $06 $f8
    rlca                                          ; $6e42: $07
    di                                            ; $6e43: $f3
    cp $e5                                        ; $6e44: $fe $e5
    push af                                       ; $6e46: $f5
    db $e4                                        ; $6e47: $e4
    db $fd                                        ; $6e48: $fd
    rst $20                                       ; $6e49: $e7
    inc bc                                        ; $6e4a: $03
    db $f4                                        ; $6e4b: $f4
    push af                                       ; $6e4c: $f5
    db $f4                                        ; $6e4d: $f4
    db $fd                                        ; $6e4e: $fd
    db $f4                                        ; $6e4f: $f4
    inc bc                                        ; $6e50: $03
    ld [bc], a                                    ; $6e51: $02
    ld bc, $0302                                  ; $6e52: $01 $02 $03
    sbc h                                         ; $6e55: $9c
    inc b                                         ; $6e56: $04
    rlca                                          ; $6e57: $07
    dec c                                         ; $6e58: $0d
    rrca                                          ; $6e59: $0f
    dec bc                                        ; $6e5a: $0b
    rrca                                          ; $6e5b: $0f
    dec bc                                        ; $6e5c: $0b
    rrca                                          ; $6e5d: $0f
    dec bc                                        ; $6e5e: $0b
    rrca                                          ; $6e5f: $0f
    ld c, $0f                                     ; $6e60: $0e $0f
    inc de                                        ; $6e62: $13
    rra                                           ; $6e63: $1f
    inc sp                                        ; $6e64: $33
    ccf                                           ; $6e65: $3f
    add hl, hl                                    ; $6e66: $29
    ccf                                           ; $6e67: $3f
    ld c, h                                       ; $6e68: $4c
    ld a, a                                       ; $6e69: $7f
    ld e, [hl]                                    ; $6e6a: $5e
    ld a, a                                       ; $6e6b: $7f
    sbc a                                         ; $6e6c: $9f
    rst $38                                       ; $6e6d: $ff
    sbc [hl]                                      ; $6e6e: $9e
    rst $38                                       ; $6e6f: $ff
    rst $18                                       ; $6e70: $df
    rst $38                                       ; $6e71: $ff
    ld [bc], a                                    ; $6e72: $02
    db $fc                                        ; $6e73: $fc
    sbc [hl]                                      ; $6e74: $9e
    ld a, [bc]                                    ; $6e75: $0a
    cp $b1                                        ; $6e76: $fe $b1
    ld l, a                                       ; $6e78: $6f
    ld h, $df                                     ; $6e79: $26 $df
    cp $9f                                        ; $6e7b: $fe $9f
    rst $38                                       ; $6e7d: $ff
    inc bc                                        ; $6e7e: $03
    ld sp, hl                                     ; $6e7f: $f9
    sub a                                         ; $6e80: $97
    ld l, e                                       ; $6e81: $6b
    rst $38                                       ; $6e82: $ff
    ld [hl], h                                    ; $6e83: $74
    adc a                                         ; $6e84: $8f
    dec bc                                        ; $6e85: $0b
    rst $38                                       ; $6e86: $ff
    pop de                                        ; $6e87: $d1

jr_0dc_6e88:
    rst $38                                       ; $6e88: $ff
    ld l, d                                       ; $6e89: $6a
    rst $38                                       ; $6e8a: $ff
    db $f4                                        ; $6e8b: $f4
    rst $38                                       ; $6e8c: $ff
    ld a, l                                       ; $6e8d: $7d
    rst $38                                       ; $6e8e: $ff
    ld l, e                                       ; $6e8f: $6b
    rst $38                                       ; $6e90: $ff
    rst $00                                       ; $6e91: $c7
    db $fd                                        ; $6e92: $fd
    ld [bc], a                                    ; $6e93: $02
    jr nz, jr_0dc_6e98                            ; $6e94: $20 $02

    jr nc, jr_0dc_6e1d                            ; $6e96: $30 $85

jr_0dc_6e98:
    db $10                                        ; $6e98: $10
    jr nc, jr_0dc_6eab                            ; $6e99: $30 $10

    jr nc, jr_0dc_6ead                            ; $6e9b: $30 $10

    inc bc                                        ; $6e9d: $03
    jr nc, @-$6a                                  ; $6e9e: $30 $94

    ld [$0c38], sp                                ; $6ea0: $08 $38 $0c
    inc a                                         ; $6ea3: $3c
    inc d                                         ; $6ea4: $14
    inc a                                         ; $6ea5: $3c
    ld [hl-], a                                   ; $6ea6: $32
    ld a, $3a                                     ; $6ea7: $3e $3a
    ld a, $3b                                     ; $6ea9: $3e $3b

jr_0dc_6eab:
    ccf                                           ; $6eab: $3f
    dec a                                         ; $6eac: $3d

jr_0dc_6ead:
    ccf                                           ; $6ead: $3f
    cp a                                          ; $6eae: $bf
    rst $38                                       ; $6eaf: $ff
    dec a                                         ; $6eb0: $3d
    rst $38                                       ; $6eb1: $ff
    cp a                                          ; $6eb2: $bf
    rst $38                                       ; $6eb3: $ff
    ld [bc], a                                    ; $6eb4: $02
    nop                                           ; $6eb5: $00
    sub b                                         ; $6eb6: $90
    db $fc                                        ; $6eb7: $fc
    rst $38                                       ; $6eb8: $ff
    sbc l                                         ; $6eb9: $9d
    rst $38                                       ; $6eba: $ff
    adc h                                         ; $6ebb: $8c
    rst $38                                       ; $6ebc: $ff
    db $ed                                        ; $6ebd: $ed
    cp a                                          ; $6ebe: $bf
    db $f4                                        ; $6ebf: $f4
    adc a                                         ; $6ec0: $8f
    cp c                                          ; $6ec1: $b9
    rst $08                                       ; $6ec2: $cf
    ld a, b                                       ; $6ec3: $78
    ld a, a                                       ; $6ec4: $7f
    add hl, de                                    ; $6ec5: $19
    rra                                           ; $6ec6: $1f
    ld [bc], a                                    ; $6ec7: $02
    rrca                                          ; $6ec8: $0f
    ld [bc], a                                    ; $6ec9: $02
    rlca                                          ; $6eca: $07
    add c                                         ; $6ecb: $81
    ld b, $03                                     ; $6ecc: $06 $03
    rlca                                          ; $6ece: $07
    ld b, $00                                     ; $6ecf: $06 $00
    add c                                         ; $6ed1: $81
    db $e4                                        ; $6ed2: $e4
    dec b                                         ; $6ed3: $05
    db $fc                                        ; $6ed4: $fc
    sub b                                         ; $6ed5: $90
    rst $08                                       ; $6ed6: $cf
    db $fd                                        ; $6ed7: $fd
    cp $ef                                        ; $6ed8: $fe $ef
    add [hl]                                      ; $6eda: $86
    rst $38                                       ; $6edb: $ff
    sub a                                         ; $6edc: $97
    rst $38                                       ; $6edd: $ff
    cp e                                          ; $6ede: $bb
    cp $bb                                        ; $6edf: $fe $bb
    rst $38                                       ; $6ee1: $ff
    ld c, a                                       ; $6ee2: $4f
    rst $08                                       ; $6ee3: $cf
    call nz, $02c7                                ; $6ee4: $c4 $c7 $02

jr_0dc_6ee7:
    rst $08                                       ; $6ee7: $cf
    add d                                         ; $6ee8: $82
    adc h                                         ; $6ee9: $8c
    adc a                                         ; $6eea: $8f
    ld [bc], a                                    ; $6eeb: $02
    rrca                                          ; $6eec: $0f
    ld [bc], a                                    ; $6eed: $02
    inc bc                                        ; $6eee: $03
    ld [$8800], sp                                ; $6eef: $08 $00 $88
    rra                                           ; $6ef2: $1f
    dec a                                         ; $6ef3: $3d
    rra                                           ; $6ef4: $1f
    add hl, sp                                    ; $6ef5: $39
    dec de                                        ; $6ef6: $1b
    dec a                                         ; $6ef7: $3d
    ld e, $3e                                     ; $6ef8: $1e $3e
    ld [bc], a                                    ; $6efa: $02
    inc a                                         ; $6efb: $3c
    add d                                         ; $6efc: $82

jr_0dc_6efd:
    inc e                                         ; $6efd: $1c
    inc a                                         ; $6efe: $3c
    ld [bc], a                                    ; $6eff: $02
    jr nc, @+$06                                  ; $6f00: $30 $04

    jr nz, jr_0dc_6e88                            ; $6f02: $20 $84

    db $10                                        ; $6f04: $10
    jr nc, jr_0dc_6f1f                            ; $6f05: $30 $18

    jr c, jr_0dc_6f0b                             ; $6f07: $38 $02

    jr nc, jr_0dc_6f0d                            ; $6f09: $30 $02

jr_0dc_6f0b:
    nop                                           ; $6f0b: $00
    rst $38                                       ; $6f0c: $ff

jr_0dc_6f0d:
    ld de, $f806                                  ; $6f0d: $11 $06 $f8
    rlca                                          ; $6f10: $07
    di                                            ; $6f11: $f3
    cp $e4                                        ; $6f12: $fe $e4
    push af                                       ; $6f14: $f5
    db $e3                                        ; $6f15: $e3
    db $fd                                        ; $6f16: $fd
    rst $20                                       ; $6f17: $e7
    inc bc                                        ; $6f18: $03
    di                                            ; $6f19: $f3
    push af                                       ; $6f1a: $f5
    di                                            ; $6f1b: $f3
    db $fd                                        ; $6f1c: $fd
    di                                            ; $6f1d: $f3
    inc bc                                        ; $6f1e: $03

jr_0dc_6f1f:
    ld [bc], a                                    ; $6f1f: $02
    ld bc, $0281                                  ; $6f20: $01 $81 $02
    inc bc                                        ; $6f23: $03
    inc bc                                        ; $6f24: $03
    add a                                         ; $6f25: $87
    dec b                                         ; $6f26: $05
    rlca                                          ; $6f27: $07
    ld b, $07                                     ; $6f28: $06 $07
    dec bc                                        ; $6f2a: $0b
    rrca                                          ; $6f2b: $0f
    ld a, [bc]                                    ; $6f2c: $0a
    inc bc                                        ; $6f2d: $03
    rrca                                          ; $6f2e: $0f
    sub b                                         ; $6f2f: $90
    ld [de], a                                    ; $6f30: $12
    rra                                           ; $6f31: $1f
    inc sp                                        ; $6f32: $33
    ccf                                           ; $6f33: $3f
    add hl, sp                                    ; $6f34: $39
    ccf                                           ; $6f35: $3f
    ld c, h                                       ; $6f36: $4c
    ld a, a                                       ; $6f37: $7f
    ld c, [hl]                                    ; $6f38: $4e
    ld a, a                                       ; $6f39: $7f
    rst $18                                       ; $6f3a: $df
    rst $38                                       ; $6f3b: $ff
    sbc [hl]                                      ; $6f3c: $9e
    rst $38                                       ; $6f3d: $ff
    db $dd                                        ; $6f3e: $dd
    rst $38                                       ; $6f3f: $ff
    ld [bc], a                                    ; $6f40: $02
    db $fc                                        ; $6f41: $fc
    sbc [hl]                                      ; $6f42: $9e
    ld a, [bc]                                    ; $6f43: $0a
    cp $dd                                        ; $6f44: $fe $dd
    or a                                          ; $6f46: $b7
    inc de                                        ; $6f47: $13
    rst $28                                       ; $6f48: $ef
    cp $cf                                        ; $6f49: $fe $cf
    db $fd                                        ; $6f4b: $fd
    ld b, e                                       ; $6f4c: $43
    rst $38                                       ; $6f4d: $ff
    ld c, e                                       ; $6f4e: $4b
    or l                                          ; $6f4f: $b5
    rst $38                                       ; $6f50: $ff
    ld [hl-], a                                   ; $6f51: $32
    rst $08                                       ; $6f52: $cf
    add l                                         ; $6f53: $85
    rst $38                                       ; $6f54: $ff

jr_0dc_6f55:
    jp $aaff                                      ; $6f55: $c3 $ff $aa


    rst $38                                       ; $6f58: $ff
    db $f4                                        ; $6f59: $f4
    rst $38                                       ; $6f5a: $ff
    ld a, c                                       ; $6f5b: $79
    rst $38                                       ; $6f5c: $ff
    ld a, d                                       ; $6f5d: $7a
    rst $38                                       ; $6f5e: $ff
    rst $08                                       ; $6f5f: $cf
    db $fd                                        ; $6f60: $fd
    inc b                                         ; $6f61: $04
    jr nz, jr_0dc_6ee7                            ; $6f62: $20 $83

    db $10                                        ; $6f64: $10
    jr nc, jr_0dc_6f77                            ; $6f65: $30 $10

    inc bc                                        ; $6f67: $03
    jr nc, jr_0dc_6efd                            ; $6f68: $30 $93

    ld [$0c38], sp                                ; $6f6a: $08 $38 $0c
    inc a                                         ; $6f6d: $3c
    inc e                                         ; $6f6e: $1c
    inc a                                         ; $6f6f: $3c
    ld [hl-], a                                   ; $6f70: $32
    ld a, $32                                     ; $6f71: $3e $32
    ld a, $3a                                     ; $6f73: $3e $3a
    ld a, $39                                     ; $6f75: $3e $39

jr_0dc_6f77:
    ccf                                           ; $6f77: $3f
    ei                                            ; $6f78: $fb
    rst $38                                       ; $6f79: $ff
    ld a, a                                       ; $6f7a: $7f
    rst $38                                       ; $6f7b: $ff
    cp c                                          ; $6f7c: $b9
    ld [bc], a                                    ; $6f7d: $02
    rst $38                                       ; $6f7e: $ff
    add c                                         ; $6f7f: $81
    ld a, a                                       ; $6f80: $7f
    ld [bc], a                                    ; $6f81: $02
    nop                                           ; $6f82: $00
    sub d                                         ; $6f83: $92
    db $fc                                        ; $6f84: $fc
    rst $38                                       ; $6f85: $ff
    sbc l                                         ; $6f86: $9d
    rst $38                                       ; $6f87: $ff
    db $fc                                        ; $6f88: $fc
    rst $38                                       ; $6f89: $ff
    ld sp, hl                                     ; $6f8a: $f9
    cp a                                          ; $6f8b: $bf
    ld hl, sp-$61                                 ; $6f8c: $f8 $9f
    cp c                                          ; $6f8e: $b9
    rst $18                                       ; $6f8f: $df
    ld a, e                                       ; $6f90: $7b
    ld a, a                                       ; $6f91: $7f
    add hl, sp                                    ; $6f92: $39
    ccf                                           ; $6f93: $3f
    dec de                                        ; $6f94: $1b
    rra                                           ; $6f95: $1f
    inc b                                         ; $6f96: $04
    rrca                                          ; $6f97: $0f
    add h                                         ; $6f98: $84
    ld de, $171f                                  ; $6f99: $11 $1f $17
    rra                                           ; $6f9c: $1f
    ld [bc], a                                    ; $6f9d: $02
    ld c, $02                                     ; $6f9e: $0e $02
    nop                                           ; $6fa0: $00
    add c                                         ; $6fa1: $81
    db $e4                                        ; $6fa2: $e4
    rlca                                          ; $6fa3: $07
    db $fc                                        ; $6fa4: $fc
    adc [hl]                                      ; $6fa5: $8e
    sbc $ef                                       ; $6fa6: $de $ef
    cp h                                          ; $6fa8: $bc
    rst $38                                       ; $6fa9: $ff
    adc h                                         ; $6faa: $8c
    rst $38                                       ; $6fab: $ff
    cp [hl]                                       ; $6fac: $be
    rst $38                                       ; $6fad: $ff
    or a                                          ; $6fae: $b7
    db $fd                                        ; $6faf: $fd
    cp $ff                                        ; $6fb0: $fe $ff
    ld e, a                                       ; $6fb2: $5f
    rst $18                                       ; $6fb3: $df
    ld [bc], a                                    ; $6fb4: $02
    rst $08                                       ; $6fb5: $cf

jr_0dc_6fb6:
    add d                                         ; $6fb6: $82
    call z, Call_000_02cf                         ; $6fb7: $cc $cf $02
    adc a                                         ; $6fba: $8f
    ld [bc], a                                    ; $6fbb: $02
    rlca                                          ; $6fbc: $07
    ld a, [bc]                                    ; $6fbd: $0a
    nop                                           ; $6fbe: $00
    adc d                                         ; $6fbf: $8a
    dec sp                                        ; $6fc0: $3b
    dec a                                         ; $6fc1: $3d
    rla                                           ; $6fc2: $17
    add hl, sp                                    ; $6fc3: $39
    rra                                           ; $6fc4: $1f
    add hl, sp                                    ; $6fc5: $39
    ld e, $3e                                     ; $6fc6: $1e $3e
    inc e                                         ; $6fc8: $1c
    inc a                                         ; $6fc9: $3c
    ld [bc], a                                    ; $6fca: $02
    jr c, jr_0dc_6fcf                             ; $6fcb: $38 $02

jr_0dc_6fcd:
    jr nc, jr_0dc_6fd1                            ; $6fcd: $30 $02

jr_0dc_6fcf:
    jr nz, jr_0dc_6fd3                            ; $6fcf: $20 $02

jr_0dc_6fd1:
    jr nc, jr_0dc_6f55                            ; $6fd1: $30 $82

jr_0dc_6fd3:
    db $10                                        ; $6fd3: $10
    jr nc, jr_0dc_6fd8                            ; $6fd4: $30 $02

    jr nz, jr_0dc_6fda                            ; $6fd6: $20 $02

jr_0dc_6fd8:
    nop                                           ; $6fd8: $00
    rst $38                                       ; $6fd9: $ff

jr_0dc_6fda:
    ld de, $f806                                  ; $6fda: $11 $06 $f8
    rlca                                          ; $6fdd: $07
    di                                            ; $6fde: $f3
    cp $e4                                        ; $6fdf: $fe $e4
    push af                                       ; $6fe1: $f5
    db $e3                                        ; $6fe2: $e3
    db $fd                                        ; $6fe3: $fd
    and $03                                       ; $6fe4: $e6 $03
    di                                            ; $6fe6: $f3
    push af                                       ; $6fe7: $f5
    di                                            ; $6fe8: $f3
    db $fd                                        ; $6fe9: $fd
    di                                            ; $6fea: $f3
    inc bc                                        ; $6feb: $03
    ld [bc], a                                    ; $6fec: $02
    ld bc, $029e                                  ; $6fed: $01 $9e $02
    inc bc                                        ; $6ff0: $03
    dec b                                         ; $6ff1: $05
    rlca                                          ; $6ff2: $07
    dec b                                         ; $6ff3: $05
    rlca                                          ; $6ff4: $07
    ld c, $0f                                     ; $6ff5: $0e $0f
    dec bc                                        ; $6ff7: $0b
    rrca                                          ; $6ff8: $0f
    ld a, [bc]                                    ; $6ff9: $0a
    rrca                                          ; $6ffa: $0f
    ld c, $0f                                     ; $6ffb: $0e $0f
    inc de                                        ; $6ffd: $13
    rra                                           ; $6ffe: $1f
    ld a, [hl-]                                   ; $6fff: $3a
    ccf                                           ; $7000: $3f
    add hl, hl                                    ; $7001: $29
    ccf                                           ; $7002: $3f
    ld c, h                                       ; $7003: $4c
    ld a, a                                       ; $7004: $7f
    ld e, [hl]                                    ; $7005: $5e
    ld a, a                                       ; $7006: $7f
    db $dd                                        ; $7007: $dd
    rst $38                                       ; $7008: $ff
    cp l                                          ; $7009: $bd
    rst $38                                       ; $700a: $ff
    db $fc                                        ; $700b: $fc
    rst $38                                       ; $700c: $ff
    ld [bc], a                                    ; $700d: $02
    db $fc                                        ; $700e: $fc
    sbc [hl]                                      ; $700f: $9e
    ld a, [bc]                                    ; $7010: $0a
    cp $6f                                        ; $7011: $fe $6f
    db $db                                        ; $7013: $db
    adc b                                         ; $7014: $88
    rst $30                                       ; $7015: $f7
    cp $e7                                        ; $7016: $fe $e7
    db $fd                                        ; $7018: $fd
    inc hl                                        ; $7019: $23
    ld a, a                                       ; $701a: $7f
    and a                                         ; $701b: $a7
    reti                                          ; $701c: $d9


    rst $38                                       ; $701d: $ff
    cp b                                          ; $701e: $b8
    rst $00                                       ; $701f: $c7
    ld b, e                                       ; $7020: $43
    rst $38                                       ; $7021: $ff
    db $d3                                        ; $7022: $d3
    rst $38                                       ; $7023: $ff
    ld l, d                                       ; $7024: $6a
    rst $38                                       ; $7025: $ff
    db $fc                                        ; $7026: $fc
    rst $38                                       ; $7027: $ff
    ld sp, hl                                     ; $7028: $f9
    rst $38                                       ; $7029: $ff
    ld a, d                                       ; $702a: $7a
    rst $38                                       ; $702b: $ff
    ld c, a                                       ; $702c: $4f
    db $fd                                        ; $702d: $fd
    inc b                                         ; $702e: $04
    jr nz, jr_0dc_6fb6                            ; $702f: $20 $85

    db $10                                        ; $7031: $10
    jr nc, jr_0dc_7044                            ; $7032: $30 $10

    jr nc, jr_0dc_7046                            ; $7034: $30 $10

    inc bc                                        ; $7036: $03
    jr nc, jr_0dc_6fcd                            ; $7037: $30 $94

    ld [$0c38], sp                                ; $7039: $08 $38 $0c
    inc a                                         ; $703c: $3c
    inc e                                         ; $703d: $1c
    inc a                                         ; $703e: $3c
    inc [hl]                                      ; $703f: $34
    inc a                                         ; $7040: $3c
    ld [hl-], a                                   ; $7041: $32
    ld a, $3a                                     ; $7042: $3e $3a

jr_0dc_7044:
    ld a, $39                                     ; $7044: $3e $39

jr_0dc_7046:
    ccf                                           ; $7046: $3f
    ld sp, hl                                     ; $7047: $f9
    rst $38                                       ; $7048: $ff
    ld [hl], e                                    ; $7049: $73
    rst $38                                       ; $704a: $ff
    cp a                                          ; $704b: $bf
    rst $38                                       ; $704c: $ff
    ld [bc], a                                    ; $704d: $02
    nop                                           ; $704e: $00
    sub d                                         ; $704f: $92
    db $fd                                        ; $7050: $fd
    rst $38                                       ; $7051: $ff
    cp b                                          ; $7052: $b8
    rst $38                                       ; $7053: $ff
    ld sp, hl                                     ; $7054: $f9
    cp a                                          ; $7055: $bf
    ei                                            ; $7056: $fb
    cp a                                          ; $7057: $bf
    ld a, c                                       ; $7058: $79
    ld a, a                                       ; $7059: $7f
    ld [hl], e                                    ; $705a: $73
    ld a, a                                       ; $705b: $7f
    ld sp, $333f                                  ; $705c: $31 $3f $33
    ccf                                           ; $705f: $3f
    add hl, sp                                    ; $7060: $39
    ccf                                           ; $7061: $3f
    ld [bc], a                                    ; $7062: $02
    rra                                           ; $7063: $1f
    add d                                         ; $7064: $82
    ld b, $07                                     ; $7065: $06 $07
    ld [bc], a                                    ; $7067: $02
    rrca                                          ; $7068: $0f
    add c                                         ; $7069: $81
    ld de, $1f03                                  ; $706a: $11 $03 $1f
    ld [bc], a                                    ; $706d: $02
    rrca                                          ; $706e: $0f
    add c                                         ; $706f: $81
    db $e4                                        ; $7070: $e4
    dec b                                         ; $7071: $05
    db $fc                                        ; $7072: $fc
    sub b                                         ; $7073: $90
    rst $38                                       ; $7074: $ff
    db $fd                                        ; $7075: $fd
    sbc $ef                                       ; $7076: $de $ef
    cp h                                          ; $7078: $bc
    rst $38                                       ; $7079: $ff
    inc c                                         ; $707a: $0c
    rst $38                                       ; $707b: $ff
    ld [hl], $ff                                  ; $707c: $36 $ff
    ld a, a                                       ; $707e: $7f
    db $fd                                        ; $707f: $fd
    ld a, [hl]                                    ; $7080: $7e
    rst $38                                       ; $7081: $ff
    ld e, a                                       ; $7082: $5f
    rst $18                                       ; $7083: $df

jr_0dc_7084:
    ld [bc], a                                    ; $7084: $02
    rst $08                                       ; $7085: $cf
    ld [bc], a                                    ; $7086: $02
    adc a                                         ; $7087: $8f
    add d                                         ; $7088: $82
    adc h                                         ; $7089: $8c
    adc a                                         ; $708a: $8f
    ld [bc], a                                    ; $708b: $02
    add a                                         ; $708c: $87
    ld [bc], a                                    ; $708d: $02
    add b                                         ; $708e: $80
    ld b, $00                                     ; $708f: $06 $00
    add e                                         ; $7091: $83
    ld sp, $3d3f                                  ; $7092: $31 $3f $3d
    ld [bc], a                                    ; $7095: $02
    ccf                                           ; $7096: $3f
    add a                                         ; $7097: $87
    ld sp, $213f                                  ; $7098: $31 $3f $21

jr_0dc_709b:
    ld e, $32                                     ; $709b: $1e $32
    inc e                                         ; $709d: $1c
    inc a                                         ; $709e: $3c
    ld [bc], a                                    ; $709f: $02
    jr c, @+$0c                                   ; $70a0: $38 $0a

    jr nz, jr_0dc_70a6                            ; $70a2: $20 $02

    nop                                           ; $70a4: $00
    rst $38                                       ; $70a5: $ff

jr_0dc_70a6:
    ld de, $f806                                  ; $70a6: $11 $06 $f8
    rlca                                          ; $70a9: $07
    di                                            ; $70aa: $f3
    cp $e5                                        ; $70ab: $fe $e5
    push af                                       ; $70ad: $f5
    db $e4                                        ; $70ae: $e4
    db $fd                                        ; $70af: $fd
    rst $20                                       ; $70b0: $e7
    inc bc                                        ; $70b1: $03
    db $f4                                        ; $70b2: $f4
    push af                                       ; $70b3: $f5
    db $f4                                        ; $70b4: $f4
    db $fd                                        ; $70b5: $fd
    db $f4                                        ; $70b6: $f4
    inc bc                                        ; $70b7: $03
    ld [bc], a                                    ; $70b8: $02
    ld bc, $029e                                  ; $70b9: $01 $9e $02
    inc bc                                        ; $70bc: $03
    dec b                                         ; $70bd: $05
    rlca                                          ; $70be: $07
    dec c                                         ; $70bf: $0d
    rrca                                          ; $70c0: $0f
    ld a, [bc]                                    ; $70c1: $0a
    rrca                                          ; $70c2: $0f
    dec bc                                        ; $70c3: $0b
    rrca                                          ; $70c4: $0f
    ld a, [bc]                                    ; $70c5: $0a
    rrca                                          ; $70c6: $0f
    ld c, $0f                                     ; $70c7: $0e $0f
    inc de                                        ; $70c9: $13
    rra                                           ; $70ca: $1f
    ld [hl-], a                                   ; $70cb: $32
    ccf                                           ; $70cc: $3f
    add hl, hl                                    ; $70cd: $29
    ccf                                           ; $70ce: $3f
    ld c, h                                       ; $70cf: $4c
    ld a, a                                       ; $70d0: $7f
    ld e, [hl]                                    ; $70d1: $5e
    ld a, a                                       ; $70d2: $7f
    rst $18                                       ; $70d3: $df
    rst $38                                       ; $70d4: $ff
    cp l                                          ; $70d5: $bd
    rst $38                                       ; $70d6: $ff
    db $fc                                        ; $70d7: $fc
    rst $38                                       ; $70d8: $ff
    ld [bc], a                                    ; $70d9: $02
    db $fc                                        ; $70da: $fc
    sbc [hl]                                      ; $70db: $9e
    ld a, [bc]                                    ; $70dc: $0a
    cp $6f                                        ; $70dd: $fe $6f
    db $db                                        ; $70df: $db
    adc b                                         ; $70e0: $88
    rst $30                                       ; $70e1: $f7
    cp $e7                                        ; $70e2: $fe $e7
    db $fd                                        ; $70e4: $fd
    inc hl                                        ; $70e5: $23
    ld a, a                                       ; $70e6: $7f
    and a                                         ; $70e7: $a7
    reti                                          ; $70e8: $d9


    rst $38                                       ; $70e9: $ff
    cp b                                          ; $70ea: $b8
    rst $00                                       ; $70eb: $c7
    ld b, e                                       ; $70ec: $43
    rst $38                                       ; $70ed: $ff
    jp $aaff                                      ; $70ee: $c3 $ff $aa


    rst $38                                       ; $70f1: $ff
    db $f4                                        ; $70f2: $f4
    rst $38                                       ; $70f3: $ff
    ld sp, hl                                     ; $70f4: $f9
    rst $38                                       ; $70f5: $ff
    ld a, e                                       ; $70f6: $7b
    rst $38                                       ; $70f7: $ff
    rst $00                                       ; $70f8: $c7
    db $fd                                        ; $70f9: $fd
    ld [bc], a                                    ; $70fa: $02
    jr nz, jr_0dc_70ff                            ; $70fb: $20 $02

    jr nc, jr_0dc_7084                            ; $70fd: $30 $85

jr_0dc_70ff:
    db $10                                        ; $70ff: $10
    jr nc, jr_0dc_7112                            ; $7100: $30 $10

    jr nc, jr_0dc_7114                            ; $7102: $30 $10

    inc bc                                        ; $7104: $03
    jr nc, jr_0dc_709b                            ; $7105: $30 $94

    ld [$0c38], sp                                ; $7107: $08 $38 $0c
    inc a                                         ; $710a: $3c
    inc d                                         ; $710b: $14
    inc a                                         ; $710c: $3c
    ld [hl-], a                                   ; $710d: $32
    ld a, $3a                                     ; $710e: $3e $3a
    ld a, $39                                     ; $7110: $3e $39

jr_0dc_7112:
    ccf                                           ; $7112: $3f
    add hl, sp                                    ; $7113: $39

jr_0dc_7114:
    ccf                                           ; $7114: $3f
    ei                                            ; $7115: $fb
    rst $38                                       ; $7116: $ff
    ld a, a                                       ; $7117: $7f
    rst $38                                       ; $7118: $ff
    cp c                                          ; $7119: $b9
    rst $38                                       ; $711a: $ff
    ld [bc], a                                    ; $711b: $02
    nop                                           ; $711c: $00
    sub b                                         ; $711d: $90
    cp l                                          ; $711e: $bd
    rst $38                                       ; $711f: $ff
    db $fc                                        ; $7120: $fc
    rst $38                                       ; $7121: $ff
    ld sp, hl                                     ; $7122: $f9
    cp a                                          ; $7123: $bf
    ld hl, sp-$61                                 ; $7124: $f8 $9f
    reti                                          ; $7126: $d9


    cp a                                          ; $7127: $bf
    ld [hl], b                                    ; $7128: $70
    ld a, a                                       ; $7129: $7f
    ld sp, $3c3f                                  ; $712a: $31 $3f $3c
    ccf                                           ; $712d: $3f
    ld [bc], a                                    ; $712e: $02
    rrca                                          ; $712f: $0f
    add c                                         ; $7130: $81
    inc b                                         ; $7131: $04
    inc bc                                        ; $7132: $03
    rlca                                          ; $7133: $07
    add h                                         ; $7134: $84
    ld [$1b0f], sp                                ; $7135: $08 $0f $1b
    rra                                           ; $7138: $1f
    ld [bc], a                                    ; $7139: $02
    rrca                                          ; $713a: $0f
    ld [bc], a                                    ; $713b: $02
    nop                                           ; $713c: $00
    add c                                         ; $713d: $81
    db $e4                                        ; $713e: $e4
    dec b                                         ; $713f: $05
    db $fc                                        ; $7140: $fc
    adc [hl]                                      ; $7141: $8e
    set 7, l                                      ; $7142: $cb $fd
    cp [hl]                                       ; $7144: $be
    rst $28                                       ; $7145: $ef
    adc h                                         ; $7146: $8c
    rst $38                                       ; $7147: $ff
    sbc [hl]                                      ; $7148: $9e
    rst $38                                       ; $7149: $ff
    cp a                                          ; $714a: $bf
    db $fd                                        ; $714b: $fd
    cp [hl]                                       ; $714c: $be
    rst $38                                       ; $714d: $ff
    ld c, a                                       ; $714e: $4f
    rst $08                                       ; $714f: $cf
    ld [bc], a                                    ; $7150: $02
    adc a                                         ; $7151: $8f
    add d                                         ; $7152: $82
    call Call_000_02cf                            ; $7153: $cd $cf $02
    rst $00                                       ; $7156: $c7
    ld [bc], a                                    ; $7157: $02
    ret nz                                        ; $7158: $c0

    ld a, [bc]                                    ; $7159: $0a
    nop                                           ; $715a: $00
    adc b                                         ; $715b: $88
    ld sp, $373f                                  ; $715c: $31 $3f $37
    dec a                                         ; $715f: $3d
    cpl                                           ; $7160: $2f
    ld sp, $331d                                  ; $7161: $31 $1d $33
    ld [bc], a                                    ; $7164: $02
    ld a, $02                                     ; $7165: $3e $02
    jr c, jr_0dc_716b                             ; $7167: $38 $02

    jr nc, @+$08                                  ; $7169: $30 $06

jr_0dc_716b:
    jr nz, @+$08                                  ; $716b: $20 $06

    nop                                           ; $716d: $00
    rst $38                                       ; $716e: $ff

    db $0d, $04, $f8, $07, $f3, $fe, $e3, $f8, $e3, $00, $f3, $f8, $f3, $ff, $02, $01
    db $02, $07, $9c, $0a, $0f, $0c, $0f, $14, $1f, $19, $1f, $2a, $3f, $52, $7f, $6d
    db $7f, $57, $7f, $78, $7f, $9f, $ff, $bc, $ff, $7c, $7f, $38, $3f, $7c, $7f, $02
    db $f4, $96, $4c, $fc, $9a, $e6, $24, $fc, $5e, $fa, $7f, $c9, $b7, $e9, $f6, $fe
    db $af, $fb, $c1, $ff, $a9, $ff, $d2, $fe, $02, $fc, $8e, $7a, $fe, $6e, $fa, $66
    db $fe, $7a, $7f, $69, $7f, $7e, $7f, $68, $7f, $02, $ff, $8c, $ed, $fe, $f7, $fc
    db $db, $fe, $d5, $ff, $60, $7f, $38, $3f, $02, $0f, $02, $07, $02, $0f, $82, $0b
    db $0f, $02, $0e, $96, $71, $7f, $63, $7f, $23, $7d, $63, $7f, $21, $7f, $53, $3f
    db $53, $3d, $23, $7f, $41, $7f, $03, $7f, $0e, $7e, $02, $70, $86, $3c, $7c, $46
    db $7e, $72, $7e, $02, $7c, $ff, $0f, $05, $f8, $07, $f3, $fe, $e3, $f8, $e3, $00
    db $f3, $f7, $f3, $ff, $f3, $00, $02, $01, $02, $07, $9c, $0a, $0f, $0c, $0f, $14
    db $1f, $19, $1f, $2a, $3f, $32, $3f, $6d, $7f, $57, $7f, $79, $7f, $4f, $7f, $bc
    db $ff, $f8, $ff, $78, $7f, $70, $7f, $02, $f4, $b4, $4c, $fc, $9a, $e6, $24, $fc
    db $5e, $fa, $5f, $e9, $bb, $e5, $f6, $fe, $ae, $fa, $c1, $ff, $a9, $ff, $f2, $fe
    db $ec, $fc, $f6, $fe, $9e, $f6, $8e, $fe, $38, $3f, $3e, $3f, $39, $3f, $7c, $7f
    db $6f, $7f, $7c, $7f, $6f, $78, $d7, $fc, $eb, $ff, $74, $7f, $1c, $1f, $02, $07
    db $02, $03, $02, $07, $81, $05, $03, $07, $96, $43, $ff, $c5, $ff, $cf, $fb, $c7
    db $ff, $83, $ff, $c7, $ff, $cf, $7b, $c7, $ff, $03, $ff, $06, $fe, $1c, $fc, $02
    db $fe, $86, $bc, $fc, $c6, $fe, $f2, $fe, $02, $7c, $0a, $00, $06, $01, $10, $00
    db $ff, $0f, $05, $f8, $07, $f3, $fe, $e3, $f8, $e3, $00, $f3, $f8, $f3, $00, $f3
    db $03, $02, $01, $02, $07, $9c, $0a, $0f, $0c, $0f, $14, $1f, $19, $1f, $2a, $3f
    db $52, $7f, $6d, $7f, $57, $7f, $78, $7f, $87, $ff, $be, $ff, $7c, $7f, $38, $3f
    db $3c, $3f, $02, $f4, $b3, $4c, $fc, $9a, $e6, $24, $fc, $5e, $fa, $7f, $c9, $b7
    db $e9, $f6, $fe, $ad, $f3, $d1, $ff, $ed, $ff, $fa, $fe, $e4, $fc, $fa, $fe, $ce
    db $fa, $46, $fe, $7d, $7f, $74, $7f, $6f, $7f, $7a, $7f, $f6, $ff, $ef, $ff, $eb
    db $ff, $d5, $ff, $e0, $ff, $60, $7f, $38, $03, $3f, $02, $7f, $81, $5c, $03, $7f
    db $02, $07, $98, $6e, $fe, $e6, $fe, $2e, $fa, $56, $fe, $ba, $ee, $7e, $8e, $ee
    db $9a, $76, $fe, $0f, $ff, $0d, $ff, $1f, $ff, $fe, $ff, $02, $df, $02, $cf, $82
    db $2e, $ee, $02, $e0, $14, $00, $02, $02, $81, $05, $03, $07, $02, $04, $04, $00
    db $ff, $0f, $05, $f8, $07, $f3, $fe, $e4, $f8, $e4, $00, $f4, $f7, $f4, $ff, $f4
    db $02, $02, $01, $02, $07, $8d, $0a, $0f, $0c, $0f, $12, $1f, $35, $3f, $6c, $7f
    db $53, $7f, $6d, $03, $7f, $8c, $80, $ff, $bf, $ff, $7e, $7f, $3c, $3f, $38, $3f
    db $3e, $3f, $02, $f4, $96, $4c, $fc, $92, $ee, $24, $fc, $7e, $f2, $f5, $cb, $b7
    db $c9, $f6, $fe, $ae, $f2, $c1, $ff, $f5, $ff, $eb, $ff, $02, $fe, $87, $da, $fe
    db $ce, $fa, $46, $fe, $3a, $03, $3f, $81, $3b, $03, $3f, $8d, $3d, $3f, $7a, $7f
    db $f5, $ff, $e8, $ff, $e0, $ff, $70, $7f, $7c, $03, $7f, $84, $7b, $7f, $1e, $1f
    db $02, $0f, $02, $00, $98, $a5, $ff, $73, $ff, $97, $fd, $3b, $ff, $c5, $ff, $bf
    db $e7, $ff, $85, $7b, $df, $25, $ff, $0a, $fe, $0f, $ff, $fe, $ff, $02, $9f, $82
    db $5f, $df, $02, $c0, $16, $00, $02, $04, $81, $03, $03, $07, $06, $00, $ff, $0d
    db $04, $f8, $07, $f3, $fe, $e3, $f8, $e3, $00, $f3, $f7, $f3, $ff, $02, $01, $02
    db $07, $9c, $0a, $0f, $0c, $0f, $14, $1f, $19, $1f, $2a, $3f, $32, $3f, $6d, $7f
    db $57, $7f, $78, $7f, $5f, $7f, $b9, $ff, $f8, $ff, $70, $7f, $38, $3f, $02, $f4
    db $a5, $4c, $fc, $9a, $e6, $24, $fc, $7e, $f2, $6d, $db, $b7, $e9, $f6, $fe, $a6
    db $fa, $c1, $ff, $a9, $ff, $fa, $fe, $f4, $fc, $ba, $fe, $ce, $fa, $c6, $fe, $3a
    db $3f, $39, $3f, $3e, $3f, $38, $03, $3f, $8c, $7d, $7e, $77, $7c, $eb, $fe, $e5
    db $ff, $70, $7f, $1c, $1f, $02, $07, $81, $0d, $03, $0f, $02, $07, $02, $00, $96
    db $e1, $ff, $c3, $ff, $47, $fd, $c3, $ff, $41, $ff, $a3, $7f, $a7, $7d, $43, $ff
    db $81, $ff, $03, $ff, $0e, $fe, $02, $f8, $84, $8c, $fc, $e4, $fc, $02, $f8, $02
    db $00, $ff, $0f, $05, $f8, $07, $f3, $fe, $e3, $f8, $e3, $00, $f3, $f8, $f3, $00
    db $f3, $03, $02, $01, $02, $07, $9c, $0a, $0f, $0c, $0f, $14, $1f, $19, $1f, $2a
    db $3f, $52, $7f, $6d, $7f, $57, $7f, $79, $7f, $9f, $ff, $b3, $ff, $70, $7f, $21
    db $3f, $73, $7f, $02, $f4, $b5, $4c, $fc, $9a, $e6, $24, $fc, $5e, $fa, $5f, $e9
    db $bb, $e5, $f6, $fe, $ad, $fb, $d1, $ff, $ad, $ff, $d2, $fe, $ec, $fc, $76, $fe
    db $1e, $fa, $06, $fe, $73, $7f, $4a, $7f, $66, $7f, $4e, $7f, $e7, $ff, $be, $cf
    db $fd, $c7, $f8, $ef, $d0, $ff, $60, $7f, $38, $3f, $5f, $05, $7f, $02, $07, $02
    db $00, $9e, $02, $fe, $07, $ff, $07, $fb, $8f, $ff, $45, $ff, $8d, $ff, $0d, $f7
    db $0f, $ff, $07, $ff, $0f, $ff, $1d, $ff, $f9, $ff, $3e, $3f, $9e, $9f, $9b, $9f
    db $02, $0c, $0a, $00, $04, $04, $08, $00, $02, $02, $84, $05, $07, $03, $07, $02
    db $04, $02, $00, $ff, $0f, $05, $f8, $07, $f3, $fe, $e4, $f8, $e4, $00, $f4, $f7
    db $f4, $ff, $f4, $01, $02, $01, $02, $07, $8d, $0a, $0f, $0c, $0f, $12, $1f, $35
    db $3f, $6c, $7f, $53, $7f, $6d, $03, $7f, $8c, $83, $ff, $bf, $ff, $7b, $7f, $31
    db $3f, $21, $3f, $61, $7f, $02, $f4, $b3, $4c, $fc, $8a, $f6, $24, $fc, $5a, $fe
    db $db, $e5, $ab, $f5, $f6, $fe, $ae, $fa, $c1, $ff, $b5, $ff, $6b, $ff, $9e, $fe
    db $ee, $fe, $1e, $f6, $0e, $fe, $39, $3f, $25, $3f, $73, $7f, $6f, $7f, $73, $7f
    db $5f, $63, $fe, $e7, $bd, $ff, $d2, $ff, $78, $7f, $7c, $03, $7f, $02, $1f, $02
    db $0f, $04, $00, $99, $83, $ff, $07, $ff, $0f, $fb, $47, $ff, $87, $ff, $4e, $ff
    db $9e, $f7, $4e, $ff, $07, $ff, $07, $ff, $0e, $fe, $f7, $ff, $7c, $03, $7f, $02
    db $7c, $06, $00, $0e, $02, $04, $00, $02, $02, $81, $01, $03, $03, $04, $00, $ff

    dec c                                         ; $75af: $0d
    inc b                                         ; $75b0: $04
    ld hl, sp+$07                                 ; $75b1: $f8 $07
    ld a, [c]                                     ; $75b3: $f2
    ld bc, $f9e2                                  ; $75b4: $01 $e2 $f9
    ld [c], a                                     ; $75b7: $e2
    rst $38                                       ; $75b8: $ff
    ld a, [c]                                     ; $75b9: $f2
    ld hl, sp-$0e                                 ; $75ba: $f8 $f2
    nop                                           ; $75bc: $00
    ld [bc], a                                    ; $75bd: $02
    ld a, [bc]                                    ; $75be: $0a
    sub b                                         ; $75bf: $90
    cpl                                           ; $75c0: $2f
    dec l                                         ; $75c1: $2d
    ccf                                           ; $75c2: $3f
    dec [hl]                                      ; $75c3: $35
    ld a, a                                       ; $75c4: $7f
    ld e, d                                       ; $75c5: $5a
    dec sp                                        ; $75c6: $3b
    scf                                           ; $75c7: $37
    ld l, a                                       ; $75c8: $6f
    ld e, l                                       ; $75c9: $5d
    ccf                                           ; $75ca: $3f
    ld [hl], $37                                  ; $75cb: $36 $37
    dec a                                         ; $75cd: $3d
    dec e                                         ; $75ce: $1d
    rra                                           ; $75cf: $1f
    ld [bc], a                                    ; $75d0: $02
    rrca                                          ; $75d1: $0f
    adc h                                         ; $75d2: $8c
    jr nc, @+$41                                  ; $75d3: $30 $3f

    ld b, b                                       ; $75d5: $40
    ld a, a                                       ; $75d6: $7f
    ld b, b                                       ; $75d7: $40
    ld a, a                                       ; $75d8: $7f
    rst $08                                       ; $75d9: $cf
    rst $38                                       ; $75da: $ff
    ld a, [$b0ff]                                 ; $75db: $fa $ff $b0
    rst $38                                       ; $75de: $ff
    ld [bc], a                                    ; $75df: $02
    db $10                                        ; $75e0: $10
    ld [bc], a                                    ; $75e1: $02
    jr nc, @-$75                                  ; $75e2: $30 $89

    jr c, jr_0dc_75fe                             ; $75e4: $38 $18

    inc e                                         ; $75e6: $1c
    inc [hl]                                      ; $75e7: $34
    jr c, jr_0dc_75f2                             ; $75e8: $38 $08

    inc l                                         ; $75ea: $2c
    inc [hl]                                      ; $75eb: $34
    jr c, jr_0dc_75f0                             ; $75ec: $38 $02

    jr @-$7d                                      ; $75ee: $18 $81

jr_0dc_75f0:
    jr c, jr_0dc_75f4                             ; $75f0: $38 $02

jr_0dc_75f2:
    jr nc, jr_0dc_75f6                            ; $75f2: $30 $02

jr_0dc_75f4:
    jr nz, @-$5c                                  ; $75f4: $20 $a2

jr_0dc_75f6:
    jr jr_0dc_7630                                ; $75f6: $18 $38

    inc b                                         ; $75f8: $04
    inc a                                         ; $75f9: $3c
    ld b, $3e                                     ; $75fa: $06 $3e
    ld h, $3e                                     ; $75fc: $26 $3e

jr_0dc_75fe:
    dec a                                         ; $75fe: $3d
    ccf                                           ; $75ff: $3f
    cpl                                           ; $7600: $2f
    ccf                                           ; $7601: $3f
    cp h                                          ; $7602: $bc
    rst $38                                       ; $7603: $ff
    ld e, a                                       ; $7604: $5f
    ld a, a                                       ; $7605: $7f
    ld a, [$f8bf]                                 ; $7606: $fa $bf $f8
    sbc a                                         ; $7609: $9f
    pop af                                        ; $760a: $f1
    rst $38                                       ; $760b: $ff
    ldh a, [$bf]                                  ; $760c: $f0 $bf
    ld [hl], c                                    ; $760e: $71
    ld e, a                                       ; $760f: $5f
    ld [hl-], a                                   ; $7610: $32
    ccf                                           ; $7611: $3f
    ld hl, $233f                                  ; $7612: $21 $3f $23
    ccf                                           ; $7615: $3f
    ld hl, $023f                                  ; $7616: $21 $3f $02
    rra                                           ; $7619: $1f
    ld [bc], a                                    ; $761a: $02
    ld b, $02                                     ; $761b: $06 $02
    ld c, $82                                     ; $761d: $0e $82
    ld a, [de]                                    ; $761f: $1a
    ld e, $02                                     ; $7620: $1e $02
    ld b, $96                                     ; $7622: $06 $96
    jp c, $d9fe                                   ; $7624: $da $fe $d9

    rst $38                                       ; $7627: $ff
    ld e, a                                       ; $7628: $5f
    rst $38                                       ; $7629: $ff

jr_0dc_762a:
    ld e, a                                       ; $762a: $5f
    db $fd                                        ; $762b: $fd
    ld a, $fa                                     ; $762c: $3e $fa
    inc e                                         ; $762e: $1c
    db $fc                                        ; $762f: $fc

jr_0dc_7630:
    jr jr_0dc_762a                                ; $7630: $18 $f8

    sbc b                                         ; $7632: $98
    ld hl, sp+$08                                 ; $7633: $f8 $08
    ld hl, sp-$78                                 ; $7635: $f8 $88
    ld hl, sp+$08                                 ; $7637: $f8 $08
    ld hl, sp+$02                                 ; $7639: $f8 $02
    ldh a, [rSC]                                  ; $763b: $f0 $02
    ret nz                                        ; $763d: $c0

    add h                                         ; $763e: $84
    and b                                         ; $763f: $a0
    ldh [$b0], a                                  ; $7640: $e0 $b0
    ldh a, [rSC]                                  ; $7642: $f0 $02
    ret nz                                        ; $7644: $c0

    rst $38                                       ; $7645: $ff
    dec c                                         ; $7646: $0d
    inc b                                         ; $7647: $04
    ld hl, sp+$07                                 ; $7648: $f8 $07
    ld a, [c]                                     ; $764a: $f2
    ld bc, $f8e2                                  ; $764b: $01 $e2 $f8
    ld [c], a                                     ; $764e: $e2
    rst $38                                       ; $764f: $ff
    ld a, [c]                                     ; $7650: $f2
    ld hl, sp-$0e                                 ; $7651: $f8 $f2
    nop                                           ; $7653: $00
    ld [bc], a                                    ; $7654: $02
    dec b                                         ; $7655: $05
    adc e                                         ; $7656: $8b
    rla                                           ; $7657: $17
    ld d, $1f                                     ; $7658: $16 $1f
    ld a, [de]                                    ; $765a: $1a
    ccf                                           ; $765b: $3f
    dec l                                         ; $765c: $2d
    dec e                                         ; $765d: $1d
    dec de                                        ; $765e: $1b
    scf                                           ; $765f: $37
    ld l, $1f                                     ; $7660: $2e $1f
    ld [bc], a                                    ; $7662: $02
    dec de                                        ; $7663: $1b
    add e                                         ; $7664: $83
    ld e, $0e                                     ; $7665: $1e $0e
    rrca                                          ; $7667: $0f
    ld [bc], a                                    ; $7668: $02
    rlca                                          ; $7669: $07
    adc h                                         ; $766a: $8c
    jr jr_0dc_768c                                ; $766b: $18 $1f

    jr nz, @+$41                                  ; $766d: $20 $3f

    jr nc, jr_0dc_76b0                            ; $766f: $30 $3f

    ld [hl], e                                    ; $7671: $73
    ld a, a                                       ; $7672: $7f
    ld a, l                                       ; $7673: $7d
    ld a, a                                       ; $7674: $7f
    ret c                                         ; $7675: $d8

    rst $38                                       ; $7676: $ff
    ld [bc], a                                    ; $7677: $02
    db $10                                        ; $7678: $10
    ld [bc], a                                    ; $7679: $02
    ld [hl], b                                    ; $767a: $70
    adc h                                         ; $767b: $8c
    ld a, b                                       ; $767c: $78
    ld e, b                                       ; $767d: $58
    ld e, h                                       ; $767e: $5c
    inc [hl]                                      ; $767f: $34
    ld a, b                                       ; $7680: $78
    ld c, b                                       ; $7681: $48
    ld l, h                                       ; $7682: $6c
    ld [hl], h                                    ; $7683: $74
    ld a, b                                       ; $7684: $78
    jr @+$5a                                      ; $7685: $18 $58

    ld a, b                                       ; $7687: $78
    ld [bc], a                                    ; $7688: $02
    ld [hl], b                                    ; $7689: $70
    ld [bc], a                                    ; $768a: $02
    ld h, b                                       ; $768b: $60

jr_0dc_768c:
    and d                                         ; $768c: $a2
    jr jr_0dc_7707                                ; $768d: $18 $78

    inc b                                         ; $768f: $04
    ld a, h                                       ; $7690: $7c
    ld b, $7e                                     ; $7691: $06 $7e
    ld h, d                                       ; $7693: $62
    ld a, [hl]                                    ; $7694: $7e
    dec a                                         ; $7695: $3d
    ld a, a                                       ; $7696: $7f
    cpl                                           ; $7697: $2f
    ld a, a                                       ; $7698: $7f
    sbc h                                         ; $7699: $9c
    rst $38                                       ; $769a: $ff
    rst $18                                       ; $769b: $df
    rst $38                                       ; $769c: $ff
    ld a, [$f89f]                                 ; $769d: $fa $9f $f8
    sbc a                                         ; $76a0: $9f
    pop af                                        ; $76a1: $f1
    rst $18                                       ; $76a2: $df
    ldh a, [$bf]                                  ; $76a3: $f0 $bf
    pop af                                        ; $76a5: $f1
    sbc a                                         ; $76a6: $9f
    ld [hl], e                                    ; $76a7: $73
    ld a, a                                       ; $76a8: $7f
    ld sp, $323f                                  ; $76a9: $31 $3f $32
    ccf                                           ; $76ac: $3f
    ld hl, $023f                                  ; $76ad: $21 $3f $02

jr_0dc_76b0:
    rra                                           ; $76b0: $1f
    inc b                                         ; $76b1: $04
    ld c, $02                                     ; $76b2: $0e $02
    ld b, $02                                     ; $76b4: $06 $02
    nop                                           ; $76b6: $00
    sub l                                         ; $76b7: $95
    jp c, $d9fe                                   ; $76b8: $da $fe $d9

    rst $38                                       ; $76bb: $ff
    ld e, a                                       ; $76bc: $5f
    rst $38                                       ; $76bd: $ff

jr_0dc_76be:
    cp [hl]                                       ; $76be: $be
    ld a, [$fede]                                 ; $76bf: $fa $de $fe
    inc e                                         ; $76c2: $1c
    db $fc                                        ; $76c3: $fc
    jr jr_0dc_76be                                ; $76c4: $18 $f8

    ld [$08f8], sp                                ; $76c6: $08 $f8 $08
    ld hl, sp+$08                                 ; $76c9: $f8 $08
    ld hl, sp-$18                                 ; $76cb: $f8 $e8
    inc bc                                        ; $76cd: $03
    ld hl, sp+$02                                 ; $76ce: $f8 $02
    ret nz                                        ; $76d0: $c0

    add c                                         ; $76d1: $81
    and b                                         ; $76d2: $a0
    inc bc                                        ; $76d3: $03
    ldh [rSC], a                                  ; $76d4: $e0 $02
    ldh a, [rIE]                                  ; $76d6: $f0 $ff
    dec c                                         ; $76d8: $0d
    inc b                                         ; $76d9: $04
    ld hl, sp+$07                                 ; $76da: $f8 $07
    ld a, [c]                                     ; $76dc: $f2
    ld bc, $f8e3                                  ; $76dd: $01 $e3 $f8
    db $e3                                        ; $76e0: $e3
    rst $38                                       ; $76e1: $ff
    di                                            ; $76e2: $f3
    ld hl, sp-$0d                                 ; $76e3: $f8 $f3
    nop                                           ; $76e5: $00
    ld [bc], a                                    ; $76e6: $02
    dec b                                         ; $76e7: $05
    adc e                                         ; $76e8: $8b
    rla                                           ; $76e9: $17
    ld d, $1f                                     ; $76ea: $16 $1f
    ld a, [de]                                    ; $76ec: $1a
    ccf                                           ; $76ed: $3f
    dec l                                         ; $76ee: $2d
    dec e                                         ; $76ef: $1d
    dec de                                        ; $76f0: $1b
    scf                                           ; $76f1: $37
    ld l, $1f                                     ; $76f2: $2e $1f
    ld [bc], a                                    ; $76f4: $02
    dec de                                        ; $76f5: $1b
    add e                                         ; $76f6: $83
    ld e, $0e                                     ; $76f7: $1e $0e
    rrca                                          ; $76f9: $0f
    ld [bc], a                                    ; $76fa: $02
    rlca                                          ; $76fb: $07
    add l                                         ; $76fc: $85
    jr jr_0dc_771e                                ; $76fd: $18 $1f

    jr nz, @+$41                                  ; $76ff: $20 $3f

    ld h, b                                       ; $7701: $60
    inc bc                                        ; $7702: $03
    ld a, a                                       ; $7703: $7f
    add h                                         ; $7704: $84
    ld a, l                                       ; $7705: $7d
    ld a, a                                       ; $7706: $7f

jr_0dc_7707:
    ret c                                         ; $7707: $d8

    rst $38                                       ; $7708: $ff
    ld [bc], a                                    ; $7709: $02
    db $10                                        ; $770a: $10
    ld [bc], a                                    ; $770b: $02
    ld [hl], b                                    ; $770c: $70
    adc h                                         ; $770d: $8c
    ld a, b                                       ; $770e: $78
    ld e, b                                       ; $770f: $58
    ld e, h                                       ; $7710: $5c
    inc [hl]                                      ; $7711: $34
    ld a, b                                       ; $7712: $78
    ld c, b                                       ; $7713: $48
    ld l, h                                       ; $7714: $6c
    ld [hl], h                                    ; $7715: $74
    ld a, b                                       ; $7716: $78
    jr jr_0dc_7771                                ; $7717: $18 $58

    ld a, b                                       ; $7719: $78
    ld [bc], a                                    ; $771a: $02
    ld [hl], b                                    ; $771b: $70
    ld [bc], a                                    ; $771c: $02
    ld h, b                                       ; $771d: $60

jr_0dc_771e:
    add [hl]                                      ; $771e: $86
    inc e                                         ; $771f: $1c
    ld a, h                                       ; $7720: $7c
    ld [bc], a                                    ; $7721: $02
    ld a, [hl]                                    ; $7722: $7e
    inc b                                         ; $7723: $04
    ld a, h                                       ; $7724: $7c

jr_0dc_7725:
    ld [bc], a                                    ; $7725: $02
    ld a, [hl]                                    ; $7726: $7e
    sbc b                                         ; $7727: $98
    dec a                                         ; $7728: $3d

jr_0dc_7729:
    ld a, a                                       ; $7729: $7f
    cpl                                           ; $772a: $2f
    ld a, a                                       ; $772b: $7f
    sbc h                                         ; $772c: $9c
    rst $38                                       ; $772d: $ff
    rst $18                                       ; $772e: $df
    rst $38                                       ; $772f: $ff
    ld a, [$f89f]                                 ; $7730: $fa $9f $f8
    sbc a                                         ; $7733: $9f
    pop af                                        ; $7734: $f1
    rst $38                                       ; $7735: $ff
    ldh a, [$bf]                                  ; $7736: $f0 $bf
    pop af                                        ; $7738: $f1
    sbc a                                         ; $7739: $9f
    ld [hl], e                                    ; $773a: $73
    ld a, a                                       ; $773b: $7f
    inc hl                                        ; $773c: $23
    ccf                                           ; $773d: $3f
    ld hl, $023f                                  ; $773e: $21 $3f $02
    rra                                           ; $7741: $1f
    ld [bc], a                                    ; $7742: $02
    ld b, $81                                     ; $7743: $06 $81
    ld a, [bc]                                    ; $7745: $0a
    inc bc                                        ; $7746: $03
    ld c, $04                                     ; $7747: $0e $04
    nop                                           ; $7749: $00
    sub e                                         ; $774a: $93
    jp c, $d9fe                                   ; $774b: $da $fe $d9

    rst $38                                       ; $774e: $ff

jr_0dc_774f:
    ld e, a                                       ; $774f: $5f
    rst $38                                       ; $7750: $ff

jr_0dc_7751:
    ld e, [hl]                                    ; $7751: $5e
    ld a, [$fe3e]                                 ; $7752: $fa $3e $fe
    inc e                                         ; $7755: $1c
    db $fc                                        ; $7756: $fc
    jr jr_0dc_7751                                ; $7757: $18 $f8

    sbc b                                         ; $7759: $98
    ld hl, sp+$08                                 ; $775a: $f8 $08
    ld hl, sp-$18                                 ; $775c: $f8 $e8
    inc bc                                        ; $775e: $03
    ld hl, sp-$7f                                 ; $775f: $f8 $81
    and b                                         ; $7761: $a0
    rlca                                          ; $7762: $07
    ldh [rSC], a                                  ; $7763: $e0 $02
    nop                                           ; $7765: $00
    rst $38                                       ; $7766: $ff
    dec c                                         ; $7767: $0d
    inc b                                         ; $7768: $04
    ld hl, sp+$07                                 ; $7769: $f8 $07
    ld a, [c]                                     ; $776b: $f2
    ld bc, $f9e2                                  ; $776c: $01 $e2 $f9
    ld [c], a                                     ; $776f: $e2
    rst $38                                       ; $7770: $ff

jr_0dc_7771:
    ld a, [c]                                     ; $7771: $f2
    ld hl, sp-$0e                                 ; $7772: $f8 $f2
    nop                                           ; $7774: $00
    ld [bc], a                                    ; $7775: $02
    ld a, [bc]                                    ; $7776: $0a
    sub b                                         ; $7777: $90
    cpl                                           ; $7778: $2f
    dec l                                         ; $7779: $2d
    ccf                                           ; $777a: $3f
    dec [hl]                                      ; $777b: $35
    ld a, a                                       ; $777c: $7f
    ld e, d                                       ; $777d: $5a
    dec sp                                        ; $777e: $3b
    scf                                           ; $777f: $37
    ld l, a                                       ; $7780: $6f
    ld e, l                                       ; $7781: $5d
    ccf                                           ; $7782: $3f
    ld [hl], $37                                  ; $7783: $36 $37
    dec a                                         ; $7785: $3d
    dec e                                         ; $7786: $1d
    rra                                           ; $7787: $1f
    ld [bc], a                                    ; $7788: $02
    rrca                                          ; $7789: $0f
    adc h                                         ; $778a: $8c
    db $10                                        ; $778b: $10
    rra                                           ; $778c: $1f
    ld h, b                                       ; $778d: $60
    ld a, a                                       ; $778e: $7f
    ld b, b                                       ; $778f: $40
    ld a, a                                       ; $7790: $7f
    rst $00                                       ; $7791: $c7
    rst $38                                       ; $7792: $ff
    ld a, [$b0ff]                                 ; $7793: $fa $ff $b0
    rst $38                                       ; $7796: $ff
    ld [bc], a                                    ; $7797: $02
    db $10                                        ; $7798: $10
    ld [bc], a                                    ; $7799: $02
    jr nc, jr_0dc_7725                            ; $779a: $30 $89

    jr c, jr_0dc_77b6                             ; $779c: $38 $18

    inc e                                         ; $779e: $1c
    inc [hl]                                      ; $779f: $34
    jr c, jr_0dc_77aa                             ; $77a0: $38 $08

    inc l                                         ; $77a2: $2c
    inc [hl]                                      ; $77a3: $34
    jr c, jr_0dc_77a8                             ; $77a4: $38 $02

    jr jr_0dc_7729                                ; $77a6: $18 $81

jr_0dc_77a8:
    jr c, jr_0dc_77ac                             ; $77a8: $38 $02

jr_0dc_77aa:
    jr nc, jr_0dc_77ae                            ; $77aa: $30 $02

jr_0dc_77ac:
    jr nz, jr_0dc_774f                            ; $77ac: $20 $a1

jr_0dc_77ae:
    db $10                                        ; $77ae: $10
    jr nc, jr_0dc_77bd                            ; $77af: $30 $0c

    inc a                                         ; $77b1: $3c
    ld b, $3e                                     ; $77b2: $06 $3e
    ld b, $3e                                     ; $77b4: $06 $3e

jr_0dc_77b6:
    dec a                                         ; $77b6: $3d
    ccf                                           ; $77b7: $3f
    cpl                                           ; $77b8: $2f
    ccf                                           ; $77b9: $3f
    cp h                                          ; $77ba: $bc
    rst $38                                       ; $77bb: $ff
    ld e, a                                       ; $77bc: $5f

jr_0dc_77bd:
    ld a, a                                       ; $77bd: $7f
    ld a, [$f8bf]                                 ; $77be: $fa $bf $f8
    sbc a                                         ; $77c1: $9f
    pop af                                        ; $77c2: $f1
    rst $38                                       ; $77c3: $ff
    ldh a, [$bf]                                  ; $77c4: $f0 $bf
    ld [hl], c                                    ; $77c6: $71
    ld e, a                                       ; $77c7: $5f
    ld [hl-], a                                   ; $77c8: $32
    ccf                                           ; $77c9: $3f
    ld hl, $213f                                  ; $77ca: $21 $3f $21
    ccf                                           ; $77cd: $3f
    daa                                           ; $77ce: $27
    inc bc                                        ; $77cf: $03
    ccf                                           ; $77d0: $3f
    ld [bc], a                                    ; $77d1: $02
    ld b, $84                                     ; $77d2: $06 $84
    ld a, [bc]                                    ; $77d4: $0a
    ld c, $1a                                     ; $77d5: $0e $1a
    ld e, $02                                     ; $77d7: $1e $02
    ld b, $96                                     ; $77d9: $06 $96
    jp c, $e9fe                                   ; $77db: $da $fe $e9

    rst $38                                       ; $77de: $ff
    ld l, a                                       ; $77df: $6f
    rst $38                                       ; $77e0: $ff

jr_0dc_77e1:
    cpl                                           ; $77e1: $2f
    db $fd                                        ; $77e2: $fd
    ld a, $fa                                     ; $77e3: $3e $fa
    inc e                                         ; $77e5: $1c
    db $fc                                        ; $77e6: $fc
    jr jr_0dc_77e1                                ; $77e7: $18 $f8

    sbc b                                         ; $77e9: $98
    ld hl, sp+$18                                 ; $77ea: $f8 $18
    ld hl, sp-$78                                 ; $77ec: $f8 $88
    ld hl, sp+$08                                 ; $77ee: $f8 $08
    ld hl, sp+$02                                 ; $77f0: $f8 $02
    ldh a, [rDIV]                                 ; $77f2: $f0 $04
    ldh [rSC], a                                  ; $77f4: $e0 $02
    ld b, b                                       ; $77f6: $40
    ld [bc], a                                    ; $77f7: $02
    nop                                           ; $77f8: $00
    rst $38                                       ; $77f9: $ff
    dec c                                         ; $77fa: $0d
    inc b                                         ; $77fb: $04
    ld hl, sp+$07                                 ; $77fc: $f8 $07
    ld a, [c]                                     ; $77fe: $f2
    ld bc, $f8e2                                  ; $77ff: $01 $e2 $f8
    ld [c], a                                     ; $7802: $e2
    rst $38                                       ; $7803: $ff
    ld a, [c]                                     ; $7804: $f2
    ld hl, sp-$0e                                 ; $7805: $f8 $f2
    nop                                           ; $7807: $00
    ld [bc], a                                    ; $7808: $02
    dec b                                         ; $7809: $05
    adc e                                         ; $780a: $8b
    rla                                           ; $780b: $17
    ld d, $1f                                     ; $780c: $16 $1f
    ld a, [de]                                    ; $780e: $1a
    ccf                                           ; $780f: $3f
    dec l                                         ; $7810: $2d
    dec e                                         ; $7811: $1d
    dec de                                        ; $7812: $1b
    scf                                           ; $7813: $37
    ld l, $1f                                     ; $7814: $2e $1f
    ld [bc], a                                    ; $7816: $02
    dec de                                        ; $7817: $1b
    add e                                         ; $7818: $83
    ld e, $0e                                     ; $7819: $1e $0e
    rrca                                          ; $781b: $0f
    ld [bc], a                                    ; $781c: $02
    rlca                                          ; $781d: $07
    adc h                                         ; $781e: $8c
    jr jr_0dc_7840                                ; $781f: $18 $1f

    jr nz, jr_0dc_7862                            ; $7821: $20 $3f

    jr nz, jr_0dc_7864                            ; $7823: $20 $3f

    ld b, a                                       ; $7825: $47
    ld a, a                                       ; $7826: $7f
    ld a, l                                       ; $7827: $7d
    ld a, a                                       ; $7828: $7f
    cp b                                          ; $7829: $b8
    rst $38                                       ; $782a: $ff
    ld [bc], a                                    ; $782b: $02
    db $10                                        ; $782c: $10
    ld [bc], a                                    ; $782d: $02
    ld [hl], b                                    ; $782e: $70
    adc h                                         ; $782f: $8c
    ld a, b                                       ; $7830: $78
    ld e, b                                       ; $7831: $58
    ld e, h                                       ; $7832: $5c
    inc [hl]                                      ; $7833: $34
    ld a, b                                       ; $7834: $78
    ld c, b                                       ; $7835: $48
    ld l, h                                       ; $7836: $6c
    ld [hl], h                                    ; $7837: $74
    ld a, b                                       ; $7838: $78
    jr @+$5a                                      ; $7839: $18 $58

    ld a, b                                       ; $783b: $78
    ld [bc], a                                    ; $783c: $02
    ld [hl], b                                    ; $783d: $70
    ld [bc], a                                    ; $783e: $02
    ld h, b                                       ; $783f: $60

jr_0dc_7840:
    adc l                                         ; $7840: $8d
    jr jr_0dc_78bb                                ; $7841: $18 $78

    inc b                                         ; $7843: $04
    ld a, h                                       ; $7844: $7c
    ld c, $7e                                     ; $7845: $0e $7e
    ld c, [hl]                                    ; $7847: $4e
    ld a, [hl]                                    ; $7848: $7e
    dec a                                         ; $7849: $3d
    ld a, a                                       ; $784a: $7f
    cpl                                           ; $784b: $2f
    ld a, a                                       ; $784c: $7f
    sbc h                                         ; $784d: $9c
    inc bc                                        ; $784e: $03
    rst $38                                       ; $784f: $ff
    sub c                                         ; $7850: $91
    ld a, [$f0bf]                                 ; $7851: $fa $bf $f0
    rst $38                                       ; $7854: $ff
    ld [hl], c                                    ; $7855: $71
    ld a, a                                       ; $7856: $7f
    ld [hl], b                                    ; $7857: $70
    ld a, a                                       ; $7858: $7f
    ld hl, $213f                                  ; $7859: $21 $3f $21
    ccf                                           ; $785c: $3f
    ld hl, $203f                                  ; $785d: $21 $3f $20
    ccf                                           ; $7860: $3f
    cpl                                           ; $7861: $2f

jr_0dc_7862:
    inc bc                                        ; $7862: $03
    ccf                                           ; $7863: $3f

jr_0dc_7864:
    ld [bc], a                                    ; $7864: $02
    ld b, $81                                     ; $7865: $06 $81
    ld a, [bc]                                    ; $7867: $0a
    inc bc                                        ; $7868: $03
    ld c, $02                                     ; $7869: $0e $02
    ld e, $96                                     ; $786b: $1e $96
    reti                                          ; $786d: $d9


    rst $38                                       ; $786e: $ff
    reti                                          ; $786f: $d9


    rst $38                                       ; $7870: $ff
    ld l, a                                       ; $7871: $6f
    rst $38                                       ; $7872: $ff

jr_0dc_7873:
    cpl                                           ; $7873: $2f
    ld sp, hl                                     ; $7874: $f9
    ld a, $fe                                     ; $7875: $3e $fe
    inc e                                         ; $7877: $1c
    db $fc                                        ; $7878: $fc
    jr jr_0dc_7873                                ; $7879: $18 $f8

    sbc b                                         ; $787b: $98
    ld hl, sp+$18                                 ; $787c: $f8 $18
    ld hl, sp-$68                                 ; $787e: $f8 $98
    ld hl, sp+$08                                 ; $7880: $f8 $08
    ld hl, sp+$02                                 ; $7882: $f8 $02
    ldh a, [rDIV]                                 ; $7884: $f0 $04
    ldh [rSC], a                                  ; $7886: $e0 $02
    ret nz                                        ; $7888: $c0

    ld [bc], a                                    ; $7889: $02
    nop                                           ; $788a: $00
    rst $38                                       ; $788b: $ff
    dec c                                         ; $788c: $0d
    inc b                                         ; $788d: $04
    ld hl, sp+$07                                 ; $788e: $f8 $07
    ld a, [c]                                     ; $7890: $f2
    ld bc, $f8e3                                  ; $7891: $01 $e3 $f8
    db $e3                                        ; $7894: $e3
    rst $38                                       ; $7895: $ff
    di                                            ; $7896: $f3
    ld hl, sp-$0d                                 ; $7897: $f8 $f3
    nop                                           ; $7899: $00
    ld [bc], a                                    ; $789a: $02
    dec b                                         ; $789b: $05
    adc e                                         ; $789c: $8b
    rla                                           ; $789d: $17
    ld d, $1f                                     ; $789e: $16 $1f
    ld a, [de]                                    ; $78a0: $1a
    ccf                                           ; $78a1: $3f
    dec l                                         ; $78a2: $2d
    dec e                                         ; $78a3: $1d
    dec de                                        ; $78a4: $1b
    scf                                           ; $78a5: $37
    ld l, $1f                                     ; $78a6: $2e $1f
    ld [bc], a                                    ; $78a8: $02
    dec de                                        ; $78a9: $1b
    add e                                         ; $78aa: $83
    ld e, $0e                                     ; $78ab: $1e $0e
    rrca                                          ; $78ad: $0f
    ld [bc], a                                    ; $78ae: $02
    rlca                                          ; $78af: $07
    add [hl]                                      ; $78b0: $86
    jr jr_0dc_78d2                                ; $78b1: $18 $1f

    ld b, b                                       ; $78b3: $40
    ld a, a                                       ; $78b4: $7f
    jr nz, jr_0dc_78f6                            ; $78b5: $20 $3f

    ld [bc], a                                    ; $78b7: $02
    ld a, a                                       ; $78b8: $7f
    add h                                         ; $78b9: $84
    ld a, l                                       ; $78ba: $7d

jr_0dc_78bb:
    ld a, a                                       ; $78bb: $7f
    sbc b                                         ; $78bc: $98
    rst $38                                       ; $78bd: $ff
    ld [bc], a                                    ; $78be: $02
    db $10                                        ; $78bf: $10
    ld [bc], a                                    ; $78c0: $02
    ld [hl], b                                    ; $78c1: $70
    adc h                                         ; $78c2: $8c
    ld a, b                                       ; $78c3: $78
    ld e, b                                       ; $78c4: $58
    ld e, h                                       ; $78c5: $5c
    inc [hl]                                      ; $78c6: $34
    ld a, b                                       ; $78c7: $78
    ld c, b                                       ; $78c8: $48
    ld l, h                                       ; $78c9: $6c
    ld [hl], h                                    ; $78ca: $74
    ld a, b                                       ; $78cb: $78
    jr jr_0dc_7926                                ; $78cc: $18 $58

    ld a, b                                       ; $78ce: $78
    ld [bc], a                                    ; $78cf: $02
    ld [hl], b                                    ; $78d0: $70
    ld [bc], a                                    ; $78d1: $02

jr_0dc_78d2:
    ld h, b                                       ; $78d2: $60
    add l                                         ; $78d3: $85
    jr jr_0dc_794e                                ; $78d4: $18 $78

    inc b                                         ; $78d6: $04
    ld a, h                                       ; $78d7: $7c
    ld b, $03                                     ; $78d8: $06 $03
    ld a, [hl]                                    ; $78da: $7e
    add l                                         ; $78db: $85
    dec a                                         ; $78dc: $3d

jr_0dc_78dd:
    ld a, a                                       ; $78dd: $7f
    cpl                                           ; $78de: $2f
    ld a, a                                       ; $78df: $7f
    sbc h                                         ; $78e0: $9c
    inc bc                                        ; $78e1: $03
    rst $38                                       ; $78e2: $ff
    adc a                                         ; $78e3: $8f
    ld a, [$f0bf]                                 ; $78e4: $fa $bf $f0
    cp a                                          ; $78e7: $bf
    pop af                                        ; $78e8: $f1
    rst $38                                       ; $78e9: $ff
    ld [hl], c                                    ; $78ea: $71
    ld a, a                                       ; $78eb: $7f
    inc hl                                        ; $78ec: $23
    ccf                                           ; $78ed: $3f
    ld hl, $213f                                  ; $78ee: $21 $3f $21
    ccf                                           ; $78f1: $3f
    cpl                                           ; $78f2: $2f
    inc bc                                        ; $78f3: $03
    ccf                                           ; $78f4: $3f
    add c                                         ; $78f5: $81

jr_0dc_78f6:
    ld a, [bc]                                    ; $78f6: $0a
    rlca                                          ; $78f7: $07
    ld c, $02                                     ; $78f8: $0e $02
    nop                                           ; $78fa: $00
    sub h                                         ; $78fb: $94
    reti                                          ; $78fc: $d9


    rst $38                                       ; $78fd: $ff
    reti                                          ; $78fe: $d9


    rst $38                                       ; $78ff: $ff
    ld e, a                                       ; $7900: $5f
    rst $38                                       ; $7901: $ff
    cpl                                           ; $7902: $2f
    ld sp, hl                                     ; $7903: $f9

jr_0dc_7904:
    ld a, $fe                                     ; $7904: $3e $fe
    inc e                                         ; $7906: $1c
    db $fc                                        ; $7907: $fc
    sbc b                                         ; $7908: $98
    ld hl, sp+$18                                 ; $7909: $f8 $18
    ld hl, sp-$78                                 ; $790b: $f8 $88
    ld hl, sp+$08                                 ; $790d: $f8 $08
    ld hl, sp+$02                                 ; $790f: $f8 $02
    ldh a, [rSC]                                  ; $7911: $f0 $02
    ret nz                                        ; $7913: $c0

    add c                                         ; $7914: $81
    and b                                         ; $7915: $a0
    inc bc                                        ; $7916: $03
    ldh [rDIV], a                                 ; $7917: $e0 $04
    nop                                           ; $7919: $00
    rst $38                                       ; $791a: $ff
    dec c                                         ; $791b: $0d
    inc b                                         ; $791c: $04
    ld hl, sp+$07                                 ; $791d: $f8 $07
    ld a, [c]                                     ; $791f: $f2
    ld bc, $f9e2                                  ; $7920: $01 $e2 $f9
    ld [c], a                                     ; $7923: $e2
    rst $38                                       ; $7924: $ff
    ld a, [c]                                     ; $7925: $f2

jr_0dc_7926:
    ld hl, sp-$0e                                 ; $7926: $f8 $f2
    nop                                           ; $7928: $00
    ld [bc], a                                    ; $7929: $02
    ld a, [bc]                                    ; $792a: $0a
    sub b                                         ; $792b: $90
    cpl                                           ; $792c: $2f
    dec l                                         ; $792d: $2d
    ccf                                           ; $792e: $3f
    dec [hl]                                      ; $792f: $35
    ld a, a                                       ; $7930: $7f
    ld e, d                                       ; $7931: $5a
    dec sp                                        ; $7932: $3b
    scf                                           ; $7933: $37
    ld l, a                                       ; $7934: $6f
    ld e, l                                       ; $7935: $5d
    ccf                                           ; $7936: $3f
    ld [hl], $37                                  ; $7937: $36 $37
    dec a                                         ; $7939: $3d
    dec e                                         ; $793a: $1d
    rra                                           ; $793b: $1f
    ld [bc], a                                    ; $793c: $02
    rrca                                          ; $793d: $0f
    adc h                                         ; $793e: $8c
    db $10                                        ; $793f: $10
    rra                                           ; $7940: $1f
    ld h, b                                       ; $7941: $60
    ld a, a                                       ; $7942: $7f
    ld b, b                                       ; $7943: $40
    ld a, a                                       ; $7944: $7f
    rst $00                                       ; $7945: $c7
    rst $38                                       ; $7946: $ff
    ld a, [$b0ff]                                 ; $7947: $fa $ff $b0
    rst $38                                       ; $794a: $ff
    ld [bc], a                                    ; $794b: $02
    db $10                                        ; $794c: $10
    ld [bc], a                                    ; $794d: $02

jr_0dc_794e:
    jr nc, @-$75                                  ; $794e: $30 $89

    jr c, jr_0dc_796a                             ; $7950: $38 $18

    inc e                                         ; $7952: $1c
    inc [hl]                                      ; $7953: $34
    jr c, jr_0dc_795e                             ; $7954: $38 $08

    inc l                                         ; $7956: $2c
    inc [hl]                                      ; $7957: $34
    jr c, jr_0dc_795c                             ; $7958: $38 $02

    jr jr_0dc_78dd                                ; $795a: $18 $81

jr_0dc_795c:
    jr c, jr_0dc_7960                             ; $795c: $38 $02

jr_0dc_795e:
    jr nc, jr_0dc_7962                            ; $795e: $30 $02

jr_0dc_7960:
    jr nz, jr_0dc_7904                            ; $7960: $20 $a2

jr_0dc_7962:
    db $10                                        ; $7962: $10
    jr nc, jr_0dc_7971                            ; $7963: $30 $0c

    inc a                                         ; $7965: $3c
    ld b, $3e                                     ; $7966: $06 $3e
    ld b, $3e                                     ; $7968: $06 $3e

jr_0dc_796a:
    dec a                                         ; $796a: $3d
    ccf                                           ; $796b: $3f
    cpl                                           ; $796c: $2f
    ccf                                           ; $796d: $3f
    cp h                                          ; $796e: $bc
    rst $38                                       ; $796f: $ff
    ld e, a                                       ; $7970: $5f

jr_0dc_7971:
    ld a, a                                       ; $7971: $7f
    ld a, [$f8bf]                                 ; $7972: $fa $bf $f8
    sbc a                                         ; $7975: $9f
    pop af                                        ; $7976: $f1
    rst $38                                       ; $7977: $ff
    ldh a, [$bf]                                  ; $7978: $f0 $bf
    ld [hl], c                                    ; $797a: $71
    ld a, a                                       ; $797b: $7f
    ld [hl-], a                                   ; $797c: $32
    ccf                                           ; $797d: $3f
    ld sp, $233f                                  ; $797e: $31 $3f $23
    ccf                                           ; $7981: $3f
    ld hl, $023f                                  ; $7982: $21 $3f $02
    rra                                           ; $7985: $1f
    inc b                                         ; $7986: $04
    ld c, $02                                     ; $7987: $0e $02
    inc b                                         ; $7989: $04
    ld [bc], a                                    ; $798a: $02
    nop                                           ; $798b: $00
    sub l                                         ; $798c: $95
    jp c, $d9fe                                   ; $798d: $da $fe $d9

    rst $38                                       ; $7990: $ff
    cp a                                          ; $7991: $bf
    rst $38                                       ; $7992: $ff

jr_0dc_7993:
    cp a                                          ; $7993: $bf
    db $fd                                        ; $7994: $fd
    ld a, [hl]                                    ; $7995: $7e
    ld a, [$fc1c]                                 ; $7996: $fa $1c $fc
    jr jr_0dc_7993                                ; $7999: $18 $f8

    sbc b                                         ; $799b: $98
    ld hl, sp+$08                                 ; $799c: $f8 $08
    ld hl, sp+$08                                 ; $799e: $f8 $08
    ld hl, sp-$38                                 ; $79a0: $f8 $c8
    inc bc                                        ; $79a2: $03
    ld hl, sp+$02                                 ; $79a3: $f8 $02
    ret nz                                        ; $79a5: $c0

    add h                                         ; $79a6: $84
    and b                                         ; $79a7: $a0
    ldh [$b0], a                                  ; $79a8: $e0 $b0
    ldh a, [rSC]                                  ; $79aa: $f0 $02
    ret nz                                        ; $79ac: $c0

    rst $38                                       ; $79ad: $ff
    dec c                                         ; $79ae: $0d
    inc b                                         ; $79af: $04
    ld hl, sp+$07                                 ; $79b0: $f8 $07
    ld a, [c]                                     ; $79b2: $f2
    ld bc, $f9e2                                  ; $79b3: $01 $e2 $f9
    ld [c], a                                     ; $79b6: $e2
    rst $38                                       ; $79b7: $ff
    ld a, [c]                                     ; $79b8: $f2
    ld hl, sp-$0e                                 ; $79b9: $f8 $f2
    nop                                           ; $79bb: $00
    ld [bc], a                                    ; $79bc: $02
    add hl, bc                                    ; $79bd: $09
    sbc h                                         ; $79be: $9c
    rrca                                          ; $79bf: $0f
    ld c, $1e                                     ; $79c0: $0e $1e
    dec de                                        ; $79c2: $1b
    ccf                                           ; $79c3: $3f
    inc l                                         ; $79c4: $2c
    rra                                           ; $79c5: $1f
    jr jr_0dc_79f7                                ; $79c6: $18 $2f

    ld [hl], $1f                                  ; $79c8: $36 $1f
    db $10                                        ; $79ca: $10
    rra                                           ; $79cb: $1f
    add hl, de                                    ; $79cc: $19
    rrca                                          ; $79cd: $0f
    add hl, bc                                    ; $79ce: $09
    rlca                                          ; $79cf: $07
    inc b                                         ; $79d0: $04
    rra                                           ; $79d1: $1f
    dec de                                        ; $79d2: $1b
    cpl                                           ; $79d3: $2f
    add hl, sp                                    ; $79d4: $39
    ld l, $3b                                     ; $79d5: $2e $3b
    ld h, a                                       ; $79d7: $67
    ld a, l                                       ; $79d8: $7d
    ld c, h                                       ; $79d9: $4c
    ld a, a                                       ; $79da: $7f
    ld [bc], a                                    ; $79db: $02
    rst $38                                       ; $79dc: $ff
    ld [bc], a                                    ; $79dd: $02
    db $10                                        ; $79de: $10
    ld [bc], a                                    ; $79df: $02
    inc [hl]                                      ; $79e0: $34
    sbc c                                         ; $79e1: $99
    inc a                                         ; $79e2: $3c
    inc l                                         ; $79e3: $2c
    ld a, $1a                                     ; $79e4: $3e $1a
    inc a                                         ; $79e6: $3c
    inc c                                         ; $79e7: $0c
    ld a, [hl-]                                   ; $79e8: $3a
    ld [hl], $3c                                  ; $79e9: $36 $3c
    inc b                                         ; $79eb: $04
    inc a                                         ; $79ec: $3c
    inc c                                         ; $79ed: $0c
    jr c, jr_0dc_7a18                             ; $79ee: $38 $28

    jr nc, jr_0dc_7a02                            ; $79f0: $30 $10

    inc a                                         ; $79f2: $3c
    inc l                                         ; $79f3: $2c
    ld a, [hl-]                                   ; $79f4: $3a
    ld c, $3a                                     ; $79f5: $0e $3a

jr_0dc_79f7:
    ld l, $33                                     ; $79f7: $2e $33
    rra                                           ; $79f9: $1f
    add hl, de                                    ; $79fa: $19
    inc bc                                        ; $79fb: $03
    ccf                                           ; $79fc: $3f
    sbc b                                         ; $79fd: $98
    ld a, a                                       ; $79fe: $7f
    ld [hl], a                                    ; $79ff: $77
    cp [hl]                                       ; $7a00: $be
    rst $18                                       ; $7a01: $df

jr_0dc_7a02:
    ei                                            ; $7a02: $fb
    rst $08                                       ; $7a03: $cf
    or $bf                                        ; $7a04: $f6 $bf
    ld [hl], d                                    ; $7a06: $72
    ld e, a                                       ; $7a07: $5f
    ld [hl], $3f                                  ; $7a08: $36 $3f
    ld [hl-], a                                   ; $7a0a: $32
    ccf                                           ; $7a0b: $3f
    ld [hl], $3f                                  ; $7a0c: $36 $3f
    ld [hl-], a                                   ; $7a0e: $32
    ccf                                           ; $7a0f: $3f
    scf                                           ; $7a10: $37
    ccf                                           ; $7a11: $3f
    inc de                                        ; $7a12: $13
    rra                                           ; $7a13: $1f
    dec d                                         ; $7a14: $15
    rra                                           ; $7a15: $1f
    ld [bc], a                                    ; $7a16: $02
    dec de                                        ; $7a17: $1b

jr_0dc_7a18:
    add d                                         ; $7a18: $82
    dec d                                         ; $7a19: $15
    rla                                           ; $7a1a: $17
    ld [bc], a                                    ; $7a1b: $02
    rlca                                          ; $7a1c: $07
    ld [bc], a                                    ; $7a1d: $02
    ld c, $98                                     ; $7a1e: $0e $98
    ld a, l                                       ; $7a20: $7d
    rst $38                                       ; $7a21: $ff
    ccf                                           ; $7a22: $3f
    rst $38                                       ; $7a23: $ff
    xor $fd                                       ; $7a24: $ee $fd
    ld a, a                                       ; $7a26: $7f
    db $fd                                        ; $7a27: $fd
    ld l, [hl]                                    ; $7a28: $6e
    cp $3f                                        ; $7a29: $fe $3f
    db $fd                                        ; $7a2b: $fd
    cpl                                           ; $7a2c: $2f
    ld sp, hl                                     ; $7a2d: $f9
    ld [hl], $fe                                  ; $7a2e: $36 $fe
    ld h, $fe                                     ; $7a30: $26 $fe
    ld a, [c]                                     ; $7a32: $f2
    cp $e4                                        ; $7a33: $fe $e4
    db $fc                                        ; $7a35: $fc
    ld d, h                                       ; $7a36: $54
    ld a, h                                       ; $7a37: $7c
    ld [bc], a                                    ; $7a38: $02
    ld l, h                                       ; $7a39: $6c
    add d                                         ; $7a3a: $82
    ld d, h                                       ; $7a3b: $54
    ld [hl], h                                    ; $7a3c: $74
    ld [bc], a                                    ; $7a3d: $02
    ld [hl], b                                    ; $7a3e: $70
    ld [bc], a                                    ; $7a3f: $02
    jr c, @+$01                                   ; $7a40: $38 $ff

    dec c                                         ; $7a42: $0d
    inc b                                         ; $7a43: $04
    ld hl, sp+$07                                 ; $7a44: $f8 $07
    ld a, [c]                                     ; $7a46: $f2
    ld bc, $f9e2                                  ; $7a47: $01 $e2 $f9
    ld [c], a                                     ; $7a4a: $e2
    nop                                           ; $7a4b: $00
    ld a, [c]                                     ; $7a4c: $f2
    ld hl, sp-$0e                                 ; $7a4d: $f8 $f2
    nop                                           ; $7a4f: $00
    ld [bc], a                                    ; $7a50: $02
    add hl, bc                                    ; $7a51: $09
    sbc h                                         ; $7a52: $9c
    rrca                                          ; $7a53: $0f
    ld c, $1e                                     ; $7a54: $0e $1e
    dec de                                        ; $7a56: $1b
    ccf                                           ; $7a57: $3f
    inc l                                         ; $7a58: $2c
    rra                                           ; $7a59: $1f
    jr jr_0dc_7a8b                                ; $7a5a: $18 $2f

    ld [hl], $1f                                  ; $7a5c: $36 $1f
    db $10                                        ; $7a5e: $10
    rra                                           ; $7a5f: $1f
    add hl, de                                    ; $7a60: $19
    rrca                                          ; $7a61: $0f
    add hl, bc                                    ; $7a62: $09
    rlca                                          ; $7a63: $07
    inc b                                         ; $7a64: $04
    rra                                           ; $7a65: $1f
    dec de                                        ; $7a66: $1b
    cpl                                           ; $7a67: $2f
    add hl, sp                                    ; $7a68: $39
    ld l, $3b                                     ; $7a69: $2e $3b
    ld h, a                                       ; $7a6b: $67
    ld a, l                                       ; $7a6c: $7d
    ld c, h                                       ; $7a6d: $4c
    ld a, a                                       ; $7a6e: $7f
    ld [bc], a                                    ; $7a6f: $02
    rst $38                                       ; $7a70: $ff
    ld [bc], a                                    ; $7a71: $02
    jr nz, jr_0dc_7a76                            ; $7a72: $20 $02

    ld l, b                                       ; $7a74: $68
    or [hl]                                       ; $7a75: $b6

jr_0dc_7a76:
    ld a, b                                       ; $7a76: $78
    ld e, b                                       ; $7a77: $58
    ld a, h                                       ; $7a78: $7c
    inc [hl]                                      ; $7a79: $34
    ld a, b                                       ; $7a7a: $78
    jr jr_0dc_7af1                                ; $7a7b: $18 $74

    ld l, h                                       ; $7a7d: $6c
    ld a, b                                       ; $7a7e: $78
    ld [$1878], sp                                ; $7a7f: $08 $78 $18
    ld [hl], b                                    ; $7a82: $70
    ld d, b                                       ; $7a83: $50
    ld h, b                                       ; $7a84: $60
    jr nz, jr_0dc_7aff                            ; $7a85: $20 $78

    ld e, b                                       ; $7a87: $58
    ld [hl], h                                    ; $7a88: $74
    inc e                                         ; $7a89: $1c
    ld [hl], h                                    ; $7a8a: $74

jr_0dc_7a8b:
    ld e, h                                       ; $7a8b: $5c
    ld h, [hl]                                    ; $7a8c: $66
    ld a, $32                                     ; $7a8d: $3e $32
    ld a, [hl]                                    ; $7a8f: $7e
    ld a, l                                       ; $7a90: $7d
    ld a, a                                       ; $7a91: $7f
    ccf                                           ; $7a92: $3f
    scf                                           ; $7a93: $37
    ld e, [hl]                                    ; $7a94: $5e
    ld l, a                                       ; $7a95: $6f
    rst $38                                       ; $7a96: $ff
    rst $20                                       ; $7a97: $e7
    ld a, [$7adf]                                 ; $7a98: $fa $df $7a
    ld e, a                                       ; $7a9b: $5f
    ld [hl], $3f                                  ; $7a9c: $36 $3f
    ld [hl-], a                                   ; $7a9e: $32
    ccf                                           ; $7a9f: $3f
    ld [hl], $3f                                  ; $7aa0: $36 $3f
    ld [de], a                                    ; $7aa2: $12
    rra                                           ; $7aa3: $1f
    rla                                           ; $7aa4: $17
    rra                                           ; $7aa5: $1f
    inc de                                        ; $7aa6: $13
    rra                                           ; $7aa7: $1f
    rla                                           ; $7aa8: $17
    rra                                           ; $7aa9: $1f
    dec c                                         ; $7aaa: $0d
    rrca                                          ; $7aab: $0f
    ld [bc], a                                    ; $7aac: $02
    dec bc                                        ; $7aad: $0b
    ld [bc], a                                    ; $7aae: $02
    rlca                                          ; $7aaf: $07
    ld [bc], a                                    ; $7ab0: $02
    nop                                           ; $7ab1: $00
    sbc d                                         ; $7ab2: $9a
    ld l, a                                       ; $7ab3: $6f
    rst $38                                       ; $7ab4: $ff
    ld a, $fd                                     ; $7ab5: $3e $fd
    xor $fd                                       ; $7ab7: $ee $fd
    ld a, a                                       ; $7ab9: $7f
    rst $38                                       ; $7aba: $ff
    cpl                                           ; $7abb: $2f
    db $fd                                        ; $7abc: $fd
    ccf                                           ; $7abd: $3f
    db $fd                                        ; $7abe: $fd
    ld l, $fe                                     ; $7abf: $2e $fe
    ld [hl], $fe                                  ; $7ac1: $36 $fe
    halt                                          ; $7ac3: $76
    cp $f6                                        ; $7ac4: $fe $f6
    cp $d2                                        ; $7ac6: $fe $d2
    cp $5a                                        ; $7ac8: $fe $5a
    ld a, [hl]                                    ; $7aca: $7e
    ld c, h                                       ; $7acb: $4c
    ld l, h                                       ; $7acc: $6c
    ld [bc], a                                    ; $7acd: $02
    ld [hl], h                                    ; $7ace: $74
    ld [bc], a                                    ; $7acf: $02
    ld a, b                                       ; $7ad0: $78
    ld [bc], a                                    ; $7ad1: $02
    ld h, b                                       ; $7ad2: $60
    rst $38                                       ; $7ad3: $ff
    dec c                                         ; $7ad4: $0d
    inc b                                         ; $7ad5: $04
    ld hl, sp+$07                                 ; $7ad6: $f8 $07
    ld a, [c]                                     ; $7ad8: $f2
    ld bc, $f9e3                                  ; $7ad9: $01 $e3 $f9
    db $e3                                        ; $7adc: $e3
    nop                                           ; $7add: $00
    di                                            ; $7ade: $f3
    ld hl, sp-$0d                                 ; $7adf: $f8 $f3
    nop                                           ; $7ae1: $00
    ld [bc], a                                    ; $7ae2: $02
    add hl, bc                                    ; $7ae3: $09
    sbc e                                         ; $7ae4: $9b
    rrca                                          ; $7ae5: $0f
    ld c, $1e                                     ; $7ae6: $0e $1e
    dec de                                        ; $7ae8: $1b
    ccf                                           ; $7ae9: $3f
    inc l                                         ; $7aea: $2c
    rra                                           ; $7aeb: $1f
    jr jr_0dc_7b1d                                ; $7aec: $18 $2f

    ld [hl], $1f                                  ; $7aee: $36 $1f
    db $10                                        ; $7af0: $10

jr_0dc_7af1:
    rra                                           ; $7af1: $1f
    add hl, de                                    ; $7af2: $19
    rrca                                          ; $7af3: $0f
    add hl, bc                                    ; $7af4: $09
    rlca                                          ; $7af5: $07
    inc b                                         ; $7af6: $04
    rra                                           ; $7af7: $1f
    dec de                                        ; $7af8: $1b
    cpl                                           ; $7af9: $2f
    add hl, sp                                    ; $7afa: $39
    ld l, [hl]                                    ; $7afb: $6e
    ld a, e                                       ; $7afc: $7b
    add a                                         ; $7afd: $87
    db $fd                                        ; $7afe: $fd

jr_0dc_7aff:
    ld a, h                                       ; $7aff: $7c

Call_0dc_7b00:
    inc bc                                        ; $7b00: $03
    ld a, a                                       ; $7b01: $7f

Call_0dc_7b02:
    ld [bc], a                                    ; $7b02: $02
    jr nz, jr_0dc_7b07                            ; $7b03: $20 $02

    ld l, b                                       ; $7b05: $68
    sbc d                                         ; $7b06: $9a

jr_0dc_7b07:
    ld a, b                                       ; $7b07: $78
    ld e, b                                       ; $7b08: $58
    ld a, h                                       ; $7b09: $7c
    inc [hl]                                      ; $7b0a: $34
    ld a, b                                       ; $7b0b: $78
    jr jr_0dc_7b82                                ; $7b0c: $18 $74

    ld l, h                                       ; $7b0e: $6c
    ld a, b                                       ; $7b0f: $78
    ld [$1878], sp                                ; $7b10: $08 $78 $18
    ld [hl], b                                    ; $7b13: $70
    ld d, b                                       ; $7b14: $50
    ld h, b                                       ; $7b15: $60
    jr nz, jr_0dc_7b90                            ; $7b16: $20 $78

    ld e, b                                       ; $7b18: $58
    ld [hl], h                                    ; $7b19: $74
    inc e                                         ; $7b1a: $1c
    halt                                          ; $7b1b: $76
    ld e, [hl]                                    ; $7b1c: $5e

jr_0dc_7b1d:
    ld h, c                                       ; $7b1d: $61
    ccf                                           ; $7b1e: $3f
    ld a, $7e                                     ; $7b1f: $3e $7e
    inc bc                                        ; $7b21: $03
    ld a, a                                       ; $7b22: $7f
    sub l                                         ; $7b23: $95
    ld a, e                                       ; $7b24: $7b
    ld e, [hl]                                    ; $7b25: $5e
    ld l, a                                       ; $7b26: $6f
    rst $38                                       ; $7b27: $ff
    rst $20                                       ; $7b28: $e7
    ld a, [$7adf]                                 ; $7b29: $fa $df $7a
    ld e, a                                       ; $7b2c: $5f
    ld [hl], $3f                                  ; $7b2d: $36 $3f
    ld [hl-], a                                   ; $7b2f: $32
    ccf                                           ; $7b30: $3f
    ld [hl-], a                                   ; $7b31: $32
    ccf                                           ; $7b32: $3f
    scf                                           ; $7b33: $37
    ccf                                           ; $7b34: $3f
    inc de                                        ; $7b35: $13
    rra                                           ; $7b36: $1f
    dec d                                         ; $7b37: $15
    rra                                           ; $7b38: $1f
    ld [bc], a                                    ; $7b39: $02
    dec de                                        ; $7b3a: $1b
    ld [bc], a                                    ; $7b3b: $02
    rlca                                          ; $7b3c: $07
    ld [bc], a                                    ; $7b3d: $02
    ld [bc], a                                    ; $7b3e: $02
    inc b                                         ; $7b3f: $04
    nop                                           ; $7b40: $00
    sub [hl]                                      ; $7b41: $96
    ld l, l                                       ; $7b42: $6d
    rst $38                                       ; $7b43: $ff
    ld a, $ff                                     ; $7b44: $3e $ff
    xor $fd                                       ; $7b46: $ee $fd
    ld a, a                                       ; $7b48: $7f
    db $fd                                        ; $7b49: $fd
    ld l, [hl]                                    ; $7b4a: $6e
    cp $3f                                        ; $7b4b: $fe $3f
    db $fd                                        ; $7b4d: $fd
    cpl                                           ; $7b4e: $2f
    rst $38                                       ; $7b4f: $ff
    ld h, $fe                                     ; $7b50: $26 $fe
    or d                                          ; $7b52: $b2
    cp $f2                                        ; $7b53: $fe $f2
    cp $5c                                        ; $7b55: $fe $5c
    ld a, h                                       ; $7b57: $7c
    ld [bc], a                                    ; $7b58: $02
    ld l, h                                       ; $7b59: $6c
    add h                                         ; $7b5a: $84
    ld d, h                                       ; $7b5b: $54
    ld [hl], h                                    ; $7b5c: $74
    ld d, b                                       ; $7b5d: $50
    ld [hl], b                                    ; $7b5e: $70
    ld [bc], a                                    ; $7b5f: $02
    ld a, b                                       ; $7b60: $78
    ld [bc], a                                    ; $7b61: $02
    nop                                           ; $7b62: $00
    rst $38                                       ; $7b63: $ff
    dec c                                         ; $7b64: $0d
    inc b                                         ; $7b65: $04
    ld hl, sp+$07                                 ; $7b66: $f8 $07
    ld a, [c]                                     ; $7b68: $f2
    ld bc, $f9e2                                  ; $7b69: $01 $e2 $f9
    ld [c], a                                     ; $7b6c: $e2
    rst $38                                       ; $7b6d: $ff
    ld a, [c]                                     ; $7b6e: $f2
    ld hl, sp-$0e                                 ; $7b6f: $f8 $f2
    nop                                           ; $7b71: $00
    ld [bc], a                                    ; $7b72: $02
    add hl, bc                                    ; $7b73: $09
    sbc [hl]                                      ; $7b74: $9e
    rrca                                          ; $7b75: $0f
    ld c, $1e                                     ; $7b76: $0e $1e
    dec de                                        ; $7b78: $1b
    ccf                                           ; $7b79: $3f
    inc l                                         ; $7b7a: $2c
    rra                                           ; $7b7b: $1f
    jr jr_0dc_7bad                                ; $7b7c: $18 $2f

    ld [hl], $1f                                  ; $7b7e: $36 $1f
    db $10                                        ; $7b80: $10
    rra                                           ; $7b81: $1f

jr_0dc_7b82:
    add hl, de                                    ; $7b82: $19
    rrca                                          ; $7b83: $0f
    add hl, bc                                    ; $7b84: $09
    rlca                                          ; $7b85: $07
    inc b                                         ; $7b86: $04
    rrca                                          ; $7b87: $0f
    dec bc                                        ; $7b88: $0b
    rra                                           ; $7b89: $1f
    add hl, de                                    ; $7b8a: $19
    ld l, $3b                                     ; $7b8b: $2e $3b
    daa                                           ; $7b8d: $27
    dec a                                         ; $7b8e: $3d
    ld l, h                                       ; $7b8f: $6c

jr_0dc_7b90:
    ld a, a                                       ; $7b90: $7f
    rst $28                                       ; $7b91: $ef
    rst $38                                       ; $7b92: $ff
    ld [bc], a                                    ; $7b93: $02
    db $10                                        ; $7b94: $10
    ld [bc], a                                    ; $7b95: $02
    inc [hl]                                      ; $7b96: $34
    or e                                          ; $7b97: $b3
    inc a                                         ; $7b98: $3c
    inc l                                         ; $7b99: $2c
    ld a, $1a                                     ; $7b9a: $3e $1a
    inc a                                         ; $7b9c: $3c
    inc c                                         ; $7b9d: $0c
    ld a, [hl-]                                   ; $7b9e: $3a
    ld [hl], $3c                                  ; $7b9f: $36 $3c
    inc b                                         ; $7ba1: $04
    inc a                                         ; $7ba2: $3c
    inc c                                         ; $7ba3: $0c
    jr c, jr_0dc_7bce                             ; $7ba4: $38 $28

    jr nc, jr_0dc_7bb8                            ; $7ba6: $30 $10

    jr c, jr_0dc_7bd2                             ; $7ba8: $38 $28

    inc a                                         ; $7baa: $3c
    inc c                                         ; $7bab: $0c
    ld a, [hl-]                                   ; $7bac: $3a

jr_0dc_7bad:
    ld l, $32                                     ; $7bad: $2e $32
    ld e, $1b                                     ; $7baf: $1e $1b
    ccf                                           ; $7bb1: $3f
    dec sp                                        ; $7bb2: $3b
    ccf                                           ; $7bb3: $3f
    ld a, a                                       ; $7bb4: $7f
    ld [hl], a                                    ; $7bb5: $77
    cp [hl]                                       ; $7bb6: $be
    rst $18                                       ; $7bb7: $df

jr_0dc_7bb8:
    ei                                            ; $7bb8: $fb
    rst $08                                       ; $7bb9: $cf
    or $bf                                        ; $7bba: $f6 $bf
    ld [hl], d                                    ; $7bbc: $72
    ld e, a                                       ; $7bbd: $5f
    ld [hl], $3f                                  ; $7bbe: $36 $3f
    ld [hl-], a                                   ; $7bc0: $32
    ccf                                           ; $7bc1: $3f
    ld [hl], $3f                                  ; $7bc2: $36 $3f
    inc sp                                        ; $7bc4: $33
    ccf                                           ; $7bc5: $3f
    dec [hl]                                      ; $7bc6: $35
    ccf                                           ; $7bc7: $3f
    dec d                                         ; $7bc8: $15
    rra                                           ; $7bc9: $1f
    dec d                                         ; $7bca: $15
    inc bc                                        ; $7bcb: $03
    rra                                           ; $7bcc: $1f
    ld [bc], a                                    ; $7bcd: $02

jr_0dc_7bce:
    inc de                                        ; $7bce: $13
    inc b                                         ; $7bcf: $04
    nop                                           ; $7bd0: $00
    sbc b                                         ; $7bd1: $98

jr_0dc_7bd2:
    ld a, l                                       ; $7bd2: $7d
    rst $38                                       ; $7bd3: $ff
    ccf                                           ; $7bd4: $3f
    rst $38                                       ; $7bd5: $ff
    xor $fd                                       ; $7bd6: $ee $fd
    ld a, a                                       ; $7bd8: $7f
    db $fd                                        ; $7bd9: $fd
    ld l, [hl]                                    ; $7bda: $6e
    cp $3f                                        ; $7bdb: $fe $3f
    db $fd                                        ; $7bdd: $fd
    cpl                                           ; $7bde: $2f
    ld sp, hl                                     ; $7bdf: $f9
    ld [hl], $fe                                  ; $7be0: $36 $fe
    and [hl]                                      ; $7be2: $a6
    cp $f2                                        ; $7be3: $fe $f2
    cp $e4                                        ; $7be5: $fe $e4
    db $fc                                        ; $7be7: $fc
    ld [hl], h                                    ; $7be8: $74
    ld a, h                                       ; $7be9: $7c
    ld [bc], a                                    ; $7bea: $02
    ld l, h                                       ; $7beb: $6c
    add d                                         ; $7bec: $82
    ld d, h                                       ; $7bed: $54
    ld [hl], h                                    ; $7bee: $74
    ld [bc], a                                    ; $7bef: $02
    ld [hl], b                                    ; $7bf0: $70
    ld [bc], a                                    ; $7bf1: $02
    nop                                           ; $7bf2: $00
    rst $38                                       ; $7bf3: $ff
    dec c                                         ; $7bf4: $0d
    inc b                                         ; $7bf5: $04
    ld hl, sp+$07                                 ; $7bf6: $f8 $07
    ld a, [c]                                     ; $7bf8: $f2
    ld bc, $f9e2                                  ; $7bf9: $01 $e2 $f9
    ld [c], a                                     ; $7bfc: $e2
    nop                                           ; $7bfd: $00
    ld a, [c]                                     ; $7bfe: $f2
    ld hl, sp-$0e                                 ; $7bff: $f8 $f2
    nop                                           ; $7c01: $00
    ld [bc], a                                    ; $7c02: $02
    add hl, bc                                    ; $7c03: $09
    sbc h                                         ; $7c04: $9c
    rrca                                          ; $7c05: $0f
    ld c, $1e                                     ; $7c06: $0e $1e
    dec de                                        ; $7c08: $1b
    ccf                                           ; $7c09: $3f
    inc l                                         ; $7c0a: $2c
    rra                                           ; $7c0b: $1f
    jr jr_0dc_7c3d                                ; $7c0c: $18 $2f

    ld [hl], $1f                                  ; $7c0e: $36 $1f
    db $10                                        ; $7c10: $10
    rra                                           ; $7c11: $1f
    add hl, de                                    ; $7c12: $19
    rrca                                          ; $7c13: $0f
    add hl, bc                                    ; $7c14: $09
    rlca                                          ; $7c15: $07
    inc b                                         ; $7c16: $04
    rra                                           ; $7c17: $1f
    dec de                                        ; $7c18: $1b
    cpl                                           ; $7c19: $2f
    add hl, sp                                    ; $7c1a: $39
    ld l, $3b                                     ; $7c1b: $2e $3b
    ld h, a                                       ; $7c1d: $67
    ld a, l                                       ; $7c1e: $7d
    ld c, h                                       ; $7c1f: $4c
    ld a, a                                       ; $7c20: $7f
    ld [bc], a                                    ; $7c21: $02
    rst $38                                       ; $7c22: $ff
    ld [bc], a                                    ; $7c23: $02
    jr nz, jr_0dc_7c28                            ; $7c24: $20 $02

    ld l, b                                       ; $7c26: $68
    or [hl]                                       ; $7c27: $b6

jr_0dc_7c28:
    ld a, b                                       ; $7c28: $78
    ld e, b                                       ; $7c29: $58
    ld a, h                                       ; $7c2a: $7c
    inc [hl]                                      ; $7c2b: $34
    ld a, b                                       ; $7c2c: $78
    jr jr_0dc_7ca3                                ; $7c2d: $18 $74

    ld l, h                                       ; $7c2f: $6c
    ld a, b                                       ; $7c30: $78
    ld [$1878], sp                                ; $7c31: $08 $78 $18
    ld [hl], b                                    ; $7c34: $70
    ld d, b                                       ; $7c35: $50
    ld h, b                                       ; $7c36: $60
    jr nz, jr_0dc_7cb1                            ; $7c37: $20 $78

    ld e, b                                       ; $7c39: $58
    ld [hl], h                                    ; $7c3a: $74
    inc e                                         ; $7c3b: $1c
    ld [hl], h                                    ; $7c3c: $74

jr_0dc_7c3d:
    ld e, h                                       ; $7c3d: $5c
    ld h, [hl]                                    ; $7c3e: $66
    ld a, $32                                     ; $7c3f: $3e $32
    ld a, [hl]                                    ; $7c41: $7e
    ld a, l                                       ; $7c42: $7d
    ld a, a                                       ; $7c43: $7f
    ld a, e                                       ; $7c44: $7b
    ld l, a                                       ; $7c45: $6f
    cp $9f                                        ; $7c46: $fe $9f
    ei                                            ; $7c48: $fb
    rst $18                                       ; $7c49: $df
    or $bf                                        ; $7c4a: $f6 $bf
    ld [hl], d                                    ; $7c4c: $72
    ld e, a                                       ; $7c4d: $5f
    halt                                          ; $7c4e: $76
    ld a, a                                       ; $7c4f: $7f
    ld [hl-], a                                   ; $7c50: $32
    ccf                                           ; $7c51: $3f
    ld [hl], $3f                                  ; $7c52: $36 $3f
    scf                                           ; $7c54: $37
    ccf                                           ; $7c55: $3f
    scf                                           ; $7c56: $37
    ccf                                           ; $7c57: $3f
    dec h                                         ; $7c58: $25
    ccf                                           ; $7c59: $3f
    dec l                                         ; $7c5a: $2d
    ccf                                           ; $7c5b: $3f
    add hl, de                                    ; $7c5c: $19
    dec de                                        ; $7c5d: $1b
    ld [bc], a                                    ; $7c5e: $02
    rla                                           ; $7c5f: $17
    ld [bc], a                                    ; $7c60: $02
    rrca                                          ; $7c61: $0f
    ld [bc], a                                    ; $7c62: $02
    inc bc                                        ; $7c63: $03
    sbc d                                         ; $7c64: $9a
    ld l, l                                       ; $7c65: $6d
    rst $38                                       ; $7c66: $ff
    ccf                                           ; $7c67: $3f
    rst $38                                       ; $7c68: $ff
    rst $28                                       ; $7c69: $ef
    db $fd                                        ; $7c6a: $fd
    ld a, a                                       ; $7c6b: $7f
    ld hl, sp+$6f                                 ; $7c6c: $f8 $6f
    db $fd                                        ; $7c6e: $fd
    ld a, $f2                                     ; $7c6f: $3e $f2
    ld l, $fa                                     ; $7c71: $2e $fa
    ld a, $fe                                     ; $7c73: $3e $fe
    inc h                                         ; $7c75: $24
    db $fc                                        ; $7c76: $fc
    db $f4                                        ; $7c77: $f4
    db $fc                                        ; $7c78: $fc
    db $e4                                        ; $7c79: $e4
    db $fc                                        ; $7c7a: $fc
    ld [hl], h                                    ; $7c7b: $74
    ld a, h                                       ; $7c7c: $7c
    ld e, b                                       ; $7c7d: $58
    ld a, b                                       ; $7c7e: $78
    ld [bc], a                                    ; $7c7f: $02
    ld l, b                                       ; $7c80: $68
    ld [bc], a                                    ; $7c81: $02
    ld [hl], b                                    ; $7c82: $70
    ld [bc], a                                    ; $7c83: $02
    nop                                           ; $7c84: $00
    rst $38                                       ; $7c85: $ff
    dec c                                         ; $7c86: $0d
    inc b                                         ; $7c87: $04
    ld hl, sp+$07                                 ; $7c88: $f8 $07
    ld a, [c]                                     ; $7c8a: $f2
    ld bc, $f9e3                                  ; $7c8b: $01 $e3 $f9
    db $e3                                        ; $7c8e: $e3
    nop                                           ; $7c8f: $00
    di                                            ; $7c90: $f3
    ld hl, sp-$0d                                 ; $7c91: $f8 $f3
    nop                                           ; $7c93: $00
    ld [bc], a                                    ; $7c94: $02
    add hl, bc                                    ; $7c95: $09
    sbc h                                         ; $7c96: $9c
    rrca                                          ; $7c97: $0f
    ld c, $1e                                     ; $7c98: $0e $1e
    dec de                                        ; $7c9a: $1b
    ccf                                           ; $7c9b: $3f
    inc l                                         ; $7c9c: $2c
    rra                                           ; $7c9d: $1f
    jr jr_0dc_7ccf                                ; $7c9e: $18 $2f

    ld [hl], $1f                                  ; $7ca0: $36 $1f
    db $10                                        ; $7ca2: $10

jr_0dc_7ca3:
    rra                                           ; $7ca3: $1f
    add hl, de                                    ; $7ca4: $19
    rrca                                          ; $7ca5: $0f
    add hl, bc                                    ; $7ca6: $09
    rlca                                          ; $7ca7: $07
    inc b                                         ; $7ca8: $04
    rra                                           ; $7ca9: $1f
    dec de                                        ; $7caa: $1b
    cpl                                           ; $7cab: $2f
    add hl, sp                                    ; $7cac: $39
    ld l, [hl]                                    ; $7cad: $6e
    ld a, e                                       ; $7cae: $7b
    add a                                         ; $7caf: $87
    db $fd                                        ; $7cb0: $fd

jr_0dc_7cb1:
    ld a, h                                       ; $7cb1: $7c
    ld a, a                                       ; $7cb2: $7f
    ld [bc], a                                    ; $7cb3: $02
    rst $38                                       ; $7cb4: $ff
    ld [bc], a                                    ; $7cb5: $02
    jr nz, jr_0dc_7cba                            ; $7cb6: $20 $02

    ld l, b                                       ; $7cb8: $68
    or d                                          ; $7cb9: $b2

jr_0dc_7cba:
    ld a, b                                       ; $7cba: $78
    ld e, b                                       ; $7cbb: $58
    ld a, h                                       ; $7cbc: $7c
    inc [hl]                                      ; $7cbd: $34
    ld a, b                                       ; $7cbe: $78
    jr jr_0dc_7d35                                ; $7cbf: $18 $74

    ld l, h                                       ; $7cc1: $6c
    ld a, b                                       ; $7cc2: $78
    ld [$1878], sp                                ; $7cc3: $08 $78 $18
    ld [hl], b                                    ; $7cc6: $70
    ld d, b                                       ; $7cc7: $50
    ld h, b                                       ; $7cc8: $60
    jr nz, jr_0dc_7d43                            ; $7cc9: $20 $78

    ld e, b                                       ; $7ccb: $58
    ld [hl], h                                    ; $7ccc: $74
    inc e                                         ; $7ccd: $1c
    halt                                          ; $7cce: $76

jr_0dc_7ccf:
    ld e, [hl]                                    ; $7ccf: $5e
    ld h, c                                       ; $7cd0: $61
    ccf                                           ; $7cd1: $3f
    ld a, $7e                                     ; $7cd2: $3e $7e
    ld a, l                                       ; $7cd4: $7d
    ld a, a                                       ; $7cd5: $7f
    ld a, e                                       ; $7cd6: $7b
    ld l, a                                       ; $7cd7: $6f
    cp $9f                                        ; $7cd8: $fe $9f
    ei                                            ; $7cda: $fb
    rst $18                                       ; $7cdb: $df
    or $bf                                        ; $7cdc: $f6 $bf
    ld [hl], d                                    ; $7cde: $72
    ld e, a                                       ; $7cdf: $5f
    halt                                          ; $7ce0: $76
    ld a, a                                       ; $7ce1: $7f
    ld [hl-], a                                   ; $7ce2: $32
    ccf                                           ; $7ce3: $3f
    ld [hl-], a                                   ; $7ce4: $32
    ccf                                           ; $7ce5: $3f
    ld h, $3f                                     ; $7ce6: $26 $3f
    daa                                           ; $7ce8: $27
    ccf                                           ; $7ce9: $3f
    dec e                                         ; $7cea: $1d
    rra                                           ; $7ceb: $1f
    ld [bc], a                                    ; $7cec: $02
    dec de                                        ; $7ced: $1b
    add h                                         ; $7cee: $84
    dec d                                         ; $7cef: $15
    rla                                           ; $7cf0: $17
    dec b                                         ; $7cf1: $05
    rlca                                          ; $7cf2: $07
    ld [bc], a                                    ; $7cf3: $02
    rrca                                          ; $7cf4: $0f
    ld [bc], a                                    ; $7cf5: $02
    nop                                           ; $7cf6: $00
    sub [hl]                                      ; $7cf7: $96
    ld l, l                                       ; $7cf8: $6d
    rst $38                                       ; $7cf9: $ff
    ccf                                           ; $7cfa: $3f
    rst $38                                       ; $7cfb: $ff
    xor $fd                                       ; $7cfc: $ee $fd
    ld a, e                                       ; $7cfe: $7b
    db $fc                                        ; $7cff: $fc
    ld l, a                                       ; $7d00: $6f
    db $fd                                        ; $7d01: $fd
    ccf                                           ; $7d02: $3f
    ld sp, hl                                     ; $7d03: $f9
    ld l, $fa                                     ; $7d04: $2e $fa
    ld h, $fe                                     ; $7d06: $26 $fe
    or $fe                                        ; $7d08: $f6 $fe
    db $e4                                        ; $7d0a: $e4
    db $fc                                        ; $7d0b: $fc
    ld d, h                                       ; $7d0c: $54
    ld a, h                                       ; $7d0d: $7c
    ld [bc], a                                    ; $7d0e: $02
    ld l, h                                       ; $7d0f: $6c
    ld [bc], a                                    ; $7d10: $02
    ld [hl], b                                    ; $7d11: $70
    ld [bc], a                                    ; $7d12: $02
    jr nz, jr_0dc_7d19                            ; $7d13: $20 $04

    nop                                           ; $7d15: $00
    rst $38                                       ; $7d16: $ff
    dec c                                         ; $7d17: $0d
    inc b                                         ; $7d18: $04

jr_0dc_7d19:
    ld hl, sp+$07                                 ; $7d19: $f8 $07
    ld a, [c]                                     ; $7d1b: $f2
    ld bc, $f9e2                                  ; $7d1c: $01 $e2 $f9
    ld [c], a                                     ; $7d1f: $e2
    rst $38                                       ; $7d20: $ff
    ld a, [c]                                     ; $7d21: $f2
    ld hl, sp-$0e                                 ; $7d22: $f8 $f2
    nop                                           ; $7d24: $00
    ld [bc], a                                    ; $7d25: $02
    add hl, bc                                    ; $7d26: $09
    sbc [hl]                                      ; $7d27: $9e
    rrca                                          ; $7d28: $0f
    ld c, $1e                                     ; $7d29: $0e $1e
    dec de                                        ; $7d2b: $1b
    ccf                                           ; $7d2c: $3f
    inc l                                         ; $7d2d: $2c
    rra                                           ; $7d2e: $1f
    jr jr_0dc_7d60                                ; $7d2f: $18 $2f

    ld [hl], $1f                                  ; $7d31: $36 $1f
    db $10                                        ; $7d33: $10
    rra                                           ; $7d34: $1f

jr_0dc_7d35:
    add hl, de                                    ; $7d35: $19
    rrca                                          ; $7d36: $0f
    add hl, bc                                    ; $7d37: $09
    rlca                                          ; $7d38: $07
    inc b                                         ; $7d39: $04
    rrca                                          ; $7d3a: $0f
    dec bc                                        ; $7d3b: $0b
    rra                                           ; $7d3c: $1f
    add hl, de                                    ; $7d3d: $19
    ld l, $3b                                     ; $7d3e: $2e $3b
    daa                                           ; $7d40: $27
    dec a                                         ; $7d41: $3d
    ld l, h                                       ; $7d42: $6c

jr_0dc_7d43:
    ld a, a                                       ; $7d43: $7f
    rst $28                                       ; $7d44: $ef
    rst $38                                       ; $7d45: $ff
    ld [bc], a                                    ; $7d46: $02
    db $10                                        ; $7d47: $10
    ld [bc], a                                    ; $7d48: $02
    inc [hl]                                      ; $7d49: $34
    or h                                          ; $7d4a: $b4
    inc a                                         ; $7d4b: $3c
    inc l                                         ; $7d4c: $2c
    ld a, $1a                                     ; $7d4d: $3e $1a
    inc a                                         ; $7d4f: $3c
    inc c                                         ; $7d50: $0c
    ld a, [hl-]                                   ; $7d51: $3a
    ld [hl], $3c                                  ; $7d52: $36 $3c
    inc b                                         ; $7d54: $04
    inc a                                         ; $7d55: $3c
    inc c                                         ; $7d56: $0c
    jr c, jr_0dc_7d81                             ; $7d57: $38 $28

    jr nc, jr_0dc_7d6b                            ; $7d59: $30 $10

    jr c, jr_0dc_7d85                             ; $7d5b: $38 $28

    inc a                                         ; $7d5d: $3c
    inc c                                         ; $7d5e: $0c
    ld a, [hl-]                                   ; $7d5f: $3a

jr_0dc_7d60:
    ld l, $32                                     ; $7d60: $2e $32
    ld e, $1b                                     ; $7d62: $1e $1b
    ccf                                           ; $7d64: $3f
    dec sp                                        ; $7d65: $3b
    ccf                                           ; $7d66: $3f
    ld a, a                                       ; $7d67: $7f
    ld l, a                                       ; $7d68: $6f
    cp [hl]                                       ; $7d69: $be
    rst $18                                       ; $7d6a: $df

jr_0dc_7d6b:
    ei                                            ; $7d6b: $fb
    rst $08                                       ; $7d6c: $cf
    or $bf                                        ; $7d6d: $f6 $bf
    ld [hl], d                                    ; $7d6f: $72
    ld e, a                                       ; $7d70: $5f
    ld [hl], $3f                                  ; $7d71: $36 $3f
    ld [hl-], a                                   ; $7d73: $32
    ccf                                           ; $7d74: $3f
    ld [hl], $3f                                  ; $7d75: $36 $3f
    ld [hl-], a                                   ; $7d77: $32
    ccf                                           ; $7d78: $3f
    daa                                           ; $7d79: $27
    ccf                                           ; $7d7a: $3f
    inc de                                        ; $7d7b: $13
    rra                                           ; $7d7c: $1f
    rla                                           ; $7d7d: $17
    rra                                           ; $7d7e: $1f
    ld [bc], a                                    ; $7d7f: $02
    dec de                                        ; $7d80: $1b

jr_0dc_7d81:
    add d                                         ; $7d81: $82
    dec d                                         ; $7d82: $15
    rla                                           ; $7d83: $17
    ld [bc], a                                    ; $7d84: $02

jr_0dc_7d85:
    rlca                                          ; $7d85: $07
    ld [bc], a                                    ; $7d86: $02
    nop                                           ; $7d87: $00
    sub a                                         ; $7d88: $97
    ld a, l                                       ; $7d89: $7d
    rst $38                                       ; $7d8a: $ff
    ccf                                           ; $7d8b: $3f
    rst $38                                       ; $7d8c: $ff
    xor $fd                                       ; $7d8d: $ee $fd
    ld a, a                                       ; $7d8f: $7f
    db $fd                                        ; $7d90: $fd
    ld l, $fe                                     ; $7d91: $2e $fe
    ccf                                           ; $7d93: $3f
    db $fd                                        ; $7d94: $fd
    cpl                                           ; $7d95: $2f
    ld sp, hl                                     ; $7d96: $f9
    ld [hl], $fe                                  ; $7d97: $36 $fe
    and $fe                                       ; $7d99: $e6 $fe
    sub $fe                                       ; $7d9b: $d6 $fe
    call nc, Call_0dc_54fc                        ; $7d9d: $d4 $fc $54
    inc bc                                        ; $7da0: $03
    ld a, h                                       ; $7da1: $7c
    ld [bc], a                                    ; $7da2: $02
    ld h, h                                       ; $7da3: $64
    inc b                                         ; $7da4: $04
    nop                                           ; $7da5: $00
    rst $38                                       ; $7da6: $ff
    dec c                                         ; $7da7: $0d
    inc b                                         ; $7da8: $04
    ld hl, sp+$07                                 ; $7da9: $f8 $07
    ld a, [c]                                     ; $7dab: $f2
    ld bc, $f9e2                                  ; $7dac: $01 $e2 $f9
    ld [c], a                                     ; $7daf: $e2
    db $fd                                        ; $7db0: $fd
    ld a, [c]                                     ; $7db1: $f2
    ld sp, hl                                     ; $7db2: $f9
    ld a, [c]                                     ; $7db3: $f2
    db $fd                                        ; $7db4: $fd
    ld [bc], a                                    ; $7db5: $02
    ld d, $92                                     ; $7db6: $16 $92
    ld e, a                                       ; $7db8: $5f
    ld e, e                                       ; $7db9: $5b
    ld [hl], l                                    ; $7dba: $75
    ld l, a                                       ; $7dbb: $6f
    cp a                                          ; $7dbc: $bf
    cp d                                          ; $7dbd: $ba
    rst $30                                       ; $7dbe: $f7
    db $ec                                        ; $7dbf: $ec
    ld a, a                                       ; $7dc0: $7f
    ld e, c                                       ; $7dc1: $59
    rst $28                                       ; $7dc2: $ef
    ld hl, sp+$3f                                 ; $7dc3: $f8 $3f
    inc [hl]                                      ; $7dc5: $34
    ld l, a                                       ; $7dc6: $6f
    ld l, b                                       ; $7dc7: $68
    rla                                           ; $7dc8: $17
    inc d                                         ; $7dc9: $14
    ld [bc], a                                    ; $7dca: $02
    rrca                                          ; $7dcb: $0f
    adc d                                         ; $7dcc: $8a
    inc de                                        ; $7dcd: $13
    ld e, $29                                     ; $7dce: $1e $29
    ccf                                           ; $7dd0: $3f
    inc a                                         ; $7dd1: $3c
    ccf                                           ; $7dd2: $3f
    dec d                                         ; $7dd3: $15
    rra                                           ; $7dd4: $1f
    ld h, $3f                                     ; $7dd5: $26 $3f
    ld [bc], a                                    ; $7dd7: $02
    ld [$0c82], sp                                ; $7dd8: $08 $82 $0c
    inc b                                         ; $7ddb: $04
    ld [bc], a                                    ; $7ddc: $02
    ld [$0c8a], sp                                ; $7ddd: $08 $8a $0c
    inc b                                         ; $7de0: $04
    inc c                                         ; $7de1: $0c
    inc b                                         ; $7de2: $04
    ld c, $0a                                     ; $7de3: $0e $0a
    rrca                                          ; $7de5: $0f
    ld bc, $020e                                  ; $7de6: $01 $0e $02
    inc bc                                        ; $7de9: $03
    inc c                                         ; $7dea: $0c
    add c                                         ; $7deb: $81
    inc b                                         ; $7dec: $04
    ld [bc], a                                    ; $7ded: $02
    ld [$0c02], sp                                ; $7dee: $08 $02 $0c
    add d                                         ; $7df1: $82
    ld a, [bc]                                    ; $7df2: $0a
    ld b, $02                                     ; $7df3: $06 $02
    ld c, $81                                     ; $7df5: $0e $81
    add hl, bc                                    ; $7df7: $09
    inc bc                                        ; $7df8: $03
    rrca                                          ; $7df9: $0f
    sbc e                                         ; $7dfa: $9b
    dec l                                         ; $7dfb: $2d
    ccf                                           ; $7dfc: $3f
    rst $18                                       ; $7dfd: $df
    cp $4f                                        ; $7dfe: $fe $4f
    ld [hl], d                                    ; $7e00: $72
    ld a, a                                       ; $7e01: $7f
    ld [hl], c                                    ; $7e02: $71
    ld a, $3b                                     ; $7e03: $3e $3b
    dec e                                         ; $7e05: $1d
    rra                                           ; $7e06: $1f
    inc e                                         ; $7e07: $1c
    rra                                           ; $7e08: $1f
    dec d                                         ; $7e09: $15
    rra                                           ; $7e0a: $1f
    inc [hl]                                      ; $7e0b: $34
    ccf                                           ; $7e0c: $3f
    dec [hl]                                      ; $7e0d: $35
    ccf                                           ; $7e0e: $3f
    inc h                                         ; $7e0f: $24
    ccf                                           ; $7e10: $3f
    dec [hl]                                      ; $7e11: $35
    ccf                                           ; $7e12: $3f
    dec e                                         ; $7e13: $1d
    rra                                           ; $7e14: $1f
    ld b, $03                                     ; $7e15: $06 $03
    rlca                                          ; $7e17: $07
    ld [bc], a                                    ; $7e18: $02
    dec b                                         ; $7e19: $05
    add d                                         ; $7e1a: $82
    rrca                                          ; $7e1b: $0f
    dec bc                                        ; $7e1c: $0b
    inc bc                                        ; $7e1d: $03
    ld c, $8f                                     ; $7e1e: $0e $8f
    ld b, $0a                                     ; $7e20: $06 $0a
    ld c, $0a                                     ; $7e22: $0e $0a
    ld c, $09                                     ; $7e24: $0e $09
    rrca                                          ; $7e26: $0f
    add hl, bc                                    ; $7e27: $09
    rrca                                          ; $7e28: $0f
    add hl, bc                                    ; $7e29: $09
    rrca                                          ; $7e2a: $0f
    add hl, bc                                    ; $7e2b: $09
    rrca                                          ; $7e2c: $0f
    dec bc                                        ; $7e2d: $0b
    rrca                                          ; $7e2e: $0f
    ld [bc], a                                    ; $7e2f: $02
    ld c, $82                                     ; $7e30: $0e $82
    inc b                                         ; $7e32: $04
    inc c                                         ; $7e33: $0c
    ld [bc], a                                    ; $7e34: $02
    ld [$0c02], sp                                ; $7e35: $08 $02 $0c
    ld [bc], a                                    ; $7e38: $02
    ld [$0c02], sp                                ; $7e39: $08 $02 $0c
    rst $38                                       ; $7e3c: $ff
    dec c                                         ; $7e3d: $0d
    inc b                                         ; $7e3e: $04
    ld hl, sp+$07                                 ; $7e3f: $f8 $07
    ld a, [c]                                     ; $7e41: $f2
    ld bc, $f9e2                                  ; $7e42: $01 $e2 $f9
    ld [c], a                                     ; $7e45: $e2
    db $fd                                        ; $7e46: $fd

jr_0dc_7e47:
    ld a, [c]                                     ; $7e47: $f2
    ld a, [$00f2]                                 ; $7e48: $fa $f2 $00
    ld [bc], a                                    ; $7e4b: $02
    ld d, $92                                     ; $7e4c: $16 $92
    ld e, a                                       ; $7e4e: $5f
    ld e, e                                       ; $7e4f: $5b
    ld [hl], l                                    ; $7e50: $75
    ld l, a                                       ; $7e51: $6f
    cp a                                          ; $7e52: $bf
    cp d                                          ; $7e53: $ba
    rst $30                                       ; $7e54: $f7
    db $ec                                        ; $7e55: $ec
    ld a, a                                       ; $7e56: $7f
    ld e, c                                       ; $7e57: $59
    rst $28                                       ; $7e58: $ef
    ld hl, sp+$3f                                 ; $7e59: $f8 $3f
    inc [hl]                                      ; $7e5b: $34
    ld l, a                                       ; $7e5c: $6f
    ld l, b                                       ; $7e5d: $68
    rla                                           ; $7e5e: $17
    inc d                                         ; $7e5f: $14
    ld [bc], a                                    ; $7e60: $02
    rrca                                          ; $7e61: $0f
    adc d                                         ; $7e62: $8a
    inc de                                        ; $7e63: $13
    ld e, $29                                     ; $7e64: $1e $29
    ccf                                           ; $7e66: $3f
    inc a                                         ; $7e67: $3c
    ccf                                           ; $7e68: $3f
    dec d                                         ; $7e69: $15
    rra                                           ; $7e6a: $1f
    ld [hl], $3f                                  ; $7e6b: $36 $3f
    ld [bc], a                                    ; $7e6d: $02
    ld [$0c82], sp                                ; $7e6e: $08 $82 $0c
    inc b                                         ; $7e71: $04
    ld [bc], a                                    ; $7e72: $02
    ld [$0c8a], sp                                ; $7e73: $08 $8a $0c
    inc b                                         ; $7e76: $04
    inc c                                         ; $7e77: $0c
    inc b                                         ; $7e78: $04
    ld c, $0a                                     ; $7e79: $0e $0a
    rrca                                          ; $7e7b: $0f
    ld bc, $020e                                  ; $7e7c: $01 $0e $02
    inc bc                                        ; $7e7f: $03
    inc c                                         ; $7e80: $0c
    add c                                         ; $7e81: $81
    inc b                                         ; $7e82: $04
    ld [bc], a                                    ; $7e83: $02
    ld [$0c02], sp                                ; $7e84: $08 $02 $0c
    add d                                         ; $7e87: $82
    ld a, [bc]                                    ; $7e88: $0a
    ld b, $02                                     ; $7e89: $06 $02
    ld c, $81                                     ; $7e8b: $0e $81
    add hl, bc                                    ; $7e8d: $09
    inc bc                                        ; $7e8e: $03
    rrca                                          ; $7e8f: $0f
    adc c                                         ; $7e90: $89
    ld c, l                                       ; $7e91: $4d
    ld a, a                                       ; $7e92: $7f
    rst $18                                       ; $7e93: $df
    cp $4f                                        ; $7e94: $fe $4f
    ld [hl], c                                    ; $7e96: $71
    ld a, a                                       ; $7e97: $7f
    ld [hl], c                                    ; $7e98: $71
    ccf                                           ; $7e99: $3f
    ld [bc], a                                    ; $7e9a: $02
    dec sp                                        ; $7e9b: $3b
    sub c                                         ; $7e9c: $91
    ccf                                           ; $7e9d: $3f
    ld a, c                                       ; $7e9e: $79
    ld a, a                                       ; $7e9f: $7f
    ld l, e                                       ; $7ea0: $6b
    ld a, a                                       ; $7ea1: $7f
    ld l, c                                       ; $7ea2: $69
    ld a, a                                       ; $7ea3: $7f
    ld c, e                                       ; $7ea4: $4b
    ld a, a                                       ; $7ea5: $7f
    ld c, c                                       ; $7ea6: $49
    ld a, a                                       ; $7ea7: $7f
    ld c, d                                       ; $7ea8: $4a
    ld a, a                                       ; $7ea9: $7f
    dec sp                                        ; $7eaa: $3b
    ccf                                           ; $7eab: $3f
    dec [hl]                                      ; $7eac: $35
    ccf                                           ; $7ead: $3f
    ld [bc], a                                    ; $7eae: $02
    ld l, $02                                     ; $7eaf: $2e $02
    ld c, $86                                     ; $7eb1: $0e $86
    jr c, jr_0dc_7edd                             ; $7eb3: $38 $28

    jr nc, jr_0dc_7ec7                            ; $7eb5: $30 $10

    jr nc, @+$12                                  ; $7eb7: $30 $10

    ld [bc], a                                    ; $7eb9: $02
    jr nc, jr_0dc_7e47                            ; $7eba: $30 $8b

    jr jr_0dc_7ef6                                ; $7ebc: $18 $38

    ld [$0838], sp                                ; $7ebe: $08 $38 $08
    jr c, jr_0dc_7ecb                             ; $7ec1: $38 $08

    jr c, jr_0dc_7ecd                             ; $7ec3: $38 $08

    jr c, @+$1a                                   ; $7ec5: $38 $18

jr_0dc_7ec7:
    inc bc                                        ; $7ec7: $03
    jr c, jr_0dc_7ecc                             ; $7ec8: $38 $02

    inc a                                         ; $7eca: $3c

jr_0dc_7ecb:
    ld [bc], a                                    ; $7ecb: $02

jr_0dc_7ecc:
    rra                                           ; $7ecc: $1f

jr_0dc_7ecd:
    ld [bc], a                                    ; $7ecd: $02
    ld d, $04                                     ; $7ece: $16 $04
    nop                                           ; $7ed0: $00
    rst $38                                       ; $7ed1: $ff
    dec c                                         ; $7ed2: $0d
    inc b                                         ; $7ed3: $04
    ld hl, sp+$07                                 ; $7ed4: $f8 $07
    ld a, [c]                                     ; $7ed6: $f2
    ld bc, $f9e3                                  ; $7ed7: $01 $e3 $f9
    db $e3                                        ; $7eda: $e3
    db $fd                                        ; $7edb: $fd
    di                                            ; $7edc: $f3

jr_0dc_7edd:
    ld a, [$fef3]                                 ; $7edd: $fa $f3 $fe
    ld [bc], a                                    ; $7ee0: $02
    ld d, $92                                     ; $7ee1: $16 $92
    ld e, a                                       ; $7ee3: $5f
    ld e, e                                       ; $7ee4: $5b
    ld [hl], l                                    ; $7ee5: $75
    ld l, a                                       ; $7ee6: $6f
    cp a                                          ; $7ee7: $bf
    cp d                                          ; $7ee8: $ba
    rst $30                                       ; $7ee9: $f7
    db $ec                                        ; $7eea: $ec
    ld a, a                                       ; $7eeb: $7f
    ld e, c                                       ; $7eec: $59
    rst $28                                       ; $7eed: $ef
    ld hl, sp+$3f                                 ; $7eee: $f8 $3f
    inc [hl]                                      ; $7ef0: $34
    ld l, a                                       ; $7ef1: $6f
    ld l, b                                       ; $7ef2: $68
    rla                                           ; $7ef3: $17
    inc d                                         ; $7ef4: $14
    ld [bc], a                                    ; $7ef5: $02

jr_0dc_7ef6:
    rra                                           ; $7ef6: $1f
    add l                                         ; $7ef7: $85
    inc hl                                        ; $7ef8: $23
    ld a, $29                                     ; $7ef9: $3e $29
    ccf                                           ; $7efb: $3f
    ld d, $03                                     ; $7efc: $16 $03
    rra                                           ; $7efe: $1f
    add d                                         ; $7eff: $82
    ld [hl], $3f                                  ; $7f00: $36 $3f
    ld [bc], a                                    ; $7f02: $02
    ld [$0c82], sp                                ; $7f03: $08 $82 $0c
    inc b                                         ; $7f06: $04
    ld [bc], a                                    ; $7f07: $02
    ld [$0c8a], sp                                ; $7f08: $08 $8a $0c
    inc b                                         ; $7f0b: $04
    inc c                                         ; $7f0c: $0c
    inc b                                         ; $7f0d: $04
    ld c, $0a                                     ; $7f0e: $0e $0a
    rrca                                          ; $7f10: $0f
    ld bc, $020e                                  ; $7f11: $01 $0e $02
    inc bc                                        ; $7f14: $03
    inc c                                         ; $7f15: $0c
    add c                                         ; $7f16: $81
    inc b                                         ; $7f17: $04
    ld [bc], a                                    ; $7f18: $02
    ld [$0c02], sp                                ; $7f19: $08 $02 $0c
    add d                                         ; $7f1c: $82
    dec bc                                        ; $7f1d: $0b
    rlca                                          ; $7f1e: $07
    ld [bc], a                                    ; $7f1f: $02
    ld c, $81                                     ; $7f20: $0e $81
    add hl, bc                                    ; $7f22: $09
    inc bc                                        ; $7f23: $03
    rrca                                          ; $7f24: $0f
    adc c                                         ; $7f25: $89
    ld c, l                                       ; $7f26: $4d
    ld a, a                                       ; $7f27: $7f
    rst $18                                       ; $7f28: $df
    cp $4f                                        ; $7f29: $fe $4f
    ld [hl], c                                    ; $7f2b: $71
    ld a, a                                       ; $7f2c: $7f
    ld [hl], c                                    ; $7f2d: $71
    ccf                                           ; $7f2e: $3f
    ld [bc], a                                    ; $7f2f: $02
    dec sp                                        ; $7f30: $3b
    adc a                                         ; $7f31: $8f
    ccf                                           ; $7f32: $3f
    ld l, c                                       ; $7f33: $69
    ld a, a                                       ; $7f34: $7f
    ld l, e                                       ; $7f35: $6b
    ld a, a                                       ; $7f36: $7f
    ld c, c                                       ; $7f37: $49
    ld a, a                                       ; $7f38: $7f
    ld c, e                                       ; $7f39: $4b
    ld a, a                                       ; $7f3a: $7f
    ld c, d                                       ; $7f3b: $4a
    ld a, a                                       ; $7f3c: $7f
    dec sp                                        ; $7f3d: $3b
    ccf                                           ; $7f3e: $3f
    ld a, l                                       ; $7f3f: $7d
    ld a, a                                       ; $7f40: $7f
    ld [bc], a                                    ; $7f41: $02
    rra                                           ; $7f42: $1f
    ld [bc], a                                    ; $7f43: $02
    jr jr_0dc_7f48                                ; $7f44: $18 $02

    nop                                           ; $7f46: $00
    add [hl]                                      ; $7f47: $86

jr_0dc_7f48:
    ld c, $0a                                     ; $7f48: $0e $0a
    inc c                                         ; $7f4a: $0c
    inc b                                         ; $7f4b: $04
    inc c                                         ; $7f4c: $0c
    inc b                                         ; $7f4d: $04
    ld [bc], a                                    ; $7f4e: $02
    inc c                                         ; $7f4f: $0c
    adc d                                         ; $7f50: $8a
    ld b, $0e                                     ; $7f51: $06 $0e
    ld [bc], a                                    ; $7f53: $02
    ld c, $02                                     ; $7f54: $0e $02
    ld c, $02                                     ; $7f56: $0e $02
    ld c, $06                                     ; $7f58: $0e $06
    ld c, $06                                     ; $7f5a: $0e $06
    inc c                                         ; $7f5c: $0c
    ld [bc], a                                    ; $7f5d: $02
    ld c, $02                                     ; $7f5e: $0e $02
    rlca                                          ; $7f60: $07
    inc b                                         ; $7f61: $04
    nop                                           ; $7f62: $00
    rst $38                                       ; $7f63: $ff
    dec c                                         ; $7f64: $0d
    inc b                                         ; $7f65: $04
    ld hl, sp+$07                                 ; $7f66: $f8 $07
    ld a, [c]                                     ; $7f68: $f2
    ld bc, $f9e2                                  ; $7f69: $01 $e2 $f9
    ld [c], a                                     ; $7f6c: $e2
    db $fd                                        ; $7f6d: $fd
    ld a, [c]                                     ; $7f6e: $f2
    ld sp, hl                                     ; $7f6f: $f9
    ld a, [c]                                     ; $7f70: $f2
    db $fd                                        ; $7f71: $fd
    ld [bc], a                                    ; $7f72: $02
    ld d, $92                                     ; $7f73: $16 $92
    ld e, a                                       ; $7f75: $5f
    ld e, e                                       ; $7f76: $5b
    ld [hl], l                                    ; $7f77: $75
    ld l, a                                       ; $7f78: $6f
    cp a                                          ; $7f79: $bf
    cp d                                          ; $7f7a: $ba
    rst $30                                       ; $7f7b: $f7
    db $ec                                        ; $7f7c: $ec
    ld a, a                                       ; $7f7d: $7f
    ld e, c                                       ; $7f7e: $59
    rst $28                                       ; $7f7f: $ef
    ld hl, sp+$3f                                 ; $7f80: $f8 $3f
    inc [hl]                                      ; $7f82: $34
    ld l, a                                       ; $7f83: $6f
    ld l, b                                       ; $7f84: $68
    rla                                           ; $7f85: $17
    inc d                                         ; $7f86: $14
    ld [bc], a                                    ; $7f87: $02
    rrca                                          ; $7f88: $0f
    adc d                                         ; $7f89: $8a
    inc de                                        ; $7f8a: $13
    ld e, $29                                     ; $7f8b: $1e $29
    ccf                                           ; $7f8d: $3f
    jr jr_0dc_7faf                                ; $7f8e: $18 $1f

    dec de                                        ; $7f90: $1b
    rra                                           ; $7f91: $1f
    ld h, $3f                                     ; $7f92: $26 $3f
    ld [bc], a                                    ; $7f94: $02
    ld [$0c82], sp                                ; $7f95: $08 $82 $0c
    inc b                                         ; $7f98: $04
    ld [bc], a                                    ; $7f99: $02
    ld [$0c8a], sp                                ; $7f9a: $08 $8a $0c
    inc b                                         ; $7f9d: $04
    inc c                                         ; $7f9e: $0c
    inc b                                         ; $7f9f: $04
    ld c, $0a                                     ; $7fa0: $0e $0a
    rrca                                          ; $7fa2: $0f
    ld bc, $020e                                  ; $7fa3: $01 $0e $02
    inc bc                                        ; $7fa6: $03
    inc c                                         ; $7fa7: $0c
    add c                                         ; $7fa8: $81
    inc b                                         ; $7fa9: $04
    ld [bc], a                                    ; $7faa: $02
    ld [$0c02], sp                                ; $7fab: $08 $02 $0c
    add d                                         ; $7fae: $82

jr_0dc_7faf:
    ld a, [bc]                                    ; $7faf: $0a
    ld b, $02                                     ; $7fb0: $06 $02
    rrca                                          ; $7fb2: $0f
    add c                                         ; $7fb3: $81
    add hl, bc                                    ; $7fb4: $09
    inc bc                                        ; $7fb5: $03
    rrca                                          ; $7fb6: $0f
    sbc h                                         ; $7fb7: $9c
    dec l                                         ; $7fb8: $2d
    ccf                                           ; $7fb9: $3f
    rst $18                                       ; $7fba: $df
    cp $4f                                        ; $7fbb: $fe $4f
    ld [hl], d                                    ; $7fbd: $72
    ld a, a                                       ; $7fbe: $7f
    ld [hl], c                                    ; $7fbf: $71
    ld a, $3b                                     ; $7fc0: $3e $3b
    dec e                                         ; $7fc2: $1d
    rra                                           ; $7fc3: $1f
    inc e                                         ; $7fc4: $1c
    rra                                           ; $7fc5: $1f
    dec d                                         ; $7fc6: $15
    rra                                           ; $7fc7: $1f
    inc [hl]                                      ; $7fc8: $34
    ccf                                           ; $7fc9: $3f
    dec [hl]                                      ; $7fca: $35
    ccf                                           ; $7fcb: $3f
    dec h                                         ; $7fcc: $25
    ccf                                           ; $7fcd: $3f
    dec [hl]                                      ; $7fce: $35
    ccf                                           ; $7fcf: $3f
    add hl, de                                    ; $7fd0: $19
    rra                                           ; $7fd1: $1f
    ld a, [bc]                                    ; $7fd2: $0a
    rrca                                          ; $7fd3: $0f
    ld [bc], a                                    ; $7fd4: $02
    rlca                                          ; $7fd5: $07
    ld [bc], a                                    ; $7fd6: $02
    nop                                           ; $7fd7: $00
    add d                                         ; $7fd8: $82
    rrca                                          ; $7fd9: $0f
    dec bc                                        ; $7fda: $0b
    ld [bc], a                                    ; $7fdb: $02
    ld c, $8f                                     ; $7fdc: $0e $8f
    rrca                                          ; $7fde: $0f
    rlca                                          ; $7fdf: $07
    dec bc                                        ; $7fe0: $0b
    rrca                                          ; $7fe1: $0f
    add hl, bc                                    ; $7fe2: $09
    rrca                                          ; $7fe3: $0f
    add hl, bc                                    ; $7fe4: $09
    rrca                                          ; $7fe5: $0f
    add hl, bc                                    ; $7fe6: $09
    rrca                                          ; $7fe7: $0f
    add hl, bc                                    ; $7fe8: $09
    rrca                                          ; $7fe9: $0f
    add hl, bc                                    ; $7fea: $09
    rrca                                          ; $7feb: $0f
    add hl, bc                                    ; $7fec: $09
    inc bc                                        ; $7fed: $03
    rrca                                          ; $7fee: $0f
    add d                                         ; $7fef: $82
    ld b, $0e                                     ; $7ff0: $06 $0e
    ld [bc], a                                    ; $7ff2: $02
    inc c                                         ; $7ff3: $0c
    ld [bc], a                                    ; $7ff4: $02
    ld [$0c02], sp                                ; $7ff5: $08 $02 $0c
    ld [bc], a                                    ; $7ff8: $02
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
