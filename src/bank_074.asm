; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $074", ROMX[$4000], BANK[$74]

    ld [hl], h                                    ; $4000: $74
    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, jr_074_4043                             ; $4008: $38 $39

    jr nc, jr_074_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    inc b                                         ; $4010: $04
    ei                                            ; $4011: $fb
    nop                                           ; $4012: $00
    rst $38                                       ; $4013: $ff
    ld a, [hl+]                                   ; $4014: $2a
    push de                                       ; $4015: $d5
    nop                                           ; $4016: $00
    rst $38                                       ; $4017: $ff
    xor d                                         ; $4018: $aa
    ld d, l                                       ; $4019: $55
    nop                                           ; $401a: $00
    nop                                           ; $401b: $00
    xor d                                         ; $401c: $aa
    xor d                                         ; $401d: $aa
    rst $38                                       ; $401e: $ff
    rst $38                                       ; $401f: $ff
    ld [bc], a                                    ; $4020: $02
    db $fd                                        ; $4021: $fd
    ld b, b                                       ; $4022: $40
    cp a                                          ; $4023: $bf
    xor d                                         ; $4024: $aa

jr_074_4025:
    ld d, l                                       ; $4025: $55
    nop                                           ; $4026: $00
    rst $38                                       ; $4027: $ff
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    xor d                                         ; $402c: $aa
    xor d                                         ; $402d: $aa
    rst $38                                       ; $402e: $ff
    rst $38                                       ; $402f: $ff
    nop                                           ; $4030: $00
    rst $38                                       ; $4031: $ff
    inc b                                         ; $4032: $04
    ei                                            ; $4033: $fb
    xor d                                         ; $4034: $aa
    ld d, l                                       ; $4035: $55
    nop                                           ; $4036: $00
    rst $38                                       ; $4037: $ff
    ld a, [bc]                                    ; $4038: $0a
    dec b                                         ; $4039: $05
    nop                                           ; $403a: $00
    nop                                           ; $403b: $00
    xor b                                         ; $403c: $a8

jr_074_403d:
    xor b                                         ; $403d: $a8
    push af                                       ; $403e: $f5
    push af                                       ; $403f: $f5
    add hl, bc                                    ; $4040: $09
    or $00                                        ; $4041: $f6 $00

jr_074_4043:
    rst $38                                       ; $4043: $ff
    jr nz, jr_074_4025                            ; $4044: $20 $df

    nop                                           ; $4046: $00
    rst $38                                       ; $4047: $ff
    xor d                                         ; $4048: $aa
    ld d, l                                       ; $4049: $55
    dec b                                         ; $404a: $05
    ld a, [bc]                                    ; $404b: $0a
    nop                                           ; $404c: $00
    nop                                           ; $404d: $00
    ld d, l                                       ; $404e: $55
    ld d, l                                       ; $404f: $55
    nop                                           ; $4050: $00
    rst $38                                       ; $4051: $ff
    nop                                           ; $4052: $00
    rst $38                                       ; $4053: $ff
    nop                                           ; $4054: $00
    rst $38                                       ; $4055: $ff
    nop                                           ; $4056: $00
    rst $38                                       ; $4057: $ff
    xor d                                         ; $4058: $aa
    ld d, l                                       ; $4059: $55
    ld d, l                                       ; $405a: $55
    xor d                                         ; $405b: $aa
    ld a, [bc]                                    ; $405c: $0a
    dec d                                         ; $405d: $15
    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    ld bc, $80fe                                  ; $4060: $01 $fe $80
    ld a, a                                       ; $4063: $7f
    ld [bc], a                                    ; $4064: $02
    db $fd                                        ; $4065: $fd
    nop                                           ; $4066: $00
    rst $38                                       ; $4067: $ff
    xor d                                         ; $4068: $aa
    ld d, l                                       ; $4069: $55
    ld d, l                                       ; $406a: $55
    xor d                                         ; $406b: $aa
    xor b                                         ; $406c: $a8
    ld d, b                                       ; $406d: $50
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    ld [bc], a                                    ; $4070: $02
    db $fd                                        ; $4071: $fd
    ld b, b                                       ; $4072: $40
    cp a                                          ; $4073: $bf
    xor d                                         ; $4074: $aa
    ld d, l                                       ; $4075: $55
    nop                                           ; $4076: $00
    rst $38                                       ; $4077: $ff
    xor d                                         ; $4078: $aa
    ld d, l                                       ; $4079: $55
    ld b, b                                       ; $407a: $40
    add b                                         ; $407b: $80
    nop                                           ; $407c: $00
    nop                                           ; $407d: $00
    ld d, l                                       ; $407e: $55
    ld d, l                                       ; $407f: $55
    inc b                                         ; $4080: $04
    ei                                            ; $4081: $fb
    nop                                           ; $4082: $00
    rst $38                                       ; $4083: $ff
    or b                                          ; $4084: $b0
    ld c, a                                       ; $4085: $4f
    nop                                           ; $4086: $00
    rst $38                                       ; $4087: $ff
    xor d                                         ; $4088: $aa
    ld d, l                                       ; $4089: $55
    dec b                                         ; $408a: $05
    ld [bc], a                                    ; $408b: $02
    nop                                           ; $408c: $00
    nop                                           ; $408d: $00
    ld d, l                                       ; $408e: $55
    ld d, l                                       ; $408f: $55
    rst $38                                       ; $4090: $ff
    rst $38                                       ; $4091: $ff
    rst $38                                       ; $4092: $ff
    rst $38                                       ; $4093: $ff
    rst $38                                       ; $4094: $ff
    rst $38                                       ; $4095: $ff
    rst $38                                       ; $4096: $ff
    rst $38                                       ; $4097: $ff
    rst $38                                       ; $4098: $ff
    rst $38                                       ; $4099: $ff
    rst $38                                       ; $409a: $ff
    rst $38                                       ; $409b: $ff
    rst $38                                       ; $409c: $ff
    rst $38                                       ; $409d: $ff
    rst $38                                       ; $409e: $ff
    rst $38                                       ; $409f: $ff
    rst $38                                       ; $40a0: $ff
    rst $38                                       ; $40a1: $ff
    rst $38                                       ; $40a2: $ff
    rst $38                                       ; $40a3: $ff
    rst $38                                       ; $40a4: $ff
    rst $38                                       ; $40a5: $ff
    rst $38                                       ; $40a6: $ff
    rst $38                                       ; $40a7: $ff
    rst $38                                       ; $40a8: $ff
    rst $38                                       ; $40a9: $ff
    rst $38                                       ; $40aa: $ff
    rst $38                                       ; $40ab: $ff
    rst $38                                       ; $40ac: $ff
    rst $38                                       ; $40ad: $ff
    rst $38                                       ; $40ae: $ff
    rst $38                                       ; $40af: $ff
    rst $38                                       ; $40b0: $ff
    rst $38                                       ; $40b1: $ff
    rst $38                                       ; $40b2: $ff
    rst $38                                       ; $40b3: $ff
    rst $38                                       ; $40b4: $ff
    rst $38                                       ; $40b5: $ff
    rst $38                                       ; $40b6: $ff
    rst $38                                       ; $40b7: $ff
    rst $38                                       ; $40b8: $ff
    rst $38                                       ; $40b9: $ff
    rst $38                                       ; $40ba: $ff
    rst $38                                       ; $40bb: $ff
    rst $38                                       ; $40bc: $ff
    rst $38                                       ; $40bd: $ff
    rst $38                                       ; $40be: $ff
    rst $38                                       ; $40bf: $ff
    cp $fe                                        ; $40c0: $fe $fe
    rst $38                                       ; $40c2: $ff
    rst $38                                       ; $40c3: $ff
    rst $38                                       ; $40c4: $ff
    rst $38                                       ; $40c5: $ff
    rst $38                                       ; $40c6: $ff
    rst $38                                       ; $40c7: $ff
    rst $38                                       ; $40c8: $ff
    rst $38                                       ; $40c9: $ff
    rst $38                                       ; $40ca: $ff
    rst $38                                       ; $40cb: $ff
    rst $38                                       ; $40cc: $ff
    rst $38                                       ; $40cd: $ff
    rst $38                                       ; $40ce: $ff
    rst $38                                       ; $40cf: $ff
    xor d                                         ; $40d0: $aa
    xor d                                         ; $40d1: $aa
    rst $38                                       ; $40d2: $ff
    rst $38                                       ; $40d3: $ff
    rst $38                                       ; $40d4: $ff
    rst $38                                       ; $40d5: $ff
    rst $38                                       ; $40d6: $ff
    rst $38                                       ; $40d7: $ff
    rst $38                                       ; $40d8: $ff
    rst $38                                       ; $40d9: $ff
    rst $38                                       ; $40da: $ff
    rst $38                                       ; $40db: $ff
    rst $38                                       ; $40dc: $ff
    rst $38                                       ; $40dd: $ff
    rst $38                                       ; $40de: $ff
    rst $38                                       ; $40df: $ff
    xor d                                         ; $40e0: $aa
    xor d                                         ; $40e1: $aa
    rst $38                                       ; $40e2: $ff
    rst $38                                       ; $40e3: $ff
    rst $38                                       ; $40e4: $ff
    rst $38                                       ; $40e5: $ff
    rst $38                                       ; $40e6: $ff
    rst $38                                       ; $40e7: $ff
    rst $38                                       ; $40e8: $ff
    rst $38                                       ; $40e9: $ff
    rst $38                                       ; $40ea: $ff
    rst $38                                       ; $40eb: $ff
    rst $38                                       ; $40ec: $ff
    rst $38                                       ; $40ed: $ff
    rst $38                                       ; $40ee: $ff
    rst $38                                       ; $40ef: $ff
    cp a                                          ; $40f0: $bf
    cp a                                          ; $40f1: $bf
    rst $38                                       ; $40f2: $ff
    rst $38                                       ; $40f3: $ff
    rst $38                                       ; $40f4: $ff
    rst $38                                       ; $40f5: $ff
    rst $38                                       ; $40f6: $ff
    rst $38                                       ; $40f7: $ff
    rst $38                                       ; $40f8: $ff
    rst $38                                       ; $40f9: $ff
    rst $38                                       ; $40fa: $ff
    rst $38                                       ; $40fb: $ff
    rst $38                                       ; $40fc: $ff
    rst $38                                       ; $40fd: $ff
    rst $38                                       ; $40fe: $ff
    rst $38                                       ; $40ff: $ff
    rst $38                                       ; $4100: $ff
    rst $38                                       ; $4101: $ff
    rst $38                                       ; $4102: $ff
    rst $38                                       ; $4103: $ff
    rst $38                                       ; $4104: $ff
    rst $38                                       ; $4105: $ff
    rst $38                                       ; $4106: $ff
    rst $38                                       ; $4107: $ff
    rst $38                                       ; $4108: $ff
    rst $38                                       ; $4109: $ff
    rst $38                                       ; $410a: $ff
    rst $38                                       ; $410b: $ff
    rst $38                                       ; $410c: $ff
    rst $38                                       ; $410d: $ff
    rst $38                                       ; $410e: $ff
    rst $38                                       ; $410f: $ff
    rst $10                                       ; $4110: $d7
    rst $38                                       ; $4111: $ff
    rst $38                                       ; $4112: $ff
    rst $38                                       ; $4113: $ff
    rst $38                                       ; $4114: $ff
    rst $38                                       ; $4115: $ff
    rst $38                                       ; $4116: $ff
    rst $38                                       ; $4117: $ff
    rst $38                                       ; $4118: $ff
    rst $38                                       ; $4119: $ff
    rst $38                                       ; $411a: $ff
    rst $38                                       ; $411b: $ff
    rst $38                                       ; $411c: $ff
    rst $38                                       ; $411d: $ff
    push de                                       ; $411e: $d5
    rst $38                                       ; $411f: $ff
    rst $38                                       ; $4120: $ff
    rst $38                                       ; $4121: $ff
    rst $38                                       ; $4122: $ff
    rst $38                                       ; $4123: $ff
    cp $ff                                        ; $4124: $fe $ff
    push de                                       ; $4126: $d5
    rst $38                                       ; $4127: $ff
    rst $38                                       ; $4128: $ff
    rst $38                                       ; $4129: $ff
    rst $38                                       ; $412a: $ff
    rst $38                                       ; $412b: $ff
    rst $38                                       ; $412c: $ff
    rst $38                                       ; $412d: $ff
    ld a, a                                       ; $412e: $7f
    rst $38                                       ; $412f: $ff
    rst $38                                       ; $4130: $ff
    rst $38                                       ; $4131: $ff
    ld e, a                                       ; $4132: $5f
    rst $38                                       ; $4133: $ff
    xor l                                         ; $4134: $ad
    ld d, e                                       ; $4135: $53
    ld a, a                                       ; $4136: $7f
    rst $38                                       ; $4137: $ff
    rst $38                                       ; $4138: $ff
    rst $38                                       ; $4139: $ff
    rst $38                                       ; $413a: $ff
    rst $38                                       ; $413b: $ff
    rst $38                                       ; $413c: $ff
    rst $38                                       ; $413d: $ff
    rst $38                                       ; $413e: $ff
    rst $38                                       ; $413f: $ff
    rst $38                                       ; $4140: $ff
    rst $38                                       ; $4141: $ff
    rst $38                                       ; $4142: $ff
    rst $38                                       ; $4143: $ff
    ld e, e                                       ; $4144: $5b
    rst $38                                       ; $4145: $ff
    rst $38                                       ; $4146: $ff
    rst $38                                       ; $4147: $ff
    rst $38                                       ; $4148: $ff
    rst $38                                       ; $4149: $ff
    rst $38                                       ; $414a: $ff
    rst $38                                       ; $414b: $ff
    rst $38                                       ; $414c: $ff
    rst $38                                       ; $414d: $ff
    rst $38                                       ; $414e: $ff
    rst $38                                       ; $414f: $ff
    rst $38                                       ; $4150: $ff
    rst $38                                       ; $4151: $ff
    rst $38                                       ; $4152: $ff
    rst $38                                       ; $4153: $ff
    rst $38                                       ; $4154: $ff
    rst $38                                       ; $4155: $ff
    rst $38                                       ; $4156: $ff
    rst $38                                       ; $4157: $ff
    rst $38                                       ; $4158: $ff
    rst $38                                       ; $4159: $ff
    rst $38                                       ; $415a: $ff
    rst $38                                       ; $415b: $ff
    rst $38                                       ; $415c: $ff
    rst $38                                       ; $415d: $ff
    rst $10                                       ; $415e: $d7
    rst $38                                       ; $415f: $ff
    rst $38                                       ; $4160: $ff
    rst $38                                       ; $4161: $ff
    rst $28                                       ; $4162: $ef
    rst $38                                       ; $4163: $ff
    db $fd                                        ; $4164: $fd
    rst $38                                       ; $4165: $ff
    rst $38                                       ; $4166: $ff
    rst $38                                       ; $4167: $ff
    rst $38                                       ; $4168: $ff
    rst $38                                       ; $4169: $ff
    rst $38                                       ; $416a: $ff
    rst $38                                       ; $416b: $ff
    rst $38                                       ; $416c: $ff
    rst $38                                       ; $416d: $ff
    rst $38                                       ; $416e: $ff
    rst $38                                       ; $416f: $ff
    rst $38                                       ; $4170: $ff
    rst $38                                       ; $4171: $ff
    rst $38                                       ; $4172: $ff
    rst $38                                       ; $4173: $ff
    ld a, a                                       ; $4174: $7f
    rst $38                                       ; $4175: $ff
    rst $38                                       ; $4176: $ff
    rst $38                                       ; $4177: $ff
    rst $38                                       ; $4178: $ff
    rst $38                                       ; $4179: $ff
    db $fd                                        ; $417a: $fd
    rst $38                                       ; $417b: $ff
    xor d                                         ; $417c: $aa
    push af                                       ; $417d: $f5
    rst $38                                       ; $417e: $ff
    rst $38                                       ; $417f: $ff
    rst $38                                       ; $4180: $ff
    rst $38                                       ; $4181: $ff
    ld a, [$ffff]                                 ; $4182: $fa $ff $ff
    rst $38                                       ; $4185: $ff
    cp $ff                                        ; $4186: $fe $ff
    rst $38                                       ; $4188: $ff
    rst $38                                       ; $4189: $ff
    ld a, a                                       ; $418a: $7f
    rst $38                                       ; $418b: $ff
    cp a                                          ; $418c: $bf
    rst $38                                       ; $418d: $ff
    rst $38                                       ; $418e: $ff
    rst $38                                       ; $418f: $ff
    xor d                                         ; $4190: $aa
    push de                                       ; $4191: $d5
    rst $38                                       ; $4192: $ff
    rst $38                                       ; $4193: $ff
    rst $38                                       ; $4194: $ff
    rst $38                                       ; $4195: $ff
    rst $38                                       ; $4196: $ff
    rst $38                                       ; $4197: $ff
    cp $ff                                        ; $4198: $fe $ff
    rst $38                                       ; $419a: $ff
    rst $38                                       ; $419b: $ff
    rst $38                                       ; $419c: $ff
    rst $38                                       ; $419d: $ff
    ld d, a                                       ; $419e: $57
    rst $38                                       ; $419f: $ff
    cp a                                          ; $41a0: $bf
    rst $38                                       ; $41a1: $ff
    rst $38                                       ; $41a2: $ff
    rst $38                                       ; $41a3: $ff
    rst $38                                       ; $41a4: $ff
    rst $38                                       ; $41a5: $ff
    rst $38                                       ; $41a6: $ff
    rst $38                                       ; $41a7: $ff
    xor e                                         ; $41a8: $ab
    db $fc                                        ; $41a9: $fc
    rst $38                                       ; $41aa: $ff
    rst $38                                       ; $41ab: $ff
    rst $38                                       ; $41ac: $ff
    rst $38                                       ; $41ad: $ff
    ld [$ffff], a                                 ; $41ae: $ea $ff $ff
    rst $38                                       ; $41b1: $ff
    rst $38                                       ; $41b2: $ff
    rst $38                                       ; $41b3: $ff
    rst $38                                       ; $41b4: $ff
    rst $38                                       ; $41b5: $ff
    rst $38                                       ; $41b6: $ff
    rst $38                                       ; $41b7: $ff
    ld e, a                                       ; $41b8: $5f
    rst $38                                       ; $41b9: $ff
    rst $38                                       ; $41ba: $ff
    rst $38                                       ; $41bb: $ff
    rst $38                                       ; $41bc: $ff
    rst $38                                       ; $41bd: $ff
    cp a                                          ; $41be: $bf
    rst $38                                       ; $41bf: $ff
    rst $38                                       ; $41c0: $ff
    rst $38                                       ; $41c1: $ff
    rst $38                                       ; $41c2: $ff
    rst $38                                       ; $41c3: $ff
    ld a, [$ffff]                                 ; $41c4: $fa $ff $ff
    rst $38                                       ; $41c7: $ff
    rst $38                                       ; $41c8: $ff
    rst $38                                       ; $41c9: $ff
    rst $38                                       ; $41ca: $ff
    rst $38                                       ; $41cb: $ff
    rst $38                                       ; $41cc: $ff
    rst $38                                       ; $41cd: $ff
    rst $38                                       ; $41ce: $ff
    rst $38                                       ; $41cf: $ff
    rst $38                                       ; $41d0: $ff
    rst $38                                       ; $41d1: $ff
    rst $38                                       ; $41d2: $ff
    rst $38                                       ; $41d3: $ff
    rst $38                                       ; $41d4: $ff
    rst $38                                       ; $41d5: $ff
    rst $38                                       ; $41d6: $ff
    rst $38                                       ; $41d7: $ff
    ld a, [$ffff]                                 ; $41d8: $fa $ff $ff
    rst $38                                       ; $41db: $ff
    rst $38                                       ; $41dc: $ff
    rst $38                                       ; $41dd: $ff
    rst $38                                       ; $41de: $ff
    rst $38                                       ; $41df: $ff
    rst $38                                       ; $41e0: $ff
    rst $38                                       ; $41e1: $ff
    rst $38                                       ; $41e2: $ff
    rst $38                                       ; $41e3: $ff
    rst $38                                       ; $41e4: $ff
    rst $38                                       ; $41e5: $ff
    rst $30                                       ; $41e6: $f7
    rst $38                                       ; $41e7: $ff
    xor e                                         ; $41e8: $ab
    ld d, a                                       ; $41e9: $57
    ld e, a                                       ; $41ea: $5f
    rst $38                                       ; $41eb: $ff
    rst $38                                       ; $41ec: $ff
    rst $38                                       ; $41ed: $ff
    rst $38                                       ; $41ee: $ff
    rst $38                                       ; $41ef: $ff
    rst $38                                       ; $41f0: $ff
    rst $38                                       ; $41f1: $ff
    cp $ff                                        ; $41f2: $fe $ff
    rst $38                                       ; $41f4: $ff
    rst $38                                       ; $41f5: $ff
    rst $38                                       ; $41f6: $ff
    rst $38                                       ; $41f7: $ff
    rst $38                                       ; $41f8: $ff
    rst $38                                       ; $41f9: $ff
    rst $38                                       ; $41fa: $ff
    rst $38                                       ; $41fb: $ff
    rst $38                                       ; $41fc: $ff
    rst $38                                       ; $41fd: $ff
    rst $38                                       ; $41fe: $ff
    rst $38                                       ; $41ff: $ff
    ld e, a                                       ; $4200: $5f
    rst $38                                       ; $4201: $ff
    xor d                                         ; $4202: $aa
    rst $10                                       ; $4203: $d7
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
    ld b, $00                                     ; $4210: $06 $00
    inc a                                         ; $4212: $3c
    nop                                           ; $4213: $00
    ld e, $00                                     ; $4214: $1e $00
    nop                                           ; $4216: $00
    nop                                           ; $4217: $00
    ld a, c                                       ; $4218: $79
    nop                                           ; $4219: $00
    di                                            ; $421a: $f3
    nop                                           ; $421b: $00
    nop                                           ; $421c: $00
    nop                                           ; $421d: $00
    inc bc                                        ; $421e: $03

jr_074_421f:
    nop                                           ; $421f: $00
    jr jr_074_4222                                ; $4220: $18 $00

jr_074_4222:
    ret nz                                        ; $4222: $c0

    nop                                           ; $4223: $00
    ld h, [hl]                                    ; $4224: $66
    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    ldh [rP1], a                                  ; $4228: $e0 $00
    rrca                                          ; $422a: $0f
    nop                                           ; $422b: $00
    nop                                           ; $422c: $00
    nop                                           ; $422d: $00
    cp $00                                        ; $422e: $fe $00
    ld hl, sp+$00                                 ; $4230: $f8 $00
    rrca                                          ; $4232: $0f
    nop                                           ; $4233: $00
    rst $38                                       ; $4234: $ff
    nop                                           ; $4235: $00
    di                                            ; $4236: $f3
    nop                                           ; $4237: $00
    rst $38                                       ; $4238: $ff
    nop                                           ; $4239: $00
    call z, $ff00                                 ; $423a: $cc $00 $ff
    nop                                           ; $423d: $00
    inc a                                         ; $423e: $3c
    nop                                           ; $423f: $00
    rra                                           ; $4240: $1f
    nop                                           ; $4241: $00
    ret nz                                        ; $4242: $c0

    nop                                           ; $4243: $00
    rst $38                                       ; $4244: $ff
    nop                                           ; $4245: $00
    inc bc                                        ; $4246: $03
    nop                                           ; $4247: $00
    sbc a                                         ; $4248: $9f
    nop                                           ; $4249: $00
    inc sp                                        ; $424a: $33
    nop                                           ; $424b: $00
    sbc a                                         ; $424c: $9f
    nop                                           ; $424d: $00
    db $fc                                        ; $424e: $fc
    nop                                           ; $424f: $00
    rst $20                                       ; $4250: $e7

jr_074_4251:
    jr jr_074_421f                                ; $4251: $18 $cc

    inc sp                                        ; $4253: $33
    cp $01                                        ; $4254: $fe $01
    rst $08                                       ; $4256: $cf
    jr nc, jr_074_4251                            ; $4257: $30 $f8

    rlca                                          ; $4259: $07
    rst $38                                       ; $425a: $ff
    nop                                           ; $425b: $00
    ld h, c                                       ; $425c: $61
    sbc [hl]                                      ; $425d: $9e
    rst $38                                       ; $425e: $ff
    nop                                           ; $425f: $00
    sbc a                                         ; $4260: $9f
    ld h, b                                       ; $4261: $60
    di                                            ; $4262: $f3
    inc c                                         ; $4263: $0c
    rra                                           ; $4264: $1f
    ldh [rIE], a                                  ; $4265: $e0 $ff

jr_074_4267:
    nop                                           ; $4267: $00
    ld a, c                                       ; $4268: $79
    add [hl]                                      ; $4269: $86
    pop af                                        ; $426a: $f1
    ld c, $98                                     ; $426b: $0e $98
    ld h, a                                       ; $426d: $67
    inc sp                                        ; $426e: $33
    call z, $c03f                                 ; $426f: $cc $3f $c0
    add [hl]                                      ; $4272: $86
    ld a, c                                       ; $4273: $79
    ret nz                                        ; $4274: $c0

    ccf                                           ; $4275: $3f
    rlca                                          ; $4276: $07
    ld hl, sp+$00                                 ; $4277: $f8 $00
    rst $38                                       ; $4279: $ff
    ld e, $e1                                     ; $427a: $1e $e1
    inc bc                                        ; $427c: $03
    db $fc                                        ; $427d: $fc
    jr jr_074_4267                                ; $427e: $18 $e7

    nop                                           ; $4280: $00
    rst $38                                       ; $4281: $ff
    ld h, a                                       ; $4282: $67
    sbc b                                         ; $4283: $98
    inc bc                                        ; $4284: $03
    db $fc                                        ; $4285: $fc
    ld hl, sp+$07                                 ; $4286: $f8 $07
    nop                                           ; $4288: $00
    rst $38                                       ; $4289: $ff
    ld h, b                                       ; $428a: $60
    sbc a                                         ; $428b: $9f
    inc sp                                        ; $428c: $33
    call z, $ff00                                 ; $428d: $cc $00 $ff
    inc bc                                        ; $4290: $03
    rst $38                                       ; $4291: $ff
    sbc b                                         ; $4292: $98
    rst $38                                       ; $4293: $ff
    nop                                           ; $4294: $00
    rst $38                                       ; $4295: $ff
    rlca                                          ; $4296: $07
    rst $38                                       ; $4297: $ff
    ret nz                                        ; $4298: $c0

    rst $38                                       ; $4299: $ff
    nop                                           ; $429a: $00
    rst $38                                       ; $429b: $ff
    ccf                                           ; $429c: $3f
    rst $38                                       ; $429d: $ff
    nop                                           ; $429e: $00
    rst $38                                       ; $429f: $ff
    nop                                           ; $42a0: $00
    rst $38                                       ; $42a1: $ff
    ld a, c                                       ; $42a2: $79
    rst $38                                       ; $42a3: $ff
    nop                                           ; $42a4: $00
    rst $38                                       ; $42a5: $ff
    sbc [hl]                                      ; $42a6: $9e
    rst $38                                       ; $42a7: $ff
    inc bc                                        ; $42a8: $03
    rst $38                                       ; $42a9: $ff
    jr @+$01                                      ; $42aa: $18 $ff

    nop                                           ; $42ac: $00
    rst $38                                       ; $42ad: $ff
    ld e, $ff                                     ; $42ae: $1e $ff
    ccf                                           ; $42b0: $3f
    rst $38                                       ; $42b1: $ff
    ld hl, sp-$01                                 ; $42b2: $f8 $ff
    call z, $f9ff                                 ; $42b4: $cc $ff $f9
    rst $38                                       ; $42b7: $ff
    rst $38                                       ; $42b8: $ff
    rst $38                                       ; $42b9: $ff
    sbc c                                         ; $42ba: $99
    rst $38                                       ; $42bb: $ff
    db $fc                                        ; $42bc: $fc
    rst $38                                       ; $42bd: $ff
    rst $20                                       ; $42be: $e7
    rst $38                                       ; $42bf: $ff
    ldh a, [rIE]                                  ; $42c0: $f0 $ff
    rlca                                          ; $42c2: $07
    rst $38                                       ; $42c3: $ff
    db $fc                                        ; $42c4: $fc
    rst $38                                       ; $42c5: $ff
    add a                                         ; $42c6: $87
    rst $38                                       ; $42c7: $ff
    di                                            ; $42c8: $f3
    rst $38                                       ; $42c9: $ff
    sbc a                                         ; $42ca: $9f
    rst $38                                       ; $42cb: $ff
    rst $08                                       ; $42cc: $cf
    rst $38                                       ; $42cd: $ff
    sbc a                                         ; $42ce: $9f
    rst $38                                       ; $42cf: $ff
    jr nc, jr_074_42d2                            ; $42d0: $30 $00

jr_074_42d2:
    ld h, [hl]                                    ; $42d2: $66
    nop                                           ; $42d3: $00
    inc sp                                        ; $42d4: $33
    nop                                           ; $42d5: $00
    ld h, b                                       ; $42d6: $60
    nop                                           ; $42d7: $00
    rrca                                          ; $42d8: $0f
    nop                                           ; $42d9: $00
    nop                                           ; $42da: $00
    nop                                           ; $42db: $00
    inc a                                         ; $42dc: $3c
    nop                                           ; $42dd: $00
    ld bc, $3000                                  ; $42de: $01 $00 $30
    nop                                           ; $42e1: $00
    ld b, $00                                     ; $42e2: $06 $00
    ret nz                                        ; $42e4: $c0

    nop                                           ; $42e5: $00
    nop                                           ; $42e6: $00
    nop                                           ; $42e7: $00
    inc c                                         ; $42e8: $0c
    nop                                           ; $42e9: $00
    ld e, $00                                     ; $42ea: $1e $00
    rst $08                                       ; $42ec: $cf
    nop                                           ; $42ed: $00
    sbc b                                         ; $42ee: $98
    nop                                           ; $42ef: $00
    ldh [rP1], a                                  ; $42f0: $e0 $00
    inc a                                         ; $42f2: $3c
    nop                                           ; $42f3: $00
    rra                                           ; $42f4: $1f
    nop                                           ; $42f5: $00
    db $fc                                        ; $42f6: $fc

jr_074_42f7:
    nop                                           ; $42f7: $00
    rst $38                                       ; $42f8: $ff
    nop                                           ; $42f9: $00
    ldh a, [rP1]                                  ; $42fa: $f0 $00
    sbc a                                         ; $42fc: $9f
    nop                                           ; $42fd: $00
    di                                            ; $42fe: $f3
    nop                                           ; $42ff: $00
    ld a, a                                       ; $4300: $7f
    nop                                           ; $4301: $00
    call z, $fe00                                 ; $4302: $cc $00 $fe
    nop                                           ; $4305: $00
    inc bc                                        ; $4306: $03
    nop                                           ; $4307: $00
    rst $38                                       ; $4308: $ff
    nop                                           ; $4309: $00
    rst $38                                       ; $430a: $ff
    nop                                           ; $430b: $00
    add a                                         ; $430c: $87
    nop                                           ; $430d: $00
    rst $38                                       ; $430e: $ff
    nop                                           ; $430f: $00
    cp $01                                        ; $4310: $fe $01
    call z, $e733                                 ; $4312: $cc $33 $e7
    jr @-$02                                      ; $4315: $18 $fc

    inc bc                                        ; $4317: $03
    rra                                           ; $4318: $1f
    ldh [rIE], a                                  ; $4319: $e0 $ff
    nop                                           ; $431b: $00
    ldh [$1f], a                                  ; $431c: $e0 $1f
    rst $38                                       ; $431e: $ff
    nop                                           ; $431f: $00
    ld a, a                                       ; $4320: $7f
    add b                                         ; $4321: $80
    di                                            ; $4322: $f3
    inc c                                         ; $4323: $0c
    sbc a                                         ; $4324: $9f
    ld h, b                                       ; $4325: $60
    jr nc, jr_074_42f7                            ; $4326: $30 $cf

    cp $01                                        ; $4328: $fe $01
    di                                            ; $432a: $f3
    inc c                                         ; $432b: $0c
    ld a, a                                       ; $432c: $7f
    add b                                         ; $432d: $80
    ldh a, [rIF]                                  ; $432e: $f0 $0f
    ldh [$1f], a                                  ; $4330: $e0 $1f
    inc bc                                        ; $4332: $03
    db $fc                                        ; $4333: $fc
    sbc c                                         ; $4334: $99
    ld h, [hl]                                    ; $4335: $66
    inc bc                                        ; $4336: $03
    db $fc                                        ; $4337: $fc
    ld bc, $3cfe                                  ; $4338: $01 $fe $3c
    jp $fe01                                      ; $433b: $c3 $01 $fe


    inc c                                         ; $433e: $0c
    di                                            ; $433f: $f3
    rlca                                          ; $4340: $07
    ld hl, sp-$04                                 ; $4341: $f8 $fc
    inc bc                                        ; $4343: $03
    add c                                         ; $4344: $81
    ld a, [hl]                                    ; $4345: $7e
    inc a                                         ; $4346: $3c
    jp Jump_074_7f80                              ; $4347: $c3 $80 $7f


    nop                                           ; $434a: $00
    rst $38                                       ; $434b: $ff
    add b                                         ; $434c: $80
    ld a, a                                       ; $434d: $7f
    nop                                           ; $434e: $00
    rst $38                                       ; $434f: $ff
    ld bc, $0cff                                  ; $4350: $01 $ff $0c
    rst $38                                       ; $4353: $ff
    ld bc, $00ff                                  ; $4354: $01 $ff $00
    rst $38                                       ; $4357: $ff
    sbc [hl]                                      ; $4358: $9e
    rst $38                                       ; $4359: $ff
    nop                                           ; $435a: $00
    rst $38                                       ; $435b: $ff
    rra                                           ; $435c: $1f
    rst $38                                       ; $435d: $ff
    nop                                           ; $435e: $00
    rst $38                                       ; $435f: $ff
    add [hl]                                      ; $4360: $86
    rst $38                                       ; $4361: $ff
    jr nc, @+$01                                  ; $4362: $30 $ff

    cp $ff                                        ; $4364: $fe $ff
    nop                                           ; $4366: $00
    rst $38                                       ; $4367: $ff
    add hl, de                                    ; $4368: $19
    rst $38                                       ; $4369: $ff
    inc sp                                        ; $436a: $33
    rst $38                                       ; $436b: $ff
    cp $ff                                        ; $436c: $fe $ff
    nop                                           ; $436e: $00
    rst $38                                       ; $436f: $ff
    sbc b                                         ; $4370: $98
    rst $38                                       ; $4371: $ff
    di                                            ; $4372: $f3
    rst $38                                       ; $4373: $ff
    ld a, [hl]                                    ; $4374: $7e
    rst $38                                       ; $4375: $ff
    rst $38                                       ; $4376: $ff
    rst $38                                       ; $4377: $ff
    ldh [rIE], a                                  ; $4378: $e0 $ff
    rst $08                                       ; $437a: $cf
    rst $38                                       ; $437b: $ff
    ld hl, sp-$01                                 ; $437c: $f8 $ff
    di                                            ; $437e: $f3
    rst $38                                       ; $437f: $ff
    rlca                                          ; $4380: $07
    rst $38                                       ; $4381: $ff
    rst $08                                       ; $4382: $cf
    rst $38                                       ; $4383: $ff
    ld b, $ff                                     ; $4384: $06 $ff
    ldh a, [rIE]                                  ; $4386: $f0 $ff
    rra                                           ; $4388: $1f
    rst $38                                       ; $4389: $ff
    rst $38                                       ; $438a: $ff
    rst $38                                       ; $438b: $ff
    add hl, de                                    ; $438c: $19
    rst $38                                       ; $438d: $ff
    ccf                                           ; $438e: $3f
    rst $38                                       ; $438f: $ff
    ld h, b                                       ; $4390: $60
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    jr jr_074_4396                                ; $4394: $18 $00

jr_074_4396:
    inc bc                                        ; $4396: $03
    nop                                           ; $4397: $00
    ldh [rP1], a                                  ; $4398: $e0 $00
    nop                                           ; $439a: $00
    nop                                           ; $439b: $00
    rra                                           ; $439c: $1f
    nop                                           ; $439d: $00
    nop                                           ; $439e: $00
    nop                                           ; $439f: $00
    jr jr_074_43a2                                ; $43a0: $18 $00

jr_074_43a2:
    inc sp                                        ; $43a2: $33
    nop                                           ; $43a3: $00
    nop                                           ; $43a4: $00
    nop                                           ; $43a5: $00
    rst $08                                       ; $43a6: $cf
    nop                                           ; $43a7: $00
    ld bc, $0c00                                  ; $43a8: $01 $00 $0c
    nop                                           ; $43ab: $00

jr_074_43ac:
    add b                                         ; $43ac: $80
    nop                                           ; $43ad: $00
    rrca                                          ; $43ae: $0f
    nop                                           ; $43af: $00
    rra                                           ; $43b0: $1f
    nop                                           ; $43b1: $00
    db $fc                                        ; $43b2: $fc
    nop                                           ; $43b3: $00
    ld h, [hl]                                    ; $43b4: $66
    nop                                           ; $43b5: $00
    db $fc                                        ; $43b6: $fc
    nop                                           ; $43b7: $00
    ld a, a                                       ; $43b8: $7f
    nop                                           ; $43b9: $00
    di                                            ; $43ba: $f3
    nop                                           ; $43bb: $00
    rst $38                                       ; $43bc: $ff
    nop                                           ; $43bd: $00
    rst $38                                       ; $43be: $ff
    nop                                           ; $43bf: $00
    ld hl, sp+$00                                 ; $43c0: $f8 $00
    inc bc                                        ; $43c2: $03
    nop                                           ; $43c3: $00
    ld a, [hl]                                    ; $43c4: $7e
    nop                                           ; $43c5: $00
    jp $f800                                      ; $43c6: $c3 $00 $f8


    nop                                           ; $43c9: $00
    rst $38                                       ; $43ca: $ff
    nop                                           ; $43cb: $00
    rst $38                                       ; $43cc: $ff
    nop                                           ; $43cd: $00
    rst $38                                       ; $43ce: $ff
    nop                                           ; $43cf: $00
    inc c                                         ; $43d0: $0c
    nop                                           ; $43d1: $00
    ld a, c                                       ; $43d2: $79
    nop                                           ; $43d3: $00
    inc a                                         ; $43d4: $3c
    nop                                           ; $43d5: $00
    nop                                           ; $43d6: $00
    nop                                           ; $43d7: $00
    di                                            ; $43d8: $f3
    nop                                           ; $43d9: $00
    and $00                                       ; $43da: $e6 $00
    nop                                           ; $43dc: $00
    nop                                           ; $43dd: $00
    rlca                                          ; $43de: $07
    nop                                           ; $43df: $00
    jr nc, jr_074_43e2                            ; $43e0: $30 $00

jr_074_43e2:
    add b                                         ; $43e2: $80
    nop                                           ; $43e3: $00
    call z, RST_00                                ; $43e4: $cc $00 $00
    nop                                           ; $43e7: $00
    pop bc                                        ; $43e8: $c1
    nop                                           ; $43e9: $00
    rra                                           ; $43ea: $1f
    nop                                           ; $43eb: $00
    nop                                           ; $43ec: $00
    nop                                           ; $43ed: $00
    db $fc                                        ; $43ee: $fc
    nop                                           ; $43ef: $00
    ldh a, [rP1]                                  ; $43f0: $f0 $00
    rra                                           ; $43f2: $1f
    nop                                           ; $43f3: $00
    rst $38                                       ; $43f4: $ff
    nop                                           ; $43f5: $00
    and $00                                       ; $43f6: $e6 $00
    rst $38                                       ; $43f8: $ff
    nop                                           ; $43f9: $00
    sbc b                                         ; $43fa: $98
    nop                                           ; $43fb: $00
    rst $38                                       ; $43fc: $ff
    nop                                           ; $43fd: $00
    ld a, c                                       ; $43fe: $79
    nop                                           ; $43ff: $00
    ccf                                           ; $4400: $3f
    nop                                           ; $4401: $00
    add b                                         ; $4402: $80
    nop                                           ; $4403: $00
    rst $38                                       ; $4404: $ff
    nop                                           ; $4405: $00
    rlca                                          ; $4406: $07
    nop                                           ; $4407: $00
    ccf                                           ; $4408: $3f
    nop                                           ; $4409: $00
    ld h, a                                       ; $440a: $67
    nop                                           ; $440b: $00
    ccf                                           ; $440c: $3f
    nop                                           ; $440d: $00
    ld hl, sp+$00                                 ; $440e: $f8 $00
    rst $08                                       ; $4410: $cf
    jr nc, jr_074_43ac                            ; $4411: $30 $99

    ld h, [hl]                                    ; $4413: $66
    db $fc                                        ; $4414: $fc
    inc bc                                        ; $4415: $03
    sbc a                                         ; $4416: $9f
    ld h, b                                       ; $4417: $60
    ldh a, [rIF]                                  ; $4418: $f0 $0f
    rst $38                                       ; $441a: $ff
    nop                                           ; $441b: $00
    jp $fe3c                                      ; $441c: $c3 $3c $fe


    ld bc, $c03f                                  ; $441f: $01 $3f $c0
    rst $20                                       ; $4422: $e7
    jr jr_074_4464                                ; $4423: $18 $3f

    ret nz                                        ; $4425: $c0

    rst $38                                       ; $4426: $ff
    nop                                           ; $4427: $00
    di                                            ; $4428: $f3
    inc c                                         ; $4429: $0c
    db $e3                                        ; $442a: $e3
    inc e                                         ; $442b: $1c
    ld sp, $67ce                                  ; $442c: $31 $ce $67
    sbc b                                         ; $442f: $98
    ld a, [hl]                                    ; $4430: $7e
    add c                                         ; $4431: $81
    inc c                                         ; $4432: $0c
    di                                            ; $4433: $f3
    add b                                         ; $4434: $80
    ld a, a                                       ; $4435: $7f
    rrca                                          ; $4436: $0f
    ldh a, [rP1]                                  ; $4437: $f0 $00
    rst $38                                       ; $4439: $ff
    inc a                                         ; $443a: $3c
    jp $f906                                      ; $443b: $c3 $06 $f9


    jr nc, @-$2f                                  ; $443e: $30 $cf

    nop                                           ; $4440: $00
    rst $38                                       ; $4441: $ff
    rst $08                                       ; $4442: $cf
    jr nc, jr_074_444c                            ; $4443: $30 $07

    ld hl, sp-$10                                 ; $4445: $f8 $f0
    rrca                                          ; $4447: $0f
    nop                                           ; $4448: $00
    rst $38                                       ; $4449: $ff
    ret nz                                        ; $444a: $c0

    ccf                                           ; $444b: $3f

jr_074_444c:
    ld h, [hl]                                    ; $444c: $66
    sbc c                                         ; $444d: $99
    nop                                           ; $444e: $00
    rst $38                                       ; $444f: $ff
    ld b, $ff                                     ; $4450: $06 $ff
    jr nc, @+$01                                  ; $4452: $30 $ff

    nop                                           ; $4454: $00
    rst $38                                       ; $4455: $ff
    rrca                                          ; $4456: $0f
    rst $38                                       ; $4457: $ff
    add b                                         ; $4458: $80
    rst $38                                       ; $4459: $ff
    nop                                           ; $445a: $00
    rst $38                                       ; $445b: $ff
    ld a, [hl]                                    ; $445c: $7e
    rst $38                                       ; $445d: $ff
    nop                                           ; $445e: $00
    rst $38                                       ; $445f: $ff
    nop                                           ; $4460: $00
    rst $38                                       ; $4461: $ff
    di                                            ; $4462: $f3
    rst $38                                       ; $4463: $ff

jr_074_4464:
    nop                                           ; $4464: $00
    rst $38                                       ; $4465: $ff
    inc a                                         ; $4466: $3c
    rst $38                                       ; $4467: $ff
    rlca                                          ; $4468: $07
    rst $38                                       ; $4469: $ff
    jr nc, @+$01                                  ; $446a: $30 $ff

    nop                                           ; $446c: $00
    rst $38                                       ; $446d: $ff
    inc a                                         ; $446e: $3c
    rst $38                                       ; $446f: $ff
    ld a, a                                       ; $4470: $7f
    rst $38                                       ; $4471: $ff
    ldh a, [rIE]                                  ; $4472: $f0 $ff
    sbc c                                         ; $4474: $99
    rst $38                                       ; $4475: $ff
    di                                            ; $4476: $f3
    rst $38                                       ; $4477: $ff
    rst $38                                       ; $4478: $ff
    rst $38                                       ; $4479: $ff
    inc sp                                        ; $447a: $33
    rst $38                                       ; $447b: $ff
    ld sp, hl                                     ; $447c: $f9
    rst $38                                       ; $447d: $ff
    rst $08                                       ; $447e: $cf
    rst $38                                       ; $447f: $ff
    ldh [rIE], a                                  ; $4480: $e0 $ff
    rrca                                          ; $4482: $0f
    rst $38                                       ; $4483: $ff
    ld sp, hl                                     ; $4484: $f9
    rst $38                                       ; $4485: $ff
    rrca                                          ; $4486: $0f
    rst $38                                       ; $4487: $ff
    rst $20                                       ; $4488: $e7
    rst $38                                       ; $4489: $ff
    ccf                                           ; $448a: $3f
    rst $38                                       ; $448b: $ff
    sbc a                                         ; $448c: $9f
    rst $38                                       ; $448d: $ff
    ccf                                           ; $448e: $3f
    rst $38                                       ; $448f: $ff
    ld h, b                                       ; $4490: $60
    nop                                           ; $4491: $00
    call z, Call_074_6700                         ; $4492: $cc $00 $67
    nop                                           ; $4495: $00
    ret nz                                        ; $4496: $c0

    nop                                           ; $4497: $00
    ld e, $00                                     ; $4498: $1e $00
    nop                                           ; $449a: $00
    nop                                           ; $449b: $00
    ld a, c                                       ; $449c: $79
    nop                                           ; $449d: $00
    inc bc                                        ; $449e: $03
    nop                                           ; $449f: $00
    ld h, b                                       ; $44a0: $60
    nop                                           ; $44a1: $00
    inc c                                         ; $44a2: $0c
    nop                                           ; $44a3: $00
    add b                                         ; $44a4: $80
    nop                                           ; $44a5: $00
    nop                                           ; $44a6: $00
    nop                                           ; $44a7: $00
    jr jr_074_44aa                                ; $44a8: $18 $00

jr_074_44aa:
    inc a                                         ; $44aa: $3c
    nop                                           ; $44ab: $00
    sbc [hl]                                      ; $44ac: $9e
    nop                                           ; $44ad: $00
    jr nc, jr_074_44b0                            ; $44ae: $30 $00

jr_074_44b0:
    ret nz                                        ; $44b0: $c0

    nop                                           ; $44b1: $00
    ld a, c                                       ; $44b2: $79
    nop                                           ; $44b3: $00
    ccf                                           ; $44b4: $3f
    nop                                           ; $44b5: $00
    ld hl, sp+$00                                 ; $44b6: $f8 $00
    rst $38                                       ; $44b8: $ff
    nop                                           ; $44b9: $00
    pop hl                                        ; $44ba: $e1
    nop                                           ; $44bb: $00
    ccf                                           ; $44bc: $3f
    nop                                           ; $44bd: $00
    rst $20                                       ; $44be: $e7
    nop                                           ; $44bf: $00
    rst $38                                       ; $44c0: $ff
    nop                                           ; $44c1: $00
    sbc b                                         ; $44c2: $98
    nop                                           ; $44c3: $00
    db $fc                                        ; $44c4: $fc
    nop                                           ; $44c5: $00
    rlca                                          ; $44c6: $07
    nop                                           ; $44c7: $00
    rst $38                                       ; $44c8: $ff
    nop                                           ; $44c9: $00
    rst $38                                       ; $44ca: $ff
    nop                                           ; $44cb: $00
    rrca                                          ; $44cc: $0f
    nop                                           ; $44cd: $00
    rst $38                                       ; $44ce: $ff

jr_074_44cf:
    nop                                           ; $44cf: $00
    db $fc                                        ; $44d0: $fc
    inc bc                                        ; $44d1: $03
    sbc c                                         ; $44d2: $99
    ld h, [hl]                                    ; $44d3: $66
    rst $08                                       ; $44d4: $cf
    jr nc, jr_074_44cf                            ; $44d5: $30 $f8

    rlca                                          ; $44d7: $07
    ccf                                           ; $44d8: $3f
    ret nz                                        ; $44d9: $c0

    rst $38                                       ; $44da: $ff
    nop                                           ; $44db: $00
    ret nz                                        ; $44dc: $c0

    ccf                                           ; $44dd: $3f
    rst $38                                       ; $44de: $ff
    nop                                           ; $44df: $00
    rst $38                                       ; $44e0: $ff
    nop                                           ; $44e1: $00
    rst $20                                       ; $44e2: $e7
    jr jr_074_4524                                ; $44e3: $18 $3f

    ret nz                                        ; $44e5: $c0

    ld h, c                                       ; $44e6: $61

jr_074_44e7:
    sbc [hl]                                      ; $44e7: $9e
    db $fc                                        ; $44e8: $fc
    inc bc                                        ; $44e9: $03
    rst $20                                       ; $44ea: $e7
    jr @+$01                                      ; $44eb: $18 $ff

    nop                                           ; $44ed: $00
    pop hl                                        ; $44ee: $e1
    ld e, $c0                                     ; $44ef: $1e $c0
    ccf                                           ; $44f1: $3f
    rlca                                          ; $44f2: $07
    ld hl, sp+$33                                 ; $44f3: $f8 $33
    call z, $f906                                 ; $44f5: $cc $06 $f9
    inc bc                                        ; $44f8: $03
    db $fc                                        ; $44f9: $fc
    ld a, b                                       ; $44fa: $78
    add a                                         ; $44fb: $87
    inc bc                                        ; $44fc: $03
    db $fc                                        ; $44fd: $fc
    jr jr_074_44e7                                ; $44fe: $18 $e7

    rrca                                          ; $4500: $0f
    ldh a, [$f8]                                  ; $4501: $f0 $f8
    rlca                                          ; $4503: $07
    inc bc                                        ; $4504: $03
    db $fc                                        ; $4505: $fc
    ld a, b                                       ; $4506: $78
    add a                                         ; $4507: $87
    nop                                           ; $4508: $00
    rst $38                                       ; $4509: $ff
    nop                                           ; $450a: $00
    rst $38                                       ; $450b: $ff
    nop                                           ; $450c: $00
    rst $38                                       ; $450d: $ff
    nop                                           ; $450e: $00
    rst $38                                       ; $450f: $ff
    inc bc                                        ; $4510: $03
    rst $38                                       ; $4511: $ff
    jr @+$01                                      ; $4512: $18 $ff

    inc bc                                        ; $4514: $03
    rst $38                                       ; $4515: $ff
    nop                                           ; $4516: $00
    rst $38                                       ; $4517: $ff
    inc a                                         ; $4518: $3c
    rst $38                                       ; $4519: $ff
    nop                                           ; $451a: $00
    rst $38                                       ; $451b: $ff
    ccf                                           ; $451c: $3f
    rst $38                                       ; $451d: $ff
    nop                                           ; $451e: $00
    rst $38                                       ; $451f: $ff
    inc c                                         ; $4520: $0c
    rst $38                                       ; $4521: $ff
    ld h, b                                       ; $4522: $60
    rst $38                                       ; $4523: $ff

jr_074_4524:
    db $fc                                        ; $4524: $fc
    rst $38                                       ; $4525: $ff
    nop                                           ; $4526: $00
    rst $38                                       ; $4527: $ff
    inc sp                                        ; $4528: $33
    rst $38                                       ; $4529: $ff
    ld h, [hl]                                    ; $452a: $66
    rst $38                                       ; $452b: $ff
    db $fc                                        ; $452c: $fc
    rst $38                                       ; $452d: $ff
    nop                                           ; $452e: $00
    rst $38                                       ; $452f: $ff
    jr nc, @+$01                                  ; $4530: $30 $ff

    rst $20                                       ; $4532: $e7
    rst $38                                       ; $4533: $ff
    db $fc                                        ; $4534: $fc
    rst $38                                       ; $4535: $ff
    rst $38                                       ; $4536: $ff
    rst $38                                       ; $4537: $ff
    ret nz                                        ; $4538: $c0

    rst $38                                       ; $4539: $ff
    sbc a                                         ; $453a: $9f
    rst $38                                       ; $453b: $ff
    ldh a, [rIE]                                  ; $453c: $f0 $ff
    and $ff                                       ; $453e: $e6 $ff
    rrca                                          ; $4540: $0f
    rst $38                                       ; $4541: $ff
    sbc a                                         ; $4542: $9f
    rst $38                                       ; $4543: $ff
    inc c                                         ; $4544: $0c
    rst $38                                       ; $4545: $ff
    pop hl                                        ; $4546: $e1
    rst $38                                       ; $4547: $ff
    ccf                                           ; $4548: $3f
    rst $38                                       ; $4549: $ff
    rst $38                                       ; $454a: $ff
    rst $38                                       ; $454b: $ff
    inc sp                                        ; $454c: $33
    rst $38                                       ; $454d: $ff
    ld a, a                                       ; $454e: $7f
    rst $38                                       ; $454f: $ff
    ret nz                                        ; $4550: $c0

    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    jr nc, jr_074_4556                            ; $4554: $30 $00

jr_074_4556:
    rlca                                          ; $4556: $07
    nop                                           ; $4557: $00
    ret nz                                        ; $4558: $c0

    nop                                           ; $4559: $00
    nop                                           ; $455a: $00
    nop                                           ; $455b: $00
    ccf                                           ; $455c: $3f
    nop                                           ; $455d: $00
    nop                                           ; $455e: $00
    nop                                           ; $455f: $00
    jr nc, jr_074_4562                            ; $4560: $30 $00

jr_074_4562:
    ld h, [hl]                                    ; $4562: $66
    nop                                           ; $4563: $00
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    sbc [hl]                                      ; $4566: $9e
    nop                                           ; $4567: $00
    inc bc                                        ; $4568: $03
    nop                                           ; $4569: $00
    jr jr_074_456c                                ; $456a: $18 $00

jr_074_456c:
    nop                                           ; $456c: $00
    nop                                           ; $456d: $00
    ld e, $00                                     ; $456e: $1e $00
    ccf                                           ; $4570: $3f
    nop                                           ; $4571: $00

jr_074_4572:
    ld hl, sp+$00                                 ; $4572: $f8 $00
    call z, $f900                                 ; $4574: $cc $00 $f9
    nop                                           ; $4577: $00
    rst $38                                       ; $4578: $ff
    nop                                           ; $4579: $00
    rst $20                                       ; $457a: $e7
    nop                                           ; $457b: $00
    rst $38                                       ; $457c: $ff
    nop                                           ; $457d: $00
    rst $38                                       ; $457e: $ff
    nop                                           ; $457f: $00
    ldh a, [rP1]                                  ; $4580: $f0 $00
    rlca                                          ; $4582: $07
    nop                                           ; $4583: $00
    db $fc                                        ; $4584: $fc
    nop                                           ; $4585: $00
    add a                                         ; $4586: $87
    nop                                           ; $4587: $00
    ldh a, [rP1]                                  ; $4588: $f0 $00
    rst $38                                       ; $458a: $ff
    nop                                           ; $458b: $00
    rst $38                                       ; $458c: $ff
    nop                                           ; $458d: $00
    rst $38                                       ; $458e: $ff
    nop                                           ; $458f: $00
    jr nc, jr_074_4592                            ; $4590: $30 $00

jr_074_4592:
    and $00                                       ; $4592: $e6 $00
    di                                            ; $4594: $f3
    nop                                           ; $4595: $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    rst $08                                       ; $4598: $cf
    nop                                           ; $4599: $00
    sbc b                                         ; $459a: $98
    nop                                           ; $459b: $00
    nop                                           ; $459c: $00
    nop                                           ; $459d: $00
    rra                                           ; $459e: $1f
    nop                                           ; $459f: $00
    ret nz                                        ; $45a0: $c0

    nop                                           ; $45a1: $00
    ld bc, $3000                                  ; $45a2: $01 $00 $30
    nop                                           ; $45a5: $00
    nop                                           ; $45a6: $00
    nop                                           ; $45a7: $00
    inc bc                                        ; $45a8: $03
    nop                                           ; $45a9: $00
    ld a, a                                       ; $45aa: $7f
    nop                                           ; $45ab: $00
    nop                                           ; $45ac: $00
    nop                                           ; $45ad: $00
    ld hl, sp+$00                                 ; $45ae: $f8 $00
    ret nz                                        ; $45b0: $c0

    nop                                           ; $45b1: $00
    ld a, [hl]                                    ; $45b2: $7e
    nop                                           ; $45b3: $00
    rst $38                                       ; $45b4: $ff
    nop                                           ; $45b5: $00
    sbc b                                         ; $45b6: $98
    nop                                           ; $45b7: $00
    db $fc                                        ; $45b8: $fc
    nop                                           ; $45b9: $00
    ld h, c                                       ; $45ba: $61
    nop                                           ; $45bb: $00
    db $fc                                        ; $45bc: $fc
    nop                                           ; $45bd: $00
    rst $20                                       ; $45be: $e7
    nop                                           ; $45bf: $00
    rst $38                                       ; $45c0: $ff
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    nop                                           ; $45c3: $00
    rst $38                                       ; $45c4: $ff
    nop                                           ; $45c5: $00
    rra                                           ; $45c6: $1f
    nop                                           ; $45c7: $00
    rst $38                                       ; $45c8: $ff
    nop                                           ; $45c9: $00
    sbc [hl]                                      ; $45ca: $9e
    nop                                           ; $45cb: $00
    rst $38                                       ; $45cc: $ff
    nop                                           ; $45cd: $00
    pop hl                                        ; $45ce: $e1
    nop                                           ; $45cf: $00
    inc a                                         ; $45d0: $3c
    jp $9867                                      ; $45d1: $c3 $67 $98


    ldh a, [rIF]                                  ; $45d4: $f0 $0f
    ld a, a                                       ; $45d6: $7f
    add b                                         ; $45d7: $80
    jp $ff3c                                      ; $45d8: $c3 $3c $ff


    nop                                           ; $45db: $00
    inc c                                         ; $45dc: $0c
    di                                            ; $45dd: $f3
    ld sp, hl                                     ; $45de: $f9
    ld b, $ff                                     ; $45df: $06 $ff
    nop                                           ; $45e1: $00
    sbc [hl]                                      ; $45e2: $9e
    ld h, c                                       ; $45e3: $61
    rst $38                                       ; $45e4: $ff
    nop                                           ; $45e5: $00
    cp $01                                        ; $45e6: $fe $01
    rst $08                                       ; $45e8: $cf
    jr nc, jr_074_4572                            ; $45e9: $30 $87

    ld a, b                                       ; $45eb: $78
    jp $9f3c                                      ; $45ec: $c3 $3c $9f


    ld h, b                                       ; $45ef: $60
    db $fc                                        ; $45f0: $fc
    inc bc                                        ; $45f1: $03
    add hl, de                                    ; $45f2: $19
    and $00                                       ; $45f3: $e6 $00
    rst $38                                       ; $45f5: $ff
    rra                                           ; $45f6: $1f
    ldh [rP1], a                                  ; $45f7: $e0 $00
    rst $38                                       ; $45f9: $ff
    ld a, c                                       ; $45fa: $79
    add [hl]                                      ; $45fb: $86
    inc c                                         ; $45fc: $0c
    di                                            ; $45fd: $f3
    ld h, b                                       ; $45fe: $60
    sbc a                                         ; $45ff: $9f
    nop                                           ; $4600: $00
    rst $38                                       ; $4601: $ff
    sbc [hl]                                      ; $4602: $9e
    ld h, c                                       ; $4603: $61
    rrca                                          ; $4604: $0f
    ldh a, [$e0]                                  ; $4605: $f0 $e0
    rra                                           ; $4607: $1f
    nop                                           ; $4608: $00
    rst $38                                       ; $4609: $ff
    add b                                         ; $460a: $80
    ld a, a                                       ; $460b: $7f
    call z, $0033                                 ; $460c: $cc $33 $00
    rst $38                                       ; $460f: $ff
    inc c                                         ; $4610: $0c
    rst $38                                       ; $4611: $ff
    ld h, c                                       ; $4612: $61
    rst $38                                       ; $4613: $ff
    nop                                           ; $4614: $00
    rst $38                                       ; $4615: $ff
    ld e, $ff                                     ; $4616: $1e $ff
    nop                                           ; $4618: $00
    rst $38                                       ; $4619: $ff
    nop                                           ; $461a: $00
    rst $38                                       ; $461b: $ff
    db $fc                                        ; $461c: $fc
    rst $38                                       ; $461d: $ff
    nop                                           ; $461e: $00
    rst $38                                       ; $461f: $ff
    nop                                           ; $4620: $00
    rst $38                                       ; $4621: $ff
    and $ff                                       ; $4622: $e6 $ff
    nop                                           ; $4624: $00
    rst $38                                       ; $4625: $ff
    ld a, b                                       ; $4626: $78
    rst $38                                       ; $4627: $ff
    rrca                                          ; $4628: $0f
    rst $38                                       ; $4629: $ff
    ld h, b                                       ; $462a: $60
    rst $38                                       ; $462b: $ff
    nop                                           ; $462c: $00
    rst $38                                       ; $462d: $ff
    ld a, b                                       ; $462e: $78
    rst $38                                       ; $462f: $ff
    rst $38                                       ; $4630: $ff
    rst $38                                       ; $4631: $ff
    ldh [rIE], a                                  ; $4632: $e0 $ff
    inc sp                                        ; $4634: $33
    rst $38                                       ; $4635: $ff
    and $ff                                       ; $4636: $e6 $ff
    rst $38                                       ; $4638: $ff
    rst $38                                       ; $4639: $ff
    ld h, [hl]                                    ; $463a: $66
    rst $38                                       ; $463b: $ff
    di                                            ; $463c: $f3
    rst $38                                       ; $463d: $ff
    sbc [hl]                                      ; $463e: $9e
    rst $38                                       ; $463f: $ff
    ret nz                                        ; $4640: $c0

    rst $38                                       ; $4641: $ff
    rra                                           ; $4642: $1f
    rst $38                                       ; $4643: $ff
    di                                            ; $4644: $f3
    rst $38                                       ; $4645: $ff
    rra                                           ; $4646: $1f
    rst $38                                       ; $4647: $ff
    rst $08                                       ; $4648: $cf
    rst $38                                       ; $4649: $ff
    ld a, [hl]                                    ; $464a: $7e
    rst $38                                       ; $464b: $ff
    ccf                                           ; $464c: $3f
    rst $38                                       ; $464d: $ff
    ld a, a                                       ; $464e: $7f
    rst $38                                       ; $464f: $ff
    ret nz                                        ; $4650: $c0

    nop                                           ; $4651: $00
    sbc b                                         ; $4652: $98
    nop                                           ; $4653: $00
    rst $08                                       ; $4654: $cf
    nop                                           ; $4655: $00
    add b                                         ; $4656: $80
    nop                                           ; $4657: $00
    inc a                                         ; $4658: $3c
    nop                                           ; $4659: $00
    nop                                           ; $465a: $00
    nop                                           ; $465b: $00
    di                                            ; $465c: $f3
    nop                                           ; $465d: $00
    ld b, $00                                     ; $465e: $06 $00
    ret nz                                        ; $4660: $c0

    nop                                           ; $4661: $00
    add hl, de                                    ; $4662: $19
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    ld bc, $3000                                  ; $4666: $01 $00 $30
    nop                                           ; $4669: $00
    ld a, b                                       ; $466a: $78
    nop                                           ; $466b: $00
    inc a                                         ; $466c: $3c
    nop                                           ; $466d: $00
    ld h, b                                       ; $466e: $60
    nop                                           ; $466f: $00
    ret nz                                        ; $4670: $c0

    nop                                           ; $4671: $00
    ld a, c                                       ; $4672: $79
    nop                                           ; $4673: $00
    ccf                                           ; $4674: $3f
    nop                                           ; $4675: $00
    ld hl, sp+$00                                 ; $4676: $f8 $00
    rst $38                                       ; $4678: $ff
    nop                                           ; $4679: $00
    pop hl                                        ; $467a: $e1
    nop                                           ; $467b: $00
    ccf                                           ; $467c: $3f
    nop                                           ; $467d: $00
    rst $20                                       ; $467e: $e7
    nop                                           ; $467f: $00
    rst $38                                       ; $4680: $ff
    nop                                           ; $4681: $00
    sbc b                                         ; $4682: $98
    nop                                           ; $4683: $00
    db $fc                                        ; $4684: $fc
    nop                                           ; $4685: $00
    rlca                                          ; $4686: $07
    nop                                           ; $4687: $00
    rst $38                                       ; $4688: $ff
    nop                                           ; $4689: $00
    rst $38                                       ; $468a: $ff
    nop                                           ; $468b: $00
    rrca                                          ; $468c: $0f
    nop                                           ; $468d: $00
    rst $38                                       ; $468e: $ff

jr_074_468f:
    nop                                           ; $468f: $00
    db $fc                                        ; $4690: $fc
    inc bc                                        ; $4691: $03
    sbc c                                         ; $4692: $99
    ld h, [hl]                                    ; $4693: $66
    rst $08                                       ; $4694: $cf
    jr nc, jr_074_468f                            ; $4695: $30 $f8

    rlca                                          ; $4697: $07
    ccf                                           ; $4698: $3f
    ret nz                                        ; $4699: $c0

    rst $38                                       ; $469a: $ff
    nop                                           ; $469b: $00
    ret nz                                        ; $469c: $c0

    ccf                                           ; $469d: $3f
    rst $38                                       ; $469e: $ff
    nop                                           ; $469f: $00
    rst $38                                       ; $46a0: $ff
    nop                                           ; $46a1: $00
    rst $20                                       ; $46a2: $e7
    jr jr_074_46e4                                ; $46a3: $18 $3f

    ret nz                                        ; $46a5: $c0

    ld h, c                                       ; $46a6: $61

jr_074_46a7:
    sbc [hl]                                      ; $46a7: $9e
    db $fc                                        ; $46a8: $fc
    inc bc                                        ; $46a9: $03
    rst $20                                       ; $46aa: $e7
    jr @+$01                                      ; $46ab: $18 $ff

    nop                                           ; $46ad: $00
    pop hl                                        ; $46ae: $e1
    ld e, $c0                                     ; $46af: $1e $c0
    ccf                                           ; $46b1: $3f
    rlca                                          ; $46b2: $07
    ld hl, sp+$33                                 ; $46b3: $f8 $33
    call z, $f906                                 ; $46b5: $cc $06 $f9
    inc bc                                        ; $46b8: $03
    db $fc                                        ; $46b9: $fc
    ld a, b                                       ; $46ba: $78
    add a                                         ; $46bb: $87
    inc bc                                        ; $46bc: $03
    db $fc                                        ; $46bd: $fc
    jr jr_074_46a7                                ; $46be: $18 $e7

    rrca                                          ; $46c0: $0f
    ldh a, [$f8]                                  ; $46c1: $f0 $f8
    rlca                                          ; $46c3: $07
    inc bc                                        ; $46c4: $03
    db $fc                                        ; $46c5: $fc
    ld a, b                                       ; $46c6: $78
    add a                                         ; $46c7: $87
    nop                                           ; $46c8: $00
    rst $38                                       ; $46c9: $ff
    nop                                           ; $46ca: $00
    rst $38                                       ; $46cb: $ff
    nop                                           ; $46cc: $00
    rst $38                                       ; $46cd: $ff
    nop                                           ; $46ce: $00
    rst $38                                       ; $46cf: $ff
    inc bc                                        ; $46d0: $03
    rst $38                                       ; $46d1: $ff
    jr @+$01                                      ; $46d2: $18 $ff

    inc bc                                        ; $46d4: $03
    rst $38                                       ; $46d5: $ff
    nop                                           ; $46d6: $00
    rst $38                                       ; $46d7: $ff
    inc a                                         ; $46d8: $3c
    rst $38                                       ; $46d9: $ff
    nop                                           ; $46da: $00
    rst $38                                       ; $46db: $ff
    ccf                                           ; $46dc: $3f
    rst $38                                       ; $46dd: $ff
    nop                                           ; $46de: $00
    rst $38                                       ; $46df: $ff
    inc c                                         ; $46e0: $0c
    rst $38                                       ; $46e1: $ff
    ld h, b                                       ; $46e2: $60
    rst $38                                       ; $46e3: $ff

jr_074_46e4:
    db $fc                                        ; $46e4: $fc
    rst $38                                       ; $46e5: $ff
    nop                                           ; $46e6: $00
    rst $38                                       ; $46e7: $ff
    inc sp                                        ; $46e8: $33
    rst $38                                       ; $46e9: $ff
    ld h, [hl]                                    ; $46ea: $66
    rst $38                                       ; $46eb: $ff
    db $fc                                        ; $46ec: $fc
    rst $38                                       ; $46ed: $ff
    nop                                           ; $46ee: $00
    rst $38                                       ; $46ef: $ff
    ld h, b                                       ; $46f0: $60
    rst $38                                       ; $46f1: $ff
    rst $08                                       ; $46f2: $cf
    rst $38                                       ; $46f3: $ff
    ld hl, sp-$01                                 ; $46f4: $f8 $ff
    rst $38                                       ; $46f6: $ff
    rst $38                                       ; $46f7: $ff
    add b                                         ; $46f8: $80
    rst $38                                       ; $46f9: $ff
    ccf                                           ; $46fa: $3f
    rst $38                                       ; $46fb: $ff
    ldh [rIE], a                                  ; $46fc: $e0 $ff
    call z, $1eff                                 ; $46fe: $cc $ff $1e
    rst $38                                       ; $4701: $ff
    ccf                                           ; $4702: $3f
    rst $38                                       ; $4703: $ff
    add hl, de                                    ; $4704: $19
    rst $38                                       ; $4705: $ff
    jp Jump_074_7fff                              ; $4706: $c3 $ff $7f


    rst $38                                       ; $4709: $ff
    rst $38                                       ; $470a: $ff
    rst $38                                       ; $470b: $ff
    ld h, a                                       ; $470c: $67
    rst $38                                       ; $470d: $ff
    rst $38                                       ; $470e: $ff
    rst $38                                       ; $470f: $ff
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    ld bc, $c000                                  ; $4712: $01 $00 $c0
    nop                                           ; $4715: $00
    ld e, $00                                     ; $4716: $1e $00
    nop                                           ; $4718: $00
    nop                                           ; $4719: $00
    nop                                           ; $471a: $00
    nop                                           ; $471b: $00
    db $fc                                        ; $471c: $fc
    nop                                           ; $471d: $00
    nop                                           ; $471e: $00
    nop                                           ; $471f: $00
    jp $9800                                      ; $4720: $c3 $00 $98


    nop                                           ; $4723: $00
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    ld a, b                                       ; $4726: $78
    nop                                           ; $4727: $00
    rrca                                          ; $4728: $0f
    nop                                           ; $4729: $00
    ld h, b                                       ; $472a: $60
    nop                                           ; $472b: $00
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    ld a, b                                       ; $472e: $78
    nop                                           ; $472f: $00
    rst $38                                       ; $4730: $ff
    nop                                           ; $4731: $00
    ldh [rP1], a                                  ; $4732: $e0 $00
    inc sp                                        ; $4734: $33
    nop                                           ; $4735: $00
    and $00                                       ; $4736: $e6 $00
    rst $38                                       ; $4738: $ff
    nop                                           ; $4739: $00
    sbc a                                         ; $473a: $9f
    nop                                           ; $473b: $00
    rst $38                                       ; $473c: $ff
    nop                                           ; $473d: $00
    rst $38                                       ; $473e: $ff
    nop                                           ; $473f: $00
    ret nz                                        ; $4740: $c0

    nop                                           ; $4741: $00
    rra                                           ; $4742: $1f
    nop                                           ; $4743: $00
    di                                            ; $4744: $f3
    nop                                           ; $4745: $00
    rra                                           ; $4746: $1f
    nop                                           ; $4747: $00
    jp $ff00                                      ; $4748: $c3 $00 $ff


    nop                                           ; $474b: $00
    rst $38                                       ; $474c: $ff
    nop                                           ; $474d: $00
    rst $38                                       ; $474e: $ff
    nop                                           ; $474f: $00
    ld h, c                                       ; $4750: $61
    nop                                           ; $4751: $00
    call z, $e600                                 ; $4752: $cc $00 $e6
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    sbc [hl]                                      ; $4758: $9e
    nop                                           ; $4759: $00
    jr nc, jr_074_475c                            ; $475a: $30 $00

jr_074_475c:
    nop                                           ; $475c: $00
    nop                                           ; $475d: $00
    ccf                                           ; $475e: $3f
    nop                                           ; $475f: $00
    add b                                         ; $4760: $80
    nop                                           ; $4761: $00
    inc bc                                        ; $4762: $03
    nop                                           ; $4763: $00
    ld h, c                                       ; $4764: $61
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    rlca                                          ; $4768: $07
    nop                                           ; $4769: $00
    rst $38                                       ; $476a: $ff
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    nop                                           ; $476d: $00
    ldh a, [rP1]                                  ; $476e: $f0 $00
    add c                                         ; $4770: $81
    nop                                           ; $4771: $00
    db $fc                                        ; $4772: $fc
    nop                                           ; $4773: $00
    rst $38                                       ; $4774: $ff
    nop                                           ; $4775: $00

jr_074_4776:
    jr nc, jr_074_4778                            ; $4776: $30 $00

jr_074_4778:
    ld sp, hl                                     ; $4778: $f9
    nop                                           ; $4779: $00
    jp $f900                                      ; $477a: $c3 $00 $f9


    nop                                           ; $477d: $00
    rst $08                                       ; $477e: $cf
    nop                                           ; $477f: $00
    rst $38                                       ; $4780: $ff
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    nop                                           ; $4783: $00
    rst $38                                       ; $4784: $ff
    nop                                           ; $4785: $00
    ccf                                           ; $4786: $3f
    nop                                           ; $4787: $00
    rst $38                                       ; $4788: $ff
    nop                                           ; $4789: $00
    inc a                                         ; $478a: $3c
    nop                                           ; $478b: $00
    rst $38                                       ; $478c: $ff
    nop                                           ; $478d: $00
    jp Jump_074_7900                              ; $478e: $c3 $00 $79


    add [hl]                                      ; $4791: $86
    rst $08                                       ; $4792: $cf
    jr nc, jr_074_4776                            ; $4793: $30 $e1

    ld e, $ff                                     ; $4795: $1e $ff
    nop                                           ; $4797: $00
    add a                                         ; $4798: $87
    ld a, b                                       ; $4799: $78
    rst $38                                       ; $479a: $ff
    nop                                           ; $479b: $00
    add hl, de                                    ; $479c: $19
    and $f3                                       ; $479d: $e6 $f3
    inc c                                         ; $479f: $0c
    cp $01                                        ; $47a0: $fe $01
    inc a                                         ; $47a2: $3c
    jp Jump_000_00ff                              ; $47a3: $c3 $ff $00


    db $fc                                        ; $47a6: $fc
    inc bc                                        ; $47a7: $03
    sbc a                                         ; $47a8: $9f
    ld h, b                                       ; $47a9: $60
    rrca                                          ; $47aa: $0f
    ldh a, [$86]                                  ; $47ab: $f0 $86
    ld a, c                                       ; $47ad: $79
    ccf                                           ; $47ae: $3f
    ret nz                                        ; $47af: $c0

    ld hl, sp+$07                                 ; $47b0: $f8 $07
    inc sp                                        ; $47b2: $33
    call z, $ff00                                 ; $47b3: $cc $00 $ff
    ccf                                           ; $47b6: $3f
    ret nz                                        ; $47b7: $c0

    nop                                           ; $47b8: $00
    rst $38                                       ; $47b9: $ff
    di                                            ; $47ba: $f3
    inc c                                         ; $47bb: $0c
    add hl, de                                    ; $47bc: $19
    and $c0                                       ; $47bd: $e6 $c0
    ccf                                           ; $47bf: $3f
    ld bc, $3cfe                                  ; $47c0: $01 $fe $3c
    jp $e11e                                      ; $47c3: $c3 $1e $e1


    ret nz                                        ; $47c6: $c0

    ccf                                           ; $47c7: $3f
    nop                                           ; $47c8: $00
    rst $38                                       ; $47c9: $ff
    nop                                           ; $47ca: $00
    rst $38                                       ; $47cb: $ff
    sbc b                                         ; $47cc: $98
    ld h, a                                       ; $47cd: $67
    nop                                           ; $47ce: $00
    rst $38                                       ; $47cf: $ff
    jr @+$01                                      ; $47d0: $18 $ff

    jp Jump_000_00ff                              ; $47d2: $c3 $ff $00


    rst $38                                       ; $47d5: $ff
    inc a                                         ; $47d6: $3c
    rst $38                                       ; $47d7: $ff
    nop                                           ; $47d8: $00
    rst $38                                       ; $47d9: $ff
    nop                                           ; $47da: $00
    rst $38                                       ; $47db: $ff
    ld hl, sp-$01                                 ; $47dc: $f8 $ff
    nop                                           ; $47de: $00
    rst $38                                       ; $47df: $ff
    nop                                           ; $47e0: $00
    rst $38                                       ; $47e1: $ff
    call z, Call_000_00ff                         ; $47e2: $cc $ff $00
    rst $38                                       ; $47e5: $ff
    ldh a, [rIE]                                  ; $47e6: $f0 $ff
    ld e, $ff                                     ; $47e8: $1e $ff
    ret nz                                        ; $47ea: $c0

    rst $38                                       ; $47eb: $ff
    ld bc, $f0ff                                  ; $47ec: $01 $ff $f0
    rst $38                                       ; $47ef: $ff
    rst $38                                       ; $47f0: $ff
    rst $38                                       ; $47f1: $ff
    ret nz                                        ; $47f2: $c0

    rst $38                                       ; $47f3: $ff
    ld h, a                                       ; $47f4: $67
    rst $38                                       ; $47f5: $ff
    call z, $ffff                                 ; $47f6: $cc $ff $ff
    rst $38                                       ; $47f9: $ff
    call z, $e6ff                                 ; $47fa: $cc $ff $e6
    rst $38                                       ; $47fd: $ff
    inc a                                         ; $47fe: $3c
    rst $38                                       ; $47ff: $ff
    add c                                         ; $4800: $81
    rst $38                                       ; $4801: $ff
    ccf                                           ; $4802: $3f
    rst $38                                       ; $4803: $ff
    and $ff                                       ; $4804: $e6 $ff
    ccf                                           ; $4806: $3f
    rst $38                                       ; $4807: $ff
    sbc a                                         ; $4808: $9f
    rst $38                                       ; $4809: $ff
    db $fc                                        ; $480a: $fc
    rst $38                                       ; $480b: $ff
    ld a, a                                       ; $480c: $7f
    rst $38                                       ; $480d: $ff
    rst $38                                       ; $480e: $ff
    rst $38                                       ; $480f: $ff
    add c                                         ; $4810: $81
    nop                                           ; $4811: $00
    jr nc, jr_074_4814                            ; $4812: $30 $00

jr_074_4814:
    sbc [hl]                                      ; $4814: $9e
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    ld a, b                                       ; $4818: $78
    nop                                           ; $4819: $00
    nop                                           ; $481a: $00
    nop                                           ; $481b: $00
    and $00                                       ; $481c: $e6 $00
    inc c                                         ; $481e: $0c
    nop                                           ; $481f: $00
    add c                                         ; $4820: $81
    nop                                           ; $4821: $00
    inc sp                                        ; $4822: $33
    nop                                           ; $4823: $00
    ld bc, $0300                                  ; $4824: $01 $00 $03
    nop                                           ; $4827: $00
    ld h, b                                       ; $4828: $60
    nop                                           ; $4829: $00
    ldh a, [rP1]                                  ; $482a: $f0 $00
    ld a, c                                       ; $482c: $79
    nop                                           ; $482d: $00
    ret nz                                        ; $482e: $c0

    nop                                           ; $482f: $00
    add c                                         ; $4830: $81
    nop                                           ; $4831: $00
    di                                            ; $4832: $f3
    nop                                           ; $4833: $00
    ld a, a                                       ; $4834: $7f
    nop                                           ; $4835: $00
    ldh a, [rP1]                                  ; $4836: $f0 $00
    rst $38                                       ; $4838: $ff
    nop                                           ; $4839: $00
    jp Jump_074_7e00                              ; $483a: $c3 $00 $7e


    nop                                           ; $483d: $00
    rst $08                                       ; $483e: $cf
    nop                                           ; $483f: $00
    rst $38                                       ; $4840: $ff
    nop                                           ; $4841: $00
    jr nc, jr_074_4844                            ; $4842: $30 $00

jr_074_4844:
    ld hl, sp+$00                                 ; $4844: $f8 $00
    rrca                                          ; $4846: $0f
    nop                                           ; $4847: $00
    rst $38                                       ; $4848: $ff
    nop                                           ; $4849: $00
    rst $38                                       ; $484a: $ff
    nop                                           ; $484b: $00
    ld e, $00                                     ; $484c: $1e $00
    rst $38                                       ; $484e: $ff

jr_074_484f:
    nop                                           ; $484f: $00
    ld sp, hl                                     ; $4850: $f9
    ld b, $33                                     ; $4851: $06 $33
    call z, Call_074_619e                         ; $4853: $cc $9e $61
    ldh a, [rIF]                                  ; $4856: $f0 $0f
    ld a, a                                       ; $4858: $7f
    add b                                         ; $4859: $80
    rst $38                                       ; $485a: $ff
    nop                                           ; $485b: $00
    add c                                         ; $485c: $81
    ld a, [hl]                                    ; $485d: $7e
    rst $38                                       ; $485e: $ff
    nop                                           ; $485f: $00
    rst $38                                       ; $4860: $ff
    nop                                           ; $4861: $00
    rst $08                                       ; $4862: $cf
    jr nc, jr_074_48e4                            ; $4863: $30 $7f

    add b                                         ; $4865: $80
    jp $f83c                                      ; $4866: $c3 $3c $f8


    rlca                                          ; $4869: $07
    rst $08                                       ; $486a: $cf
    jr nc, @+$01                                  ; $486b: $30 $ff

    nop                                           ; $486d: $00
    jp $803c                                      ; $486e: $c3 $3c $80


    ld a, a                                       ; $4871: $7f
    rrca                                          ; $4872: $0f
    ldh a, [$66]                                  ; $4873: $f0 $66
    sbc c                                         ; $4875: $99
    inc c                                         ; $4876: $0c
    di                                            ; $4877: $f3
    ld b, $f9                                     ; $4878: $06 $f9
    ldh a, [rIF]                                  ; $487a: $f0 $0f
    ld b, $f9                                     ; $487c: $06 $f9
    jr nc, jr_074_484f                            ; $487e: $30 $cf

    rra                                           ; $4880: $1f
    ldh [$f0], a                                  ; $4881: $e0 $f0
    rrca                                          ; $4883: $0f
    ld b, $f9                                     ; $4884: $06 $f9
    ldh a, [rIF]                                  ; $4886: $f0 $0f
    nop                                           ; $4888: $00
    rst $38                                       ; $4889: $ff
    nop                                           ; $488a: $00
    rst $38                                       ; $488b: $ff
    nop                                           ; $488c: $00
    rst $38                                       ; $488d: $ff
    nop                                           ; $488e: $00
    rst $38                                       ; $488f: $ff
    ld b, $ff                                     ; $4890: $06 $ff
    jr nc, @+$01                                  ; $4892: $30 $ff

    rlca                                          ; $4894: $07
    rst $38                                       ; $4895: $ff
    nop                                           ; $4896: $00
    rst $38                                       ; $4897: $ff
    ld a, b                                       ; $4898: $78
    rst $38                                       ; $4899: $ff
    nop                                           ; $489a: $00
    rst $38                                       ; $489b: $ff
    ld a, a                                       ; $489c: $7f
    rst $38                                       ; $489d: $ff
    nop                                           ; $489e: $00
    rst $38                                       ; $489f: $ff
    jr @+$01                                      ; $48a0: $18 $ff

    ret nz                                        ; $48a2: $c0

    rst $38                                       ; $48a3: $ff
    ld hl, sp-$01                                 ; $48a4: $f8 $ff
    nop                                           ; $48a6: $00
    rst $38                                       ; $48a7: $ff
    ld h, [hl]                                    ; $48a8: $66
    rst $38                                       ; $48a9: $ff
    call z, $f8ff                                 ; $48aa: $cc $ff $f8
    rst $38                                       ; $48ad: $ff
    nop                                           ; $48ae: $00
    rst $38                                       ; $48af: $ff
    ret nz                                        ; $48b0: $c0

    rst $38                                       ; $48b1: $ff
    sbc [hl]                                      ; $48b2: $9e
    rst $38                                       ; $48b3: $ff
    ldh a, [rIE]                                  ; $48b4: $f0 $ff
    rst $38                                       ; $48b6: $ff
    rst $38                                       ; $48b7: $ff
    nop                                           ; $48b8: $00
    rst $38                                       ; $48b9: $ff
    ld a, a                                       ; $48ba: $7f
    rst $38                                       ; $48bb: $ff
    ret nz                                        ; $48bc: $c0

    rst $38                                       ; $48bd: $ff
    sbc c                                         ; $48be: $99
    rst $38                                       ; $48bf: $ff
    inc a                                         ; $48c0: $3c
    rst $38                                       ; $48c1: $ff
    ld a, a                                       ; $48c2: $7f
    rst $38                                       ; $48c3: $ff
    inc sp                                        ; $48c4: $33
    rst $38                                       ; $48c5: $ff
    add a                                         ; $48c6: $87
    rst $38                                       ; $48c7: $ff
    rst $38                                       ; $48c8: $ff
    rst $38                                       ; $48c9: $ff
    cp $ff                                        ; $48ca: $fe $ff
    rst $08                                       ; $48cc: $cf
    rst $38                                       ; $48cd: $ff
    rst $38                                       ; $48ce: $ff
    rst $38                                       ; $48cf: $ff
    ld bc, $0300                                  ; $48d0: $01 $00 $03
    nop                                           ; $48d3: $00
    add b                                         ; $48d4: $80
    nop                                           ; $48d5: $00
    inc a                                         ; $48d6: $3c
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    nop                                           ; $48d9: $00
    nop                                           ; $48da: $00
    nop                                           ; $48db: $00
    ld hl, sp+$00                                 ; $48dc: $f8 $00
    nop                                           ; $48de: $00
    nop                                           ; $48df: $00
    add [hl]                                      ; $48e0: $86
    nop                                           ; $48e1: $00
    jr nc, jr_074_48e4                            ; $48e2: $30 $00

jr_074_48e4:
    ld bc, $f000                                  ; $48e4: $01 $00 $f0
    nop                                           ; $48e7: $00
    ld e, $00                                     ; $48e8: $1e $00
    ret nz                                        ; $48ea: $c0

    nop                                           ; $48eb: $00
    ld bc, $f000                                  ; $48ec: $01 $00 $f0
    nop                                           ; $48ef: $00
    rst $38                                       ; $48f0: $ff
    nop                                           ; $48f1: $00
    ret nz                                        ; $48f2: $c0

    nop                                           ; $48f3: $00
    ld h, a                                       ; $48f4: $67
    nop                                           ; $48f5: $00
    call z, $ff00                                 ; $48f6: $cc $00 $ff
    nop                                           ; $48f9: $00
    ccf                                           ; $48fa: $3f
    nop                                           ; $48fb: $00
    rst $38                                       ; $48fc: $ff
    nop                                           ; $48fd: $00
    rst $38                                       ; $48fe: $ff
    nop                                           ; $48ff: $00
    add c                                         ; $4900: $81
    nop                                           ; $4901: $00
    ccf                                           ; $4902: $3f
    nop                                           ; $4903: $00
    and $00                                       ; $4904: $e6 $00
    ccf                                           ; $4906: $3f
    nop                                           ; $4907: $00
    add a                                         ; $4908: $87
    nop                                           ; $4909: $00
    rst $38                                       ; $490a: $ff
    nop                                           ; $490b: $00
    rst $38                                       ; $490c: $ff
    nop                                           ; $490d: $00
    rst $38                                       ; $490e: $ff
    nop                                           ; $490f: $00
    jp $9800                                      ; $4910: $c3 $00 $98


    nop                                           ; $4913: $00
    call z, RST_00                                ; $4914: $cc $00 $00
    nop                                           ; $4917: $00
    inc a                                         ; $4918: $3c
    nop                                           ; $4919: $00
    ld h, c                                       ; $491a: $61
    nop                                           ; $491b: $00
    nop                                           ; $491c: $00
    nop                                           ; $491d: $00
    ld a, a                                       ; $491e: $7f
    nop                                           ; $491f: $00
    ld bc, $0f00                                  ; $4920: $01 $00 $0f
    nop                                           ; $4923: $00
    rst $00                                       ; $4924: $c7
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    ld e, $00                                     ; $4928: $1e $00
    db $fc                                        ; $492a: $fc
    nop                                           ; $492b: $00
    nop                                           ; $492c: $00
    nop                                           ; $492d: $00
    ret nz                                        ; $492e: $c0

    nop                                           ; $492f: $00
    inc bc                                        ; $4930: $03
    nop                                           ; $4931: $00
    ld hl, sp+$00                                 ; $4932: $f8 $00
    rst $38                                       ; $4934: $ff
    nop                                           ; $4935: $00
    ld h, b                                       ; $4936: $60
    nop                                           ; $4937: $00
    di                                            ; $4938: $f3
    nop                                           ; $4939: $00
    add [hl]                                      ; $493a: $86
    nop                                           ; $493b: $00
    di                                            ; $493c: $f3
    nop                                           ; $493d: $00
    sbc a                                         ; $493e: $9f
    nop                                           ; $493f: $00
    cp $00                                        ; $4940: $fe $00
    inc bc                                        ; $4942: $03
    nop                                           ; $4943: $00
    rst $38                                       ; $4944: $ff
    nop                                           ; $4945: $00
    ld a, h                                       ; $4946: $7c
    nop                                           ; $4947: $00
    rst $38                                       ; $4948: $ff
    nop                                           ; $4949: $00
    ld [hl], e                                    ; $494a: $73
    nop                                           ; $494b: $00
    rst $38                                       ; $494c: $ff
    nop                                           ; $494d: $00
    adc a                                         ; $494e: $8f
    nop                                           ; $494f: $00
    di                                            ; $4950: $f3
    inc c                                         ; $4951: $0c
    sbc [hl]                                      ; $4952: $9e
    ld h, c                                       ; $4953: $61
    jp $ff3c                                      ; $4954: $c3 $3c $ff


    nop                                           ; $4957: $00
    rrca                                          ; $4958: $0f
    ldh a, [$fe]                                  ; $4959: $f0 $fe
    ld bc, $cc33                                  ; $495b: $01 $33 $cc
    and $19                                       ; $495e: $e6 $19
    ld sp, hl                                     ; $4960: $f9
    ld b, $73                                     ; $4961: $06 $73
    adc h                                         ; $4963: $8c
    rst $38                                       ; $4964: $ff
    nop                                           ; $4965: $00
    di                                            ; $4966: $f3
    inc c                                         ; $4967: $0c
    ld a, $c1                                     ; $4968: $3e $c1
    ccf                                           ; $496a: $3f
    ret nz                                        ; $496b: $c0

    jr @-$17                                      ; $496c: $18 $e7

    ld a, a                                       ; $496e: $7f
    add b                                         ; $496f: $80
    ldh a, [rIF]                                  ; $4970: $f0 $0f
    ld h, [hl]                                    ; $4972: $66
    sbc c                                         ; $4973: $99
    nop                                           ; $4974: $00
    rst $38                                       ; $4975: $ff
    ld a, a                                       ; $4976: $7f
    add b                                         ; $4977: $80
    nop                                           ; $4978: $00
    rst $38                                       ; $4979: $ff
    and $19                                       ; $497a: $e6 $19
    inc sp                                        ; $497c: $33
    call z, Call_074_7f80                         ; $497d: $cc $80 $7f
    inc bc                                        ; $4980: $03
    db $fc                                        ; $4981: $fc
    ld a, b                                       ; $4982: $78
    add a                                         ; $4983: $87
    inc a                                         ; $4984: $3c
    jp Jump_074_7f80                              ; $4985: $c3 $80 $7f


    nop                                           ; $4988: $00
    rst $38                                       ; $4989: $ff
    ld bc, $30fe                                  ; $498a: $01 $fe $30
    rst $08                                       ; $498d: $cf
    ld bc, $30fe                                  ; $498e: $01 $fe $30
    rst $38                                       ; $4991: $ff
    add a                                         ; $4992: $87
    rst $38                                       ; $4993: $ff
    nop                                           ; $4994: $00
    rst $38                                       ; $4995: $ff
    ld a, c                                       ; $4996: $79
    rst $38                                       ; $4997: $ff
    nop                                           ; $4998: $00
    rst $38                                       ; $4999: $ff
    ld bc, $f0ff                                  ; $499a: $01 $ff $f0
    rst $38                                       ; $499d: $ff
    ld bc, $00ff                                  ; $499e: $01 $ff $00
    rst $38                                       ; $49a1: $ff
    sbc c                                         ; $49a2: $99
    rst $38                                       ; $49a3: $ff
    nop                                           ; $49a4: $00
    rst $38                                       ; $49a5: $ff
    ldh [rIE], a                                  ; $49a6: $e0 $ff
    inc a                                         ; $49a8: $3c
    rst $38                                       ; $49a9: $ff
    add b                                         ; $49aa: $80
    rst $38                                       ; $49ab: $ff
    inc bc                                        ; $49ac: $03
    rst $38                                       ; $49ad: $ff
    ldh [rIE], a                                  ; $49ae: $e0 $ff
    rst $38                                       ; $49b0: $ff
    rst $38                                       ; $49b1: $ff
    add b                                         ; $49b2: $80
    rst $38                                       ; $49b3: $ff
    rst $08                                       ; $49b4: $cf
    rst $38                                       ; $49b5: $ff
    sbc b                                         ; $49b6: $98
    rst $38                                       ; $49b7: $ff
    rst $38                                       ; $49b8: $ff
    rst $38                                       ; $49b9: $ff
    sbc c                                         ; $49ba: $99
    rst $38                                       ; $49bb: $ff
    call z, Call_074_79ff                         ; $49bc: $cc $ff $79
    rst $38                                       ; $49bf: $ff
    inc bc                                        ; $49c0: $03
    rst $38                                       ; $49c1: $ff
    ld a, a                                       ; $49c2: $7f
    rst $38                                       ; $49c3: $ff
    call z, Call_074_7fff                         ; $49c4: $cc $ff $7f
    rst $38                                       ; $49c7: $ff
    ccf                                           ; $49c8: $3f
    rst $38                                       ; $49c9: $ff
    ld sp, hl                                     ; $49ca: $f9
    rst $38                                       ; $49cb: $ff
    rst $38                                       ; $49cc: $ff
    rst $38                                       ; $49cd: $ff
    cp $ff                                        ; $49ce: $fe $ff
    inc bc                                        ; $49d0: $03
    nop                                           ; $49d1: $00
    ld h, b                                       ; $49d2: $60
    nop                                           ; $49d3: $00
    inc a                                         ; $49d4: $3c
    nop                                           ; $49d5: $00
    nop                                           ; $49d6: $00
    nop                                           ; $49d7: $00
    ldh a, [rP1]                                  ; $49d8: $f0 $00
    ld bc, $cc00                                  ; $49da: $01 $00 $cc
    nop                                           ; $49dd: $00
    add hl, de                                    ; $49de: $19
    nop                                           ; $49df: $00
    inc bc                                        ; $49e0: $03
    nop                                           ; $49e1: $00
    ld h, [hl]                                    ; $49e2: $66
    nop                                           ; $49e3: $00
    inc bc                                        ; $49e4: $03
    nop                                           ; $49e5: $00
    ld b, $00                                     ; $49e6: $06 $00
    ret nz                                        ; $49e8: $c0

    nop                                           ; $49e9: $00
    ldh [rP1], a                                  ; $49ea: $e0 $00
    di                                            ; $49ec: $f3
    nop                                           ; $49ed: $00
    add b                                         ; $49ee: $80
    nop                                           ; $49ef: $00
    add c                                         ; $49f0: $81
    nop                                           ; $49f1: $00
    di                                            ; $49f2: $f3
    nop                                           ; $49f3: $00
    ld a, a                                       ; $49f4: $7f
    nop                                           ; $49f5: $00
    ldh a, [rP1]                                  ; $49f6: $f0 $00
    rst $38                                       ; $49f8: $ff
    nop                                           ; $49f9: $00
    jp Jump_074_7e00                              ; $49fa: $c3 $00 $7e


    nop                                           ; $49fd: $00
    rst $08                                       ; $49fe: $cf
    nop                                           ; $49ff: $00
    rst $38                                       ; $4a00: $ff
    nop                                           ; $4a01: $00
    jr nc, jr_074_4a04                            ; $4a02: $30 $00

jr_074_4a04:
    ld hl, sp+$00                                 ; $4a04: $f8 $00
    rrca                                          ; $4a06: $0f
    nop                                           ; $4a07: $00
    rst $38                                       ; $4a08: $ff
    nop                                           ; $4a09: $00
    rst $38                                       ; $4a0a: $ff
    nop                                           ; $4a0b: $00
    ld e, $00                                     ; $4a0c: $1e $00
    rst $38                                       ; $4a0e: $ff

jr_074_4a0f:
    nop                                           ; $4a0f: $00
    ld sp, hl                                     ; $4a10: $f9
    ld b, $33                                     ; $4a11: $06 $33
    call z, Call_074_619e                         ; $4a13: $cc $9e $61
    ldh a, [rIF]                                  ; $4a16: $f0 $0f
    ld a, a                                       ; $4a18: $7f
    add b                                         ; $4a19: $80
    rst $38                                       ; $4a1a: $ff
    nop                                           ; $4a1b: $00
    add c                                         ; $4a1c: $81
    ld a, [hl]                                    ; $4a1d: $7e
    rst $38                                       ; $4a1e: $ff
    nop                                           ; $4a1f: $00
    rst $38                                       ; $4a20: $ff
    nop                                           ; $4a21: $00
    rst $08                                       ; $4a22: $cf
    jr nc, jr_074_4aa4                            ; $4a23: $30 $7f

    add b                                         ; $4a25: $80
    jp $f83c                                      ; $4a26: $c3 $3c $f8


    rlca                                          ; $4a29: $07
    rst $08                                       ; $4a2a: $cf
    jr nc, @+$01                                  ; $4a2b: $30 $ff

    nop                                           ; $4a2d: $00
    jp $803c                                      ; $4a2e: $c3 $3c $80


    ld a, a                                       ; $4a31: $7f
    rrca                                          ; $4a32: $0f
    ldh a, [$66]                                  ; $4a33: $f0 $66
    sbc c                                         ; $4a35: $99
    inc c                                         ; $4a36: $0c
    di                                            ; $4a37: $f3
    ld b, $f9                                     ; $4a38: $06 $f9
    ldh a, [rIF]                                  ; $4a3a: $f0 $0f
    ld b, $f9                                     ; $4a3c: $06 $f9
    jr nc, jr_074_4a0f                            ; $4a3e: $30 $cf

    rra                                           ; $4a40: $1f
    ldh [$f0], a                                  ; $4a41: $e0 $f0
    rrca                                          ; $4a43: $0f
    ld b, $f9                                     ; $4a44: $06 $f9
    ldh a, [rIF]                                  ; $4a46: $f0 $0f
    nop                                           ; $4a48: $00
    rst $38                                       ; $4a49: $ff
    nop                                           ; $4a4a: $00
    rst $38                                       ; $4a4b: $ff
    nop                                           ; $4a4c: $00
    rst $38                                       ; $4a4d: $ff
    nop                                           ; $4a4e: $00
    rst $38                                       ; $4a4f: $ff
    ld b, $ff                                     ; $4a50: $06 $ff
    jr nc, @+$01                                  ; $4a52: $30 $ff

    rlca                                          ; $4a54: $07
    rst $38                                       ; $4a55: $ff
    nop                                           ; $4a56: $00
    rst $38                                       ; $4a57: $ff
    ld a, b                                       ; $4a58: $78
    rst $38                                       ; $4a59: $ff
    nop                                           ; $4a5a: $00
    rst $38                                       ; $4a5b: $ff
    ld a, a                                       ; $4a5c: $7f
    rst $38                                       ; $4a5d: $ff
    nop                                           ; $4a5e: $00
    rst $38                                       ; $4a5f: $ff
    jr @+$01                                      ; $4a60: $18 $ff

    ret nz                                        ; $4a62: $c0

    rst $38                                       ; $4a63: $ff
    ld hl, sp-$01                                 ; $4a64: $f8 $ff
    nop                                           ; $4a66: $00
    rst $38                                       ; $4a67: $ff
    ld h, [hl]                                    ; $4a68: $66
    rst $38                                       ; $4a69: $ff
    call z, $f8ff                                 ; $4a6a: $cc $ff $f8
    rst $38                                       ; $4a6d: $ff
    nop                                           ; $4a6e: $00
    rst $38                                       ; $4a6f: $ff
    add b                                         ; $4a70: $80
    rst $38                                       ; $4a71: $ff
    inc a                                         ; $4a72: $3c
    rst $38                                       ; $4a73: $ff
    ldh [rIE], a                                  ; $4a74: $e0 $ff
    rst $38                                       ; $4a76: $ff
    rst $38                                       ; $4a77: $ff
    ld bc, $ffff                                  ; $4a78: $01 $ff $ff
    rst $38                                       ; $4a7b: $ff
    add c                                         ; $4a7c: $81
    rst $38                                       ; $4a7d: $ff
    inc sp                                        ; $4a7e: $33
    rst $38                                       ; $4a7f: $ff
    ld a, c                                       ; $4a80: $79
    rst $38                                       ; $4a81: $ff
    rst $38                                       ; $4a82: $ff
    rst $38                                       ; $4a83: $ff
    ld h, a                                       ; $4a84: $67
    rst $38                                       ; $4a85: $ff
    rrca                                          ; $4a86: $0f
    rst $38                                       ; $4a87: $ff
    cp $ff                                        ; $4a88: $fe $ff
    db $fc                                        ; $4a8a: $fc
    rst $38                                       ; $4a8b: $ff
    sbc a                                         ; $4a8c: $9f
    rst $38                                       ; $4a8d: $ff
    rst $38                                       ; $4a8e: $ff
    rst $38                                       ; $4a8f: $ff
    inc bc                                        ; $4a90: $03
    nop                                           ; $4a91: $00
    ld b, $00                                     ; $4a92: $06 $00
    nop                                           ; $4a94: $00
    nop                                           ; $4a95: $00
    ld a, c                                       ; $4a96: $79
    nop                                           ; $4a97: $00
    nop                                           ; $4a98: $00
    nop                                           ; $4a99: $00
    ld bc, $f000                                  ; $4a9a: $01 $00 $f0
    nop                                           ; $4a9d: $00
    ld bc, $0c00                                  ; $4a9e: $01 $00 $0c
    nop                                           ; $4aa1: $00
    ld h, b                                       ; $4aa2: $60
    nop                                           ; $4aa3: $00

jr_074_4aa4:
    inc bc                                        ; $4aa4: $03
    nop                                           ; $4aa5: $00
    ldh [rP1], a                                  ; $4aa6: $e0 $00
    inc a                                         ; $4aa8: $3c
    nop                                           ; $4aa9: $00
    add b                                         ; $4aaa: $80
    nop                                           ; $4aab: $00
    inc bc                                        ; $4aac: $03
    nop                                           ; $4aad: $00
    ldh [rP1], a                                  ; $4aae: $e0 $00
    rst $38                                       ; $4ab0: $ff
    nop                                           ; $4ab1: $00
    add b                                         ; $4ab2: $80
    nop                                           ; $4ab3: $00
    rst $08                                       ; $4ab4: $cf
    nop                                           ; $4ab5: $00
    sbc b                                         ; $4ab6: $98
    nop                                           ; $4ab7: $00
    rst $38                                       ; $4ab8: $ff
    nop                                           ; $4ab9: $00
    ld a, a                                       ; $4aba: $7f
    nop                                           ; $4abb: $00
    rst $38                                       ; $4abc: $ff
    nop                                           ; $4abd: $00
    rst $38                                       ; $4abe: $ff
    nop                                           ; $4abf: $00
    inc bc                                        ; $4ac0: $03
    nop                                           ; $4ac1: $00
    ld a, a                                       ; $4ac2: $7f
    nop                                           ; $4ac3: $00
    call z, $7f00                                 ; $4ac4: $cc $00 $7f
    nop                                           ; $4ac7: $00
    rrca                                          ; $4ac8: $0f
    nop                                           ; $4ac9: $00
    cp $00                                        ; $4aca: $fe $00
    rst $38                                       ; $4acc: $ff
    nop                                           ; $4acd: $00
    rst $38                                       ; $4ace: $ff
    nop                                           ; $4acf: $00
    add [hl]                                      ; $4ad0: $86
    nop                                           ; $4ad1: $00
    jr nc, jr_074_4ad4                            ; $4ad2: $30 $00

jr_074_4ad4:
    sbc c                                         ; $4ad4: $99
    nop                                           ; $4ad5: $00
    nop                                           ; $4ad6: $00
    nop                                           ; $4ad7: $00
    ld a, b                                       ; $4ad8: $78
    nop                                           ; $4ad9: $00
    jp RST_00                                     ; $4ada: $c3 $00 $00


    nop                                           ; $4add: $00
    rst $38                                       ; $4ade: $ff
    nop                                           ; $4adf: $00
    inc bc                                        ; $4ae0: $03
    nop                                           ; $4ae1: $00
    ld e, $00                                     ; $4ae2: $1e $00
    adc a                                         ; $4ae4: $8f
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00
    nop                                           ; $4ae7: $00
    inc a                                         ; $4ae8: $3c
    nop                                           ; $4ae9: $00
    ld sp, hl                                     ; $4aea: $f9
    nop                                           ; $4aeb: $00
    nop                                           ; $4aec: $00
    nop                                           ; $4aed: $00
    add c                                         ; $4aee: $81
    nop                                           ; $4aef: $00
    rlca                                          ; $4af0: $07
    nop                                           ; $4af1: $00
    ldh a, [rP1]                                  ; $4af2: $f0 $00
    rst $38                                       ; $4af4: $ff
    nop                                           ; $4af5: $00
    ret nz                                        ; $4af6: $c0

    nop                                           ; $4af7: $00
    rst $20                                       ; $4af8: $e7
    nop                                           ; $4af9: $00
    inc c                                         ; $4afa: $0c
    nop                                           ; $4afb: $00
    rst $20                                       ; $4afc: $e7

jr_074_4afd:
    nop                                           ; $4afd: $00
    ccf                                           ; $4afe: $3f
    nop                                           ; $4aff: $00
    db $fc                                        ; $4b00: $fc
    nop                                           ; $4b01: $00
    rlca                                          ; $4b02: $07
    nop                                           ; $4b03: $00
    rst $38                                       ; $4b04: $ff
    nop                                           ; $4b05: $00
    ld sp, hl                                     ; $4b06: $f9
    nop                                           ; $4b07: $00
    rst $38                                       ; $4b08: $ff
    nop                                           ; $4b09: $00
    and $00                                       ; $4b0a: $e6 $00
    rst $38                                       ; $4b0c: $ff
    nop                                           ; $4b0d: $00
    ld e, $00                                     ; $4b0e: $1e $00
    rst $20                                       ; $4b10: $e7
    jr jr_074_4b4f                                ; $4b11: $18 $3c

    jp Jump_074_7887                              ; $4b13: $c3 $87 $78


    rst $38                                       ; $4b16: $ff
    nop                                           ; $4b17: $00
    ld e, $e1                                     ; $4b18: $1e $e1
    db $fc                                        ; $4b1a: $fc
    inc bc                                        ; $4b1b: $03
    ld h, [hl]                                    ; $4b1c: $66
    sbc c                                         ; $4b1d: $99
    call z, $f333                                 ; $4b1e: $cc $33 $f3
    inc c                                         ; $4b21: $0c
    and $19                                       ; $4b22: $e6 $19
    rst $38                                       ; $4b24: $ff
    nop                                           ; $4b25: $00
    rst $20                                       ; $4b26: $e7
    jr jr_074_4ba5                                ; $4b27: $18 $7c

    add e                                         ; $4b29: $83
    ld a, a                                       ; $4b2a: $7f
    add b                                         ; $4b2b: $80
    jr nc, jr_074_4afd                            ; $4b2c: $30 $cf

    rst $38                                       ; $4b2e: $ff
    nop                                           ; $4b2f: $00
    ldh [$1f], a                                  ; $4b30: $e0 $1f
    call z, $0033                                 ; $4b32: $cc $33 $00
    rst $38                                       ; $4b35: $ff
    rst $38                                       ; $4b36: $ff
    nop                                           ; $4b37: $00
    nop                                           ; $4b38: $00
    rst $38                                       ; $4b39: $ff
    call z, Call_074_6633                         ; $4b3a: $cc $33 $66
    sbc c                                         ; $4b3d: $99
    nop                                           ; $4b3e: $00
    rst $38                                       ; $4b3f: $ff
    rlca                                          ; $4b40: $07
    ld hl, sp-$10                                 ; $4b41: $f8 $f0
    rrca                                          ; $4b43: $0f
    ld a, b                                       ; $4b44: $78
    add a                                         ; $4b45: $87
    nop                                           ; $4b46: $00
    rst $38                                       ; $4b47: $ff
    nop                                           ; $4b48: $00
    rst $38                                       ; $4b49: $ff
    inc bc                                        ; $4b4a: $03
    db $fc                                        ; $4b4b: $fc
    ld h, b                                       ; $4b4c: $60
    sbc a                                         ; $4b4d: $9f
    inc bc                                        ; $4b4e: $03

jr_074_4b4f:
    db $fc                                        ; $4b4f: $fc
    ld h, b                                       ; $4b50: $60
    rst $38                                       ; $4b51: $ff
    rrca                                          ; $4b52: $0f
    rst $38                                       ; $4b53: $ff
    nop                                           ; $4b54: $00
    rst $38                                       ; $4b55: $ff
    di                                            ; $4b56: $f3
    rst $38                                       ; $4b57: $ff
    nop                                           ; $4b58: $00
    rst $38                                       ; $4b59: $ff
    inc bc                                        ; $4b5a: $03
    rst $38                                       ; $4b5b: $ff
    ldh [rIE], a                                  ; $4b5c: $e0 $ff
    inc bc                                        ; $4b5e: $03
    rst $38                                       ; $4b5f: $ff
    nop                                           ; $4b60: $00
    rst $38                                       ; $4b61: $ff
    inc sp                                        ; $4b62: $33
    rst $38                                       ; $4b63: $ff
    nop                                           ; $4b64: $00
    rst $38                                       ; $4b65: $ff
    ret nz                                        ; $4b66: $c0

    rst $38                                       ; $4b67: $ff
    ld a, b                                       ; $4b68: $78
    rst $38                                       ; $4b69: $ff
    nop                                           ; $4b6a: $00
    rst $38                                       ; $4b6b: $ff
    rlca                                          ; $4b6c: $07
    rst $38                                       ; $4b6d: $ff
    ret nz                                        ; $4b6e: $c0

    rst $38                                       ; $4b6f: $ff
    cp $ff                                        ; $4b70: $fe $ff
    nop                                           ; $4b72: $00
    rst $38                                       ; $4b73: $ff
    sbc a                                         ; $4b74: $9f
    rst $38                                       ; $4b75: $ff
    jr nc, @+$01                                  ; $4b76: $30 $ff

    cp $ff                                        ; $4b78: $fe $ff
    inc sp                                        ; $4b7a: $33
    rst $38                                       ; $4b7b: $ff
    sbc c                                         ; $4b7c: $99
    rst $38                                       ; $4b7d: $ff
    di                                            ; $4b7e: $f3
    rst $38                                       ; $4b7f: $ff
    rlca                                          ; $4b80: $07
    rst $38                                       ; $4b81: $ff
    rst $38                                       ; $4b82: $ff
    rst $38                                       ; $4b83: $ff
    sbc c                                         ; $4b84: $99
    rst $38                                       ; $4b85: $ff
    rst $38                                       ; $4b86: $ff
    rst $38                                       ; $4b87: $ff
    ld a, a                                       ; $4b88: $7f
    rst $38                                       ; $4b89: $ff
    di                                            ; $4b8a: $f3
    rst $38                                       ; $4b8b: $ff
    rst $38                                       ; $4b8c: $ff
    rst $38                                       ; $4b8d: $ff
    db $fc                                        ; $4b8e: $fc
    rst $38                                       ; $4b8f: $ff
    ld b, $00                                     ; $4b90: $06 $00
    ret nz                                        ; $4b92: $c0

    nop                                           ; $4b93: $00
    ld a, b                                       ; $4b94: $78
    nop                                           ; $4b95: $00
    nop                                           ; $4b96: $00
    nop                                           ; $4b97: $00
    pop hl                                        ; $4b98: $e1
    nop                                           ; $4b99: $00
    inc bc                                        ; $4b9a: $03
    nop                                           ; $4b9b: $00
    sbc c                                         ; $4b9c: $99
    nop                                           ; $4b9d: $00
    inc sp                                        ; $4b9e: $33
    nop                                           ; $4b9f: $00
    ld b, $00                                     ; $4ba0: $06 $00
    call z, $0600                                 ; $4ba2: $cc $00 $06

jr_074_4ba5:
    nop                                           ; $4ba5: $00
    inc c                                         ; $4ba6: $0c
    nop                                           ; $4ba7: $00
    add c                                         ; $4ba8: $81
    nop                                           ; $4ba9: $00
    ret nz                                        ; $4baa: $c0

    nop                                           ; $4bab: $00
    rst $20                                       ; $4bac: $e7
    nop                                           ; $4bad: $00
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    inc bc                                        ; $4bb0: $03
    nop                                           ; $4bb1: $00
    and $00                                       ; $4bb2: $e6 $00
    rst $38                                       ; $4bb4: $ff
    nop                                           ; $4bb5: $00
    ldh [rP1], a                                  ; $4bb6: $e0 $00
    rst $38                                       ; $4bb8: $ff
    nop                                           ; $4bb9: $00
    add a                                         ; $4bba: $87
    nop                                           ; $4bbb: $00
    db $fc                                        ; $4bbc: $fc
    nop                                           ; $4bbd: $00
    sbc a                                         ; $4bbe: $9f
    nop                                           ; $4bbf: $00
    rst $38                                       ; $4bc0: $ff
    nop                                           ; $4bc1: $00
    ld h, c                                       ; $4bc2: $61
    nop                                           ; $4bc3: $00
    ldh a, [rP1]                                  ; $4bc4: $f0 $00
    rra                                           ; $4bc6: $1f
    nop                                           ; $4bc7: $00
    rst $38                                       ; $4bc8: $ff
    nop                                           ; $4bc9: $00
    rst $38                                       ; $4bca: $ff
    nop                                           ; $4bcb: $00
    inc a                                         ; $4bcc: $3c
    nop                                           ; $4bcd: $00
    rst $38                                       ; $4bce: $ff
    nop                                           ; $4bcf: $00
    di                                            ; $4bd0: $f3
    inc c                                         ; $4bd1: $0c
    ld h, a                                       ; $4bd2: $67
    sbc b                                         ; $4bd3: $98
    inc a                                         ; $4bd4: $3c
    jp $1ee1                                      ; $4bd5: $c3 $e1 $1e


    rst $38                                       ; $4bd8: $ff
    nop                                           ; $4bd9: $00
    rst $38                                       ; $4bda: $ff
    nop                                           ; $4bdb: $00
    inc bc                                        ; $4bdc: $03
    db $fc                                        ; $4bdd: $fc
    rst $38                                       ; $4bde: $ff
    nop                                           ; $4bdf: $00
    rst $38                                       ; $4be0: $ff
    nop                                           ; $4be1: $00
    sbc [hl]                                      ; $4be2: $9e
    ld h, c                                       ; $4be3: $61
    rst $38                                       ; $4be4: $ff
    nop                                           ; $4be5: $00
    add a                                         ; $4be6: $87
    ld a, b                                       ; $4be7: $78
    ldh a, [rIF]                                  ; $4be8: $f0 $0f
    sbc a                                         ; $4bea: $9f
    ld h, b                                       ; $4beb: $60
    rst $38                                       ; $4bec: $ff
    nop                                           ; $4bed: $00
    add a                                         ; $4bee: $87
    ld a, b                                       ; $4bef: $78
    nop                                           ; $4bf0: $00
    rst $38                                       ; $4bf1: $ff
    rra                                           ; $4bf2: $1f
    ldh [$cc], a                                  ; $4bf3: $e0 $cc
    inc sp                                        ; $4bf5: $33
    add hl, de                                    ; $4bf6: $19
    and $0c                                       ; $4bf7: $e6 $0c
    di                                            ; $4bf9: $f3
    ldh [$1f], a                                  ; $4bfa: $e0 $1f
    inc c                                         ; $4bfc: $0c
    di                                            ; $4bfd: $f3
    ld h, b                                       ; $4bfe: $60
    sbc a                                         ; $4bff: $9f
    ccf                                           ; $4c00: $3f
    ret nz                                        ; $4c01: $c0

    ldh [$1f], a                                  ; $4c02: $e0 $1f
    inc c                                         ; $4c04: $0c
    di                                            ; $4c05: $f3
    ldh [$1f], a                                  ; $4c06: $e0 $1f
    nop                                           ; $4c08: $00
    rst $38                                       ; $4c09: $ff
    ld bc, $00fe                                  ; $4c0a: $01 $fe $00
    rst $38                                       ; $4c0d: $ff
    nop                                           ; $4c0e: $00
    rst $38                                       ; $4c0f: $ff
    inc c                                         ; $4c10: $0c
    rst $38                                       ; $4c11: $ff
    ld h, c                                       ; $4c12: $61
    rst $38                                       ; $4c13: $ff
    rrca                                          ; $4c14: $0f
    rst $38                                       ; $4c15: $ff
    nop                                           ; $4c16: $00
    rst $38                                       ; $4c17: $ff
    ldh a, [rIE]                                  ; $4c18: $f0 $ff
    ld bc, $ffff                                  ; $4c1a: $01 $ff $ff
    rst $38                                       ; $4c1d: $ff
    nop                                           ; $4c1e: $00
    rst $38                                       ; $4c1f: $ff
    jr nc, @+$01                                  ; $4c20: $30 $ff

    add b                                         ; $4c22: $80
    rst $38                                       ; $4c23: $ff
    ldh a, [rIE]                                  ; $4c24: $f0 $ff
    nop                                           ; $4c26: $00
    rst $38                                       ; $4c27: $ff
    call z, $98ff                                 ; $4c28: $cc $ff $98
    rst $38                                       ; $4c2b: $ff
    ldh a, [rIE]                                  ; $4c2c: $f0 $ff
    nop                                           ; $4c2e: $00
    rst $38                                       ; $4c2f: $ff
    nop                                           ; $4c30: $00
    rst $38                                       ; $4c31: $ff
    ld a, c                                       ; $4c32: $79
    rst $38                                       ; $4c33: $ff
    ret nz                                        ; $4c34: $c0

    rst $38                                       ; $4c35: $ff
    cp $ff                                        ; $4c36: $fe $ff
    inc bc                                        ; $4c38: $03
    rst $38                                       ; $4c39: $ff
    rst $38                                       ; $4c3a: $ff
    rst $38                                       ; $4c3b: $ff
    inc bc                                        ; $4c3c: $03
    rst $38                                       ; $4c3d: $ff
    ld h, a                                       ; $4c3e: $67
    rst $38                                       ; $4c3f: $ff
    di                                            ; $4c40: $f3
    rst $38                                       ; $4c41: $ff
    cp $ff                                        ; $4c42: $fe $ff
    rst $08                                       ; $4c44: $cf
    rst $38                                       ; $4c45: $ff
    rra                                           ; $4c46: $1f
    rst $38                                       ; $4c47: $ff
    db $fc                                        ; $4c48: $fc
    rst $38                                       ; $4c49: $ff
    ld sp, hl                                     ; $4c4a: $f9
    rst $38                                       ; $4c4b: $ff
    ccf                                           ; $4c4c: $3f
    rst $38                                       ; $4c4d: $ff
    cp $ff                                        ; $4c4e: $fe $ff
    ld b, $00                                     ; $4c50: $06 $00
    inc c                                         ; $4c52: $0c
    nop                                           ; $4c53: $00
    nop                                           ; $4c54: $00
    nop                                           ; $4c55: $00
    di                                            ; $4c56: $f3
    nop                                           ; $4c57: $00
    nop                                           ; $4c58: $00
    nop                                           ; $4c59: $00
    inc bc                                        ; $4c5a: $03
    nop                                           ; $4c5b: $00
    ldh [rP1], a                                  ; $4c5c: $e0 $00
    inc bc                                        ; $4c5e: $03
    nop                                           ; $4c5f: $00
    jr jr_074_4c62                                ; $4c60: $18 $00

jr_074_4c62:
    ret nz                                        ; $4c62: $c0

    nop                                           ; $4c63: $00
    ld b, $00                                     ; $4c64: $06 $00
    ret nz                                        ; $4c66: $c0

    nop                                           ; $4c67: $00
    ld a, b                                       ; $4c68: $78
    nop                                           ; $4c69: $00
    nop                                           ; $4c6a: $00
    nop                                           ; $4c6b: $00
    rlca                                          ; $4c6c: $07
    nop                                           ; $4c6d: $00
    ret nz                                        ; $4c6e: $c0

    nop                                           ; $4c6f: $00
    cp $00                                        ; $4c70: $fe $00
    nop                                           ; $4c72: $00
    nop                                           ; $4c73: $00
    sbc a                                         ; $4c74: $9f
    nop                                           ; $4c75: $00
    jr nc, jr_074_4c78                            ; $4c76: $30 $00

jr_074_4c78:
    cp $00                                        ; $4c78: $fe $00
    rst $38                                       ; $4c7a: $ff
    nop                                           ; $4c7b: $00
    rst $38                                       ; $4c7c: $ff
    nop                                           ; $4c7d: $00
    rst $38                                       ; $4c7e: $ff
    nop                                           ; $4c7f: $00
    rlca                                          ; $4c80: $07
    nop                                           ; $4c81: $00
    rst $38                                       ; $4c82: $ff
    nop                                           ; $4c83: $00
    sbc c                                         ; $4c84: $99
    nop                                           ; $4c85: $00
    rst $38                                       ; $4c86: $ff
    nop                                           ; $4c87: $00
    rra                                           ; $4c88: $1f
    nop                                           ; $4c89: $00
    db $fc                                        ; $4c8a: $fc
    nop                                           ; $4c8b: $00
    rst $38                                       ; $4c8c: $ff
    nop                                           ; $4c8d: $00
    rst $38                                       ; $4c8e: $ff
    nop                                           ; $4c8f: $00
    jr jr_074_4c92                                ; $4c90: $18 $00

jr_074_4c92:
    ret nz                                        ; $4c92: $c0

    nop                                           ; $4c93: $00
    ld h, [hl]                                    ; $4c94: $66
    nop                                           ; $4c95: $00
    nop                                           ; $4c96: $00
    nop                                           ; $4c97: $00
    ldh [rP1], a                                  ; $4c98: $e0 $00
    rrca                                          ; $4c9a: $0f
    nop                                           ; $4c9b: $00
    nop                                           ; $4c9c: $00
    nop                                           ; $4c9d: $00
    rst $38                                       ; $4c9e: $ff
    nop                                           ; $4c9f: $00
    ld b, $00                                     ; $4ca0: $06 $00
    inc a                                         ; $4ca2: $3c
    nop                                           ; $4ca3: $00
    ld e, $00                                     ; $4ca4: $1e $00
    nop                                           ; $4ca6: $00
    nop                                           ; $4ca7: $00
    ld a, c                                       ; $4ca8: $79
    nop                                           ; $4ca9: $00
    di                                            ; $4caa: $f3
    nop                                           ; $4cab: $00
    nop                                           ; $4cac: $00
    nop                                           ; $4cad: $00
    inc bc                                        ; $4cae: $03
    nop                                           ; $4caf: $00
    rra                                           ; $4cb0: $1f
    nop                                           ; $4cb1: $00
    ret nz                                        ; $4cb2: $c0

    nop                                           ; $4cb3: $00
    rst $38                                       ; $4cb4: $ff
    nop                                           ; $4cb5: $00
    inc bc                                        ; $4cb6: $03
    nop                                           ; $4cb7: $00
    sbc a                                         ; $4cb8: $9f
    nop                                           ; $4cb9: $00
    inc sp                                        ; $4cba: $33
    nop                                           ; $4cbb: $00
    sbc a                                         ; $4cbc: $9f
    nop                                           ; $4cbd: $00
    db $fc                                        ; $4cbe: $fc
    nop                                           ; $4cbf: $00
    ld hl, sp+$00                                 ; $4cc0: $f8 $00
    rrca                                          ; $4cc2: $0f
    nop                                           ; $4cc3: $00
    rst $38                                       ; $4cc4: $ff
    nop                                           ; $4cc5: $00
    di                                            ; $4cc6: $f3
    nop                                           ; $4cc7: $00
    rst $38                                       ; $4cc8: $ff
    nop                                           ; $4cc9: $00
    call z, $ff00                                 ; $4cca: $cc $00 $ff
    nop                                           ; $4ccd: $00
    inc a                                         ; $4cce: $3c
    nop                                           ; $4ccf: $00
    sbc a                                         ; $4cd0: $9f
    ld h, b                                       ; $4cd1: $60
    di                                            ; $4cd2: $f3
    inc c                                         ; $4cd3: $0c
    rra                                           ; $4cd4: $1f
    ldh [rIE], a                                  ; $4cd5: $e0 $ff
    nop                                           ; $4cd7: $00
    ld a, c                                       ; $4cd8: $79
    add [hl]                                      ; $4cd9: $86
    ldh a, [rIF]                                  ; $4cda: $f0 $0f
    sbc b                                         ; $4cdc: $98
    ld h, a                                       ; $4cdd: $67
    inc sp                                        ; $4cde: $33
    call z, Call_000_18e7                         ; $4cdf: $cc $e7 $18
    call z, $fe33                                 ; $4ce2: $cc $33 $fe
    ld bc, $30cf                                  ; $4ce5: $01 $cf $30
    ld hl, sp+$07                                 ; $4ce8: $f8 $07
    rst $38                                       ; $4cea: $ff
    nop                                           ; $4ceb: $00
    ld h, c                                       ; $4cec: $61
    sbc [hl]                                      ; $4ced: $9e
    rst $38                                       ; $4cee: $ff
    nop                                           ; $4cef: $00
    ret nz                                        ; $4cf0: $c0

    ccf                                           ; $4cf1: $3f
    sbc c                                         ; $4cf2: $99
    ld h, [hl]                                    ; $4cf3: $66
    nop                                           ; $4cf4: $00
    rst $38                                       ; $4cf5: $ff
    cp $01                                        ; $4cf6: $fe $01
    nop                                           ; $4cf8: $00
    rst $38                                       ; $4cf9: $ff
    sbc b                                         ; $4cfa: $98
    ld h, a                                       ; $4cfb: $67
    call z, $0033                                 ; $4cfc: $cc $33 $00
    rst $38                                       ; $4cff: $ff
    rrca                                          ; $4d00: $0f
    ldh a, [$e1]                                  ; $4d01: $f0 $e1
    ld e, $f0                                     ; $4d03: $1e $f0
    rrca                                          ; $4d05: $0f
    ld bc, $00fe                                  ; $4d06: $01 $fe $00
    rst $38                                       ; $4d09: $ff
    rlca                                          ; $4d0a: $07
    ld hl, sp-$40                                 ; $4d0b: $f8 $c0
    ccf                                           ; $4d0d: $3f
    ld b, $f9                                     ; $4d0e: $06 $f9
    ret nz                                        ; $4d10: $c0

    rst $38                                       ; $4d11: $ff
    ld e, $ff                                     ; $4d12: $1e $ff
    nop                                           ; $4d14: $00
    rst $38                                       ; $4d15: $ff
    rst $20                                       ; $4d16: $e7
    rst $38                                       ; $4d17: $ff
    nop                                           ; $4d18: $00
    rst $38                                       ; $4d19: $ff
    ld b, $ff                                     ; $4d1a: $06 $ff
    ret nz                                        ; $4d1c: $c0

    rst $38                                       ; $4d1d: $ff
    rlca                                          ; $4d1e: $07
    rst $38                                       ; $4d1f: $ff
    nop                                           ; $4d20: $00
    rst $38                                       ; $4d21: $ff
    ld h, [hl]                                    ; $4d22: $66
    rst $38                                       ; $4d23: $ff
    nop                                           ; $4d24: $00
    rst $38                                       ; $4d25: $ff
    add c                                         ; $4d26: $81
    rst $38                                       ; $4d27: $ff
    ldh a, [rIE]                                  ; $4d28: $f0 $ff
    nop                                           ; $4d2a: $00
    rst $38                                       ; $4d2b: $ff
    rrca                                          ; $4d2c: $0f
    rst $38                                       ; $4d2d: $ff
    add b                                         ; $4d2e: $80
    rst $38                                       ; $4d2f: $ff
    db $fc                                        ; $4d30: $fc
    rst $38                                       ; $4d31: $ff
    ld bc, $3fff                                  ; $4d32: $01 $ff $3f
    rst $38                                       ; $4d35: $ff
    ld h, c                                       ; $4d36: $61
    rst $38                                       ; $4d37: $ff
    db $fc                                        ; $4d38: $fc
    rst $38                                       ; $4d39: $ff
    ld h, a                                       ; $4d3a: $67
    rst $38                                       ; $4d3b: $ff
    inc sp                                        ; $4d3c: $33
    rst $38                                       ; $4d3d: $ff
    rst $20                                       ; $4d3e: $e7
    rst $38                                       ; $4d3f: $ff
    rrca                                          ; $4d40: $0f
    rst $38                                       ; $4d41: $ff
    cp $ff                                        ; $4d42: $fe $ff
    inc sp                                        ; $4d44: $33
    rst $38                                       ; $4d45: $ff
    cp $ff                                        ; $4d46: $fe $ff
    rst $38                                       ; $4d48: $ff
    rst $38                                       ; $4d49: $ff
    and $ff                                       ; $4d4a: $e6 $ff
    rst $38                                       ; $4d4c: $ff
    rst $38                                       ; $4d4d: $ff
    ld sp, hl                                     ; $4d4e: $f9
    rst $38                                       ; $4d4f: $ff
    inc c                                         ; $4d50: $0c
    nop                                           ; $4d51: $00
    add c                                         ; $4d52: $81
    nop                                           ; $4d53: $00
    ldh a, [rP1]                                  ; $4d54: $f0 $00
    nop                                           ; $4d56: $00
    nop                                           ; $4d57: $00
    jp $0700                                      ; $4d58: $c3 $00 $07


    nop                                           ; $4d5b: $00
    inc sp                                        ; $4d5c: $33
    nop                                           ; $4d5d: $00
    ld h, [hl]                                    ; $4d5e: $66
    nop                                           ; $4d5f: $00
    inc c                                         ; $4d60: $0c
    nop                                           ; $4d61: $00
    sbc c                                         ; $4d62: $99
    nop                                           ; $4d63: $00
    inc c                                         ; $4d64: $0c
    nop                                           ; $4d65: $00
    jr jr_074_4d68                                ; $4d66: $18 $00

jr_074_4d68:
    inc bc                                        ; $4d68: $03
    nop                                           ; $4d69: $00
    add b                                         ; $4d6a: $80
    nop                                           ; $4d6b: $00
    rst $08                                       ; $4d6c: $cf
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    inc bc                                        ; $4d70: $03
    nop                                           ; $4d71: $00
    and $00                                       ; $4d72: $e6 $00
    rst $38                                       ; $4d74: $ff
    nop                                           ; $4d75: $00
    ldh [rP1], a                                  ; $4d76: $e0 $00
    rst $38                                       ; $4d78: $ff
    nop                                           ; $4d79: $00
    add a                                         ; $4d7a: $87
    nop                                           ; $4d7b: $00
    db $fc                                        ; $4d7c: $fc
    nop                                           ; $4d7d: $00
    sbc a                                         ; $4d7e: $9f
    nop                                           ; $4d7f: $00
    rst $38                                       ; $4d80: $ff
    nop                                           ; $4d81: $00
    ld h, c                                       ; $4d82: $61
    nop                                           ; $4d83: $00
    ldh a, [rP1]                                  ; $4d84: $f0 $00
    rra                                           ; $4d86: $1f
    nop                                           ; $4d87: $00
    rst $38                                       ; $4d88: $ff
    nop                                           ; $4d89: $00
    rst $38                                       ; $4d8a: $ff
    nop                                           ; $4d8b: $00
    inc a                                         ; $4d8c: $3c
    nop                                           ; $4d8d: $00
    rst $38                                       ; $4d8e: $ff
    nop                                           ; $4d8f: $00
    di                                            ; $4d90: $f3
    inc c                                         ; $4d91: $0c
    ld h, a                                       ; $4d92: $67
    sbc b                                         ; $4d93: $98
    inc a                                         ; $4d94: $3c
    jp $1ee1                                      ; $4d95: $c3 $e1 $1e


    rst $38                                       ; $4d98: $ff
    nop                                           ; $4d99: $00
    rst $38                                       ; $4d9a: $ff
    nop                                           ; $4d9b: $00
    inc bc                                        ; $4d9c: $03
    db $fc                                        ; $4d9d: $fc
    rst $38                                       ; $4d9e: $ff
    nop                                           ; $4d9f: $00
    rst $38                                       ; $4da0: $ff
    nop                                           ; $4da1: $00
    sbc [hl]                                      ; $4da2: $9e
    ld h, c                                       ; $4da3: $61
    rst $38                                       ; $4da4: $ff
    nop                                           ; $4da5: $00
    add a                                         ; $4da6: $87
    ld a, b                                       ; $4da7: $78
    ldh a, [rIF]                                  ; $4da8: $f0 $0f
    sbc a                                         ; $4daa: $9f
    ld h, b                                       ; $4dab: $60
    rst $38                                       ; $4dac: $ff
    nop                                           ; $4dad: $00
    add a                                         ; $4dae: $87
    ld a, b                                       ; $4daf: $78
    nop                                           ; $4db0: $00
    rst $38                                       ; $4db1: $ff
    rra                                           ; $4db2: $1f
    ldh [$cc], a                                  ; $4db3: $e0 $cc
    inc sp                                        ; $4db5: $33
    add hl, de                                    ; $4db6: $19
    and $0c                                       ; $4db7: $e6 $0c
    di                                            ; $4db9: $f3
    ldh [$1f], a                                  ; $4dba: $e0 $1f
    inc c                                         ; $4dbc: $0c
    di                                            ; $4dbd: $f3
    ld h, b                                       ; $4dbe: $60
    sbc a                                         ; $4dbf: $9f
    ccf                                           ; $4dc0: $3f
    ret nz                                        ; $4dc1: $c0

    ldh [$1f], a                                  ; $4dc2: $e0 $1f
    inc c                                         ; $4dc4: $0c
    di                                            ; $4dc5: $f3
    ldh [$1f], a                                  ; $4dc6: $e0 $1f
    nop                                           ; $4dc8: $00
    rst $38                                       ; $4dc9: $ff
    ld bc, $00fe                                  ; $4dca: $01 $fe $00
    rst $38                                       ; $4dcd: $ff
    nop                                           ; $4dce: $00
    rst $38                                       ; $4dcf: $ff
    inc c                                         ; $4dd0: $0c
    rst $38                                       ; $4dd1: $ff
    ld h, c                                       ; $4dd2: $61
    rst $38                                       ; $4dd3: $ff
    rrca                                          ; $4dd4: $0f
    rst $38                                       ; $4dd5: $ff
    nop                                           ; $4dd6: $00
    rst $38                                       ; $4dd7: $ff
    ldh a, [rIE]                                  ; $4dd8: $f0 $ff
    ld bc, $ffff                                  ; $4dda: $01 $ff $ff
    rst $38                                       ; $4ddd: $ff
    nop                                           ; $4dde: $00
    rst $38                                       ; $4ddf: $ff
    jr nc, @+$01                                  ; $4de0: $30 $ff

    add b                                         ; $4de2: $80
    rst $38                                       ; $4de3: $ff
    ldh a, [rIE]                                  ; $4de4: $f0 $ff
    nop                                           ; $4de6: $00
    rst $38                                       ; $4de7: $ff
    call z, $98ff                                 ; $4de8: $cc $ff $98
    rst $38                                       ; $4deb: $ff
    ldh a, [rIE]                                  ; $4dec: $f0 $ff
    nop                                           ; $4dee: $00
    rst $38                                       ; $4def: $ff
    ld bc, $f3ff                                  ; $4df0: $01 $ff $f3
    rst $38                                       ; $4df3: $ff
    add c                                         ; $4df4: $81
    rst $38                                       ; $4df5: $ff
    db $fc                                        ; $4df6: $fc
    rst $38                                       ; $4df7: $ff
    rlca                                          ; $4df8: $07
    rst $38                                       ; $4df9: $ff
    rst $38                                       ; $4dfa: $ff
    rst $38                                       ; $4dfb: $ff
    ld b, $ff                                     ; $4dfc: $06 $ff
    rst $08                                       ; $4dfe: $cf
    rst $38                                       ; $4dff: $ff
    and $ff                                       ; $4e00: $e6 $ff
    db $fc                                        ; $4e02: $fc
    rst $38                                       ; $4e03: $ff
    sbc a                                         ; $4e04: $9f
    rst $38                                       ; $4e05: $ff
    ccf                                           ; $4e06: $3f
    rst $38                                       ; $4e07: $ff
    ld hl, sp-$01                                 ; $4e08: $f8 $ff
    di                                            ; $4e0a: $f3
    rst $38                                       ; $4e0b: $ff
    ld a, [hl]                                    ; $4e0c: $7e
    rst $38                                       ; $4e0d: $ff
    db $fc                                        ; $4e0e: $fc
    rst $38                                       ; $4e0f: $ff
    jr jr_074_4e12                                ; $4e10: $18 $00

jr_074_4e12:
    inc sp                                        ; $4e12: $33
    nop                                           ; $4e13: $00
    nop                                           ; $4e14: $00
    nop                                           ; $4e15: $00
    rst $08                                       ; $4e16: $cf
    nop                                           ; $4e17: $00
    ld bc, $0c00                                  ; $4e18: $01 $00 $0c
    nop                                           ; $4e1b: $00
    add b                                         ; $4e1c: $80
    nop                                           ; $4e1d: $00
    rrca                                          ; $4e1e: $0f
    nop                                           ; $4e1f: $00
    ld h, b                                       ; $4e20: $60
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    nop                                           ; $4e23: $00
    jr jr_074_4e26                                ; $4e24: $18 $00

jr_074_4e26:
    inc bc                                        ; $4e26: $03
    nop                                           ; $4e27: $00
    ldh [rP1], a                                  ; $4e28: $e0 $00
    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    rra                                           ; $4e2c: $1f
    nop                                           ; $4e2d: $00
    nop                                           ; $4e2e: $00
    nop                                           ; $4e2f: $00
    ld hl, sp+$00                                 ; $4e30: $f8 $00
    inc bc                                        ; $4e32: $03
    nop                                           ; $4e33: $00
    ld a, [hl]                                    ; $4e34: $7e
    nop                                           ; $4e35: $00
    jp $f800                                      ; $4e36: $c3 $00 $f8


    nop                                           ; $4e39: $00
    rst $38                                       ; $4e3a: $ff
    nop                                           ; $4e3b: $00

jr_074_4e3c:
    rst $38                                       ; $4e3c: $ff
    nop                                           ; $4e3d: $00
    rst $38                                       ; $4e3e: $ff
    nop                                           ; $4e3f: $00
    rra                                           ; $4e40: $1f
    nop                                           ; $4e41: $00
    db $fc                                        ; $4e42: $fc
    nop                                           ; $4e43: $00
    ld h, [hl]                                    ; $4e44: $66
    nop                                           ; $4e45: $00
    db $fc                                        ; $4e46: $fc
    nop                                           ; $4e47: $00
    ld a, a                                       ; $4e48: $7f
    nop                                           ; $4e49: $00
    di                                            ; $4e4a: $f3
    nop                                           ; $4e4b: $00
    rst $38                                       ; $4e4c: $ff
    nop                                           ; $4e4d: $00
    rst $38                                       ; $4e4e: $ff
    nop                                           ; $4e4f: $00
    jr nc, jr_074_4e52                            ; $4e50: $30 $00

jr_074_4e52:
    add b                                         ; $4e52: $80
    nop                                           ; $4e53: $00
    call z, RST_00                                ; $4e54: $cc $00 $00
    nop                                           ; $4e57: $00
    ret nz                                        ; $4e58: $c0

    nop                                           ; $4e59: $00
    rra                                           ; $4e5a: $1f
    nop                                           ; $4e5b: $00
    nop                                           ; $4e5c: $00
    nop                                           ; $4e5d: $00
    cp $00                                        ; $4e5e: $fe $00
    inc c                                         ; $4e60: $0c
    nop                                           ; $4e61: $00
    ld a, c                                       ; $4e62: $79
    nop                                           ; $4e63: $00
    inc a                                         ; $4e64: $3c
    nop                                           ; $4e65: $00
    nop                                           ; $4e66: $00
    nop                                           ; $4e67: $00
    di                                            ; $4e68: $f3
    nop                                           ; $4e69: $00
    and $00                                       ; $4e6a: $e6 $00
    nop                                           ; $4e6c: $00
    nop                                           ; $4e6d: $00
    rlca                                          ; $4e6e: $07
    nop                                           ; $4e6f: $00
    ccf                                           ; $4e70: $3f
    nop                                           ; $4e71: $00
    add b                                         ; $4e72: $80
    nop                                           ; $4e73: $00
    rst $38                                       ; $4e74: $ff
    nop                                           ; $4e75: $00
    rlca                                          ; $4e76: $07
    nop                                           ; $4e77: $00
    ccf                                           ; $4e78: $3f
    nop                                           ; $4e79: $00
    ld h, a                                       ; $4e7a: $67
    nop                                           ; $4e7b: $00
    ccf                                           ; $4e7c: $3f
    nop                                           ; $4e7d: $00
    ld hl, sp+$00                                 ; $4e7e: $f8 $00
    ldh a, [rP1]                                  ; $4e80: $f0 $00
    rra                                           ; $4e82: $1f
    nop                                           ; $4e83: $00
    rst $38                                       ; $4e84: $ff
    nop                                           ; $4e85: $00
    and $00                                       ; $4e86: $e6 $00
    rst $38                                       ; $4e88: $ff
    nop                                           ; $4e89: $00
    sbc b                                         ; $4e8a: $98

jr_074_4e8b:
    nop                                           ; $4e8b: $00
    rst $38                                       ; $4e8c: $ff
    nop                                           ; $4e8d: $00
    ld a, c                                       ; $4e8e: $79
    nop                                           ; $4e8f: $00
    ccf                                           ; $4e90: $3f
    ret nz                                        ; $4e91: $c0

    rst $20                                       ; $4e92: $e7
    jr jr_074_4ed4                                ; $4e93: $18 $3f

    ret nz                                        ; $4e95: $c0

    rst $38                                       ; $4e96: $ff
    nop                                           ; $4e97: $00
    di                                            ; $4e98: $f3
    inc c                                         ; $4e99: $0c
    pop hl                                        ; $4e9a: $e1
    ld e, $30                                     ; $4e9b: $1e $30
    rst $08                                       ; $4e9d: $cf
    ld h, a                                       ; $4e9e: $67
    sbc b                                         ; $4e9f: $98
    rst $08                                       ; $4ea0: $cf
    jr nc, jr_074_4e3c                            ; $4ea1: $30 $99

    ld h, [hl]                                    ; $4ea3: $66
    db $fc                                        ; $4ea4: $fc
    inc bc                                        ; $4ea5: $03
    sbc a                                         ; $4ea6: $9f
    ld h, b                                       ; $4ea7: $60
    ldh a, [rIF]                                  ; $4ea8: $f0 $0f
    rst $38                                       ; $4eaa: $ff
    nop                                           ; $4eab: $00
    jp $fe3c                                      ; $4eac: $c3 $3c $fe


    ld bc, $7f80                                  ; $4eaf: $01 $80 $7f
    inc sp                                        ; $4eb2: $33
    call z, $fe01                                 ; $4eb3: $cc $01 $fe
    db $fc                                        ; $4eb6: $fc
    inc bc                                        ; $4eb7: $03
    nop                                           ; $4eb8: $00
    rst $38                                       ; $4eb9: $ff
    jr nc, jr_074_4e8b                            ; $4eba: $30 $cf

    sbc c                                         ; $4ebc: $99
    ld h, [hl]                                    ; $4ebd: $66
    nop                                           ; $4ebe: $00
    rst $38                                       ; $4ebf: $ff
    rra                                           ; $4ec0: $1f
    ldh [$c3], a                                  ; $4ec1: $e0 $c3
    inc a                                         ; $4ec3: $3c
    ldh [$1f], a                                  ; $4ec4: $e0 $1f
    inc bc                                        ; $4ec6: $03
    db $fc                                        ; $4ec7: $fc
    nop                                           ; $4ec8: $00
    rst $38                                       ; $4ec9: $ff
    rrca                                          ; $4eca: $0f
    ldh a, [$81]                                  ; $4ecb: $f0 $81
    ld a, [hl]                                    ; $4ecd: $7e
    inc c                                         ; $4ece: $0c
    di                                            ; $4ecf: $f3
    add b                                         ; $4ed0: $80
    rst $38                                       ; $4ed1: $ff
    inc a                                         ; $4ed2: $3c
    rst $38                                       ; $4ed3: $ff

jr_074_4ed4:
    nop                                           ; $4ed4: $00
    rst $38                                       ; $4ed5: $ff
    rst $08                                       ; $4ed6: $cf
    rst $38                                       ; $4ed7: $ff
    ld bc, $0cff                                  ; $4ed8: $01 $ff $0c
    rst $38                                       ; $4edb: $ff
    add b                                         ; $4edc: $80
    rst $38                                       ; $4edd: $ff
    rrca                                          ; $4ede: $0f
    rst $38                                       ; $4edf: $ff
    ld bc, $ccff                                  ; $4ee0: $01 $ff $cc
    rst $38                                       ; $4ee3: $ff
    nop                                           ; $4ee4: $00
    rst $38                                       ; $4ee5: $ff
    inc bc                                        ; $4ee6: $03
    rst $38                                       ; $4ee7: $ff
    ldh [rIE], a                                  ; $4ee8: $e0 $ff
    nop                                           ; $4eea: $00
    rst $38                                       ; $4eeb: $ff
    rra                                           ; $4eec: $1f
    rst $38                                       ; $4eed: $ff
    nop                                           ; $4eee: $00
    rst $38                                       ; $4eef: $ff
    ld hl, sp-$01                                 ; $4ef0: $f8 $ff
    inc bc                                        ; $4ef2: $03
    rst $38                                       ; $4ef3: $ff
    ld a, [hl]                                    ; $4ef4: $7e
    rst $38                                       ; $4ef5: $ff
    jp $f9ff                                      ; $4ef6: $c3 $ff $f9


    rst $38                                       ; $4ef9: $ff
    rst $08                                       ; $4efa: $cf
    rst $38                                       ; $4efb: $ff
    ld h, a                                       ; $4efc: $67
    rst $38                                       ; $4efd: $ff
    rst $08                                       ; $4efe: $cf
    rst $38                                       ; $4eff: $ff
    rra                                           ; $4f00: $1f
    rst $38                                       ; $4f01: $ff
    db $fc                                        ; $4f02: $fc
    rst $38                                       ; $4f03: $ff
    ld h, [hl]                                    ; $4f04: $66
    rst $38                                       ; $4f05: $ff
    db $fc                                        ; $4f06: $fc
    rst $38                                       ; $4f07: $ff
    rst $38                                       ; $4f08: $ff
    rst $38                                       ; $4f09: $ff
    call z, $feff                                 ; $4f0a: $cc $ff $fe
    rst $38                                       ; $4f0d: $ff
    di                                            ; $4f0e: $f3
    rst $38                                       ; $4f0f: $ff
    jr jr_074_4f12                                ; $4f10: $18 $00

jr_074_4f12:
    inc bc                                        ; $4f12: $03
    nop                                           ; $4f13: $00
    ldh [rP1], a                                  ; $4f14: $e0 $00
    nop                                           ; $4f16: $00
    nop                                           ; $4f17: $00
    add [hl]                                      ; $4f18: $86
    nop                                           ; $4f19: $00
    rrca                                          ; $4f1a: $0f
    nop                                           ; $4f1b: $00
    ld h, a                                       ; $4f1c: $67
    nop                                           ; $4f1d: $00
    call z, $1800                                 ; $4f1e: $cc $00 $18
    nop                                           ; $4f21: $00

jr_074_4f22:
    inc sp                                        ; $4f22: $33
    nop                                           ; $4f23: $00
    add hl, de                                    ; $4f24: $19
    nop                                           ; $4f25: $00
    jr nc, jr_074_4f28                            ; $4f26: $30 $00

jr_074_4f28:
    rlca                                          ; $4f28: $07
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    sbc [hl]                                      ; $4f2c: $9e
    nop                                           ; $4f2d: $00
    nop                                           ; $4f2e: $00
    nop                                           ; $4f2f: $00
    rlca                                          ; $4f30: $07
    nop                                           ; $4f31: $00
    call z, $ff00                                 ; $4f32: $cc $00 $ff
    nop                                           ; $4f35: $00
    ret nz                                        ; $4f36: $c0

    nop                                           ; $4f37: $00
    rst $38                                       ; $4f38: $ff
    nop                                           ; $4f39: $00
    rrca                                          ; $4f3a: $0f
    nop                                           ; $4f3b: $00
    ld hl, sp+$00                                 ; $4f3c: $f8 $00
    ccf                                           ; $4f3e: $3f
    nop                                           ; $4f3f: $00
    cp $00                                        ; $4f40: $fe $00
    jp $e100                                      ; $4f42: $c3 $00 $e1


    nop                                           ; $4f45: $00
    ccf                                           ; $4f46: $3f
    nop                                           ; $4f47: $00
    rst $38                                       ; $4f48: $ff
    nop                                           ; $4f49: $00
    rst $38                                       ; $4f4a: $ff
    nop                                           ; $4f4b: $00
    ld a, c                                       ; $4f4c: $79
    nop                                           ; $4f4d: $00
    rst $38                                       ; $4f4e: $ff
    nop                                           ; $4f4f: $00
    rst $20                                       ; $4f50: $e7
    jr jr_074_4f22                                ; $4f51: $18 $cf

    jr nc, jr_074_4fce                            ; $4f53: $30 $79

    add [hl]                                      ; $4f55: $86
    jp $ff3c                                      ; $4f56: $c3 $3c $ff


    nop                                           ; $4f59: $00
    rst $38                                       ; $4f5a: $ff
    nop                                           ; $4f5b: $00
    rlca                                          ; $4f5c: $07
    ld hl, sp-$01                                 ; $4f5d: $f8 $ff
    nop                                           ; $4f5f: $00
    rst $38                                       ; $4f60: $ff
    nop                                           ; $4f61: $00
    inc a                                         ; $4f62: $3c
    jp $01fe                                      ; $4f63: $c3 $fe $01


    rrca                                          ; $4f66: $0f
    ldh a, [$e1]                                  ; $4f67: $f0 $e1
    ld e, $3f                                     ; $4f69: $1e $3f
    ret nz                                        ; $4f6b: $c0

    cp $01                                        ; $4f6c: $fe $01
    rrca                                          ; $4f6e: $0f
    ldh a, [rP1]                                  ; $4f6f: $f0 $00
    rst $38                                       ; $4f71: $ff
    ccf                                           ; $4f72: $3f
    ret nz                                        ; $4f73: $c0

    sbc b                                         ; $4f74: $98
    ld h, a                                       ; $4f75: $67
    inc sp                                        ; $4f76: $33
    call z, $e718                                 ; $4f77: $cc $18 $e7
    ret nz                                        ; $4f7a: $c0

    ccf                                           ; $4f7b: $3f
    jr @-$17                                      ; $4f7c: $18 $e7

    ret nz                                        ; $4f7e: $c0

    ccf                                           ; $4f7f: $3f
    ld a, [hl]                                    ; $4f80: $7e
    add c                                         ; $4f81: $81
    ret nz                                        ; $4f82: $c0

    ccf                                           ; $4f83: $3f
    add hl, de                                    ; $4f84: $19
    and $c0                                       ; $4f85: $e6 $c0
    ccf                                           ; $4f87: $3f
    nop                                           ; $4f88: $00
    rst $38                                       ; $4f89: $ff
    inc bc                                        ; $4f8a: $03
    db $fc                                        ; $4f8b: $fc
    nop                                           ; $4f8c: $00
    rst $38                                       ; $4f8d: $ff
    nop                                           ; $4f8e: $00
    rst $38                                       ; $4f8f: $ff
    jr @+$01                                      ; $4f90: $18 $ff

    jp $1fff                                      ; $4f92: $c3 $ff $1f


    rst $38                                       ; $4f95: $ff
    nop                                           ; $4f96: $00
    rst $38                                       ; $4f97: $ff
    pop hl                                        ; $4f98: $e1
    rst $38                                       ; $4f99: $ff
    inc bc                                        ; $4f9a: $03
    rst $38                                       ; $4f9b: $ff
    rst $38                                       ; $4f9c: $ff
    rst $38                                       ; $4f9d: $ff
    nop                                           ; $4f9e: $00
    rst $38                                       ; $4f9f: $ff
    ld h, b                                       ; $4fa0: $60
    rst $38                                       ; $4fa1: $ff
    nop                                           ; $4fa2: $00
    rst $38                                       ; $4fa3: $ff
    ldh [rIE], a                                  ; $4fa4: $e0 $ff
    nop                                           ; $4fa6: $00
    rst $38                                       ; $4fa7: $ff
    sbc c                                         ; $4fa8: $99
    rst $38                                       ; $4fa9: $ff
    jr nc, @+$01                                  ; $4faa: $30 $ff

    pop hl                                        ; $4fac: $e1
    rst $38                                       ; $4fad: $ff
    nop                                           ; $4fae: $00
    rst $38                                       ; $4faf: $ff
    inc bc                                        ; $4fb0: $03
    rst $38                                       ; $4fb1: $ff
    rst $20                                       ; $4fb2: $e7
    rst $38                                       ; $4fb3: $ff
    inc bc                                        ; $4fb4: $03
    rst $38                                       ; $4fb5: $ff
    ld hl, sp-$01                                 ; $4fb6: $f8 $ff
    rrca                                          ; $4fb8: $0f
    rst $38                                       ; $4fb9: $ff
    rst $38                                       ; $4fba: $ff
    rst $38                                       ; $4fbb: $ff
    inc c                                         ; $4fbc: $0c
    rst $38                                       ; $4fbd: $ff
    sbc a                                         ; $4fbe: $9f
    rst $38                                       ; $4fbf: $ff
    call z, $f9ff                                 ; $4fc0: $cc $ff $f9
    rst $38                                       ; $4fc3: $ff
    ccf                                           ; $4fc4: $3f
    rst $38                                       ; $4fc5: $ff
    ld a, a                                       ; $4fc6: $7f
    rst $38                                       ; $4fc7: $ff
    ldh a, [rIE]                                  ; $4fc8: $f0 $ff
    rst $20                                       ; $4fca: $e7
    rst $38                                       ; $4fcb: $ff
    db $fc                                        ; $4fcc: $fc
    rst $38                                       ; $4fcd: $ff

jr_074_4fce:
    ld sp, hl                                     ; $4fce: $f9
    rst $38                                       ; $4fcf: $ff
    jr nc, jr_074_4fd2                            ; $4fd0: $30 $00

jr_074_4fd2:
    ld h, [hl]                                    ; $4fd2: $66
    nop                                           ; $4fd3: $00
    nop                                           ; $4fd4: $00
    nop                                           ; $4fd5: $00
    sbc [hl]                                      ; $4fd6: $9e
    nop                                           ; $4fd7: $00
    inc bc                                        ; $4fd8: $03
    nop                                           ; $4fd9: $00
    jr jr_074_4fdc                                ; $4fda: $18 $00

jr_074_4fdc:
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    ld e, $00                                     ; $4fde: $1e $00
    ret nz                                        ; $4fe0: $c0

    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    nop                                           ; $4fe3: $00
    jr nc, jr_074_4fe6                            ; $4fe4: $30 $00

jr_074_4fe6:
    rlca                                          ; $4fe6: $07
    nop                                           ; $4fe7: $00
    ret nz                                        ; $4fe8: $c0

    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00
    nop                                           ; $4feb: $00
    ccf                                           ; $4fec: $3f
    nop                                           ; $4fed: $00
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    ldh a, [rP1]                                  ; $4ff0: $f0 $00
    rlca                                          ; $4ff2: $07
    nop                                           ; $4ff3: $00
    db $fc                                        ; $4ff4: $fc
    nop                                           ; $4ff5: $00
    add a                                         ; $4ff6: $87
    nop                                           ; $4ff7: $00
    ldh a, [rP1]                                  ; $4ff8: $f0 $00
    rst $38                                       ; $4ffa: $ff
    nop                                           ; $4ffb: $00
    rst $38                                       ; $4ffc: $ff
    nop                                           ; $4ffd: $00
    rst $38                                       ; $4ffe: $ff
    nop                                           ; $4fff: $00
    ccf                                           ; $5000: $3f
    nop                                           ; $5001: $00
    ld hl, sp+$00                                 ; $5002: $f8 $00
    call z, $f900                                 ; $5004: $cc $00 $f9
    nop                                           ; $5007: $00
    rst $38                                       ; $5008: $ff
    nop                                           ; $5009: $00
    rst $20                                       ; $500a: $e7
    nop                                           ; $500b: $00
    rst $38                                       ; $500c: $ff
    nop                                           ; $500d: $00
    rst $38                                       ; $500e: $ff
    nop                                           ; $500f: $00
    ld h, b                                       ; $5010: $60
    nop                                           ; $5011: $00
    ld bc, $9800                                  ; $5012: $01 $00 $98
    nop                                           ; $5015: $00
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    add e                                         ; $5018: $83
    nop                                           ; $5019: $00
    ccf                                           ; $501a: $3f
    nop                                           ; $501b: $00
    nop                                           ; $501c: $00
    nop                                           ; $501d: $00
    ld hl, sp+$00                                 ; $501e: $f8 $00
    jr nc, jr_074_5022                            ; $5020: $30 $00

jr_074_5022:
    and $00                                       ; $5022: $e6 $00
    di                                            ; $5024: $f3
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00
    nop                                           ; $5027: $00
    rst $08                                       ; $5028: $cf
    nop                                           ; $5029: $00
    sbc b                                         ; $502a: $98
    nop                                           ; $502b: $00
    nop                                           ; $502c: $00
    nop                                           ; $502d: $00
    rra                                           ; $502e: $1f
    nop                                           ; $502f: $00
    ld a, a                                       ; $5030: $7f
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    rst $38                                       ; $5034: $ff
    nop                                           ; $5035: $00
    rrca                                          ; $5036: $0f
    nop                                           ; $5037: $00
    ld a, a                                       ; $5038: $7f
    nop                                           ; $5039: $00
    adc $00                                       ; $503a: $ce $00
    ld a, a                                       ; $503c: $7f
    nop                                           ; $503d: $00
    pop af                                        ; $503e: $f1
    nop                                           ; $503f: $00
    ret nz                                        ; $5040: $c0

    nop                                           ; $5041: $00
    ld a, [hl]                                    ; $5042: $7e
    nop                                           ; $5043: $00
    rst $38                                       ; $5044: $ff
    nop                                           ; $5045: $00
    sbc b                                         ; $5046: $98
    nop                                           ; $5047: $00
    db $fc                                        ; $5048: $fc
    nop                                           ; $5049: $00
    ld h, c                                       ; $504a: $61
    nop                                           ; $504b: $00
    db $fc                                        ; $504c: $fc
    nop                                           ; $504d: $00
    rst $20                                       ; $504e: $e7
    nop                                           ; $504f: $00
    ld a, a                                       ; $5050: $7f
    add b                                         ; $5051: $80
    adc $31                                       ; $5052: $ce $31
    ld a, a                                       ; $5054: $7f
    add b                                         ; $5055: $80
    cp $01                                        ; $5056: $fe $01
    rst $20                                       ; $5058: $e7
    jr jr_074_5022                                ; $5059: $18 $c7

    jr c, jr_074_50c0                             ; $505b: $38 $63

    sbc h                                         ; $505d: $9c
    rst $08                                       ; $505e: $cf
    jr nc, jr_074_509d                            ; $505f: $30 $3c

    jp $9867                                      ; $5061: $c3 $67 $98


    ldh a, [rIF]                                  ; $5064: $f0 $0f
    ld a, a                                       ; $5066: $7f
    add b                                         ; $5067: $80
    jp $ff3c                                      ; $5068: $c3 $3c $ff


    nop                                           ; $506b: $00
    inc c                                         ; $506c: $0c
    di                                            ; $506d: $f3
    ld sp, hl                                     ; $506e: $f9
    ld b, $00                                     ; $506f: $06 $00
    rst $38                                       ; $5071: $ff
    ld h, a                                       ; $5072: $67
    sbc b                                         ; $5073: $98
    inc bc                                        ; $5074: $03
    db $fc                                        ; $5075: $fc
    ld hl, sp+$07                                 ; $5076: $f8 $07
    nop                                           ; $5078: $00
    rst $38                                       ; $5079: $ff
    ld h, b                                       ; $507a: $60
    sbc a                                         ; $507b: $9f
    inc sp                                        ; $507c: $33
    call z, $ff00                                 ; $507d: $cc $00 $ff
    ccf                                           ; $5080: $3f
    ret nz                                        ; $5081: $c0

    add [hl]                                      ; $5082: $86
    ld a, c                                       ; $5083: $79
    ret nz                                        ; $5084: $c0

    ccf                                           ; $5085: $3f
    rlca                                          ; $5086: $07
    ld hl, sp+$00                                 ; $5087: $f8 $00
    rst $38                                       ; $5089: $ff
    ld e, $e1                                     ; $508a: $1e $e1
    inc bc                                        ; $508c: $03
    db $fc                                        ; $508d: $fc
    jr @-$17                                      ; $508e: $18 $e7

    nop                                           ; $5090: $00
    rst $38                                       ; $5091: $ff
    ld a, c                                       ; $5092: $79
    rst $38                                       ; $5093: $ff
    nop                                           ; $5094: $00
    rst $38                                       ; $5095: $ff
    sbc [hl]                                      ; $5096: $9e
    rst $38                                       ; $5097: $ff
    inc bc                                        ; $5098: $03
    rst $38                                       ; $5099: $ff
    jr @+$01                                      ; $509a: $18 $ff

    nop                                           ; $509c: $00

jr_074_509d:
    rst $38                                       ; $509d: $ff
    ld e, $ff                                     ; $509e: $1e $ff
    inc bc                                        ; $50a0: $03
    rst $38                                       ; $50a1: $ff
    sbc b                                         ; $50a2: $98
    rst $38                                       ; $50a3: $ff
    nop                                           ; $50a4: $00
    rst $38                                       ; $50a5: $ff
    rlca                                          ; $50a6: $07
    rst $38                                       ; $50a7: $ff
    ret nz                                        ; $50a8: $c0

    rst $38                                       ; $50a9: $ff
    nop                                           ; $50aa: $00
    rst $38                                       ; $50ab: $ff
    ccf                                           ; $50ac: $3f
    rst $38                                       ; $50ad: $ff
    nop                                           ; $50ae: $00
    rst $38                                       ; $50af: $ff
    ldh a, [rIE]                                  ; $50b0: $f0 $ff
    rlca                                          ; $50b2: $07
    rst $38                                       ; $50b3: $ff
    db $fc                                        ; $50b4: $fc
    rst $38                                       ; $50b5: $ff
    add a                                         ; $50b6: $87
    rst $38                                       ; $50b7: $ff
    di                                            ; $50b8: $f3
    rst $38                                       ; $50b9: $ff
    sbc a                                         ; $50ba: $9f
    rst $38                                       ; $50bb: $ff
    rst $08                                       ; $50bc: $cf
    rst $38                                       ; $50bd: $ff
    sbc a                                         ; $50be: $9f
    rst $38                                       ; $50bf: $ff

jr_074_50c0:
    ccf                                           ; $50c0: $3f
    rst $38                                       ; $50c1: $ff
    ld hl, sp-$01                                 ; $50c2: $f8 $ff
    call z, $f9ff                                 ; $50c4: $cc $ff $f9
    rst $38                                       ; $50c7: $ff
    rst $38                                       ; $50c8: $ff
    rst $38                                       ; $50c9: $ff
    sbc c                                         ; $50ca: $99
    rst $38                                       ; $50cb: $ff
    db $fc                                        ; $50cc: $fc
    rst $38                                       ; $50cd: $ff
    rst $20                                       ; $50ce: $e7
    rst $38                                       ; $50cf: $ff
    jr nc, jr_074_50d2                            ; $50d0: $30 $00

jr_074_50d2:
    ld b, $00                                     ; $50d2: $06 $00
    ret nz                                        ; $50d4: $c0

    nop                                           ; $50d5: $00
    nop                                           ; $50d6: $00
    nop                                           ; $50d7: $00
    inc c                                         ; $50d8: $0c
    nop                                           ; $50d9: $00
    ld e, $00                                     ; $50da: $1e $00
    rst $08                                       ; $50dc: $cf
    nop                                           ; $50dd: $00
    sbc b                                         ; $50de: $98
    nop                                           ; $50df: $00
    jr nc, jr_074_50e2                            ; $50e0: $30 $00

jr_074_50e2:
    ld h, [hl]                                    ; $50e2: $66
    nop                                           ; $50e3: $00
    inc sp                                        ; $50e4: $33
    nop                                           ; $50e5: $00
    ld h, b                                       ; $50e6: $60
    nop                                           ; $50e7: $00
    rrca                                          ; $50e8: $0f
    nop                                           ; $50e9: $00
    nop                                           ; $50ea: $00
    nop                                           ; $50eb: $00
    inc a                                         ; $50ec: $3c
    nop                                           ; $50ed: $00
    ld bc, $0700                                  ; $50ee: $01 $00 $07
    nop                                           ; $50f1: $00
    call z, $ff00                                 ; $50f2: $cc $00 $ff
    nop                                           ; $50f5: $00
    ret nz                                        ; $50f6: $c0

    nop                                           ; $50f7: $00
    rst $38                                       ; $50f8: $ff
    nop                                           ; $50f9: $00
    rrca                                          ; $50fa: $0f
    nop                                           ; $50fb: $00
    ld hl, sp+$00                                 ; $50fc: $f8 $00
    ccf                                           ; $50fe: $3f
    nop                                           ; $50ff: $00
    cp $00                                        ; $5100: $fe $00
    jp $e100                                      ; $5102: $c3 $00 $e1


    nop                                           ; $5105: $00
    ccf                                           ; $5106: $3f
    nop                                           ; $5107: $00
    rst $38                                       ; $5108: $ff
    nop                                           ; $5109: $00
    rst $38                                       ; $510a: $ff
    nop                                           ; $510b: $00
    ld a, c                                       ; $510c: $79
    nop                                           ; $510d: $00
    rst $38                                       ; $510e: $ff
    nop                                           ; $510f: $00
    rst $20                                       ; $5110: $e7
    jr jr_074_50e2                                ; $5111: $18 $cf

    jr nc, jr_074_518e                            ; $5113: $30 $79

    add [hl]                                      ; $5115: $86
    jp $ff3c                                      ; $5116: $c3 $3c $ff


    nop                                           ; $5119: $00
    rst $38                                       ; $511a: $ff
    nop                                           ; $511b: $00
    rlca                                          ; $511c: $07
    ld hl, sp-$01                                 ; $511d: $f8 $ff
    nop                                           ; $511f: $00
    rst $38                                       ; $5120: $ff
    nop                                           ; $5121: $00
    inc a                                         ; $5122: $3c
    jp $01fe                                      ; $5123: $c3 $fe $01


    rrca                                          ; $5126: $0f
    ldh a, [$e1]                                  ; $5127: $f0 $e1
    ld e, $3f                                     ; $5129: $1e $3f
    ret nz                                        ; $512b: $c0

    cp $01                                        ; $512c: $fe $01
    rrca                                          ; $512e: $0f
    ldh a, [rP1]                                  ; $512f: $f0 $00
    rst $38                                       ; $5131: $ff
    ccf                                           ; $5132: $3f
    ret nz                                        ; $5133: $c0

    sbc b                                         ; $5134: $98
    ld h, a                                       ; $5135: $67
    inc sp                                        ; $5136: $33
    call z, $e718                                 ; $5137: $cc $18 $e7
    ret nz                                        ; $513a: $c0

    ccf                                           ; $513b: $3f
    jr @-$17                                      ; $513c: $18 $e7

    ret nz                                        ; $513e: $c0

    ccf                                           ; $513f: $3f
    ld a, [hl]                                    ; $5140: $7e
    add c                                         ; $5141: $81
    ret nz                                        ; $5142: $c0

    ccf                                           ; $5143: $3f
    add hl, de                                    ; $5144: $19
    and $c0                                       ; $5145: $e6 $c0
    ccf                                           ; $5147: $3f
    nop                                           ; $5148: $00
    rst $38                                       ; $5149: $ff
    inc bc                                        ; $514a: $03
    db $fc                                        ; $514b: $fc
    nop                                           ; $514c: $00
    rst $38                                       ; $514d: $ff
    nop                                           ; $514e: $00
    rst $38                                       ; $514f: $ff
    jr @+$01                                      ; $5150: $18 $ff

    jp $1fff                                      ; $5152: $c3 $ff $1f


    rst $38                                       ; $5155: $ff
    nop                                           ; $5156: $00
    rst $38                                       ; $5157: $ff
    pop hl                                        ; $5158: $e1
    rst $38                                       ; $5159: $ff
    inc bc                                        ; $515a: $03
    rst $38                                       ; $515b: $ff
    rst $38                                       ; $515c: $ff
    rst $38                                       ; $515d: $ff
    nop                                           ; $515e: $00
    rst $38                                       ; $515f: $ff
    ld h, b                                       ; $5160: $60
    rst $38                                       ; $5161: $ff
    nop                                           ; $5162: $00
    rst $38                                       ; $5163: $ff
    ldh [rIE], a                                  ; $5164: $e0 $ff
    nop                                           ; $5166: $00
    rst $38                                       ; $5167: $ff
    sbc c                                         ; $5168: $99
    rst $38                                       ; $5169: $ff
    jr nc, @+$01                                  ; $516a: $30 $ff

    pop hl                                        ; $516c: $e1
    rst $38                                       ; $516d: $ff
    nop                                           ; $516e: $00
    rst $38                                       ; $516f: $ff
    rlca                                          ; $5170: $07
    rst $38                                       ; $5171: $ff
    rst $08                                       ; $5172: $cf
    rst $38                                       ; $5173: $ff
    ld b, $ff                                     ; $5174: $06 $ff
    ldh a, [rIE]                                  ; $5176: $f0 $ff
    rra                                           ; $5178: $1f
    rst $38                                       ; $5179: $ff
    rst $38                                       ; $517a: $ff
    rst $38                                       ; $517b: $ff
    add hl, de                                    ; $517c: $19
    rst $38                                       ; $517d: $ff
    ccf                                           ; $517e: $3f
    rst $38                                       ; $517f: $ff
    sbc b                                         ; $5180: $98
    rst $38                                       ; $5181: $ff
    di                                            ; $5182: $f3
    rst $38                                       ; $5183: $ff
    ld a, [hl]                                    ; $5184: $7e
    rst $38                                       ; $5185: $ff
    rst $38                                       ; $5186: $ff
    rst $38                                       ; $5187: $ff
    ldh [rIE], a                                  ; $5188: $e0 $ff
    rst $08                                       ; $518a: $cf
    rst $38                                       ; $518b: $ff
    ld hl, sp-$01                                 ; $518c: $f8 $ff

jr_074_518e:
    di                                            ; $518e: $f3
    rst $38                                       ; $518f: $ff
    ld h, c                                       ; $5190: $61
    nop                                           ; $5191: $00
    call z, RST_00                                ; $5192: $cc $00 $00
    nop                                           ; $5195: $00
    inc a                                         ; $5196: $3c
    nop                                           ; $5197: $00
    rlca                                          ; $5198: $07
    nop                                           ; $5199: $00
    jr nc, jr_074_519c                            ; $519a: $30 $00

jr_074_519c:
    nop                                           ; $519c: $00
    nop                                           ; $519d: $00
    inc a                                         ; $519e: $3c
    nop                                           ; $519f: $00
    add b                                         ; $51a0: $80
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    nop                                           ; $51a3: $00
    ld h, b                                       ; $51a4: $60
    nop                                           ; $51a5: $00
    rrca                                          ; $51a6: $0f
    nop                                           ; $51a7: $00
    add b                                         ; $51a8: $80
    nop                                           ; $51a9: $00

jr_074_51aa:
    nop                                           ; $51aa: $00
    nop                                           ; $51ab: $00
    ld a, [hl]                                    ; $51ac: $7e
    nop                                           ; $51ad: $00
    nop                                           ; $51ae: $00
    nop                                           ; $51af: $00
    ldh [rP1], a                                  ; $51b0: $e0 $00
    rrca                                          ; $51b2: $0f
    nop                                           ; $51b3: $00
    ld sp, hl                                     ; $51b4: $f9
    nop                                           ; $51b5: $00
    rrca                                          ; $51b6: $0f
    nop                                           ; $51b7: $00
    pop hl                                        ; $51b8: $e1
    nop                                           ; $51b9: $00
    rst $38                                       ; $51ba: $ff
    nop                                           ; $51bb: $00
    rst $38                                       ; $51bc: $ff
    nop                                           ; $51bd: $00
    rst $38                                       ; $51be: $ff
    nop                                           ; $51bf: $00
    ld a, a                                       ; $51c0: $7f
    nop                                           ; $51c1: $00
    ldh a, [rP1]                                  ; $51c2: $f0 $00
    sbc c                                         ; $51c4: $99
    nop                                           ; $51c5: $00
    di                                            ; $51c6: $f3
    nop                                           ; $51c7: $00
    rst $38                                       ; $51c8: $ff
    nop                                           ; $51c9: $00
    rst $08                                       ; $51ca: $cf
    nop                                           ; $51cb: $00
    rst $38                                       ; $51cc: $ff
    nop                                           ; $51cd: $00
    rst $38                                       ; $51ce: $ff
    nop                                           ; $51cf: $00
    ret nz                                        ; $51d0: $c0

    nop                                           ; $51d1: $00
    inc bc                                        ; $51d2: $03
    nop                                           ; $51d3: $00
    ld sp, $0000                                  ; $51d4: $31 $00 $00
    nop                                           ; $51d7: $00
    rlca                                          ; $51d8: $07
    nop                                           ; $51d9: $00
    ld a, a                                       ; $51da: $7f
    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    ldh a, [rP1]                                  ; $51de: $f0 $00
    ld h, c                                       ; $51e0: $61
    nop                                           ; $51e1: $00
    call z, $e600                                 ; $51e2: $cc $00 $e6
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    nop                                           ; $51e7: $00
    sbc [hl]                                      ; $51e8: $9e
    nop                                           ; $51e9: $00
    jr nc, jr_074_51ec                            ; $51ea: $30 $00

jr_074_51ec:
    nop                                           ; $51ec: $00
    nop                                           ; $51ed: $00
    ccf                                           ; $51ee: $3f
    nop                                           ; $51ef: $00
    rst $38                                       ; $51f0: $ff
    nop                                           ; $51f1: $00
    nop                                           ; $51f2: $00
    nop                                           ; $51f3: $00
    rst $38                                       ; $51f4: $ff
    nop                                           ; $51f5: $00
    rra                                           ; $51f6: $1f
    nop                                           ; $51f7: $00
    rst $38                                       ; $51f8: $ff
    nop                                           ; $51f9: $00
    sbc h                                         ; $51fa: $9c
    nop                                           ; $51fb: $00
    rst $38                                       ; $51fc: $ff
    nop                                           ; $51fd: $00
    db $e3                                        ; $51fe: $e3
    nop                                           ; $51ff: $00
    add c                                         ; $5200: $81
    nop                                           ; $5201: $00
    db $fc                                        ; $5202: $fc
    nop                                           ; $5203: $00
    rst $38                                       ; $5204: $ff
    nop                                           ; $5205: $00

jr_074_5206:
    jr nc, jr_074_5208                            ; $5206: $30 $00

jr_074_5208:
    ld sp, hl                                     ; $5208: $f9
    nop                                           ; $5209: $00
    jp $f900                                      ; $520a: $c3 $00 $f9


    nop                                           ; $520d: $00
    rst $08                                       ; $520e: $cf
    nop                                           ; $520f: $00
    cp $01                                        ; $5210: $fe $01
    sbc h                                         ; $5212: $9c
    ld h, e                                       ; $5213: $63
    rst $38                                       ; $5214: $ff
    nop                                           ; $5215: $00
    db $fc                                        ; $5216: $fc
    inc bc                                        ; $5217: $03
    rst $08                                       ; $5218: $cf
    jr nc, jr_074_51aa                            ; $5219: $30 $8f

    ld [hl], b                                    ; $521b: $70
    add $39                                       ; $521c: $c6 $39
    sbc a                                         ; $521e: $9f

jr_074_521f:
    ld h, b                                       ; $521f: $60
    ld a, c                                       ; $5220: $79
    add [hl]                                      ; $5221: $86
    rst $08                                       ; $5222: $cf
    jr nc, jr_074_5206                            ; $5223: $30 $e1

    ld e, $ff                                     ; $5225: $1e $ff
    nop                                           ; $5227: $00
    add a                                         ; $5228: $87
    ld a, b                                       ; $5229: $78
    rst $38                                       ; $522a: $ff
    nop                                           ; $522b: $00
    add hl, de                                    ; $522c: $19
    and $f3                                       ; $522d: $e6 $f3
    inc c                                         ; $522f: $0c
    nop                                           ; $5230: $00
    rst $38                                       ; $5231: $ff
    rst $08                                       ; $5232: $cf
    jr nc, jr_074_523c                            ; $5233: $30 $07

    ld hl, sp-$10                                 ; $5235: $f8 $f0
    rrca                                          ; $5237: $0f
    nop                                           ; $5238: $00
    rst $38                                       ; $5239: $ff
    ret nz                                        ; $523a: $c0

    ccf                                           ; $523b: $3f

jr_074_523c:
    ld h, [hl]                                    ; $523c: $66
    sbc c                                         ; $523d: $99
    nop                                           ; $523e: $00
    rst $38                                       ; $523f: $ff
    ld a, [hl]                                    ; $5240: $7e
    add c                                         ; $5241: $81
    inc c                                         ; $5242: $0c
    di                                            ; $5243: $f3
    add b                                         ; $5244: $80
    ld a, a                                       ; $5245: $7f
    rrca                                          ; $5246: $0f
    ldh a, [rP1]                                  ; $5247: $f0 $00
    rst $38                                       ; $5249: $ff
    inc a                                         ; $524a: $3c
    jp $f906                                      ; $524b: $c3 $06 $f9


    jr nc, jr_074_521f                            ; $524e: $30 $cf

    nop                                           ; $5250: $00
    rst $38                                       ; $5251: $ff
    di                                            ; $5252: $f3
    rst $38                                       ; $5253: $ff
    nop                                           ; $5254: $00
    rst $38                                       ; $5255: $ff
    inc a                                         ; $5256: $3c
    rst $38                                       ; $5257: $ff
    rlca                                          ; $5258: $07
    rst $38                                       ; $5259: $ff
    jr nc, @+$01                                  ; $525a: $30 $ff

    nop                                           ; $525c: $00
    rst $38                                       ; $525d: $ff
    inc a                                         ; $525e: $3c
    rst $38                                       ; $525f: $ff
    ld b, $ff                                     ; $5260: $06 $ff
    jr nc, @+$01                                  ; $5262: $30 $ff

    nop                                           ; $5264: $00
    rst $38                                       ; $5265: $ff
    rrca                                          ; $5266: $0f
    rst $38                                       ; $5267: $ff
    add b                                         ; $5268: $80
    rst $38                                       ; $5269: $ff
    nop                                           ; $526a: $00
    rst $38                                       ; $526b: $ff
    ld a, [hl]                                    ; $526c: $7e
    rst $38                                       ; $526d: $ff
    nop                                           ; $526e: $00
    rst $38                                       ; $526f: $ff
    ldh [rIE], a                                  ; $5270: $e0 $ff
    rrca                                          ; $5272: $0f
    rst $38                                       ; $5273: $ff
    ld sp, hl                                     ; $5274: $f9
    rst $38                                       ; $5275: $ff
    rrca                                          ; $5276: $0f
    rst $38                                       ; $5277: $ff
    rst $20                                       ; $5278: $e7
    rst $38                                       ; $5279: $ff
    ccf                                           ; $527a: $3f
    rst $38                                       ; $527b: $ff
    sbc a                                         ; $527c: $9f
    rst $38                                       ; $527d: $ff
    ccf                                           ; $527e: $3f
    rst $38                                       ; $527f: $ff
    ld a, a                                       ; $5280: $7f
    rst $38                                       ; $5281: $ff
    ldh a, [rIE]                                  ; $5282: $f0 $ff
    sbc c                                         ; $5284: $99
    rst $38                                       ; $5285: $ff
    di                                            ; $5286: $f3
    rst $38                                       ; $5287: $ff
    rst $38                                       ; $5288: $ff
    rst $38                                       ; $5289: $ff
    inc sp                                        ; $528a: $33
    rst $38                                       ; $528b: $ff
    ld sp, hl                                     ; $528c: $f9
    rst $38                                       ; $528d: $ff
    rst $08                                       ; $528e: $cf
    rst $38                                       ; $528f: $ff
    ld h, b                                       ; $5290: $60
    nop                                           ; $5291: $00
    inc c                                         ; $5292: $0c
    nop                                           ; $5293: $00
    add b                                         ; $5294: $80
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    nop                                           ; $5297: $00
    jr jr_074_529a                                ; $5298: $18 $00

jr_074_529a:
    inc a                                         ; $529a: $3c
    nop                                           ; $529b: $00
    sbc [hl]                                      ; $529c: $9e
    nop                                           ; $529d: $00
    jr nc, jr_074_52a0                            ; $529e: $30 $00

jr_074_52a0:
    ld h, b                                       ; $52a0: $60
    nop                                           ; $52a1: $00
    call z, Call_074_6700                         ; $52a2: $cc $00 $67
    nop                                           ; $52a5: $00
    ret nz                                        ; $52a6: $c0

    nop                                           ; $52a7: $00
    ld e, $00                                     ; $52a8: $1e $00
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    ld a, c                                       ; $52ac: $79
    nop                                           ; $52ad: $00
    inc bc                                        ; $52ae: $03
    nop                                           ; $52af: $00
    rrca                                          ; $52b0: $0f
    nop                                           ; $52b1: $00
    sbc c                                         ; $52b2: $99
    nop                                           ; $52b3: $00
    rst $38                                       ; $52b4: $ff
    nop                                           ; $52b5: $00
    add b                                         ; $52b6: $80
    nop                                           ; $52b7: $00
    rst $38                                       ; $52b8: $ff
    nop                                           ; $52b9: $00
    rra                                           ; $52ba: $1f
    nop                                           ; $52bb: $00
    ldh a, [rP1]                                  ; $52bc: $f0 $00
    ld a, a                                       ; $52be: $7f
    nop                                           ; $52bf: $00
    db $fc                                        ; $52c0: $fc
    nop                                           ; $52c1: $00
    add a                                         ; $52c2: $87
    nop                                           ; $52c3: $00
    jp $7f00                                      ; $52c4: $c3 $00 $7f


    nop                                           ; $52c7: $00
    rst $38                                       ; $52c8: $ff

jr_074_52c9:
    nop                                           ; $52c9: $00
    cp $00                                        ; $52ca: $fe $00
    di                                            ; $52cc: $f3

jr_074_52cd:
    nop                                           ; $52cd: $00
    cp $00                                        ; $52ce: $fe $00
    rst $08                                       ; $52d0: $cf
    jr nc, @-$60                                  ; $52d1: $30 $9e

    ld h, c                                       ; $52d3: $61
    di                                            ; $52d4: $f3
    inc c                                         ; $52d5: $0c
    add [hl]                                      ; $52d6: $86
    ld a, c                                       ; $52d7: $79
    rst $38                                       ; $52d8: $ff
    nop                                           ; $52d9: $00
    cp $01                                        ; $52da: $fe $01
    rrca                                          ; $52dc: $0f
    ldh a, [$fe]                                  ; $52dd: $f0 $fe
    ld bc, $00ff                                  ; $52df: $01 $ff $00
    ld a, c                                       ; $52e2: $79
    add [hl]                                      ; $52e3: $86
    db $fc                                        ; $52e4: $fc
    inc bc                                        ; $52e5: $03
    rra                                           ; $52e6: $1f
    ldh [$c3], a                                  ; $52e7: $e0 $c3
    inc a                                         ; $52e9: $3c
    ld a, a                                       ; $52ea: $7f
    add b                                         ; $52eb: $80
    db $fc                                        ; $52ec: $fc
    inc bc                                        ; $52ed: $03
    rra                                           ; $52ee: $1f
    ldh [rP1], a                                  ; $52ef: $e0 $00
    rst $38                                       ; $52f1: $ff
    ld a, a                                       ; $52f2: $7f
    add b                                         ; $52f3: $80
    jr nc, @-$2f                                  ; $52f4: $30 $cf

    ld h, a                                       ; $52f6: $67
    sbc b                                         ; $52f7: $98
    jr nc, jr_074_52c9                            ; $52f8: $30 $cf

    add b                                         ; $52fa: $80
    ld a, a                                       ; $52fb: $7f
    jr nc, jr_074_52cd                            ; $52fc: $30 $cf

    add b                                         ; $52fe: $80
    ld a, a                                       ; $52ff: $7f
    db $fc                                        ; $5300: $fc
    inc bc                                        ; $5301: $03
    add b                                         ; $5302: $80
    ld a, a                                       ; $5303: $7f
    inc sp                                        ; $5304: $33
    call z, Call_074_7f80                         ; $5305: $cc $80 $7f
    nop                                           ; $5308: $00
    rst $38                                       ; $5309: $ff
    rlca                                          ; $530a: $07
    ld hl, sp+$00                                 ; $530b: $f8 $00
    rst $38                                       ; $530d: $ff
    ld bc, $30fe                                  ; $530e: $01 $fe $30
    rst $38                                       ; $5311: $ff
    add [hl]                                      ; $5312: $86
    rst $38                                       ; $5313: $ff
    ccf                                           ; $5314: $3f
    rst $38                                       ; $5315: $ff
    nop                                           ; $5316: $00
    rst $38                                       ; $5317: $ff
    jp Jump_000_06ff                              ; $5318: $c3 $ff $06


    rst $38                                       ; $531b: $ff
    rst $38                                       ; $531c: $ff
    rst $38                                       ; $531d: $ff
    nop                                           ; $531e: $00
    rst $38                                       ; $531f: $ff
    ret nz                                        ; $5320: $c0

    rst $38                                       ; $5321: $ff
    ld bc, $c0ff                                  ; $5322: $01 $ff $c0
    rst $38                                       ; $5325: $ff
    nop                                           ; $5326: $00
    rst $38                                       ; $5327: $ff
    inc sp                                        ; $5328: $33
    rst $38                                       ; $5329: $ff
    ld h, b                                       ; $532a: $60
    rst $38                                       ; $532b: $ff
    jp Jump_000_00ff                              ; $532c: $c3 $ff $00


    rst $38                                       ; $532f: $ff
    rrca                                          ; $5330: $0f
    rst $38                                       ; $5331: $ff
    sbc a                                         ; $5332: $9f
    rst $38                                       ; $5333: $ff
    inc c                                         ; $5334: $0c
    rst $38                                       ; $5335: $ff
    pop hl                                        ; $5336: $e1
    rst $38                                       ; $5337: $ff
    ccf                                           ; $5338: $3f
    rst $38                                       ; $5339: $ff
    rst $38                                       ; $533a: $ff
    rst $38                                       ; $533b: $ff
    inc sp                                        ; $533c: $33
    rst $38                                       ; $533d: $ff
    ld a, a                                       ; $533e: $7f
    rst $38                                       ; $533f: $ff
    jr nc, @+$01                                  ; $5340: $30 $ff

    rst $20                                       ; $5342: $e7
    rst $38                                       ; $5343: $ff
    db $fc                                        ; $5344: $fc
    rst $38                                       ; $5345: $ff
    rst $38                                       ; $5346: $ff
    rst $38                                       ; $5347: $ff
    ret nz                                        ; $5348: $c0

    rst $38                                       ; $5349: $ff
    sbc a                                         ; $534a: $9f
    rst $38                                       ; $534b: $ff
    ldh a, [rIE]                                  ; $534c: $f0 $ff
    and $ff                                       ; $534e: $e6 $ff
    jp $9800                                      ; $5350: $c3 $00 $98


    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    nop                                           ; $5355: $00
    ld a, b                                       ; $5356: $78
    nop                                           ; $5357: $00
    rrca                                          ; $5358: $0f
    nop                                           ; $5359: $00
    ld h, b                                       ; $535a: $60
    nop                                           ; $535b: $00
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00
    ld a, b                                       ; $535e: $78
    nop                                           ; $535f: $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    ld bc, $c000                                  ; $5362: $01 $00 $c0
    nop                                           ; $5365: $00
    ld e, $00                                     ; $5366: $1e $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    db $fc                                        ; $536c: $fc
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    ret nz                                        ; $5370: $c0

    nop                                           ; $5371: $00
    rra                                           ; $5372: $1f
    nop                                           ; $5373: $00
    di                                            ; $5374: $f3
    nop                                           ; $5375: $00
    rra                                           ; $5376: $1f
    nop                                           ; $5377: $00
    jp $ff00                                      ; $5378: $c3 $00 $ff


    nop                                           ; $537b: $00
    rst $38                                       ; $537c: $ff
    nop                                           ; $537d: $00
    rst $38                                       ; $537e: $ff
    nop                                           ; $537f: $00
    rst $38                                       ; $5380: $ff
    nop                                           ; $5381: $00
    ldh [rP1], a                                  ; $5382: $e0 $00
    inc sp                                        ; $5384: $33
    nop                                           ; $5385: $00
    and $00                                       ; $5386: $e6 $00
    rst $38                                       ; $5388: $ff
    nop                                           ; $5389: $00
    sbc a                                         ; $538a: $9f
    nop                                           ; $538b: $00
    rst $38                                       ; $538c: $ff
    nop                                           ; $538d: $00
    rst $38                                       ; $538e: $ff
    nop                                           ; $538f: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    rlca                                          ; $5392: $07
    nop                                           ; $5393: $00
    jp RST_00                                     ; $5394: $c3 $00 $00


    nop                                           ; $5397: $00
    rrca                                          ; $5398: $0f
    nop                                           ; $5399: $00
    cp $00                                        ; $539a: $fe $00
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    ldh [rP1], a                                  ; $539e: $e0 $00
    jp $9800                                      ; $53a0: $c3 $00 $98


    nop                                           ; $53a3: $00
    call z, RST_00                                ; $53a4: $cc $00 $00
    nop                                           ; $53a7: $00
    inc a                                         ; $53a8: $3c
    nop                                           ; $53a9: $00
    ld h, c                                       ; $53aa: $61
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    nop                                           ; $53ad: $00
    ld a, a                                       ; $53ae: $7f
    nop                                           ; $53af: $00
    rst $38                                       ; $53b0: $ff
    nop                                           ; $53b1: $00
    ld bc, $ff00                                  ; $53b2: $01 $00 $ff
    nop                                           ; $53b5: $00
    ld a, [hl]                                    ; $53b6: $7e
    nop                                           ; $53b7: $00
    rst $38                                       ; $53b8: $ff
    nop                                           ; $53b9: $00
    ld a, c                                       ; $53ba: $79
    nop                                           ; $53bb: $00
    rst $38                                       ; $53bc: $ff
    nop                                           ; $53bd: $00
    add a                                         ; $53be: $87
    nop                                           ; $53bf: $00
    inc bc                                        ; $53c0: $03
    nop                                           ; $53c1: $00
    ld hl, sp+$00                                 ; $53c2: $f8 $00
    rst $38                                       ; $53c4: $ff
    nop                                           ; $53c5: $00
    ld h, b                                       ; $53c6: $60
    nop                                           ; $53c7: $00
    di                                            ; $53c8: $f3
    nop                                           ; $53c9: $00
    add [hl]                                      ; $53ca: $86
    nop                                           ; $53cb: $00
    di                                            ; $53cc: $f3
    nop                                           ; $53cd: $00
    sbc a                                         ; $53ce: $9f
    nop                                           ; $53cf: $00
    db $fc                                        ; $53d0: $fc
    inc bc                                        ; $53d1: $03
    ld a, c                                       ; $53d2: $79
    add [hl]                                      ; $53d3: $86
    rst $38                                       ; $53d4: $ff
    nop                                           ; $53d5: $00
    ld sp, hl                                     ; $53d6: $f9
    ld b, $3f                                     ; $53d7: $06 $3f
    ret nz                                        ; $53d9: $c0

    rra                                           ; $53da: $1f
    ldh [$0c], a                                  ; $53db: $e0 $0c
    di                                            ; $53dd: $f3
    ld a, a                                       ; $53de: $7f
    add b                                         ; $53df: $80
    di                                            ; $53e0: $f3
    inc c                                         ; $53e1: $0c
    sbc [hl]                                      ; $53e2: $9e
    ld h, c                                       ; $53e3: $61
    jp $ff3c                                      ; $53e4: $c3 $3c $ff


    nop                                           ; $53e7: $00
    rrca                                          ; $53e8: $0f
    ldh a, [$fe]                                  ; $53e9: $f0 $fe
    ld bc, $cc33                                  ; $53eb: $01 $33 $cc
    and $19                                       ; $53ee: $e6 $19
    nop                                           ; $53f0: $00
    rst $38                                       ; $53f1: $ff
    sbc [hl]                                      ; $53f2: $9e
    ld h, c                                       ; $53f3: $61
    rrca                                          ; $53f4: $0f
    ldh a, [$e0]                                  ; $53f5: $f0 $e0
    rra                                           ; $53f7: $1f
    nop                                           ; $53f8: $00
    rst $38                                       ; $53f9: $ff
    add b                                         ; $53fa: $80
    ld a, a                                       ; $53fb: $7f
    call z, $0033                                 ; $53fc: $cc $33 $00
    rst $38                                       ; $53ff: $ff
    db $fc                                        ; $5400: $fc
    inc bc                                        ; $5401: $03
    add hl, de                                    ; $5402: $19
    and $00                                       ; $5403: $e6 $00
    rst $38                                       ; $5405: $ff
    rra                                           ; $5406: $1f
    ldh [rP1], a                                  ; $5407: $e0 $00
    rst $38                                       ; $5409: $ff
    ld a, c                                       ; $540a: $79
    add [hl]                                      ; $540b: $86
    inc c                                         ; $540c: $0c
    di                                            ; $540d: $f3
    ld h, b                                       ; $540e: $60
    sbc a                                         ; $540f: $9f
    nop                                           ; $5410: $00
    rst $38                                       ; $5411: $ff
    and $ff                                       ; $5412: $e6 $ff
    nop                                           ; $5414: $00
    rst $38                                       ; $5415: $ff
    ld a, b                                       ; $5416: $78
    rst $38                                       ; $5417: $ff
    rrca                                          ; $5418: $0f
    rst $38                                       ; $5419: $ff
    ld h, b                                       ; $541a: $60
    rst $38                                       ; $541b: $ff
    nop                                           ; $541c: $00
    rst $38                                       ; $541d: $ff
    ld a, b                                       ; $541e: $78
    rst $38                                       ; $541f: $ff
    inc c                                         ; $5420: $0c
    rst $38                                       ; $5421: $ff
    ld h, c                                       ; $5422: $61
    rst $38                                       ; $5423: $ff
    nop                                           ; $5424: $00
    rst $38                                       ; $5425: $ff
    ld e, $ff                                     ; $5426: $1e $ff
    nop                                           ; $5428: $00
    rst $38                                       ; $5429: $ff
    nop                                           ; $542a: $00
    rst $38                                       ; $542b: $ff
    db $fc                                        ; $542c: $fc
    rst $38                                       ; $542d: $ff
    nop                                           ; $542e: $00
    rst $38                                       ; $542f: $ff
    ret nz                                        ; $5430: $c0

jr_074_5431:
    rst $38                                       ; $5431: $ff
    rra                                           ; $5432: $1f
    rst $38                                       ; $5433: $ff
    di                                            ; $5434: $f3
    rst $38                                       ; $5435: $ff
    rra                                           ; $5436: $1f
    rst $38                                       ; $5437: $ff
    rst $08                                       ; $5438: $cf
    rst $38                                       ; $5439: $ff
    ld a, [hl]                                    ; $543a: $7e
    rst $38                                       ; $543b: $ff
    ccf                                           ; $543c: $3f
    rst $38                                       ; $543d: $ff
    ld a, a                                       ; $543e: $7f
    rst $38                                       ; $543f: $ff
    rst $38                                       ; $5440: $ff
    rst $38                                       ; $5441: $ff
    ldh [rIE], a                                  ; $5442: $e0 $ff
    inc sp                                        ; $5444: $33
    rst $38                                       ; $5445: $ff
    and $ff                                       ; $5446: $e6 $ff
    rst $38                                       ; $5448: $ff
    rst $38                                       ; $5449: $ff
    ld h, [hl]                                    ; $544a: $66
    rst $38                                       ; $544b: $ff
    di                                            ; $544c: $f3
    rst $38                                       ; $544d: $ff
    sbc [hl]                                      ; $544e: $9e
    rst $38                                       ; $544f: $ff
    ret nz                                        ; $5450: $c0

    nop                                           ; $5451: $00
    add hl, de                                    ; $5452: $19
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    ld bc, $3000                                  ; $5456: $01 $00 $30
    nop                                           ; $5459: $00
    ld a, b                                       ; $545a: $78
    nop                                           ; $545b: $00
    inc a                                         ; $545c: $3c
    nop                                           ; $545d: $00
    ld h, b                                       ; $545e: $60
    nop                                           ; $545f: $00
    ret nz                                        ; $5460: $c0

    nop                                           ; $5461: $00
    sbc b                                         ; $5462: $98
    nop                                           ; $5463: $00
    rst $08                                       ; $5464: $cf
    nop                                           ; $5465: $00
    add b                                         ; $5466: $80
    nop                                           ; $5467: $00
    inc a                                         ; $5468: $3c
    nop                                           ; $5469: $00
    nop                                           ; $546a: $00
    nop                                           ; $546b: $00
    di                                            ; $546c: $f3
    nop                                           ; $546d: $00
    ld b, $00                                     ; $546e: $06 $00
    rrca                                          ; $5470: $0f
    nop                                           ; $5471: $00
    sbc c                                         ; $5472: $99
    nop                                           ; $5473: $00
    rst $38                                       ; $5474: $ff
    nop                                           ; $5475: $00
    add b                                         ; $5476: $80
    nop                                           ; $5477: $00
    rst $38                                       ; $5478: $ff
    nop                                           ; $5479: $00
    rra                                           ; $547a: $1f
    nop                                           ; $547b: $00
    ldh a, [rP1]                                  ; $547c: $f0 $00
    ld a, a                                       ; $547e: $7f
    nop                                           ; $547f: $00
    db $fc                                        ; $5480: $fc
    nop                                           ; $5481: $00
    add a                                         ; $5482: $87
    nop                                           ; $5483: $00
    jp $7f00                                      ; $5484: $c3 $00 $7f


    nop                                           ; $5487: $00
    rst $38                                       ; $5488: $ff

jr_074_5489:
    nop                                           ; $5489: $00
    cp $00                                        ; $548a: $fe $00
    di                                            ; $548c: $f3

jr_074_548d:
    nop                                           ; $548d: $00
    cp $00                                        ; $548e: $fe $00
    rst $08                                       ; $5490: $cf
    jr nc, jr_074_5431                            ; $5491: $30 $9e

    ld h, c                                       ; $5493: $61
    di                                            ; $5494: $f3
    inc c                                         ; $5495: $0c
    add [hl]                                      ; $5496: $86
    ld a, c                                       ; $5497: $79
    rst $38                                       ; $5498: $ff
    nop                                           ; $5499: $00
    cp $01                                        ; $549a: $fe $01
    rrca                                          ; $549c: $0f
    ldh a, [$fe]                                  ; $549d: $f0 $fe
    ld bc, $00ff                                  ; $549f: $01 $ff $00
    ld a, c                                       ; $54a2: $79
    add [hl]                                      ; $54a3: $86
    db $fc                                        ; $54a4: $fc
    inc bc                                        ; $54a5: $03
    rra                                           ; $54a6: $1f
    ldh [$c3], a                                  ; $54a7: $e0 $c3
    inc a                                         ; $54a9: $3c
    ld a, a                                       ; $54aa: $7f
    add b                                         ; $54ab: $80
    db $fc                                        ; $54ac: $fc
    inc bc                                        ; $54ad: $03
    rra                                           ; $54ae: $1f
    ldh [rP1], a                                  ; $54af: $e0 $00
    rst $38                                       ; $54b1: $ff
    ld a, a                                       ; $54b2: $7f
    add b                                         ; $54b3: $80
    jr nc, @-$2f                                  ; $54b4: $30 $cf

    ld h, a                                       ; $54b6: $67
    sbc b                                         ; $54b7: $98
    jr nc, jr_074_5489                            ; $54b8: $30 $cf

    add b                                         ; $54ba: $80
    ld a, a                                       ; $54bb: $7f
    jr nc, jr_074_548d                            ; $54bc: $30 $cf

    add b                                         ; $54be: $80
    ld a, a                                       ; $54bf: $7f
    db $fc                                        ; $54c0: $fc
    inc bc                                        ; $54c1: $03
    add b                                         ; $54c2: $80
    ld a, a                                       ; $54c3: $7f
    inc sp                                        ; $54c4: $33
    call z, Call_074_7f80                         ; $54c5: $cc $80 $7f
    nop                                           ; $54c8: $00
    rst $38                                       ; $54c9: $ff
    rlca                                          ; $54ca: $07
    ld hl, sp+$00                                 ; $54cb: $f8 $00
    rst $38                                       ; $54cd: $ff
    ld bc, $30fe                                  ; $54ce: $01 $fe $30
    rst $38                                       ; $54d1: $ff
    add [hl]                                      ; $54d2: $86
    rst $38                                       ; $54d3: $ff
    ccf                                           ; $54d4: $3f
    rst $38                                       ; $54d5: $ff
    nop                                           ; $54d6: $00
    rst $38                                       ; $54d7: $ff
    jp Jump_000_06ff                              ; $54d8: $c3 $ff $06


    rst $38                                       ; $54db: $ff
    rst $38                                       ; $54dc: $ff
    rst $38                                       ; $54dd: $ff
    nop                                           ; $54de: $00
    rst $38                                       ; $54df: $ff
    ret nz                                        ; $54e0: $c0

    rst $38                                       ; $54e1: $ff
    ld bc, $c0ff                                  ; $54e2: $01 $ff $c0
    rst $38                                       ; $54e5: $ff
    nop                                           ; $54e6: $00
    rst $38                                       ; $54e7: $ff
    inc sp                                        ; $54e8: $33
    rst $38                                       ; $54e9: $ff
    ld h, b                                       ; $54ea: $60
    rst $38                                       ; $54eb: $ff
    jp Jump_000_00ff                              ; $54ec: $c3 $ff $00


    rst $38                                       ; $54ef: $ff
    ld e, $ff                                     ; $54f0: $1e $ff
    ccf                                           ; $54f2: $3f
    rst $38                                       ; $54f3: $ff
    add hl, de                                    ; $54f4: $19
    rst $38                                       ; $54f5: $ff
    jp Jump_074_7fff                              ; $54f6: $c3 $ff $7f


    rst $38                                       ; $54f9: $ff
    rst $38                                       ; $54fa: $ff
    rst $38                                       ; $54fb: $ff
    ld h, a                                       ; $54fc: $67
    rst $38                                       ; $54fd: $ff
    rst $38                                       ; $54fe: $ff
    rst $38                                       ; $54ff: $ff
    ld h, b                                       ; $5500: $60
    rst $38                                       ; $5501: $ff
    rst $08                                       ; $5502: $cf
    rst $38                                       ; $5503: $ff
    ld hl, sp-$01                                 ; $5504: $f8 $ff
    rst $38                                       ; $5506: $ff
    rst $38                                       ; $5507: $ff
    add b                                         ; $5508: $80
    rst $38                                       ; $5509: $ff
    ccf                                           ; $550a: $3f
    rst $38                                       ; $550b: $ff
    ldh [rIE], a                                  ; $550c: $e0 $ff
    call z, Call_000_0cff                         ; $550e: $cc $ff $0c
    nop                                           ; $5511: $00
    ld h, b                                       ; $5512: $60
    nop                                           ; $5513: $00
    inc bc                                        ; $5514: $03
    nop                                           ; $5515: $00
    ldh [rP1], a                                  ; $5516: $e0 $00
    inc a                                         ; $5518: $3c
    nop                                           ; $5519: $00
    add b                                         ; $551a: $80
    nop                                           ; $551b: $00
    inc bc                                        ; $551c: $03
    nop                                           ; $551d: $00
    ldh [rP1], a                                  ; $551e: $e0 $00
    inc bc                                        ; $5520: $03
    nop                                           ; $5521: $00
    ld b, $00                                     ; $5522: $06 $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    ld a, c                                       ; $5526: $79
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    ld bc, $f000                                  ; $552a: $01 $00 $f0
    nop                                           ; $552d: $00
    ld bc, $0300                                  ; $552e: $01 $00 $03
    nop                                           ; $5531: $00
    ld a, a                                       ; $5532: $7f
    nop                                           ; $5533: $00
    call z, $7f00                                 ; $5534: $cc $00 $7f
    nop                                           ; $5537: $00
    rrca                                          ; $5538: $0f
    nop                                           ; $5539: $00
    cp $00                                        ; $553a: $fe $00
    rst $38                                       ; $553c: $ff
    nop                                           ; $553d: $00
    rst $38                                       ; $553e: $ff
    nop                                           ; $553f: $00
    rst $38                                       ; $5540: $ff
    nop                                           ; $5541: $00
    add b                                         ; $5542: $80
    nop                                           ; $5543: $00
    rst $08                                       ; $5544: $cf
    nop                                           ; $5545: $00
    sbc b                                         ; $5546: $98
    nop                                           ; $5547: $00
    rst $38                                       ; $5548: $ff
    nop                                           ; $5549: $00
    ld a, a                                       ; $554a: $7f
    nop                                           ; $554b: $00
    rst $38                                       ; $554c: $ff
    nop                                           ; $554d: $00
    rst $38                                       ; $554e: $ff
    nop                                           ; $554f: $00
    ld bc, $0f00                                  ; $5550: $01 $00 $0f
    nop                                           ; $5553: $00
    add a                                         ; $5554: $87
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    ld e, $00                                     ; $5558: $1e $00
    db $fc                                        ; $555a: $fc
    nop                                           ; $555b: $00
    nop                                           ; $555c: $00
    nop                                           ; $555d: $00
    ret nz                                        ; $555e: $c0

    nop                                           ; $555f: $00
    add [hl]                                      ; $5560: $86
    nop                                           ; $5561: $00
    jr nc, jr_074_5564                            ; $5562: $30 $00

jr_074_5564:
    sbc c                                         ; $5564: $99
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    ld a, b                                       ; $5568: $78
    nop                                           ; $5569: $00
    jp RST_00                                     ; $556a: $c3 $00 $00


    nop                                           ; $556d: $00
    rst $38                                       ; $556e: $ff
    nop                                           ; $556f: $00
    cp $00                                        ; $5570: $fe $00
    inc bc                                        ; $5572: $03
    nop                                           ; $5573: $00
    rst $38                                       ; $5574: $ff
    nop                                           ; $5575: $00
    db $fc                                        ; $5576: $fc
    nop                                           ; $5577: $00
    rst $38                                       ; $5578: $ff
    nop                                           ; $5579: $00
    di                                            ; $557a: $f3
    nop                                           ; $557b: $00
    rst $38                                       ; $557c: $ff
    nop                                           ; $557d: $00
    rrca                                          ; $557e: $0f
    nop                                           ; $557f: $00
    rlca                                          ; $5580: $07
    nop                                           ; $5581: $00
    ldh a, [rP1]                                  ; $5582: $f0 $00
    rst $38                                       ; $5584: $ff

jr_074_5585:
    nop                                           ; $5585: $00
    ret nz                                        ; $5586: $c0

    nop                                           ; $5587: $00
    rst $20                                       ; $5588: $e7
    nop                                           ; $5589: $00
    inc c                                         ; $558a: $0c
    nop                                           ; $558b: $00
    rst $20                                       ; $558c: $e7
    nop                                           ; $558d: $00
    ccf                                           ; $558e: $3f
    nop                                           ; $558f: $00
    ld sp, hl                                     ; $5590: $f9
    ld b, $f3                                     ; $5591: $06 $f3
    inc c                                         ; $5593: $0c
    rst $38                                       ; $5594: $ff
    nop                                           ; $5595: $00
    di                                            ; $5596: $f3
    inc c                                         ; $5597: $0c
    ld a, [hl]                                    ; $5598: $7e
    add c                                         ; $5599: $81
    ccf                                           ; $559a: $3f
    ret nz                                        ; $559b: $c0

    jr jr_074_5585                                ; $559c: $18 $e7

    rst $38                                       ; $559e: $ff
    nop                                           ; $559f: $00
    rst $20                                       ; $55a0: $e7
    jr jr_074_55df                                ; $55a1: $18 $3c

    jp Jump_074_7887                              ; $55a3: $c3 $87 $78


    rst $38                                       ; $55a6: $ff
    nop                                           ; $55a7: $00
    ld e, $e1                                     ; $55a8: $1e $e1
    db $fc                                        ; $55aa: $fc
    inc bc                                        ; $55ab: $03
    ld h, [hl]                                    ; $55ac: $66
    sbc c                                         ; $55ad: $99
    call z, $0133                                 ; $55ae: $cc $33 $01
    cp $3c                                        ; $55b1: $fe $3c
    jp $e11e                                      ; $55b3: $c3 $1e $e1


    ret nz                                        ; $55b6: $c0

    ccf                                           ; $55b7: $3f
    nop                                           ; $55b8: $00
    rst $38                                       ; $55b9: $ff
    nop                                           ; $55ba: $00
    rst $38                                       ; $55bb: $ff
    sbc b                                         ; $55bc: $98
    ld h, a                                       ; $55bd: $67
    nop                                           ; $55be: $00
    rst $38                                       ; $55bf: $ff
    ld hl, sp+$07                                 ; $55c0: $f8 $07
    inc sp                                        ; $55c2: $33
    call z, $ff00                                 ; $55c3: $cc $00 $ff
    ccf                                           ; $55c6: $3f
    ret nz                                        ; $55c7: $c0

    nop                                           ; $55c8: $00
    rst $38                                       ; $55c9: $ff
    di                                            ; $55ca: $f3
    inc c                                         ; $55cb: $0c
    add hl, de                                    ; $55cc: $19
    and $c0                                       ; $55cd: $e6 $c0
    ccf                                           ; $55cf: $3f
    nop                                           ; $55d0: $00
    rst $38                                       ; $55d1: $ff
    call z, Call_000_00ff                         ; $55d2: $cc $ff $00
    rst $38                                       ; $55d5: $ff
    ldh a, [rIE]                                  ; $55d6: $f0 $ff
    ld e, $ff                                     ; $55d8: $1e $ff
    ret nz                                        ; $55da: $c0

    rst $38                                       ; $55db: $ff
    ld bc, $f0ff                                  ; $55dc: $01 $ff $f0

jr_074_55df:
    rst $38                                       ; $55df: $ff
    jr @+$01                                      ; $55e0: $18 $ff

    jp Jump_000_00ff                              ; $55e2: $c3 $ff $00


    rst $38                                       ; $55e5: $ff
    inc a                                         ; $55e6: $3c
    rst $38                                       ; $55e7: $ff
    nop                                           ; $55e8: $00
    rst $38                                       ; $55e9: $ff
    nop                                           ; $55ea: $00
    rst $38                                       ; $55eb: $ff
    ld hl, sp-$01                                 ; $55ec: $f8 $ff
    nop                                           ; $55ee: $00
    rst $38                                       ; $55ef: $ff
    add c                                         ; $55f0: $81
    rst $38                                       ; $55f1: $ff
    ccf                                           ; $55f2: $3f
    rst $38                                       ; $55f3: $ff
    and $ff                                       ; $55f4: $e6 $ff
    ccf                                           ; $55f6: $3f
    rst $38                                       ; $55f7: $ff
    sbc a                                         ; $55f8: $9f
    rst $38                                       ; $55f9: $ff
    db $fc                                        ; $55fa: $fc
    rst $38                                       ; $55fb: $ff
    ld a, a                                       ; $55fc: $7f
    rst $38                                       ; $55fd: $ff
    rst $38                                       ; $55fe: $ff
    rst $38                                       ; $55ff: $ff
    rst $38                                       ; $5600: $ff
    rst $38                                       ; $5601: $ff
    ret nz                                        ; $5602: $c0

    rst $38                                       ; $5603: $ff
    ld h, a                                       ; $5604: $67
    rst $38                                       ; $5605: $ff
    call z, $ffff                                 ; $5606: $cc $ff $ff
    rst $38                                       ; $5609: $ff
    call z, $e6ff                                 ; $560a: $cc $ff $e6
    rst $38                                       ; $560d: $ff
    inc a                                         ; $560e: $3c
    rst $38                                       ; $560f: $ff
    add c                                         ; $5610: $81
    nop                                           ; $5611: $00
    inc sp                                        ; $5612: $33
    nop                                           ; $5613: $00
    ld bc, $0300                                  ; $5614: $01 $00 $03
    nop                                           ; $5617: $00
    ld h, b                                       ; $5618: $60
    nop                                           ; $5619: $00
    ldh a, [rP1]                                  ; $561a: $f0 $00
    ld a, c                                       ; $561c: $79
    nop                                           ; $561d: $00
    ret nz                                        ; $561e: $c0

    nop                                           ; $561f: $00
    add c                                         ; $5620: $81
    nop                                           ; $5621: $00
    jr nc, jr_074_5624                            ; $5622: $30 $00

jr_074_5624:
    sbc [hl]                                      ; $5624: $9e
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    ld a, b                                       ; $5628: $78
    nop                                           ; $5629: $00
    nop                                           ; $562a: $00
    nop                                           ; $562b: $00
    and $00                                       ; $562c: $e6 $00
    inc c                                         ; $562e: $0c
    nop                                           ; $562f: $00
    rra                                           ; $5630: $1f
    nop                                           ; $5631: $00
    inc sp                                        ; $5632: $33
    nop                                           ; $5633: $00
    rst $38                                       ; $5634: $ff
    nop                                           ; $5635: $00
    nop                                           ; $5636: $00
    nop                                           ; $5637: $00
    rst $38                                       ; $5638: $ff
    nop                                           ; $5639: $00
    ccf                                           ; $563a: $3f
    nop                                           ; $563b: $00
    pop hl                                        ; $563c: $e1
    nop                                           ; $563d: $00
    rst $38                                       ; $563e: $ff
    nop                                           ; $563f: $00
    ld hl, sp+$00                                 ; $5640: $f8 $00
    rrca                                          ; $5642: $0f
    nop                                           ; $5643: $00
    add a                                         ; $5644: $87
    nop                                           ; $5645: $00
    rst $38                                       ; $5646: $ff
    nop                                           ; $5647: $00
    rst $38                                       ; $5648: $ff
    nop                                           ; $5649: $00
    db $fc                                        ; $564a: $fc
    nop                                           ; $564b: $00
    rst $20                                       ; $564c: $e7
    nop                                           ; $564d: $00
    db $fc                                        ; $564e: $fc
    nop                                           ; $564f: $00
    sbc a                                         ; $5650: $9f
    ld h, b                                       ; $5651: $60
    inc a                                         ; $5652: $3c
    jp Jump_000_18e7                              ; $5653: $c3 $e7 $18


    inc c                                         ; $5656: $0c
    di                                            ; $5657: $f3
    rst $38                                       ; $5658: $ff
    nop                                           ; $5659: $00
    db $fc                                        ; $565a: $fc
    inc bc                                        ; $565b: $03
    rra                                           ; $565c: $1f
    ldh [$fc], a                                  ; $565d: $e0 $fc
    inc bc                                        ; $565f: $03
    rst $38                                       ; $5660: $ff
    nop                                           ; $5661: $00
    di                                            ; $5662: $f3
    inc c                                         ; $5663: $0c
    ld sp, hl                                     ; $5664: $f9
    ld b, $3f                                     ; $5665: $06 $3f
    ret nz                                        ; $5667: $c0

    add a                                         ; $5668: $87
    ld a, b                                       ; $5669: $78
    rst $38                                       ; $566a: $ff
    nop                                           ; $566b: $00
    ld hl, sp+$07                                 ; $566c: $f8 $07
    ccf                                           ; $566e: $3f
    ret nz                                        ; $566f: $c0

    ld bc, $fffe                                  ; $5670: $01 $fe $ff
    nop                                           ; $5673: $00
    ld h, b                                       ; $5674: $60
    sbc a                                         ; $5675: $9f
    rst $08                                       ; $5676: $cf
    jr nc, jr_074_56d9                            ; $5677: $30 $60

    sbc a                                         ; $5679: $9f
    nop                                           ; $567a: $00
    rst $38                                       ; $567b: $ff
    ld h, b                                       ; $567c: $60
    sbc a                                         ; $567d: $9f
    nop                                           ; $567e: $00
    rst $38                                       ; $567f: $ff
    ld hl, sp+$07                                 ; $5680: $f8 $07
    nop                                           ; $5682: $00
    rst $38                                       ; $5683: $ff
    ld h, [hl]                                    ; $5684: $66
    sbc c                                         ; $5685: $99
    nop                                           ; $5686: $00
    rst $38                                       ; $5687: $ff
    nop                                           ; $5688: $00
    rst $38                                       ; $5689: $ff
    rrca                                          ; $568a: $0f
    ldh a, [rP1]                                  ; $568b: $f0 $00
    rst $38                                       ; $568d: $ff
    inc bc                                        ; $568e: $03
    db $fc                                        ; $568f: $fc
    ld h, c                                       ; $5690: $61
    rst $38                                       ; $5691: $ff
    inc c                                         ; $5692: $0c
    rst $38                                       ; $5693: $ff
    ld a, a                                       ; $5694: $7f
    rst $38                                       ; $5695: $ff
    nop                                           ; $5696: $00
    rst $38                                       ; $5697: $ff
    add [hl]                                      ; $5698: $86
    rst $38                                       ; $5699: $ff
    inc c                                         ; $569a: $0c
    rst $38                                       ; $569b: $ff
    rst $38                                       ; $569c: $ff
    rst $38                                       ; $569d: $ff
    nop                                           ; $569e: $00
    rst $38                                       ; $569f: $ff
    add b                                         ; $56a0: $80
    rst $38                                       ; $56a1: $ff
    inc bc                                        ; $56a2: $03
    rst $38                                       ; $56a3: $ff
    add b                                         ; $56a4: $80
    rst $38                                       ; $56a5: $ff
    nop                                           ; $56a6: $00
    rst $38                                       ; $56a7: $ff
    ld h, a                                       ; $56a8: $67
    rst $38                                       ; $56a9: $ff
    ret nz                                        ; $56aa: $c0

    rst $38                                       ; $56ab: $ff
    add a                                         ; $56ac: $87
    rst $38                                       ; $56ad: $ff
    nop                                           ; $56ae: $00
    rst $38                                       ; $56af: $ff
    inc a                                         ; $56b0: $3c
    rst $38                                       ; $56b1: $ff
    ld a, a                                       ; $56b2: $7f
    rst $38                                       ; $56b3: $ff
    inc sp                                        ; $56b4: $33
    rst $38                                       ; $56b5: $ff
    add a                                         ; $56b6: $87
    rst $38                                       ; $56b7: $ff
    rst $38                                       ; $56b8: $ff
    rst $38                                       ; $56b9: $ff
    cp $ff                                        ; $56ba: $fe $ff
    rst $08                                       ; $56bc: $cf
    rst $38                                       ; $56bd: $ff
    rst $38                                       ; $56be: $ff
    rst $38                                       ; $56bf: $ff
    ret nz                                        ; $56c0: $c0

    rst $38                                       ; $56c1: $ff
    sbc [hl]                                      ; $56c2: $9e
    rst $38                                       ; $56c3: $ff
    ldh a, [rIE]                                  ; $56c4: $f0 $ff
    rst $38                                       ; $56c6: $ff
    rst $38                                       ; $56c7: $ff
    nop                                           ; $56c8: $00
    rst $38                                       ; $56c9: $ff
    ld a, a                                       ; $56ca: $7f
    rst $38                                       ; $56cb: $ff
    ret nz                                        ; $56cc: $c0

    rst $38                                       ; $56cd: $ff
    sbc c                                         ; $56ce: $99
    rst $38                                       ; $56cf: $ff
    jr jr_074_56d2                                ; $56d0: $18 $00

jr_074_56d2:
    ret nz                                        ; $56d2: $c0

    nop                                           ; $56d3: $00
    ld b, $00                                     ; $56d4: $06 $00
    ret nz                                        ; $56d6: $c0

    nop                                           ; $56d7: $00
    ld a, b                                       ; $56d8: $78

jr_074_56d9:
    nop                                           ; $56d9: $00
    nop                                           ; $56da: $00
    nop                                           ; $56db: $00
    rlca                                          ; $56dc: $07
    nop                                           ; $56dd: $00
    ret nz                                        ; $56de: $c0

    nop                                           ; $56df: $00
    ld b, $00                                     ; $56e0: $06 $00
    inc c                                         ; $56e2: $0c
    nop                                           ; $56e3: $00
    nop                                           ; $56e4: $00
    nop                                           ; $56e5: $00
    di                                            ; $56e6: $f3
    nop                                           ; $56e7: $00
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    inc bc                                        ; $56ea: $03
    nop                                           ; $56eb: $00
    ldh [rP1], a                                  ; $56ec: $e0 $00
    inc bc                                        ; $56ee: $03
    nop                                           ; $56ef: $00
    rlca                                          ; $56f0: $07
    nop                                           ; $56f1: $00
    rst $38                                       ; $56f2: $ff
    nop                                           ; $56f3: $00
    sbc c                                         ; $56f4: $99
    nop                                           ; $56f5: $00
    rst $38                                       ; $56f6: $ff
    nop                                           ; $56f7: $00
    rra                                           ; $56f8: $1f
    nop                                           ; $56f9: $00
    db $fc                                        ; $56fa: $fc
    nop                                           ; $56fb: $00
    rst $38                                       ; $56fc: $ff
    nop                                           ; $56fd: $00
    rst $38                                       ; $56fe: $ff
    nop                                           ; $56ff: $00
    cp $00                                        ; $5700: $fe $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    sbc a                                         ; $5704: $9f
    nop                                           ; $5705: $00
    jr nc, jr_074_5708                            ; $5706: $30 $00

jr_074_5708:
    cp $00                                        ; $5708: $fe $00
    rst $38                                       ; $570a: $ff
    nop                                           ; $570b: $00
    rst $38                                       ; $570c: $ff
    nop                                           ; $570d: $00
    rst $38                                       ; $570e: $ff
    nop                                           ; $570f: $00
    ld b, $00                                     ; $5710: $06 $00
    inc a                                         ; $5712: $3c
    nop                                           ; $5713: $00
    ld e, $00                                     ; $5714: $1e $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    ld a, c                                       ; $5718: $79
    nop                                           ; $5719: $00
    di                                            ; $571a: $f3
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    inc bc                                        ; $571e: $03

jr_074_571f:
    nop                                           ; $571f: $00
    jr jr_074_5722                                ; $5720: $18 $00

jr_074_5722:
    ret nz                                        ; $5722: $c0

    nop                                           ; $5723: $00
    ld h, [hl]                                    ; $5724: $66
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    ldh [rP1], a                                  ; $5728: $e0 $00
    rrca                                          ; $572a: $0f
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    rst $38                                       ; $572e: $ff
    nop                                           ; $572f: $00
    ld hl, sp+$00                                 ; $5730: $f8 $00
    rrca                                          ; $5732: $0f
    nop                                           ; $5733: $00
    rst $38                                       ; $5734: $ff
    nop                                           ; $5735: $00
    di                                            ; $5736: $f3
    nop                                           ; $5737: $00
    rst $38                                       ; $5738: $ff
    nop                                           ; $5739: $00
    call z, $ff00                                 ; $573a: $cc $00 $ff
    nop                                           ; $573d: $00
    inc a                                         ; $573e: $3c
    nop                                           ; $573f: $00
    rra                                           ; $5740: $1f
    nop                                           ; $5741: $00
    ret nz                                        ; $5742: $c0

    nop                                           ; $5743: $00
    rst $38                                       ; $5744: $ff
    nop                                           ; $5745: $00
    inc bc                                        ; $5746: $03
    nop                                           ; $5747: $00
    sbc a                                         ; $5748: $9f
    nop                                           ; $5749: $00
    inc sp                                        ; $574a: $33
    nop                                           ; $574b: $00
    sbc a                                         ; $574c: $9f
    nop                                           ; $574d: $00
    db $fc                                        ; $574e: $fc
    nop                                           ; $574f: $00
    rst $20                                       ; $5750: $e7

jr_074_5751:
    jr jr_074_571f                                ; $5751: $18 $cc

    inc sp                                        ; $5753: $33
    cp $01                                        ; $5754: $fe $01
    rst $08                                       ; $5756: $cf
    jr nc, jr_074_5751                            ; $5757: $30 $f8

    rlca                                          ; $5759: $07
    rst $38                                       ; $575a: $ff
    nop                                           ; $575b: $00
    ld h, c                                       ; $575c: $61
    sbc [hl]                                      ; $575d: $9e
    rst $38                                       ; $575e: $ff
    nop                                           ; $575f: $00
    sbc a                                         ; $5760: $9f
    ld h, b                                       ; $5761: $60
    di                                            ; $5762: $f3
    inc c                                         ; $5763: $0c
    rra                                           ; $5764: $1f
    ldh [rIE], a                                  ; $5765: $e0 $ff
    nop                                           ; $5767: $00
    ld a, c                                       ; $5768: $79
    add [hl]                                      ; $5769: $86
    ldh a, [rIF]                                  ; $576a: $f0 $0f
    sbc b                                         ; $576c: $98
    ld h, a                                       ; $576d: $67
    inc sp                                        ; $576e: $33
    call z, $fc03                                 ; $576f: $cc $03 $fc
    ld a, b                                       ; $5772: $78
    add a                                         ; $5773: $87
    inc a                                         ; $5774: $3c
    jp Jump_074_7f80                              ; $5775: $c3 $80 $7f


    nop                                           ; $5778: $00
    rst $38                                       ; $5779: $ff
    ld bc, $30fe                                  ; $577a: $01 $fe $30
    rst $08                                       ; $577d: $cf
    ld bc, $f0fe                                  ; $577e: $01 $fe $f0
    rrca                                          ; $5781: $0f
    ld h, [hl]                                    ; $5782: $66
    sbc c                                         ; $5783: $99
    nop                                           ; $5784: $00
    rst $38                                       ; $5785: $ff
    ld a, a                                       ; $5786: $7f
    add b                                         ; $5787: $80
    nop                                           ; $5788: $00
    rst $38                                       ; $5789: $ff
    and $19                                       ; $578a: $e6 $19
    inc sp                                        ; $578c: $33
    call z, Call_074_7f80                         ; $578d: $cc $80 $7f
    nop                                           ; $5790: $00
    rst $38                                       ; $5791: $ff
    sbc c                                         ; $5792: $99
    rst $38                                       ; $5793: $ff
    nop                                           ; $5794: $00
    rst $38                                       ; $5795: $ff
    ldh [rIE], a                                  ; $5796: $e0 $ff
    inc a                                         ; $5798: $3c
    rst $38                                       ; $5799: $ff
    add b                                         ; $579a: $80
    rst $38                                       ; $579b: $ff
    inc bc                                        ; $579c: $03
    rst $38                                       ; $579d: $ff
    ldh [rIE], a                                  ; $579e: $e0 $ff
    jr nc, @+$01                                  ; $57a0: $30 $ff

    add a                                         ; $57a2: $87
    rst $38                                       ; $57a3: $ff
    nop                                           ; $57a4: $00
    rst $38                                       ; $57a5: $ff
    ld a, c                                       ; $57a6: $79
    rst $38                                       ; $57a7: $ff
    nop                                           ; $57a8: $00
    rst $38                                       ; $57a9: $ff
    ld bc, $f0ff                                  ; $57aa: $01 $ff $f0
    rst $38                                       ; $57ad: $ff
    ld bc, $03ff                                  ; $57ae: $01 $ff $03
    rst $38                                       ; $57b1: $ff
    ld a, a                                       ; $57b2: $7f
    rst $38                                       ; $57b3: $ff
    call z, Call_074_7fff                         ; $57b4: $cc $ff $7f
    rst $38                                       ; $57b7: $ff
    ccf                                           ; $57b8: $3f
    rst $38                                       ; $57b9: $ff
    ld sp, hl                                     ; $57ba: $f9
    rst $38                                       ; $57bb: $ff
    rst $38                                       ; $57bc: $ff
    rst $38                                       ; $57bd: $ff
    cp $ff                                        ; $57be: $fe $ff
    rst $38                                       ; $57c0: $ff
    rst $38                                       ; $57c1: $ff
    add b                                         ; $57c2: $80
    rst $38                                       ; $57c3: $ff
    rst $08                                       ; $57c4: $cf
    rst $38                                       ; $57c5: $ff
    sbc b                                         ; $57c6: $98
    rst $38                                       ; $57c7: $ff
    rst $38                                       ; $57c8: $ff
    rst $38                                       ; $57c9: $ff
    sbc c                                         ; $57ca: $99
    rst $38                                       ; $57cb: $ff
    call z, Call_074_79ff                         ; $57cc: $cc $ff $79
    rst $38                                       ; $57cf: $ff
    inc bc                                        ; $57d0: $03
    nop                                           ; $57d1: $00
    ld h, [hl]                                    ; $57d2: $66
    nop                                           ; $57d3: $00
    inc bc                                        ; $57d4: $03
    nop                                           ; $57d5: $00
    ld b, $00                                     ; $57d6: $06 $00
    ret nz                                        ; $57d8: $c0

    nop                                           ; $57d9: $00
    ldh [rP1], a                                  ; $57da: $e0 $00
    di                                            ; $57dc: $f3
    nop                                           ; $57dd: $00
    add b                                         ; $57de: $80
    nop                                           ; $57df: $00
    inc bc                                        ; $57e0: $03
    nop                                           ; $57e1: $00
    ld h, b                                       ; $57e2: $60
    nop                                           ; $57e3: $00
    inc a                                         ; $57e4: $3c
    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    nop                                           ; $57e7: $00
    ldh a, [rP1]                                  ; $57e8: $f0 $00
    ld bc, $cc00                                  ; $57ea: $01 $00 $cc
    nop                                           ; $57ed: $00
    add hl, de                                    ; $57ee: $19
    nop                                           ; $57ef: $00
    rra                                           ; $57f0: $1f
    nop                                           ; $57f1: $00
    inc sp                                        ; $57f2: $33
    nop                                           ; $57f3: $00
    rst $38                                       ; $57f4: $ff
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    nop                                           ; $57f7: $00
    rst $38                                       ; $57f8: $ff
    nop                                           ; $57f9: $00
    ccf                                           ; $57fa: $3f
    nop                                           ; $57fb: $00
    pop hl                                        ; $57fc: $e1
    nop                                           ; $57fd: $00
    rst $38                                       ; $57fe: $ff
    nop                                           ; $57ff: $00
    ld hl, sp+$00                                 ; $5800: $f8 $00
    rrca                                          ; $5802: $0f
    nop                                           ; $5803: $00
    add a                                         ; $5804: $87
    nop                                           ; $5805: $00
    rst $38                                       ; $5806: $ff
    nop                                           ; $5807: $00
    rst $38                                       ; $5808: $ff
    nop                                           ; $5809: $00
    db $fc                                        ; $580a: $fc
    nop                                           ; $580b: $00
    rst $20                                       ; $580c: $e7
    nop                                           ; $580d: $00
    db $fc                                        ; $580e: $fc
    nop                                           ; $580f: $00
    sbc a                                         ; $5810: $9f
    ld h, b                                       ; $5811: $60
    inc a                                         ; $5812: $3c
    jp Jump_000_18e7                              ; $5813: $c3 $e7 $18


    inc c                                         ; $5816: $0c
    di                                            ; $5817: $f3
    rst $38                                       ; $5818: $ff
    nop                                           ; $5819: $00
    db $fc                                        ; $581a: $fc
    inc bc                                        ; $581b: $03
    rra                                           ; $581c: $1f
    ldh [$fc], a                                  ; $581d: $e0 $fc
    inc bc                                        ; $581f: $03
    rst $38                                       ; $5820: $ff
    nop                                           ; $5821: $00
    di                                            ; $5822: $f3
    inc c                                         ; $5823: $0c
    ld sp, hl                                     ; $5824: $f9
    ld b, $3f                                     ; $5825: $06 $3f
    ret nz                                        ; $5827: $c0

    add a                                         ; $5828: $87
    ld a, b                                       ; $5829: $78
    rst $38                                       ; $582a: $ff
    nop                                           ; $582b: $00
    ld hl, sp+$07                                 ; $582c: $f8 $07
    ccf                                           ; $582e: $3f
    ret nz                                        ; $582f: $c0

    ld bc, $fffe                                  ; $5830: $01 $fe $ff
    nop                                           ; $5833: $00
    ld h, b                                       ; $5834: $60
    sbc a                                         ; $5835: $9f
    rst $08                                       ; $5836: $cf
    jr nc, @+$62                                  ; $5837: $30 $60

    sbc a                                         ; $5839: $9f
    nop                                           ; $583a: $00
    rst $38                                       ; $583b: $ff
    ld h, b                                       ; $583c: $60
    sbc a                                         ; $583d: $9f
    nop                                           ; $583e: $00
    rst $38                                       ; $583f: $ff
    ld hl, sp+$07                                 ; $5840: $f8 $07
    nop                                           ; $5842: $00
    rst $38                                       ; $5843: $ff
    ld h, [hl]                                    ; $5844: $66
    sbc c                                         ; $5845: $99
    nop                                           ; $5846: $00
    rst $38                                       ; $5847: $ff
    nop                                           ; $5848: $00
    rst $38                                       ; $5849: $ff
    rrca                                          ; $584a: $0f
    ldh a, [rP1]                                  ; $584b: $f0 $00
    rst $38                                       ; $584d: $ff
    inc bc                                        ; $584e: $03
    db $fc                                        ; $584f: $fc
    ld h, c                                       ; $5850: $61
    rst $38                                       ; $5851: $ff
    inc c                                         ; $5852: $0c
    rst $38                                       ; $5853: $ff
    ld a, a                                       ; $5854: $7f
    rst $38                                       ; $5855: $ff
    nop                                           ; $5856: $00
    rst $38                                       ; $5857: $ff
    add [hl]                                      ; $5858: $86
    rst $38                                       ; $5859: $ff
    inc c                                         ; $585a: $0c
    rst $38                                       ; $585b: $ff
    rst $38                                       ; $585c: $ff
    rst $38                                       ; $585d: $ff
    nop                                           ; $585e: $00
    rst $38                                       ; $585f: $ff
    add b                                         ; $5860: $80
    rst $38                                       ; $5861: $ff
    inc bc                                        ; $5862: $03
    rst $38                                       ; $5863: $ff
    add b                                         ; $5864: $80
    rst $38                                       ; $5865: $ff
    nop                                           ; $5866: $00
    rst $38                                       ; $5867: $ff
    ld h, a                                       ; $5868: $67
    rst $38                                       ; $5869: $ff
    ret nz                                        ; $586a: $c0

    rst $38                                       ; $586b: $ff
    add a                                         ; $586c: $87
    rst $38                                       ; $586d: $ff
    nop                                           ; $586e: $00
    rst $38                                       ; $586f: $ff
    ld a, c                                       ; $5870: $79
    rst $38                                       ; $5871: $ff
    rst $38                                       ; $5872: $ff
    rst $38                                       ; $5873: $ff
    ld h, a                                       ; $5874: $67
    rst $38                                       ; $5875: $ff
    rrca                                          ; $5876: $0f
    rst $38                                       ; $5877: $ff
    cp $ff                                        ; $5878: $fe $ff
    db $fc                                        ; $587a: $fc
    rst $38                                       ; $587b: $ff
    sbc a                                         ; $587c: $9f
    rst $38                                       ; $587d: $ff
    rst $38                                       ; $587e: $ff
    rst $38                                       ; $587f: $ff
    add b                                         ; $5880: $80
    rst $38                                       ; $5881: $ff
    inc a                                         ; $5882: $3c
    rst $38                                       ; $5883: $ff
    ldh [rIE], a                                  ; $5884: $e0 $ff
    rst $38                                       ; $5886: $ff
    rst $38                                       ; $5887: $ff
    ld bc, $ffff                                  ; $5888: $01 $ff $ff
    rst $38                                       ; $588b: $ff
    add c                                         ; $588c: $81
    rst $38                                       ; $588d: $ff
    inc sp                                        ; $588e: $33
    rst $38                                       ; $588f: $ff
    jr nc, jr_074_5892                            ; $5890: $30 $00

jr_074_5892:
    add b                                         ; $5892: $80
    nop                                           ; $5893: $00
    inc c                                         ; $5894: $0c
    nop                                           ; $5895: $00
    add c                                         ; $5896: $81
    nop                                           ; $5897: $00
    ldh a, [rP1]                                  ; $5898: $f0 $00
    nop                                           ; $589a: $00
    nop                                           ; $589b: $00
    rrca                                          ; $589c: $0f
    nop                                           ; $589d: $00
    add b                                         ; $589e: $80
    nop                                           ; $589f: $00
    inc c                                         ; $58a0: $0c
    nop                                           ; $58a1: $00
    add hl, de                                    ; $58a2: $19
    nop                                           ; $58a3: $00
    nop                                           ; $58a4: $00
    nop                                           ; $58a5: $00
    rst $20                                       ; $58a6: $e7
    nop                                           ; $58a7: $00
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    ld b, $00                                     ; $58aa: $06 $00

jr_074_58ac:
    ret nz                                        ; $58ac: $c0

    nop                                           ; $58ad: $00
    rlca                                          ; $58ae: $07
    nop                                           ; $58af: $00
    rrca                                          ; $58b0: $0f
    nop                                           ; $58b1: $00
    cp $00                                        ; $58b2: $fe $00
    inc sp                                        ; $58b4: $33
    nop                                           ; $58b5: $00
    cp $00                                        ; $58b6: $fe $00
    ccf                                           ; $58b8: $3f
    nop                                           ; $58b9: $00
    ld sp, hl                                     ; $58ba: $f9
    nop                                           ; $58bb: $00
    rst $38                                       ; $58bc: $ff
    nop                                           ; $58bd: $00
    rst $38                                       ; $58be: $ff
    nop                                           ; $58bf: $00
    db $fc                                        ; $58c0: $fc
    nop                                           ; $58c1: $00
    ld bc, $3f00                                  ; $58c2: $01 $00 $3f
    nop                                           ; $58c5: $00
    ld h, c                                       ; $58c6: $61
    nop                                           ; $58c7: $00
    db $fc                                        ; $58c8: $fc
    nop                                           ; $58c9: $00
    rst $38                                       ; $58ca: $ff
    nop                                           ; $58cb: $00
    rst $38                                       ; $58cc: $ff
    nop                                           ; $58cd: $00
    rst $38                                       ; $58ce: $ff
    nop                                           ; $58cf: $00
    inc c                                         ; $58d0: $0c
    nop                                           ; $58d1: $00
    ld a, c                                       ; $58d2: $79
    nop                                           ; $58d3: $00
    inc a                                         ; $58d4: $3c
    nop                                           ; $58d5: $00
    nop                                           ; $58d6: $00
    nop                                           ; $58d7: $00
    di                                            ; $58d8: $f3
    nop                                           ; $58d9: $00
    and $00                                       ; $58da: $e6 $00
    nop                                           ; $58dc: $00
    nop                                           ; $58dd: $00
    rlca                                          ; $58de: $07
    nop                                           ; $58df: $00
    jr nc, jr_074_58e2                            ; $58e0: $30 $00

jr_074_58e2:
    add b                                         ; $58e2: $80
    nop                                           ; $58e3: $00
    call z, RST_00                                ; $58e4: $cc $00 $00
    nop                                           ; $58e7: $00
    ret nz                                        ; $58e8: $c0

    nop                                           ; $58e9: $00
    rra                                           ; $58ea: $1f
    nop                                           ; $58eb: $00
    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    cp $00                                        ; $58ee: $fe $00
    ldh a, [rP1]                                  ; $58f0: $f0 $00
    rra                                           ; $58f2: $1f
    nop                                           ; $58f3: $00
    rst $38                                       ; $58f4: $ff
    nop                                           ; $58f5: $00
    and $00                                       ; $58f6: $e6 $00
    rst $38                                       ; $58f8: $ff
    nop                                           ; $58f9: $00
    sbc b                                         ; $58fa: $98
    nop                                           ; $58fb: $00
    rst $38                                       ; $58fc: $ff
    nop                                           ; $58fd: $00
    ld a, c                                       ; $58fe: $79
    nop                                           ; $58ff: $00
    ccf                                           ; $5900: $3f
    nop                                           ; $5901: $00
    add b                                         ; $5902: $80
    nop                                           ; $5903: $00
    rst $38                                       ; $5904: $ff
    nop                                           ; $5905: $00
    rlca                                          ; $5906: $07
    nop                                           ; $5907: $00
    ccf                                           ; $5908: $3f
    nop                                           ; $5909: $00
    ld h, a                                       ; $590a: $67
    nop                                           ; $590b: $00
    ccf                                           ; $590c: $3f
    nop                                           ; $590d: $00
    ld hl, sp+$00                                 ; $590e: $f8 $00
    rst $08                                       ; $5910: $cf
    jr nc, jr_074_58ac                            ; $5911: $30 $99

    ld h, [hl]                                    ; $5913: $66
    db $fc                                        ; $5914: $fc
    inc bc                                        ; $5915: $03
    sbc a                                         ; $5916: $9f
    ld h, b                                       ; $5917: $60
    ldh a, [rIF]                                  ; $5918: $f0 $0f
    rst $38                                       ; $591a: $ff
    nop                                           ; $591b: $00
    jp $fe3c                                      ; $591c: $c3 $3c $fe


    ld bc, $c03f                                  ; $591f: $01 $3f $c0
    rst $20                                       ; $5922: $e7
    jr jr_074_5964                                ; $5923: $18 $3f

    ret nz                                        ; $5925: $c0

    rst $38                                       ; $5926: $ff
    nop                                           ; $5927: $00
    di                                            ; $5928: $f3
    inc c                                         ; $5929: $0c
    pop hl                                        ; $592a: $e1
    ld e, $30                                     ; $592b: $1e $30
    rst $08                                       ; $592d: $cf
    ld h, a                                       ; $592e: $67
    sbc b                                         ; $592f: $98
    rlca                                          ; $5930: $07
    ld hl, sp-$10                                 ; $5931: $f8 $f0
    rrca                                          ; $5933: $0f
    ld a, b                                       ; $5934: $78
    add a                                         ; $5935: $87
    nop                                           ; $5936: $00
    rst $38                                       ; $5937: $ff
    nop                                           ; $5938: $00
    rst $38                                       ; $5939: $ff
    inc bc                                        ; $593a: $03
    db $fc                                        ; $593b: $fc
    ld h, b                                       ; $593c: $60
    sbc a                                         ; $593d: $9f
    inc bc                                        ; $593e: $03
    db $fc                                        ; $593f: $fc
    ldh [$1f], a                                  ; $5940: $e0 $1f
    call z, $0033                                 ; $5942: $cc $33 $00
    rst $38                                       ; $5945: $ff
    rst $38                                       ; $5946: $ff
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    rst $38                                       ; $5949: $ff
    call z, Call_074_6633                         ; $594a: $cc $33 $66
    sbc c                                         ; $594d: $99
    nop                                           ; $594e: $00
    rst $38                                       ; $594f: $ff
    nop                                           ; $5950: $00
    rst $38                                       ; $5951: $ff
    inc sp                                        ; $5952: $33
    rst $38                                       ; $5953: $ff
    nop                                           ; $5954: $00
    rst $38                                       ; $5955: $ff
    ret nz                                        ; $5956: $c0

    rst $38                                       ; $5957: $ff
    ld a, b                                       ; $5958: $78
    rst $38                                       ; $5959: $ff
    nop                                           ; $595a: $00
    rst $38                                       ; $595b: $ff
    rlca                                          ; $595c: $07
    rst $38                                       ; $595d: $ff
    ret nz                                        ; $595e: $c0

    rst $38                                       ; $595f: $ff
    ld h, b                                       ; $5960: $60
    rst $38                                       ; $5961: $ff
    rrca                                          ; $5962: $0f
    rst $38                                       ; $5963: $ff

jr_074_5964:
    nop                                           ; $5964: $00
    rst $38                                       ; $5965: $ff
    di                                            ; $5966: $f3
    rst $38                                       ; $5967: $ff
    nop                                           ; $5968: $00
    rst $38                                       ; $5969: $ff
    inc bc                                        ; $596a: $03
    rst $38                                       ; $596b: $ff
    ldh [rIE], a                                  ; $596c: $e0 $ff
    inc bc                                        ; $596e: $03
    rst $38                                       ; $596f: $ff
    rlca                                          ; $5970: $07
    rst $38                                       ; $5971: $ff
    rst $38                                       ; $5972: $ff
    rst $38                                       ; $5973: $ff
    sbc c                                         ; $5974: $99
    rst $38                                       ; $5975: $ff
    rst $38                                       ; $5976: $ff
    rst $38                                       ; $5977: $ff
    ld a, a                                       ; $5978: $7f
    rst $38                                       ; $5979: $ff
    di                                            ; $597a: $f3
    rst $38                                       ; $597b: $ff
    rst $38                                       ; $597c: $ff
    rst $38                                       ; $597d: $ff
    db $fc                                        ; $597e: $fc
    rst $38                                       ; $597f: $ff
    cp $ff                                        ; $5980: $fe $ff
    nop                                           ; $5982: $00
    rst $38                                       ; $5983: $ff
    sbc a                                         ; $5984: $9f
    rst $38                                       ; $5985: $ff
    jr nc, @+$01                                  ; $5986: $30 $ff

    cp $ff                                        ; $5988: $fe $ff
    inc sp                                        ; $598a: $33
    rst $38                                       ; $598b: $ff
    sbc c                                         ; $598c: $99
    rst $38                                       ; $598d: $ff
    di                                            ; $598e: $f3
    rst $38                                       ; $598f: $ff
    ld b, $00                                     ; $5990: $06 $00
    call z, $0600                                 ; $5992: $cc $00 $06
    nop                                           ; $5995: $00
    inc c                                         ; $5996: $0c
    nop                                           ; $5997: $00
    add c                                         ; $5998: $81
    nop                                           ; $5999: $00
    ret nz                                        ; $599a: $c0

    nop                                           ; $599b: $00
    rst $20                                       ; $599c: $e7
    nop                                           ; $599d: $00
    nop                                           ; $599e: $00
    nop                                           ; $599f: $00
    ld b, $00                                     ; $59a0: $06 $00
    ret nz                                        ; $59a2: $c0

    nop                                           ; $59a3: $00
    ld a, b                                       ; $59a4: $78
    nop                                           ; $59a5: $00
    nop                                           ; $59a6: $00
    nop                                           ; $59a7: $00
    pop hl                                        ; $59a8: $e1
    nop                                           ; $59a9: $00
    inc bc                                        ; $59aa: $03
    nop                                           ; $59ab: $00
    sbc c                                         ; $59ac: $99
    nop                                           ; $59ad: $00
    inc sp                                        ; $59ae: $33
    nop                                           ; $59af: $00
    ccf                                           ; $59b0: $3f
    nop                                           ; $59b1: $00
    ld h, [hl]                                    ; $59b2: $66
    nop                                           ; $59b3: $00
    rst $38                                       ; $59b4: $ff
    nop                                           ; $59b5: $00
    ld bc, $ff00                                  ; $59b6: $01 $00 $ff
    nop                                           ; $59b9: $00
    ld a, a                                       ; $59ba: $7f
    nop                                           ; $59bb: $00
    jp $ff00                                      ; $59bc: $c3 $00 $ff


    nop                                           ; $59bf: $00
    ldh a, [rP1]                                  ; $59c0: $f0 $00
    ld e, $00                                     ; $59c2: $1e $00
    rrca                                          ; $59c4: $0f
    nop                                           ; $59c5: $00
    cp $00                                        ; $59c6: $fe $00
    rst $38                                       ; $59c8: $ff
    nop                                           ; $59c9: $00
    ld hl, sp+$00                                 ; $59ca: $f8 $00
    rst $08                                       ; $59cc: $cf
    nop                                           ; $59cd: $00
    ld sp, hl                                     ; $59ce: $f9
    nop                                           ; $59cf: $00
    ccf                                           ; $59d0: $3f
    ret nz                                        ; $59d1: $c0

    ld a, c                                       ; $59d2: $79
    add [hl]                                      ; $59d3: $86
    rst $08                                       ; $59d4: $cf
    jr nc, jr_074_59ef                            ; $59d5: $30 $18

    rst $20                                       ; $59d7: $e7
    rst $38                                       ; $59d8: $ff
    nop                                           ; $59d9: $00
    ld sp, hl                                     ; $59da: $f9
    ld b, $3f                                     ; $59db: $06 $3f
    ret nz                                        ; $59dd: $c0

    ld hl, sp+$07                                 ; $59de: $f8 $07
    rst $38                                       ; $59e0: $ff
    nop                                           ; $59e1: $00
    and $19                                       ; $59e2: $e6 $19
    di                                            ; $59e4: $f3
    inc c                                         ; $59e5: $0c
    ld a, [hl]                                    ; $59e6: $7e
    add c                                         ; $59e7: $81
    rrca                                          ; $59e8: $0f
    ldh a, [rIE]                                  ; $59e9: $f0 $ff
    nop                                           ; $59eb: $00
    ldh a, [rIF]                                  ; $59ec: $f0 $0f
    ld a, a                                       ; $59ee: $7f

jr_074_59ef:
    add b                                         ; $59ef: $80
    inc bc                                        ; $59f0: $03
    db $fc                                        ; $59f1: $fc
    cp $01                                        ; $59f2: $fe $01
    ret nz                                        ; $59f4: $c0

    ccf                                           ; $59f5: $3f
    sbc [hl]                                      ; $59f6: $9e
    ld h, c                                       ; $59f7: $61
    ret nz                                        ; $59f8: $c0

    ccf                                           ; $59f9: $3f
    nop                                           ; $59fa: $00
    rst $38                                       ; $59fb: $ff
    ret nz                                        ; $59fc: $c0

    ccf                                           ; $59fd: $3f
    nop                                           ; $59fe: $00
    rst $38                                       ; $59ff: $ff
    ldh a, [rIF]                                  ; $5a00: $f0 $0f
    ld bc, $ccfe                                  ; $5a02: $01 $fe $cc
    inc sp                                        ; $5a05: $33
    ld bc, $00fe                                  ; $5a06: $01 $fe $00
    rst $38                                       ; $5a09: $ff
    ld e, $e1                                     ; $5a0a: $1e $e1
    nop                                           ; $5a0c: $00
    rst $38                                       ; $5a0d: $ff
    ld b, $f9                                     ; $5a0e: $06 $f9
    jp Jump_000_18ff                              ; $5a10: $c3 $ff $18


    rst $38                                       ; $5a13: $ff
    rst $38                                       ; $5a14: $ff
    rst $38                                       ; $5a15: $ff
    nop                                           ; $5a16: $00
    rst $38                                       ; $5a17: $ff
    inc c                                         ; $5a18: $0c
    rst $38                                       ; $5a19: $ff
    add hl, de                                    ; $5a1a: $19
    rst $38                                       ; $5a1b: $ff
    rst $38                                       ; $5a1c: $ff
    rst $38                                       ; $5a1d: $ff
    nop                                           ; $5a1e: $00
    rst $38                                       ; $5a1f: $ff
    nop                                           ; $5a20: $00
    rst $38                                       ; $5a21: $ff
    ld b, $ff                                     ; $5a22: $06 $ff
    nop                                           ; $5a24: $00
    rst $38                                       ; $5a25: $ff
    nop                                           ; $5a26: $00
    rst $38                                       ; $5a27: $ff
    rst $08                                       ; $5a28: $cf
    rst $38                                       ; $5a29: $ff
    add b                                         ; $5a2a: $80
    rst $38                                       ; $5a2b: $ff
    rrca                                          ; $5a2c: $0f
    rst $38                                       ; $5a2d: $ff
    nop                                           ; $5a2e: $00
    rst $38                                       ; $5a2f: $ff
    di                                            ; $5a30: $f3
    rst $38                                       ; $5a31: $ff
    cp $ff                                        ; $5a32: $fe $ff
    rst $08                                       ; $5a34: $cf
    rst $38                                       ; $5a35: $ff
    rra                                           ; $5a36: $1f
    rst $38                                       ; $5a37: $ff
    db $fc                                        ; $5a38: $fc
    rst $38                                       ; $5a39: $ff
    ld sp, hl                                     ; $5a3a: $f9
    rst $38                                       ; $5a3b: $ff
    ccf                                           ; $5a3c: $3f
    rst $38                                       ; $5a3d: $ff
    cp $ff                                        ; $5a3e: $fe $ff
    nop                                           ; $5a40: $00
    rst $38                                       ; $5a41: $ff
    ld a, c                                       ; $5a42: $79
    rst $38                                       ; $5a43: $ff
    ret nz                                        ; $5a44: $c0

    rst $38                                       ; $5a45: $ff
    cp $ff                                        ; $5a46: $fe $ff
    inc bc                                        ; $5a48: $03
    rst $38                                       ; $5a49: $ff
    rst $38                                       ; $5a4a: $ff
    rst $38                                       ; $5a4b: $ff
    inc bc                                        ; $5a4c: $03
    rst $38                                       ; $5a4d: $ff
    ld h, a                                       ; $5a4e: $67
    rst $38                                       ; $5a4f: $ff
    ld h, b                                       ; $5a50: $60
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    nop                                           ; $5a53: $00
    jr jr_074_5a56                                ; $5a54: $18 $00

jr_074_5a56:
    inc bc                                        ; $5a56: $03
    nop                                           ; $5a57: $00
    ldh [rP1], a                                  ; $5a58: $e0 $00
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00
    rra                                           ; $5a5c: $1f
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    jr jr_074_5a62                                ; $5a60: $18 $00

jr_074_5a62:
    inc sp                                        ; $5a62: $33
    nop                                           ; $5a63: $00
    nop                                           ; $5a64: $00
    nop                                           ; $5a65: $00
    rst $08                                       ; $5a66: $cf
    nop                                           ; $5a67: $00
    ld bc, $0c00                                  ; $5a68: $01 $00 $0c
    nop                                           ; $5a6b: $00
    add b                                         ; $5a6c: $80
    nop                                           ; $5a6d: $00
    rrca                                          ; $5a6e: $0f
    nop                                           ; $5a6f: $00
    rra                                           ; $5a70: $1f
    nop                                           ; $5a71: $00
    db $fc                                        ; $5a72: $fc
    nop                                           ; $5a73: $00
    ld h, [hl]                                    ; $5a74: $66
    nop                                           ; $5a75: $00
    db $fc                                        ; $5a76: $fc
    nop                                           ; $5a77: $00
    ld a, a                                       ; $5a78: $7f
    nop                                           ; $5a79: $00
    di                                            ; $5a7a: $f3
    nop                                           ; $5a7b: $00
    rst $38                                       ; $5a7c: $ff
    nop                                           ; $5a7d: $00
    rst $38                                       ; $5a7e: $ff
    nop                                           ; $5a7f: $00
    ld hl, sp+$00                                 ; $5a80: $f8 $00
    inc bc                                        ; $5a82: $03
    nop                                           ; $5a83: $00
    ld a, [hl]                                    ; $5a84: $7e
    nop                                           ; $5a85: $00
    jp $f800                                      ; $5a86: $c3 $00 $f8


    nop                                           ; $5a89: $00
    rst $38                                       ; $5a8a: $ff
    nop                                           ; $5a8b: $00
    rst $38                                       ; $5a8c: $ff
    nop                                           ; $5a8d: $00
    rst $38                                       ; $5a8e: $ff
    nop                                           ; $5a8f: $00
    jr jr_074_5a92                                ; $5a90: $18 $00

jr_074_5a92:
    di                                            ; $5a92: $f3
    nop                                           ; $5a93: $00
    ld a, c                                       ; $5a94: $79
    nop                                           ; $5a95: $00
    nop                                           ; $5a96: $00
    nop                                           ; $5a97: $00
    rst $20                                       ; $5a98: $e7
    nop                                           ; $5a99: $00
    call z, RST_00                                ; $5a9a: $cc $00 $00
    nop                                           ; $5a9d: $00
    rrca                                          ; $5a9e: $0f
    nop                                           ; $5a9f: $00
    ld h, b                                       ; $5aa0: $60
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    sbc b                                         ; $5aa4: $98
    nop                                           ; $5aa5: $00
    nop                                           ; $5aa6: $00
    nop                                           ; $5aa7: $00
    add c                                         ; $5aa8: $81
    nop                                           ; $5aa9: $00
    ccf                                           ; $5aaa: $3f
    nop                                           ; $5aab: $00
    nop                                           ; $5aac: $00
    nop                                           ; $5aad: $00

jr_074_5aae:
    db $fc                                        ; $5aae: $fc
    nop                                           ; $5aaf: $00
    ldh [rP1], a                                  ; $5ab0: $e0 $00
    ccf                                           ; $5ab2: $3f
    nop                                           ; $5ab3: $00
    rst $38                                       ; $5ab4: $ff
    nop                                           ; $5ab5: $00
    call z, $fe00                                 ; $5ab6: $cc $00 $fe
    nop                                           ; $5ab9: $00
    jr nc, jr_074_5abc                            ; $5aba: $30 $00

jr_074_5abc:
    cp $00                                        ; $5abc: $fe $00
    di                                            ; $5abe: $f3
    nop                                           ; $5abf: $00
    ld a, a                                       ; $5ac0: $7f
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    rst $38                                       ; $5ac4: $ff
    nop                                           ; $5ac5: $00
    rrca                                          ; $5ac6: $0f
    nop                                           ; $5ac7: $00
    ld a, a                                       ; $5ac8: $7f
    nop                                           ; $5ac9: $00
    rst $08                                       ; $5aca: $cf
    nop                                           ; $5acb: $00
    ld a, a                                       ; $5acc: $7f
    nop                                           ; $5acd: $00
    ldh a, [rP1]                                  ; $5ace: $f0 $00
    sbc [hl]                                      ; $5ad0: $9e
    ld h, c                                       ; $5ad1: $61
    inc sp                                        ; $5ad2: $33
    call z, $07f8                                 ; $5ad3: $cc $f8 $07
    ccf                                           ; $5ad6: $3f
    ret nz                                        ; $5ad7: $c0

    pop hl                                        ; $5ad8: $e1
    ld e, $ff                                     ; $5ad9: $1e $ff
    nop                                           ; $5adb: $00
    add [hl]                                      ; $5adc: $86
    ld a, c                                       ; $5add: $79
    db $fc                                        ; $5ade: $fc
    inc bc                                        ; $5adf: $03
    ld a, a                                       ; $5ae0: $7f
    add b                                         ; $5ae1: $80
    rst $08                                       ; $5ae2: $cf
    jr nc, jr_074_5b64                            ; $5ae3: $30 $7f

    add b                                         ; $5ae5: $80
    rst $38                                       ; $5ae6: $ff
    nop                                           ; $5ae7: $00
    rst $20                                       ; $5ae8: $e7
    jr jr_074_5aae                                ; $5ae9: $18 $c3

    inc a                                         ; $5aeb: $3c
    ld h, c                                       ; $5aec: $61
    sbc [hl]                                      ; $5aed: $9e
    rst $08                                       ; $5aee: $cf
    jr nc, jr_074_5b00                            ; $5aef: $30 $0f

    ldh a, [$e1]                                  ; $5af1: $f0 $e1
    ld e, $f0                                     ; $5af3: $1e $f0
    rrca                                          ; $5af5: $0f
    ld bc, $00fe                                  ; $5af6: $01 $fe $00
    rst $38                                       ; $5af9: $ff
    rlca                                          ; $5afa: $07
    ld hl, sp-$40                                 ; $5afb: $f8 $c0
    ccf                                           ; $5afd: $3f
    ld b, $f9                                     ; $5afe: $06 $f9

jr_074_5b00:
    ret nz                                        ; $5b00: $c0

    ccf                                           ; $5b01: $3f
    sbc c                                         ; $5b02: $99
    ld h, [hl]                                    ; $5b03: $66
    nop                                           ; $5b04: $00
    rst $38                                       ; $5b05: $ff
    cp $01                                        ; $5b06: $fe $01
    nop                                           ; $5b08: $00
    rst $38                                       ; $5b09: $ff
    sbc b                                         ; $5b0a: $98
    ld h, a                                       ; $5b0b: $67
    call z, $0033                                 ; $5b0c: $cc $33 $00
    rst $38                                       ; $5b0f: $ff
    nop                                           ; $5b10: $00
    rst $38                                       ; $5b11: $ff
    ld h, [hl]                                    ; $5b12: $66
    rst $38                                       ; $5b13: $ff
    nop                                           ; $5b14: $00
    rst $38                                       ; $5b15: $ff
    add c                                         ; $5b16: $81
    rst $38                                       ; $5b17: $ff
    ldh a, [rIE]                                  ; $5b18: $f0 $ff
    nop                                           ; $5b1a: $00
    rst $38                                       ; $5b1b: $ff
    rrca                                          ; $5b1c: $0f
    rst $38                                       ; $5b1d: $ff
    add b                                         ; $5b1e: $80
    rst $38                                       ; $5b1f: $ff
    ret nz                                        ; $5b20: $c0

    rst $38                                       ; $5b21: $ff
    ld e, $ff                                     ; $5b22: $1e $ff
    nop                                           ; $5b24: $00
    rst $38                                       ; $5b25: $ff
    rst $20                                       ; $5b26: $e7
    rst $38                                       ; $5b27: $ff
    nop                                           ; $5b28: $00
    rst $38                                       ; $5b29: $ff
    ld b, $ff                                     ; $5b2a: $06 $ff
    ret nz                                        ; $5b2c: $c0

    rst $38                                       ; $5b2d: $ff
    rlca                                          ; $5b2e: $07
    rst $38                                       ; $5b2f: $ff
    rrca                                          ; $5b30: $0f
    rst $38                                       ; $5b31: $ff
    cp $ff                                        ; $5b32: $fe $ff
    inc sp                                        ; $5b34: $33
    rst $38                                       ; $5b35: $ff
    cp $ff                                        ; $5b36: $fe $ff
    rst $38                                       ; $5b38: $ff
    rst $38                                       ; $5b39: $ff
    and $ff                                       ; $5b3a: $e6 $ff
    rst $38                                       ; $5b3c: $ff
    rst $38                                       ; $5b3d: $ff
    ld sp, hl                                     ; $5b3e: $f9
    rst $38                                       ; $5b3f: $ff
    db $fc                                        ; $5b40: $fc
    rst $38                                       ; $5b41: $ff
    ld bc, $3fff                                  ; $5b42: $01 $ff $3f
    rst $38                                       ; $5b45: $ff
    ld h, c                                       ; $5b46: $61
    rst $38                                       ; $5b47: $ff
    db $fc                                        ; $5b48: $fc
    rst $38                                       ; $5b49: $ff
    ld h, a                                       ; $5b4a: $67
    rst $38                                       ; $5b4b: $ff
    inc sp                                        ; $5b4c: $33
    rst $38                                       ; $5b4d: $ff
    rst $20                                       ; $5b4e: $e7
    rst $38                                       ; $5b4f: $ff
    inc c                                         ; $5b50: $0c
    nop                                           ; $5b51: $00
    sbc c                                         ; $5b52: $99
    nop                                           ; $5b53: $00
    inc c                                         ; $5b54: $0c
    nop                                           ; $5b55: $00
    jr jr_074_5b58                                ; $5b56: $18 $00

jr_074_5b58:
    inc bc                                        ; $5b58: $03
    nop                                           ; $5b59: $00
    add b                                         ; $5b5a: $80
    nop                                           ; $5b5b: $00
    rst $08                                       ; $5b5c: $cf
    nop                                           ; $5b5d: $00
    nop                                           ; $5b5e: $00
    nop                                           ; $5b5f: $00
    inc c                                         ; $5b60: $0c
    nop                                           ; $5b61: $00
    add c                                         ; $5b62: $81
    nop                                           ; $5b63: $00

jr_074_5b64:
    ldh a, [rP1]                                  ; $5b64: $f0 $00
    nop                                           ; $5b66: $00
    nop                                           ; $5b67: $00
    jp $0700                                      ; $5b68: $c3 $00 $07


    nop                                           ; $5b6b: $00
    inc sp                                        ; $5b6c: $33
    nop                                           ; $5b6d: $00
    ld h, [hl]                                    ; $5b6e: $66
    nop                                           ; $5b6f: $00
    ccf                                           ; $5b70: $3f
    nop                                           ; $5b71: $00
    ld h, [hl]                                    ; $5b72: $66
    nop                                           ; $5b73: $00
    rst $38                                       ; $5b74: $ff
    nop                                           ; $5b75: $00
    ld bc, $ff00                                  ; $5b76: $01 $00 $ff
    nop                                           ; $5b79: $00
    ld a, a                                       ; $5b7a: $7f
    nop                                           ; $5b7b: $00
    jp $ff00                                      ; $5b7c: $c3 $00 $ff


    nop                                           ; $5b7f: $00
    ldh a, [rP1]                                  ; $5b80: $f0 $00
    ld e, $00                                     ; $5b82: $1e $00
    rrca                                          ; $5b84: $0f
    nop                                           ; $5b85: $00
    cp $00                                        ; $5b86: $fe $00
    rst $38                                       ; $5b88: $ff
    nop                                           ; $5b89: $00
    ld hl, sp+$00                                 ; $5b8a: $f8 $00
    rst $08                                       ; $5b8c: $cf
    nop                                           ; $5b8d: $00
    ld sp, hl                                     ; $5b8e: $f9
    nop                                           ; $5b8f: $00
    ccf                                           ; $5b90: $3f
    ret nz                                        ; $5b91: $c0

    ld a, c                                       ; $5b92: $79
    add [hl]                                      ; $5b93: $86
    rst $08                                       ; $5b94: $cf
    jr nc, jr_074_5baf                            ; $5b95: $30 $18

    rst $20                                       ; $5b97: $e7
    rst $38                                       ; $5b98: $ff
    nop                                           ; $5b99: $00
    ld sp, hl                                     ; $5b9a: $f9
    ld b, $3f                                     ; $5b9b: $06 $3f
    ret nz                                        ; $5b9d: $c0

    ld hl, sp+$07                                 ; $5b9e: $f8 $07
    rst $38                                       ; $5ba0: $ff
    nop                                           ; $5ba1: $00
    and $19                                       ; $5ba2: $e6 $19
    di                                            ; $5ba4: $f3
    inc c                                         ; $5ba5: $0c
    ld a, [hl]                                    ; $5ba6: $7e
    add c                                         ; $5ba7: $81
    rrca                                          ; $5ba8: $0f
    ldh a, [rIE]                                  ; $5ba9: $f0 $ff
    nop                                           ; $5bab: $00
    ldh a, [rIF]                                  ; $5bac: $f0 $0f
    ld a, a                                       ; $5bae: $7f

jr_074_5baf:
    add b                                         ; $5baf: $80
    inc bc                                        ; $5bb0: $03
    db $fc                                        ; $5bb1: $fc
    cp $01                                        ; $5bb2: $fe $01
    ret nz                                        ; $5bb4: $c0

    ccf                                           ; $5bb5: $3f
    sbc [hl]                                      ; $5bb6: $9e
    ld h, c                                       ; $5bb7: $61
    ret nz                                        ; $5bb8: $c0

    ccf                                           ; $5bb9: $3f
    nop                                           ; $5bba: $00
    rst $38                                       ; $5bbb: $ff
    ret nz                                        ; $5bbc: $c0

    ccf                                           ; $5bbd: $3f
    nop                                           ; $5bbe: $00
    rst $38                                       ; $5bbf: $ff
    ldh a, [rIF]                                  ; $5bc0: $f0 $0f
    ld bc, $ccfe                                  ; $5bc2: $01 $fe $cc
    inc sp                                        ; $5bc5: $33
    ld bc, $00fe                                  ; $5bc6: $01 $fe $00
    rst $38                                       ; $5bc9: $ff
    ld e, $e1                                     ; $5bca: $1e $e1
    nop                                           ; $5bcc: $00
    rst $38                                       ; $5bcd: $ff
    ld b, $f9                                     ; $5bce: $06 $f9
    jp Jump_000_18ff                              ; $5bd0: $c3 $ff $18


    rst $38                                       ; $5bd3: $ff
    rst $38                                       ; $5bd4: $ff
    rst $38                                       ; $5bd5: $ff
    nop                                           ; $5bd6: $00
    rst $38                                       ; $5bd7: $ff
    inc c                                         ; $5bd8: $0c
    rst $38                                       ; $5bd9: $ff
    add hl, de                                    ; $5bda: $19
    rst $38                                       ; $5bdb: $ff
    rst $38                                       ; $5bdc: $ff
    rst $38                                       ; $5bdd: $ff
    nop                                           ; $5bde: $00
    rst $38                                       ; $5bdf: $ff
    nop                                           ; $5be0: $00
    rst $38                                       ; $5be1: $ff
    ld b, $ff                                     ; $5be2: $06 $ff
    nop                                           ; $5be4: $00
    rst $38                                       ; $5be5: $ff
    nop                                           ; $5be6: $00
    rst $38                                       ; $5be7: $ff
    rst $08                                       ; $5be8: $cf
    rst $38                                       ; $5be9: $ff
    add b                                         ; $5bea: $80
    rst $38                                       ; $5beb: $ff
    rrca                                          ; $5bec: $0f
    rst $38                                       ; $5bed: $ff
    nop                                           ; $5bee: $00
    rst $38                                       ; $5bef: $ff
    and $ff                                       ; $5bf0: $e6 $ff
    db $fc                                        ; $5bf2: $fc
    rst $38                                       ; $5bf3: $ff
    sbc a                                         ; $5bf4: $9f
    rst $38                                       ; $5bf5: $ff
    ccf                                           ; $5bf6: $3f
    rst $38                                       ; $5bf7: $ff
    ld hl, sp-$01                                 ; $5bf8: $f8 $ff
    di                                            ; $5bfa: $f3
    rst $38                                       ; $5bfb: $ff
    ld a, [hl]                                    ; $5bfc: $7e
    rst $38                                       ; $5bfd: $ff
    db $fc                                        ; $5bfe: $fc
    rst $38                                       ; $5bff: $ff
    ld bc, $f3ff                                  ; $5c00: $01 $ff $f3
    rst $38                                       ; $5c03: $ff
    add c                                         ; $5c04: $81
    rst $38                                       ; $5c05: $ff
    db $fc                                        ; $5c06: $fc
    rst $38                                       ; $5c07: $ff
    rlca                                          ; $5c08: $07
    rst $38                                       ; $5c09: $ff
    rst $38                                       ; $5c0a: $ff
    rst $38                                       ; $5c0b: $ff
    ld b, $ff                                     ; $5c0c: $06 $ff
    rst $08                                       ; $5c0e: $cf
    rst $38                                       ; $5c0f: $ff
    add b                                         ; $5c10: $80
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00
    nop                                           ; $5c13: $00
    ld h, b                                       ; $5c14: $60
    nop                                           ; $5c15: $00
    rrca                                          ; $5c16: $0f
    nop                                           ; $5c17: $00
    add b                                         ; $5c18: $80
    nop                                           ; $5c19: $00
    nop                                           ; $5c1a: $00
    nop                                           ; $5c1b: $00
    ld a, [hl]                                    ; $5c1c: $7e
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    ld h, c                                       ; $5c20: $61
    nop                                           ; $5c21: $00
    call z, RST_00                                ; $5c22: $cc $00 $00
    nop                                           ; $5c25: $00
    inc a                                         ; $5c26: $3c
    nop                                           ; $5c27: $00
    rlca                                          ; $5c28: $07
    nop                                           ; $5c29: $00
    jr nc, jr_074_5c2c                            ; $5c2a: $30 $00

jr_074_5c2c:
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    inc a                                         ; $5c2e: $3c
    nop                                           ; $5c2f: $00
    ld a, a                                       ; $5c30: $7f
    nop                                           ; $5c31: $00

jr_074_5c32:
    ldh a, [rP1]                                  ; $5c32: $f0 $00
    sbc c                                         ; $5c34: $99
    nop                                           ; $5c35: $00
    di                                            ; $5c36: $f3
    nop                                           ; $5c37: $00
    rst $38                                       ; $5c38: $ff
    nop                                           ; $5c39: $00
    rst $08                                       ; $5c3a: $cf
    nop                                           ; $5c3b: $00
    rst $38                                       ; $5c3c: $ff
    nop                                           ; $5c3d: $00
    rst $38                                       ; $5c3e: $ff
    nop                                           ; $5c3f: $00
    ldh [rP1], a                                  ; $5c40: $e0 $00
    rrca                                          ; $5c42: $0f
    nop                                           ; $5c43: $00
    ld sp, hl                                     ; $5c44: $f9
    nop                                           ; $5c45: $00
    rrca                                          ; $5c46: $0f
    nop                                           ; $5c47: $00
    pop hl                                        ; $5c48: $e1
    nop                                           ; $5c49: $00
    rst $38                                       ; $5c4a: $ff
    nop                                           ; $5c4b: $00
    rst $38                                       ; $5c4c: $ff
    nop                                           ; $5c4d: $00
    rst $38                                       ; $5c4e: $ff
    nop                                           ; $5c4f: $00
    jr nc, jr_074_5c52                            ; $5c50: $30 $00

jr_074_5c52:
    and $00                                       ; $5c52: $e6 $00
    di                                            ; $5c54: $f3
    nop                                           ; $5c55: $00
    nop                                           ; $5c56: $00
    nop                                           ; $5c57: $00
    rst $08                                       ; $5c58: $cf
    nop                                           ; $5c59: $00
    sbc b                                         ; $5c5a: $98
    nop                                           ; $5c5b: $00
    nop                                           ; $5c5c: $00
    nop                                           ; $5c5d: $00
    rra                                           ; $5c5e: $1f
    nop                                           ; $5c5f: $00
    ret nz                                        ; $5c60: $c0

    nop                                           ; $5c61: $00
    ld bc, $3000                                  ; $5c62: $01 $00 $30
    nop                                           ; $5c65: $00
    nop                                           ; $5c66: $00
    nop                                           ; $5c67: $00
    inc bc                                        ; $5c68: $03
    nop                                           ; $5c69: $00
    ld a, a                                       ; $5c6a: $7f
    nop                                           ; $5c6b: $00
    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    ld hl, sp+$00                                 ; $5c6e: $f8 $00
    ret nz                                        ; $5c70: $c0

    nop                                           ; $5c71: $00
    ld a, [hl]                                    ; $5c72: $7e
    nop                                           ; $5c73: $00
    rst $38                                       ; $5c74: $ff
    nop                                           ; $5c75: $00
    sbc b                                         ; $5c76: $98
    nop                                           ; $5c77: $00
    db $fc                                        ; $5c78: $fc
    nop                                           ; $5c79: $00
    ld h, c                                       ; $5c7a: $61
    nop                                           ; $5c7b: $00
    db $fc                                        ; $5c7c: $fc
    nop                                           ; $5c7d: $00
    rst $20                                       ; $5c7e: $e7
    nop                                           ; $5c7f: $00
    rst $38                                       ; $5c80: $ff
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    rst $38                                       ; $5c84: $ff
    nop                                           ; $5c85: $00
    rra                                           ; $5c86: $1f
    nop                                           ; $5c87: $00
    rst $38                                       ; $5c88: $ff
    nop                                           ; $5c89: $00
    sbc [hl]                                      ; $5c8a: $9e
    nop                                           ; $5c8b: $00
    rst $38                                       ; $5c8c: $ff
    nop                                           ; $5c8d: $00
    pop hl                                        ; $5c8e: $e1
    nop                                           ; $5c8f: $00
    inc a                                         ; $5c90: $3c
    jp $9867                                      ; $5c91: $c3 $67 $98


    ldh a, [rIF]                                  ; $5c94: $f0 $0f
    ld a, a                                       ; $5c96: $7f
    add b                                         ; $5c97: $80
    jp $ff3c                                      ; $5c98: $c3 $3c $ff


jr_074_5c9b:
    nop                                           ; $5c9b: $00
    inc c                                         ; $5c9c: $0c
    di                                            ; $5c9d: $f3
    ld sp, hl                                     ; $5c9e: $f9
    ld b, $ff                                     ; $5c9f: $06 $ff
    nop                                           ; $5ca1: $00
    sbc [hl]                                      ; $5ca2: $9e
    ld h, c                                       ; $5ca3: $61
    rst $38                                       ; $5ca4: $ff
    nop                                           ; $5ca5: $00
    cp $01                                        ; $5ca6: $fe $01
    rst $08                                       ; $5ca8: $cf
    jr nc, jr_074_5c32                            ; $5ca9: $30 $87

    ld a, b                                       ; $5cab: $78
    jp $9f3c                                      ; $5cac: $c3 $3c $9f


    ld h, b                                       ; $5caf: $60
    rra                                           ; $5cb0: $1f
    ldh [$c3], a                                  ; $5cb1: $e0 $c3
    inc a                                         ; $5cb3: $3c
    ldh [$1f], a                                  ; $5cb4: $e0 $1f
    inc bc                                        ; $5cb6: $03
    db $fc                                        ; $5cb7: $fc
    nop                                           ; $5cb8: $00
    rst $38                                       ; $5cb9: $ff
    rrca                                          ; $5cba: $0f
    ldh a, [$81]                                  ; $5cbb: $f0 $81
    ld a, [hl]                                    ; $5cbd: $7e
    inc c                                         ; $5cbe: $0c
    di                                            ; $5cbf: $f3
    add b                                         ; $5cc0: $80
    ld a, a                                       ; $5cc1: $7f
    inc sp                                        ; $5cc2: $33
    call z, $fe01                                 ; $5cc3: $cc $01 $fe
    db $fc                                        ; $5cc6: $fc
    inc bc                                        ; $5cc7: $03
    nop                                           ; $5cc8: $00
    rst $38                                       ; $5cc9: $ff
    jr nc, jr_074_5c9b                            ; $5cca: $30 $cf

    sbc c                                         ; $5ccc: $99
    ld h, [hl]                                    ; $5ccd: $66
    nop                                           ; $5cce: $00
    rst $38                                       ; $5ccf: $ff
    ld bc, $ccff                                  ; $5cd0: $01 $ff $cc
    rst $38                                       ; $5cd3: $ff
    nop                                           ; $5cd4: $00
    rst $38                                       ; $5cd5: $ff
    inc bc                                        ; $5cd6: $03
    rst $38                                       ; $5cd7: $ff
    ldh [rIE], a                                  ; $5cd8: $e0 $ff
    nop                                           ; $5cda: $00
    rst $38                                       ; $5cdb: $ff
    rra                                           ; $5cdc: $1f
    rst $38                                       ; $5cdd: $ff
    nop                                           ; $5cde: $00
    rst $38                                       ; $5cdf: $ff
    add b                                         ; $5ce0: $80
    rst $38                                       ; $5ce1: $ff
    inc a                                         ; $5ce2: $3c
    rst $38                                       ; $5ce3: $ff
    nop                                           ; $5ce4: $00
    rst $38                                       ; $5ce5: $ff
    rst $08                                       ; $5ce6: $cf
    rst $38                                       ; $5ce7: $ff
    ld bc, $0cff                                  ; $5ce8: $01 $ff $0c
    rst $38                                       ; $5ceb: $ff
    add b                                         ; $5cec: $80
    rst $38                                       ; $5ced: $ff
    rrca                                          ; $5cee: $0f
    rst $38                                       ; $5cef: $ff
    rra                                           ; $5cf0: $1f
    rst $38                                       ; $5cf1: $ff
    db $fc                                        ; $5cf2: $fc
    rst $38                                       ; $5cf3: $ff
    ld h, [hl]                                    ; $5cf4: $66
    rst $38                                       ; $5cf5: $ff
    db $fc                                        ; $5cf6: $fc
    rst $38                                       ; $5cf7: $ff
    rst $38                                       ; $5cf8: $ff
    rst $38                                       ; $5cf9: $ff
    call z, $feff                                 ; $5cfa: $cc $ff $fe
    rst $38                                       ; $5cfd: $ff
    di                                            ; $5cfe: $f3
    rst $38                                       ; $5cff: $ff
    ld hl, sp-$01                                 ; $5d00: $f8 $ff
    inc bc                                        ; $5d02: $03
    rst $38                                       ; $5d03: $ff
    ld a, [hl]                                    ; $5d04: $7e
    rst $38                                       ; $5d05: $ff
    jp $f9ff                                      ; $5d06: $c3 $ff $f9


    rst $38                                       ; $5d09: $ff
    rst $08                                       ; $5d0a: $cf
    rst $38                                       ; $5d0b: $ff
    ld h, a                                       ; $5d0c: $67
    rst $38                                       ; $5d0d: $ff
    rst $08                                       ; $5d0e: $cf
    rst $38                                       ; $5d0f: $ff
    jr jr_074_5d12                                ; $5d10: $18 $00

jr_074_5d12:
    inc sp                                        ; $5d12: $33
    nop                                           ; $5d13: $00
    add hl, de                                    ; $5d14: $19
    nop                                           ; $5d15: $00
    jr nc, jr_074_5d18                            ; $5d16: $30 $00

jr_074_5d18:
    rlca                                          ; $5d18: $07
    nop                                           ; $5d19: $00
    nop                                           ; $5d1a: $00
    nop                                           ; $5d1b: $00
    sbc [hl]                                      ; $5d1c: $9e
    nop                                           ; $5d1d: $00
    nop                                           ; $5d1e: $00
    nop                                           ; $5d1f: $00
    jr jr_074_5d22                                ; $5d20: $18 $00

jr_074_5d22:
    inc bc                                        ; $5d22: $03
    nop                                           ; $5d23: $00
    ldh [rP1], a                                  ; $5d24: $e0 $00
    nop                                           ; $5d26: $00

jr_074_5d27:
    nop                                           ; $5d27: $00
    add [hl]                                      ; $5d28: $86
    nop                                           ; $5d29: $00
    rrca                                          ; $5d2a: $0f
    nop                                           ; $5d2b: $00
    ld h, a                                       ; $5d2c: $67
    nop                                           ; $5d2d: $00
    call z, $7f00                                 ; $5d2e: $cc $00 $7f
    nop                                           ; $5d31: $00
    call z, $fe00                                 ; $5d32: $cc $00 $fe
    nop                                           ; $5d35: $00
    inc bc                                        ; $5d36: $03
    nop                                           ; $5d37: $00
    rst $38                                       ; $5d38: $ff
    nop                                           ; $5d39: $00
    rst $38                                       ; $5d3a: $ff
    nop                                           ; $5d3b: $00
    add a                                         ; $5d3c: $87
    nop                                           ; $5d3d: $00
    rst $38                                       ; $5d3e: $ff
    nop                                           ; $5d3f: $00
    ldh [rP1], a                                  ; $5d40: $e0 $00
    inc a                                         ; $5d42: $3c
    nop                                           ; $5d43: $00
    rra                                           ; $5d44: $1f
    nop                                           ; $5d45: $00
    db $fc                                        ; $5d46: $fc
    nop                                           ; $5d47: $00
    rst $38                                       ; $5d48: $ff
    nop                                           ; $5d49: $00
    ldh a, [rP1]                                  ; $5d4a: $f0 $00
    sbc a                                         ; $5d4c: $9f
    nop                                           ; $5d4d: $00
    di                                            ; $5d4e: $f3
    nop                                           ; $5d4f: $00
    ld a, a                                       ; $5d50: $7f
    add b                                         ; $5d51: $80
    di                                            ; $5d52: $f3
    inc c                                         ; $5d53: $0c
    sbc a                                         ; $5d54: $9f
    ld h, b                                       ; $5d55: $60
    jr nc, jr_074_5d27                            ; $5d56: $30 $cf

    cp $01                                        ; $5d58: $fe $01
    di                                            ; $5d5a: $f3
    inc c                                         ; $5d5b: $0c
    ld a, a                                       ; $5d5c: $7f
    add b                                         ; $5d5d: $80
    ldh a, [rIF]                                  ; $5d5e: $f0 $0f
    cp $01                                        ; $5d60: $fe $01
    call z, $e733                                 ; $5d62: $cc $33 $e7
    jr @-$02                                      ; $5d65: $18 $fc

    inc bc                                        ; $5d67: $03
    rra                                           ; $5d68: $1f
    ldh [rIE], a                                  ; $5d69: $e0 $ff
    nop                                           ; $5d6b: $00
    ldh [$1f], a                                  ; $5d6c: $e0 $1f
    rst $38                                       ; $5d6e: $ff
    nop                                           ; $5d6f: $00
    rlca                                          ; $5d70: $07
    ld hl, sp-$04                                 ; $5d71: $f8 $fc
    inc bc                                        ; $5d73: $03
    add c                                         ; $5d74: $81
    ld a, [hl]                                    ; $5d75: $7e
    inc a                                         ; $5d76: $3c
    jp Jump_074_7f80                              ; $5d77: $c3 $80 $7f


    nop                                           ; $5d7a: $00
    rst $38                                       ; $5d7b: $ff
    add b                                         ; $5d7c: $80
    ld a, a                                       ; $5d7d: $7f
    nop                                           ; $5d7e: $00
    rst $38                                       ; $5d7f: $ff
    ldh [$1f], a                                  ; $5d80: $e0 $1f
    inc bc                                        ; $5d82: $03
    db $fc                                        ; $5d83: $fc
    sbc c                                         ; $5d84: $99
    ld h, [hl]                                    ; $5d85: $66
    inc bc                                        ; $5d86: $03
    db $fc                                        ; $5d87: $fc
    ld bc, $3cfe                                  ; $5d88: $01 $fe $3c
    jp $fe01                                      ; $5d8b: $c3 $01 $fe


    inc c                                         ; $5d8e: $0c
    di                                            ; $5d8f: $f3
    add [hl]                                      ; $5d90: $86
    rst $38                                       ; $5d91: $ff
    jr nc, @+$01                                  ; $5d92: $30 $ff

    cp $ff                                        ; $5d94: $fe $ff
    nop                                           ; $5d96: $00
    rst $38                                       ; $5d97: $ff
    add hl, de                                    ; $5d98: $19
    rst $38                                       ; $5d99: $ff
    inc sp                                        ; $5d9a: $33
    rst $38                                       ; $5d9b: $ff
    cp $ff                                        ; $5d9c: $fe $ff
    nop                                           ; $5d9e: $00
    rst $38                                       ; $5d9f: $ff
    ld bc, $0cff                                  ; $5da0: $01 $ff $0c
    rst $38                                       ; $5da3: $ff
    ld bc, $00ff                                  ; $5da4: $01 $ff $00
    rst $38                                       ; $5da7: $ff
    sbc [hl]                                      ; $5da8: $9e
    rst $38                                       ; $5da9: $ff
    nop                                           ; $5daa: $00
    rst $38                                       ; $5dab: $ff
    rra                                           ; $5dac: $1f
    rst $38                                       ; $5dad: $ff
    nop                                           ; $5dae: $00
    rst $38                                       ; $5daf: $ff
    call z, $f9ff                                 ; $5db0: $cc $ff $f9
    rst $38                                       ; $5db3: $ff
    ccf                                           ; $5db4: $3f
    rst $38                                       ; $5db5: $ff
    ld a, a                                       ; $5db6: $7f
    rst $38                                       ; $5db7: $ff
    ldh a, [rIE]                                  ; $5db8: $f0 $ff
    rst $20                                       ; $5dba: $e7
    rst $38                                       ; $5dbb: $ff
    db $fc                                        ; $5dbc: $fc
    rst $38                                       ; $5dbd: $ff
    ld sp, hl                                     ; $5dbe: $f9
    rst $38                                       ; $5dbf: $ff
    inc bc                                        ; $5dc0: $03
    rst $38                                       ; $5dc1: $ff
    rst $20                                       ; $5dc2: $e7
    rst $38                                       ; $5dc3: $ff
    inc bc                                        ; $5dc4: $03
    rst $38                                       ; $5dc5: $ff
    ld hl, sp-$01                                 ; $5dc6: $f8 $ff
    rrca                                          ; $5dc8: $0f
    rst $38                                       ; $5dc9: $ff
    rst $38                                       ; $5dca: $ff
    rst $38                                       ; $5dcb: $ff
    inc c                                         ; $5dcc: $0c
    rst $38                                       ; $5dcd: $ff
    sbc a                                         ; $5dce: $9f
    rst $38                                       ; $5dcf: $ff
    nop                                           ; $5dd0: $00
    nop                                           ; $5dd1: $00
    ld bc, $c000                                  ; $5dd2: $01 $00 $c0
    nop                                           ; $5dd5: $00
    ld e, $00                                     ; $5dd6: $1e $00
    nop                                           ; $5dd8: $00
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    nop                                           ; $5ddb: $00
    db $fc                                        ; $5ddc: $fc
    nop                                           ; $5ddd: $00
    nop                                           ; $5dde: $00
    nop                                           ; $5ddf: $00
    jp $9800                                      ; $5de0: $c3 $00 $98


    nop                                           ; $5de3: $00
    nop                                           ; $5de4: $00
    nop                                           ; $5de5: $00
    ld a, b                                       ; $5de6: $78
    nop                                           ; $5de7: $00
    rrca                                          ; $5de8: $0f
    nop                                           ; $5de9: $00
    ld h, b                                       ; $5dea: $60
    nop                                           ; $5deb: $00
    nop                                           ; $5dec: $00
    nop                                           ; $5ded: $00
    ld a, b                                       ; $5dee: $78
    nop                                           ; $5def: $00
    rst $38                                       ; $5df0: $ff
    nop                                           ; $5df1: $00
    ldh [rP1], a                                  ; $5df2: $e0 $00
    inc sp                                        ; $5df4: $33
    nop                                           ; $5df5: $00
    and $00                                       ; $5df6: $e6 $00
    rst $38                                       ; $5df8: $ff
    nop                                           ; $5df9: $00
    sbc a                                         ; $5dfa: $9f
    nop                                           ; $5dfb: $00
    rst $38                                       ; $5dfc: $ff
    nop                                           ; $5dfd: $00
    rst $38                                       ; $5dfe: $ff
    nop                                           ; $5dff: $00
    ret nz                                        ; $5e00: $c0

    nop                                           ; $5e01: $00
    rra                                           ; $5e02: $1f
    nop                                           ; $5e03: $00
    di                                            ; $5e04: $f3
    nop                                           ; $5e05: $00
    rra                                           ; $5e06: $1f
    nop                                           ; $5e07: $00
    jp $ff00                                      ; $5e08: $c3 $00 $ff


    nop                                           ; $5e0b: $00
    rst $38                                       ; $5e0c: $ff
    nop                                           ; $5e0d: $00
    rst $38                                       ; $5e0e: $ff
    nop                                           ; $5e0f: $00
    jp $9800                                      ; $5e10: $c3 $00 $98


    nop                                           ; $5e13: $00
    call z, RST_00                                ; $5e14: $cc $00 $00
    nop                                           ; $5e17: $00
    inc a                                         ; $5e18: $3c
    nop                                           ; $5e19: $00
    ld h, c                                       ; $5e1a: $61
    nop                                           ; $5e1b: $00
    nop                                           ; $5e1c: $00
    nop                                           ; $5e1d: $00
    ld a, a                                       ; $5e1e: $7f
    nop                                           ; $5e1f: $00
    nop                                           ; $5e20: $00
    nop                                           ; $5e21: $00
    rlca                                          ; $5e22: $07
    nop                                           ; $5e23: $00
    jp RST_00                                     ; $5e24: $c3 $00 $00


    nop                                           ; $5e27: $00
    rrca                                          ; $5e28: $0f
    nop                                           ; $5e29: $00
    cp $00                                        ; $5e2a: $fe $00
    nop                                           ; $5e2c: $00
    nop                                           ; $5e2d: $00
    ldh [rP1], a                                  ; $5e2e: $e0 $00
    inc bc                                        ; $5e30: $03
    nop                                           ; $5e31: $00
    ld hl, sp+$00                                 ; $5e32: $f8 $00
    rst $38                                       ; $5e34: $ff
    nop                                           ; $5e35: $00
    ld h, b                                       ; $5e36: $60
    nop                                           ; $5e37: $00
    di                                            ; $5e38: $f3
    nop                                           ; $5e39: $00
    add [hl]                                      ; $5e3a: $86
    nop                                           ; $5e3b: $00
    di                                            ; $5e3c: $f3
    nop                                           ; $5e3d: $00
    sbc a                                         ; $5e3e: $9f
    nop                                           ; $5e3f: $00
    rst $38                                       ; $5e40: $ff
    nop                                           ; $5e41: $00
    ld bc, $ff00                                  ; $5e42: $01 $00 $ff
    nop                                           ; $5e45: $00
    ld a, [hl]                                    ; $5e46: $7e
    nop                                           ; $5e47: $00
    rst $38                                       ; $5e48: $ff
    nop                                           ; $5e49: $00
    ld a, c                                       ; $5e4a: $79
    nop                                           ; $5e4b: $00
    rst $38                                       ; $5e4c: $ff
    nop                                           ; $5e4d: $00
    add a                                         ; $5e4e: $87
    nop                                           ; $5e4f: $00
    di                                            ; $5e50: $f3
    inc c                                         ; $5e51: $0c
    sbc [hl]                                      ; $5e52: $9e
    ld h, c                                       ; $5e53: $61
    jp $ff3c                                      ; $5e54: $c3 $3c $ff


    nop                                           ; $5e57: $00
    rrca                                          ; $5e58: $0f
    ldh a, [$fe]                                  ; $5e59: $f0 $fe
    ld bc, $cc33                                  ; $5e5b: $01 $33 $cc
    and $19                                       ; $5e5e: $e6 $19
    db $fc                                        ; $5e60: $fc
    inc bc                                        ; $5e61: $03
    ld a, c                                       ; $5e62: $79
    add [hl]                                      ; $5e63: $86
    rst $38                                       ; $5e64: $ff
    nop                                           ; $5e65: $00
    ld sp, hl                                     ; $5e66: $f9

jr_074_5e67:
    ld b, $3f                                     ; $5e67: $06 $3f
    ret nz                                        ; $5e69: $c0

    rra                                           ; $5e6a: $1f
    ldh [$0c], a                                  ; $5e6b: $e0 $0c
    di                                            ; $5e6d: $f3
    ld a, a                                       ; $5e6e: $7f
    add b                                         ; $5e6f: $80
    ccf                                           ; $5e70: $3f
    ret nz                                        ; $5e71: $c0

    add [hl]                                      ; $5e72: $86
    ld a, c                                       ; $5e73: $79
    ret nz                                        ; $5e74: $c0

    ccf                                           ; $5e75: $3f
    rlca                                          ; $5e76: $07
    ld hl, sp+$00                                 ; $5e77: $f8 $00
    rst $38                                       ; $5e79: $ff
    ld e, $e1                                     ; $5e7a: $1e $e1
    inc bc                                        ; $5e7c: $03
    db $fc                                        ; $5e7d: $fc
    jr jr_074_5e67                                ; $5e7e: $18 $e7

    nop                                           ; $5e80: $00
    rst $38                                       ; $5e81: $ff
    ld h, a                                       ; $5e82: $67
    sbc b                                         ; $5e83: $98
    inc bc                                        ; $5e84: $03
    db $fc                                        ; $5e85: $fc
    ld hl, sp+$07                                 ; $5e86: $f8 $07
    nop                                           ; $5e88: $00
    rst $38                                       ; $5e89: $ff
    ld h, b                                       ; $5e8a: $60
    sbc a                                         ; $5e8b: $9f
    inc sp                                        ; $5e8c: $33
    call z, $ff00                                 ; $5e8d: $cc $00 $ff
    inc bc                                        ; $5e90: $03
    rst $38                                       ; $5e91: $ff
    sbc b                                         ; $5e92: $98
    rst $38                                       ; $5e93: $ff
    nop                                           ; $5e94: $00
    rst $38                                       ; $5e95: $ff
    rlca                                          ; $5e96: $07
    rst $38                                       ; $5e97: $ff
    ret nz                                        ; $5e98: $c0

    rst $38                                       ; $5e99: $ff
    nop                                           ; $5e9a: $00
    rst $38                                       ; $5e9b: $ff
    ccf                                           ; $5e9c: $3f
    rst $38                                       ; $5e9d: $ff
    nop                                           ; $5e9e: $00
    rst $38                                       ; $5e9f: $ff
    nop                                           ; $5ea0: $00
    rst $38                                       ; $5ea1: $ff
    ld a, c                                       ; $5ea2: $79
    rst $38                                       ; $5ea3: $ff
    nop                                           ; $5ea4: $00
    rst $38                                       ; $5ea5: $ff
    sbc [hl]                                      ; $5ea6: $9e
    rst $38                                       ; $5ea7: $ff
    inc bc                                        ; $5ea8: $03
    rst $38                                       ; $5ea9: $ff
    jr @+$01                                      ; $5eaa: $18 $ff

    nop                                           ; $5eac: $00
    rst $38                                       ; $5ead: $ff
    ld e, $ff                                     ; $5eae: $1e $ff
    ccf                                           ; $5eb0: $3f
    rst $38                                       ; $5eb1: $ff
    ld hl, sp-$01                                 ; $5eb2: $f8 $ff
    call z, $f9ff                                 ; $5eb4: $cc $ff $f9
    rst $38                                       ; $5eb7: $ff
    rst $38                                       ; $5eb8: $ff
    rst $38                                       ; $5eb9: $ff
    sbc c                                         ; $5eba: $99
    rst $38                                       ; $5ebb: $ff
    db $fc                                        ; $5ebc: $fc
    rst $38                                       ; $5ebd: $ff
    rst $20                                       ; $5ebe: $e7
    rst $38                                       ; $5ebf: $ff
    ldh a, [rIE]                                  ; $5ec0: $f0 $ff
    rlca                                          ; $5ec2: $07
    rst $38                                       ; $5ec3: $ff
    db $fc                                        ; $5ec4: $fc
    rst $38                                       ; $5ec5: $ff
    add a                                         ; $5ec6: $87
    rst $38                                       ; $5ec7: $ff
    di                                            ; $5ec8: $f3
    rst $38                                       ; $5ec9: $ff
    sbc a                                         ; $5eca: $9f
    rst $38                                       ; $5ecb: $ff
    rst $08                                       ; $5ecc: $cf
    rst $38                                       ; $5ecd: $ff
    sbc a                                         ; $5ece: $9f
    rst $38                                       ; $5ecf: $ff
    jr nc, jr_074_5ed2                            ; $5ed0: $30 $00

jr_074_5ed2:
    ld h, [hl]                                    ; $5ed2: $66
    nop                                           ; $5ed3: $00
    inc sp                                        ; $5ed4: $33
    nop                                           ; $5ed5: $00
    ld h, b                                       ; $5ed6: $60
    nop                                           ; $5ed7: $00
    rrca                                          ; $5ed8: $0f
    nop                                           ; $5ed9: $00
    nop                                           ; $5eda: $00
    nop                                           ; $5edb: $00
    inc a                                         ; $5edc: $3c
    nop                                           ; $5edd: $00
    ld bc, $3000                                  ; $5ede: $01 $00 $30
    nop                                           ; $5ee1: $00
    ld b, $00                                     ; $5ee2: $06 $00
    ret nz                                        ; $5ee4: $c0

    nop                                           ; $5ee5: $00
    nop                                           ; $5ee6: $00

jr_074_5ee7:
    nop                                           ; $5ee7: $00
    inc c                                         ; $5ee8: $0c
    nop                                           ; $5ee9: $00
    ld e, $00                                     ; $5eea: $1e $00
    rst $08                                       ; $5eec: $cf
    nop                                           ; $5eed: $00
    sbc b                                         ; $5eee: $98
    nop                                           ; $5eef: $00
    ld a, a                                       ; $5ef0: $7f
    nop                                           ; $5ef1: $00
    call z, $fe00                                 ; $5ef2: $cc $00 $fe
    nop                                           ; $5ef5: $00
    inc bc                                        ; $5ef6: $03
    nop                                           ; $5ef7: $00
    rst $38                                       ; $5ef8: $ff
    nop                                           ; $5ef9: $00
    rst $38                                       ; $5efa: $ff
    nop                                           ; $5efb: $00
    add a                                         ; $5efc: $87
    nop                                           ; $5efd: $00
    rst $38                                       ; $5efe: $ff
    nop                                           ; $5eff: $00
    ldh [rP1], a                                  ; $5f00: $e0 $00
    inc a                                         ; $5f02: $3c
    nop                                           ; $5f03: $00
    rra                                           ; $5f04: $1f
    nop                                           ; $5f05: $00
    db $fc                                        ; $5f06: $fc
    nop                                           ; $5f07: $00
    rst $38                                       ; $5f08: $ff
    nop                                           ; $5f09: $00
    ldh a, [rP1]                                  ; $5f0a: $f0 $00
    sbc a                                         ; $5f0c: $9f
    nop                                           ; $5f0d: $00
    di                                            ; $5f0e: $f3
    nop                                           ; $5f0f: $00
    ld a, a                                       ; $5f10: $7f
    add b                                         ; $5f11: $80
    di                                            ; $5f12: $f3
    inc c                                         ; $5f13: $0c
    sbc a                                         ; $5f14: $9f
    ld h, b                                       ; $5f15: $60
    jr nc, jr_074_5ee7                            ; $5f16: $30 $cf

    cp $01                                        ; $5f18: $fe $01
    di                                            ; $5f1a: $f3
    inc c                                         ; $5f1b: $0c
    ld a, a                                       ; $5f1c: $7f
    add b                                         ; $5f1d: $80
    ldh a, [rIF]                                  ; $5f1e: $f0 $0f
    cp $01                                        ; $5f20: $fe $01
    call z, $e733                                 ; $5f22: $cc $33 $e7
    jr @-$02                                      ; $5f25: $18 $fc

    inc bc                                        ; $5f27: $03
    rra                                           ; $5f28: $1f
    ldh [rIE], a                                  ; $5f29: $e0 $ff
    nop                                           ; $5f2b: $00
    ldh [$1f], a                                  ; $5f2c: $e0 $1f
    rst $38                                       ; $5f2e: $ff
    nop                                           ; $5f2f: $00
    rlca                                          ; $5f30: $07
    ld hl, sp-$04                                 ; $5f31: $f8 $fc
    inc bc                                        ; $5f33: $03
    add c                                         ; $5f34: $81
    ld a, [hl]                                    ; $5f35: $7e
    inc a                                         ; $5f36: $3c
    jp Jump_074_7f80                              ; $5f37: $c3 $80 $7f


    nop                                           ; $5f3a: $00
    rst $38                                       ; $5f3b: $ff
    add b                                         ; $5f3c: $80
    ld a, a                                       ; $5f3d: $7f
    nop                                           ; $5f3e: $00
    rst $38                                       ; $5f3f: $ff
    ldh [$1f], a                                  ; $5f40: $e0 $1f
    inc bc                                        ; $5f42: $03
    db $fc                                        ; $5f43: $fc
    sbc c                                         ; $5f44: $99
    ld h, [hl]                                    ; $5f45: $66
    inc bc                                        ; $5f46: $03
    db $fc                                        ; $5f47: $fc
    ld bc, $3cfe                                  ; $5f48: $01 $fe $3c
    jp $fe01                                      ; $5f4b: $c3 $01 $fe


    inc c                                         ; $5f4e: $0c
    di                                            ; $5f4f: $f3
    add [hl]                                      ; $5f50: $86
    rst $38                                       ; $5f51: $ff
    jr nc, @+$01                                  ; $5f52: $30 $ff

    cp $ff                                        ; $5f54: $fe $ff
    nop                                           ; $5f56: $00
    rst $38                                       ; $5f57: $ff
    add hl, de                                    ; $5f58: $19
    rst $38                                       ; $5f59: $ff
    inc sp                                        ; $5f5a: $33
    rst $38                                       ; $5f5b: $ff
    cp $ff                                        ; $5f5c: $fe $ff
    nop                                           ; $5f5e: $00
    rst $38                                       ; $5f5f: $ff
    ld bc, $0cff                                  ; $5f60: $01 $ff $0c
    rst $38                                       ; $5f63: $ff
    ld bc, $00ff                                  ; $5f64: $01 $ff $00
    rst $38                                       ; $5f67: $ff
    sbc [hl]                                      ; $5f68: $9e
    rst $38                                       ; $5f69: $ff
    nop                                           ; $5f6a: $00
    rst $38                                       ; $5f6b: $ff
    rra                                           ; $5f6c: $1f
    rst $38                                       ; $5f6d: $ff
    nop                                           ; $5f6e: $00
    rst $38                                       ; $5f6f: $ff
    sbc b                                         ; $5f70: $98
    rst $38                                       ; $5f71: $ff
    di                                            ; $5f72: $f3
    rst $38                                       ; $5f73: $ff
    ld a, [hl]                                    ; $5f74: $7e
    rst $38                                       ; $5f75: $ff
    rst $38                                       ; $5f76: $ff
    rst $38                                       ; $5f77: $ff
    ldh [rIE], a                                  ; $5f78: $e0 $ff
    rst $08                                       ; $5f7a: $cf
    rst $38                                       ; $5f7b: $ff
    ld hl, sp-$01                                 ; $5f7c: $f8 $ff
    di                                            ; $5f7e: $f3
    rst $38                                       ; $5f7f: $ff
    rlca                                          ; $5f80: $07
    rst $38                                       ; $5f81: $ff
    rst $08                                       ; $5f82: $cf
    rst $38                                       ; $5f83: $ff
    ld b, $ff                                     ; $5f84: $06 $ff
    ldh a, [rIE]                                  ; $5f86: $f0 $ff
    rra                                           ; $5f88: $1f
    rst $38                                       ; $5f89: $ff
    rst $38                                       ; $5f8a: $ff
    rst $38                                       ; $5f8b: $ff
    add hl, de                                    ; $5f8c: $19
    rst $38                                       ; $5f8d: $ff
    ccf                                           ; $5f8e: $3f
    rst $38                                       ; $5f8f: $ff
    ld bc, $0300                                  ; $5f90: $01 $00 $03
    nop                                           ; $5f93: $00
    add b                                         ; $5f94: $80
    nop                                           ; $5f95: $00
    inc a                                         ; $5f96: $3c
    nop                                           ; $5f97: $00
    nop                                           ; $5f98: $00
    nop                                           ; $5f99: $00
    nop                                           ; $5f9a: $00
    nop                                           ; $5f9b: $00
    ld hl, sp+$00                                 ; $5f9c: $f8 $00
    nop                                           ; $5f9e: $00
    nop                                           ; $5f9f: $00
    add [hl]                                      ; $5fa0: $86
    nop                                           ; $5fa1: $00
    jr nc, jr_074_5fa4                            ; $5fa2: $30 $00

jr_074_5fa4:
    ld bc, $f000                                  ; $5fa4: $01 $00 $f0
    nop                                           ; $5fa7: $00
    ld e, $00                                     ; $5fa8: $1e $00
    ret nz                                        ; $5faa: $c0

    nop                                           ; $5fab: $00
    ld bc, $f000                                  ; $5fac: $01 $00 $f0
    nop                                           ; $5faf: $00
    rst $38                                       ; $5fb0: $ff
    nop                                           ; $5fb1: $00
    ret nz                                        ; $5fb2: $c0

    nop                                           ; $5fb3: $00
    ld h, a                                       ; $5fb4: $67
    nop                                           ; $5fb5: $00
    call z, $ff00                                 ; $5fb6: $cc $00 $ff
    nop                                           ; $5fb9: $00
    ccf                                           ; $5fba: $3f
    nop                                           ; $5fbb: $00
    rst $38                                       ; $5fbc: $ff
    nop                                           ; $5fbd: $00
    rst $38                                       ; $5fbe: $ff
    nop                                           ; $5fbf: $00
    add c                                         ; $5fc0: $81
    nop                                           ; $5fc1: $00
    ccf                                           ; $5fc2: $3f
    nop                                           ; $5fc3: $00
    and $00                                       ; $5fc4: $e6 $00
    ccf                                           ; $5fc6: $3f
    nop                                           ; $5fc7: $00
    add a                                         ; $5fc8: $87
    nop                                           ; $5fc9: $00
    rst $38                                       ; $5fca: $ff
    nop                                           ; $5fcb: $00
    rst $38                                       ; $5fcc: $ff
    nop                                           ; $5fcd: $00
    rst $38                                       ; $5fce: $ff
    nop                                           ; $5fcf: $00
    add [hl]                                      ; $5fd0: $86
    nop                                           ; $5fd1: $00
    jr nc, jr_074_5fd4                            ; $5fd2: $30 $00

jr_074_5fd4:
    sbc c                                         ; $5fd4: $99
    nop                                           ; $5fd5: $00
    nop                                           ; $5fd6: $00
    nop                                           ; $5fd7: $00
    ld a, b                                       ; $5fd8: $78
    nop                                           ; $5fd9: $00
    jp RST_00                                     ; $5fda: $c3 $00 $00


    nop                                           ; $5fdd: $00
    rst $38                                       ; $5fde: $ff
    nop                                           ; $5fdf: $00
    ld bc, $0f00                                  ; $5fe0: $01 $00 $0f
    nop                                           ; $5fe3: $00
    add a                                         ; $5fe4: $87
    nop                                           ; $5fe5: $00
    nop                                           ; $5fe6: $00
    nop                                           ; $5fe7: $00
    ld e, $00                                     ; $5fe8: $1e $00
    db $fc                                        ; $5fea: $fc
    nop                                           ; $5feb: $00
    nop                                           ; $5fec: $00
    nop                                           ; $5fed: $00
    ret nz                                        ; $5fee: $c0

    nop                                           ; $5fef: $00
    rlca                                          ; $5ff0: $07
    nop                                           ; $5ff1: $00
    ldh a, [rP1]                                  ; $5ff2: $f0 $00
    rst $38                                       ; $5ff4: $ff
    nop                                           ; $5ff5: $00
    ret nz                                        ; $5ff6: $c0

    nop                                           ; $5ff7: $00
    rst $20                                       ; $5ff8: $e7
    nop                                           ; $5ff9: $00
    inc c                                         ; $5ffa: $0c
    nop                                           ; $5ffb: $00
    rst $20                                       ; $5ffc: $e7
    nop                                           ; $5ffd: $00
    ccf                                           ; $5ffe: $3f
    nop                                           ; $5fff: $00
    cp $00                                        ; $6000: $fe $00
    inc bc                                        ; $6002: $03
    nop                                           ; $6003: $00
    rst $38                                       ; $6004: $ff
    nop                                           ; $6005: $00
    db $fc                                        ; $6006: $fc
    nop                                           ; $6007: $00
    rst $38                                       ; $6008: $ff
    nop                                           ; $6009: $00
    di                                            ; $600a: $f3
    nop                                           ; $600b: $00
    rst $38                                       ; $600c: $ff
    nop                                           ; $600d: $00
    rrca                                          ; $600e: $0f

jr_074_600f:
    nop                                           ; $600f: $00
    rst $20                                       ; $6010: $e7
    jr jr_074_604f                                ; $6011: $18 $3c

    jp Jump_074_7887                              ; $6013: $c3 $87 $78


    rst $38                                       ; $6016: $ff
    nop                                           ; $6017: $00
    ld e, $e1                                     ; $6018: $1e $e1
    db $fc                                        ; $601a: $fc
    inc bc                                        ; $601b: $03
    ld h, [hl]                                    ; $601c: $66
    sbc c                                         ; $601d: $99
    call z, $f933                                 ; $601e: $cc $33 $f9
    ld b, $f3                                     ; $6021: $06 $f3
    inc c                                         ; $6023: $0c
    rst $38                                       ; $6024: $ff
    nop                                           ; $6025: $00
    di                                            ; $6026: $f3
    inc c                                         ; $6027: $0c
    ld a, [hl]                                    ; $6028: $7e
    add c                                         ; $6029: $81
    ccf                                           ; $602a: $3f
    ret nz                                        ; $602b: $c0

    jr @-$17                                      ; $602c: $18 $e7

    rst $38                                       ; $602e: $ff
    nop                                           ; $602f: $00
    ld a, [hl]                                    ; $6030: $7e
    add c                                         ; $6031: $81
    inc c                                         ; $6032: $0c
    di                                            ; $6033: $f3
    add b                                         ; $6034: $80
    ld a, a                                       ; $6035: $7f
    rrca                                          ; $6036: $0f
    ldh a, [rP1]                                  ; $6037: $f0 $00
    rst $38                                       ; $6039: $ff
    inc a                                         ; $603a: $3c
    jp $f906                                      ; $603b: $c3 $06 $f9


    jr nc, jr_074_600f                            ; $603e: $30 $cf

    nop                                           ; $6040: $00
    rst $38                                       ; $6041: $ff
    rst $08                                       ; $6042: $cf
    jr nc, jr_074_604c                            ; $6043: $30 $07

    ld hl, sp-$10                                 ; $6045: $f8 $f0
    rrca                                          ; $6047: $0f
    nop                                           ; $6048: $00
    rst $38                                       ; $6049: $ff
    ret nz                                        ; $604a: $c0

    ccf                                           ; $604b: $3f

jr_074_604c:
    ld h, [hl]                                    ; $604c: $66
    sbc c                                         ; $604d: $99
    nop                                           ; $604e: $00

jr_074_604f:
    rst $38                                       ; $604f: $ff
    ld b, $ff                                     ; $6050: $06 $ff
    jr nc, @+$01                                  ; $6052: $30 $ff

    nop                                           ; $6054: $00
    rst $38                                       ; $6055: $ff
    rrca                                          ; $6056: $0f
    rst $38                                       ; $6057: $ff
    add b                                         ; $6058: $80
    rst $38                                       ; $6059: $ff
    nop                                           ; $605a: $00
    rst $38                                       ; $605b: $ff
    ld a, [hl]                                    ; $605c: $7e
    rst $38                                       ; $605d: $ff
    nop                                           ; $605e: $00
    rst $38                                       ; $605f: $ff
    nop                                           ; $6060: $00
    rst $38                                       ; $6061: $ff
    di                                            ; $6062: $f3
    rst $38                                       ; $6063: $ff
    nop                                           ; $6064: $00
    rst $38                                       ; $6065: $ff
    inc a                                         ; $6066: $3c
    rst $38                                       ; $6067: $ff
    rlca                                          ; $6068: $07
    rst $38                                       ; $6069: $ff
    jr nc, @+$01                                  ; $606a: $30 $ff

    nop                                           ; $606c: $00
    rst $38                                       ; $606d: $ff
    inc a                                         ; $606e: $3c
    rst $38                                       ; $606f: $ff
    ld a, a                                       ; $6070: $7f
    rst $38                                       ; $6071: $ff
    ldh a, [rIE]                                  ; $6072: $f0 $ff
    sbc c                                         ; $6074: $99
    rst $38                                       ; $6075: $ff
    di                                            ; $6076: $f3
    rst $38                                       ; $6077: $ff
    rst $38                                       ; $6078: $ff
    rst $38                                       ; $6079: $ff
    inc sp                                        ; $607a: $33
    rst $38                                       ; $607b: $ff
    ld sp, hl                                     ; $607c: $f9
    rst $38                                       ; $607d: $ff
    rst $08                                       ; $607e: $cf
    rst $38                                       ; $607f: $ff
    ldh [rIE], a                                  ; $6080: $e0 $ff
    rrca                                          ; $6082: $0f
    rst $38                                       ; $6083: $ff
    ld sp, hl                                     ; $6084: $f9
    rst $38                                       ; $6085: $ff
    rrca                                          ; $6086: $0f
    rst $38                                       ; $6087: $ff
    rst $20                                       ; $6088: $e7
    rst $38                                       ; $6089: $ff
    ccf                                           ; $608a: $3f
    rst $38                                       ; $608b: $ff
    sbc a                                         ; $608c: $9f
    rst $38                                       ; $608d: $ff
    ccf                                           ; $608e: $3f
    rst $38                                       ; $608f: $ff
    ld h, b                                       ; $6090: $60
    nop                                           ; $6091: $00
    call z, Call_074_6700                         ; $6092: $cc $00 $67
    nop                                           ; $6095: $00
    ret nz                                        ; $6096: $c0

    nop                                           ; $6097: $00
    ld e, $00                                     ; $6098: $1e $00
    nop                                           ; $609a: $00
    nop                                           ; $609b: $00
    ld a, c                                       ; $609c: $79
    nop                                           ; $609d: $00
    inc bc                                        ; $609e: $03
    nop                                           ; $609f: $00
    ld h, b                                       ; $60a0: $60
    nop                                           ; $60a1: $00
    inc c                                         ; $60a2: $0c
    nop                                           ; $60a3: $00
    add b                                         ; $60a4: $80
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    jr jr_074_60aa                                ; $60a8: $18 $00

jr_074_60aa:
    inc a                                         ; $60aa: $3c
    nop                                           ; $60ab: $00
    sbc [hl]                                      ; $60ac: $9e
    nop                                           ; $60ad: $00
    jr nc, jr_074_60b0                            ; $60ae: $30 $00

jr_074_60b0:
    rst $38                                       ; $60b0: $ff
    nop                                           ; $60b1: $00
    sbc b                                         ; $60b2: $98
    nop                                           ; $60b3: $00
    db $fc                                        ; $60b4: $fc
    nop                                           ; $60b5: $00
    rlca                                          ; $60b6: $07
    nop                                           ; $60b7: $00
    rst $38                                       ; $60b8: $ff
    nop                                           ; $60b9: $00
    rst $38                                       ; $60ba: $ff
    nop                                           ; $60bb: $00
    rrca                                          ; $60bc: $0f
    nop                                           ; $60bd: $00
    rst $38                                       ; $60be: $ff
    nop                                           ; $60bf: $00
    ret nz                                        ; $60c0: $c0

    nop                                           ; $60c1: $00
    ld a, c                                       ; $60c2: $79
    nop                                           ; $60c3: $00
    ccf                                           ; $60c4: $3f
    nop                                           ; $60c5: $00
    ld hl, sp+$00                                 ; $60c6: $f8 $00
    rst $38                                       ; $60c8: $ff
    nop                                           ; $60c9: $00
    pop hl                                        ; $60ca: $e1
    nop                                           ; $60cb: $00
    ccf                                           ; $60cc: $3f
    nop                                           ; $60cd: $00
    rst $20                                       ; $60ce: $e7
    nop                                           ; $60cf: $00
    rst $38                                       ; $60d0: $ff
    nop                                           ; $60d1: $00
    rst $20                                       ; $60d2: $e7
    jr jr_074_6114                                ; $60d3: $18 $3f

    ret nz                                        ; $60d5: $c0

    ld h, c                                       ; $60d6: $61
    sbc [hl]                                      ; $60d7: $9e
    db $fc                                        ; $60d8: $fc
    inc bc                                        ; $60d9: $03
    rst $20                                       ; $60da: $e7
    jr @+$01                                      ; $60db: $18 $ff

    nop                                           ; $60dd: $00
    pop hl                                        ; $60de: $e1

jr_074_60df:
    ld e, $fc                                     ; $60df: $1e $fc
    inc bc                                        ; $60e1: $03
    sbc c                                         ; $60e2: $99
    ld h, [hl]                                    ; $60e3: $66
    rst $08                                       ; $60e4: $cf
    jr nc, jr_074_60df                            ; $60e5: $30 $f8

    rlca                                          ; $60e7: $07
    ccf                                           ; $60e8: $3f
    ret nz                                        ; $60e9: $c0

    rst $38                                       ; $60ea: $ff
    nop                                           ; $60eb: $00
    ret nz                                        ; $60ec: $c0

    ccf                                           ; $60ed: $3f
    rst $38                                       ; $60ee: $ff
    nop                                           ; $60ef: $00
    rrca                                          ; $60f0: $0f
    ldh a, [$f8]                                  ; $60f1: $f0 $f8
    rlca                                          ; $60f3: $07
    inc bc                                        ; $60f4: $03
    db $fc                                        ; $60f5: $fc
    ld a, b                                       ; $60f6: $78

jr_074_60f7:
    add a                                         ; $60f7: $87
    nop                                           ; $60f8: $00
    rst $38                                       ; $60f9: $ff
    nop                                           ; $60fa: $00
    rst $38                                       ; $60fb: $ff
    nop                                           ; $60fc: $00
    rst $38                                       ; $60fd: $ff
    nop                                           ; $60fe: $00
    rst $38                                       ; $60ff: $ff
    ret nz                                        ; $6100: $c0

    ccf                                           ; $6101: $3f
    rlca                                          ; $6102: $07
    ld hl, sp+$33                                 ; $6103: $f8 $33
    call z, $f906                                 ; $6105: $cc $06 $f9
    inc bc                                        ; $6108: $03
    db $fc                                        ; $6109: $fc
    ld a, b                                       ; $610a: $78
    add a                                         ; $610b: $87
    inc bc                                        ; $610c: $03
    db $fc                                        ; $610d: $fc
    jr jr_074_60f7                                ; $610e: $18 $e7

    inc c                                         ; $6110: $0c
    rst $38                                       ; $6111: $ff
    ld h, b                                       ; $6112: $60
    rst $38                                       ; $6113: $ff

jr_074_6114:
    db $fc                                        ; $6114: $fc
    rst $38                                       ; $6115: $ff
    nop                                           ; $6116: $00
    rst $38                                       ; $6117: $ff
    inc sp                                        ; $6118: $33
    rst $38                                       ; $6119: $ff
    ld h, [hl]                                    ; $611a: $66
    rst $38                                       ; $611b: $ff
    db $fc                                        ; $611c: $fc
    rst $38                                       ; $611d: $ff
    nop                                           ; $611e: $00
    rst $38                                       ; $611f: $ff
    inc bc                                        ; $6120: $03
    rst $38                                       ; $6121: $ff
    jr @+$01                                      ; $6122: $18 $ff

    inc bc                                        ; $6124: $03
    rst $38                                       ; $6125: $ff
    nop                                           ; $6126: $00
    rst $38                                       ; $6127: $ff
    inc a                                         ; $6128: $3c
    rst $38                                       ; $6129: $ff
    nop                                           ; $612a: $00
    rst $38                                       ; $612b: $ff
    ccf                                           ; $612c: $3f
    rst $38                                       ; $612d: $ff
    nop                                           ; $612e: $00
    rst $38                                       ; $612f: $ff
    jr nc, @+$01                                  ; $6130: $30 $ff

    rst $20                                       ; $6132: $e7
    rst $38                                       ; $6133: $ff
    db $fc                                        ; $6134: $fc
    rst $38                                       ; $6135: $ff
    rst $38                                       ; $6136: $ff
    rst $38                                       ; $6137: $ff
    ret nz                                        ; $6138: $c0

    rst $38                                       ; $6139: $ff
    sbc a                                         ; $613a: $9f
    rst $38                                       ; $613b: $ff
    ldh a, [rIE]                                  ; $613c: $f0 $ff
    and $ff                                       ; $613e: $e6 $ff
    rrca                                          ; $6140: $0f
    rst $38                                       ; $6141: $ff
    sbc a                                         ; $6142: $9f
    rst $38                                       ; $6143: $ff
    inc c                                         ; $6144: $0c
    rst $38                                       ; $6145: $ff
    pop hl                                        ; $6146: $e1
    rst $38                                       ; $6147: $ff
    ccf                                           ; $6148: $3f
    rst $38                                       ; $6149: $ff
    rst $38                                       ; $614a: $ff
    rst $38                                       ; $614b: $ff
    inc sp                                        ; $614c: $33
    rst $38                                       ; $614d: $ff
    ld a, a                                       ; $614e: $7f
    rst $38                                       ; $614f: $ff
    inc bc                                        ; $6150: $03
    nop                                           ; $6151: $00
    ld b, $00                                     ; $6152: $06 $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    ld a, c                                       ; $6156: $79
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    nop                                           ; $6159: $00
    ld bc, $f000                                  ; $615a: $01 $00 $f0
    nop                                           ; $615d: $00
    ld bc, $0c00                                  ; $615e: $01 $00 $0c
    nop                                           ; $6161: $00
    ld h, b                                       ; $6162: $60
    nop                                           ; $6163: $00
    inc bc                                        ; $6164: $03
    nop                                           ; $6165: $00
    ldh [rP1], a                                  ; $6166: $e0 $00
    inc a                                         ; $6168: $3c
    nop                                           ; $6169: $00
    add b                                         ; $616a: $80
    nop                                           ; $616b: $00
    inc bc                                        ; $616c: $03
    nop                                           ; $616d: $00
    ldh [rP1], a                                  ; $616e: $e0 $00
    rst $38                                       ; $6170: $ff
    nop                                           ; $6171: $00
    add b                                         ; $6172: $80
    nop                                           ; $6173: $00
    rst $08                                       ; $6174: $cf
    nop                                           ; $6175: $00
    sbc b                                         ; $6176: $98
    nop                                           ; $6177: $00
    rst $38                                       ; $6178: $ff
    nop                                           ; $6179: $00
    ld a, a                                       ; $617a: $7f
    nop                                           ; $617b: $00
    rst $38                                       ; $617c: $ff
    nop                                           ; $617d: $00
    rst $38                                       ; $617e: $ff
    nop                                           ; $617f: $00
    inc bc                                        ; $6180: $03
    nop                                           ; $6181: $00
    ld a, a                                       ; $6182: $7f
    nop                                           ; $6183: $00
    call z, $7f00                                 ; $6184: $cc $00 $7f
    nop                                           ; $6187: $00
    rrca                                          ; $6188: $0f
    nop                                           ; $6189: $00
    cp $00                                        ; $618a: $fe $00
    rst $38                                       ; $618c: $ff
    nop                                           ; $618d: $00
    rst $38                                       ; $618e: $ff
    nop                                           ; $618f: $00
    inc c                                         ; $6190: $0c
    nop                                           ; $6191: $00
    ld h, b                                       ; $6192: $60
    nop                                           ; $6193: $00
    inc sp                                        ; $6194: $33
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    ldh a, [rP1]                                  ; $6198: $f0 $00
    add a                                         ; $619a: $87
    nop                                           ; $619b: $00
    nop                                           ; $619c: $00
    nop                                           ; $619d: $00

Call_074_619e:
    rst $38                                       ; $619e: $ff
    nop                                           ; $619f: $00
    inc bc                                        ; $61a0: $03
    nop                                           ; $61a1: $00
    ld e, $00                                     ; $61a2: $1e $00
    rrca                                          ; $61a4: $0f
    nop                                           ; $61a5: $00
    nop                                           ; $61a6: $00
    nop                                           ; $61a7: $00
    inc a                                         ; $61a8: $3c
    nop                                           ; $61a9: $00
    ld sp, hl                                     ; $61aa: $f9
    nop                                           ; $61ab: $00
    nop                                           ; $61ac: $00
    nop                                           ; $61ad: $00
    add c                                         ; $61ae: $81
    nop                                           ; $61af: $00
    rrca                                          ; $61b0: $0f
    nop                                           ; $61b1: $00
    ldh [rP1], a                                  ; $61b2: $e0 $00
    rst $38                                       ; $61b4: $ff
    nop                                           ; $61b5: $00
    add c                                         ; $61b6: $81
    nop                                           ; $61b7: $00
    rst $08                                       ; $61b8: $cf
    nop                                           ; $61b9: $00
    add hl, de                                    ; $61ba: $19
    nop                                           ; $61bb: $00
    rst $08                                       ; $61bc: $cf

jr_074_61bd:
    nop                                           ; $61bd: $00
    ld a, [hl]                                    ; $61be: $7e
    nop                                           ; $61bf: $00
    db $fc                                        ; $61c0: $fc
    nop                                           ; $61c1: $00
    rlca                                          ; $61c2: $07
    nop                                           ; $61c3: $00
    rst $38                                       ; $61c4: $ff
    nop                                           ; $61c5: $00
    ld sp, hl                                     ; $61c6: $f9
    nop                                           ; $61c7: $00
    rst $38                                       ; $61c8: $ff
    nop                                           ; $61c9: $00
    and $00                                       ; $61ca: $e6 $00
    rst $38                                       ; $61cc: $ff
    nop                                           ; $61cd: $00
    ld e, $00                                     ; $61ce: $1e $00
    rst $08                                       ; $61d0: $cf
    jr nc, jr_074_624c                            ; $61d1: $30 $79

    add [hl]                                      ; $61d3: $86
    rrca                                          ; $61d4: $0f
    ldh a, [rIE]                                  ; $61d5: $f0 $ff
    nop                                           ; $61d7: $00
    inc a                                         ; $61d8: $3c
    jp $07f8                                      ; $61d9: $c3 $f8 $07


    call z, $9933                                 ; $61dc: $cc $33 $99
    ld h, [hl]                                    ; $61df: $66
    di                                            ; $61e0: $f3
    inc c                                         ; $61e1: $0c
    and $19                                       ; $61e2: $e6 $19
    rst $38                                       ; $61e4: $ff

jr_074_61e5:
    nop                                           ; $61e5: $00
    rst $20                                       ; $61e6: $e7
    jr jr_074_61e5                                ; $61e7: $18 $fc

    inc bc                                        ; $61e9: $03
    ld a, a                                       ; $61ea: $7f
    add b                                         ; $61eb: $80
    jr nc, jr_074_61bd                            ; $61ec: $30 $cf

    rst $38                                       ; $61ee: $ff
    nop                                           ; $61ef: $00
    db $fc                                        ; $61f0: $fc
    inc bc                                        ; $61f1: $03
    add hl, de                                    ; $61f2: $19
    and $00                                       ; $61f3: $e6 $00
    rst $38                                       ; $61f5: $ff
    rra                                           ; $61f6: $1f
    ldh [rP1], a                                  ; $61f7: $e0 $00
    rst $38                                       ; $61f9: $ff
    ld a, c                                       ; $61fa: $79
    add [hl]                                      ; $61fb: $86
    inc c                                         ; $61fc: $0c
    di                                            ; $61fd: $f3
    ld h, b                                       ; $61fe: $60
    sbc a                                         ; $61ff: $9f
    nop                                           ; $6200: $00
    rst $38                                       ; $6201: $ff
    sbc [hl]                                      ; $6202: $9e
    ld h, c                                       ; $6203: $61
    rrca                                          ; $6204: $0f
    ldh a, [$e0]                                  ; $6205: $f0 $e0
    rra                                           ; $6207: $1f
    nop                                           ; $6208: $00
    rst $38                                       ; $6209: $ff
    add b                                         ; $620a: $80
    ld a, a                                       ; $620b: $7f
    call z, $0033                                 ; $620c: $cc $33 $00
    rst $38                                       ; $620f: $ff
    inc c                                         ; $6210: $0c
    rst $38                                       ; $6211: $ff
    ld h, c                                       ; $6212: $61
    rst $38                                       ; $6213: $ff
    nop                                           ; $6214: $00
    rst $38                                       ; $6215: $ff
    ld e, $ff                                     ; $6216: $1e $ff
    nop                                           ; $6218: $00
    rst $38                                       ; $6219: $ff
    nop                                           ; $621a: $00
    rst $38                                       ; $621b: $ff
    db $fc                                        ; $621c: $fc
    rst $38                                       ; $621d: $ff
    nop                                           ; $621e: $00
    rst $38                                       ; $621f: $ff
    nop                                           ; $6220: $00
    rst $38                                       ; $6221: $ff
    and $ff                                       ; $6222: $e6 $ff
    nop                                           ; $6224: $00
    rst $38                                       ; $6225: $ff
    ld a, b                                       ; $6226: $78
    rst $38                                       ; $6227: $ff
    rrca                                          ; $6228: $0f
    rst $38                                       ; $6229: $ff
    ld h, b                                       ; $622a: $60
    rst $38                                       ; $622b: $ff
    nop                                           ; $622c: $00
    rst $38                                       ; $622d: $ff
    ld a, b                                       ; $622e: $78
    rst $38                                       ; $622f: $ff
    rst $38                                       ; $6230: $ff
    rst $38                                       ; $6231: $ff
    ldh [rIE], a                                  ; $6232: $e0 $ff
    inc sp                                        ; $6234: $33
    rst $38                                       ; $6235: $ff
    and $ff                                       ; $6236: $e6 $ff
    rst $38                                       ; $6238: $ff
    rst $38                                       ; $6239: $ff
    ld h, [hl]                                    ; $623a: $66
    rst $38                                       ; $623b: $ff
    di                                            ; $623c: $f3
    rst $38                                       ; $623d: $ff
    sbc [hl]                                      ; $623e: $9e
    rst $38                                       ; $623f: $ff
    ret nz                                        ; $6240: $c0

    rst $38                                       ; $6241: $ff
    rra                                           ; $6242: $1f
    rst $38                                       ; $6243: $ff
    di                                            ; $6244: $f3
    rst $38                                       ; $6245: $ff
    rra                                           ; $6246: $1f
    rst $38                                       ; $6247: $ff
    rst $08                                       ; $6248: $cf
    rst $38                                       ; $6249: $ff
    ld a, [hl]                                    ; $624a: $7e
    rst $38                                       ; $624b: $ff

jr_074_624c:
    ccf                                           ; $624c: $3f
    rst $38                                       ; $624d: $ff
    ld a, a                                       ; $624e: $7f
    rst $38                                       ; $624f: $ff
    ret nz                                        ; $6250: $c0

    nop                                           ; $6251: $00
    sbc b                                         ; $6252: $98
    nop                                           ; $6253: $00
    rst $08                                       ; $6254: $cf
    nop                                           ; $6255: $00
    add b                                         ; $6256: $80
    nop                                           ; $6257: $00
    inc a                                         ; $6258: $3c
    nop                                           ; $6259: $00
    nop                                           ; $625a: $00
    nop                                           ; $625b: $00
    di                                            ; $625c: $f3
    nop                                           ; $625d: $00
    ld b, $00                                     ; $625e: $06 $00
    ret nz                                        ; $6260: $c0

    nop                                           ; $6261: $00
    add hl, de                                    ; $6262: $19
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    ld bc, $3000                                  ; $6266: $01 $00 $30
    nop                                           ; $6269: $00
    ld a, b                                       ; $626a: $78
    nop                                           ; $626b: $00
    inc a                                         ; $626c: $3c
    nop                                           ; $626d: $00
    ld h, b                                       ; $626e: $60
    nop                                           ; $626f: $00
    rst $38                                       ; $6270: $ff
    nop                                           ; $6271: $00
    sbc b                                         ; $6272: $98
    nop                                           ; $6273: $00
    db $fc                                        ; $6274: $fc
    nop                                           ; $6275: $00
    rlca                                          ; $6276: $07
    nop                                           ; $6277: $00
    rst $38                                       ; $6278: $ff
    nop                                           ; $6279: $00
    rst $38                                       ; $627a: $ff
    nop                                           ; $627b: $00
    rrca                                          ; $627c: $0f
    nop                                           ; $627d: $00
    rst $38                                       ; $627e: $ff
    nop                                           ; $627f: $00
    ret nz                                        ; $6280: $c0

    nop                                           ; $6281: $00
    ld a, c                                       ; $6282: $79
    nop                                           ; $6283: $00
    ccf                                           ; $6284: $3f
    nop                                           ; $6285: $00
    ld hl, sp+$00                                 ; $6286: $f8 $00
    rst $38                                       ; $6288: $ff
    nop                                           ; $6289: $00
    pop hl                                        ; $628a: $e1
    nop                                           ; $628b: $00
    ccf                                           ; $628c: $3f
    nop                                           ; $628d: $00
    rst $20                                       ; $628e: $e7
    nop                                           ; $628f: $00
    rst $38                                       ; $6290: $ff
    nop                                           ; $6291: $00
    rst $20                                       ; $6292: $e7
    jr jr_074_62d4                                ; $6293: $18 $3f

    ret nz                                        ; $6295: $c0

    ld h, c                                       ; $6296: $61
    sbc [hl]                                      ; $6297: $9e
    db $fc                                        ; $6298: $fc
    inc bc                                        ; $6299: $03
    rst $20                                       ; $629a: $e7
    jr @+$01                                      ; $629b: $18 $ff

    nop                                           ; $629d: $00
    pop hl                                        ; $629e: $e1

jr_074_629f:
    ld e, $fc                                     ; $629f: $1e $fc
    inc bc                                        ; $62a1: $03
    sbc c                                         ; $62a2: $99
    ld h, [hl]                                    ; $62a3: $66
    rst $08                                       ; $62a4: $cf
    jr nc, jr_074_629f                            ; $62a5: $30 $f8

    rlca                                          ; $62a7: $07
    ccf                                           ; $62a8: $3f
    ret nz                                        ; $62a9: $c0

    rst $38                                       ; $62aa: $ff
    nop                                           ; $62ab: $00
    ret nz                                        ; $62ac: $c0

    ccf                                           ; $62ad: $3f
    rst $38                                       ; $62ae: $ff
    nop                                           ; $62af: $00
    rrca                                          ; $62b0: $0f
    ldh a, [$f8]                                  ; $62b1: $f0 $f8
    rlca                                          ; $62b3: $07
    inc bc                                        ; $62b4: $03
    db $fc                                        ; $62b5: $fc
    ld a, b                                       ; $62b6: $78

jr_074_62b7:
    add a                                         ; $62b7: $87
    nop                                           ; $62b8: $00
    rst $38                                       ; $62b9: $ff
    nop                                           ; $62ba: $00
    rst $38                                       ; $62bb: $ff
    nop                                           ; $62bc: $00
    rst $38                                       ; $62bd: $ff
    nop                                           ; $62be: $00
    rst $38                                       ; $62bf: $ff
    ret nz                                        ; $62c0: $c0

    ccf                                           ; $62c1: $3f
    rlca                                          ; $62c2: $07
    ld hl, sp+$33                                 ; $62c3: $f8 $33
    call z, $f906                                 ; $62c5: $cc $06 $f9
    inc bc                                        ; $62c8: $03
    db $fc                                        ; $62c9: $fc
    ld a, b                                       ; $62ca: $78
    add a                                         ; $62cb: $87
    inc bc                                        ; $62cc: $03
    db $fc                                        ; $62cd: $fc
    jr jr_074_62b7                                ; $62ce: $18 $e7

    inc c                                         ; $62d0: $0c
    rst $38                                       ; $62d1: $ff
    ld h, b                                       ; $62d2: $60
    rst $38                                       ; $62d3: $ff

jr_074_62d4:
    db $fc                                        ; $62d4: $fc
    rst $38                                       ; $62d5: $ff
    nop                                           ; $62d6: $00
    rst $38                                       ; $62d7: $ff
    inc sp                                        ; $62d8: $33
    rst $38                                       ; $62d9: $ff
    ld h, [hl]                                    ; $62da: $66
    rst $38                                       ; $62db: $ff
    db $fc                                        ; $62dc: $fc
    rst $38                                       ; $62dd: $ff
    nop                                           ; $62de: $00
    rst $38                                       ; $62df: $ff
    inc bc                                        ; $62e0: $03
    rst $38                                       ; $62e1: $ff
    jr @+$01                                      ; $62e2: $18 $ff

    inc bc                                        ; $62e4: $03
    rst $38                                       ; $62e5: $ff
    nop                                           ; $62e6: $00
    rst $38                                       ; $62e7: $ff
    inc a                                         ; $62e8: $3c
    rst $38                                       ; $62e9: $ff
    nop                                           ; $62ea: $00
    rst $38                                       ; $62eb: $ff
    ccf                                           ; $62ec: $3f
    rst $38                                       ; $62ed: $ff
    nop                                           ; $62ee: $00
    rst $38                                       ; $62ef: $ff
    ld h, b                                       ; $62f0: $60
    rst $38                                       ; $62f1: $ff
    rst $08                                       ; $62f2: $cf
    rst $38                                       ; $62f3: $ff
    ld hl, sp-$01                                 ; $62f4: $f8 $ff
    rst $38                                       ; $62f6: $ff
    rst $38                                       ; $62f7: $ff
    add b                                         ; $62f8: $80
    rst $38                                       ; $62f9: $ff
    ccf                                           ; $62fa: $3f
    rst $38                                       ; $62fb: $ff
    ldh [rIE], a                                  ; $62fc: $e0 $ff
    call z, $1eff                                 ; $62fe: $cc $ff $1e
    rst $38                                       ; $6301: $ff
    ccf                                           ; $6302: $3f
    rst $38                                       ; $6303: $ff
    add hl, de                                    ; $6304: $19
    rst $38                                       ; $6305: $ff
    jp Jump_074_7fff                              ; $6306: $c3 $ff $7f


    rst $38                                       ; $6309: $ff
    rst $38                                       ; $630a: $ff
    rst $38                                       ; $630b: $ff
    ld h, a                                       ; $630c: $67
    rst $38                                       ; $630d: $ff
    rst $38                                       ; $630e: $ff
    rst $38                                       ; $630f: $ff
    inc c                                         ; $6310: $0c
    nop                                           ; $6311: $00
    add hl, de                                    ; $6312: $19
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    rst $20                                       ; $6316: $e7
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    ld b, $00                                     ; $631a: $06 $00
    ret nz                                        ; $631c: $c0

    nop                                           ; $631d: $00
    rlca                                          ; $631e: $07
    nop                                           ; $631f: $00
    jr nc, jr_074_6322                            ; $6320: $30 $00

jr_074_6322:
    add b                                         ; $6322: $80
    nop                                           ; $6323: $00
    inc c                                         ; $6324: $0c
    nop                                           ; $6325: $00
    add c                                         ; $6326: $81
    nop                                           ; $6327: $00
    ldh a, [rP1]                                  ; $6328: $f0 $00
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    rrca                                          ; $632c: $0f
    nop                                           ; $632d: $00
    add b                                         ; $632e: $80
    nop                                           ; $632f: $00
    db $fc                                        ; $6330: $fc
    nop                                           ; $6331: $00
    ld bc, $3f00                                  ; $6332: $01 $00 $3f
    nop                                           ; $6335: $00
    ld h, c                                       ; $6336: $61
    nop                                           ; $6337: $00
    db $fc                                        ; $6338: $fc
    nop                                           ; $6339: $00
    rst $38                                       ; $633a: $ff
    nop                                           ; $633b: $00
    rst $38                                       ; $633c: $ff
    nop                                           ; $633d: $00
    rst $38                                       ; $633e: $ff
    nop                                           ; $633f: $00
    rrca                                          ; $6340: $0f
    nop                                           ; $6341: $00
    cp $00                                        ; $6342: $fe $00
    inc sp                                        ; $6344: $33
    nop                                           ; $6345: $00
    cp $00                                        ; $6346: $fe $00
    ccf                                           ; $6348: $3f
    nop                                           ; $6349: $00
    ld sp, hl                                     ; $634a: $f9
    nop                                           ; $634b: $00
    rst $38                                       ; $634c: $ff
    nop                                           ; $634d: $00
    rst $38                                       ; $634e: $ff
    nop                                           ; $634f: $00
    jr jr_074_6352                                ; $6350: $18 $00

jr_074_6352:
    ret nz                                        ; $6352: $c0

    nop                                           ; $6353: $00
    ld h, [hl]                                    ; $6354: $66
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    ldh [rP1], a                                  ; $6358: $e0 $00
    rrca                                          ; $635a: $0f
    nop                                           ; $635b: $00
    nop                                           ; $635c: $00
    nop                                           ; $635d: $00
    rst $38                                       ; $635e: $ff
    nop                                           ; $635f: $00
    ld b, $00                                     ; $6360: $06 $00
    inc a                                         ; $6362: $3c
    nop                                           ; $6363: $00
    ld e, $00                                     ; $6364: $1e $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    ld a, c                                       ; $6368: $79
    nop                                           ; $6369: $00
    di                                            ; $636a: $f3
    nop                                           ; $636b: $00
    nop                                           ; $636c: $00
    nop                                           ; $636d: $00
    inc bc                                        ; $636e: $03
    nop                                           ; $636f: $00
    rra                                           ; $6370: $1f
    nop                                           ; $6371: $00
    ret nz                                        ; $6372: $c0

    nop                                           ; $6373: $00
    rst $38                                       ; $6374: $ff
    nop                                           ; $6375: $00
    inc bc                                        ; $6376: $03
    nop                                           ; $6377: $00
    sbc a                                         ; $6378: $9f
    nop                                           ; $6379: $00
    inc sp                                        ; $637a: $33
    nop                                           ; $637b: $00
    sbc a                                         ; $637c: $9f
    nop                                           ; $637d: $00
    db $fc                                        ; $637e: $fc
    nop                                           ; $637f: $00
    ld hl, sp+$00                                 ; $6380: $f8 $00
    rrca                                          ; $6382: $0f
    nop                                           ; $6383: $00
    rst $38                                       ; $6384: $ff
    nop                                           ; $6385: $00
    di                                            ; $6386: $f3
    nop                                           ; $6387: $00
    rst $38                                       ; $6388: $ff
    nop                                           ; $6389: $00
    call z, $ff00                                 ; $638a: $cc $00 $ff
    nop                                           ; $638d: $00
    inc a                                         ; $638e: $3c
    nop                                           ; $638f: $00
    sbc a                                         ; $6390: $9f
    ld h, b                                       ; $6391: $60
    di                                            ; $6392: $f3
    inc c                                         ; $6393: $0c
    rra                                           ; $6394: $1f
    ldh [rIE], a                                  ; $6395: $e0 $ff
    nop                                           ; $6397: $00
    ld a, c                                       ; $6398: $79
    add [hl]                                      ; $6399: $86
    ldh a, [rIF]                                  ; $639a: $f0 $0f
    sbc b                                         ; $639c: $98
    ld h, a                                       ; $639d: $67
    inc sp                                        ; $639e: $33
    call z, Call_000_18e7                         ; $639f: $cc $e7 $18
    call z, $fe33                                 ; $63a2: $cc $33 $fe
    ld bc, $30cf                                  ; $63a5: $01 $cf $30
    ld hl, sp+$07                                 ; $63a8: $f8 $07
    rst $38                                       ; $63aa: $ff
    nop                                           ; $63ab: $00
    ld h, c                                       ; $63ac: $61
    sbc [hl]                                      ; $63ad: $9e
    rst $38                                       ; $63ae: $ff
    nop                                           ; $63af: $00
    ld hl, sp+$07                                 ; $63b0: $f8 $07
    inc sp                                        ; $63b2: $33
    call z, $ff00                                 ; $63b3: $cc $00 $ff
    ccf                                           ; $63b6: $3f
    ret nz                                        ; $63b7: $c0

    nop                                           ; $63b8: $00
    rst $38                                       ; $63b9: $ff
    di                                            ; $63ba: $f3
    inc c                                         ; $63bb: $0c
    add hl, de                                    ; $63bc: $19
    and $c0                                       ; $63bd: $e6 $c0
    ccf                                           ; $63bf: $3f
    ld bc, $3cfe                                  ; $63c0: $01 $fe $3c
    jp $e11e                                      ; $63c3: $c3 $1e $e1


    ret nz                                        ; $63c6: $c0

    ccf                                           ; $63c7: $3f
    nop                                           ; $63c8: $00
    rst $38                                       ; $63c9: $ff
    nop                                           ; $63ca: $00
    rst $38                                       ; $63cb: $ff
    sbc b                                         ; $63cc: $98
    ld h, a                                       ; $63cd: $67
    nop                                           ; $63ce: $00
    rst $38                                       ; $63cf: $ff
    jr @+$01                                      ; $63d0: $18 $ff

    jp Jump_000_00ff                              ; $63d2: $c3 $ff $00


    rst $38                                       ; $63d5: $ff
    inc a                                         ; $63d6: $3c
    rst $38                                       ; $63d7: $ff
    nop                                           ; $63d8: $00
    rst $38                                       ; $63d9: $ff
    nop                                           ; $63da: $00
    rst $38                                       ; $63db: $ff
    ld hl, sp-$01                                 ; $63dc: $f8 $ff
    nop                                           ; $63de: $00
    rst $38                                       ; $63df: $ff
    nop                                           ; $63e0: $00
    rst $38                                       ; $63e1: $ff
    call z, Call_000_00ff                         ; $63e2: $cc $ff $00
    rst $38                                       ; $63e5: $ff
    ldh a, [rIE]                                  ; $63e6: $f0 $ff
    ld e, $ff                                     ; $63e8: $1e $ff
    ret nz                                        ; $63ea: $c0

    rst $38                                       ; $63eb: $ff
    ld bc, $f0ff                                  ; $63ec: $01 $ff $f0
    rst $38                                       ; $63ef: $ff
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    ret nz                                        ; $63f2: $c0

    rst $38                                       ; $63f3: $ff
    ld h, a                                       ; $63f4: $67
    rst $38                                       ; $63f5: $ff
    call z, $ffff                                 ; $63f6: $cc $ff $ff
    rst $38                                       ; $63f9: $ff
    call z, $e6ff                                 ; $63fa: $cc $ff $e6
    rst $38                                       ; $63fd: $ff
    inc a                                         ; $63fe: $3c
    rst $38                                       ; $63ff: $ff
    add c                                         ; $6400: $81
    rst $38                                       ; $6401: $ff
    ccf                                           ; $6402: $3f
    rst $38                                       ; $6403: $ff
    and $ff                                       ; $6404: $e6 $ff
    ccf                                           ; $6406: $3f
    rst $38                                       ; $6407: $ff
    sbc a                                         ; $6408: $9f
    rst $38                                       ; $6409: $ff
    db $fc                                        ; $640a: $fc
    rst $38                                       ; $640b: $ff
    ld a, a                                       ; $640c: $7f
    rst $38                                       ; $640d: $ff
    rst $38                                       ; $640e: $ff
    rst $38                                       ; $640f: $ff
    add c                                         ; $6410: $81
    nop                                           ; $6411: $00
    jr nc, jr_074_6414                            ; $6412: $30 $00

jr_074_6414:
    sbc [hl]                                      ; $6414: $9e
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    ld a, b                                       ; $6418: $78
    nop                                           ; $6419: $00
    nop                                           ; $641a: $00
    nop                                           ; $641b: $00
    and $00                                       ; $641c: $e6 $00
    inc c                                         ; $641e: $0c
    nop                                           ; $641f: $00
    add c                                         ; $6420: $81
    nop                                           ; $6421: $00
    inc sp                                        ; $6422: $33
    nop                                           ; $6423: $00
    ld bc, $0300                                  ; $6424: $01 $00 $03
    nop                                           ; $6427: $00
    ld h, b                                       ; $6428: $60
    nop                                           ; $6429: $00
    ldh a, [rP1]                                  ; $642a: $f0 $00
    ld a, c                                       ; $642c: $79
    nop                                           ; $642d: $00
    ret nz                                        ; $642e: $c0

    nop                                           ; $642f: $00
    rst $38                                       ; $6430: $ff
    nop                                           ; $6431: $00
    jr nc, jr_074_6434                            ; $6432: $30 $00

jr_074_6434:
    ld hl, sp+$00                                 ; $6434: $f8 $00
    rrca                                          ; $6436: $0f
    nop                                           ; $6437: $00
    rst $38                                       ; $6438: $ff
    nop                                           ; $6439: $00
    rst $38                                       ; $643a: $ff
    nop                                           ; $643b: $00
    ld e, $00                                     ; $643c: $1e $00
    rst $38                                       ; $643e: $ff
    nop                                           ; $643f: $00
    add c                                         ; $6440: $81
    nop                                           ; $6441: $00
    di                                            ; $6442: $f3
    nop                                           ; $6443: $00
    ld a, a                                       ; $6444: $7f
    nop                                           ; $6445: $00
    ldh a, [rP1]                                  ; $6446: $f0 $00
    rst $38                                       ; $6448: $ff
    nop                                           ; $6449: $00
    jp Jump_074_7e00                              ; $644a: $c3 $00 $7e


    nop                                           ; $644d: $00
    rst $08                                       ; $644e: $cf
    nop                                           ; $644f: $00
    rst $38                                       ; $6450: $ff
    nop                                           ; $6451: $00
    rst $08                                       ; $6452: $cf
    jr nc, jr_074_64d4                            ; $6453: $30 $7f

    add b                                         ; $6455: $80
    jp $f83c                                      ; $6456: $c3 $3c $f8


    rlca                                          ; $6459: $07
    rst $08                                       ; $645a: $cf
    jr nc, @+$01                                  ; $645b: $30 $ff

    nop                                           ; $645d: $00
    jp $f93c                                      ; $645e: $c3 $3c $f9


    ld b, $33                                     ; $6461: $06 $33
    call z, Call_074_619e                         ; $6463: $cc $9e $61
    ldh a, [rIF]                                  ; $6466: $f0 $0f
    ld a, a                                       ; $6468: $7f
    add b                                         ; $6469: $80
    rst $38                                       ; $646a: $ff
    nop                                           ; $646b: $00
    add c                                         ; $646c: $81
    ld a, [hl]                                    ; $646d: $7e
    rst $38                                       ; $646e: $ff
    nop                                           ; $646f: $00
    rra                                           ; $6470: $1f
    ldh [$f0], a                                  ; $6471: $e0 $f0
    rrca                                          ; $6473: $0f
    ld b, $f9                                     ; $6474: $06 $f9
    ldh a, [rIF]                                  ; $6476: $f0 $0f
    nop                                           ; $6478: $00
    rst $38                                       ; $6479: $ff
    nop                                           ; $647a: $00
    rst $38                                       ; $647b: $ff
    nop                                           ; $647c: $00
    rst $38                                       ; $647d: $ff
    nop                                           ; $647e: $00
    rst $38                                       ; $647f: $ff
    add b                                         ; $6480: $80
    ld a, a                                       ; $6481: $7f
    rrca                                          ; $6482: $0f
    ldh a, [$66]                                  ; $6483: $f0 $66
    sbc c                                         ; $6485: $99
    inc c                                         ; $6486: $0c
    di                                            ; $6487: $f3
    ld b, $f9                                     ; $6488: $06 $f9
    ldh a, [rIF]                                  ; $648a: $f0 $0f
    ld b, $f9                                     ; $648c: $06 $f9
    jr nc, @-$2f                                  ; $648e: $30 $cf

    jr @+$01                                      ; $6490: $18 $ff

    ret nz                                        ; $6492: $c0

    rst $38                                       ; $6493: $ff
    ld hl, sp-$01                                 ; $6494: $f8 $ff
    nop                                           ; $6496: $00
    rst $38                                       ; $6497: $ff
    ld h, [hl]                                    ; $6498: $66
    rst $38                                       ; $6499: $ff
    call z, $f8ff                                 ; $649a: $cc $ff $f8
    rst $38                                       ; $649d: $ff
    nop                                           ; $649e: $00
    rst $38                                       ; $649f: $ff
    ld b, $ff                                     ; $64a0: $06 $ff
    jr nc, @+$01                                  ; $64a2: $30 $ff

    rlca                                          ; $64a4: $07
    rst $38                                       ; $64a5: $ff
    nop                                           ; $64a6: $00
    rst $38                                       ; $64a7: $ff
    ld a, b                                       ; $64a8: $78
    rst $38                                       ; $64a9: $ff
    nop                                           ; $64aa: $00
    rst $38                                       ; $64ab: $ff
    ld a, a                                       ; $64ac: $7f
    rst $38                                       ; $64ad: $ff
    nop                                           ; $64ae: $00
    rst $38                                       ; $64af: $ff
    ret nz                                        ; $64b0: $c0

    rst $38                                       ; $64b1: $ff
    sbc [hl]                                      ; $64b2: $9e
    rst $38                                       ; $64b3: $ff
    ldh a, [rIE]                                  ; $64b4: $f0 $ff
    rst $38                                       ; $64b6: $ff
    rst $38                                       ; $64b7: $ff
    nop                                           ; $64b8: $00
    rst $38                                       ; $64b9: $ff
    ld a, a                                       ; $64ba: $7f
    rst $38                                       ; $64bb: $ff
    ret nz                                        ; $64bc: $c0

    rst $38                                       ; $64bd: $ff
    sbc c                                         ; $64be: $99
    rst $38                                       ; $64bf: $ff
    inc a                                         ; $64c0: $3c
    rst $38                                       ; $64c1: $ff
    ld a, a                                       ; $64c2: $7f
    rst $38                                       ; $64c3: $ff
    inc sp                                        ; $64c4: $33
    rst $38                                       ; $64c5: $ff
    add a                                         ; $64c6: $87
    rst $38                                       ; $64c7: $ff
    rst $38                                       ; $64c8: $ff
    rst $38                                       ; $64c9: $ff
    cp $ff                                        ; $64ca: $fe $ff
    rst $08                                       ; $64cc: $cf
    rst $38                                       ; $64cd: $ff
    rst $38                                       ; $64ce: $ff
    rst $38                                       ; $64cf: $ff
    jr jr_074_64d2                                ; $64d0: $18 $00

jr_074_64d2:
    inc sp                                        ; $64d2: $33
    nop                                           ; $64d3: $00

jr_074_64d4:
    nop                                           ; $64d4: $00
    nop                                           ; $64d5: $00
    rst $08                                       ; $64d6: $cf
    nop                                           ; $64d7: $00
    ld bc, $0c00                                  ; $64d8: $01 $00 $0c
    nop                                           ; $64db: $00
    add b                                         ; $64dc: $80
    nop                                           ; $64dd: $00
    rrca                                          ; $64de: $0f
    nop                                           ; $64df: $00
    ld h, b                                       ; $64e0: $60
    nop                                           ; $64e1: $00
    nop                                           ; $64e2: $00
    nop                                           ; $64e3: $00
    jr jr_074_64e6                                ; $64e4: $18 $00

jr_074_64e6:
    inc bc                                        ; $64e6: $03
    nop                                           ; $64e7: $00
    ldh [rP1], a                                  ; $64e8: $e0 $00
    nop                                           ; $64ea: $00
    nop                                           ; $64eb: $00
    rra                                           ; $64ec: $1f
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    ld hl, sp+$00                                 ; $64f0: $f8 $00
    inc bc                                        ; $64f2: $03
    nop                                           ; $64f3: $00
    ld a, [hl]                                    ; $64f4: $7e
    nop                                           ; $64f5: $00
    jp $f800                                      ; $64f6: $c3 $00 $f8


    nop                                           ; $64f9: $00
    rst $38                                       ; $64fa: $ff
    nop                                           ; $64fb: $00
    rst $38                                       ; $64fc: $ff
    nop                                           ; $64fd: $00
    rst $38                                       ; $64fe: $ff

jr_074_64ff:
    nop                                           ; $64ff: $00
    rra                                           ; $6500: $1f
    nop                                           ; $6501: $00
    db $fc                                        ; $6502: $fc
    nop                                           ; $6503: $00
    ld h, [hl]                                    ; $6504: $66
    nop                                           ; $6505: $00
    db $fc                                        ; $6506: $fc
    nop                                           ; $6507: $00
    ld a, a                                       ; $6508: $7f
    nop                                           ; $6509: $00
    di                                            ; $650a: $f3
    nop                                           ; $650b: $00
    rst $38                                       ; $650c: $ff
    nop                                           ; $650d: $00
    rst $38                                       ; $650e: $ff
    nop                                           ; $650f: $00
    ld h, b                                       ; $6510: $60
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    sbc b                                         ; $6514: $98
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    add c                                         ; $6518: $81
    nop                                           ; $6519: $00
    ccf                                           ; $651a: $3f
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    nop                                           ; $651d: $00

jr_074_651e:
    db $fc                                        ; $651e: $fc
    nop                                           ; $651f: $00
    jr jr_074_6522                                ; $6520: $18 $00

jr_074_6522:
    di                                            ; $6522: $f3
    nop                                           ; $6523: $00
    ld a, c                                       ; $6524: $79
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    rst $20                                       ; $6528: $e7
    nop                                           ; $6529: $00
    call z, RST_00                                ; $652a: $cc $00 $00
    nop                                           ; $652d: $00
    rrca                                          ; $652e: $0f
    nop                                           ; $652f: $00
    ld a, a                                       ; $6530: $7f
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    rst $38                                       ; $6534: $ff
    nop                                           ; $6535: $00
    rrca                                          ; $6536: $0f
    nop                                           ; $6537: $00
    ld a, a                                       ; $6538: $7f
    nop                                           ; $6539: $00
    rst $08                                       ; $653a: $cf
    nop                                           ; $653b: $00
    ld a, a                                       ; $653c: $7f
    nop                                           ; $653d: $00
    ldh a, [rP1]                                  ; $653e: $f0 $00
    ldh [rP1], a                                  ; $6540: $e0 $00
    ccf                                           ; $6542: $3f
    nop                                           ; $6543: $00
    rst $38                                       ; $6544: $ff
    nop                                           ; $6545: $00
    call z, $fe00                                 ; $6546: $cc $00 $fe
    nop                                           ; $6549: $00
    jr nc, jr_074_654c                            ; $654a: $30 $00

jr_074_654c:
    cp $00                                        ; $654c: $fe $00
    di                                            ; $654e: $f3
    nop                                           ; $654f: $00
    ld a, a                                       ; $6550: $7f
    add b                                         ; $6551: $80
    rst $08                                       ; $6552: $cf
    jr nc, jr_074_65d4                            ; $6553: $30 $7f

    add b                                         ; $6555: $80
    rst $38                                       ; $6556: $ff
    nop                                           ; $6557: $00
    rst $20                                       ; $6558: $e7
    jr jr_074_651e                                ; $6559: $18 $c3

    inc a                                         ; $655b: $3c
    ld h, c                                       ; $655c: $61
    sbc [hl]                                      ; $655d: $9e
    rst $08                                       ; $655e: $cf
    jr nc, jr_074_64ff                            ; $655f: $30 $9e

    ld h, c                                       ; $6561: $61
    inc sp                                        ; $6562: $33
    call z, $07f8                                 ; $6563: $cc $f8 $07
    ccf                                           ; $6566: $3f
    ret nz                                        ; $6567: $c0

    pop hl                                        ; $6568: $e1
    ld e, $ff                                     ; $6569: $1e $ff
    nop                                           ; $656b: $00
    add [hl]                                      ; $656c: $86
    ld a, c                                       ; $656d: $79
    db $fc                                        ; $656e: $fc
    inc bc                                        ; $656f: $03
    ldh a, [rIF]                                  ; $6570: $f0 $0f
    ld h, [hl]                                    ; $6572: $66
    sbc c                                         ; $6573: $99
    nop                                           ; $6574: $00
    rst $38                                       ; $6575: $ff
    ld a, a                                       ; $6576: $7f
    add b                                         ; $6577: $80
    nop                                           ; $6578: $00
    rst $38                                       ; $6579: $ff
    and $19                                       ; $657a: $e6 $19
    inc sp                                        ; $657c: $33
    call z, Call_074_7f80                         ; $657d: $cc $80 $7f
    inc bc                                        ; $6580: $03
    db $fc                                        ; $6581: $fc
    ld a, b                                       ; $6582: $78
    add a                                         ; $6583: $87
    inc a                                         ; $6584: $3c
    jp Jump_074_7f80                              ; $6585: $c3 $80 $7f


    nop                                           ; $6588: $00
    rst $38                                       ; $6589: $ff
    ld bc, $30fe                                  ; $658a: $01 $fe $30
    rst $08                                       ; $658d: $cf
    ld bc, $30fe                                  ; $658e: $01 $fe $30
    rst $38                                       ; $6591: $ff
    add a                                         ; $6592: $87
    rst $38                                       ; $6593: $ff
    nop                                           ; $6594: $00
    rst $38                                       ; $6595: $ff
    ld a, c                                       ; $6596: $79
    rst $38                                       ; $6597: $ff
    nop                                           ; $6598: $00
    rst $38                                       ; $6599: $ff
    ld bc, $f0ff                                  ; $659a: $01 $ff $f0
    rst $38                                       ; $659d: $ff
    ld bc, $00ff                                  ; $659e: $01 $ff $00
    rst $38                                       ; $65a1: $ff
    sbc c                                         ; $65a2: $99
    rst $38                                       ; $65a3: $ff
    nop                                           ; $65a4: $00
    rst $38                                       ; $65a5: $ff
    ldh [rIE], a                                  ; $65a6: $e0 $ff
    inc a                                         ; $65a8: $3c
    rst $38                                       ; $65a9: $ff
    add b                                         ; $65aa: $80
    rst $38                                       ; $65ab: $ff
    inc bc                                        ; $65ac: $03
    rst $38                                       ; $65ad: $ff
    ldh [rIE], a                                  ; $65ae: $e0 $ff
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    add b                                         ; $65b2: $80
    rst $38                                       ; $65b3: $ff
    rst $08                                       ; $65b4: $cf
    rst $38                                       ; $65b5: $ff
    sbc b                                         ; $65b6: $98
    rst $38                                       ; $65b7: $ff
    rst $38                                       ; $65b8: $ff
    rst $38                                       ; $65b9: $ff
    sbc c                                         ; $65ba: $99
    rst $38                                       ; $65bb: $ff
    call z, Call_074_79ff                         ; $65bc: $cc $ff $79
    rst $38                                       ; $65bf: $ff
    inc bc                                        ; $65c0: $03
    rst $38                                       ; $65c1: $ff
    ld a, a                                       ; $65c2: $7f
    rst $38                                       ; $65c3: $ff
    call z, Call_074_7fff                         ; $65c4: $cc $ff $7f
    rst $38                                       ; $65c7: $ff
    ccf                                           ; $65c8: $3f
    rst $38                                       ; $65c9: $ff
    ld sp, hl                                     ; $65ca: $f9
    rst $38                                       ; $65cb: $ff
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    cp $ff                                        ; $65ce: $fe $ff
    inc bc                                        ; $65d0: $03
    nop                                           ; $65d1: $00
    ld h, b                                       ; $65d2: $60
    nop                                           ; $65d3: $00

jr_074_65d4:
    inc a                                         ; $65d4: $3c
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    nop                                           ; $65d7: $00
    ldh a, [rP1]                                  ; $65d8: $f0 $00
    ld bc, $cc00                                  ; $65da: $01 $00 $cc
    nop                                           ; $65dd: $00
    add hl, de                                    ; $65de: $19
    nop                                           ; $65df: $00
    inc bc                                        ; $65e0: $03
    nop                                           ; $65e1: $00
    ld h, [hl]                                    ; $65e2: $66
    nop                                           ; $65e3: $00
    inc bc                                        ; $65e4: $03
    nop                                           ; $65e5: $00
    ld b, $00                                     ; $65e6: $06 $00
    ret nz                                        ; $65e8: $c0

    nop                                           ; $65e9: $00
    ldh [rP1], a                                  ; $65ea: $e0 $00
    di                                            ; $65ec: $f3
    nop                                           ; $65ed: $00
    add b                                         ; $65ee: $80
    nop                                           ; $65ef: $00
    rst $38                                       ; $65f0: $ff
    nop                                           ; $65f1: $00
    jr nc, jr_074_65f4                            ; $65f2: $30 $00

jr_074_65f4:
    ld hl, sp+$00                                 ; $65f4: $f8 $00
    rrca                                          ; $65f6: $0f
    nop                                           ; $65f7: $00
    rst $38                                       ; $65f8: $ff
    nop                                           ; $65f9: $00
    rst $38                                       ; $65fa: $ff
    nop                                           ; $65fb: $00
    ld e, $00                                     ; $65fc: $1e $00
    rst $38                                       ; $65fe: $ff
    nop                                           ; $65ff: $00
    add c                                         ; $6600: $81
    nop                                           ; $6601: $00
    di                                            ; $6602: $f3
    nop                                           ; $6603: $00
    ld a, a                                       ; $6604: $7f
    nop                                           ; $6605: $00
    ldh a, [rP1]                                  ; $6606: $f0 $00
    rst $38                                       ; $6608: $ff
    nop                                           ; $6609: $00
    jp Jump_074_7e00                              ; $660a: $c3 $00 $7e


    nop                                           ; $660d: $00
    rst $08                                       ; $660e: $cf
    nop                                           ; $660f: $00
    rst $38                                       ; $6610: $ff
    nop                                           ; $6611: $00
    rst $08                                       ; $6612: $cf
    jr nc, jr_074_6694                            ; $6613: $30 $7f

    add b                                         ; $6615: $80
    jp $f83c                                      ; $6616: $c3 $3c $f8


    rlca                                          ; $6619: $07
    rst $08                                       ; $661a: $cf
    jr nc, @+$01                                  ; $661b: $30 $ff

    nop                                           ; $661d: $00
    jp $f93c                                      ; $661e: $c3 $3c $f9


    ld b, $33                                     ; $6621: $06 $33
    call z, Call_074_619e                         ; $6623: $cc $9e $61
    ldh a, [rIF]                                  ; $6626: $f0 $0f
    ld a, a                                       ; $6628: $7f
    add b                                         ; $6629: $80
    rst $38                                       ; $662a: $ff
    nop                                           ; $662b: $00
    add c                                         ; $662c: $81
    ld a, [hl]                                    ; $662d: $7e
    rst $38                                       ; $662e: $ff
    nop                                           ; $662f: $00
    rra                                           ; $6630: $1f
    ldh [$f0], a                                  ; $6631: $e0 $f0

Call_074_6633:
    rrca                                          ; $6633: $0f
    ld b, $f9                                     ; $6634: $06 $f9
    ldh a, [rIF]                                  ; $6636: $f0 $0f
    nop                                           ; $6638: $00
    rst $38                                       ; $6639: $ff
    nop                                           ; $663a: $00
    rst $38                                       ; $663b: $ff
    nop                                           ; $663c: $00
    rst $38                                       ; $663d: $ff
    nop                                           ; $663e: $00
    rst $38                                       ; $663f: $ff
    add b                                         ; $6640: $80
    ld a, a                                       ; $6641: $7f
    rrca                                          ; $6642: $0f
    ldh a, [$66]                                  ; $6643: $f0 $66
    sbc c                                         ; $6645: $99
    inc c                                         ; $6646: $0c
    di                                            ; $6647: $f3
    ld b, $f9                                     ; $6648: $06 $f9
    ldh a, [rIF]                                  ; $664a: $f0 $0f
    ld b, $f9                                     ; $664c: $06 $f9
    jr nc, @-$2f                                  ; $664e: $30 $cf

    jr @+$01                                      ; $6650: $18 $ff

    ret nz                                        ; $6652: $c0

    rst $38                                       ; $6653: $ff
    ld hl, sp-$01                                 ; $6654: $f8 $ff
    nop                                           ; $6656: $00
    rst $38                                       ; $6657: $ff
    ld h, [hl]                                    ; $6658: $66
    rst $38                                       ; $6659: $ff
    call z, $f8ff                                 ; $665a: $cc $ff $f8
    rst $38                                       ; $665d: $ff
    nop                                           ; $665e: $00
    rst $38                                       ; $665f: $ff
    ld b, $ff                                     ; $6660: $06 $ff
    jr nc, @+$01                                  ; $6662: $30 $ff

    rlca                                          ; $6664: $07
    rst $38                                       ; $6665: $ff
    nop                                           ; $6666: $00
    rst $38                                       ; $6667: $ff
    ld a, b                                       ; $6668: $78
    rst $38                                       ; $6669: $ff
    nop                                           ; $666a: $00
    rst $38                                       ; $666b: $ff
    ld a, a                                       ; $666c: $7f
    rst $38                                       ; $666d: $ff
    nop                                           ; $666e: $00
    rst $38                                       ; $666f: $ff
    add b                                         ; $6670: $80
    rst $38                                       ; $6671: $ff
    inc a                                         ; $6672: $3c
    rst $38                                       ; $6673: $ff
    ldh [rIE], a                                  ; $6674: $e0 $ff
    rst $38                                       ; $6676: $ff
    rst $38                                       ; $6677: $ff
    ld bc, $ffff                                  ; $6678: $01 $ff $ff
    rst $38                                       ; $667b: $ff
    add c                                         ; $667c: $81
    rst $38                                       ; $667d: $ff
    inc sp                                        ; $667e: $33
    rst $38                                       ; $667f: $ff
    ld a, c                                       ; $6680: $79
    rst $38                                       ; $6681: $ff
    rst $38                                       ; $6682: $ff
    rst $38                                       ; $6683: $ff
    ld h, a                                       ; $6684: $67
    rst $38                                       ; $6685: $ff
    rrca                                          ; $6686: $0f
    rst $38                                       ; $6687: $ff
    cp $ff                                        ; $6688: $fe $ff
    db $fc                                        ; $668a: $fc
    rst $38                                       ; $668b: $ff
    sbc a                                         ; $668c: $9f
    rst $38                                       ; $668d: $ff
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    jr nc, jr_074_6692                            ; $6690: $30 $00

jr_074_6692:
    ld h, [hl]                                    ; $6692: $66
    nop                                           ; $6693: $00

jr_074_6694:
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    sbc [hl]                                      ; $6696: $9e
    nop                                           ; $6697: $00
    inc bc                                        ; $6698: $03
    nop                                           ; $6699: $00
    jr jr_074_669c                                ; $669a: $18 $00

jr_074_669c:
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    ld e, $00                                     ; $669e: $1e $00
    ret nz                                        ; $66a0: $c0

    nop                                           ; $66a1: $00

jr_074_66a2:
    nop                                           ; $66a2: $00
    nop                                           ; $66a3: $00
    jr nc, jr_074_66a6                            ; $66a4: $30 $00

jr_074_66a6:
    rlca                                          ; $66a6: $07
    nop                                           ; $66a7: $00
    ret nz                                        ; $66a8: $c0

    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    nop                                           ; $66ab: $00
    ccf                                           ; $66ac: $3f
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    nop                                           ; $66af: $00
    ldh a, [rP1]                                  ; $66b0: $f0 $00
    rlca                                          ; $66b2: $07
    nop                                           ; $66b3: $00
    db $fc                                        ; $66b4: $fc
    nop                                           ; $66b5: $00
    add a                                         ; $66b6: $87
    nop                                           ; $66b7: $00
    ldh a, [rP1]                                  ; $66b8: $f0 $00
    rst $38                                       ; $66ba: $ff
    nop                                           ; $66bb: $00
    rst $38                                       ; $66bc: $ff
    nop                                           ; $66bd: $00
    rst $38                                       ; $66be: $ff
    nop                                           ; $66bf: $00
    ccf                                           ; $66c0: $3f
    nop                                           ; $66c1: $00
    ld hl, sp+$00                                 ; $66c2: $f8 $00
    call z, $f900                                 ; $66c4: $cc $00 $f9
    nop                                           ; $66c7: $00
    rst $38                                       ; $66c8: $ff
    nop                                           ; $66c9: $00
    rst $20                                       ; $66ca: $e7
    nop                                           ; $66cb: $00
    rst $38                                       ; $66cc: $ff
    nop                                           ; $66cd: $00
    rst $38                                       ; $66ce: $ff
    nop                                           ; $66cf: $00
    ret nz                                        ; $66d0: $c0

    nop                                           ; $66d1: $00
    ld bc, $3000                                  ; $66d2: $01 $00 $30
    nop                                           ; $66d5: $00
    nop                                           ; $66d6: $00
    nop                                           ; $66d7: $00
    inc bc                                        ; $66d8: $03
    nop                                           ; $66d9: $00
    ld a, a                                       ; $66da: $7f
    nop                                           ; $66db: $00
    nop                                           ; $66dc: $00
    nop                                           ; $66dd: $00
    ld hl, sp+$00                                 ; $66de: $f8 $00
    jr nc, jr_074_66e2                            ; $66e0: $30 $00

jr_074_66e2:
    and $00                                       ; $66e2: $e6 $00
    di                                            ; $66e4: $f3
    nop                                           ; $66e5: $00
    nop                                           ; $66e6: $00
    nop                                           ; $66e7: $00
    rst $08                                       ; $66e8: $cf
    nop                                           ; $66e9: $00
    sbc b                                         ; $66ea: $98
    nop                                           ; $66eb: $00
    nop                                           ; $66ec: $00
    nop                                           ; $66ed: $00
    rra                                           ; $66ee: $1f
    nop                                           ; $66ef: $00
    rst $38                                       ; $66f0: $ff
    nop                                           ; $66f1: $00
    nop                                           ; $66f2: $00
    nop                                           ; $66f3: $00
    rst $38                                       ; $66f4: $ff
    nop                                           ; $66f5: $00
    rra                                           ; $66f6: $1f
    nop                                           ; $66f7: $00
    rst $38                                       ; $66f8: $ff
    nop                                           ; $66f9: $00
    sbc [hl]                                      ; $66fa: $9e
    nop                                           ; $66fb: $00
    rst $38                                       ; $66fc: $ff
    nop                                           ; $66fd: $00
    pop hl                                        ; $66fe: $e1
    nop                                           ; $66ff: $00

Call_074_6700:
    ret nz                                        ; $6700: $c0

    nop                                           ; $6701: $00
    ld a, [hl]                                    ; $6702: $7e
    nop                                           ; $6703: $00
    rst $38                                       ; $6704: $ff
    nop                                           ; $6705: $00
    sbc b                                         ; $6706: $98
    nop                                           ; $6707: $00
    db $fc                                        ; $6708: $fc
    nop                                           ; $6709: $00
    ld h, c                                       ; $670a: $61
    nop                                           ; $670b: $00
    db $fc                                        ; $670c: $fc
    nop                                           ; $670d: $00
    rst $20                                       ; $670e: $e7
    nop                                           ; $670f: $00
    rst $38                                       ; $6710: $ff
    nop                                           ; $6711: $00
    sbc [hl]                                      ; $6712: $9e
    ld h, c                                       ; $6713: $61
    rst $38                                       ; $6714: $ff
    nop                                           ; $6715: $00
    cp $01                                        ; $6716: $fe $01
    rst $08                                       ; $6718: $cf
    jr nc, jr_074_66a2                            ; $6719: $30 $87

    ld a, b                                       ; $671b: $78
    jp $9f3c                                      ; $671c: $c3 $3c $9f


    ld h, b                                       ; $671f: $60
    inc a                                         ; $6720: $3c
    jp $9867                                      ; $6721: $c3 $67 $98


    ldh a, [rIF]                                  ; $6724: $f0 $0f
    ld a, a                                       ; $6726: $7f
    add b                                         ; $6727: $80
    jp $ff3c                                      ; $6728: $c3 $3c $ff


    nop                                           ; $672b: $00
    inc c                                         ; $672c: $0c
    di                                            ; $672d: $f3
    ld sp, hl                                     ; $672e: $f9
    ld b, $e0                                     ; $672f: $06 $e0
    rra                                           ; $6731: $1f
    call z, $0033                                 ; $6732: $cc $33 $00
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    rst $38                                       ; $6739: $ff
    call z, Call_074_6633                         ; $673a: $cc $33 $66
    sbc c                                         ; $673d: $99
    nop                                           ; $673e: $00
    rst $38                                       ; $673f: $ff
    rlca                                          ; $6740: $07
    ld hl, sp-$10                                 ; $6741: $f8 $f0
    rrca                                          ; $6743: $0f
    ld a, b                                       ; $6744: $78
    add a                                         ; $6745: $87
    nop                                           ; $6746: $00
    rst $38                                       ; $6747: $ff
    nop                                           ; $6748: $00
    rst $38                                       ; $6749: $ff
    inc bc                                        ; $674a: $03
    db $fc                                        ; $674b: $fc
    ld h, b                                       ; $674c: $60
    sbc a                                         ; $674d: $9f
    inc bc                                        ; $674e: $03
    db $fc                                        ; $674f: $fc
    ld h, b                                       ; $6750: $60
    rst $38                                       ; $6751: $ff
    rrca                                          ; $6752: $0f
    rst $38                                       ; $6753: $ff
    nop                                           ; $6754: $00
    rst $38                                       ; $6755: $ff
    di                                            ; $6756: $f3
    rst $38                                       ; $6757: $ff
    nop                                           ; $6758: $00
    rst $38                                       ; $6759: $ff
    inc bc                                        ; $675a: $03
    rst $38                                       ; $675b: $ff
    ldh [rIE], a                                  ; $675c: $e0 $ff
    inc bc                                        ; $675e: $03
    rst $38                                       ; $675f: $ff
    nop                                           ; $6760: $00
    rst $38                                       ; $6761: $ff
    inc sp                                        ; $6762: $33
    rst $38                                       ; $6763: $ff
    nop                                           ; $6764: $00
    rst $38                                       ; $6765: $ff
    ret nz                                        ; $6766: $c0

    rst $38                                       ; $6767: $ff
    ld a, b                                       ; $6768: $78
    rst $38                                       ; $6769: $ff
    nop                                           ; $676a: $00
    rst $38                                       ; $676b: $ff
    rlca                                          ; $676c: $07
    rst $38                                       ; $676d: $ff
    ret nz                                        ; $676e: $c0

    rst $38                                       ; $676f: $ff
    cp $ff                                        ; $6770: $fe $ff
    nop                                           ; $6772: $00
    rst $38                                       ; $6773: $ff
    sbc a                                         ; $6774: $9f
    rst $38                                       ; $6775: $ff
    jr nc, @+$01                                  ; $6776: $30 $ff

    cp $ff                                        ; $6778: $fe $ff
    inc sp                                        ; $677a: $33
    rst $38                                       ; $677b: $ff
    sbc c                                         ; $677c: $99
    rst $38                                       ; $677d: $ff
    di                                            ; $677e: $f3
    rst $38                                       ; $677f: $ff
    rlca                                          ; $6780: $07
    rst $38                                       ; $6781: $ff
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    sbc c                                         ; $6784: $99
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    ld a, a                                       ; $6788: $7f
    rst $38                                       ; $6789: $ff
    di                                            ; $678a: $f3
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    rst $38                                       ; $678d: $ff
    db $fc                                        ; $678e: $fc
    rst $38                                       ; $678f: $ff
    ld b, $00                                     ; $6790: $06 $00
    ret nz                                        ; $6792: $c0

    nop                                           ; $6793: $00
    ld a, b                                       ; $6794: $78
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    pop hl                                        ; $6798: $e1
    nop                                           ; $6799: $00
    inc bc                                        ; $679a: $03
    nop                                           ; $679b: $00
    sbc c                                         ; $679c: $99
    nop                                           ; $679d: $00
    inc sp                                        ; $679e: $33
    nop                                           ; $679f: $00
    ld b, $00                                     ; $67a0: $06 $00
    call z, $0600                                 ; $67a2: $cc $00 $06
    nop                                           ; $67a5: $00
    inc c                                         ; $67a6: $0c
    nop                                           ; $67a7: $00
    add c                                         ; $67a8: $81
    nop                                           ; $67a9: $00
    ret nz                                        ; $67aa: $c0

    nop                                           ; $67ab: $00
    rst $20                                       ; $67ac: $e7
    nop                                           ; $67ad: $00
    nop                                           ; $67ae: $00
    nop                                           ; $67af: $00
    rst $38                                       ; $67b0: $ff
    nop                                           ; $67b1: $00
    ld h, c                                       ; $67b2: $61
    nop                                           ; $67b3: $00
    ldh a, [rP1]                                  ; $67b4: $f0 $00
    rra                                           ; $67b6: $1f
    nop                                           ; $67b7: $00
    rst $38                                       ; $67b8: $ff
    nop                                           ; $67b9: $00
    rst $38                                       ; $67ba: $ff
    nop                                           ; $67bb: $00
    inc a                                         ; $67bc: $3c
    nop                                           ; $67bd: $00
    rst $38                                       ; $67be: $ff
    nop                                           ; $67bf: $00
    inc bc                                        ; $67c0: $03
    nop                                           ; $67c1: $00
    and $00                                       ; $67c2: $e6 $00
    rst $38                                       ; $67c4: $ff
    nop                                           ; $67c5: $00
    ldh [rP1], a                                  ; $67c6: $e0 $00
    rst $38                                       ; $67c8: $ff
    nop                                           ; $67c9: $00
    add a                                         ; $67ca: $87
    nop                                           ; $67cb: $00
    db $fc                                        ; $67cc: $fc
    nop                                           ; $67cd: $00
    sbc a                                         ; $67ce: $9f
    nop                                           ; $67cf: $00
    rst $38                                       ; $67d0: $ff
    nop                                           ; $67d1: $00
    sbc [hl]                                      ; $67d2: $9e
    ld h, c                                       ; $67d3: $61
    rst $38                                       ; $67d4: $ff
    nop                                           ; $67d5: $00
    add a                                         ; $67d6: $87
    ld a, b                                       ; $67d7: $78
    ldh a, [rIF]                                  ; $67d8: $f0 $0f
    sbc a                                         ; $67da: $9f
    ld h, b                                       ; $67db: $60
    rst $38                                       ; $67dc: $ff
    nop                                           ; $67dd: $00
    add a                                         ; $67de: $87
    ld a, b                                       ; $67df: $78
    di                                            ; $67e0: $f3
    inc c                                         ; $67e1: $0c
    ld h, a                                       ; $67e2: $67
    sbc b                                         ; $67e3: $98
    inc a                                         ; $67e4: $3c
    jp $1ee1                                      ; $67e5: $c3 $e1 $1e


    rst $38                                       ; $67e8: $ff
    nop                                           ; $67e9: $00
    rst $38                                       ; $67ea: $ff
    nop                                           ; $67eb: $00
    inc bc                                        ; $67ec: $03
    db $fc                                        ; $67ed: $fc
    rst $38                                       ; $67ee: $ff
    nop                                           ; $67ef: $00
    ccf                                           ; $67f0: $3f
    ret nz                                        ; $67f1: $c0

    ldh [$1f], a                                  ; $67f2: $e0 $1f
    inc c                                         ; $67f4: $0c
    di                                            ; $67f5: $f3
    ldh [$1f], a                                  ; $67f6: $e0 $1f
    nop                                           ; $67f8: $00
    rst $38                                       ; $67f9: $ff
    ld bc, $00fe                                  ; $67fa: $01 $fe $00
    rst $38                                       ; $67fd: $ff
    nop                                           ; $67fe: $00
    rst $38                                       ; $67ff: $ff
    nop                                           ; $6800: $00
    rst $38                                       ; $6801: $ff
    rra                                           ; $6802: $1f
    ldh [$cc], a                                  ; $6803: $e0 $cc
    inc sp                                        ; $6805: $33
    add hl, de                                    ; $6806: $19
    and $0c                                       ; $6807: $e6 $0c
    di                                            ; $6809: $f3
    ldh [$1f], a                                  ; $680a: $e0 $1f
    inc c                                         ; $680c: $0c
    di                                            ; $680d: $f3
    ld h, b                                       ; $680e: $60
    sbc a                                         ; $680f: $9f
    jr nc, @+$01                                  ; $6810: $30 $ff

    add b                                         ; $6812: $80
    rst $38                                       ; $6813: $ff
    ldh a, [rIE]                                  ; $6814: $f0 $ff
    nop                                           ; $6816: $00
    rst $38                                       ; $6817: $ff
    call z, $98ff                                 ; $6818: $cc $ff $98
    rst $38                                       ; $681b: $ff
    ldh a, [rIE]                                  ; $681c: $f0 $ff
    nop                                           ; $681e: $00
    rst $38                                       ; $681f: $ff
    inc c                                         ; $6820: $0c
    rst $38                                       ; $6821: $ff
    ld h, c                                       ; $6822: $61
    rst $38                                       ; $6823: $ff
    rrca                                          ; $6824: $0f
    rst $38                                       ; $6825: $ff
    nop                                           ; $6826: $00
    rst $38                                       ; $6827: $ff
    ldh a, [rIE]                                  ; $6828: $f0 $ff
    ld bc, $ffff                                  ; $682a: $01 $ff $ff
    rst $38                                       ; $682d: $ff
    nop                                           ; $682e: $00
    rst $38                                       ; $682f: $ff
    nop                                           ; $6830: $00
    rst $38                                       ; $6831: $ff
    ld a, c                                       ; $6832: $79
    rst $38                                       ; $6833: $ff
    ret nz                                        ; $6834: $c0

    rst $38                                       ; $6835: $ff
    cp $ff                                        ; $6836: $fe $ff
    inc bc                                        ; $6838: $03
    rst $38                                       ; $6839: $ff
    rst $38                                       ; $683a: $ff
    rst $38                                       ; $683b: $ff
    inc bc                                        ; $683c: $03
    rst $38                                       ; $683d: $ff
    ld h, a                                       ; $683e: $67
    rst $38                                       ; $683f: $ff
    di                                            ; $6840: $f3
    rst $38                                       ; $6841: $ff
    cp $ff                                        ; $6842: $fe $ff
    rst $08                                       ; $6844: $cf
    rst $38                                       ; $6845: $ff
    rra                                           ; $6846: $1f
    rst $38                                       ; $6847: $ff
    db $fc                                        ; $6848: $fc
    rst $38                                       ; $6849: $ff
    ld sp, hl                                     ; $684a: $f9
    rst $38                                       ; $684b: $ff
    ccf                                           ; $684c: $3f
    rst $38                                       ; $684d: $ff
    cp $ff                                        ; $684e: $fe $ff
    ld h, c                                       ; $6850: $61
    nop                                           ; $6851: $00
    call z, RST_00                                ; $6852: $cc $00 $00
    nop                                           ; $6855: $00
    inc a                                         ; $6856: $3c
    nop                                           ; $6857: $00
    rlca                                          ; $6858: $07
    nop                                           ; $6859: $00
    jr nc, jr_074_685c                            ; $685a: $30 $00

jr_074_685c:
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    inc a                                         ; $685e: $3c
    nop                                           ; $685f: $00
    add b                                         ; $6860: $80
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    ld h, b                                       ; $6864: $60
    nop                                           ; $6865: $00
    rrca                                          ; $6866: $0f
    nop                                           ; $6867: $00
    add b                                         ; $6868: $80
    nop                                           ; $6869: $00
    nop                                           ; $686a: $00
    nop                                           ; $686b: $00
    ld a, [hl]                                    ; $686c: $7e
    nop                                           ; $686d: $00
    nop                                           ; $686e: $00
    nop                                           ; $686f: $00
    ldh [rP1], a                                  ; $6870: $e0 $00
    rrca                                          ; $6872: $0f
    nop                                           ; $6873: $00
    ld sp, hl                                     ; $6874: $f9
    nop                                           ; $6875: $00
    rrca                                          ; $6876: $0f
    nop                                           ; $6877: $00
    pop hl                                        ; $6878: $e1
    nop                                           ; $6879: $00
    rst $38                                       ; $687a: $ff
    nop                                           ; $687b: $00
    rst $38                                       ; $687c: $ff
    nop                                           ; $687d: $00
    rst $38                                       ; $687e: $ff
    nop                                           ; $687f: $00
    ld a, a                                       ; $6880: $7f
    nop                                           ; $6881: $00
    ldh a, [rP1]                                  ; $6882: $f0 $00
    sbc c                                         ; $6884: $99
    nop                                           ; $6885: $00
    di                                            ; $6886: $f3
    nop                                           ; $6887: $00
    rst $38                                       ; $6888: $ff
    nop                                           ; $6889: $00
    rst $08                                       ; $688a: $cf
    nop                                           ; $688b: $00
    rst $38                                       ; $688c: $ff
    nop                                           ; $688d: $00
    rst $38                                       ; $688e: $ff
    nop                                           ; $688f: $00
    add b                                         ; $6890: $80
    nop                                           ; $6891: $00
    inc bc                                        ; $6892: $03
    nop                                           ; $6893: $00
    ld h, c                                       ; $6894: $61
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    rlca                                          ; $6898: $07
    nop                                           ; $6899: $00
    rst $38                                       ; $689a: $ff
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    nop                                           ; $689d: $00
    ldh a, [rP1]                                  ; $689e: $f0 $00
    ld h, c                                       ; $68a0: $61
    nop                                           ; $68a1: $00
    call z, $e600                                 ; $68a2: $cc $00 $e6
    nop                                           ; $68a5: $00
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    sbc [hl]                                      ; $68a8: $9e
    nop                                           ; $68a9: $00
    jr nc, jr_074_68ac                            ; $68aa: $30 $00

jr_074_68ac:
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    ccf                                           ; $68ae: $3f
    nop                                           ; $68af: $00
    rst $38                                       ; $68b0: $ff
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    rst $38                                       ; $68b4: $ff
    nop                                           ; $68b5: $00
    ccf                                           ; $68b6: $3f
    nop                                           ; $68b7: $00
    rst $38                                       ; $68b8: $ff
    nop                                           ; $68b9: $00
    inc a                                         ; $68ba: $3c
    nop                                           ; $68bb: $00
    rst $38                                       ; $68bc: $ff
    nop                                           ; $68bd: $00
    jp $8100                                      ; $68be: $c3 $00 $81


    nop                                           ; $68c1: $00
    db $fc                                        ; $68c2: $fc
    nop                                           ; $68c3: $00
    rst $38                                       ; $68c4: $ff
    nop                                           ; $68c5: $00

jr_074_68c6:
    jr nc, jr_074_68c8                            ; $68c6: $30 $00

jr_074_68c8:
    ld sp, hl                                     ; $68c8: $f9
    nop                                           ; $68c9: $00
    jp $f900                                      ; $68ca: $c3 $00 $f9


    nop                                           ; $68cd: $00
    rst $08                                       ; $68ce: $cf
    nop                                           ; $68cf: $00
    cp $01                                        ; $68d0: $fe $01
    inc a                                         ; $68d2: $3c
    jp Jump_000_00ff                              ; $68d3: $c3 $ff $00


    db $fc                                        ; $68d6: $fc
    inc bc                                        ; $68d7: $03
    sbc a                                         ; $68d8: $9f
    ld h, b                                       ; $68d9: $60
    rrca                                          ; $68da: $0f
    ldh a, [$86]                                  ; $68db: $f0 $86
    ld a, c                                       ; $68dd: $79
    ccf                                           ; $68de: $3f
    ret nz                                        ; $68df: $c0

    ld a, c                                       ; $68e0: $79
    add [hl]                                      ; $68e1: $86
    rst $08                                       ; $68e2: $cf
    jr nc, jr_074_68c6                            ; $68e3: $30 $e1

    ld e, $ff                                     ; $68e5: $1e $ff
    nop                                           ; $68e7: $00
    add a                                         ; $68e8: $87
    ld a, b                                       ; $68e9: $78
    rst $38                                       ; $68ea: $ff
    nop                                           ; $68eb: $00
    add hl, de                                    ; $68ec: $19
    and $f3                                       ; $68ed: $e6 $f3
    inc c                                         ; $68ef: $0c
    ret nz                                        ; $68f0: $c0

    ccf                                           ; $68f1: $3f
    sbc c                                         ; $68f2: $99
    ld h, [hl]                                    ; $68f3: $66
    nop                                           ; $68f4: $00
    rst $38                                       ; $68f5: $ff
    cp $01                                        ; $68f6: $fe $01
    nop                                           ; $68f8: $00
    rst $38                                       ; $68f9: $ff
    sbc b                                         ; $68fa: $98
    ld h, a                                       ; $68fb: $67
    call z, $0033                                 ; $68fc: $cc $33 $00
    rst $38                                       ; $68ff: $ff
    rrca                                          ; $6900: $0f
    ldh a, [$e1]                                  ; $6901: $f0 $e1
    ld e, $f0                                     ; $6903: $1e $f0
    rrca                                          ; $6905: $0f
    ld bc, $00fe                                  ; $6906: $01 $fe $00
    rst $38                                       ; $6909: $ff
    rlca                                          ; $690a: $07
    ld hl, sp-$40                                 ; $690b: $f8 $c0
    ccf                                           ; $690d: $3f
    ld b, $f9                                     ; $690e: $06 $f9
    ret nz                                        ; $6910: $c0

    rst $38                                       ; $6911: $ff
    ld e, $ff                                     ; $6912: $1e $ff
    nop                                           ; $6914: $00
    rst $38                                       ; $6915: $ff
    rst $20                                       ; $6916: $e7
    rst $38                                       ; $6917: $ff
    nop                                           ; $6918: $00
    rst $38                                       ; $6919: $ff
    ld b, $ff                                     ; $691a: $06 $ff
    ret nz                                        ; $691c: $c0

    rst $38                                       ; $691d: $ff
    rlca                                          ; $691e: $07
    rst $38                                       ; $691f: $ff
    nop                                           ; $6920: $00
    rst $38                                       ; $6921: $ff
    ld h, [hl]                                    ; $6922: $66
    rst $38                                       ; $6923: $ff
    nop                                           ; $6924: $00
    rst $38                                       ; $6925: $ff
    add c                                         ; $6926: $81
    rst $38                                       ; $6927: $ff
    ldh a, [rIE]                                  ; $6928: $f0 $ff
    nop                                           ; $692a: $00
    rst $38                                       ; $692b: $ff
    rrca                                          ; $692c: $0f
    rst $38                                       ; $692d: $ff
    add b                                         ; $692e: $80
    rst $38                                       ; $692f: $ff
    db $fc                                        ; $6930: $fc
    rst $38                                       ; $6931: $ff
    ld bc, $3fff                                  ; $6932: $01 $ff $3f
    rst $38                                       ; $6935: $ff
    ld h, c                                       ; $6936: $61
    rst $38                                       ; $6937: $ff
    db $fc                                        ; $6938: $fc
    rst $38                                       ; $6939: $ff
    ld h, a                                       ; $693a: $67
    rst $38                                       ; $693b: $ff
    inc sp                                        ; $693c: $33
    rst $38                                       ; $693d: $ff
    rst $20                                       ; $693e: $e7
    rst $38                                       ; $693f: $ff
    rrca                                          ; $6940: $0f
    rst $38                                       ; $6941: $ff
    cp $ff                                        ; $6942: $fe $ff
    inc sp                                        ; $6944: $33
    rst $38                                       ; $6945: $ff
    cp $ff                                        ; $6946: $fe $ff
    rst $38                                       ; $6948: $ff
    rst $38                                       ; $6949: $ff
    and $ff                                       ; $694a: $e6 $ff
    rst $38                                       ; $694c: $ff
    rst $38                                       ; $694d: $ff
    ld sp, hl                                     ; $694e: $f9
    rst $38                                       ; $694f: $ff
    inc c                                         ; $6950: $0c
    nop                                           ; $6951: $00
    add c                                         ; $6952: $81
    nop                                           ; $6953: $00
    ldh a, [rP1]                                  ; $6954: $f0 $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    jp $0700                                      ; $6958: $c3 $00 $07


    nop                                           ; $695b: $00
    inc sp                                        ; $695c: $33
    nop                                           ; $695d: $00
    ld h, [hl]                                    ; $695e: $66
    nop                                           ; $695f: $00
    inc c                                         ; $6960: $0c
    nop                                           ; $6961: $00
    sbc c                                         ; $6962: $99
    nop                                           ; $6963: $00
    inc c                                         ; $6964: $0c
    nop                                           ; $6965: $00
    jr jr_074_6968                                ; $6966: $18 $00

jr_074_6968:
    inc bc                                        ; $6968: $03
    nop                                           ; $6969: $00
    add b                                         ; $696a: $80
    nop                                           ; $696b: $00
    rst $08                                       ; $696c: $cf
    nop                                           ; $696d: $00
    nop                                           ; $696e: $00
    nop                                           ; $696f: $00
    rst $38                                       ; $6970: $ff
    nop                                           ; $6971: $00
    ld h, c                                       ; $6972: $61
    nop                                           ; $6973: $00
    ldh a, [rP1]                                  ; $6974: $f0 $00
    rra                                           ; $6976: $1f
    nop                                           ; $6977: $00
    rst $38                                       ; $6978: $ff
    nop                                           ; $6979: $00
    rst $38                                       ; $697a: $ff
    nop                                           ; $697b: $00
    inc a                                         ; $697c: $3c
    nop                                           ; $697d: $00
    rst $38                                       ; $697e: $ff
    nop                                           ; $697f: $00
    inc bc                                        ; $6980: $03
    nop                                           ; $6981: $00
    and $00                                       ; $6982: $e6 $00
    rst $38                                       ; $6984: $ff
    nop                                           ; $6985: $00
    ldh [rP1], a                                  ; $6986: $e0 $00
    rst $38                                       ; $6988: $ff
    nop                                           ; $6989: $00
    add a                                         ; $698a: $87
    nop                                           ; $698b: $00
    db $fc                                        ; $698c: $fc
    nop                                           ; $698d: $00
    sbc a                                         ; $698e: $9f
    nop                                           ; $698f: $00
    rst $38                                       ; $6990: $ff
    nop                                           ; $6991: $00
    sbc [hl]                                      ; $6992: $9e
    ld h, c                                       ; $6993: $61
    rst $38                                       ; $6994: $ff
    nop                                           ; $6995: $00
    add a                                         ; $6996: $87
    ld a, b                                       ; $6997: $78
    ldh a, [rIF]                                  ; $6998: $f0 $0f
    sbc a                                         ; $699a: $9f
    ld h, b                                       ; $699b: $60
    rst $38                                       ; $699c: $ff
    nop                                           ; $699d: $00
    add a                                         ; $699e: $87
    ld a, b                                       ; $699f: $78
    di                                            ; $69a0: $f3
    inc c                                         ; $69a1: $0c
    ld h, a                                       ; $69a2: $67
    sbc b                                         ; $69a3: $98
    inc a                                         ; $69a4: $3c
    jp $1ee1                                      ; $69a5: $c3 $e1 $1e


    rst $38                                       ; $69a8: $ff
    nop                                           ; $69a9: $00
    rst $38                                       ; $69aa: $ff
    nop                                           ; $69ab: $00
    inc bc                                        ; $69ac: $03
    db $fc                                        ; $69ad: $fc
    rst $38                                       ; $69ae: $ff
    nop                                           ; $69af: $00
    ccf                                           ; $69b0: $3f
    ret nz                                        ; $69b1: $c0

    ldh [$1f], a                                  ; $69b2: $e0 $1f
    inc c                                         ; $69b4: $0c
    di                                            ; $69b5: $f3
    ldh [$1f], a                                  ; $69b6: $e0 $1f
    nop                                           ; $69b8: $00
    rst $38                                       ; $69b9: $ff
    ld bc, $00fe                                  ; $69ba: $01 $fe $00
    rst $38                                       ; $69bd: $ff
    nop                                           ; $69be: $00
    rst $38                                       ; $69bf: $ff
    nop                                           ; $69c0: $00
    rst $38                                       ; $69c1: $ff
    rra                                           ; $69c2: $1f
    ldh [$cc], a                                  ; $69c3: $e0 $cc
    inc sp                                        ; $69c5: $33
    add hl, de                                    ; $69c6: $19
    and $0c                                       ; $69c7: $e6 $0c
    di                                            ; $69c9: $f3
    ldh [$1f], a                                  ; $69ca: $e0 $1f
    inc c                                         ; $69cc: $0c
    di                                            ; $69cd: $f3
    ld h, b                                       ; $69ce: $60
    sbc a                                         ; $69cf: $9f
    jr nc, @+$01                                  ; $69d0: $30 $ff

    add b                                         ; $69d2: $80
    rst $38                                       ; $69d3: $ff
    ldh a, [rIE]                                  ; $69d4: $f0 $ff
    nop                                           ; $69d6: $00
    rst $38                                       ; $69d7: $ff
    call z, $98ff                                 ; $69d8: $cc $ff $98
    rst $38                                       ; $69db: $ff
    ldh a, [rIE]                                  ; $69dc: $f0 $ff
    nop                                           ; $69de: $00
    rst $38                                       ; $69df: $ff
    inc c                                         ; $69e0: $0c
    rst $38                                       ; $69e1: $ff
    ld h, c                                       ; $69e2: $61
    rst $38                                       ; $69e3: $ff
    rrca                                          ; $69e4: $0f
    rst $38                                       ; $69e5: $ff
    nop                                           ; $69e6: $00
    rst $38                                       ; $69e7: $ff
    ldh a, [rIE]                                  ; $69e8: $f0 $ff
    ld bc, $ffff                                  ; $69ea: $01 $ff $ff
    rst $38                                       ; $69ed: $ff
    nop                                           ; $69ee: $00
    rst $38                                       ; $69ef: $ff
    ld bc, $f3ff                                  ; $69f0: $01 $ff $f3
    rst $38                                       ; $69f3: $ff
    add c                                         ; $69f4: $81
    rst $38                                       ; $69f5: $ff
    db $fc                                        ; $69f6: $fc
    rst $38                                       ; $69f7: $ff
    rlca                                          ; $69f8: $07
    rst $38                                       ; $69f9: $ff
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    ld b, $ff                                     ; $69fc: $06 $ff
    rst $08                                       ; $69fe: $cf
    rst $38                                       ; $69ff: $ff
    and $ff                                       ; $6a00: $e6 $ff
    db $fc                                        ; $6a02: $fc
    rst $38                                       ; $6a03: $ff
    sbc a                                         ; $6a04: $9f
    rst $38                                       ; $6a05: $ff
    ccf                                           ; $6a06: $3f
    rst $38                                       ; $6a07: $ff
    ld hl, sp-$01                                 ; $6a08: $f8 $ff
    di                                            ; $6a0a: $f3
    rst $38                                       ; $6a0b: $ff
    ld a, [hl]                                    ; $6a0c: $7e
    rst $38                                       ; $6a0d: $ff
    db $fc                                        ; $6a0e: $fc
    rst $38                                       ; $6a0f: $ff
    add [hl]                                      ; $6a10: $86
    nop                                           ; $6a11: $00
    jr nc, jr_074_6a14                            ; $6a12: $30 $00

jr_074_6a14:
    ld bc, $f000                                  ; $6a14: $01 $00 $f0
    nop                                           ; $6a17: $00
    ld e, $00                                     ; $6a18: $1e $00
    ret nz                                        ; $6a1a: $c0

    nop                                           ; $6a1b: $00
    ld bc, $f000                                  ; $6a1c: $01 $00 $f0
    nop                                           ; $6a1f: $00
    ld bc, $0300                                  ; $6a20: $01 $00 $03
    nop                                           ; $6a23: $00
    add b                                         ; $6a24: $80
    nop                                           ; $6a25: $00
    inc a                                         ; $6a26: $3c
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    ld hl, sp+$00                                 ; $6a2c: $f8 $00
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    add c                                         ; $6a30: $81
    nop                                           ; $6a31: $00
    ccf                                           ; $6a32: $3f
    nop                                           ; $6a33: $00
    and $00                                       ; $6a34: $e6 $00
    ccf                                           ; $6a36: $3f
    nop                                           ; $6a37: $00
    add a                                         ; $6a38: $87
    nop                                           ; $6a39: $00
    rst $38                                       ; $6a3a: $ff
    nop                                           ; $6a3b: $00
    rst $38                                       ; $6a3c: $ff
    nop                                           ; $6a3d: $00
    rst $38                                       ; $6a3e: $ff
    nop                                           ; $6a3f: $00
    rst $38                                       ; $6a40: $ff
    nop                                           ; $6a41: $00
    ret nz                                        ; $6a42: $c0

    nop                                           ; $6a43: $00
    ld h, a                                       ; $6a44: $67
    nop                                           ; $6a45: $00
    call z, $ff00                                 ; $6a46: $cc $00 $ff
    nop                                           ; $6a49: $00
    ccf                                           ; $6a4a: $3f
    nop                                           ; $6a4b: $00
    rst $38                                       ; $6a4c: $ff
    nop                                           ; $6a4d: $00
    rst $38                                       ; $6a4e: $ff
    nop                                           ; $6a4f: $00
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    rlca                                          ; $6a52: $07
    nop                                           ; $6a53: $00
    jp RST_00                                     ; $6a54: $c3 $00 $00


    nop                                           ; $6a57: $00
    rrca                                          ; $6a58: $0f
    nop                                           ; $6a59: $00
    cp $00                                        ; $6a5a: $fe $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    ldh [rP1], a                                  ; $6a5e: $e0 $00
    jp $9800                                      ; $6a60: $c3 $00 $98


    nop                                           ; $6a63: $00
    call z, RST_00                                ; $6a64: $cc $00 $00
    nop                                           ; $6a67: $00
    inc a                                         ; $6a68: $3c
    nop                                           ; $6a69: $00
    ld h, c                                       ; $6a6a: $61
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    ld a, a                                       ; $6a6e: $7f
    nop                                           ; $6a6f: $00
    rst $38                                       ; $6a70: $ff
    nop                                           ; $6a71: $00
    ld bc, $ff00                                  ; $6a72: $01 $00 $ff
    nop                                           ; $6a75: $00
    ld a, [hl]                                    ; $6a76: $7e
    nop                                           ; $6a77: $00
    rst $38                                       ; $6a78: $ff
    nop                                           ; $6a79: $00
    ld a, c                                       ; $6a7a: $79
    nop                                           ; $6a7b: $00
    rst $38                                       ; $6a7c: $ff
    nop                                           ; $6a7d: $00
    add a                                         ; $6a7e: $87
    nop                                           ; $6a7f: $00
    inc bc                                        ; $6a80: $03
    nop                                           ; $6a81: $00
    ld hl, sp+$00                                 ; $6a82: $f8 $00
    rst $38                                       ; $6a84: $ff
    nop                                           ; $6a85: $00
    ld h, b                                       ; $6a86: $60
    nop                                           ; $6a87: $00
    di                                            ; $6a88: $f3
    nop                                           ; $6a89: $00
    add [hl]                                      ; $6a8a: $86

jr_074_6a8b:
    nop                                           ; $6a8b: $00
    di                                            ; $6a8c: $f3
    nop                                           ; $6a8d: $00
    sbc a                                         ; $6a8e: $9f
    nop                                           ; $6a8f: $00
    db $fc                                        ; $6a90: $fc
    inc bc                                        ; $6a91: $03
    ld a, c                                       ; $6a92: $79
    add [hl]                                      ; $6a93: $86
    rst $38                                       ; $6a94: $ff
    nop                                           ; $6a95: $00
    ld sp, hl                                     ; $6a96: $f9
    ld b, $3f                                     ; $6a97: $06 $3f
    ret nz                                        ; $6a99: $c0

    rra                                           ; $6a9a: $1f
    ldh [$0c], a                                  ; $6a9b: $e0 $0c
    di                                            ; $6a9d: $f3
    ld a, a                                       ; $6a9e: $7f
    add b                                         ; $6a9f: $80
    di                                            ; $6aa0: $f3
    inc c                                         ; $6aa1: $0c
    sbc [hl]                                      ; $6aa2: $9e
    ld h, c                                       ; $6aa3: $61
    jp $ff3c                                      ; $6aa4: $c3 $3c $ff


    nop                                           ; $6aa7: $00
    rrca                                          ; $6aa8: $0f
    ldh a, [$fe]                                  ; $6aa9: $f0 $fe
    ld bc, $cc33                                  ; $6aab: $01 $33 $cc
    and $19                                       ; $6aae: $e6 $19
    add b                                         ; $6ab0: $80
    ld a, a                                       ; $6ab1: $7f
    inc sp                                        ; $6ab2: $33
    call z, $fe01                                 ; $6ab3: $cc $01 $fe
    db $fc                                        ; $6ab6: $fc
    inc bc                                        ; $6ab7: $03
    nop                                           ; $6ab8: $00
    rst $38                                       ; $6ab9: $ff
    jr nc, jr_074_6a8b                            ; $6aba: $30 $cf

    sbc c                                         ; $6abc: $99
    ld h, [hl]                                    ; $6abd: $66
    nop                                           ; $6abe: $00
    rst $38                                       ; $6abf: $ff
    rra                                           ; $6ac0: $1f
    ldh [$c3], a                                  ; $6ac1: $e0 $c3
    inc a                                         ; $6ac3: $3c
    ldh [$1f], a                                  ; $6ac4: $e0 $1f
    inc bc                                        ; $6ac6: $03
    db $fc                                        ; $6ac7: $fc
    nop                                           ; $6ac8: $00
    rst $38                                       ; $6ac9: $ff
    rrca                                          ; $6aca: $0f
    ldh a, [$81]                                  ; $6acb: $f0 $81
    ld a, [hl]                                    ; $6acd: $7e
    inc c                                         ; $6ace: $0c
    di                                            ; $6acf: $f3
    add b                                         ; $6ad0: $80
    rst $38                                       ; $6ad1: $ff
    inc a                                         ; $6ad2: $3c
    rst $38                                       ; $6ad3: $ff
    nop                                           ; $6ad4: $00
    rst $38                                       ; $6ad5: $ff
    rst $08                                       ; $6ad6: $cf
    rst $38                                       ; $6ad7: $ff
    ld bc, $0cff                                  ; $6ad8: $01 $ff $0c
    rst $38                                       ; $6adb: $ff
    add b                                         ; $6adc: $80
    rst $38                                       ; $6add: $ff
    rrca                                          ; $6ade: $0f
    rst $38                                       ; $6adf: $ff
    ld bc, $ccff                                  ; $6ae0: $01 $ff $cc
    rst $38                                       ; $6ae3: $ff
    nop                                           ; $6ae4: $00
    rst $38                                       ; $6ae5: $ff
    inc bc                                        ; $6ae6: $03
    rst $38                                       ; $6ae7: $ff
    ldh [rIE], a                                  ; $6ae8: $e0 $ff
    nop                                           ; $6aea: $00
    rst $38                                       ; $6aeb: $ff
    rra                                           ; $6aec: $1f
    rst $38                                       ; $6aed: $ff
    nop                                           ; $6aee: $00
    rst $38                                       ; $6aef: $ff
    ld hl, sp-$01                                 ; $6af0: $f8 $ff
    inc bc                                        ; $6af2: $03
    rst $38                                       ; $6af3: $ff
    ld a, [hl]                                    ; $6af4: $7e
    rst $38                                       ; $6af5: $ff
    jp $f9ff                                      ; $6af6: $c3 $ff $f9


    rst $38                                       ; $6af9: $ff
    rst $08                                       ; $6afa: $cf
    rst $38                                       ; $6afb: $ff
    ld h, a                                       ; $6afc: $67
    rst $38                                       ; $6afd: $ff
    rst $08                                       ; $6afe: $cf
    rst $38                                       ; $6aff: $ff
    rra                                           ; $6b00: $1f
    rst $38                                       ; $6b01: $ff
    db $fc                                        ; $6b02: $fc
    rst $38                                       ; $6b03: $ff
    ld h, [hl]                                    ; $6b04: $66
    rst $38                                       ; $6b05: $ff
    db $fc                                        ; $6b06: $fc
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    call z, $feff                                 ; $6b0a: $cc $ff $fe
    rst $38                                       ; $6b0d: $ff
    di                                            ; $6b0e: $f3
    rst $38                                       ; $6b0f: $ff
    jr jr_074_6b12                                ; $6b10: $18 $00

jr_074_6b12:
    inc bc                                        ; $6b12: $03
    nop                                           ; $6b13: $00
    ldh [rP1], a                                  ; $6b14: $e0 $00
    nop                                           ; $6b16: $00
    nop                                           ; $6b17: $00
    add [hl]                                      ; $6b18: $86
    nop                                           ; $6b19: $00
    rrca                                          ; $6b1a: $0f
    nop                                           ; $6b1b: $00
    ld h, a                                       ; $6b1c: $67
    nop                                           ; $6b1d: $00
    call z, $1800                                 ; $6b1e: $cc $00 $18
    nop                                           ; $6b21: $00
    inc sp                                        ; $6b22: $33
    nop                                           ; $6b23: $00
    add hl, de                                    ; $6b24: $19
    nop                                           ; $6b25: $00
    jr nc, jr_074_6b28                            ; $6b26: $30 $00

jr_074_6b28:
    rlca                                          ; $6b28: $07
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    nop                                           ; $6b2b: $00
    sbc [hl]                                      ; $6b2c: $9e
    nop                                           ; $6b2d: $00
    nop                                           ; $6b2e: $00
    nop                                           ; $6b2f: $00
    cp $00                                        ; $6b30: $fe $00

jr_074_6b32:
    jp $e100                                      ; $6b32: $c3 $00 $e1


    nop                                           ; $6b35: $00
    ccf                                           ; $6b36: $3f
    nop                                           ; $6b37: $00
    rst $38                                       ; $6b38: $ff
    nop                                           ; $6b39: $00
    rst $38                                       ; $6b3a: $ff
    nop                                           ; $6b3b: $00
    ld a, c                                       ; $6b3c: $79
    nop                                           ; $6b3d: $00
    rst $38                                       ; $6b3e: $ff
    nop                                           ; $6b3f: $00
    rlca                                          ; $6b40: $07
    nop                                           ; $6b41: $00
    call z, $ff00                                 ; $6b42: $cc $00 $ff
    nop                                           ; $6b45: $00
    ret nz                                        ; $6b46: $c0

    nop                                           ; $6b47: $00
    rst $38                                       ; $6b48: $ff
    nop                                           ; $6b49: $00
    rrca                                          ; $6b4a: $0f
    nop                                           ; $6b4b: $00
    ld hl, sp+$00                                 ; $6b4c: $f8 $00
    ccf                                           ; $6b4e: $3f
    nop                                           ; $6b4f: $00
    rst $38                                       ; $6b50: $ff
    nop                                           ; $6b51: $00
    inc a                                         ; $6b52: $3c
    jp $01fe                                      ; $6b53: $c3 $fe $01


    rrca                                          ; $6b56: $0f
    ldh a, [$e1]                                  ; $6b57: $f0 $e1
    ld e, $3f                                     ; $6b59: $1e $3f
    ret nz                                        ; $6b5b: $c0

    cp $01                                        ; $6b5c: $fe $01
    rrca                                          ; $6b5e: $0f
    ldh a, [$e7]                                  ; $6b5f: $f0 $e7
    jr jr_074_6b32                                ; $6b61: $18 $cf

    jr nc, jr_074_6bde                            ; $6b63: $30 $79

    add [hl]                                      ; $6b65: $86
    jp $ff3c                                      ; $6b66: $c3 $3c $ff


    nop                                           ; $6b69: $00
    rst $38                                       ; $6b6a: $ff
    nop                                           ; $6b6b: $00
    rlca                                          ; $6b6c: $07
    ld hl, sp-$01                                 ; $6b6d: $f8 $ff
    nop                                           ; $6b6f: $00
    ld a, [hl]                                    ; $6b70: $7e
    add c                                         ; $6b71: $81
    ret nz                                        ; $6b72: $c0

    ccf                                           ; $6b73: $3f
    add hl, de                                    ; $6b74: $19

jr_074_6b75:
    and $c0                                       ; $6b75: $e6 $c0
    ccf                                           ; $6b77: $3f
    nop                                           ; $6b78: $00
    rst $38                                       ; $6b79: $ff
    inc bc                                        ; $6b7a: $03
    db $fc                                        ; $6b7b: $fc
    nop                                           ; $6b7c: $00
    rst $38                                       ; $6b7d: $ff
    nop                                           ; $6b7e: $00
    rst $38                                       ; $6b7f: $ff
    nop                                           ; $6b80: $00
    rst $38                                       ; $6b81: $ff
    ccf                                           ; $6b82: $3f
    ret nz                                        ; $6b83: $c0

    sbc b                                         ; $6b84: $98
    ld h, a                                       ; $6b85: $67
    inc sp                                        ; $6b86: $33
    call z, $e718                                 ; $6b87: $cc $18 $e7
    ret nz                                        ; $6b8a: $c0

    ccf                                           ; $6b8b: $3f
    jr jr_074_6b75                                ; $6b8c: $18 $e7

    ret nz                                        ; $6b8e: $c0

    ccf                                           ; $6b8f: $3f
    ld h, b                                       ; $6b90: $60
    rst $38                                       ; $6b91: $ff
    nop                                           ; $6b92: $00
    rst $38                                       ; $6b93: $ff
    ldh [rIE], a                                  ; $6b94: $e0 $ff
    nop                                           ; $6b96: $00
    rst $38                                       ; $6b97: $ff
    sbc c                                         ; $6b98: $99
    rst $38                                       ; $6b99: $ff
    jr nc, @+$01                                  ; $6b9a: $30 $ff

    pop hl                                        ; $6b9c: $e1
    rst $38                                       ; $6b9d: $ff
    nop                                           ; $6b9e: $00
    rst $38                                       ; $6b9f: $ff
    jr @+$01                                      ; $6ba0: $18 $ff

    jp $1fff                                      ; $6ba2: $c3 $ff $1f


    rst $38                                       ; $6ba5: $ff
    nop                                           ; $6ba6: $00
    rst $38                                       ; $6ba7: $ff
    pop hl                                        ; $6ba8: $e1
    rst $38                                       ; $6ba9: $ff
    inc bc                                        ; $6baa: $03
    rst $38                                       ; $6bab: $ff
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    nop                                           ; $6bae: $00
    rst $38                                       ; $6baf: $ff
    inc bc                                        ; $6bb0: $03
    rst $38                                       ; $6bb1: $ff
    rst $20                                       ; $6bb2: $e7
    rst $38                                       ; $6bb3: $ff
    inc bc                                        ; $6bb4: $03
    rst $38                                       ; $6bb5: $ff
    ld hl, sp-$01                                 ; $6bb6: $f8 $ff
    rrca                                          ; $6bb8: $0f
    rst $38                                       ; $6bb9: $ff
    rst $38                                       ; $6bba: $ff
    rst $38                                       ; $6bbb: $ff
    inc c                                         ; $6bbc: $0c
    rst $38                                       ; $6bbd: $ff
    sbc a                                         ; $6bbe: $9f
    rst $38                                       ; $6bbf: $ff
    call z, $f9ff                                 ; $6bc0: $cc $ff $f9
    rst $38                                       ; $6bc3: $ff
    ccf                                           ; $6bc4: $3f
    rst $38                                       ; $6bc5: $ff
    ld a, a                                       ; $6bc6: $7f
    rst $38                                       ; $6bc7: $ff
    ldh a, [rIE]                                  ; $6bc8: $f0 $ff
    rst $20                                       ; $6bca: $e7
    rst $38                                       ; $6bcb: $ff
    db $fc                                        ; $6bcc: $fc
    rst $38                                       ; $6bcd: $ff
    ld sp, hl                                     ; $6bce: $f9
    rst $38                                       ; $6bcf: $ff
    inc c                                         ; $6bd0: $0c
    nop                                           ; $6bd1: $00
    ld h, b                                       ; $6bd2: $60
    nop                                           ; $6bd3: $00
    inc bc                                        ; $6bd4: $03
    nop                                           ; $6bd5: $00
    ldh [rP1], a                                  ; $6bd6: $e0 $00
    inc a                                         ; $6bd8: $3c
    nop                                           ; $6bd9: $00
    add b                                         ; $6bda: $80
    nop                                           ; $6bdb: $00
    inc bc                                        ; $6bdc: $03
    nop                                           ; $6bdd: $00

jr_074_6bde:
    ldh [rP1], a                                  ; $6bde: $e0 $00
    inc bc                                        ; $6be0: $03
    nop                                           ; $6be1: $00
    ld b, $00                                     ; $6be2: $06 $00
    nop                                           ; $6be4: $00
    nop                                           ; $6be5: $00
    ld a, c                                       ; $6be6: $79
    nop                                           ; $6be7: $00
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    ld bc, $f000                                  ; $6bea: $01 $00 $f0
    nop                                           ; $6bed: $00
    ld bc, $0300                                  ; $6bee: $01 $00 $03
    nop                                           ; $6bf1: $00
    ld a, a                                       ; $6bf2: $7f
    nop                                           ; $6bf3: $00
    call z, $7f00                                 ; $6bf4: $cc $00 $7f
    nop                                           ; $6bf7: $00
    rrca                                          ; $6bf8: $0f
    nop                                           ; $6bf9: $00
    cp $00                                        ; $6bfa: $fe $00
    rst $38                                       ; $6bfc: $ff
    nop                                           ; $6bfd: $00
    rst $38                                       ; $6bfe: $ff
    nop                                           ; $6bff: $00
    rst $38                                       ; $6c00: $ff
    nop                                           ; $6c01: $00
    add b                                         ; $6c02: $80
    nop                                           ; $6c03: $00
    rst $08                                       ; $6c04: $cf
    nop                                           ; $6c05: $00
    sbc b                                         ; $6c06: $98
    nop                                           ; $6c07: $00
    rst $38                                       ; $6c08: $ff
    nop                                           ; $6c09: $00
    ld a, a                                       ; $6c0a: $7f
    nop                                           ; $6c0b: $00
    rst $38                                       ; $6c0c: $ff
    nop                                           ; $6c0d: $00
    rst $38                                       ; $6c0e: $ff
    nop                                           ; $6c0f: $00
    inc bc                                        ; $6c10: $03
    nop                                           ; $6c11: $00
    ld e, $00                                     ; $6c12: $1e $00
    rrca                                          ; $6c14: $0f
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    inc a                                         ; $6c18: $3c
    nop                                           ; $6c19: $00
    ld sp, hl                                     ; $6c1a: $f9
    nop                                           ; $6c1b: $00
    nop                                           ; $6c1c: $00
    nop                                           ; $6c1d: $00
    add c                                         ; $6c1e: $81
    nop                                           ; $6c1f: $00
    inc c                                         ; $6c20: $0c
    nop                                           ; $6c21: $00
    ld h, b                                       ; $6c22: $60
    nop                                           ; $6c23: $00
    inc sp                                        ; $6c24: $33
    nop                                           ; $6c25: $00
    nop                                           ; $6c26: $00
    nop                                           ; $6c27: $00
    ldh a, [rP1]                                  ; $6c28: $f0 $00
    add a                                         ; $6c2a: $87
    nop                                           ; $6c2b: $00
    nop                                           ; $6c2c: $00

jr_074_6c2d:
    nop                                           ; $6c2d: $00
    rst $38                                       ; $6c2e: $ff
    nop                                           ; $6c2f: $00
    db $fc                                        ; $6c30: $fc
    nop                                           ; $6c31: $00
    rlca                                          ; $6c32: $07
    nop                                           ; $6c33: $00
    rst $38                                       ; $6c34: $ff
    nop                                           ; $6c35: $00
    ld sp, hl                                     ; $6c36: $f9
    nop                                           ; $6c37: $00
    rst $38                                       ; $6c38: $ff
    nop                                           ; $6c39: $00
    and $00                                       ; $6c3a: $e6 $00
    rst $38                                       ; $6c3c: $ff
    nop                                           ; $6c3d: $00
    ld e, $00                                     ; $6c3e: $1e $00
    rrca                                          ; $6c40: $0f
    nop                                           ; $6c41: $00
    ldh [rP1], a                                  ; $6c42: $e0 $00
    rst $38                                       ; $6c44: $ff
    nop                                           ; $6c45: $00
    add c                                         ; $6c46: $81
    nop                                           ; $6c47: $00
    rst $08                                       ; $6c48: $cf
    nop                                           ; $6c49: $00
    add hl, de                                    ; $6c4a: $19
    nop                                           ; $6c4b: $00
    rst $08                                       ; $6c4c: $cf
    nop                                           ; $6c4d: $00
    ld a, [hl]                                    ; $6c4e: $7e
    nop                                           ; $6c4f: $00
    di                                            ; $6c50: $f3
    inc c                                         ; $6c51: $0c
    and $19                                       ; $6c52: $e6 $19
    rst $38                                       ; $6c54: $ff

jr_074_6c55:
    nop                                           ; $6c55: $00
    rst $20                                       ; $6c56: $e7
    jr jr_074_6c55                                ; $6c57: $18 $fc

    inc bc                                        ; $6c59: $03
    ld a, a                                       ; $6c5a: $7f
    add b                                         ; $6c5b: $80
    jr nc, jr_074_6c2d                            ; $6c5c: $30 $cf

    rst $38                                       ; $6c5e: $ff
    nop                                           ; $6c5f: $00
    rst $08                                       ; $6c60: $cf
    jr nc, jr_074_6cdc                            ; $6c61: $30 $79

    add [hl]                                      ; $6c63: $86
    rrca                                          ; $6c64: $0f
    ldh a, [rIE]                                  ; $6c65: $f0 $ff
    nop                                           ; $6c67: $00
    inc a                                         ; $6c68: $3c
    jp $07f8                                      ; $6c69: $c3 $f8 $07


    call z, $9933                                 ; $6c6c: $cc $33 $99
    ld h, [hl]                                    ; $6c6f: $66
    nop                                           ; $6c70: $00
    rst $38                                       ; $6c71: $ff
    ld h, a                                       ; $6c72: $67
    sbc b                                         ; $6c73: $98
    inc bc                                        ; $6c74: $03
    db $fc                                        ; $6c75: $fc
    ld hl, sp+$07                                 ; $6c76: $f8 $07
    nop                                           ; $6c78: $00
    rst $38                                       ; $6c79: $ff
    ld h, b                                       ; $6c7a: $60
    sbc a                                         ; $6c7b: $9f
    inc sp                                        ; $6c7c: $33
    call z, $ff00                                 ; $6c7d: $cc $00 $ff
    ccf                                           ; $6c80: $3f
    ret nz                                        ; $6c81: $c0

    add [hl]                                      ; $6c82: $86
    ld a, c                                       ; $6c83: $79
    ret nz                                        ; $6c84: $c0

    ccf                                           ; $6c85: $3f
    rlca                                          ; $6c86: $07
    ld hl, sp+$00                                 ; $6c87: $f8 $00
    rst $38                                       ; $6c89: $ff
    ld e, $e1                                     ; $6c8a: $1e $e1
    inc bc                                        ; $6c8c: $03
    db $fc                                        ; $6c8d: $fc
    jr @-$17                                      ; $6c8e: $18 $e7

    nop                                           ; $6c90: $00
    rst $38                                       ; $6c91: $ff
    ld a, c                                       ; $6c92: $79
    rst $38                                       ; $6c93: $ff
    nop                                           ; $6c94: $00
    rst $38                                       ; $6c95: $ff
    sbc [hl]                                      ; $6c96: $9e
    rst $38                                       ; $6c97: $ff
    inc bc                                        ; $6c98: $03
    rst $38                                       ; $6c99: $ff
    jr @+$01                                      ; $6c9a: $18 $ff

    nop                                           ; $6c9c: $00
    rst $38                                       ; $6c9d: $ff
    ld e, $ff                                     ; $6c9e: $1e $ff
    inc bc                                        ; $6ca0: $03
    rst $38                                       ; $6ca1: $ff
    sbc b                                         ; $6ca2: $98
    rst $38                                       ; $6ca3: $ff
    nop                                           ; $6ca4: $00
    rst $38                                       ; $6ca5: $ff
    rlca                                          ; $6ca6: $07
    rst $38                                       ; $6ca7: $ff
    ret nz                                        ; $6ca8: $c0

    rst $38                                       ; $6ca9: $ff
    nop                                           ; $6caa: $00
    rst $38                                       ; $6cab: $ff
    ccf                                           ; $6cac: $3f
    rst $38                                       ; $6cad: $ff
    nop                                           ; $6cae: $00
    rst $38                                       ; $6caf: $ff
    ldh a, [rIE]                                  ; $6cb0: $f0 $ff
    rlca                                          ; $6cb2: $07
    rst $38                                       ; $6cb3: $ff
    db $fc                                        ; $6cb4: $fc
    rst $38                                       ; $6cb5: $ff
    add a                                         ; $6cb6: $87
    rst $38                                       ; $6cb7: $ff
    di                                            ; $6cb8: $f3
    rst $38                                       ; $6cb9: $ff
    sbc a                                         ; $6cba: $9f
    rst $38                                       ; $6cbb: $ff
    rst $08                                       ; $6cbc: $cf
    rst $38                                       ; $6cbd: $ff
    sbc a                                         ; $6cbe: $9f
    rst $38                                       ; $6cbf: $ff
    ccf                                           ; $6cc0: $3f
    rst $38                                       ; $6cc1: $ff
    ld hl, sp-$01                                 ; $6cc2: $f8 $ff
    call z, $f9ff                                 ; $6cc4: $cc $ff $f9
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    sbc c                                         ; $6cca: $99
    rst $38                                       ; $6ccb: $ff
    db $fc                                        ; $6ccc: $fc
    rst $38                                       ; $6ccd: $ff
    rst $20                                       ; $6cce: $e7
    rst $38                                       ; $6ccf: $ff
    jr nc, jr_074_6cd2                            ; $6cd0: $30 $00

jr_074_6cd2:
    ld b, $00                                     ; $6cd2: $06 $00
    ret nz                                        ; $6cd4: $c0

    nop                                           ; $6cd5: $00
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    inc c                                         ; $6cd8: $0c
    nop                                           ; $6cd9: $00
    ld e, $00                                     ; $6cda: $1e $00

jr_074_6cdc:
    rst $08                                       ; $6cdc: $cf
    nop                                           ; $6cdd: $00
    sbc b                                         ; $6cde: $98
    nop                                           ; $6cdf: $00
    jr nc, jr_074_6ce2                            ; $6ce0: $30 $00

jr_074_6ce2:
    ld h, [hl]                                    ; $6ce2: $66
    nop                                           ; $6ce3: $00
    inc sp                                        ; $6ce4: $33
    nop                                           ; $6ce5: $00
    ld h, b                                       ; $6ce6: $60
    nop                                           ; $6ce7: $00
    rrca                                          ; $6ce8: $0f
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    inc a                                         ; $6cec: $3c
    nop                                           ; $6ced: $00
    ld bc, $fe00                                  ; $6cee: $01 $00 $fe
    nop                                           ; $6cf1: $00

jr_074_6cf2:
    jp $e100                                      ; $6cf2: $c3 $00 $e1


    nop                                           ; $6cf5: $00
    ccf                                           ; $6cf6: $3f
    nop                                           ; $6cf7: $00
    rst $38                                       ; $6cf8: $ff
    nop                                           ; $6cf9: $00
    rst $38                                       ; $6cfa: $ff
    nop                                           ; $6cfb: $00
    ld a, c                                       ; $6cfc: $79
    nop                                           ; $6cfd: $00
    rst $38                                       ; $6cfe: $ff
    nop                                           ; $6cff: $00
    rlca                                          ; $6d00: $07
    nop                                           ; $6d01: $00
    call z, $ff00                                 ; $6d02: $cc $00 $ff
    nop                                           ; $6d05: $00
    ret nz                                        ; $6d06: $c0

    nop                                           ; $6d07: $00
    rst $38                                       ; $6d08: $ff
    nop                                           ; $6d09: $00
    rrca                                          ; $6d0a: $0f
    nop                                           ; $6d0b: $00
    ld hl, sp+$00                                 ; $6d0c: $f8 $00
    ccf                                           ; $6d0e: $3f
    nop                                           ; $6d0f: $00
    rst $38                                       ; $6d10: $ff
    nop                                           ; $6d11: $00
    inc a                                         ; $6d12: $3c
    jp $01fe                                      ; $6d13: $c3 $fe $01


    rrca                                          ; $6d16: $0f
    ldh a, [$e1]                                  ; $6d17: $f0 $e1
    ld e, $3f                                     ; $6d19: $1e $3f
    ret nz                                        ; $6d1b: $c0

    cp $01                                        ; $6d1c: $fe $01
    rrca                                          ; $6d1e: $0f
    ldh a, [$e7]                                  ; $6d1f: $f0 $e7
    jr jr_074_6cf2                                ; $6d21: $18 $cf

    jr nc, jr_074_6d9e                            ; $6d23: $30 $79

    add [hl]                                      ; $6d25: $86
    jp $ff3c                                      ; $6d26: $c3 $3c $ff


    nop                                           ; $6d29: $00
    rst $38                                       ; $6d2a: $ff
    nop                                           ; $6d2b: $00
    rlca                                          ; $6d2c: $07
    ld hl, sp-$01                                 ; $6d2d: $f8 $ff
    nop                                           ; $6d2f: $00
    ld a, [hl]                                    ; $6d30: $7e
    add c                                         ; $6d31: $81
    ret nz                                        ; $6d32: $c0

    ccf                                           ; $6d33: $3f
    add hl, de                                    ; $6d34: $19

jr_074_6d35:
    and $c0                                       ; $6d35: $e6 $c0
    ccf                                           ; $6d37: $3f
    nop                                           ; $6d38: $00
    rst $38                                       ; $6d39: $ff
    inc bc                                        ; $6d3a: $03
    db $fc                                        ; $6d3b: $fc
    nop                                           ; $6d3c: $00
    rst $38                                       ; $6d3d: $ff
    nop                                           ; $6d3e: $00
    rst $38                                       ; $6d3f: $ff
    nop                                           ; $6d40: $00
    rst $38                                       ; $6d41: $ff
    ccf                                           ; $6d42: $3f
    ret nz                                        ; $6d43: $c0

    sbc b                                         ; $6d44: $98
    ld h, a                                       ; $6d45: $67
    inc sp                                        ; $6d46: $33
    call z, $e718                                 ; $6d47: $cc $18 $e7
    ret nz                                        ; $6d4a: $c0

    ccf                                           ; $6d4b: $3f
    jr jr_074_6d35                                ; $6d4c: $18 $e7

    ret nz                                        ; $6d4e: $c0

    ccf                                           ; $6d4f: $3f
    ld h, b                                       ; $6d50: $60
    rst $38                                       ; $6d51: $ff
    nop                                           ; $6d52: $00
    rst $38                                       ; $6d53: $ff
    ldh [rIE], a                                  ; $6d54: $e0 $ff
    nop                                           ; $6d56: $00
    rst $38                                       ; $6d57: $ff
    sbc c                                         ; $6d58: $99
    rst $38                                       ; $6d59: $ff
    jr nc, @+$01                                  ; $6d5a: $30 $ff

    pop hl                                        ; $6d5c: $e1
    rst $38                                       ; $6d5d: $ff
    nop                                           ; $6d5e: $00
    rst $38                                       ; $6d5f: $ff
    jr @+$01                                      ; $6d60: $18 $ff

    jp $1fff                                      ; $6d62: $c3 $ff $1f


    rst $38                                       ; $6d65: $ff
    nop                                           ; $6d66: $00
    rst $38                                       ; $6d67: $ff
    pop hl                                        ; $6d68: $e1
    rst $38                                       ; $6d69: $ff
    inc bc                                        ; $6d6a: $03
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    nop                                           ; $6d6e: $00
    rst $38                                       ; $6d6f: $ff
    rlca                                          ; $6d70: $07
    rst $38                                       ; $6d71: $ff
    rst $08                                       ; $6d72: $cf
    rst $38                                       ; $6d73: $ff
    ld b, $ff                                     ; $6d74: $06 $ff
    ldh a, [rIE]                                  ; $6d76: $f0 $ff
    rra                                           ; $6d78: $1f
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    add hl, de                                    ; $6d7c: $19
    rst $38                                       ; $6d7d: $ff
    ccf                                           ; $6d7e: $3f
    rst $38                                       ; $6d7f: $ff
    sbc b                                         ; $6d80: $98
    rst $38                                       ; $6d81: $ff
    di                                            ; $6d82: $f3
    rst $38                                       ; $6d83: $ff
    ld a, [hl]                                    ; $6d84: $7e
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    ldh [rIE], a                                  ; $6d88: $e0 $ff
    rst $08                                       ; $6d8a: $cf
    rst $38                                       ; $6d8b: $ff
    ld hl, sp-$01                                 ; $6d8c: $f8 $ff
    di                                            ; $6d8e: $f3
    rst $38                                       ; $6d8f: $ff
    jr jr_074_6d92                                ; $6d90: $18 $00

jr_074_6d92:
    ret nz                                        ; $6d92: $c0

    nop                                           ; $6d93: $00
    ld b, $00                                     ; $6d94: $06 $00
    ret nz                                        ; $6d96: $c0

    nop                                           ; $6d97: $00
    ld a, b                                       ; $6d98: $78
    nop                                           ; $6d99: $00
    nop                                           ; $6d9a: $00
    nop                                           ; $6d9b: $00
    rlca                                          ; $6d9c: $07
    nop                                           ; $6d9d: $00

jr_074_6d9e:
    ret nz                                        ; $6d9e: $c0

    nop                                           ; $6d9f: $00
    ld b, $00                                     ; $6da0: $06 $00
    inc c                                         ; $6da2: $0c
    nop                                           ; $6da3: $00
    nop                                           ; $6da4: $00
    nop                                           ; $6da5: $00
    di                                            ; $6da6: $f3
    nop                                           ; $6da7: $00
    nop                                           ; $6da8: $00
    nop                                           ; $6da9: $00
    inc bc                                        ; $6daa: $03
    nop                                           ; $6dab: $00
    ldh [rP1], a                                  ; $6dac: $e0 $00
    inc bc                                        ; $6dae: $03
    nop                                           ; $6daf: $00
    rlca                                          ; $6db0: $07
    nop                                           ; $6db1: $00
    rst $38                                       ; $6db2: $ff
    nop                                           ; $6db3: $00
    sbc c                                         ; $6db4: $99
    nop                                           ; $6db5: $00
    rst $38                                       ; $6db6: $ff
    nop                                           ; $6db7: $00
    rra                                           ; $6db8: $1f
    nop                                           ; $6db9: $00
    db $fc                                        ; $6dba: $fc
    nop                                           ; $6dbb: $00
    rst $38                                       ; $6dbc: $ff
    nop                                           ; $6dbd: $00
    rst $38                                       ; $6dbe: $ff
    nop                                           ; $6dbf: $00
    cp $00                                        ; $6dc0: $fe $00
    nop                                           ; $6dc2: $00
    nop                                           ; $6dc3: $00
    sbc a                                         ; $6dc4: $9f
    nop                                           ; $6dc5: $00
    jr nc, jr_074_6dc8                            ; $6dc6: $30 $00

jr_074_6dc8:
    cp $00                                        ; $6dc8: $fe $00
    rst $38                                       ; $6dca: $ff
    nop                                           ; $6dcb: $00
    rst $38                                       ; $6dcc: $ff
    nop                                           ; $6dcd: $00
    rst $38                                       ; $6dce: $ff
    nop                                           ; $6dcf: $00
    ld b, $00                                     ; $6dd0: $06 $00
    inc a                                         ; $6dd2: $3c
    nop                                           ; $6dd3: $00
    ld e, $00                                     ; $6dd4: $1e $00
    nop                                           ; $6dd6: $00
    nop                                           ; $6dd7: $00
    ld a, c                                       ; $6dd8: $79
    nop                                           ; $6dd9: $00
    di                                            ; $6dda: $f3
    nop                                           ; $6ddb: $00
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    inc bc                                        ; $6dde: $03

jr_074_6ddf:
    nop                                           ; $6ddf: $00
    jr jr_074_6de2                                ; $6de0: $18 $00

jr_074_6de2:
    ret nz                                        ; $6de2: $c0

    nop                                           ; $6de3: $00
    ld h, [hl]                                    ; $6de4: $66
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    ldh [rP1], a                                  ; $6de8: $e0 $00
    rrca                                          ; $6dea: $0f
    nop                                           ; $6deb: $00
    nop                                           ; $6dec: $00
    nop                                           ; $6ded: $00
    rst $38                                       ; $6dee: $ff
    nop                                           ; $6def: $00
    ld hl, sp+$00                                 ; $6df0: $f8 $00
    rrca                                          ; $6df2: $0f
    nop                                           ; $6df3: $00
    rst $38                                       ; $6df4: $ff
    nop                                           ; $6df5: $00
    di                                            ; $6df6: $f3
    nop                                           ; $6df7: $00
    rst $38                                       ; $6df8: $ff
    nop                                           ; $6df9: $00
    call z, $ff00                                 ; $6dfa: $cc $00 $ff
    nop                                           ; $6dfd: $00
    inc a                                         ; $6dfe: $3c
    nop                                           ; $6dff: $00
    rra                                           ; $6e00: $1f
    nop                                           ; $6e01: $00
    ret nz                                        ; $6e02: $c0

    nop                                           ; $6e03: $00
    rst $38                                       ; $6e04: $ff
    nop                                           ; $6e05: $00
    inc bc                                        ; $6e06: $03
    nop                                           ; $6e07: $00
    sbc a                                         ; $6e08: $9f
    nop                                           ; $6e09: $00
    inc sp                                        ; $6e0a: $33
    nop                                           ; $6e0b: $00
    sbc a                                         ; $6e0c: $9f
    nop                                           ; $6e0d: $00
    db $fc                                        ; $6e0e: $fc
    nop                                           ; $6e0f: $00
    rst $20                                       ; $6e10: $e7

jr_074_6e11:
    jr jr_074_6ddf                                ; $6e11: $18 $cc

    inc sp                                        ; $6e13: $33
    cp $01                                        ; $6e14: $fe $01
    rst $08                                       ; $6e16: $cf
    jr nc, jr_074_6e11                            ; $6e17: $30 $f8

    rlca                                          ; $6e19: $07
    rst $38                                       ; $6e1a: $ff
    nop                                           ; $6e1b: $00
    ld h, c                                       ; $6e1c: $61
    sbc [hl]                                      ; $6e1d: $9e
    rst $38                                       ; $6e1e: $ff

jr_074_6e1f:
    nop                                           ; $6e1f: $00
    sbc a                                         ; $6e20: $9f
    ld h, b                                       ; $6e21: $60
    di                                            ; $6e22: $f3
    inc c                                         ; $6e23: $0c
    rra                                           ; $6e24: $1f
    ldh [rIE], a                                  ; $6e25: $e0 $ff
    nop                                           ; $6e27: $00
    ld a, c                                       ; $6e28: $79
    add [hl]                                      ; $6e29: $86
    ldh a, [rIF]                                  ; $6e2a: $f0 $0f
    sbc b                                         ; $6e2c: $98
    ld h, a                                       ; $6e2d: $67
    inc sp                                        ; $6e2e: $33
    call z, $ff00                                 ; $6e2f: $cc $00 $ff
    rst $08                                       ; $6e32: $cf
    jr nc, jr_074_6e3c                            ; $6e33: $30 $07

    ld hl, sp-$10                                 ; $6e35: $f8 $f0
    rrca                                          ; $6e37: $0f
    nop                                           ; $6e38: $00
    rst $38                                       ; $6e39: $ff
    ret nz                                        ; $6e3a: $c0

    ccf                                           ; $6e3b: $3f

jr_074_6e3c:
    ld h, [hl]                                    ; $6e3c: $66
    sbc c                                         ; $6e3d: $99
    nop                                           ; $6e3e: $00
    rst $38                                       ; $6e3f: $ff
    ld a, [hl]                                    ; $6e40: $7e
    add c                                         ; $6e41: $81
    inc c                                         ; $6e42: $0c
    di                                            ; $6e43: $f3
    add b                                         ; $6e44: $80
    ld a, a                                       ; $6e45: $7f
    rrca                                          ; $6e46: $0f
    ldh a, [rP1]                                  ; $6e47: $f0 $00
    rst $38                                       ; $6e49: $ff
    inc a                                         ; $6e4a: $3c
    jp $f906                                      ; $6e4b: $c3 $06 $f9


    jr nc, jr_074_6e1f                            ; $6e4e: $30 $cf

    nop                                           ; $6e50: $00
    rst $38                                       ; $6e51: $ff
    di                                            ; $6e52: $f3
    rst $38                                       ; $6e53: $ff
    nop                                           ; $6e54: $00
    rst $38                                       ; $6e55: $ff
    inc a                                         ; $6e56: $3c
    rst $38                                       ; $6e57: $ff
    rlca                                          ; $6e58: $07
    rst $38                                       ; $6e59: $ff
    jr nc, @+$01                                  ; $6e5a: $30 $ff

    nop                                           ; $6e5c: $00
    rst $38                                       ; $6e5d: $ff
    inc a                                         ; $6e5e: $3c
    rst $38                                       ; $6e5f: $ff
    ld b, $ff                                     ; $6e60: $06 $ff
    jr nc, @+$01                                  ; $6e62: $30 $ff

    nop                                           ; $6e64: $00
    rst $38                                       ; $6e65: $ff
    rrca                                          ; $6e66: $0f
    rst $38                                       ; $6e67: $ff
    add b                                         ; $6e68: $80
    rst $38                                       ; $6e69: $ff
    nop                                           ; $6e6a: $00
    rst $38                                       ; $6e6b: $ff
    ld a, [hl]                                    ; $6e6c: $7e
    rst $38                                       ; $6e6d: $ff
    nop                                           ; $6e6e: $00
    rst $38                                       ; $6e6f: $ff
    ldh [rIE], a                                  ; $6e70: $e0 $ff
    rrca                                          ; $6e72: $0f
    rst $38                                       ; $6e73: $ff
    ld sp, hl                                     ; $6e74: $f9
    rst $38                                       ; $6e75: $ff
    rrca                                          ; $6e76: $0f
    rst $38                                       ; $6e77: $ff
    rst $20                                       ; $6e78: $e7
    rst $38                                       ; $6e79: $ff
    ccf                                           ; $6e7a: $3f
    rst $38                                       ; $6e7b: $ff
    sbc a                                         ; $6e7c: $9f
    rst $38                                       ; $6e7d: $ff
    ccf                                           ; $6e7e: $3f
    rst $38                                       ; $6e7f: $ff
    ld a, a                                       ; $6e80: $7f

jr_074_6e81:
    rst $38                                       ; $6e81: $ff
    ldh a, [rIE]                                  ; $6e82: $f0 $ff
    sbc c                                         ; $6e84: $99
    rst $38                                       ; $6e85: $ff
    di                                            ; $6e86: $f3
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    rst $38                                       ; $6e89: $ff
    inc sp                                        ; $6e8a: $33
    rst $38                                       ; $6e8b: $ff
    ld sp, hl                                     ; $6e8c: $f9
    rst $38                                       ; $6e8d: $ff
    rst $08                                       ; $6e8e: $cf
    rst $38                                       ; $6e8f: $ff
    ld h, b                                       ; $6e90: $60
    nop                                           ; $6e91: $00
    inc c                                         ; $6e92: $0c
    nop                                           ; $6e93: $00
    add b                                         ; $6e94: $80
    nop                                           ; $6e95: $00
    nop                                           ; $6e96: $00
    nop                                           ; $6e97: $00
    jr jr_074_6e9a                                ; $6e98: $18 $00

jr_074_6e9a:
    inc a                                         ; $6e9a: $3c
    nop                                           ; $6e9b: $00
    sbc [hl]                                      ; $6e9c: $9e
    nop                                           ; $6e9d: $00
    jr nc, jr_074_6ea0                            ; $6e9e: $30 $00

jr_074_6ea0:
    ld h, b                                       ; $6ea0: $60
    nop                                           ; $6ea1: $00
    call z, Call_074_6700                         ; $6ea2: $cc $00 $67
    nop                                           ; $6ea5: $00
    ret nz                                        ; $6ea6: $c0

    nop                                           ; $6ea7: $00
    ld e, $00                                     ; $6ea8: $1e $00
    nop                                           ; $6eaa: $00
    nop                                           ; $6eab: $00
    ld a, c                                       ; $6eac: $79
    nop                                           ; $6ead: $00
    inc bc                                        ; $6eae: $03
    nop                                           ; $6eaf: $00
    db $fc                                        ; $6eb0: $fc
    nop                                           ; $6eb1: $00
    add a                                         ; $6eb2: $87
    nop                                           ; $6eb3: $00
    jp $7f00                                      ; $6eb4: $c3 $00 $7f


    nop                                           ; $6eb7: $00
    rst $38                                       ; $6eb8: $ff
    nop                                           ; $6eb9: $00
    cp $00                                        ; $6eba: $fe $00
    di                                            ; $6ebc: $f3
    nop                                           ; $6ebd: $00
    cp $00                                        ; $6ebe: $fe $00
    rrca                                          ; $6ec0: $0f
    nop                                           ; $6ec1: $00
    sbc c                                         ; $6ec2: $99
    nop                                           ; $6ec3: $00
    rst $38                                       ; $6ec4: $ff
    nop                                           ; $6ec5: $00
    add b                                         ; $6ec6: $80
    nop                                           ; $6ec7: $00
    rst $38                                       ; $6ec8: $ff
    nop                                           ; $6ec9: $00
    rra                                           ; $6eca: $1f
    nop                                           ; $6ecb: $00
    ldh a, [rP1]                                  ; $6ecc: $f0 $00
    ld a, a                                       ; $6ece: $7f
    nop                                           ; $6ecf: $00
    rst $38                                       ; $6ed0: $ff
    nop                                           ; $6ed1: $00
    ld a, c                                       ; $6ed2: $79
    add [hl]                                      ; $6ed3: $86
    db $fc                                        ; $6ed4: $fc

jr_074_6ed5:
    inc bc                                        ; $6ed5: $03
    rra                                           ; $6ed6: $1f
    ldh [$c3], a                                  ; $6ed7: $e0 $c3

jr_074_6ed9:
    inc a                                         ; $6ed9: $3c
    ld a, a                                       ; $6eda: $7f
    add b                                         ; $6edb: $80
    db $fc                                        ; $6edc: $fc

jr_074_6edd:
    inc bc                                        ; $6edd: $03
    rra                                           ; $6ede: $1f
    ldh [$cf], a                                  ; $6edf: $e0 $cf
    jr nc, jr_074_6e81                            ; $6ee1: $30 $9e

    ld h, c                                       ; $6ee3: $61
    di                                            ; $6ee4: $f3
    inc c                                         ; $6ee5: $0c
    add [hl]                                      ; $6ee6: $86
    ld a, c                                       ; $6ee7: $79
    rst $38                                       ; $6ee8: $ff
    nop                                           ; $6ee9: $00
    cp $01                                        ; $6eea: $fe $01
    rrca                                          ; $6eec: $0f
    ldh a, [$fe]                                  ; $6eed: $f0 $fe
    ld bc, $03fc                                  ; $6eef: $01 $fc $03
    add b                                         ; $6ef2: $80
    ld a, a                                       ; $6ef3: $7f
    inc sp                                        ; $6ef4: $33
    call z, Call_074_7f80                         ; $6ef5: $cc $80 $7f
    nop                                           ; $6ef8: $00
    rst $38                                       ; $6ef9: $ff
    rlca                                          ; $6efa: $07
    ld hl, sp+$00                                 ; $6efb: $f8 $00
    rst $38                                       ; $6efd: $ff
    ld bc, $00fe                                  ; $6efe: $01 $fe $00
    rst $38                                       ; $6f01: $ff
    ld a, a                                       ; $6f02: $7f
    add b                                         ; $6f03: $80
    jr nc, jr_074_6ed5                            ; $6f04: $30 $cf

    ld h, a                                       ; $6f06: $67
    sbc b                                         ; $6f07: $98
    jr nc, jr_074_6ed9                            ; $6f08: $30 $cf

    add b                                         ; $6f0a: $80
    ld a, a                                       ; $6f0b: $7f
    jr nc, jr_074_6edd                            ; $6f0c: $30 $cf

    add b                                         ; $6f0e: $80
    ld a, a                                       ; $6f0f: $7f
    ret nz                                        ; $6f10: $c0

    rst $38                                       ; $6f11: $ff
    ld bc, $c0ff                                  ; $6f12: $01 $ff $c0
    rst $38                                       ; $6f15: $ff
    nop                                           ; $6f16: $00
    rst $38                                       ; $6f17: $ff
    inc sp                                        ; $6f18: $33
    rst $38                                       ; $6f19: $ff
    ld h, b                                       ; $6f1a: $60
    rst $38                                       ; $6f1b: $ff
    jp Jump_000_00ff                              ; $6f1c: $c3 $ff $00


    rst $38                                       ; $6f1f: $ff
    jr nc, @+$01                                  ; $6f20: $30 $ff

    add [hl]                                      ; $6f22: $86
    rst $38                                       ; $6f23: $ff
    ccf                                           ; $6f24: $3f
    rst $38                                       ; $6f25: $ff
    nop                                           ; $6f26: $00
    rst $38                                       ; $6f27: $ff
    jp Jump_000_06ff                              ; $6f28: $c3 $ff $06


    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    nop                                           ; $6f2e: $00
    rst $38                                       ; $6f2f: $ff
    rrca                                          ; $6f30: $0f
    rst $38                                       ; $6f31: $ff
    sbc a                                         ; $6f32: $9f
    rst $38                                       ; $6f33: $ff
    inc c                                         ; $6f34: $0c
    rst $38                                       ; $6f35: $ff
    pop hl                                        ; $6f36: $e1
    rst $38                                       ; $6f37: $ff
    ccf                                           ; $6f38: $3f
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    inc sp                                        ; $6f3c: $33
    rst $38                                       ; $6f3d: $ff
    ld a, a                                       ; $6f3e: $7f
    rst $38                                       ; $6f3f: $ff
    jr nc, @+$01                                  ; $6f40: $30 $ff

    rst $20                                       ; $6f42: $e7
    rst $38                                       ; $6f43: $ff
    db $fc                                        ; $6f44: $fc
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    ret nz                                        ; $6f48: $c0

    rst $38                                       ; $6f49: $ff
    sbc a                                         ; $6f4a: $9f
    rst $38                                       ; $6f4b: $ff
    ldh a, [rIE]                                  ; $6f4c: $f0 $ff
    and $ff                                       ; $6f4e: $e6 $ff
    jr nc, jr_074_6f52                            ; $6f50: $30 $00

jr_074_6f52:
    add b                                         ; $6f52: $80
    nop                                           ; $6f53: $00
    inc c                                         ; $6f54: $0c
    nop                                           ; $6f55: $00
    add c                                         ; $6f56: $81
    nop                                           ; $6f57: $00
    ldh a, [rP1]                                  ; $6f58: $f0 $00
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    rrca                                          ; $6f5c: $0f
    nop                                           ; $6f5d: $00
    add b                                         ; $6f5e: $80
    nop                                           ; $6f5f: $00
    inc c                                         ; $6f60: $0c
    nop                                           ; $6f61: $00
    add hl, de                                    ; $6f62: $19
    nop                                           ; $6f63: $00
    nop                                           ; $6f64: $00
    nop                                           ; $6f65: $00
    rst $20                                       ; $6f66: $e7
    nop                                           ; $6f67: $00
    nop                                           ; $6f68: $00
    nop                                           ; $6f69: $00
    ld b, $00                                     ; $6f6a: $06 $00

jr_074_6f6c:
    ret nz                                        ; $6f6c: $c0

    nop                                           ; $6f6d: $00
    rlca                                          ; $6f6e: $07
    nop                                           ; $6f6f: $00
    rrca                                          ; $6f70: $0f
    nop                                           ; $6f71: $00
    cp $00                                        ; $6f72: $fe $00
    inc sp                                        ; $6f74: $33
    nop                                           ; $6f75: $00
    cp $00                                        ; $6f76: $fe $00
    ccf                                           ; $6f78: $3f
    nop                                           ; $6f79: $00
    ld sp, hl                                     ; $6f7a: $f9
    nop                                           ; $6f7b: $00
    rst $38                                       ; $6f7c: $ff
    nop                                           ; $6f7d: $00
    rst $38                                       ; $6f7e: $ff
    nop                                           ; $6f7f: $00
    db $fc                                        ; $6f80: $fc
    nop                                           ; $6f81: $00
    ld bc, $3f00                                  ; $6f82: $01 $00 $3f
    nop                                           ; $6f85: $00
    ld h, c                                       ; $6f86: $61
    nop                                           ; $6f87: $00
    db $fc                                        ; $6f88: $fc
    nop                                           ; $6f89: $00
    rst $38                                       ; $6f8a: $ff
    nop                                           ; $6f8b: $00
    rst $38                                       ; $6f8c: $ff
    nop                                           ; $6f8d: $00
    rst $38                                       ; $6f8e: $ff
    nop                                           ; $6f8f: $00
    inc c                                         ; $6f90: $0c
    nop                                           ; $6f91: $00
    ld a, c                                       ; $6f92: $79
    nop                                           ; $6f93: $00
    inc a                                         ; $6f94: $3c
    nop                                           ; $6f95: $00
    nop                                           ; $6f96: $00
    nop                                           ; $6f97: $00
    di                                            ; $6f98: $f3
    nop                                           ; $6f99: $00
    and $00                                       ; $6f9a: $e6 $00
    nop                                           ; $6f9c: $00
    nop                                           ; $6f9d: $00
    rlca                                          ; $6f9e: $07
    nop                                           ; $6f9f: $00
    jr nc, jr_074_6fa2                            ; $6fa0: $30 $00

jr_074_6fa2:
    add b                                         ; $6fa2: $80
    nop                                           ; $6fa3: $00
    call z, RST_00                                ; $6fa4: $cc $00 $00
    nop                                           ; $6fa7: $00
    ret nz                                        ; $6fa8: $c0

    nop                                           ; $6fa9: $00
    rra                                           ; $6faa: $1f
    nop                                           ; $6fab: $00
    nop                                           ; $6fac: $00
    nop                                           ; $6fad: $00
    cp $00                                        ; $6fae: $fe $00
    ldh a, [rP1]                                  ; $6fb0: $f0 $00
    rra                                           ; $6fb2: $1f
    nop                                           ; $6fb3: $00
    rst $38                                       ; $6fb4: $ff
    nop                                           ; $6fb5: $00
    and $00                                       ; $6fb6: $e6 $00
    rst $38                                       ; $6fb8: $ff
    nop                                           ; $6fb9: $00
    sbc b                                         ; $6fba: $98
    nop                                           ; $6fbb: $00
    rst $38                                       ; $6fbc: $ff
    nop                                           ; $6fbd: $00
    ld a, c                                       ; $6fbe: $79
    nop                                           ; $6fbf: $00
    ccf                                           ; $6fc0: $3f
    nop                                           ; $6fc1: $00
    add b                                         ; $6fc2: $80
    nop                                           ; $6fc3: $00
    rst $38                                       ; $6fc4: $ff
    nop                                           ; $6fc5: $00
    rlca                                          ; $6fc6: $07
    nop                                           ; $6fc7: $00
    ccf                                           ; $6fc8: $3f
    nop                                           ; $6fc9: $00
    ld h, a                                       ; $6fca: $67
    nop                                           ; $6fcb: $00
    ccf                                           ; $6fcc: $3f
    nop                                           ; $6fcd: $00
    ld hl, sp+$00                                 ; $6fce: $f8 $00
    rst $08                                       ; $6fd0: $cf
    jr nc, jr_074_6f6c                            ; $6fd1: $30 $99

    ld h, [hl]                                    ; $6fd3: $66
    db $fc                                        ; $6fd4: $fc
    inc bc                                        ; $6fd5: $03
    sbc a                                         ; $6fd6: $9f
    ld h, b                                       ; $6fd7: $60
    ldh a, [rIF]                                  ; $6fd8: $f0 $0f
    rst $38                                       ; $6fda: $ff
    nop                                           ; $6fdb: $00
    jp $fe3c                                      ; $6fdc: $c3 $3c $fe


    ld bc, $c03f                                  ; $6fdf: $01 $3f $c0
    rst $20                                       ; $6fe2: $e7
    jr jr_074_7024                                ; $6fe3: $18 $3f

    ret nz                                        ; $6fe5: $c0

    rst $38                                       ; $6fe6: $ff
    nop                                           ; $6fe7: $00
    di                                            ; $6fe8: $f3
    inc c                                         ; $6fe9: $0c
    pop hl                                        ; $6fea: $e1
    ld e, $30                                     ; $6feb: $1e $30
    rst $08                                       ; $6fed: $cf
    ld h, a                                       ; $6fee: $67
    sbc b                                         ; $6fef: $98
    nop                                           ; $6ff0: $00
    rst $38                                       ; $6ff1: $ff
    sbc [hl]                                      ; $6ff2: $9e
    ld h, c                                       ; $6ff3: $61
    rrca                                          ; $6ff4: $0f
    ldh a, [$e0]                                  ; $6ff5: $f0 $e0
    rra                                           ; $6ff7: $1f
    nop                                           ; $6ff8: $00
    rst $38                                       ; $6ff9: $ff
    add b                                         ; $6ffa: $80
    ld a, a                                       ; $6ffb: $7f
    call z, $0033                                 ; $6ffc: $cc $33 $00
    rst $38                                       ; $6fff: $ff
    db $fc                                        ; $7000: $fc
    inc bc                                        ; $7001: $03
    add hl, de                                    ; $7002: $19
    and $00                                       ; $7003: $e6 $00
    rst $38                                       ; $7005: $ff
    rra                                           ; $7006: $1f
    ldh [rP1], a                                  ; $7007: $e0 $00
    rst $38                                       ; $7009: $ff
    ld a, c                                       ; $700a: $79
    add [hl]                                      ; $700b: $86
    inc c                                         ; $700c: $0c
    di                                            ; $700d: $f3
    ld h, b                                       ; $700e: $60
    sbc a                                         ; $700f: $9f
    nop                                           ; $7010: $00
    rst $38                                       ; $7011: $ff
    and $ff                                       ; $7012: $e6 $ff
    nop                                           ; $7014: $00
    rst $38                                       ; $7015: $ff
    ld a, b                                       ; $7016: $78
    rst $38                                       ; $7017: $ff
    rrca                                          ; $7018: $0f
    rst $38                                       ; $7019: $ff
    ld h, b                                       ; $701a: $60
    rst $38                                       ; $701b: $ff
    nop                                           ; $701c: $00
    rst $38                                       ; $701d: $ff
    ld a, b                                       ; $701e: $78
    rst $38                                       ; $701f: $ff
    inc c                                         ; $7020: $0c
    rst $38                                       ; $7021: $ff
    ld h, c                                       ; $7022: $61
    rst $38                                       ; $7023: $ff

jr_074_7024:
    nop                                           ; $7024: $00
    rst $38                                       ; $7025: $ff
    ld e, $ff                                     ; $7026: $1e $ff
    nop                                           ; $7028: $00
    rst $38                                       ; $7029: $ff
    nop                                           ; $702a: $00
    rst $38                                       ; $702b: $ff
    db $fc                                        ; $702c: $fc
    rst $38                                       ; $702d: $ff
    nop                                           ; $702e: $00
    rst $38                                       ; $702f: $ff
    ret nz                                        ; $7030: $c0

    rst $38                                       ; $7031: $ff
    rra                                           ; $7032: $1f
    rst $38                                       ; $7033: $ff
    di                                            ; $7034: $f3
    rst $38                                       ; $7035: $ff
    rra                                           ; $7036: $1f
    rst $38                                       ; $7037: $ff
    rst $08                                       ; $7038: $cf
    rst $38                                       ; $7039: $ff
    ld a, [hl]                                    ; $703a: $7e
    rst $38                                       ; $703b: $ff
    ccf                                           ; $703c: $3f
    rst $38                                       ; $703d: $ff
    ld a, a                                       ; $703e: $7f
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff

jr_074_7041:
    rst $38                                       ; $7041: $ff
    ldh [rIE], a                                  ; $7042: $e0 $ff
    inc sp                                        ; $7044: $33
    rst $38                                       ; $7045: $ff
    and $ff                                       ; $7046: $e6 $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    ld h, [hl]                                    ; $704a: $66
    rst $38                                       ; $704b: $ff
    di                                            ; $704c: $f3
    rst $38                                       ; $704d: $ff
    sbc [hl]                                      ; $704e: $9e
    rst $38                                       ; $704f: $ff
    ret nz                                        ; $7050: $c0

    nop                                           ; $7051: $00
    add hl, de                                    ; $7052: $19
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    ld bc, $3000                                  ; $7056: $01 $00 $30
    nop                                           ; $7059: $00
    ld a, b                                       ; $705a: $78
    nop                                           ; $705b: $00
    inc a                                         ; $705c: $3c
    nop                                           ; $705d: $00
    ld h, b                                       ; $705e: $60
    nop                                           ; $705f: $00
    ret nz                                        ; $7060: $c0

    nop                                           ; $7061: $00
    sbc b                                         ; $7062: $98
    nop                                           ; $7063: $00
    rst $08                                       ; $7064: $cf
    nop                                           ; $7065: $00
    add b                                         ; $7066: $80
    nop                                           ; $7067: $00
    inc a                                         ; $7068: $3c
    nop                                           ; $7069: $00
    nop                                           ; $706a: $00
    nop                                           ; $706b: $00
    di                                            ; $706c: $f3
    nop                                           ; $706d: $00
    ld b, $00                                     ; $706e: $06 $00
    db $fc                                        ; $7070: $fc
    nop                                           ; $7071: $00
    add a                                         ; $7072: $87
    nop                                           ; $7073: $00
    jp $7f00                                      ; $7074: $c3 $00 $7f


    nop                                           ; $7077: $00
    rst $38                                       ; $7078: $ff
    nop                                           ; $7079: $00
    cp $00                                        ; $707a: $fe $00
    di                                            ; $707c: $f3
    nop                                           ; $707d: $00
    cp $00                                        ; $707e: $fe $00
    rrca                                          ; $7080: $0f
    nop                                           ; $7081: $00
    sbc c                                         ; $7082: $99
    nop                                           ; $7083: $00
    rst $38                                       ; $7084: $ff
    nop                                           ; $7085: $00
    add b                                         ; $7086: $80
    nop                                           ; $7087: $00
    rst $38                                       ; $7088: $ff
    nop                                           ; $7089: $00
    rra                                           ; $708a: $1f
    nop                                           ; $708b: $00
    ldh a, [rP1]                                  ; $708c: $f0 $00
    ld a, a                                       ; $708e: $7f
    nop                                           ; $708f: $00
    rst $38                                       ; $7090: $ff
    nop                                           ; $7091: $00
    ld a, c                                       ; $7092: $79
    add [hl]                                      ; $7093: $86
    db $fc                                        ; $7094: $fc

jr_074_7095:
    inc bc                                        ; $7095: $03
    rra                                           ; $7096: $1f
    ldh [$c3], a                                  ; $7097: $e0 $c3

jr_074_7099:
    inc a                                         ; $7099: $3c
    ld a, a                                       ; $709a: $7f
    add b                                         ; $709b: $80
    db $fc                                        ; $709c: $fc

jr_074_709d:
    inc bc                                        ; $709d: $03
    rra                                           ; $709e: $1f
    ldh [$cf], a                                  ; $709f: $e0 $cf
    jr nc, jr_074_7041                            ; $70a1: $30 $9e

    ld h, c                                       ; $70a3: $61
    di                                            ; $70a4: $f3
    inc c                                         ; $70a5: $0c
    add [hl]                                      ; $70a6: $86
    ld a, c                                       ; $70a7: $79
    rst $38                                       ; $70a8: $ff
    nop                                           ; $70a9: $00
    cp $01                                        ; $70aa: $fe $01
    rrca                                          ; $70ac: $0f
    ldh a, [$fe]                                  ; $70ad: $f0 $fe
    ld bc, $03fc                                  ; $70af: $01 $fc $03
    add b                                         ; $70b2: $80
    ld a, a                                       ; $70b3: $7f
    inc sp                                        ; $70b4: $33
    call z, Call_074_7f80                         ; $70b5: $cc $80 $7f
    nop                                           ; $70b8: $00
    rst $38                                       ; $70b9: $ff
    rlca                                          ; $70ba: $07
    ld hl, sp+$00                                 ; $70bb: $f8 $00
    rst $38                                       ; $70bd: $ff
    ld bc, $00fe                                  ; $70be: $01 $fe $00
    rst $38                                       ; $70c1: $ff
    ld a, a                                       ; $70c2: $7f
    add b                                         ; $70c3: $80
    jr nc, jr_074_7095                            ; $70c4: $30 $cf

    ld h, a                                       ; $70c6: $67
    sbc b                                         ; $70c7: $98
    jr nc, jr_074_7099                            ; $70c8: $30 $cf

    add b                                         ; $70ca: $80
    ld a, a                                       ; $70cb: $7f
    jr nc, jr_074_709d                            ; $70cc: $30 $cf

    add b                                         ; $70ce: $80
    ld a, a                                       ; $70cf: $7f
    ret nz                                        ; $70d0: $c0

    rst $38                                       ; $70d1: $ff
    ld bc, $c0ff                                  ; $70d2: $01 $ff $c0
    rst $38                                       ; $70d5: $ff
    nop                                           ; $70d6: $00
    rst $38                                       ; $70d7: $ff
    inc sp                                        ; $70d8: $33
    rst $38                                       ; $70d9: $ff
    ld h, b                                       ; $70da: $60
    rst $38                                       ; $70db: $ff
    jp Jump_000_00ff                              ; $70dc: $c3 $ff $00


    rst $38                                       ; $70df: $ff
    jr nc, @+$01                                  ; $70e0: $30 $ff

    add [hl]                                      ; $70e2: $86
    rst $38                                       ; $70e3: $ff
    ccf                                           ; $70e4: $3f
    rst $38                                       ; $70e5: $ff
    nop                                           ; $70e6: $00
    rst $38                                       ; $70e7: $ff
    jp Jump_000_06ff                              ; $70e8: $c3 $ff $06


    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    nop                                           ; $70ee: $00
    rst $38                                       ; $70ef: $ff
    ld e, $ff                                     ; $70f0: $1e $ff
    ccf                                           ; $70f2: $3f
    rst $38                                       ; $70f3: $ff
    add hl, de                                    ; $70f4: $19
    rst $38                                       ; $70f5: $ff
    jp Jump_074_7fff                              ; $70f6: $c3 $ff $7f


    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    ld h, a                                       ; $70fc: $67
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
    ld h, b                                       ; $7100: $60
    rst $38                                       ; $7101: $ff
    rst $08                                       ; $7102: $cf
    rst $38                                       ; $7103: $ff
    ld hl, sp-$01                                 ; $7104: $f8 $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    add b                                         ; $7108: $80
    rst $38                                       ; $7109: $ff
    ccf                                           ; $710a: $3f
    rst $38                                       ; $710b: $ff
    ldh [rIE], a                                  ; $710c: $e0 $ff
    call z, $c0ff                                 ; $710e: $cc $ff $c0
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    jr nc, jr_074_7116                            ; $7114: $30 $00

jr_074_7116:
    rlca                                          ; $7116: $07
    nop                                           ; $7117: $00
    ret nz                                        ; $7118: $c0

    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    ccf                                           ; $711c: $3f
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    jr nc, jr_074_7122                            ; $7120: $30 $00

jr_074_7122:
    ld h, [hl]                                    ; $7122: $66
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    sbc [hl]                                      ; $7126: $9e
    nop                                           ; $7127: $00
    inc bc                                        ; $7128: $03
    nop                                           ; $7129: $00
    jr jr_074_712c                                ; $712a: $18 $00

jr_074_712c:
    nop                                           ; $712c: $00
    nop                                           ; $712d: $00
    ld e, $00                                     ; $712e: $1e $00
    ccf                                           ; $7130: $3f
    nop                                           ; $7131: $00
    ld hl, sp+$00                                 ; $7132: $f8 $00
    call z, $f900                                 ; $7134: $cc $00 $f9
    nop                                           ; $7137: $00
    rst $38                                       ; $7138: $ff
    nop                                           ; $7139: $00
    rst $20                                       ; $713a: $e7
    nop                                           ; $713b: $00
    rst $38                                       ; $713c: $ff
    nop                                           ; $713d: $00
    rst $38                                       ; $713e: $ff
    nop                                           ; $713f: $00
    ldh a, [rP1]                                  ; $7140: $f0 $00
    rlca                                          ; $7142: $07
    nop                                           ; $7143: $00
    db $fc                                        ; $7144: $fc
    nop                                           ; $7145: $00
    add a                                         ; $7146: $87
    nop                                           ; $7147: $00
    ldh a, [rP1]                                  ; $7148: $f0 $00
    rst $38                                       ; $714a: $ff
    nop                                           ; $714b: $00
    rst $38                                       ; $714c: $ff
    nop                                           ; $714d: $00
    rst $38                                       ; $714e: $ff
    nop                                           ; $714f: $00
    jr jr_074_7152                                ; $7150: $18 $00

jr_074_7152:
    di                                            ; $7152: $f3
    nop                                           ; $7153: $00
    ld a, c                                       ; $7154: $79
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    rst $20                                       ; $7158: $e7
    nop                                           ; $7159: $00
    call z, RST_00                                ; $715a: $cc $00 $00
    nop                                           ; $715d: $00
    rrca                                          ; $715e: $0f
    nop                                           ; $715f: $00
    ld h, b                                       ; $7160: $60
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    sbc b                                         ; $7164: $98
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    nop                                           ; $7167: $00
    add c                                         ; $7168: $81
    nop                                           ; $7169: $00
    ccf                                           ; $716a: $3f
    nop                                           ; $716b: $00
    nop                                           ; $716c: $00
    nop                                           ; $716d: $00

jr_074_716e:
    db $fc                                        ; $716e: $fc
    nop                                           ; $716f: $00
    ldh [rP1], a                                  ; $7170: $e0 $00
    ccf                                           ; $7172: $3f
    nop                                           ; $7173: $00
    rst $38                                       ; $7174: $ff
    nop                                           ; $7175: $00
    call z, $fe00                                 ; $7176: $cc $00 $fe
    nop                                           ; $7179: $00
    jr nc, jr_074_717c                            ; $717a: $30 $00

jr_074_717c:
    cp $00                                        ; $717c: $fe $00
    di                                            ; $717e: $f3
    nop                                           ; $717f: $00
    ld a, a                                       ; $7180: $7f
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    rst $38                                       ; $7184: $ff
    nop                                           ; $7185: $00
    rrca                                          ; $7186: $0f
    nop                                           ; $7187: $00
    ld a, a                                       ; $7188: $7f
    nop                                           ; $7189: $00
    rst $08                                       ; $718a: $cf
    nop                                           ; $718b: $00
    ld a, a                                       ; $718c: $7f
    nop                                           ; $718d: $00
    ldh a, [rP1]                                  ; $718e: $f0 $00
    sbc [hl]                                      ; $7190: $9e
    ld h, c                                       ; $7191: $61
    inc sp                                        ; $7192: $33
    call z, $07f8                                 ; $7193: $cc $f8 $07
    ccf                                           ; $7196: $3f
    ret nz                                        ; $7197: $c0

    pop hl                                        ; $7198: $e1
    ld e, $ff                                     ; $7199: $1e $ff
    nop                                           ; $719b: $00
    add [hl]                                      ; $719c: $86
    ld a, c                                       ; $719d: $79
    db $fc                                        ; $719e: $fc
    inc bc                                        ; $719f: $03
    ld a, a                                       ; $71a0: $7f
    add b                                         ; $71a1: $80
    rst $08                                       ; $71a2: $cf
    jr nc, jr_074_7224                            ; $71a3: $30 $7f

    add b                                         ; $71a5: $80
    rst $38                                       ; $71a6: $ff
    nop                                           ; $71a7: $00
    rst $20                                       ; $71a8: $e7
    jr jr_074_716e                                ; $71a9: $18 $c3

    inc a                                         ; $71ab: $3c
    ld h, c                                       ; $71ac: $61
    sbc [hl]                                      ; $71ad: $9e
    rst $08                                       ; $71ae: $cf
    jr nc, @+$03                                  ; $71af: $30 $01

    cp $3c                                        ; $71b1: $fe $3c
    jp $e11e                                      ; $71b3: $c3 $1e $e1


    ret nz                                        ; $71b6: $c0

    ccf                                           ; $71b7: $3f
    nop                                           ; $71b8: $00
    rst $38                                       ; $71b9: $ff
    nop                                           ; $71ba: $00
    rst $38                                       ; $71bb: $ff
    sbc b                                         ; $71bc: $98
    ld h, a                                       ; $71bd: $67
    nop                                           ; $71be: $00
    rst $38                                       ; $71bf: $ff
    ld hl, sp+$07                                 ; $71c0: $f8 $07
    inc sp                                        ; $71c2: $33
    call z, $ff00                                 ; $71c3: $cc $00 $ff
    ccf                                           ; $71c6: $3f
    ret nz                                        ; $71c7: $c0

    nop                                           ; $71c8: $00
    rst $38                                       ; $71c9: $ff
    di                                            ; $71ca: $f3
    inc c                                         ; $71cb: $0c
    add hl, de                                    ; $71cc: $19
    and $c0                                       ; $71cd: $e6 $c0
    ccf                                           ; $71cf: $3f
    nop                                           ; $71d0: $00
    rst $38                                       ; $71d1: $ff
    call z, Call_000_00ff                         ; $71d2: $cc $ff $00
    rst $38                                       ; $71d5: $ff
    ldh a, [rIE]                                  ; $71d6: $f0 $ff
    ld e, $ff                                     ; $71d8: $1e $ff
    ret nz                                        ; $71da: $c0

    rst $38                                       ; $71db: $ff
    ld bc, $f0ff                                  ; $71dc: $01 $ff $f0
    rst $38                                       ; $71df: $ff
    jr @+$01                                      ; $71e0: $18 $ff

    jp Jump_000_00ff                              ; $71e2: $c3 $ff $00


    rst $38                                       ; $71e5: $ff
    inc a                                         ; $71e6: $3c
    rst $38                                       ; $71e7: $ff
    nop                                           ; $71e8: $00
    rst $38                                       ; $71e9: $ff
    nop                                           ; $71ea: $00
    rst $38                                       ; $71eb: $ff
    ld hl, sp-$01                                 ; $71ec: $f8 $ff
    nop                                           ; $71ee: $00
    rst $38                                       ; $71ef: $ff
    add c                                         ; $71f0: $81
    rst $38                                       ; $71f1: $ff
    ccf                                           ; $71f2: $3f
    rst $38                                       ; $71f3: $ff
    and $ff                                       ; $71f4: $e6 $ff
    ccf                                           ; $71f6: $3f
    rst $38                                       ; $71f7: $ff
    sbc a                                         ; $71f8: $9f
    rst $38                                       ; $71f9: $ff
    db $fc                                        ; $71fa: $fc
    rst $38                                       ; $71fb: $ff
    ld a, a                                       ; $71fc: $7f
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    ret nz                                        ; $7202: $c0

    rst $38                                       ; $7203: $ff
    ld h, a                                       ; $7204: $67
    rst $38                                       ; $7205: $ff
    call z, $ffff                                 ; $7206: $cc $ff $ff
    rst $38                                       ; $7209: $ff
    call z, $e6ff                                 ; $720a: $cc $ff $e6
    rst $38                                       ; $720d: $ff
    inc a                                         ; $720e: $3c
    rst $38                                       ; $720f: $ff
    add c                                         ; $7210: $81
    nop                                           ; $7211: $00
    inc sp                                        ; $7212: $33
    nop                                           ; $7213: $00
    ld bc, $0300                                  ; $7214: $01 $00 $03
    nop                                           ; $7217: $00
    ld h, b                                       ; $7218: $60
    nop                                           ; $7219: $00
    ldh a, [rP1]                                  ; $721a: $f0 $00
    ld a, c                                       ; $721c: $79
    nop                                           ; $721d: $00
    ret nz                                        ; $721e: $c0

    nop                                           ; $721f: $00
    add c                                         ; $7220: $81
    nop                                           ; $7221: $00
    jr nc, jr_074_7224                            ; $7222: $30 $00

jr_074_7224:
    sbc [hl]                                      ; $7224: $9e
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    ld a, b                                       ; $7228: $78
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    nop                                           ; $722b: $00
    and $00                                       ; $722c: $e6 $00
    inc c                                         ; $722e: $0c
    nop                                           ; $722f: $00
    ld hl, sp+$00                                 ; $7230: $f8 $00
    rrca                                          ; $7232: $0f
    nop                                           ; $7233: $00
    add a                                         ; $7234: $87
    nop                                           ; $7235: $00
    rst $38                                       ; $7236: $ff
    nop                                           ; $7237: $00
    rst $38                                       ; $7238: $ff
    nop                                           ; $7239: $00
    db $fc                                        ; $723a: $fc
    nop                                           ; $723b: $00
    rst $20                                       ; $723c: $e7
    nop                                           ; $723d: $00
    db $fc                                        ; $723e: $fc
    nop                                           ; $723f: $00
    rra                                           ; $7240: $1f
    nop                                           ; $7241: $00
    inc sp                                        ; $7242: $33
    nop                                           ; $7243: $00
    rst $38                                       ; $7244: $ff
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    rst $38                                       ; $7248: $ff
    nop                                           ; $7249: $00
    ccf                                           ; $724a: $3f
    nop                                           ; $724b: $00
    pop hl                                        ; $724c: $e1
    nop                                           ; $724d: $00
    rst $38                                       ; $724e: $ff
    nop                                           ; $724f: $00
    rst $38                                       ; $7250: $ff
    nop                                           ; $7251: $00
    di                                            ; $7252: $f3
    inc c                                         ; $7253: $0c
    ld sp, hl                                     ; $7254: $f9
    ld b, $3f                                     ; $7255: $06 $3f
    ret nz                                        ; $7257: $c0

    add a                                         ; $7258: $87
    ld a, b                                       ; $7259: $78
    rst $38                                       ; $725a: $ff
    nop                                           ; $725b: $00
    ld hl, sp+$07                                 ; $725c: $f8 $07
    ccf                                           ; $725e: $3f
    ret nz                                        ; $725f: $c0

    sbc a                                         ; $7260: $9f
    ld h, b                                       ; $7261: $60
    inc a                                         ; $7262: $3c
    jp Jump_000_18e7                              ; $7263: $c3 $e7 $18


    inc c                                         ; $7266: $0c
    di                                            ; $7267: $f3
    rst $38                                       ; $7268: $ff
    nop                                           ; $7269: $00
    db $fc                                        ; $726a: $fc
    inc bc                                        ; $726b: $03
    rra                                           ; $726c: $1f
    ldh [$fc], a                                  ; $726d: $e0 $fc
    inc bc                                        ; $726f: $03
    ld hl, sp+$07                                 ; $7270: $f8 $07
    nop                                           ; $7272: $00
    rst $38                                       ; $7273: $ff
    ld h, [hl]                                    ; $7274: $66
    sbc c                                         ; $7275: $99
    nop                                           ; $7276: $00
    rst $38                                       ; $7277: $ff
    nop                                           ; $7278: $00
    rst $38                                       ; $7279: $ff
    rrca                                          ; $727a: $0f
    ldh a, [rP1]                                  ; $727b: $f0 $00
    rst $38                                       ; $727d: $ff
    inc bc                                        ; $727e: $03
    db $fc                                        ; $727f: $fc
    ld bc, $fffe                                  ; $7280: $01 $fe $ff
    nop                                           ; $7283: $00
    ld h, b                                       ; $7284: $60
    sbc a                                         ; $7285: $9f
    rst $08                                       ; $7286: $cf
    jr nc, jr_074_72e9                            ; $7287: $30 $60

    sbc a                                         ; $7289: $9f
    nop                                           ; $728a: $00
    rst $38                                       ; $728b: $ff
    ld h, b                                       ; $728c: $60
    sbc a                                         ; $728d: $9f
    nop                                           ; $728e: $00
    rst $38                                       ; $728f: $ff
    add b                                         ; $7290: $80
    rst $38                                       ; $7291: $ff
    inc bc                                        ; $7292: $03
    rst $38                                       ; $7293: $ff
    add b                                         ; $7294: $80
    rst $38                                       ; $7295: $ff
    nop                                           ; $7296: $00
    rst $38                                       ; $7297: $ff
    ld h, a                                       ; $7298: $67
    rst $38                                       ; $7299: $ff
    ret nz                                        ; $729a: $c0

    rst $38                                       ; $729b: $ff
    add a                                         ; $729c: $87
    rst $38                                       ; $729d: $ff
    nop                                           ; $729e: $00
    rst $38                                       ; $729f: $ff
    ld h, c                                       ; $72a0: $61
    rst $38                                       ; $72a1: $ff
    inc c                                         ; $72a2: $0c
    rst $38                                       ; $72a3: $ff
    ld a, a                                       ; $72a4: $7f
    rst $38                                       ; $72a5: $ff
    nop                                           ; $72a6: $00
    rst $38                                       ; $72a7: $ff
    add [hl]                                      ; $72a8: $86
    rst $38                                       ; $72a9: $ff
    inc c                                         ; $72aa: $0c
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    nop                                           ; $72ae: $00
    rst $38                                       ; $72af: $ff
    inc a                                         ; $72b0: $3c
    rst $38                                       ; $72b1: $ff
    ld a, a                                       ; $72b2: $7f
    rst $38                                       ; $72b3: $ff
    inc sp                                        ; $72b4: $33
    rst $38                                       ; $72b5: $ff
    add a                                         ; $72b6: $87
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    cp $ff                                        ; $72ba: $fe $ff
    rst $08                                       ; $72bc: $cf
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    ret nz                                        ; $72c0: $c0

    rst $38                                       ; $72c1: $ff
    sbc [hl]                                      ; $72c2: $9e
    rst $38                                       ; $72c3: $ff
    ldh a, [rIE]                                  ; $72c4: $f0 $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    nop                                           ; $72c8: $00
    rst $38                                       ; $72c9: $ff
    ld a, a                                       ; $72ca: $7f
    rst $38                                       ; $72cb: $ff
    ret nz                                        ; $72cc: $c0

    rst $38                                       ; $72cd: $ff
    sbc c                                         ; $72ce: $99
    rst $38                                       ; $72cf: $ff
    add b                                         ; $72d0: $80
    nop                                           ; $72d1: $00
    nop                                           ; $72d2: $00
    nop                                           ; $72d3: $00
    ld h, b                                       ; $72d4: $60
    nop                                           ; $72d5: $00
    rrca                                          ; $72d6: $0f
    nop                                           ; $72d7: $00
    add b                                         ; $72d8: $80
    nop                                           ; $72d9: $00
    nop                                           ; $72da: $00
    nop                                           ; $72db: $00
    ld a, [hl]                                    ; $72dc: $7e
    nop                                           ; $72dd: $00
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    ld h, c                                       ; $72e0: $61
    nop                                           ; $72e1: $00
    call z, RST_00                                ; $72e2: $cc $00 $00
    nop                                           ; $72e5: $00
    inc a                                         ; $72e6: $3c
    nop                                           ; $72e7: $00
    rlca                                          ; $72e8: $07

jr_074_72e9:
    nop                                           ; $72e9: $00
    jr nc, jr_074_72ec                            ; $72ea: $30 $00

jr_074_72ec:
    nop                                           ; $72ec: $00
    nop                                           ; $72ed: $00
    inc a                                         ; $72ee: $3c
    nop                                           ; $72ef: $00
    ld a, a                                       ; $72f0: $7f
    nop                                           ; $72f1: $00
    ldh a, [rP1]                                  ; $72f2: $f0 $00
    sbc c                                         ; $72f4: $99
    nop                                           ; $72f5: $00
    di                                            ; $72f6: $f3
    nop                                           ; $72f7: $00
    rst $38                                       ; $72f8: $ff
    nop                                           ; $72f9: $00
    rst $08                                       ; $72fa: $cf
    nop                                           ; $72fb: $00
    rst $38                                       ; $72fc: $ff
    nop                                           ; $72fd: $00
    rst $38                                       ; $72fe: $ff
    nop                                           ; $72ff: $00
    ldh [rP1], a                                  ; $7300: $e0 $00
    rrca                                          ; $7302: $0f
    nop                                           ; $7303: $00
    ld sp, hl                                     ; $7304: $f9
    nop                                           ; $7305: $00
    rrca                                          ; $7306: $0f
    nop                                           ; $7307: $00
    pop hl                                        ; $7308: $e1
    nop                                           ; $7309: $00
    rst $38                                       ; $730a: $ff
    nop                                           ; $730b: $00
    rst $38                                       ; $730c: $ff
    nop                                           ; $730d: $00
    rst $38                                       ; $730e: $ff
    nop                                           ; $730f: $00
    ld h, c                                       ; $7310: $61
    nop                                           ; $7311: $00
    call z, $e600                                 ; $7312: $cc $00 $e6
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    sbc [hl]                                      ; $7318: $9e
    nop                                           ; $7319: $00
    jr nc, jr_074_731c                            ; $731a: $30 $00

jr_074_731c:
    nop                                           ; $731c: $00
    nop                                           ; $731d: $00
    ccf                                           ; $731e: $3f
    nop                                           ; $731f: $00
    add b                                         ; $7320: $80
    nop                                           ; $7321: $00
    ld bc, $6000                                  ; $7322: $01 $00 $60
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    inc bc                                        ; $7328: $03
    nop                                           ; $7329: $00
    rst $38                                       ; $732a: $ff
    nop                                           ; $732b: $00
    nop                                           ; $732c: $00
    nop                                           ; $732d: $00
    ld hl, sp+$00                                 ; $732e: $f8 $00
    add c                                         ; $7330: $81
    nop                                           ; $7331: $00
    db $fc                                        ; $7332: $fc
    nop                                           ; $7333: $00
    rst $38                                       ; $7334: $ff
    nop                                           ; $7335: $00

jr_074_7336:
    jr nc, jr_074_7338                            ; $7336: $30 $00

jr_074_7338:
    ld sp, hl                                     ; $7338: $f9
    nop                                           ; $7339: $00
    jp $f900                                      ; $733a: $c3 $00 $f9


    nop                                           ; $733d: $00
    rst $08                                       ; $733e: $cf
    nop                                           ; $733f: $00
    rst $38                                       ; $7340: $ff
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    rst $38                                       ; $7344: $ff
    nop                                           ; $7345: $00
    ccf                                           ; $7346: $3f
    nop                                           ; $7347: $00
    rst $38                                       ; $7348: $ff
    nop                                           ; $7349: $00
    ld a, $00                                     ; $734a: $3e $00
    rst $38                                       ; $734c: $ff
    nop                                           ; $734d: $00
    pop bc                                        ; $734e: $c1
    nop                                           ; $734f: $00
    ld a, c                                       ; $7350: $79
    add [hl]                                      ; $7351: $86
    rst $08                                       ; $7352: $cf
    jr nc, jr_074_7336                            ; $7353: $30 $e1

    ld e, $ff                                     ; $7355: $1e $ff
    nop                                           ; $7357: $00
    add a                                         ; $7358: $87
    ld a, b                                       ; $7359: $78
    rst $38                                       ; $735a: $ff
    nop                                           ; $735b: $00
    add hl, de                                    ; $735c: $19
    and $f3                                       ; $735d: $e6 $f3
    inc c                                         ; $735f: $0c
    rst $38                                       ; $7360: $ff
    nop                                           ; $7361: $00
    ld a, $c1                                     ; $7362: $3e $c1
    rst $38                                       ; $7364: $ff
    nop                                           ; $7365: $00
    cp $01                                        ; $7366: $fe $01
    sbc a                                         ; $7368: $9f
    ld h, b                                       ; $7369: $60
    rlca                                          ; $736a: $07
    ld hl, sp-$7d                                 ; $736b: $f8 $83
    ld a, h                                       ; $736d: $7c
    ccf                                           ; $736e: $3f
    ret nz                                        ; $736f: $c0

    inc bc                                        ; $7370: $03
    db $fc                                        ; $7371: $fc
    ld a, b                                       ; $7372: $78
    add a                                         ; $7373: $87
    inc a                                         ; $7374: $3c
    jp Jump_074_7f80                              ; $7375: $c3 $80 $7f


    nop                                           ; $7378: $00
    rst $38                                       ; $7379: $ff
    ld bc, $30fe                                  ; $737a: $01 $fe $30
    rst $08                                       ; $737d: $cf
    ld bc, $f0fe                                  ; $737e: $01 $fe $f0
    rrca                                          ; $7381: $0f
    ld h, [hl]                                    ; $7382: $66
    sbc c                                         ; $7383: $99
    nop                                           ; $7384: $00
    rst $38                                       ; $7385: $ff
    ld a, a                                       ; $7386: $7f
    add b                                         ; $7387: $80
    nop                                           ; $7388: $00
    rst $38                                       ; $7389: $ff
    and $19                                       ; $738a: $e6 $19
    inc sp                                        ; $738c: $33
    call z, Call_074_7f80                         ; $738d: $cc $80 $7f
    nop                                           ; $7390: $00
    rst $38                                       ; $7391: $ff
    sbc c                                         ; $7392: $99
    rst $38                                       ; $7393: $ff
    nop                                           ; $7394: $00
    rst $38                                       ; $7395: $ff
    ldh [rIE], a                                  ; $7396: $e0 $ff
    inc a                                         ; $7398: $3c
    rst $38                                       ; $7399: $ff
    add b                                         ; $739a: $80
    rst $38                                       ; $739b: $ff
    inc bc                                        ; $739c: $03
    rst $38                                       ; $739d: $ff
    ldh [rIE], a                                  ; $739e: $e0 $ff
    jr nc, @+$01                                  ; $73a0: $30 $ff

    add a                                         ; $73a2: $87
    rst $38                                       ; $73a3: $ff
    nop                                           ; $73a4: $00
    rst $38                                       ; $73a5: $ff
    ld a, c                                       ; $73a6: $79
    rst $38                                       ; $73a7: $ff
    nop                                           ; $73a8: $00
    rst $38                                       ; $73a9: $ff
    ld bc, $f0ff                                  ; $73aa: $01 $ff $f0
    rst $38                                       ; $73ad: $ff
    ld bc, $03ff                                  ; $73ae: $01 $ff $03
    rst $38                                       ; $73b1: $ff
    ld a, a                                       ; $73b2: $7f
    rst $38                                       ; $73b3: $ff
    call z, Call_074_7fff                         ; $73b4: $cc $ff $7f
    rst $38                                       ; $73b7: $ff
    ccf                                           ; $73b8: $3f
    rst $38                                       ; $73b9: $ff
    ld sp, hl                                     ; $73ba: $f9
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    cp $ff                                        ; $73be: $fe $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    add b                                         ; $73c2: $80
    rst $38                                       ; $73c3: $ff
    rst $08                                       ; $73c4: $cf
    rst $38                                       ; $73c5: $ff
    sbc b                                         ; $73c6: $98
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    sbc c                                         ; $73ca: $99
    rst $38                                       ; $73cb: $ff
    call z, Call_074_79ff                         ; $73cc: $cc $ff $79
    rst $38                                       ; $73cf: $ff
    inc bc                                        ; $73d0: $03
    nop                                           ; $73d1: $00
    ld h, [hl]                                    ; $73d2: $66
    nop                                           ; $73d3: $00
    inc bc                                        ; $73d4: $03
    nop                                           ; $73d5: $00
    ld b, $00                                     ; $73d6: $06 $00
    ret nz                                        ; $73d8: $c0

    nop                                           ; $73d9: $00
    ldh [rP1], a                                  ; $73da: $e0 $00
    di                                            ; $73dc: $f3
    nop                                           ; $73dd: $00
    add b                                         ; $73de: $80
    nop                                           ; $73df: $00
    inc bc                                        ; $73e0: $03
    nop                                           ; $73e1: $00
    ld h, b                                       ; $73e2: $60
    nop                                           ; $73e3: $00
    inc a                                         ; $73e4: $3c
    nop                                           ; $73e5: $00
    nop                                           ; $73e6: $00
    nop                                           ; $73e7: $00
    ldh a, [rP1]                                  ; $73e8: $f0 $00
    ld bc, $cc00                                  ; $73ea: $01 $00 $cc
    nop                                           ; $73ed: $00
    add hl, de                                    ; $73ee: $19
    nop                                           ; $73ef: $00
    ld hl, sp+$00                                 ; $73f0: $f8 $00
    rrca                                          ; $73f2: $0f
    nop                                           ; $73f3: $00
    add a                                         ; $73f4: $87
    nop                                           ; $73f5: $00
    rst $38                                       ; $73f6: $ff
    nop                                           ; $73f7: $00
    rst $38                                       ; $73f8: $ff
    nop                                           ; $73f9: $00
    db $fc                                        ; $73fa: $fc
    nop                                           ; $73fb: $00
    rst $20                                       ; $73fc: $e7
    nop                                           ; $73fd: $00
    db $fc                                        ; $73fe: $fc
    nop                                           ; $73ff: $00
    rra                                           ; $7400: $1f
    nop                                           ; $7401: $00
    inc sp                                        ; $7402: $33
    nop                                           ; $7403: $00
    rst $38                                       ; $7404: $ff
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    rst $38                                       ; $7408: $ff
    nop                                           ; $7409: $00
    ccf                                           ; $740a: $3f
    nop                                           ; $740b: $00
    pop hl                                        ; $740c: $e1
    nop                                           ; $740d: $00
    rst $38                                       ; $740e: $ff
    nop                                           ; $740f: $00
    rst $38                                       ; $7410: $ff
    nop                                           ; $7411: $00
    di                                            ; $7412: $f3
    inc c                                         ; $7413: $0c
    ld sp, hl                                     ; $7414: $f9
    ld b, $3f                                     ; $7415: $06 $3f
    ret nz                                        ; $7417: $c0

    add a                                         ; $7418: $87
    ld a, b                                       ; $7419: $78
    rst $38                                       ; $741a: $ff
    nop                                           ; $741b: $00
    ld hl, sp+$07                                 ; $741c: $f8 $07
    ccf                                           ; $741e: $3f
    ret nz                                        ; $741f: $c0

    sbc a                                         ; $7420: $9f
    ld h, b                                       ; $7421: $60
    inc a                                         ; $7422: $3c
    jp Jump_000_18e7                              ; $7423: $c3 $e7 $18


    inc c                                         ; $7426: $0c
    di                                            ; $7427: $f3
    rst $38                                       ; $7428: $ff
    nop                                           ; $7429: $00
    db $fc                                        ; $742a: $fc
    inc bc                                        ; $742b: $03
    rra                                           ; $742c: $1f
    ldh [$fc], a                                  ; $742d: $e0 $fc
    inc bc                                        ; $742f: $03
    ld hl, sp+$07                                 ; $7430: $f8 $07
    nop                                           ; $7432: $00
    rst $38                                       ; $7433: $ff
    ld h, [hl]                                    ; $7434: $66
    sbc c                                         ; $7435: $99
    nop                                           ; $7436: $00
    rst $38                                       ; $7437: $ff
    nop                                           ; $7438: $00
    rst $38                                       ; $7439: $ff
    rrca                                          ; $743a: $0f
    ldh a, [rP1]                                  ; $743b: $f0 $00
    rst $38                                       ; $743d: $ff
    inc bc                                        ; $743e: $03
    db $fc                                        ; $743f: $fc
    ld bc, $fffe                                  ; $7440: $01 $fe $ff
    nop                                           ; $7443: $00
    ld h, b                                       ; $7444: $60
    sbc a                                         ; $7445: $9f
    rst $08                                       ; $7446: $cf
    jr nc, jr_074_74a9                            ; $7447: $30 $60

    sbc a                                         ; $7449: $9f
    nop                                           ; $744a: $00
    rst $38                                       ; $744b: $ff
    ld h, b                                       ; $744c: $60
    sbc a                                         ; $744d: $9f
    nop                                           ; $744e: $00
    rst $38                                       ; $744f: $ff
    add b                                         ; $7450: $80
    rst $38                                       ; $7451: $ff
    inc bc                                        ; $7452: $03
    rst $38                                       ; $7453: $ff
    add b                                         ; $7454: $80
    rst $38                                       ; $7455: $ff
    nop                                           ; $7456: $00
    rst $38                                       ; $7457: $ff
    ld h, a                                       ; $7458: $67
    rst $38                                       ; $7459: $ff
    ret nz                                        ; $745a: $c0

    rst $38                                       ; $745b: $ff
    add a                                         ; $745c: $87
    rst $38                                       ; $745d: $ff
    nop                                           ; $745e: $00
    rst $38                                       ; $745f: $ff
    ld h, c                                       ; $7460: $61
    rst $38                                       ; $7461: $ff
    inc c                                         ; $7462: $0c
    rst $38                                       ; $7463: $ff
    ld a, a                                       ; $7464: $7f
    rst $38                                       ; $7465: $ff
    nop                                           ; $7466: $00
    rst $38                                       ; $7467: $ff
    add [hl]                                      ; $7468: $86
    rst $38                                       ; $7469: $ff
    inc c                                         ; $746a: $0c
    rst $38                                       ; $746b: $ff
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    nop                                           ; $746e: $00
    rst $38                                       ; $746f: $ff
    ld a, c                                       ; $7470: $79
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    rst $38                                       ; $7473: $ff
    ld h, a                                       ; $7474: $67
    rst $38                                       ; $7475: $ff
    rrca                                          ; $7476: $0f
    rst $38                                       ; $7477: $ff
    cp $ff                                        ; $7478: $fe $ff
    db $fc                                        ; $747a: $fc
    rst $38                                       ; $747b: $ff
    sbc a                                         ; $747c: $9f
    rst $38                                       ; $747d: $ff
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    add b                                         ; $7480: $80
    rst $38                                       ; $7481: $ff
    inc a                                         ; $7482: $3c
    rst $38                                       ; $7483: $ff
    ldh [rIE], a                                  ; $7484: $e0 $ff
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    ld bc, $ffff                                  ; $7488: $01 $ff $ff
    rst $38                                       ; $748b: $ff
    add c                                         ; $748c: $81
    rst $38                                       ; $748d: $ff
    inc sp                                        ; $748e: $33
    rst $38                                       ; $748f: $ff
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    ld bc, $c000                                  ; $7492: $01 $00 $c0
    nop                                           ; $7495: $00
    ld e, $00                                     ; $7496: $1e $00
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    nop                                           ; $749a: $00
    nop                                           ; $749b: $00
    db $fc                                        ; $749c: $fc
    nop                                           ; $749d: $00
    nop                                           ; $749e: $00
    nop                                           ; $749f: $00
    jp $9800                                      ; $74a0: $c3 $00 $98


    nop                                           ; $74a3: $00
    nop                                           ; $74a4: $00
    nop                                           ; $74a5: $00
    ld a, b                                       ; $74a6: $78
    nop                                           ; $74a7: $00
    rrca                                          ; $74a8: $0f

jr_074_74a9:
    nop                                           ; $74a9: $00
    ld h, b                                       ; $74aa: $60
    nop                                           ; $74ab: $00
    nop                                           ; $74ac: $00
    nop                                           ; $74ad: $00
    ld a, b                                       ; $74ae: $78
    nop                                           ; $74af: $00
    rst $38                                       ; $74b0: $ff
    nop                                           ; $74b1: $00
    ldh [rP1], a                                  ; $74b2: $e0 $00
    inc sp                                        ; $74b4: $33
    nop                                           ; $74b5: $00
    and $00                                       ; $74b6: $e6 $00
    rst $38                                       ; $74b8: $ff
    nop                                           ; $74b9: $00
    sbc a                                         ; $74ba: $9f
    nop                                           ; $74bb: $00
    rst $38                                       ; $74bc: $ff
    nop                                           ; $74bd: $00
    rst $38                                       ; $74be: $ff
    nop                                           ; $74bf: $00
    ret nz                                        ; $74c0: $c0

    nop                                           ; $74c1: $00
    rra                                           ; $74c2: $1f
    nop                                           ; $74c3: $00
    di                                            ; $74c4: $f3
    nop                                           ; $74c5: $00
    rra                                           ; $74c6: $1f
    nop                                           ; $74c7: $00
    jp $ff00                                      ; $74c8: $c3 $00 $ff


    nop                                           ; $74cb: $00
    rst $38                                       ; $74cc: $ff
    nop                                           ; $74cd: $00
    rst $38                                       ; $74ce: $ff
    nop                                           ; $74cf: $00
    jp $9800                                      ; $74d0: $c3 $00 $98


    nop                                           ; $74d3: $00
    call z, RST_00                                ; $74d4: $cc $00 $00
    nop                                           ; $74d7: $00
    inc a                                         ; $74d8: $3c
    nop                                           ; $74d9: $00
    ld h, c                                       ; $74da: $61
    nop                                           ; $74db: $00
    nop                                           ; $74dc: $00
    nop                                           ; $74dd: $00
    ld a, a                                       ; $74de: $7f
    nop                                           ; $74df: $00
    nop                                           ; $74e0: $00
    nop                                           ; $74e1: $00
    inc bc                                        ; $74e2: $03
    nop                                           ; $74e3: $00
    pop bc                                        ; $74e4: $c1
    nop                                           ; $74e5: $00
    nop                                           ; $74e6: $00
    nop                                           ; $74e7: $00
    rlca                                          ; $74e8: $07
    nop                                           ; $74e9: $00
    rst $38                                       ; $74ea: $ff
    nop                                           ; $74eb: $00
    nop                                           ; $74ec: $00
    nop                                           ; $74ed: $00
    ldh a, [rP1]                                  ; $74ee: $f0 $00
    inc bc                                        ; $74f0: $03
    nop                                           ; $74f1: $00
    ld hl, sp+$00                                 ; $74f2: $f8 $00
    rst $38                                       ; $74f4: $ff
    nop                                           ; $74f5: $00
    ld h, b                                       ; $74f6: $60
    nop                                           ; $74f7: $00
    di                                            ; $74f8: $f3
    nop                                           ; $74f9: $00
    add [hl]                                      ; $74fa: $86
    nop                                           ; $74fb: $00
    di                                            ; $74fc: $f3
    nop                                           ; $74fd: $00
    sbc a                                         ; $74fe: $9f
    nop                                           ; $74ff: $00
    rst $38                                       ; $7500: $ff
    nop                                           ; $7501: $00
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    rst $38                                       ; $7504: $ff
    nop                                           ; $7505: $00
    ld a, a                                       ; $7506: $7f
    nop                                           ; $7507: $00
    rst $38                                       ; $7508: $ff
    nop                                           ; $7509: $00
    ld a, h                                       ; $750a: $7c
    nop                                           ; $750b: $00
    rst $38                                       ; $750c: $ff
    nop                                           ; $750d: $00
    add e                                         ; $750e: $83
    nop                                           ; $750f: $00
    di                                            ; $7510: $f3
    inc c                                         ; $7511: $0c
    sbc [hl]                                      ; $7512: $9e
    ld h, c                                       ; $7513: $61
    jp $ff3c                                      ; $7514: $c3 $3c $ff


    nop                                           ; $7517: $00
    rrca                                          ; $7518: $0f
    ldh a, [$fe]                                  ; $7519: $f0 $fe
    ld bc, $cc33                                  ; $751b: $01 $33 $cc
    and $19                                       ; $751e: $e6 $19
    cp $01                                        ; $7520: $fe $01
    ld a, h                                       ; $7522: $7c
    add e                                         ; $7523: $83
    rst $38                                       ; $7524: $ff
    nop                                           ; $7525: $00
    db $fc                                        ; $7526: $fc
    inc bc                                        ; $7527: $03
    ccf                                           ; $7528: $3f
    ret nz                                        ; $7529: $c0

    rrca                                          ; $752a: $0f
    ldh a, [rTMA]                                 ; $752b: $f0 $06
    ld sp, hl                                     ; $752d: $f9
    ld a, a                                       ; $752e: $7f
    add b                                         ; $752f: $80
    rlca                                          ; $7530: $07
    ld hl, sp-$10                                 ; $7531: $f8 $f0
    rrca                                          ; $7533: $0f
    ld a, b                                       ; $7534: $78
    add a                                         ; $7535: $87
    nop                                           ; $7536: $00
    rst $38                                       ; $7537: $ff
    nop                                           ; $7538: $00
    rst $38                                       ; $7539: $ff
    inc bc                                        ; $753a: $03
    db $fc                                        ; $753b: $fc
    ld h, b                                       ; $753c: $60
    sbc a                                         ; $753d: $9f
    inc bc                                        ; $753e: $03
    db $fc                                        ; $753f: $fc
    ldh [$1f], a                                  ; $7540: $e0 $1f
    call z, $0033                                 ; $7542: $cc $33 $00
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    rst $38                                       ; $7549: $ff
    call z, Call_074_6633                         ; $754a: $cc $33 $66
    sbc c                                         ; $754d: $99
    nop                                           ; $754e: $00
    rst $38                                       ; $754f: $ff
    nop                                           ; $7550: $00
    rst $38                                       ; $7551: $ff
    inc sp                                        ; $7552: $33
    rst $38                                       ; $7553: $ff
    nop                                           ; $7554: $00
    rst $38                                       ; $7555: $ff
    ret nz                                        ; $7556: $c0

    rst $38                                       ; $7557: $ff
    ld a, b                                       ; $7558: $78
    rst $38                                       ; $7559: $ff
    nop                                           ; $755a: $00
    rst $38                                       ; $755b: $ff
    rlca                                          ; $755c: $07
    rst $38                                       ; $755d: $ff
    ret nz                                        ; $755e: $c0

    rst $38                                       ; $755f: $ff
    ld h, b                                       ; $7560: $60
    rst $38                                       ; $7561: $ff
    rrca                                          ; $7562: $0f
    rst $38                                       ; $7563: $ff
    nop                                           ; $7564: $00
    rst $38                                       ; $7565: $ff
    di                                            ; $7566: $f3
    rst $38                                       ; $7567: $ff
    nop                                           ; $7568: $00
    rst $38                                       ; $7569: $ff
    inc bc                                        ; $756a: $03
    rst $38                                       ; $756b: $ff
    ldh [rIE], a                                  ; $756c: $e0 $ff
    inc bc                                        ; $756e: $03
    rst $38                                       ; $756f: $ff
    rlca                                          ; $7570: $07
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    sbc c                                         ; $7574: $99
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    ld a, a                                       ; $7578: $7f
    rst $38                                       ; $7579: $ff
    di                                            ; $757a: $f3
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    db $fc                                        ; $757e: $fc
    rst $38                                       ; $757f: $ff
    cp $ff                                        ; $7580: $fe $ff
    nop                                           ; $7582: $00
    rst $38                                       ; $7583: $ff
    sbc a                                         ; $7584: $9f
    rst $38                                       ; $7585: $ff
    jr nc, @+$01                                  ; $7586: $30 $ff

    cp $ff                                        ; $7588: $fe $ff
    inc sp                                        ; $758a: $33
    rst $38                                       ; $758b: $ff
    sbc c                                         ; $758c: $99
    rst $38                                       ; $758d: $ff
    di                                            ; $758e: $f3
    rst $38                                       ; $758f: $ff
    ld b, $00                                     ; $7590: $06 $00
    call z, $0600                                 ; $7592: $cc $00 $06
    nop                                           ; $7595: $00
    inc c                                         ; $7596: $0c
    nop                                           ; $7597: $00
    add c                                         ; $7598: $81
    nop                                           ; $7599: $00
    ret nz                                        ; $759a: $c0

    nop                                           ; $759b: $00
    rst $20                                       ; $759c: $e7
    nop                                           ; $759d: $00
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    ld b, $00                                     ; $75a0: $06 $00
    ret nz                                        ; $75a2: $c0

    nop                                           ; $75a3: $00
    ld a, b                                       ; $75a4: $78
    nop                                           ; $75a5: $00
    nop                                           ; $75a6: $00
    nop                                           ; $75a7: $00
    pop hl                                        ; $75a8: $e1
    nop                                           ; $75a9: $00
    inc bc                                        ; $75aa: $03
    nop                                           ; $75ab: $00
    sbc c                                         ; $75ac: $99
    nop                                           ; $75ad: $00
    inc sp                                        ; $75ae: $33
    nop                                           ; $75af: $00
    ldh a, [rP1]                                  ; $75b0: $f0 $00
    ld e, $00                                     ; $75b2: $1e $00
    rrca                                          ; $75b4: $0f
    nop                                           ; $75b5: $00
    cp $00                                        ; $75b6: $fe $00
    rst $38                                       ; $75b8: $ff
    nop                                           ; $75b9: $00
    ld hl, sp+$00                                 ; $75ba: $f8 $00
    rst $08                                       ; $75bc: $cf
    nop                                           ; $75bd: $00
    ld sp, hl                                     ; $75be: $f9
    nop                                           ; $75bf: $00
    ccf                                           ; $75c0: $3f
    nop                                           ; $75c1: $00
    ld h, [hl]                                    ; $75c2: $66
    nop                                           ; $75c3: $00
    rst $38                                       ; $75c4: $ff
    nop                                           ; $75c5: $00
    ld bc, $ff00                                  ; $75c6: $01 $00 $ff
    nop                                           ; $75c9: $00
    ld a, a                                       ; $75ca: $7f
    nop                                           ; $75cb: $00
    jp $ff00                                      ; $75cc: $c3 $00 $ff


    nop                                           ; $75cf: $00
    rst $38                                       ; $75d0: $ff
    nop                                           ; $75d1: $00
    and $19                                       ; $75d2: $e6 $19
    di                                            ; $75d4: $f3
    inc c                                         ; $75d5: $0c
    ld a, [hl]                                    ; $75d6: $7e
    add c                                         ; $75d7: $81
    rrca                                          ; $75d8: $0f
    ldh a, [rIE]                                  ; $75d9: $f0 $ff
    nop                                           ; $75db: $00
    ldh a, [rIF]                                  ; $75dc: $f0 $0f
    ld a, a                                       ; $75de: $7f
    add b                                         ; $75df: $80
    ccf                                           ; $75e0: $3f
    ret nz                                        ; $75e1: $c0

    ld a, c                                       ; $75e2: $79
    add [hl]                                      ; $75e3: $86
    rst $08                                       ; $75e4: $cf
    jr nc, @+$1a                                  ; $75e5: $30 $18

    rst $20                                       ; $75e7: $e7
    rst $38                                       ; $75e8: $ff
    nop                                           ; $75e9: $00
    ld sp, hl                                     ; $75ea: $f9
    ld b, $3f                                     ; $75eb: $06 $3f
    ret nz                                        ; $75ed: $c0

    ld hl, sp+$07                                 ; $75ee: $f8 $07
    ldh a, [rIF]                                  ; $75f0: $f0 $0f
    ld bc, $ccfe                                  ; $75f2: $01 $fe $cc
    inc sp                                        ; $75f5: $33
    ld bc, $00fe                                  ; $75f6: $01 $fe $00
    rst $38                                       ; $75f9: $ff
    ld e, $e1                                     ; $75fa: $1e $e1
    nop                                           ; $75fc: $00
    rst $38                                       ; $75fd: $ff
    ld b, $f9                                     ; $75fe: $06 $f9
    inc bc                                        ; $7600: $03
    db $fc                                        ; $7601: $fc
    cp $01                                        ; $7602: $fe $01
    ret nz                                        ; $7604: $c0

    ccf                                           ; $7605: $3f
    sbc [hl]                                      ; $7606: $9e
    ld h, c                                       ; $7607: $61
    ret nz                                        ; $7608: $c0

    ccf                                           ; $7609: $3f
    nop                                           ; $760a: $00
    rst $38                                       ; $760b: $ff
    ret nz                                        ; $760c: $c0

    ccf                                           ; $760d: $3f
    nop                                           ; $760e: $00
    rst $38                                       ; $760f: $ff
    nop                                           ; $7610: $00
    rst $38                                       ; $7611: $ff
    ld b, $ff                                     ; $7612: $06 $ff
    nop                                           ; $7614: $00
    rst $38                                       ; $7615: $ff
    nop                                           ; $7616: $00
    rst $38                                       ; $7617: $ff
    rst $08                                       ; $7618: $cf
    rst $38                                       ; $7619: $ff
    add b                                         ; $761a: $80
    rst $38                                       ; $761b: $ff
    rrca                                          ; $761c: $0f
    rst $38                                       ; $761d: $ff
    nop                                           ; $761e: $00
    rst $38                                       ; $761f: $ff
    jp Jump_000_18ff                              ; $7620: $c3 $ff $18


    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    nop                                           ; $7626: $00
    rst $38                                       ; $7627: $ff
    inc c                                         ; $7628: $0c
    rst $38                                       ; $7629: $ff
    add hl, de                                    ; $762a: $19
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    nop                                           ; $762e: $00
    rst $38                                       ; $762f: $ff
    di                                            ; $7630: $f3
    rst $38                                       ; $7631: $ff
    cp $ff                                        ; $7632: $fe $ff
    rst $08                                       ; $7634: $cf
    rst $38                                       ; $7635: $ff
    rra                                           ; $7636: $1f
    rst $38                                       ; $7637: $ff
    db $fc                                        ; $7638: $fc
    rst $38                                       ; $7639: $ff
    ld sp, hl                                     ; $763a: $f9
    rst $38                                       ; $763b: $ff
    ccf                                           ; $763c: $3f
    rst $38                                       ; $763d: $ff
    cp $ff                                        ; $763e: $fe $ff
    nop                                           ; $7640: $00
    rst $38                                       ; $7641: $ff
    ld a, c                                       ; $7642: $79
    rst $38                                       ; $7643: $ff
    ret nz                                        ; $7644: $c0

    rst $38                                       ; $7645: $ff
    cp $ff                                        ; $7646: $fe $ff
    inc bc                                        ; $7648: $03
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    inc bc                                        ; $764c: $03
    rst $38                                       ; $764d: $ff
    ld h, a                                       ; $764e: $67
    rst $38                                       ; $764f: $ff
    ld bc, $0300                                  ; $7650: $01 $00 $03
    nop                                           ; $7653: $00
    add b                                         ; $7654: $80
    nop                                           ; $7655: $00
    inc a                                         ; $7656: $3c
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    ld hl, sp+$00                                 ; $765c: $f8 $00
    nop                                           ; $765e: $00
    nop                                           ; $765f: $00
    add [hl]                                      ; $7660: $86
    nop                                           ; $7661: $00
    jr nc, jr_074_7664                            ; $7662: $30 $00

jr_074_7664:
    ld bc, $f000                                  ; $7664: $01 $00 $f0
    nop                                           ; $7667: $00
    ld e, $00                                     ; $7668: $1e $00
    ret nz                                        ; $766a: $c0

    nop                                           ; $766b: $00
    ld bc, $f000                                  ; $766c: $01 $00 $f0
    nop                                           ; $766f: $00
    rst $38                                       ; $7670: $ff
    nop                                           ; $7671: $00
    ret nz                                        ; $7672: $c0

    nop                                           ; $7673: $00
    ld h, a                                       ; $7674: $67
    nop                                           ; $7675: $00
    call z, $ff00                                 ; $7676: $cc $00 $ff
    nop                                           ; $7679: $00
    ccf                                           ; $767a: $3f
    nop                                           ; $767b: $00
    rst $38                                       ; $767c: $ff
    nop                                           ; $767d: $00
    rst $38                                       ; $767e: $ff
    nop                                           ; $767f: $00
    add c                                         ; $7680: $81
    nop                                           ; $7681: $00
    ccf                                           ; $7682: $3f
    nop                                           ; $7683: $00
    and $00                                       ; $7684: $e6 $00
    ccf                                           ; $7686: $3f
    nop                                           ; $7687: $00
    add a                                         ; $7688: $87
    nop                                           ; $7689: $00
    rst $38                                       ; $768a: $ff
    nop                                           ; $768b: $00
    rst $38                                       ; $768c: $ff
    nop                                           ; $768d: $00
    rst $38                                       ; $768e: $ff
    nop                                           ; $768f: $00
    add [hl]                                      ; $7690: $86
    nop                                           ; $7691: $00
    jr nc, jr_074_7694                            ; $7692: $30 $00

jr_074_7694:
    sbc c                                         ; $7694: $99
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    ld a, b                                       ; $7698: $78
    nop                                           ; $7699: $00
    jp RST_00                                     ; $769a: $c3 $00 $00


    nop                                           ; $769d: $00
    rst $38                                       ; $769e: $ff
    nop                                           ; $769f: $00
    ld bc, $0f00                                  ; $76a0: $01 $00 $0f
    nop                                           ; $76a3: $00
    add a                                         ; $76a4: $87
    nop                                           ; $76a5: $00
    nop                                           ; $76a6: $00
    nop                                           ; $76a7: $00
    ld e, $00                                     ; $76a8: $1e $00
    db $fc                                        ; $76aa: $fc
    nop                                           ; $76ab: $00
    nop                                           ; $76ac: $00
    nop                                           ; $76ad: $00
    ret nz                                        ; $76ae: $c0

    nop                                           ; $76af: $00
    rlca                                          ; $76b0: $07
    nop                                           ; $76b1: $00
    ldh a, [rP1]                                  ; $76b2: $f0 $00
    rst $38                                       ; $76b4: $ff
    nop                                           ; $76b5: $00
    ret nz                                        ; $76b6: $c0

    nop                                           ; $76b7: $00
    rst $20                                       ; $76b8: $e7
    nop                                           ; $76b9: $00
    inc c                                         ; $76ba: $0c
    nop                                           ; $76bb: $00
    rst $20                                       ; $76bc: $e7
    nop                                           ; $76bd: $00
    ccf                                           ; $76be: $3f
    nop                                           ; $76bf: $00
    cp $00                                        ; $76c0: $fe $00
    inc bc                                        ; $76c2: $03
    nop                                           ; $76c3: $00
    rst $38                                       ; $76c4: $ff
    nop                                           ; $76c5: $00
    db $fc                                        ; $76c6: $fc
    nop                                           ; $76c7: $00
    rst $38                                       ; $76c8: $ff
    nop                                           ; $76c9: $00
    di                                            ; $76ca: $f3
    nop                                           ; $76cb: $00
    rst $38                                       ; $76cc: $ff
    nop                                           ; $76cd: $00
    rrca                                          ; $76ce: $0f
    nop                                           ; $76cf: $00
    rst $20                                       ; $76d0: $e7
    jr jr_074_770f                                ; $76d1: $18 $3c

    jp Jump_074_7887                              ; $76d3: $c3 $87 $78


    rst $38                                       ; $76d6: $ff
    nop                                           ; $76d7: $00
    ld e, $e1                                     ; $76d8: $1e $e1
    db $fc                                        ; $76da: $fc
    inc bc                                        ; $76db: $03
    ld h, [hl]                                    ; $76dc: $66
    sbc c                                         ; $76dd: $99
    call z, $f933                                 ; $76de: $cc $33 $f9
    ld b, $f3                                     ; $76e1: $06 $f3
    inc c                                         ; $76e3: $0c
    rst $38                                       ; $76e4: $ff
    nop                                           ; $76e5: $00
    di                                            ; $76e6: $f3
    inc c                                         ; $76e7: $0c
    ld a, [hl]                                    ; $76e8: $7e
    add c                                         ; $76e9: $81
    ccf                                           ; $76ea: $3f
    ret nz                                        ; $76eb: $c0

    jr @-$17                                      ; $76ec: $18 $e7

    rst $38                                       ; $76ee: $ff
    nop                                           ; $76ef: $00
    rrca                                          ; $76f0: $0f
    ldh a, [$e1]                                  ; $76f1: $f0 $e1
    ld e, $f0                                     ; $76f3: $1e $f0
    rrca                                          ; $76f5: $0f
    ld bc, $00fe                                  ; $76f6: $01 $fe $00
    rst $38                                       ; $76f9: $ff
    rlca                                          ; $76fa: $07
    ld hl, sp-$40                                 ; $76fb: $f8 $c0
    ccf                                           ; $76fd: $3f
    ld b, $f9                                     ; $76fe: $06 $f9
    ret nz                                        ; $7700: $c0

    ccf                                           ; $7701: $3f
    sbc c                                         ; $7702: $99
    ld h, [hl]                                    ; $7703: $66
    nop                                           ; $7704: $00
    rst $38                                       ; $7705: $ff
    cp $01                                        ; $7706: $fe $01
    nop                                           ; $7708: $00
    rst $38                                       ; $7709: $ff
    sbc b                                         ; $770a: $98
    ld h, a                                       ; $770b: $67
    call z, $0033                                 ; $770c: $cc $33 $00

jr_074_770f:
    rst $38                                       ; $770f: $ff
    nop                                           ; $7710: $00
    rst $38                                       ; $7711: $ff
    ld h, [hl]                                    ; $7712: $66
    rst $38                                       ; $7713: $ff
    nop                                           ; $7714: $00
    rst $38                                       ; $7715: $ff
    add c                                         ; $7716: $81
    rst $38                                       ; $7717: $ff
    ldh a, [rIE]                                  ; $7718: $f0 $ff
    nop                                           ; $771a: $00
    rst $38                                       ; $771b: $ff
    rrca                                          ; $771c: $0f
    rst $38                                       ; $771d: $ff
    add b                                         ; $771e: $80
    rst $38                                       ; $771f: $ff
    ret nz                                        ; $7720: $c0

    rst $38                                       ; $7721: $ff
    ld e, $ff                                     ; $7722: $1e $ff
    nop                                           ; $7724: $00
    rst $38                                       ; $7725: $ff
    rst $20                                       ; $7726: $e7
    rst $38                                       ; $7727: $ff
    nop                                           ; $7728: $00
    rst $38                                       ; $7729: $ff
    ld b, $ff                                     ; $772a: $06 $ff
    ret nz                                        ; $772c: $c0

    rst $38                                       ; $772d: $ff
    rlca                                          ; $772e: $07
    rst $38                                       ; $772f: $ff
    rrca                                          ; $7730: $0f
    rst $38                                       ; $7731: $ff
    cp $ff                                        ; $7732: $fe $ff
    inc sp                                        ; $7734: $33
    rst $38                                       ; $7735: $ff
    cp $ff                                        ; $7736: $fe $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    and $ff                                       ; $773a: $e6 $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    ld sp, hl                                     ; $773e: $f9
    rst $38                                       ; $773f: $ff
    db $fc                                        ; $7740: $fc
    rst $38                                       ; $7741: $ff
    ld bc, $3fff                                  ; $7742: $01 $ff $3f
    rst $38                                       ; $7745: $ff
    ld h, c                                       ; $7746: $61
    rst $38                                       ; $7747: $ff
    db $fc                                        ; $7748: $fc
    rst $38                                       ; $7749: $ff
    ld h, a                                       ; $774a: $67
    rst $38                                       ; $774b: $ff
    inc sp                                        ; $774c: $33
    rst $38                                       ; $774d: $ff
    rst $20                                       ; $774e: $e7
    rst $38                                       ; $774f: $ff
    inc c                                         ; $7750: $0c
    nop                                           ; $7751: $00
    sbc c                                         ; $7752: $99
    nop                                           ; $7753: $00
    inc c                                         ; $7754: $0c
    nop                                           ; $7755: $00
    jr jr_074_7758                                ; $7756: $18 $00

jr_074_7758:
    inc bc                                        ; $7758: $03
    nop                                           ; $7759: $00
    add b                                         ; $775a: $80
    nop                                           ; $775b: $00
    rst $08                                       ; $775c: $cf
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    inc c                                         ; $7760: $0c
    nop                                           ; $7761: $00
    add c                                         ; $7762: $81
    nop                                           ; $7763: $00
    ldh a, [rP1]                                  ; $7764: $f0 $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    jp $0700                                      ; $7768: $c3 $00 $07


    nop                                           ; $776b: $00
    inc sp                                        ; $776c: $33
    nop                                           ; $776d: $00
    ld h, [hl]                                    ; $776e: $66
    nop                                           ; $776f: $00
    ldh a, [rP1]                                  ; $7770: $f0 $00
    ld e, $00                                     ; $7772: $1e $00
    rrca                                          ; $7774: $0f
    nop                                           ; $7775: $00
    cp $00                                        ; $7776: $fe $00
    rst $38                                       ; $7778: $ff
    nop                                           ; $7779: $00
    ld hl, sp+$00                                 ; $777a: $f8 $00
    rst $08                                       ; $777c: $cf
    nop                                           ; $777d: $00
    ld sp, hl                                     ; $777e: $f9
    nop                                           ; $777f: $00
    ccf                                           ; $7780: $3f
    nop                                           ; $7781: $00
    ld h, [hl]                                    ; $7782: $66
    nop                                           ; $7783: $00
    rst $38                                       ; $7784: $ff
    nop                                           ; $7785: $00
    ld bc, $ff00                                  ; $7786: $01 $00 $ff
    nop                                           ; $7789: $00
    ld a, a                                       ; $778a: $7f
    nop                                           ; $778b: $00
    jp $ff00                                      ; $778c: $c3 $00 $ff


    nop                                           ; $778f: $00
    rst $38                                       ; $7790: $ff
    nop                                           ; $7791: $00
    and $19                                       ; $7792: $e6 $19
    di                                            ; $7794: $f3
    inc c                                         ; $7795: $0c
    ld a, [hl]                                    ; $7796: $7e
    add c                                         ; $7797: $81
    rrca                                          ; $7798: $0f
    ldh a, [rIE]                                  ; $7799: $f0 $ff
    nop                                           ; $779b: $00
    ldh a, [rIF]                                  ; $779c: $f0 $0f
    ld a, a                                       ; $779e: $7f
    add b                                         ; $779f: $80
    ccf                                           ; $77a0: $3f
    ret nz                                        ; $77a1: $c0

    ld a, c                                       ; $77a2: $79
    add [hl]                                      ; $77a3: $86
    rst $08                                       ; $77a4: $cf
    jr nc, @+$1a                                  ; $77a5: $30 $18

    rst $20                                       ; $77a7: $e7
    rst $38                                       ; $77a8: $ff
    nop                                           ; $77a9: $00
    ld sp, hl                                     ; $77aa: $f9
    ld b, $3f                                     ; $77ab: $06 $3f
    ret nz                                        ; $77ad: $c0

    ld hl, sp+$07                                 ; $77ae: $f8 $07
    ldh a, [rIF]                                  ; $77b0: $f0 $0f
    ld bc, $ccfe                                  ; $77b2: $01 $fe $cc
    inc sp                                        ; $77b5: $33
    ld bc, $00fe                                  ; $77b6: $01 $fe $00
    rst $38                                       ; $77b9: $ff
    ld e, $e1                                     ; $77ba: $1e $e1
    nop                                           ; $77bc: $00
    rst $38                                       ; $77bd: $ff
    ld b, $f9                                     ; $77be: $06 $f9
    inc bc                                        ; $77c0: $03
    db $fc                                        ; $77c1: $fc
    cp $01                                        ; $77c2: $fe $01
    ret nz                                        ; $77c4: $c0

    ccf                                           ; $77c5: $3f
    sbc [hl]                                      ; $77c6: $9e
    ld h, c                                       ; $77c7: $61
    ret nz                                        ; $77c8: $c0

    ccf                                           ; $77c9: $3f
    nop                                           ; $77ca: $00
    rst $38                                       ; $77cb: $ff
    ret nz                                        ; $77cc: $c0

    ccf                                           ; $77cd: $3f
    nop                                           ; $77ce: $00
    rst $38                                       ; $77cf: $ff
    nop                                           ; $77d0: $00
    rst $38                                       ; $77d1: $ff
    ld b, $ff                                     ; $77d2: $06 $ff
    nop                                           ; $77d4: $00
    rst $38                                       ; $77d5: $ff
    nop                                           ; $77d6: $00
    rst $38                                       ; $77d7: $ff
    rst $08                                       ; $77d8: $cf
    rst $38                                       ; $77d9: $ff
    add b                                         ; $77da: $80
    rst $38                                       ; $77db: $ff
    rrca                                          ; $77dc: $0f
    rst $38                                       ; $77dd: $ff
    nop                                           ; $77de: $00
    rst $38                                       ; $77df: $ff
    jp Jump_000_18ff                              ; $77e0: $c3 $ff $18


    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    nop                                           ; $77e6: $00
    rst $38                                       ; $77e7: $ff
    inc c                                         ; $77e8: $0c
    rst $38                                       ; $77e9: $ff
    add hl, de                                    ; $77ea: $19
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    nop                                           ; $77ee: $00
    rst $38                                       ; $77ef: $ff
    and $ff                                       ; $77f0: $e6 $ff
    db $fc                                        ; $77f2: $fc
    rst $38                                       ; $77f3: $ff
    sbc a                                         ; $77f4: $9f
    rst $38                                       ; $77f5: $ff
    ccf                                           ; $77f6: $3f
    rst $38                                       ; $77f7: $ff
    ld hl, sp-$01                                 ; $77f8: $f8 $ff
    di                                            ; $77fa: $f3
    rst $38                                       ; $77fb: $ff
    ld a, [hl]                                    ; $77fc: $7e
    rst $38                                       ; $77fd: $ff
    db $fc                                        ; $77fe: $fc
    rst $38                                       ; $77ff: $ff
    ld bc, $f3ff                                  ; $7800: $01 $ff $f3
    rst $38                                       ; $7803: $ff
    add c                                         ; $7804: $81
    rst $38                                       ; $7805: $ff
    db $fc                                        ; $7806: $fc
    rst $38                                       ; $7807: $ff
    rlca                                          ; $7808: $07
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    ld b, $ff                                     ; $780c: $06 $ff
    rst $08                                       ; $780e: $cf
    rst $38                                       ; $780f: $ff
    ld b, $00                                     ; $7810: $06 $00
    inc c                                         ; $7812: $0c
    nop                                           ; $7813: $00
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    di                                            ; $7816: $f3
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    inc bc                                        ; $781a: $03
    nop                                           ; $781b: $00
    ldh [rP1], a                                  ; $781c: $e0 $00
    inc bc                                        ; $781e: $03
    nop                                           ; $781f: $00
    jr jr_074_7822                                ; $7820: $18 $00

jr_074_7822:
    ret nz                                        ; $7822: $c0

    nop                                           ; $7823: $00
    ld b, $00                                     ; $7824: $06 $00
    ret nz                                        ; $7826: $c0

    nop                                           ; $7827: $00
    ld a, b                                       ; $7828: $78
    nop                                           ; $7829: $00
    nop                                           ; $782a: $00
    nop                                           ; $782b: $00
    rlca                                          ; $782c: $07
    nop                                           ; $782d: $00
    ret nz                                        ; $782e: $c0

    nop                                           ; $782f: $00
    cp $00                                        ; $7830: $fe $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    sbc a                                         ; $7834: $9f
    nop                                           ; $7835: $00
    jr nc, jr_074_7838                            ; $7836: $30 $00

jr_074_7838:
    cp $00                                        ; $7838: $fe $00
    rst $38                                       ; $783a: $ff
    nop                                           ; $783b: $00
    rst $38                                       ; $783c: $ff
    nop                                           ; $783d: $00
    rst $38                                       ; $783e: $ff
    nop                                           ; $783f: $00
    rlca                                          ; $7840: $07
    nop                                           ; $7841: $00
    rst $38                                       ; $7842: $ff
    nop                                           ; $7843: $00
    sbc c                                         ; $7844: $99
    nop                                           ; $7845: $00
    rst $38                                       ; $7846: $ff
    nop                                           ; $7847: $00
    rra                                           ; $7848: $1f
    nop                                           ; $7849: $00
    db $fc                                        ; $784a: $fc
    nop                                           ; $784b: $00
    rst $38                                       ; $784c: $ff
    nop                                           ; $784d: $00
    rst $38                                       ; $784e: $ff
    nop                                           ; $784f: $00
    inc c                                         ; $7850: $0c
    nop                                           ; $7851: $00
    ld h, b                                       ; $7852: $60
    nop                                           ; $7853: $00
    inc sp                                        ; $7854: $33
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    ldh a, [rP1]                                  ; $7858: $f0 $00
    add a                                         ; $785a: $87
    nop                                           ; $785b: $00
    nop                                           ; $785c: $00
    nop                                           ; $785d: $00
    rst $38                                       ; $785e: $ff
    nop                                           ; $785f: $00
    inc bc                                        ; $7860: $03
    nop                                           ; $7861: $00
    ld e, $00                                     ; $7862: $1e $00
    rrca                                          ; $7864: $0f
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    inc a                                         ; $7868: $3c
    nop                                           ; $7869: $00
    ld sp, hl                                     ; $786a: $f9
    nop                                           ; $786b: $00
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    add c                                         ; $786e: $81
    nop                                           ; $786f: $00
    rrca                                          ; $7870: $0f
    nop                                           ; $7871: $00
    ldh [rP1], a                                  ; $7872: $e0 $00
    rst $38                                       ; $7874: $ff
    nop                                           ; $7875: $00
    add c                                         ; $7876: $81
    nop                                           ; $7877: $00
    rst $08                                       ; $7878: $cf
    nop                                           ; $7879: $00
    add hl, de                                    ; $787a: $19
    nop                                           ; $787b: $00
    rst $08                                       ; $787c: $cf

jr_074_787d:
    nop                                           ; $787d: $00
    ld a, [hl]                                    ; $787e: $7e
    nop                                           ; $787f: $00
    db $fc                                        ; $7880: $fc
    nop                                           ; $7881: $00
    rlca                                          ; $7882: $07
    nop                                           ; $7883: $00
    rst $38                                       ; $7884: $ff
    nop                                           ; $7885: $00
    ld sp, hl                                     ; $7886: $f9

Jump_074_7887:
    nop                                           ; $7887: $00
    rst $38                                       ; $7888: $ff
    nop                                           ; $7889: $00
    and $00                                       ; $788a: $e6 $00
    rst $38                                       ; $788c: $ff
    nop                                           ; $788d: $00
    ld e, $00                                     ; $788e: $1e $00
    rst $08                                       ; $7890: $cf
    jr nc, jr_074_790c                            ; $7891: $30 $79

    add [hl]                                      ; $7893: $86
    rrca                                          ; $7894: $0f
    ldh a, [rIE]                                  ; $7895: $f0 $ff
    nop                                           ; $7897: $00
    inc a                                         ; $7898: $3c
    jp $07f8                                      ; $7899: $c3 $f8 $07


    call z, $9933                                 ; $789c: $cc $33 $99
    ld h, [hl]                                    ; $789f: $66
    di                                            ; $78a0: $f3
    inc c                                         ; $78a1: $0c
    and $19                                       ; $78a2: $e6 $19
    rst $38                                       ; $78a4: $ff

jr_074_78a5:
    nop                                           ; $78a5: $00
    rst $20                                       ; $78a6: $e7
    jr jr_074_78a5                                ; $78a7: $18 $fc

    inc bc                                        ; $78a9: $03
    ld a, a                                       ; $78aa: $7f
    add b                                         ; $78ab: $80
    jr nc, jr_074_787d                            ; $78ac: $30 $cf

    rst $38                                       ; $78ae: $ff
    nop                                           ; $78af: $00
    rra                                           ; $78b0: $1f
    ldh [$c3], a                                  ; $78b1: $e0 $c3
    inc a                                         ; $78b3: $3c
    ldh [$1f], a                                  ; $78b4: $e0 $1f
    inc bc                                        ; $78b6: $03
    db $fc                                        ; $78b7: $fc
    nop                                           ; $78b8: $00
    rst $38                                       ; $78b9: $ff
    rrca                                          ; $78ba: $0f
    ldh a, [$81]                                  ; $78bb: $f0 $81
    ld a, [hl]                                    ; $78bd: $7e
    inc c                                         ; $78be: $0c
    di                                            ; $78bf: $f3
    add b                                         ; $78c0: $80
    ld a, a                                       ; $78c1: $7f
    inc sp                                        ; $78c2: $33
    call z, $fe01                                 ; $78c3: $cc $01 $fe
    db $fc                                        ; $78c6: $fc
    inc bc                                        ; $78c7: $03
    nop                                           ; $78c8: $00
    rst $38                                       ; $78c9: $ff
    jr nc, @-$2f                                  ; $78ca: $30 $cf

    sbc c                                         ; $78cc: $99
    ld h, [hl]                                    ; $78cd: $66
    nop                                           ; $78ce: $00
    rst $38                                       ; $78cf: $ff
    ld bc, $ccff                                  ; $78d0: $01 $ff $cc
    rst $38                                       ; $78d3: $ff
    nop                                           ; $78d4: $00
    rst $38                                       ; $78d5: $ff
    inc bc                                        ; $78d6: $03
    rst $38                                       ; $78d7: $ff
    ldh [rIE], a                                  ; $78d8: $e0 $ff
    nop                                           ; $78da: $00
    rst $38                                       ; $78db: $ff
    rra                                           ; $78dc: $1f
    rst $38                                       ; $78dd: $ff
    nop                                           ; $78de: $00
    rst $38                                       ; $78df: $ff
    add b                                         ; $78e0: $80
    rst $38                                       ; $78e1: $ff
    inc a                                         ; $78e2: $3c
    rst $38                                       ; $78e3: $ff
    nop                                           ; $78e4: $00
    rst $38                                       ; $78e5: $ff
    rst $08                                       ; $78e6: $cf
    rst $38                                       ; $78e7: $ff
    ld bc, $0cff                                  ; $78e8: $01 $ff $0c
    rst $38                                       ; $78eb: $ff
    add b                                         ; $78ec: $80
    rst $38                                       ; $78ed: $ff
    rrca                                          ; $78ee: $0f
    rst $38                                       ; $78ef: $ff
    rra                                           ; $78f0: $1f
    rst $38                                       ; $78f1: $ff
    db $fc                                        ; $78f2: $fc
    rst $38                                       ; $78f3: $ff
    ld h, [hl]                                    ; $78f4: $66
    rst $38                                       ; $78f5: $ff
    db $fc                                        ; $78f6: $fc
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    call z, $feff                                 ; $78fa: $cc $ff $fe
    rst $38                                       ; $78fd: $ff
    di                                            ; $78fe: $f3
    rst $38                                       ; $78ff: $ff

Jump_074_7900:
    ld hl, sp-$01                                 ; $7900: $f8 $ff
    inc bc                                        ; $7902: $03
    rst $38                                       ; $7903: $ff
    ld a, [hl]                                    ; $7904: $7e
    rst $38                                       ; $7905: $ff
    jp $f9ff                                      ; $7906: $c3 $ff $f9


    rst $38                                       ; $7909: $ff
    rst $08                                       ; $790a: $cf
    rst $38                                       ; $790b: $ff

jr_074_790c:
    ld h, a                                       ; $790c: $67
    rst $38                                       ; $790d: $ff
    rst $08                                       ; $790e: $cf
    rst $38                                       ; $790f: $ff
    jr jr_074_7912                                ; $7910: $18 $00

jr_074_7912:
    inc sp                                        ; $7912: $33
    nop                                           ; $7913: $00
    add hl, de                                    ; $7914: $19
    nop                                           ; $7915: $00
    jr nc, jr_074_7918                            ; $7916: $30 $00

jr_074_7918:
    rlca                                          ; $7918: $07
    nop                                           ; $7919: $00
    nop                                           ; $791a: $00
    nop                                           ; $791b: $00
    sbc [hl]                                      ; $791c: $9e
    nop                                           ; $791d: $00
    nop                                           ; $791e: $00
    nop                                           ; $791f: $00
    jr jr_074_7922                                ; $7920: $18 $00

jr_074_7922:
    inc bc                                        ; $7922: $03
    nop                                           ; $7923: $00
    ldh [rP1], a                                  ; $7924: $e0 $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    add [hl]                                      ; $7928: $86
    nop                                           ; $7929: $00
    rrca                                          ; $792a: $0f
    nop                                           ; $792b: $00
    ld h, a                                       ; $792c: $67
    nop                                           ; $792d: $00
    call z, $e000                                 ; $792e: $cc $00 $e0
    nop                                           ; $7931: $00
    inc a                                         ; $7932: $3c
    nop                                           ; $7933: $00
    rra                                           ; $7934: $1f
    nop                                           ; $7935: $00
    db $fc                                        ; $7936: $fc

jr_074_7937:
    nop                                           ; $7937: $00
    rst $38                                       ; $7938: $ff
    nop                                           ; $7939: $00
    ldh a, [rP1]                                  ; $793a: $f0 $00
    sbc a                                         ; $793c: $9f
    nop                                           ; $793d: $00
    di                                            ; $793e: $f3
    nop                                           ; $793f: $00
    ld a, a                                       ; $7940: $7f
    nop                                           ; $7941: $00
    call z, $fe00                                 ; $7942: $cc $00 $fe
    nop                                           ; $7945: $00
    inc bc                                        ; $7946: $03
    nop                                           ; $7947: $00
    rst $38                                       ; $7948: $ff
    nop                                           ; $7949: $00
    rst $38                                       ; $794a: $ff
    nop                                           ; $794b: $00
    add a                                         ; $794c: $87
    nop                                           ; $794d: $00
    rst $38                                       ; $794e: $ff
    nop                                           ; $794f: $00
    cp $01                                        ; $7950: $fe $01
    call z, $e733                                 ; $7952: $cc $33 $e7
    jr @-$02                                      ; $7955: $18 $fc

    inc bc                                        ; $7957: $03
    rra                                           ; $7958: $1f
    ldh [rIE], a                                  ; $7959: $e0 $ff
    nop                                           ; $795b: $00
    ldh [$1f], a                                  ; $795c: $e0 $1f
    rst $38                                       ; $795e: $ff
    nop                                           ; $795f: $00
    ld a, a                                       ; $7960: $7f
    add b                                         ; $7961: $80
    di                                            ; $7962: $f3
    inc c                                         ; $7963: $0c
    sbc a                                         ; $7964: $9f
    ld h, b                                       ; $7965: $60
    jr nc, jr_074_7937                            ; $7966: $30 $cf

    cp $01                                        ; $7968: $fe $01
    di                                            ; $796a: $f3
    inc c                                         ; $796b: $0c
    ld a, a                                       ; $796c: $7f
    add b                                         ; $796d: $80
    ldh a, [rIF]                                  ; $796e: $f0 $0f
    ldh [$1f], a                                  ; $7970: $e0 $1f
    inc bc                                        ; $7972: $03
    db $fc                                        ; $7973: $fc
    sbc c                                         ; $7974: $99
    ld h, [hl]                                    ; $7975: $66
    inc bc                                        ; $7976: $03
    db $fc                                        ; $7977: $fc
    ld bc, $3cfe                                  ; $7978: $01 $fe $3c
    jp $fe01                                      ; $797b: $c3 $01 $fe


    inc c                                         ; $797e: $0c
    di                                            ; $797f: $f3
    rlca                                          ; $7980: $07
    ld hl, sp-$04                                 ; $7981: $f8 $fc
    inc bc                                        ; $7983: $03
    add c                                         ; $7984: $81
    ld a, [hl]                                    ; $7985: $7e
    inc a                                         ; $7986: $3c
    jp Jump_074_7f80                              ; $7987: $c3 $80 $7f


    nop                                           ; $798a: $00
    rst $38                                       ; $798b: $ff
    add b                                         ; $798c: $80
    ld a, a                                       ; $798d: $7f
    nop                                           ; $798e: $00
    rst $38                                       ; $798f: $ff
    ld bc, $0cff                                  ; $7990: $01 $ff $0c
    rst $38                                       ; $7993: $ff
    ld bc, $00ff                                  ; $7994: $01 $ff $00
    rst $38                                       ; $7997: $ff
    sbc [hl]                                      ; $7998: $9e
    rst $38                                       ; $7999: $ff
    nop                                           ; $799a: $00
    rst $38                                       ; $799b: $ff
    rra                                           ; $799c: $1f
    rst $38                                       ; $799d: $ff
    nop                                           ; $799e: $00
    rst $38                                       ; $799f: $ff
    add [hl]                                      ; $79a0: $86
    rst $38                                       ; $79a1: $ff
    jr nc, @+$01                                  ; $79a2: $30 $ff

    cp $ff                                        ; $79a4: $fe $ff
    nop                                           ; $79a6: $00
    rst $38                                       ; $79a7: $ff
    add hl, de                                    ; $79a8: $19
    rst $38                                       ; $79a9: $ff
    inc sp                                        ; $79aa: $33
    rst $38                                       ; $79ab: $ff
    cp $ff                                        ; $79ac: $fe $ff
    nop                                           ; $79ae: $00
    rst $38                                       ; $79af: $ff
    call z, $f9ff                                 ; $79b0: $cc $ff $f9
    rst $38                                       ; $79b3: $ff
    ccf                                           ; $79b4: $3f
    rst $38                                       ; $79b5: $ff
    ld a, a                                       ; $79b6: $7f
    rst $38                                       ; $79b7: $ff
    ldh a, [rIE]                                  ; $79b8: $f0 $ff
    rst $20                                       ; $79ba: $e7
    rst $38                                       ; $79bb: $ff
    db $fc                                        ; $79bc: $fc
    rst $38                                       ; $79bd: $ff
    ld sp, hl                                     ; $79be: $f9
    rst $38                                       ; $79bf: $ff
    inc bc                                        ; $79c0: $03
    rst $38                                       ; $79c1: $ff
    rst $20                                       ; $79c2: $e7
    rst $38                                       ; $79c3: $ff
    inc bc                                        ; $79c4: $03
    rst $38                                       ; $79c5: $ff
    ld hl, sp-$01                                 ; $79c6: $f8 $ff
    rrca                                          ; $79c8: $0f
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    inc c                                         ; $79cc: $0c
    rst $38                                       ; $79cd: $ff
    sbc a                                         ; $79ce: $9f
    rst $38                                       ; $79cf: $ff
    inc c                                         ; $79d0: $0c
    nop                                           ; $79d1: $00
    add hl, de                                    ; $79d2: $19
    nop                                           ; $79d3: $00
    nop                                           ; $79d4: $00
    nop                                           ; $79d5: $00
    rst $20                                       ; $79d6: $e7
    nop                                           ; $79d7: $00
    nop                                           ; $79d8: $00
    nop                                           ; $79d9: $00
    ld b, $00                                     ; $79da: $06 $00
    ret nz                                        ; $79dc: $c0

    nop                                           ; $79dd: $00
    rlca                                          ; $79de: $07
    nop                                           ; $79df: $00
    jr nc, jr_074_79e2                            ; $79e0: $30 $00

jr_074_79e2:
    add b                                         ; $79e2: $80
    nop                                           ; $79e3: $00
    inc c                                         ; $79e4: $0c
    nop                                           ; $79e5: $00
    add c                                         ; $79e6: $81
    nop                                           ; $79e7: $00
    ldh a, [rP1]                                  ; $79e8: $f0 $00
    nop                                           ; $79ea: $00
    nop                                           ; $79eb: $00
    rrca                                          ; $79ec: $0f
    nop                                           ; $79ed: $00
    add b                                         ; $79ee: $80
    nop                                           ; $79ef: $00
    db $fc                                        ; $79f0: $fc
    nop                                           ; $79f1: $00
    ld bc, $3f00                                  ; $79f2: $01 $00 $3f
    nop                                           ; $79f5: $00
    ld h, c                                       ; $79f6: $61
    nop                                           ; $79f7: $00
    db $fc                                        ; $79f8: $fc
    nop                                           ; $79f9: $00
    rst $38                                       ; $79fa: $ff
    nop                                           ; $79fb: $00
    rst $38                                       ; $79fc: $ff
    nop                                           ; $79fd: $00
    rst $38                                       ; $79fe: $ff

Call_074_79ff:
    nop                                           ; $79ff: $00
    rrca                                          ; $7a00: $0f
    nop                                           ; $7a01: $00
    cp $00                                        ; $7a02: $fe $00
    inc sp                                        ; $7a04: $33
    nop                                           ; $7a05: $00
    cp $00                                        ; $7a06: $fe $00
    ccf                                           ; $7a08: $3f
    nop                                           ; $7a09: $00
    ld sp, hl                                     ; $7a0a: $f9
    nop                                           ; $7a0b: $00
    rst $38                                       ; $7a0c: $ff
    nop                                           ; $7a0d: $00
    rst $38                                       ; $7a0e: $ff
    nop                                           ; $7a0f: $00
    jr nc, jr_074_7a12                            ; $7a10: $30 $00

jr_074_7a12:
    add b                                         ; $7a12: $80
    nop                                           ; $7a13: $00
    call z, RST_00                                ; $7a14: $cc $00 $00
    nop                                           ; $7a17: $00
    ret nz                                        ; $7a18: $c0

    nop                                           ; $7a19: $00
    rra                                           ; $7a1a: $1f
    nop                                           ; $7a1b: $00
    nop                                           ; $7a1c: $00
    nop                                           ; $7a1d: $00
    rst $38                                       ; $7a1e: $ff
    nop                                           ; $7a1f: $00
    ld b, $00                                     ; $7a20: $06 $00
    inc a                                         ; $7a22: $3c
    nop                                           ; $7a23: $00
    ld e, $00                                     ; $7a24: $1e $00
    nop                                           ; $7a26: $00
    nop                                           ; $7a27: $00
    ld a, c                                       ; $7a28: $79
    nop                                           ; $7a29: $00
    di                                            ; $7a2a: $f3
    nop                                           ; $7a2b: $00
    nop                                           ; $7a2c: $00

jr_074_7a2d:
    nop                                           ; $7a2d: $00
    inc bc                                        ; $7a2e: $03

jr_074_7a2f:
    nop                                           ; $7a2f: $00
    ccf                                           ; $7a30: $3f
    nop                                           ; $7a31: $00
    add b                                         ; $7a32: $80
    nop                                           ; $7a33: $00
    rst $38                                       ; $7a34: $ff
    nop                                           ; $7a35: $00
    rlca                                          ; $7a36: $07
    nop                                           ; $7a37: $00
    ccf                                           ; $7a38: $3f
    nop                                           ; $7a39: $00
    ld h, a                                       ; $7a3a: $67
    nop                                           ; $7a3b: $00
    ccf                                           ; $7a3c: $3f
    nop                                           ; $7a3d: $00
    ld hl, sp+$00                                 ; $7a3e: $f8 $00
    ld hl, sp+$00                                 ; $7a40: $f8 $00
    rrca                                          ; $7a42: $0f
    nop                                           ; $7a43: $00
    rst $38                                       ; $7a44: $ff
    nop                                           ; $7a45: $00
    di                                            ; $7a46: $f3
    nop                                           ; $7a47: $00
    rst $38                                       ; $7a48: $ff
    nop                                           ; $7a49: $00
    call z, $ff00                                 ; $7a4a: $cc $00 $ff
    nop                                           ; $7a4d: $00
    inc a                                         ; $7a4e: $3c
    nop                                           ; $7a4f: $00
    ccf                                           ; $7a50: $3f
    ret nz                                        ; $7a51: $c0

    rst $20                                       ; $7a52: $e7
    jr jr_074_7a94                                ; $7a53: $18 $3f

    ret nz                                        ; $7a55: $c0

    rst $38                                       ; $7a56: $ff
    nop                                           ; $7a57: $00
    di                                            ; $7a58: $f3
    inc c                                         ; $7a59: $0c
    ldh [$1f], a                                  ; $7a5a: $e0 $1f
    jr nc, jr_074_7a2d                            ; $7a5c: $30 $cf

    ld h, a                                       ; $7a5e: $67
    sbc b                                         ; $7a5f: $98
    rst $20                                       ; $7a60: $e7

jr_074_7a61:
    jr jr_074_7a2f                                ; $7a61: $18 $cc

    inc sp                                        ; $7a63: $33
    cp $01                                        ; $7a64: $fe $01
    rst $08                                       ; $7a66: $cf

jr_074_7a67:
    jr nc, jr_074_7a61                            ; $7a67: $30 $f8

    rlca                                          ; $7a69: $07
    rst $38                                       ; $7a6a: $ff
    nop                                           ; $7a6b: $00
    ld h, c                                       ; $7a6c: $61
    sbc [hl]                                      ; $7a6d: $9e
    rst $38                                       ; $7a6e: $ff
    nop                                           ; $7a6f: $00
    ccf                                           ; $7a70: $3f
    ret nz                                        ; $7a71: $c0

    add [hl]                                      ; $7a72: $86
    ld a, c                                       ; $7a73: $79
    ret nz                                        ; $7a74: $c0

    ccf                                           ; $7a75: $3f
    rlca                                          ; $7a76: $07
    ld hl, sp+$00                                 ; $7a77: $f8 $00
    rst $38                                       ; $7a79: $ff
    ld e, $e1                                     ; $7a7a: $1e $e1
    inc bc                                        ; $7a7c: $03
    db $fc                                        ; $7a7d: $fc
    jr jr_074_7a67                                ; $7a7e: $18 $e7

    nop                                           ; $7a80: $00
    rst $38                                       ; $7a81: $ff
    ld h, a                                       ; $7a82: $67
    sbc b                                         ; $7a83: $98
    inc bc                                        ; $7a84: $03
    db $fc                                        ; $7a85: $fc
    ld hl, sp+$07                                 ; $7a86: $f8 $07
    nop                                           ; $7a88: $00
    rst $38                                       ; $7a89: $ff
    ld h, b                                       ; $7a8a: $60
    sbc a                                         ; $7a8b: $9f
    inc sp                                        ; $7a8c: $33
    call z, $ff00                                 ; $7a8d: $cc $00 $ff
    inc bc                                        ; $7a90: $03
    rst $38                                       ; $7a91: $ff
    sbc b                                         ; $7a92: $98
    rst $38                                       ; $7a93: $ff

jr_074_7a94:
    nop                                           ; $7a94: $00
    rst $38                                       ; $7a95: $ff
    rlca                                          ; $7a96: $07
    rst $38                                       ; $7a97: $ff
    ret nz                                        ; $7a98: $c0

    rst $38                                       ; $7a99: $ff
    nop                                           ; $7a9a: $00
    rst $38                                       ; $7a9b: $ff
    ccf                                           ; $7a9c: $3f
    rst $38                                       ; $7a9d: $ff
    nop                                           ; $7a9e: $00
    rst $38                                       ; $7a9f: $ff
    nop                                           ; $7aa0: $00
    rst $38                                       ; $7aa1: $ff
    ld a, c                                       ; $7aa2: $79
    rst $38                                       ; $7aa3: $ff
    nop                                           ; $7aa4: $00
    rst $38                                       ; $7aa5: $ff
    sbc [hl]                                      ; $7aa6: $9e
    rst $38                                       ; $7aa7: $ff
    inc bc                                        ; $7aa8: $03
    rst $38                                       ; $7aa9: $ff
    jr @+$01                                      ; $7aaa: $18 $ff

    nop                                           ; $7aac: $00
    rst $38                                       ; $7aad: $ff
    ld e, $ff                                     ; $7aae: $1e $ff
    ccf                                           ; $7ab0: $3f
    rst $38                                       ; $7ab1: $ff
    ld hl, sp-$01                                 ; $7ab2: $f8 $ff
    call z, $f9ff                                 ; $7ab4: $cc $ff $f9
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    sbc c                                         ; $7aba: $99
    rst $38                                       ; $7abb: $ff
    db $fc                                        ; $7abc: $fc
    rst $38                                       ; $7abd: $ff
    rst $20                                       ; $7abe: $e7
    rst $38                                       ; $7abf: $ff
    ldh a, [rIE]                                  ; $7ac0: $f0 $ff
    rlca                                          ; $7ac2: $07
    rst $38                                       ; $7ac3: $ff
    db $fc                                        ; $7ac4: $fc
    rst $38                                       ; $7ac5: $ff
    add a                                         ; $7ac6: $87
    rst $38                                       ; $7ac7: $ff
    di                                            ; $7ac8: $f3
    rst $38                                       ; $7ac9: $ff
    sbc a                                         ; $7aca: $9f
    rst $38                                       ; $7acb: $ff
    rst $08                                       ; $7acc: $cf
    rst $38                                       ; $7acd: $ff
    sbc a                                         ; $7ace: $9f
    rst $38                                       ; $7acf: $ff
    jr nc, jr_074_7ad2                            ; $7ad0: $30 $00

jr_074_7ad2:
    ld h, [hl]                                    ; $7ad2: $66
    nop                                           ; $7ad3: $00
    inc sp                                        ; $7ad4: $33
    nop                                           ; $7ad5: $00
    ld h, b                                       ; $7ad6: $60
    nop                                           ; $7ad7: $00
    rrca                                          ; $7ad8: $0f
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    nop                                           ; $7adb: $00
    inc a                                         ; $7adc: $3c
    nop                                           ; $7add: $00
    ld bc, $3000                                  ; $7ade: $01 $00 $30
    nop                                           ; $7ae1: $00
    ld b, $00                                     ; $7ae2: $06 $00
    ret nz                                        ; $7ae4: $c0

    nop                                           ; $7ae5: $00
    nop                                           ; $7ae6: $00
    nop                                           ; $7ae7: $00
    inc c                                         ; $7ae8: $0c
    nop                                           ; $7ae9: $00
    ld e, $00                                     ; $7aea: $1e $00
    rst $08                                       ; $7aec: $cf
    nop                                           ; $7aed: $00
    sbc b                                         ; $7aee: $98
    nop                                           ; $7aef: $00
    ldh [rP1], a                                  ; $7af0: $e0 $00
    inc a                                         ; $7af2: $3c
    nop                                           ; $7af3: $00
    rra                                           ; $7af4: $1f
    nop                                           ; $7af5: $00
    db $fc                                        ; $7af6: $fc

jr_074_7af7:
    nop                                           ; $7af7: $00
    rst $38                                       ; $7af8: $ff
    nop                                           ; $7af9: $00
    ldh a, [rP1]                                  ; $7afa: $f0 $00
    sbc a                                         ; $7afc: $9f
    nop                                           ; $7afd: $00
    di                                            ; $7afe: $f3
    nop                                           ; $7aff: $00
    ld a, a                                       ; $7b00: $7f
    nop                                           ; $7b01: $00
    call z, $fe00                                 ; $7b02: $cc $00 $fe
    nop                                           ; $7b05: $00
    inc bc                                        ; $7b06: $03
    nop                                           ; $7b07: $00
    rst $38                                       ; $7b08: $ff
    nop                                           ; $7b09: $00
    rst $38                                       ; $7b0a: $ff
    nop                                           ; $7b0b: $00
    add a                                         ; $7b0c: $87
    nop                                           ; $7b0d: $00
    rst $38                                       ; $7b0e: $ff
    nop                                           ; $7b0f: $00
    cp $01                                        ; $7b10: $fe $01
    call z, $e733                                 ; $7b12: $cc $33 $e7
    jr @-$02                                      ; $7b15: $18 $fc

    inc bc                                        ; $7b17: $03
    rra                                           ; $7b18: $1f
    ldh [rIE], a                                  ; $7b19: $e0 $ff
    nop                                           ; $7b1b: $00
    ldh [$1f], a                                  ; $7b1c: $e0 $1f
    rst $38                                       ; $7b1e: $ff
    nop                                           ; $7b1f: $00
    ld a, a                                       ; $7b20: $7f
    add b                                         ; $7b21: $80
    di                                            ; $7b22: $f3
    inc c                                         ; $7b23: $0c
    sbc a                                         ; $7b24: $9f
    ld h, b                                       ; $7b25: $60
    jr nc, jr_074_7af7                            ; $7b26: $30 $cf

    cp $01                                        ; $7b28: $fe $01
    di                                            ; $7b2a: $f3
    inc c                                         ; $7b2b: $0c
    ld a, a                                       ; $7b2c: $7f
    add b                                         ; $7b2d: $80
    ldh a, [rIF]                                  ; $7b2e: $f0 $0f
    ldh [$1f], a                                  ; $7b30: $e0 $1f
    inc bc                                        ; $7b32: $03
    db $fc                                        ; $7b33: $fc
    sbc c                                         ; $7b34: $99
    ld h, [hl]                                    ; $7b35: $66
    inc bc                                        ; $7b36: $03
    db $fc                                        ; $7b37: $fc
    ld bc, $3cfe                                  ; $7b38: $01 $fe $3c
    jp $fe01                                      ; $7b3b: $c3 $01 $fe


    inc c                                         ; $7b3e: $0c
    di                                            ; $7b3f: $f3
    rlca                                          ; $7b40: $07
    ld hl, sp-$04                                 ; $7b41: $f8 $fc
    inc bc                                        ; $7b43: $03
    add c                                         ; $7b44: $81
    ld a, [hl]                                    ; $7b45: $7e
    inc a                                         ; $7b46: $3c
    jp Jump_074_7f80                              ; $7b47: $c3 $80 $7f


    nop                                           ; $7b4a: $00
    rst $38                                       ; $7b4b: $ff
    add b                                         ; $7b4c: $80
    ld a, a                                       ; $7b4d: $7f
    nop                                           ; $7b4e: $00
    rst $38                                       ; $7b4f: $ff
    ld bc, $0cff                                  ; $7b50: $01 $ff $0c
    rst $38                                       ; $7b53: $ff
    ld bc, $00ff                                  ; $7b54: $01 $ff $00
    rst $38                                       ; $7b57: $ff
    sbc [hl]                                      ; $7b58: $9e
    rst $38                                       ; $7b59: $ff
    nop                                           ; $7b5a: $00
    rst $38                                       ; $7b5b: $ff
    rra                                           ; $7b5c: $1f
    rst $38                                       ; $7b5d: $ff
    nop                                           ; $7b5e: $00
    rst $38                                       ; $7b5f: $ff
    add [hl]                                      ; $7b60: $86
    rst $38                                       ; $7b61: $ff
    jr nc, @+$01                                  ; $7b62: $30 $ff

    cp $ff                                        ; $7b64: $fe $ff
    nop                                           ; $7b66: $00
    rst $38                                       ; $7b67: $ff
    add hl, de                                    ; $7b68: $19
    rst $38                                       ; $7b69: $ff
    inc sp                                        ; $7b6a: $33
    rst $38                                       ; $7b6b: $ff
    cp $ff                                        ; $7b6c: $fe $ff
    nop                                           ; $7b6e: $00
    rst $38                                       ; $7b6f: $ff
    sbc b                                         ; $7b70: $98
    rst $38                                       ; $7b71: $ff
    di                                            ; $7b72: $f3
    rst $38                                       ; $7b73: $ff
    ld a, [hl]                                    ; $7b74: $7e
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    ldh [rIE], a                                  ; $7b78: $e0 $ff
    rst $08                                       ; $7b7a: $cf
    rst $38                                       ; $7b7b: $ff
    ld hl, sp-$01                                 ; $7b7c: $f8 $ff
    di                                            ; $7b7e: $f3
    rst $38                                       ; $7b7f: $ff
    rlca                                          ; $7b80: $07
    rst $38                                       ; $7b81: $ff
    rst $08                                       ; $7b82: $cf
    rst $38                                       ; $7b83: $ff
    ld b, $ff                                     ; $7b84: $06 $ff
    ldh a, [rIE]                                  ; $7b86: $f0 $ff
    rra                                           ; $7b88: $1f
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    add hl, de                                    ; $7b8c: $19
    rst $38                                       ; $7b8d: $ff
    ccf                                           ; $7b8e: $3f
    rst $38                                       ; $7b8f: $ff
    jr jr_074_7b92                                ; $7b90: $18 $00

jr_074_7b92:
    inc sp                                        ; $7b92: $33
    nop                                           ; $7b93: $00
    nop                                           ; $7b94: $00
    nop                                           ; $7b95: $00
    rst $08                                       ; $7b96: $cf
    nop                                           ; $7b97: $00
    ld bc, $0c00                                  ; $7b98: $01 $00 $0c
    nop                                           ; $7b9b: $00
    add b                                         ; $7b9c: $80
    nop                                           ; $7b9d: $00
    rrca                                          ; $7b9e: $0f
    nop                                           ; $7b9f: $00
    ld h, b                                       ; $7ba0: $60
    nop                                           ; $7ba1: $00
    nop                                           ; $7ba2: $00
    nop                                           ; $7ba3: $00
    jr jr_074_7ba6                                ; $7ba4: $18 $00

jr_074_7ba6:
    inc bc                                        ; $7ba6: $03
    nop                                           ; $7ba7: $00
    ldh [rP1], a                                  ; $7ba8: $e0 $00
    nop                                           ; $7baa: $00
    nop                                           ; $7bab: $00
    rra                                           ; $7bac: $1f
    nop                                           ; $7bad: $00
    nop                                           ; $7bae: $00
    nop                                           ; $7baf: $00
    ld hl, sp+$00                                 ; $7bb0: $f8 $00
    inc bc                                        ; $7bb2: $03
    nop                                           ; $7bb3: $00
    ld a, [hl]                                    ; $7bb4: $7e
    nop                                           ; $7bb5: $00
    jp $f800                                      ; $7bb6: $c3 $00 $f8


    nop                                           ; $7bb9: $00
    rst $38                                       ; $7bba: $ff
    nop                                           ; $7bbb: $00

jr_074_7bbc:
    rst $38                                       ; $7bbc: $ff
    nop                                           ; $7bbd: $00
    rst $38                                       ; $7bbe: $ff
    nop                                           ; $7bbf: $00
    rra                                           ; $7bc0: $1f
    nop                                           ; $7bc1: $00
    db $fc                                        ; $7bc2: $fc
    nop                                           ; $7bc3: $00
    ld h, [hl]                                    ; $7bc4: $66
    nop                                           ; $7bc5: $00
    db $fc                                        ; $7bc6: $fc
    nop                                           ; $7bc7: $00
    ld a, a                                       ; $7bc8: $7f
    nop                                           ; $7bc9: $00
    di                                            ; $7bca: $f3
    nop                                           ; $7bcb: $00
    rst $38                                       ; $7bcc: $ff
    nop                                           ; $7bcd: $00
    rst $38                                       ; $7bce: $ff
    nop                                           ; $7bcf: $00
    ld h, b                                       ; $7bd0: $60
    nop                                           ; $7bd1: $00
    nop                                           ; $7bd2: $00
    nop                                           ; $7bd3: $00
    sbc b                                         ; $7bd4: $98
    nop                                           ; $7bd5: $00
    nop                                           ; $7bd6: $00
    nop                                           ; $7bd7: $00
    add b                                         ; $7bd8: $80
    nop                                           ; $7bd9: $00
    ccf                                           ; $7bda: $3f
    nop                                           ; $7bdb: $00

jr_074_7bdc:
    nop                                           ; $7bdc: $00
    nop                                           ; $7bdd: $00
    cp $00                                        ; $7bde: $fe $00
    inc c                                         ; $7be0: $0c
    nop                                           ; $7be1: $00
    ld a, c                                       ; $7be2: $79
    nop                                           ; $7be3: $00
    inc a                                         ; $7be4: $3c
    nop                                           ; $7be5: $00
    nop                                           ; $7be6: $00
    nop                                           ; $7be7: $00
    di                                            ; $7be8: $f3
    nop                                           ; $7be9: $00
    and $00                                       ; $7bea: $e6 $00
    nop                                           ; $7bec: $00
    nop                                           ; $7bed: $00
    rlca                                          ; $7bee: $07
    nop                                           ; $7bef: $00

jr_074_7bf0:
    ld a, a                                       ; $7bf0: $7f
    nop                                           ; $7bf1: $00
    nop                                           ; $7bf2: $00
    nop                                           ; $7bf3: $00
    rst $38                                       ; $7bf4: $ff
    nop                                           ; $7bf5: $00
    rrca                                          ; $7bf6: $0f
    nop                                           ; $7bf7: $00
    ld a, a                                       ; $7bf8: $7f
    nop                                           ; $7bf9: $00
    rst $08                                       ; $7bfa: $cf
    nop                                           ; $7bfb: $00
    ld a, a                                       ; $7bfc: $7f
    nop                                           ; $7bfd: $00
    ldh a, [rP1]                                  ; $7bfe: $f0 $00
    ldh a, [rP1]                                  ; $7c00: $f0 $00
    rra                                           ; $7c02: $1f
    nop                                           ; $7c03: $00
    rst $38                                       ; $7c04: $ff
    nop                                           ; $7c05: $00
    and $00                                       ; $7c06: $e6 $00
    rst $38                                       ; $7c08: $ff
    nop                                           ; $7c09: $00
    sbc b                                         ; $7c0a: $98
    nop                                           ; $7c0b: $00
    rst $38                                       ; $7c0c: $ff
    nop                                           ; $7c0d: $00
    ld a, c                                       ; $7c0e: $79

jr_074_7c0f:
    nop                                           ; $7c0f: $00
    ld a, a                                       ; $7c10: $7f
    add b                                         ; $7c11: $80
    rst $08                                       ; $7c12: $cf
    jr nc, @+$81                                  ; $7c13: $30 $7f

    add b                                         ; $7c15: $80
    rst $38                                       ; $7c16: $ff
    nop                                           ; $7c17: $00
    rst $20                                       ; $7c18: $e7
    jr jr_074_7bdc                                ; $7c19: $18 $c1

    ld a, $60                                     ; $7c1b: $3e $60
    sbc a                                         ; $7c1d: $9f
    rst $08                                       ; $7c1e: $cf
    jr nc, jr_074_7bf0                            ; $7c1f: $30 $cf

    jr nc, jr_074_7bbc                            ; $7c21: $30 $99

    ld h, [hl]                                    ; $7c23: $66
    db $fc                                        ; $7c24: $fc
    inc bc                                        ; $7c25: $03
    sbc a                                         ; $7c26: $9f
    ld h, b                                       ; $7c27: $60
    ldh a, [rIF]                                  ; $7c28: $f0 $0f
    rst $38                                       ; $7c2a: $ff
    nop                                           ; $7c2b: $00
    jp $fe3c                                      ; $7c2c: $c3 $3c $fe


    ld bc, $817e                                  ; $7c2f: $01 $7e $81
    inc c                                         ; $7c32: $0c
    di                                            ; $7c33: $f3
    add b                                         ; $7c34: $80
    ld a, a                                       ; $7c35: $7f
    rrca                                          ; $7c36: $0f
    ldh a, [rP1]                                  ; $7c37: $f0 $00
    rst $38                                       ; $7c39: $ff
    inc a                                         ; $7c3a: $3c
    jp $f906                                      ; $7c3b: $c3 $06 $f9


    jr nc, jr_074_7c0f                            ; $7c3e: $30 $cf

    nop                                           ; $7c40: $00
    rst $38                                       ; $7c41: $ff
    rst $08                                       ; $7c42: $cf
    jr nc, jr_074_7c4c                            ; $7c43: $30 $07

    ld hl, sp-$10                                 ; $7c45: $f8 $f0
    rrca                                          ; $7c47: $0f
    nop                                           ; $7c48: $00
    rst $38                                       ; $7c49: $ff
    ret nz                                        ; $7c4a: $c0

    ccf                                           ; $7c4b: $3f

jr_074_7c4c:
    ld h, [hl]                                    ; $7c4c: $66
    sbc c                                         ; $7c4d: $99
    nop                                           ; $7c4e: $00
    rst $38                                       ; $7c4f: $ff
    ld b, $ff                                     ; $7c50: $06 $ff
    jr nc, @+$01                                  ; $7c52: $30 $ff

    nop                                           ; $7c54: $00
    rst $38                                       ; $7c55: $ff
    rrca                                          ; $7c56: $0f
    rst $38                                       ; $7c57: $ff
    add b                                         ; $7c58: $80
    rst $38                                       ; $7c59: $ff
    nop                                           ; $7c5a: $00
    rst $38                                       ; $7c5b: $ff
    ld a, [hl]                                    ; $7c5c: $7e
    rst $38                                       ; $7c5d: $ff
    nop                                           ; $7c5e: $00
    rst $38                                       ; $7c5f: $ff
    nop                                           ; $7c60: $00
    rst $38                                       ; $7c61: $ff
    di                                            ; $7c62: $f3
    rst $38                                       ; $7c63: $ff
    nop                                           ; $7c64: $00
    rst $38                                       ; $7c65: $ff
    inc a                                         ; $7c66: $3c
    rst $38                                       ; $7c67: $ff
    rlca                                          ; $7c68: $07
    rst $38                                       ; $7c69: $ff
    jr nc, @+$01                                  ; $7c6a: $30 $ff

    nop                                           ; $7c6c: $00
    rst $38                                       ; $7c6d: $ff
    inc a                                         ; $7c6e: $3c
    rst $38                                       ; $7c6f: $ff
    ld a, a                                       ; $7c70: $7f
    rst $38                                       ; $7c71: $ff
    ldh a, [rIE]                                  ; $7c72: $f0 $ff
    sbc c                                         ; $7c74: $99
    rst $38                                       ; $7c75: $ff
    di                                            ; $7c76: $f3
    rst $38                                       ; $7c77: $ff
    rst $38                                       ; $7c78: $ff
    rst $38                                       ; $7c79: $ff
    inc sp                                        ; $7c7a: $33
    rst $38                                       ; $7c7b: $ff
    ld sp, hl                                     ; $7c7c: $f9
    rst $38                                       ; $7c7d: $ff
    rst $08                                       ; $7c7e: $cf
    rst $38                                       ; $7c7f: $ff
    ldh [rIE], a                                  ; $7c80: $e0 $ff
    rrca                                          ; $7c82: $0f
    rst $38                                       ; $7c83: $ff
    ld sp, hl                                     ; $7c84: $f9
    rst $38                                       ; $7c85: $ff
    rrca                                          ; $7c86: $0f
    rst $38                                       ; $7c87: $ff
    rst $20                                       ; $7c88: $e7
    rst $38                                       ; $7c89: $ff
    ccf                                           ; $7c8a: $3f
    rst $38                                       ; $7c8b: $ff
    sbc a                                         ; $7c8c: $9f
    rst $38                                       ; $7c8d: $ff
    ccf                                           ; $7c8e: $3f
    rst $38                                       ; $7c8f: $ff
    ld h, b                                       ; $7c90: $60
    nop                                           ; $7c91: $00
    call z, Call_074_6700                         ; $7c92: $cc $00 $67
    nop                                           ; $7c95: $00
    ret nz                                        ; $7c96: $c0

    nop                                           ; $7c97: $00
    ld e, $00                                     ; $7c98: $1e $00
    nop                                           ; $7c9a: $00
    nop                                           ; $7c9b: $00
    ld a, c                                       ; $7c9c: $79
    nop                                           ; $7c9d: $00
    inc bc                                        ; $7c9e: $03
    nop                                           ; $7c9f: $00
    ld h, b                                       ; $7ca0: $60
    nop                                           ; $7ca1: $00
    inc c                                         ; $7ca2: $0c
    nop                                           ; $7ca3: $00
    add b                                         ; $7ca4: $80
    nop                                           ; $7ca5: $00
    nop                                           ; $7ca6: $00
    nop                                           ; $7ca7: $00
    jr jr_074_7caa                                ; $7ca8: $18 $00

jr_074_7caa:
    inc a                                         ; $7caa: $3c
    nop                                           ; $7cab: $00
    sbc [hl]                                      ; $7cac: $9e
    nop                                           ; $7cad: $00
    jr nc, jr_074_7cb0                            ; $7cae: $30 $00

jr_074_7cb0:
    ret nz                                        ; $7cb0: $c0

    nop                                           ; $7cb1: $00
    ld a, c                                       ; $7cb2: $79
    nop                                           ; $7cb3: $00
    ccf                                           ; $7cb4: $3f
    nop                                           ; $7cb5: $00
    ld hl, sp+$00                                 ; $7cb6: $f8 $00
    rst $38                                       ; $7cb8: $ff
    nop                                           ; $7cb9: $00
    pop hl                                        ; $7cba: $e1
    nop                                           ; $7cbb: $00
    ccf                                           ; $7cbc: $3f
    nop                                           ; $7cbd: $00
    rst $20                                       ; $7cbe: $e7
    nop                                           ; $7cbf: $00
    rst $38                                       ; $7cc0: $ff
    nop                                           ; $7cc1: $00
    sbc b                                         ; $7cc2: $98
    nop                                           ; $7cc3: $00
    db $fc                                        ; $7cc4: $fc
    nop                                           ; $7cc5: $00
    rlca                                          ; $7cc6: $07
    nop                                           ; $7cc7: $00
    rst $38                                       ; $7cc8: $ff
    nop                                           ; $7cc9: $00
    rst $38                                       ; $7cca: $ff
    nop                                           ; $7ccb: $00
    rrca                                          ; $7ccc: $0f
    nop                                           ; $7ccd: $00
    rst $38                                       ; $7cce: $ff

jr_074_7ccf:
    nop                                           ; $7ccf: $00
    db $fc                                        ; $7cd0: $fc
    inc bc                                        ; $7cd1: $03
    sbc c                                         ; $7cd2: $99
    ld h, [hl]                                    ; $7cd3: $66
    rst $08                                       ; $7cd4: $cf
    jr nc, jr_074_7ccf                            ; $7cd5: $30 $f8

    rlca                                          ; $7cd7: $07
    ccf                                           ; $7cd8: $3f
    ret nz                                        ; $7cd9: $c0

    rst $38                                       ; $7cda: $ff
    nop                                           ; $7cdb: $00
    ret nz                                        ; $7cdc: $c0

    ccf                                           ; $7cdd: $3f
    rst $38                                       ; $7cde: $ff
    nop                                           ; $7cdf: $00
    rst $38                                       ; $7ce0: $ff
    nop                                           ; $7ce1: $00
    rst $20                                       ; $7ce2: $e7
    jr jr_074_7d24                                ; $7ce3: $18 $3f

    ret nz                                        ; $7ce5: $c0

    ld h, c                                       ; $7ce6: $61

jr_074_7ce7:
    sbc [hl]                                      ; $7ce7: $9e
    db $fc                                        ; $7ce8: $fc
    inc bc                                        ; $7ce9: $03
    rst $20                                       ; $7cea: $e7
    jr @+$01                                      ; $7ceb: $18 $ff

    nop                                           ; $7ced: $00
    pop hl                                        ; $7cee: $e1
    ld e, $c0                                     ; $7cef: $1e $c0
    ccf                                           ; $7cf1: $3f
    rlca                                          ; $7cf2: $07
    ld hl, sp+$33                                 ; $7cf3: $f8 $33
    call z, $f906                                 ; $7cf5: $cc $06 $f9
    inc bc                                        ; $7cf8: $03
    db $fc                                        ; $7cf9: $fc
    ld a, b                                       ; $7cfa: $78
    add a                                         ; $7cfb: $87
    inc bc                                        ; $7cfc: $03
    db $fc                                        ; $7cfd: $fc
    jr jr_074_7ce7                                ; $7cfe: $18 $e7

    rrca                                          ; $7d00: $0f
    ldh a, [$f8]                                  ; $7d01: $f0 $f8
    rlca                                          ; $7d03: $07
    inc bc                                        ; $7d04: $03
    db $fc                                        ; $7d05: $fc
    ld a, b                                       ; $7d06: $78
    add a                                         ; $7d07: $87
    nop                                           ; $7d08: $00
    rst $38                                       ; $7d09: $ff
    nop                                           ; $7d0a: $00
    rst $38                                       ; $7d0b: $ff
    nop                                           ; $7d0c: $00
    rst $38                                       ; $7d0d: $ff
    nop                                           ; $7d0e: $00
    rst $38                                       ; $7d0f: $ff
    inc bc                                        ; $7d10: $03
    rst $38                                       ; $7d11: $ff
    jr @+$01                                      ; $7d12: $18 $ff

    inc bc                                        ; $7d14: $03
    rst $38                                       ; $7d15: $ff
    nop                                           ; $7d16: $00
    rst $38                                       ; $7d17: $ff
    inc a                                         ; $7d18: $3c
    rst $38                                       ; $7d19: $ff
    nop                                           ; $7d1a: $00
    rst $38                                       ; $7d1b: $ff
    ccf                                           ; $7d1c: $3f
    rst $38                                       ; $7d1d: $ff
    nop                                           ; $7d1e: $00
    rst $38                                       ; $7d1f: $ff
    inc c                                         ; $7d20: $0c
    rst $38                                       ; $7d21: $ff
    ld h, b                                       ; $7d22: $60
    rst $38                                       ; $7d23: $ff

jr_074_7d24:
    db $fc                                        ; $7d24: $fc
    rst $38                                       ; $7d25: $ff
    nop                                           ; $7d26: $00
    rst $38                                       ; $7d27: $ff
    inc sp                                        ; $7d28: $33
    rst $38                                       ; $7d29: $ff
    ld h, [hl]                                    ; $7d2a: $66
    rst $38                                       ; $7d2b: $ff
    db $fc                                        ; $7d2c: $fc
    rst $38                                       ; $7d2d: $ff
    nop                                           ; $7d2e: $00
    rst $38                                       ; $7d2f: $ff
    jr nc, @+$01                                  ; $7d30: $30 $ff

    rst $20                                       ; $7d32: $e7
    rst $38                                       ; $7d33: $ff
    db $fc                                        ; $7d34: $fc
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    ret nz                                        ; $7d38: $c0

    rst $38                                       ; $7d39: $ff
    sbc a                                         ; $7d3a: $9f
    rst $38                                       ; $7d3b: $ff
    ldh a, [rIE]                                  ; $7d3c: $f0 $ff
    and $ff                                       ; $7d3e: $e6 $ff
    rrca                                          ; $7d40: $0f
    rst $38                                       ; $7d41: $ff
    sbc a                                         ; $7d42: $9f
    rst $38                                       ; $7d43: $ff
    inc c                                         ; $7d44: $0c
    rst $38                                       ; $7d45: $ff
    pop hl                                        ; $7d46: $e1
    rst $38                                       ; $7d47: $ff
    ccf                                           ; $7d48: $3f
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    inc sp                                        ; $7d4c: $33
    rst $38                                       ; $7d4d: $ff
    ld a, a                                       ; $7d4e: $7f
    rst $38                                       ; $7d4f: $ff
    jr nc, jr_074_7d52                            ; $7d50: $30 $00

jr_074_7d52:
    ld h, [hl]                                    ; $7d52: $66
    nop                                           ; $7d53: $00
    nop                                           ; $7d54: $00
    nop                                           ; $7d55: $00
    sbc [hl]                                      ; $7d56: $9e
    nop                                           ; $7d57: $00
    inc bc                                        ; $7d58: $03
    nop                                           ; $7d59: $00
    jr jr_074_7d5c                                ; $7d5a: $18 $00

jr_074_7d5c:
    nop                                           ; $7d5c: $00
    nop                                           ; $7d5d: $00
    ld e, $00                                     ; $7d5e: $1e $00
    ret nz                                        ; $7d60: $c0

    nop                                           ; $7d61: $00

jr_074_7d62:
    nop                                           ; $7d62: $00
    nop                                           ; $7d63: $00
    jr nc, jr_074_7d66                            ; $7d64: $30 $00

jr_074_7d66:
    rlca                                          ; $7d66: $07
    nop                                           ; $7d67: $00
    ret nz                                        ; $7d68: $c0

    nop                                           ; $7d69: $00
    nop                                           ; $7d6a: $00
    nop                                           ; $7d6b: $00
    ccf                                           ; $7d6c: $3f
    nop                                           ; $7d6d: $00
    nop                                           ; $7d6e: $00
    nop                                           ; $7d6f: $00
    ldh a, [rP1]                                  ; $7d70: $f0 $00
    rlca                                          ; $7d72: $07
    nop                                           ; $7d73: $00
    db $fc                                        ; $7d74: $fc
    nop                                           ; $7d75: $00
    add a                                         ; $7d76: $87
    nop                                           ; $7d77: $00
    ldh a, [rP1]                                  ; $7d78: $f0 $00
    rst $38                                       ; $7d7a: $ff
    nop                                           ; $7d7b: $00
    rst $38                                       ; $7d7c: $ff
    nop                                           ; $7d7d: $00
    rst $38                                       ; $7d7e: $ff
    nop                                           ; $7d7f: $00
    ccf                                           ; $7d80: $3f
    nop                                           ; $7d81: $00
    ld hl, sp+$00                                 ; $7d82: $f8 $00
    call z, $f900                                 ; $7d84: $cc $00 $f9
    nop                                           ; $7d87: $00
    rst $38                                       ; $7d88: $ff
    nop                                           ; $7d89: $00
    rst $20                                       ; $7d8a: $e7
    nop                                           ; $7d8b: $00
    rst $38                                       ; $7d8c: $ff
    nop                                           ; $7d8d: $00
    rst $38                                       ; $7d8e: $ff
    nop                                           ; $7d8f: $00
    ret nz                                        ; $7d90: $c0

    nop                                           ; $7d91: $00
    ld bc, $3000                                  ; $7d92: $01 $00 $30
    nop                                           ; $7d95: $00
    nop                                           ; $7d96: $00
    nop                                           ; $7d97: $00
    inc bc                                        ; $7d98: $03
    nop                                           ; $7d99: $00
    ld a, a                                       ; $7d9a: $7f
    nop                                           ; $7d9b: $00
    nop                                           ; $7d9c: $00
    nop                                           ; $7d9d: $00
    ld hl, sp+$00                                 ; $7d9e: $f8 $00
    jr nc, jr_074_7da2                            ; $7da0: $30 $00

jr_074_7da2:
    and $00                                       ; $7da2: $e6 $00
    di                                            ; $7da4: $f3
    nop                                           ; $7da5: $00
    nop                                           ; $7da6: $00
    nop                                           ; $7da7: $00
    rst $08                                       ; $7da8: $cf
    nop                                           ; $7da9: $00
    sbc b                                         ; $7daa: $98
    nop                                           ; $7dab: $00
    nop                                           ; $7dac: $00
    nop                                           ; $7dad: $00
    rra                                           ; $7dae: $1f
    nop                                           ; $7daf: $00
    rst $38                                       ; $7db0: $ff
    nop                                           ; $7db1: $00
    nop                                           ; $7db2: $00
    nop                                           ; $7db3: $00
    rst $38                                       ; $7db4: $ff
    nop                                           ; $7db5: $00
    rra                                           ; $7db6: $1f
    nop                                           ; $7db7: $00
    rst $38                                       ; $7db8: $ff
    nop                                           ; $7db9: $00
    sbc [hl]                                      ; $7dba: $9e
    nop                                           ; $7dbb: $00
    rst $38                                       ; $7dbc: $ff
    nop                                           ; $7dbd: $00
    pop hl                                        ; $7dbe: $e1
    nop                                           ; $7dbf: $00
    ret nz                                        ; $7dc0: $c0

    nop                                           ; $7dc1: $00
    ld a, [hl]                                    ; $7dc2: $7e
    nop                                           ; $7dc3: $00
    rst $38                                       ; $7dc4: $ff
    nop                                           ; $7dc5: $00
    sbc b                                         ; $7dc6: $98
    nop                                           ; $7dc7: $00
    db $fc                                        ; $7dc8: $fc
    nop                                           ; $7dc9: $00
    ld h, c                                       ; $7dca: $61
    nop                                           ; $7dcb: $00
    db $fc                                        ; $7dcc: $fc
    nop                                           ; $7dcd: $00
    rst $20                                       ; $7dce: $e7
    nop                                           ; $7dcf: $00
    rst $38                                       ; $7dd0: $ff
    nop                                           ; $7dd1: $00
    sbc [hl]                                      ; $7dd2: $9e
    ld h, c                                       ; $7dd3: $61
    rst $38                                       ; $7dd4: $ff
    nop                                           ; $7dd5: $00
    cp $01                                        ; $7dd6: $fe $01
    rst $08                                       ; $7dd8: $cf
    jr nc, jr_074_7d62                            ; $7dd9: $30 $87

    ld a, b                                       ; $7ddb: $78
    jp $9f3c                                      ; $7ddc: $c3 $3c $9f


    ld h, b                                       ; $7ddf: $60
    inc a                                         ; $7de0: $3c
    jp $9867                                      ; $7de1: $c3 $67 $98


    ldh a, [rIF]                                  ; $7de4: $f0 $0f
    ld a, a                                       ; $7de6: $7f
    add b                                         ; $7de7: $80
    jp $ff3c                                      ; $7de8: $c3 $3c $ff


    nop                                           ; $7deb: $00
    inc c                                         ; $7dec: $0c
    di                                            ; $7ded: $f3
    ld sp, hl                                     ; $7dee: $f9
    ld b, $fc                                     ; $7def: $06 $fc
    inc bc                                        ; $7df1: $03
    add hl, de                                    ; $7df2: $19
    and $00                                       ; $7df3: $e6 $00
    rst $38                                       ; $7df5: $ff
    rra                                           ; $7df6: $1f
    ldh [rP1], a                                  ; $7df7: $e0 $00
    rst $38                                       ; $7df9: $ff
    ld a, c                                       ; $7dfa: $79
    add [hl]                                      ; $7dfb: $86
    inc c                                         ; $7dfc: $0c
    di                                            ; $7dfd: $f3
    ld h, b                                       ; $7dfe: $60
    sbc a                                         ; $7dff: $9f

Jump_074_7e00:
    nop                                           ; $7e00: $00
    rst $38                                       ; $7e01: $ff
    sbc [hl]                                      ; $7e02: $9e
    ld h, c                                       ; $7e03: $61
    rrca                                          ; $7e04: $0f
    ldh a, [$e0]                                  ; $7e05: $f0 $e0
    rra                                           ; $7e07: $1f
    nop                                           ; $7e08: $00
    rst $38                                       ; $7e09: $ff
    add b                                         ; $7e0a: $80
    ld a, a                                       ; $7e0b: $7f
    call z, $0033                                 ; $7e0c: $cc $33 $00
    rst $38                                       ; $7e0f: $ff
    inc c                                         ; $7e10: $0c
    rst $38                                       ; $7e11: $ff
    ld h, c                                       ; $7e12: $61
    rst $38                                       ; $7e13: $ff
    nop                                           ; $7e14: $00
    rst $38                                       ; $7e15: $ff
    ld e, $ff                                     ; $7e16: $1e $ff
    nop                                           ; $7e18: $00
    rst $38                                       ; $7e19: $ff
    nop                                           ; $7e1a: $00
    rst $38                                       ; $7e1b: $ff
    db $fc                                        ; $7e1c: $fc
    rst $38                                       ; $7e1d: $ff
    nop                                           ; $7e1e: $00
    rst $38                                       ; $7e1f: $ff
    nop                                           ; $7e20: $00
    rst $38                                       ; $7e21: $ff
    and $ff                                       ; $7e22: $e6 $ff
    nop                                           ; $7e24: $00
    rst $38                                       ; $7e25: $ff
    ld a, b                                       ; $7e26: $78
    rst $38                                       ; $7e27: $ff
    rrca                                          ; $7e28: $0f
    rst $38                                       ; $7e29: $ff
    ld h, b                                       ; $7e2a: $60
    rst $38                                       ; $7e2b: $ff
    nop                                           ; $7e2c: $00
    rst $38                                       ; $7e2d: $ff
    ld a, b                                       ; $7e2e: $78
    rst $38                                       ; $7e2f: $ff
    rst $38                                       ; $7e30: $ff
    rst $38                                       ; $7e31: $ff
    ldh [rIE], a                                  ; $7e32: $e0 $ff
    inc sp                                        ; $7e34: $33
    rst $38                                       ; $7e35: $ff
    and $ff                                       ; $7e36: $e6 $ff
    rst $38                                       ; $7e38: $ff
    rst $38                                       ; $7e39: $ff
    ld h, [hl]                                    ; $7e3a: $66
    rst $38                                       ; $7e3b: $ff
    di                                            ; $7e3c: $f3
    rst $38                                       ; $7e3d: $ff
    sbc [hl]                                      ; $7e3e: $9e
    rst $38                                       ; $7e3f: $ff
    ret nz                                        ; $7e40: $c0

    rst $38                                       ; $7e41: $ff
    rra                                           ; $7e42: $1f
    rst $38                                       ; $7e43: $ff
    di                                            ; $7e44: $f3
    rst $38                                       ; $7e45: $ff
    rra                                           ; $7e46: $1f
    rst $38                                       ; $7e47: $ff
    rst $08                                       ; $7e48: $cf
    rst $38                                       ; $7e49: $ff
    ld a, [hl]                                    ; $7e4a: $7e
    rst $38                                       ; $7e4b: $ff
    ccf                                           ; $7e4c: $3f
    rst $38                                       ; $7e4d: $ff
    ld a, a                                       ; $7e4e: $7f
    rst $38                                       ; $7e4f: $ff
    ret nz                                        ; $7e50: $c0

    nop                                           ; $7e51: $00
    sbc b                                         ; $7e52: $98
    nop                                           ; $7e53: $00
    rst $08                                       ; $7e54: $cf
    nop                                           ; $7e55: $00
    add b                                         ; $7e56: $80
    nop                                           ; $7e57: $00
    inc a                                         ; $7e58: $3c
    nop                                           ; $7e59: $00
    nop                                           ; $7e5a: $00
    nop                                           ; $7e5b: $00
    di                                            ; $7e5c: $f3
    nop                                           ; $7e5d: $00
    ld b, $00                                     ; $7e5e: $06 $00
    ret nz                                        ; $7e60: $c0

    nop                                           ; $7e61: $00
    add hl, de                                    ; $7e62: $19
    nop                                           ; $7e63: $00
    nop                                           ; $7e64: $00
    nop                                           ; $7e65: $00
    ld bc, $3000                                  ; $7e66: $01 $00 $30
    nop                                           ; $7e69: $00
    ld a, b                                       ; $7e6a: $78
    nop                                           ; $7e6b: $00
    inc a                                         ; $7e6c: $3c
    nop                                           ; $7e6d: $00
    ld h, b                                       ; $7e6e: $60
    nop                                           ; $7e6f: $00
    ret nz                                        ; $7e70: $c0

    nop                                           ; $7e71: $00
    ld a, c                                       ; $7e72: $79
    nop                                           ; $7e73: $00
    ccf                                           ; $7e74: $3f
    nop                                           ; $7e75: $00
    ld hl, sp+$00                                 ; $7e76: $f8 $00
    rst $38                                       ; $7e78: $ff
    nop                                           ; $7e79: $00
    pop hl                                        ; $7e7a: $e1
    nop                                           ; $7e7b: $00
    ccf                                           ; $7e7c: $3f
    nop                                           ; $7e7d: $00
    rst $20                                       ; $7e7e: $e7
    nop                                           ; $7e7f: $00
    rst $38                                       ; $7e80: $ff
    nop                                           ; $7e81: $00
    sbc b                                         ; $7e82: $98
    nop                                           ; $7e83: $00
    db $fc                                        ; $7e84: $fc
    nop                                           ; $7e85: $00
    rlca                                          ; $7e86: $07
    nop                                           ; $7e87: $00
    rst $38                                       ; $7e88: $ff
    nop                                           ; $7e89: $00
    rst $38                                       ; $7e8a: $ff
    nop                                           ; $7e8b: $00
    rrca                                          ; $7e8c: $0f
    nop                                           ; $7e8d: $00
    rst $38                                       ; $7e8e: $ff

jr_074_7e8f:
    nop                                           ; $7e8f: $00
    db $fc                                        ; $7e90: $fc
    inc bc                                        ; $7e91: $03
    sbc c                                         ; $7e92: $99
    ld h, [hl]                                    ; $7e93: $66
    rst $08                                       ; $7e94: $cf
    jr nc, jr_074_7e8f                            ; $7e95: $30 $f8

    rlca                                          ; $7e97: $07
    ccf                                           ; $7e98: $3f
    ret nz                                        ; $7e99: $c0

    rst $38                                       ; $7e9a: $ff
    nop                                           ; $7e9b: $00
    ret nz                                        ; $7e9c: $c0

    ccf                                           ; $7e9d: $3f
    rst $38                                       ; $7e9e: $ff
    nop                                           ; $7e9f: $00
    rst $38                                       ; $7ea0: $ff
    nop                                           ; $7ea1: $00
    rst $20                                       ; $7ea2: $e7
    jr jr_074_7ee4                                ; $7ea3: $18 $3f

    ret nz                                        ; $7ea5: $c0

    ld h, c                                       ; $7ea6: $61

jr_074_7ea7:
    sbc [hl]                                      ; $7ea7: $9e
    db $fc                                        ; $7ea8: $fc
    inc bc                                        ; $7ea9: $03
    rst $20                                       ; $7eaa: $e7
    jr @+$01                                      ; $7eab: $18 $ff

    nop                                           ; $7ead: $00
    pop hl                                        ; $7eae: $e1
    ld e, $c0                                     ; $7eaf: $1e $c0
    ccf                                           ; $7eb1: $3f
    rlca                                          ; $7eb2: $07
    ld hl, sp+$33                                 ; $7eb3: $f8 $33
    call z, $f906                                 ; $7eb5: $cc $06 $f9
    inc bc                                        ; $7eb8: $03
    db $fc                                        ; $7eb9: $fc
    ld a, b                                       ; $7eba: $78
    add a                                         ; $7ebb: $87
    inc bc                                        ; $7ebc: $03
    db $fc                                        ; $7ebd: $fc
    jr jr_074_7ea7                                ; $7ebe: $18 $e7

    rrca                                          ; $7ec0: $0f
    ldh a, [$f8]                                  ; $7ec1: $f0 $f8
    rlca                                          ; $7ec3: $07
    inc bc                                        ; $7ec4: $03
    db $fc                                        ; $7ec5: $fc
    ld a, b                                       ; $7ec6: $78
    add a                                         ; $7ec7: $87
    nop                                           ; $7ec8: $00
    rst $38                                       ; $7ec9: $ff
    nop                                           ; $7eca: $00
    rst $38                                       ; $7ecb: $ff
    nop                                           ; $7ecc: $00
    rst $38                                       ; $7ecd: $ff
    nop                                           ; $7ece: $00
    rst $38                                       ; $7ecf: $ff
    inc bc                                        ; $7ed0: $03
    rst $38                                       ; $7ed1: $ff
    jr @+$01                                      ; $7ed2: $18 $ff

    inc bc                                        ; $7ed4: $03
    rst $38                                       ; $7ed5: $ff
    nop                                           ; $7ed6: $00
    rst $38                                       ; $7ed7: $ff
    inc a                                         ; $7ed8: $3c
    rst $38                                       ; $7ed9: $ff
    nop                                           ; $7eda: $00
    rst $38                                       ; $7edb: $ff
    ccf                                           ; $7edc: $3f
    rst $38                                       ; $7edd: $ff
    nop                                           ; $7ede: $00
    rst $38                                       ; $7edf: $ff
    inc c                                         ; $7ee0: $0c
    rst $38                                       ; $7ee1: $ff
    ld h, b                                       ; $7ee2: $60
    rst $38                                       ; $7ee3: $ff

jr_074_7ee4:
    db $fc                                        ; $7ee4: $fc
    rst $38                                       ; $7ee5: $ff
    nop                                           ; $7ee6: $00
    rst $38                                       ; $7ee7: $ff
    inc sp                                        ; $7ee8: $33
    rst $38                                       ; $7ee9: $ff
    ld h, [hl]                                    ; $7eea: $66
    rst $38                                       ; $7eeb: $ff
    db $fc                                        ; $7eec: $fc
    rst $38                                       ; $7eed: $ff
    nop                                           ; $7eee: $00
    rst $38                                       ; $7eef: $ff
    ld h, b                                       ; $7ef0: $60
    rst $38                                       ; $7ef1: $ff
    rst $08                                       ; $7ef2: $cf
    rst $38                                       ; $7ef3: $ff
    ld hl, sp-$01                                 ; $7ef4: $f8 $ff
    rst $38                                       ; $7ef6: $ff
    rst $38                                       ; $7ef7: $ff
    add b                                         ; $7ef8: $80
    rst $38                                       ; $7ef9: $ff
    ccf                                           ; $7efa: $3f
    rst $38                                       ; $7efb: $ff
    ldh [rIE], a                                  ; $7efc: $e0 $ff
    call z, $1eff                                 ; $7efe: $cc $ff $1e
    rst $38                                       ; $7f01: $ff
    ccf                                           ; $7f02: $3f
    rst $38                                       ; $7f03: $ff
    add hl, de                                    ; $7f04: $19
    rst $38                                       ; $7f05: $ff
    jp Jump_074_7fff                              ; $7f06: $c3 $ff $7f


    rst $38                                       ; $7f09: $ff
    rst $38                                       ; $7f0a: $ff
    rst $38                                       ; $7f0b: $ff
    ld h, a                                       ; $7f0c: $67
    rst $38                                       ; $7f0d: $ff
    rst $38                                       ; $7f0e: $ff
    rst $38                                       ; $7f0f: $ff
    jp $9800                                      ; $7f10: $c3 $00 $98


    nop                                           ; $7f13: $00
    nop                                           ; $7f14: $00
    nop                                           ; $7f15: $00
    ld a, b                                       ; $7f16: $78
    nop                                           ; $7f17: $00
    rrca                                          ; $7f18: $0f
    nop                                           ; $7f19: $00
    ld h, b                                       ; $7f1a: $60
    nop                                           ; $7f1b: $00
    nop                                           ; $7f1c: $00
    nop                                           ; $7f1d: $00
    ld a, b                                       ; $7f1e: $78
    nop                                           ; $7f1f: $00
    nop                                           ; $7f20: $00
    nop                                           ; $7f21: $00
    ld bc, $c000                                  ; $7f22: $01 $00 $c0
    nop                                           ; $7f25: $00
    ld e, $00                                     ; $7f26: $1e $00
    nop                                           ; $7f28: $00
    nop                                           ; $7f29: $00
    nop                                           ; $7f2a: $00
    nop                                           ; $7f2b: $00
    db $fc                                        ; $7f2c: $fc
    nop                                           ; $7f2d: $00
    nop                                           ; $7f2e: $00
    nop                                           ; $7f2f: $00
    ret nz                                        ; $7f30: $c0

    nop                                           ; $7f31: $00
    rra                                           ; $7f32: $1f
    nop                                           ; $7f33: $00
    di                                            ; $7f34: $f3
    nop                                           ; $7f35: $00
    rra                                           ; $7f36: $1f
    nop                                           ; $7f37: $00
    jp $ff00                                      ; $7f38: $c3 $00 $ff


    nop                                           ; $7f3b: $00
    rst $38                                       ; $7f3c: $ff
    nop                                           ; $7f3d: $00
    rst $38                                       ; $7f3e: $ff
    nop                                           ; $7f3f: $00
    rst $38                                       ; $7f40: $ff
    nop                                           ; $7f41: $00
    ldh [rP1], a                                  ; $7f42: $e0 $00
    inc sp                                        ; $7f44: $33
    nop                                           ; $7f45: $00
    and $00                                       ; $7f46: $e6 $00
    rst $38                                       ; $7f48: $ff
    nop                                           ; $7f49: $00
    sbc a                                         ; $7f4a: $9f
    nop                                           ; $7f4b: $00
    rst $38                                       ; $7f4c: $ff
    nop                                           ; $7f4d: $00
    rst $38                                       ; $7f4e: $ff
    nop                                           ; $7f4f: $00
    ld c, $0e                                     ; $7f50: $0e $0e
    rla                                           ; $7f52: $17
    add hl, de                                    ; $7f53: $19
    add hl, hl                                    ; $7f54: $29
    scf                                           ; $7f55: $37
    ld d, e                                       ; $7f56: $53
    ld l, a                                       ; $7f57: $6f
    ld b, [hl]                                    ; $7f58: $46
    ld a, [hl]                                    ; $7f59: $7e
    ld l, h                                       ; $7f5a: $6c
    ld e, h                                       ; $7f5b: $5c
    ret nc                                        ; $7f5c: $d0

    ldh a, [$60]                                  ; $7f5d: $f0 $60
    ldh [rTAC], a                                 ; $7f5f: $e0 $07
    rlca                                          ; $7f61: $07
    add hl, bc                                    ; $7f62: $09
    rrca                                          ; $7f63: $0f
    dec d                                         ; $7f64: $15
    dec de                                        ; $7f65: $1b
    add hl, hl                                    ; $7f66: $29
    scf                                           ; $7f67: $37
    add hl, hl                                    ; $7f68: $29
    scf                                           ; $7f69: $37
    or [hl]                                       ; $7f6a: $b6
    xor [hl]                                      ; $7f6b: $ae
    ld l, h                                       ; $7f6c: $6c
    db $fc                                        ; $7f6d: $fc
    sbc b                                         ; $7f6e: $98
    ld a, b                                       ; $7f6f: $78
    ld c, $0f                                     ; $7f70: $0e $0f
    ld de, $251f                                  ; $7f72: $11 $1f $25
    dec sp                                        ; $7f75: $3b
    ld c, c                                       ; $7f76: $49
    ld [hl], a                                    ; $7f77: $77
    ld d, e                                       ; $7f78: $53
    ld l, a                                       ; $7f79: $6f
    ld h, [hl]                                    ; $7f7a: $66
    ld e, [hl]                                    ; $7f7b: $5e
    ld e, h                                       ; $7f7c: $5c
    ld a, h                                       ; $7f7d: $7c
    ld [hl], b                                    ; $7f7e: $70
    ld [hl], b                                    ; $7f7f: $70

Call_074_7f80:
Jump_074_7f80:
    ld hl, $72e1                                  ; $7f80: $21 $e1 $72
    di                                            ; $7f83: $f3
    xor l                                         ; $7f84: $ad
    sbc $96                                       ; $7f85: $de $96
    db $ed                                        ; $7f87: $ed
    jp z, Jump_000_22f7                           ; $7f88: $ca $f7 $22

    ccf                                           ; $7f8b: $3f
    rra                                           ; $7f8c: $1f
    rra                                           ; $7f8d: $1f
    dec d                                         ; $7f8e: $15
    dec de                                        ; $7f8f: $1b
    ld a, $fe                                     ; $7f90: $3e $fe
    ld [$f6f6], a                                 ; $7f92: $ea $f6 $f6
    xor $d4                                       ; $7f95: $ee $d4
    db $ec                                        ; $7f97: $ec
    ld d, h                                       ; $7f98: $54
    ld l, h                                       ; $7f99: $6c
    inc l                                         ; $7f9a: $2c
    inc a                                         ; $7f9b: $3c
    ld sp, hl                                     ; $7f9c: $f9
    ld sp, hl                                     ; $7f9d: $f9
    and [hl]                                      ; $7f9e: $a6
    ld e, a                                       ; $7f9f: $5f
    ld bc, $0e01                                  ; $7fa0: $01 $01 $0e
    ld c, $11                                     ; $7fa3: $0e $11
    rra                                           ; $7fa5: $1f
    ld h, h                                       ; $7fa6: $64
    ld a, e                                       ; $7fa7: $7b
    xor c                                         ; $7fa8: $a9
    rst $30                                       ; $7fa9: $f7
    or [hl]                                       ; $7faa: $b6
    rst $28                                       ; $7fab: $ef
    ld a, l                                       ; $7fac: $7d
    rst $38                                       ; $7fad: $ff
    rst $28                                       ; $7fae: $ef
    rra                                           ; $7faf: $1f
    inc a                                         ; $7fb0: $3c
    inc a                                         ; $7fb1: $3c
    ld a, [hl+]                                   ; $7fb2: $2a
    ld [hl], $25                                  ; $7fb3: $36 $25
    dec sp                                        ; $7fb5: $3b
    dec [hl]                                      ; $7fb6: $35
    dec sp                                        ; $7fb7: $3b
    dec de                                        ; $7fb8: $1b
    dec e                                         ; $7fb9: $1d
    dec c                                         ; $7fba: $0d
    rrca                                          ; $7fbb: $0f
    ld b, $07                                     ; $7fbc: $06 $07
    dec de                                        ; $7fbe: $1b
    inc e                                         ; $7fbf: $1c
    ld e, $1e                                     ; $7fc0: $1e $1e
    ld [hl+], a                                   ; $7fc2: $22
    ld a, $ca                                     ; $7fc3: $3e $ca
    or $d6                                        ; $7fc5: $f6 $d6
    xor $54                                       ; $7fc7: $ee $54
    db $ec                                        ; $7fc9: $ec
    xor h                                         ; $7fca: $ac
    ld a, h                                       ; $7fcb: $7c
    ret nc                                        ; $7fcc: $d0

    jr nc, @+$6a                                  ; $7fcd: $30 $68

    sbc b                                         ; $7fcf: $98
    add hl, bc                                    ; $7fd0: $09
    nop                                           ; $7fd1: $00
    nop                                           ; $7fd2: $00
    dec d                                         ; $7fd3: $15
    nop                                           ; $7fd4: $00
    ld [bc], a                                    ; $7fd5: $02
    ld hl, $0400                                  ; $7fd6: $21 $00 $04
    rlca                                          ; $7fd9: $07
    nop                                           ; $7fda: $00
    ld d, $00                                     ; $7fdb: $16 $00
    ld c, l                                       ; $7fdd: $4d
    nop                                           ; $7fde: $00
    ld [bc], a                                    ; $7fdf: $02
    nop                                           ; $7fe0: $00
    jr nc, jr_074_7fe3                            ; $7fe1: $30 $00

jr_074_7fe3:
    ld a, c                                       ; $7fe3: $79
    nop                                           ; $7fe4: $00
    ld [$4c01], sp                                ; $7fe5: $08 $01 $4c
    nop                                           ; $7fe8: $00
    ccf                                           ; $7fe9: $3f
    nop                                           ; $7fea: $00
    inc c                                         ; $7feb: $0c
    nop                                           ; $7fec: $00
    ld c, h                                       ; $7fed: $4c
    nop                                           ; $7fee: $00
    ld c, [hl]                                    ; $7fef: $4e
    nop                                           ; $7ff0: $00
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff
    stop                                          ; $7ff7: $10 $00
    inc bc                                        ; $7ff9: $03
    nop                                           ; $7ffa: $00
    jr nz, jr_074_7ffd                            ; $7ffb: $20 $00

jr_074_7ffd:
    rst $38                                       ; $7ffd: $ff
    ld [bc], a                                    ; $7ffe: $02

Call_074_7fff:
Jump_074_7fff:
    ld e, b                                       ; $7fff: $58
