.include "macros.inc"

.section .text, "ax"

.global CreateELSM__28CParticleElectricDataFactoryFP20CElectricDescriptionR12CInputStreamP11CSimplePool
CreateELSM__28CParticleElectricDataFactoryFP20CElectricDescriptionR12CInputStreamP11CSimplePool:
/* 8035DEEC 0035AE4C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8035DEF0 0035AE50  7C 08 02 A6 */	mflr r0
/* 8035DEF4 0035AE54  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8035DEF8 0035AE58  BF 41 00 C8 */	stmw r26, 0xc8(r1)
/* 8035DEFC 0035AE5C  7C 7B 1B 78 */	mr r27, r3
/* 8035DF00 0035AE60  7C 9C 23 78 */	mr r28, r4
/* 8035DF04 0035AE64  7C BD 2B 78 */	mr r29, r5
/* 8035DF08 0035AE68  38 61 00 28 */	addi r3, r1, 0x28
/* 8035DF0C 0035AE6C  3B C0 00 00 */	li r30, 0
/* 8035DF10 0035AE70  38 80 00 63 */	li r4, 0x63
/* 8035DF14 0035AE74  4B FB 46 D9 */	bl __ct__9CRandom16FUi
/* 8035DF18 0035AE78  3C 60 4C 43 */	lis r3, 0x4C434C33@ha
/* 8035DF1C 0035AE7C  3B E3 4C 33 */	addi r31, r3, 0x4C434C33@l
/* 8035DF20 0035AE80  48 00 06 28 */	b lbl_8035E548
lbl_8035DF24:
/* 8035DF24 0035AE84  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8035DF28 0035AE88  38 81 00 28 */	addi r4, r1, 0x28
/* 8035DF2C 0035AE8C  4B FB 47 55 */	bl __ct__13CGlobalRandomFR9CRandom16
/* 8035DF30 0035AE90  7F 83 E3 78 */	mr r3, r28
/* 8035DF34 0035AE94  4B FC A5 29 */	bl GetClassID__20CParticleDataFactoryFR12CInputStream
/* 8035DF38 0035AE98  7C 03 F8 00 */	cmpw r3, r31
/* 8035DF3C 0035AE9C  41 82 05 C4 */	beq lbl_8035E500
/* 8035DF40 0035AEA0  40 80 00 B8 */	bge lbl_8035DFF8
/* 8035DF44 0035AEA4  3C 80 46 45 */	lis r4, 0x46454D54@ha
/* 8035DF48 0035AEA8  38 04 4D 54 */	addi r0, r4, 0x46454D54@l
/* 8035DF4C 0035AEAC  7C 03 00 00 */	cmpw r3, r0
/* 8035DF50 0035AEB0  41 82 01 D4 */	beq lbl_8035E124
/* 8035DF54 0035AEB4  40 80 00 50 */	bge lbl_8035DFA4
/* 8035DF58 0035AEB8  3C 80 43 4F */	lis r4, 0x434F4C52@ha
/* 8035DF5C 0035AEBC  38 04 4C 52 */	addi r0, r4, 0x434F4C52@l
/* 8035DF60 0035AEC0  7C 03 00 00 */	cmpw r3, r0
/* 8035DF64 0035AEC4  41 82 01 A0 */	beq lbl_8035E104
/* 8035DF68 0035AEC8  40 80 00 28 */	bge lbl_8035DF90
/* 8035DF6C 0035AECC  3C 80 41 4D */	lis r4, 0x414D504C@ha
/* 8035DF70 0035AED0  38 04 50 4C */	addi r0, r4, 0x414D504C@l
/* 8035DF74 0035AED4  7C 03 00 00 */	cmpw r3, r0
/* 8035DF78 0035AED8  41 82 01 BC */	beq lbl_8035E134
/* 8035DF7C 0035AEDC  40 80 05 AC */	bge lbl_8035E528
/* 8035DF80 0035AEE0  38 04 50 44 */	addi r0, r4, 0x5044
/* 8035DF84 0035AEE4  7C 03 00 00 */	cmpw r3, r0
/* 8035DF88 0035AEE8  41 82 01 BC */	beq lbl_8035E144
/* 8035DF8C 0035AEEC  48 00 05 9C */	b lbl_8035E528
lbl_8035DF90:
/* 8035DF90 0035AEF0  3C 80 45 50 */	lis r4, 0x4550534D@ha
/* 8035DF94 0035AEF4  38 04 53 4D */	addi r0, r4, 0x4550534D@l
/* 8035DF98 0035AEF8  7C 03 00 00 */	cmpw r3, r0
/* 8035DF9C 0035AEFC  41 82 03 CC */	beq lbl_8035E368
/* 8035DFA0 0035AF00  48 00 05 88 */	b lbl_8035E528
lbl_8035DFA4:
/* 8035DFA4 0035AF04  3C 80 49 45 */	lis r4, 0x49454D54@ha
/* 8035DFA8 0035AF08  38 04 4D 54 */	addi r0, r4, 0x49454D54@l
/* 8035DFAC 0035AF0C  7C 03 00 00 */	cmpw r3, r0
/* 8035DFB0 0035AF10  41 82 01 64 */	beq lbl_8035E114
/* 8035DFB4 0035AF14  40 80 00 2C */	bge lbl_8035DFE0
/* 8035DFB8 0035AF18  3C 80 47 52 */	lis r4, 0x47524154@ha
/* 8035DFBC 0035AF1C  38 04 41 54 */	addi r0, r4, 0x47524154@l
/* 8035DFC0 0035AF20  7C 03 00 00 */	cmpw r3, r0
/* 8035DFC4 0035AF24  41 82 01 10 */	beq lbl_8035E0D4
/* 8035DFC8 0035AF28  40 80 05 60 */	bge lbl_8035E528
/* 8035DFCC 0035AF2C  3C 80 47 50 */	lis r4, 0x4750534D@ha
/* 8035DFD0 0035AF30  38 04 53 4D */	addi r0, r4, 0x4750534D@l
/* 8035DFD4 0035AF34  7C 03 00 00 */	cmpw r3, r0
/* 8035DFD8 0035AF38  41 82 02 48 */	beq lbl_8035E220
/* 8035DFDC 0035AF3C  48 00 05 4C */	b lbl_8035E528
lbl_8035DFE0:
/* 8035DFE0 0035AF40  3C 80 4C 43 */	lis r4, 0x4C434C31@ha
/* 8035DFE4 0035AF44  38 04 4C 31 */	addi r0, r4, 0x4C434C31@l
/* 8035DFE8 0035AF48  7C 03 00 00 */	cmpw r3, r0
/* 8035DFEC 0035AF4C  41 82 04 F4 */	beq lbl_8035E4E0
/* 8035DFF0 0035AF50  40 80 05 00 */	bge lbl_8035E4F0
/* 8035DFF4 0035AF54  48 00 05 34 */	b lbl_8035E528
lbl_8035DFF8:
/* 8035DFF8 0035AF58  3C 80 53 4C */	lis r4, 0x534C4946@ha
/* 8035DFFC 0035AF5C  38 04 49 46 */	addi r0, r4, 0x534C4946@l
/* 8035E000 0035AF60  7C 03 00 00 */	cmpw r3, r0
/* 8035E004 0035AF64  41 82 00 C0 */	beq lbl_8035E0C4
/* 8035E008 0035AF68  40 80 00 60 */	bge lbl_8035E068
/* 8035E00C 0035AF6C  3C A0 4C 57 */	lis r5, 0x4C574432@ha
/* 8035E010 0035AF70  38 05 44 32 */	addi r0, r5, 0x4C574432@l
/* 8035E014 0035AF74  7C 03 00 00 */	cmpw r3, r0
/* 8035E018 0035AF78  41 82 04 A8 */	beq lbl_8035E4C0
/* 8035E01C 0035AF7C  40 80 00 28 */	bge lbl_8035E044
/* 8035E020 0035AF80  3C 80 4C 49 */	lis r4, 0x4C494645@ha
/* 8035E024 0035AF84  38 04 46 45 */	addi r0, r4, 0x4C494645@l
/* 8035E028 0035AF88  7C 03 00 00 */	cmpw r3, r0
/* 8035E02C 0035AF8C  41 82 00 88 */	beq lbl_8035E0B4
/* 8035E030 0035AF90  41 80 04 F8 */	blt lbl_8035E528
/* 8035E034 0035AF94  38 05 44 31 */	addi r0, r5, 0x4431
/* 8035E038 0035AF98  7C 03 00 00 */	cmpw r3, r0
/* 8035E03C 0035AF9C  40 80 04 74 */	bge lbl_8035E4B0
/* 8035E040 0035AFA0  48 00 04 E8 */	b lbl_8035E528
lbl_8035E044:
/* 8035E044 0035AFA4  3C 80 53 43 */	lis r4, 0x53434E54@ha
/* 8035E048 0035AFA8  38 04 4E 54 */	addi r0, r4, 0x53434E54@l
/* 8035E04C 0035AFAC  7C 03 00 00 */	cmpw r3, r0
/* 8035E050 0035AFB0  41 82 00 94 */	beq lbl_8035E0E4
/* 8035E054 0035AFB4  40 80 04 D4 */	bge lbl_8035E528
/* 8035E058 0035AFB8  38 05 44 34 */	addi r0, r5, 0x4434
/* 8035E05C 0035AFBC  7C 03 00 00 */	cmpw r3, r0
/* 8035E060 0035AFC0  40 80 04 C8 */	bge lbl_8035E528
/* 8035E064 0035AFC4  48 00 04 6C */	b lbl_8035E4D0
lbl_8035E068:
/* 8035E068 0035AFC8  3C 80 5A 45 */	lis r4, 0x5A455259@ha
/* 8035E06C 0035AFCC  38 04 52 59 */	addi r0, r4, 0x5A455259@l
/* 8035E070 0035AFD0  7C 03 00 00 */	cmpw r3, r0
/* 8035E074 0035AFD4  41 82 04 9C */	beq lbl_8035E510
/* 8035E078 0035AFD8  40 80 00 28 */	bge lbl_8035E0A0
/* 8035E07C 0035AFDC  3C 80 53 53 */	lis r4, 0x53535748@ha
/* 8035E080 0035AFE0  38 04 57 48 */	addi r0, r4, 0x53535748@l
/* 8035E084 0035AFE4  7C 03 00 00 */	cmpw r3, r0
/* 8035E088 0035AFE8  41 82 00 CC */	beq lbl_8035E154
/* 8035E08C 0035AFEC  40 80 04 9C */	bge lbl_8035E528
/* 8035E090 0035AFF0  38 04 45 47 */	addi r0, r4, 0x4547
/* 8035E094 0035AFF4  7C 03 00 00 */	cmpw r3, r0
/* 8035E098 0035AFF8  41 82 00 5C */	beq lbl_8035E0F4
/* 8035E09C 0035AFFC  48 00 04 8C */	b lbl_8035E528
lbl_8035E0A0:
/* 8035E0A0 0035B000  3C 80 5F 45 */	lis r4, 0x5F454E44@ha
/* 8035E0A4 0035B004  38 04 4E 44 */	addi r0, r4, 0x5F454E44@l
/* 8035E0A8 0035B008  7C 03 00 00 */	cmpw r3, r0
/* 8035E0AC 0035B00C  41 82 04 74 */	beq lbl_8035E520
/* 8035E0B0 0035B010  48 00 04 78 */	b lbl_8035E528
lbl_8035E0B4:
/* 8035E0B4 0035B014  7F 83 E3 78 */	mr r3, r28
/* 8035E0B8 0035B018  4B FC 9A ED */	bl GetIntElement__20CParticleDataFactoryFR12CInputStream
/* 8035E0BC 0035B01C  90 7B 00 00 */	stw r3, 0(r27)
/* 8035E0C0 0035B020  48 00 04 7C */	b lbl_8035E53C
lbl_8035E0C4:
/* 8035E0C4 0035B024  7F 83 E3 78 */	mr r3, r28
/* 8035E0C8 0035B028  4B FC 9A DD */	bl GetIntElement__20CParticleDataFactoryFR12CInputStream
/* 8035E0CC 0035B02C  90 7B 00 04 */	stw r3, 4(r27)
/* 8035E0D0 0035B030  48 00 04 6C */	b lbl_8035E53C
lbl_8035E0D4:
/* 8035E0D4 0035B034  7F 83 E3 78 */	mr r3, r28
/* 8035E0D8 0035B038  4B FC 8B B9 */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8035E0DC 0035B03C  90 7B 00 08 */	stw r3, 8(r27)
/* 8035E0E0 0035B040  48 00 04 5C */	b lbl_8035E53C
lbl_8035E0E4:
/* 8035E0E4 0035B044  7F 83 E3 78 */	mr r3, r28
/* 8035E0E8 0035B048  4B FC 9A BD */	bl GetIntElement__20CParticleDataFactoryFR12CInputStream
/* 8035E0EC 0035B04C  90 7B 00 0C */	stw r3, 0xc(r27)
/* 8035E0F0 0035B050  48 00 04 4C */	b lbl_8035E53C
lbl_8035E0F4:
/* 8035E0F4 0035B054  7F 83 E3 78 */	mr r3, r28
/* 8035E0F8 0035B058  4B FC 9A AD */	bl GetIntElement__20CParticleDataFactoryFR12CInputStream
/* 8035E0FC 0035B05C  90 7B 00 10 */	stw r3, 0x10(r27)
/* 8035E100 0035B060  48 00 04 3C */	b lbl_8035E53C
lbl_8035E104:
/* 8035E104 0035B064  7F 83 E3 78 */	mr r3, r28
/* 8035E108 0035B068  4B FC 71 55 */	bl GetColorElement__20CParticleDataFactoryFR12CInputStream
/* 8035E10C 0035B06C  90 7B 00 14 */	stw r3, 0x14(r27)
/* 8035E110 0035B070  48 00 04 2C */	b lbl_8035E53C
lbl_8035E114:
/* 8035E114 0035B074  7F 83 E3 78 */	mr r3, r28
/* 8035E118 0035B078  4B FC 7E 99 */	bl GetEmitterElement__20CParticleDataFactoryFR12CInputStream
/* 8035E11C 0035B07C  90 7B 00 18 */	stw r3, 0x18(r27)
/* 8035E120 0035B080  48 00 04 1C */	b lbl_8035E53C
lbl_8035E124:
/* 8035E124 0035B084  7F 83 E3 78 */	mr r3, r28
/* 8035E128 0035B088  4B FC 7E 89 */	bl GetEmitterElement__20CParticleDataFactoryFR12CInputStream
/* 8035E12C 0035B08C  90 7B 00 1C */	stw r3, 0x1c(r27)
/* 8035E130 0035B090  48 00 04 0C */	b lbl_8035E53C
lbl_8035E134:
/* 8035E134 0035B094  7F 83 E3 78 */	mr r3, r28
/* 8035E138 0035B098  4B FC 8B 59 */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8035E13C 0035B09C  90 7B 00 20 */	stw r3, 0x20(r27)
/* 8035E140 0035B0A0  48 00 03 FC */	b lbl_8035E53C
lbl_8035E144:
/* 8035E144 0035B0A4  7F 83 E3 78 */	mr r3, r28
/* 8035E148 0035B0A8  4B FC 8B 49 */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8035E14C 0035B0AC  90 7B 00 24 */	stw r3, 0x24(r27)
/* 8035E150 0035B0B0  48 00 03 EC */	b lbl_8035E53C
lbl_8035E154:
/* 8035E154 0035B0B4  7F 83 E3 78 */	mr r3, r28
/* 8035E158 0035B0B8  4B FC A3 05 */	bl GetClassID__20CParticleDataFactoryFR12CInputStream
/* 8035E15C 0035B0BC  3C 03 B1 B1 */	addis r0, r3, 0xb1b1
/* 8035E160 0035B0C0  28 00 4E 45 */	cmplwi r0, 0x4e45
/* 8035E164 0035B0C4  41 82 03 D8 */	beq lbl_8035E53C
/* 8035E168 0035B0C8  7F 83 E3 78 */	mr r3, r28
/* 8035E16C 0035B0CC  4B FE 0B 19 */	bl ReadLong__12CInputStreamFv
/* 8035E170 0035B0D0  28 03 00 00 */	cmplwi r3, 0
/* 8035E174 0035B0D4  41 82 03 C8 */	beq lbl_8035E53C
/* 8035E178 0035B0D8  3C 80 53 57 */	lis r4, 0x53574843@ha
/* 8035E17C 0035B0DC  90 61 00 38 */	stw r3, 0x38(r1)
/* 8035E180 0035B0E0  38 04 48 43 */	addi r0, r4, 0x53574843@l
/* 8035E184 0035B0E4  7F A4 EB 78 */	mr r4, r29
/* 8035E188 0035B0E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8035E18C 0035B0EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8035E190 0035B0F0  38 A1 00 34 */	addi r5, r1, 0x34
/* 8035E194 0035B0F4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8035E198 0035B0F8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8035E19C 0035B0FC  7D 89 03 A6 */	mtctr r12
/* 8035E1A0 0035B100  4E 80 04 21 */	bctrl
/* 8035E1A4 0035B104  38 61 00 6C */	addi r3, r1, 0x6c
/* 8035E1A8 0035B108  38 81 00 2C */	addi r4, r1, 0x2c
/* 8035E1AC 0035B10C  4B FE 2C FD */	bl __ct__6CTokenFRC6CToken
/* 8035E1B0 0035B110  38 00 00 00 */	li r0, 0
/* 8035E1B4 0035B114  90 01 00 74 */	stw r0, 0x74(r1)
/* 8035E1B8 0035B118  88 1B 00 4C */	lbz r0, 0x4c(r27)
/* 8035E1BC 0035B11C  28 00 00 00 */	cmplwi r0, 0
/* 8035E1C0 0035B120  40 82 00 2C */	bne lbl_8035E1EC
/* 8035E1C4 0035B124  37 5B 00 40 */	addic. r26, r27, 0x40
/* 8035E1C8 0035B128  41 82 00 18 */	beq lbl_8035E1E0
/* 8035E1CC 0035B12C  7F 43 D3 78 */	mr r3, r26
/* 8035E1D0 0035B130  38 81 00 6C */	addi r4, r1, 0x6c
/* 8035E1D4 0035B134  4B FE 2C D5 */	bl __ct__6CTokenFRC6CToken
/* 8035E1D8 0035B138  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8035E1DC 0035B13C  90 1A 00 08 */	stw r0, 8(r26)
lbl_8035E1E0:
/* 8035E1E0 0035B140  38 00 00 01 */	li r0, 1
/* 8035E1E4 0035B144  98 1B 00 4C */	stb r0, 0x4c(r27)
/* 8035E1E8 0035B148  48 00 00 1C */	b lbl_8035E204
lbl_8035E1EC:
/* 8035E1EC 0035B14C  3B 5B 00 40 */	addi r26, r27, 0x40
/* 8035E1F0 0035B150  38 81 00 6C */	addi r4, r1, 0x6c
/* 8035E1F4 0035B154  7F 43 D3 78 */	mr r3, r26
/* 8035E1F8 0035B158  4B FE 2A CD */	bl __as__6CTokenFRC6CToken
/* 8035E1FC 0035B15C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8035E200 0035B160  90 1A 00 08 */	stw r0, 8(r26)
lbl_8035E204:
/* 8035E204 0035B164  38 61 00 6C */	addi r3, r1, 0x6c
/* 8035E208 0035B168  38 80 00 00 */	li r4, 0
/* 8035E20C 0035B16C  4B FE 2C 35 */	bl __dt__6CTokenFv
/* 8035E210 0035B170  38 61 00 2C */	addi r3, r1, 0x2c
/* 8035E214 0035B174  38 80 FF FF */	li r4, -1
/* 8035E218 0035B178  4B FE 2C 29 */	bl __dt__6CTokenFv
/* 8035E21C 0035B17C  48 00 03 20 */	b lbl_8035E53C
lbl_8035E220:
/* 8035E220 0035B180  38 00 00 00 */	li r0, 0
/* 8035E224 0035B184  7F 84 E3 78 */	mr r4, r28
/* 8035E228 0035B188  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8035E22C 0035B18C  7F A5 EB 78 */	mr r5, r29
/* 8035E230 0035B190  38 61 00 60 */	addi r3, r1, 0x60
/* 8035E234 0035B194  38 C1 00 A0 */	addi r6, r1, 0xa0
/* 8035E238 0035B198  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8035E23C 0035B19C  90 01 00 AC */	stw r0, 0xac(r1)
/* 8035E240 0035B1A0  4B FC 6B 51 */	bl "GetChildGeneratorDesc__20CParticleDataFactoryFR12CInputStreamP11CSimplePoolRCQ24rstl37vector<Ui,Q24rstl17rmemory_allocator>"
/* 8035E244 0035B1A4  88 01 00 68 */	lbz r0, 0x68(r1)
/* 8035E248 0035B1A8  28 00 00 00 */	cmplwi r0, 0
/* 8035E24C 0035B1AC  98 01 00 9C */	stb r0, 0x9c(r1)
/* 8035E250 0035B1B0  41 82 00 14 */	beq lbl_8035E264
/* 8035E254 0035B1B4  34 61 00 94 */	addic. r3, r1, 0x94
/* 8035E258 0035B1B8  38 81 00 60 */	addi r4, r1, 0x60
/* 8035E25C 0035B1BC  41 82 00 08 */	beq lbl_8035E264
/* 8035E260 0035B1C0  4B FE 2C 49 */	bl __ct__6CTokenFRC6CToken
lbl_8035E264:
/* 8035E264 0035B1C4  88 01 00 68 */	lbz r0, 0x68(r1)
/* 8035E268 0035B1C8  28 00 00 00 */	cmplwi r0, 0
/* 8035E26C 0035B1CC  41 82 00 14 */	beq lbl_8035E280
/* 8035E270 0035B1D0  34 61 00 60 */	addic. r3, r1, 0x60
/* 8035E274 0035B1D4  41 82 00 0C */	beq lbl_8035E280
/* 8035E278 0035B1D8  38 80 00 00 */	li r4, 0
/* 8035E27C 0035B1DC  4B FE 2B C5 */	bl __dt__6CTokenFv
lbl_8035E280:
/* 8035E280 0035B1E0  88 01 00 9C */	lbz r0, 0x9c(r1)
/* 8035E284 0035B1E4  38 60 00 00 */	li r3, 0
/* 8035E288 0035B1E8  98 61 00 68 */	stb r3, 0x68(r1)
/* 8035E28C 0035B1EC  28 00 00 00 */	cmplwi r0, 0
/* 8035E290 0035B1F0  41 82 00 70 */	beq lbl_8035E300
/* 8035E294 0035B1F4  38 61 00 54 */	addi r3, r1, 0x54
/* 8035E298 0035B1F8  38 81 00 94 */	addi r4, r1, 0x94
/* 8035E29C 0035B1FC  4B FE 2C 0D */	bl __ct__6CTokenFRC6CToken
/* 8035E2A0 0035B200  38 00 00 00 */	li r0, 0
/* 8035E2A4 0035B204  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8035E2A8 0035B208  88 1B 00 5C */	lbz r0, 0x5c(r27)
/* 8035E2AC 0035B20C  28 00 00 00 */	cmplwi r0, 0
/* 8035E2B0 0035B210  40 82 00 2C */	bne lbl_8035E2DC
/* 8035E2B4 0035B214  37 5B 00 50 */	addic. r26, r27, 0x50
/* 8035E2B8 0035B218  41 82 00 18 */	beq lbl_8035E2D0
/* 8035E2BC 0035B21C  7F 43 D3 78 */	mr r3, r26
/* 8035E2C0 0035B220  38 81 00 54 */	addi r4, r1, 0x54
/* 8035E2C4 0035B224  4B FE 2B E5 */	bl __ct__6CTokenFRC6CToken
/* 8035E2C8 0035B228  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8035E2CC 0035B22C  90 1A 00 08 */	stw r0, 8(r26)
lbl_8035E2D0:
/* 8035E2D0 0035B230  38 00 00 01 */	li r0, 1
/* 8035E2D4 0035B234  98 1B 00 5C */	stb r0, 0x5c(r27)
/* 8035E2D8 0035B238  48 00 00 1C */	b lbl_8035E2F4
lbl_8035E2DC:
/* 8035E2DC 0035B23C  3B 5B 00 50 */	addi r26, r27, 0x50
/* 8035E2E0 0035B240  38 81 00 54 */	addi r4, r1, 0x54
/* 8035E2E4 0035B244  7F 43 D3 78 */	mr r3, r26
/* 8035E2E8 0035B248  4B FE 29 DD */	bl __as__6CTokenFRC6CToken
/* 8035E2EC 0035B24C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8035E2F0 0035B250  90 1A 00 08 */	stw r0, 8(r26)
lbl_8035E2F4:
/* 8035E2F4 0035B254  38 61 00 54 */	addi r3, r1, 0x54
/* 8035E2F8 0035B258  38 80 00 00 */	li r4, 0
/* 8035E2FC 0035B25C  4B FE 2B 45 */	bl __dt__6CTokenFv
lbl_8035E300:
/* 8035E300 0035B260  88 01 00 9C */	lbz r0, 0x9c(r1)
/* 8035E304 0035B264  28 00 00 00 */	cmplwi r0, 0
/* 8035E308 0035B268  41 82 00 14 */	beq lbl_8035E31C
/* 8035E30C 0035B26C  34 61 00 94 */	addic. r3, r1, 0x94
/* 8035E310 0035B270  41 82 00 0C */	beq lbl_8035E31C
/* 8035E314 0035B274  38 80 00 00 */	li r4, 0
/* 8035E318 0035B278  4B FE 2B 29 */	bl __dt__6CTokenFv
lbl_8035E31C:
/* 8035E31C 0035B27C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8035E320 0035B280  38 80 00 00 */	li r4, 0
/* 8035E324 0035B284  80 61 00 AC */	lwz r3, 0xac(r1)
/* 8035E328 0035B288  54 00 10 3A */	slwi r0, r0, 2
/* 8035E32C 0035B28C  98 81 00 9C */	stb r4, 0x9c(r1)
/* 8035E330 0035B290  7C 03 02 14 */	add r0, r3, r0
/* 8035E334 0035B294  7C 64 1B 78 */	mr r4, r3
/* 8035E338 0035B298  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035E33C 0035B29C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8035E340 0035B2A0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8035E344 0035B2A4  90 61 00 18 */	stw r3, 0x18(r1)
/* 8035E348 0035B2A8  48 00 00 08 */	b lbl_8035E350
lbl_8035E34C:
/* 8035E34C 0035B2AC  38 84 00 04 */	addi r4, r4, 4
lbl_8035E350:
/* 8035E350 0035B2B0  7C 04 00 40 */	cmplw r4, r0
/* 8035E354 0035B2B4  40 82 FF F8 */	bne lbl_8035E34C
/* 8035E358 0035B2B8  28 03 00 00 */	cmplwi r3, 0
/* 8035E35C 0035B2BC  41 82 01 E0 */	beq lbl_8035E53C
/* 8035E360 0035B2C0  4B FB 75 D1 */	bl Free__7CMemoryFPCv
/* 8035E364 0035B2C4  48 00 01 D8 */	b lbl_8035E53C
lbl_8035E368:
/* 8035E368 0035B2C8  38 00 00 00 */	li r0, 0
/* 8035E36C 0035B2CC  7F 84 E3 78 */	mr r4, r28
/* 8035E370 0035B2D0  90 01 00 88 */	stw r0, 0x88(r1)
/* 8035E374 0035B2D4  7F A5 EB 78 */	mr r5, r29
/* 8035E378 0035B2D8  38 61 00 48 */	addi r3, r1, 0x48
/* 8035E37C 0035B2DC  38 C1 00 84 */	addi r6, r1, 0x84
/* 8035E380 0035B2E0  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8035E384 0035B2E4  90 01 00 90 */	stw r0, 0x90(r1)
/* 8035E388 0035B2E8  4B FC 6A 09 */	bl "GetChildGeneratorDesc__20CParticleDataFactoryFR12CInputStreamP11CSimplePoolRCQ24rstl37vector<Ui,Q24rstl17rmemory_allocator>"
/* 8035E38C 0035B2EC  88 01 00 50 */	lbz r0, 0x50(r1)
/* 8035E390 0035B2F0  28 00 00 00 */	cmplwi r0, 0
/* 8035E394 0035B2F4  98 01 00 80 */	stb r0, 0x80(r1)
/* 8035E398 0035B2F8  41 82 00 14 */	beq lbl_8035E3AC
/* 8035E39C 0035B2FC  34 61 00 78 */	addic. r3, r1, 0x78
/* 8035E3A0 0035B300  38 81 00 48 */	addi r4, r1, 0x48
/* 8035E3A4 0035B304  41 82 00 08 */	beq lbl_8035E3AC
/* 8035E3A8 0035B308  4B FE 2B 01 */	bl __ct__6CTokenFRC6CToken
lbl_8035E3AC:
/* 8035E3AC 0035B30C  88 01 00 50 */	lbz r0, 0x50(r1)
/* 8035E3B0 0035B310  28 00 00 00 */	cmplwi r0, 0
/* 8035E3B4 0035B314  41 82 00 14 */	beq lbl_8035E3C8
/* 8035E3B8 0035B318  34 61 00 48 */	addic. r3, r1, 0x48
/* 8035E3BC 0035B31C  41 82 00 0C */	beq lbl_8035E3C8
/* 8035E3C0 0035B320  38 80 00 00 */	li r4, 0
/* 8035E3C4 0035B324  4B FE 2A 7D */	bl __dt__6CTokenFv
lbl_8035E3C8:
/* 8035E3C8 0035B328  88 01 00 80 */	lbz r0, 0x80(r1)
/* 8035E3CC 0035B32C  38 60 00 00 */	li r3, 0
/* 8035E3D0 0035B330  98 61 00 50 */	stb r3, 0x50(r1)
/* 8035E3D4 0035B334  28 00 00 00 */	cmplwi r0, 0
/* 8035E3D8 0035B338  41 82 00 70 */	beq lbl_8035E448
/* 8035E3DC 0035B33C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8035E3E0 0035B340  38 81 00 78 */	addi r4, r1, 0x78
/* 8035E3E4 0035B344  4B FE 2A C5 */	bl __ct__6CTokenFRC6CToken
/* 8035E3E8 0035B348  38 00 00 00 */	li r0, 0
/* 8035E3EC 0035B34C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8035E3F0 0035B350  88 1B 00 6C */	lbz r0, 0x6c(r27)
/* 8035E3F4 0035B354  28 00 00 00 */	cmplwi r0, 0
/* 8035E3F8 0035B358  40 82 00 2C */	bne lbl_8035E424
/* 8035E3FC 0035B35C  37 5B 00 60 */	addic. r26, r27, 0x60
/* 8035E400 0035B360  41 82 00 18 */	beq lbl_8035E418
/* 8035E404 0035B364  7F 43 D3 78 */	mr r3, r26
/* 8035E408 0035B368  38 81 00 3C */	addi r4, r1, 0x3c
/* 8035E40C 0035B36C  4B FE 2A 9D */	bl __ct__6CTokenFRC6CToken
/* 8035E410 0035B370  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8035E414 0035B374  90 1A 00 08 */	stw r0, 8(r26)
lbl_8035E418:
/* 8035E418 0035B378  38 00 00 01 */	li r0, 1
/* 8035E41C 0035B37C  98 1B 00 6C */	stb r0, 0x6c(r27)
/* 8035E420 0035B380  48 00 00 1C */	b lbl_8035E43C
lbl_8035E424:
/* 8035E424 0035B384  3B 5B 00 60 */	addi r26, r27, 0x60
/* 8035E428 0035B388  38 81 00 3C */	addi r4, r1, 0x3c
/* 8035E42C 0035B38C  7F 43 D3 78 */	mr r3, r26
/* 8035E430 0035B390  4B FE 28 95 */	bl __as__6CTokenFRC6CToken
/* 8035E434 0035B394  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8035E438 0035B398  90 1A 00 08 */	stw r0, 8(r26)
lbl_8035E43C:
/* 8035E43C 0035B39C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8035E440 0035B3A0  38 80 00 00 */	li r4, 0
/* 8035E444 0035B3A4  4B FE 29 FD */	bl __dt__6CTokenFv
lbl_8035E448:
/* 8035E448 0035B3A8  88 01 00 80 */	lbz r0, 0x80(r1)
/* 8035E44C 0035B3AC  28 00 00 00 */	cmplwi r0, 0
/* 8035E450 0035B3B0  41 82 00 14 */	beq lbl_8035E464
/* 8035E454 0035B3B4  34 61 00 78 */	addic. r3, r1, 0x78
/* 8035E458 0035B3B8  41 82 00 0C */	beq lbl_8035E464
/* 8035E45C 0035B3BC  38 80 00 00 */	li r4, 0
/* 8035E460 0035B3C0  4B FE 29 E1 */	bl __dt__6CTokenFv
lbl_8035E464:
/* 8035E464 0035B3C4  80 01 00 88 */	lwz r0, 0x88(r1)
/* 8035E468 0035B3C8  38 80 00 00 */	li r4, 0
/* 8035E46C 0035B3CC  80 61 00 90 */	lwz r3, 0x90(r1)
/* 8035E470 0035B3D0  54 00 10 3A */	slwi r0, r0, 2
/* 8035E474 0035B3D4  98 81 00 80 */	stb r4, 0x80(r1)
/* 8035E478 0035B3D8  7C 03 02 14 */	add r0, r3, r0
/* 8035E47C 0035B3DC  7C 64 1B 78 */	mr r4, r3
/* 8035E480 0035B3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E484 0035B3E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8035E488 0035B3E8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8035E48C 0035B3EC  90 61 00 08 */	stw r3, 8(r1)
/* 8035E490 0035B3F0  48 00 00 08 */	b lbl_8035E498
lbl_8035E494:
/* 8035E494 0035B3F4  38 84 00 04 */	addi r4, r4, 4
lbl_8035E498:
/* 8035E498 0035B3F8  7C 04 00 40 */	cmplw r4, r0
/* 8035E49C 0035B3FC  40 82 FF F8 */	bne lbl_8035E494
/* 8035E4A0 0035B400  28 03 00 00 */	cmplwi r3, 0
/* 8035E4A4 0035B404  41 82 00 98 */	beq lbl_8035E53C
/* 8035E4A8 0035B408  4B FB 74 89 */	bl Free__7CMemoryFPCv
/* 8035E4AC 0035B40C  48 00 00 90 */	b lbl_8035E53C
lbl_8035E4B0:
/* 8035E4B0 0035B410  7F 83 E3 78 */	mr r3, r28
/* 8035E4B4 0035B414  4B FC 87 DD */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8035E4B8 0035B418  90 7B 00 28 */	stw r3, 0x28(r27)
/* 8035E4BC 0035B41C  48 00 00 80 */	b lbl_8035E53C
lbl_8035E4C0:
/* 8035E4C0 0035B420  7F 83 E3 78 */	mr r3, r28
/* 8035E4C4 0035B424  4B FC 87 CD */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8035E4C8 0035B428  90 7B 00 2C */	stw r3, 0x2c(r27)
/* 8035E4CC 0035B42C  48 00 00 70 */	b lbl_8035E53C
lbl_8035E4D0:
/* 8035E4D0 0035B430  7F 83 E3 78 */	mr r3, r28
/* 8035E4D4 0035B434  4B FC 87 BD */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8035E4D8 0035B438  90 7B 00 30 */	stw r3, 0x30(r27)
/* 8035E4DC 0035B43C  48 00 00 60 */	b lbl_8035E53C
lbl_8035E4E0:
/* 8035E4E0 0035B440  7F 83 E3 78 */	mr r3, r28
/* 8035E4E4 0035B444  4B FC 6D 79 */	bl GetColorElement__20CParticleDataFactoryFR12CInputStream
/* 8035E4E8 0035B448  90 7B 00 34 */	stw r3, 0x34(r27)
/* 8035E4EC 0035B44C  48 00 00 50 */	b lbl_8035E53C
lbl_8035E4F0:
/* 8035E4F0 0035B450  7F 83 E3 78 */	mr r3, r28
/* 8035E4F4 0035B454  4B FC 6D 69 */	bl GetColorElement__20CParticleDataFactoryFR12CInputStream
/* 8035E4F8 0035B458  90 7B 00 38 */	stw r3, 0x38(r27)
/* 8035E4FC 0035B45C  48 00 00 40 */	b lbl_8035E53C
lbl_8035E500:
/* 8035E500 0035B460  7F 83 E3 78 */	mr r3, r28
/* 8035E504 0035B464  4B FC 6D 59 */	bl GetColorElement__20CParticleDataFactoryFR12CInputStream
/* 8035E508 0035B468  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8035E50C 0035B46C  48 00 00 30 */	b lbl_8035E53C
lbl_8035E510:
/* 8035E510 0035B470  7F 83 E3 78 */	mr r3, r28
/* 8035E514 0035B474  4B FC 9F 15 */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8035E518 0035B478  98 7B 00 70 */	stb r3, 0x70(r27)
/* 8035E51C 0035B47C  48 00 00 20 */	b lbl_8035E53C
lbl_8035E520:
/* 8035E520 0035B480  3B C0 00 01 */	li r30, 1
/* 8035E524 0035B484  48 00 00 18 */	b lbl_8035E53C
lbl_8035E528:
/* 8035E528 0035B488  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8035E52C 0035B48C  38 80 FF FF */	li r4, -1
/* 8035E530 0035B490  4B FB 40 D5 */	bl __dt__13CGlobalRandomFv
/* 8035E534 0035B494  38 60 00 00 */	li r3, 0
/* 8035E538 0035B498  48 00 00 1C */	b lbl_8035E554
lbl_8035E53C:
/* 8035E53C 0035B49C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8035E540 0035B4A0  38 80 FF FF */	li r4, -1
/* 8035E544 0035B4A4  4B FB 40 C1 */	bl __dt__13CGlobalRandomFv
lbl_8035E548:
/* 8035E548 0035B4A8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8035E54C 0035B4AC  41 82 F9 D8 */	beq lbl_8035DF24
/* 8035E550 0035B4B0  38 60 00 01 */	li r3, 1
lbl_8035E554:
/* 8035E554 0035B4B4  BB 41 00 C8 */	lmw r26, 0xc8(r1)
/* 8035E558 0035B4B8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8035E55C 0035B4BC  7C 08 03 A6 */	mtlr r0
/* 8035E560 0035B4C0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8035E564 0035B4C4  4E 80 00 20 */	blr

.global LoadELSMTokens__28CParticleElectricDataFactoryFP20CElectricDescription
LoadELSMTokens__28CParticleElectricDataFactoryFP20CElectricDescription:
/* 8035E568 0035B4C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E56C 0035B4CC  7C 08 02 A6 */	mflr r0
/* 8035E570 0035B4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E574 0035B4D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E578 0035B4D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8035E57C 0035B4DC  7C 7E 1B 78 */	mr r30, r3
/* 8035E580 0035B4E0  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 8035E584 0035B4E4  28 00 00 00 */	cmplwi r0, 0
/* 8035E588 0035B4E8  41 82 00 24 */	beq lbl_8035E5AC
/* 8035E58C 0035B4EC  3B FE 00 40 */	addi r31, r30, 0x40
/* 8035E590 0035B4F0  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 8035E594 0035B4F4  28 00 00 00 */	cmplwi r0, 0
/* 8035E598 0035B4F8  40 82 00 14 */	bne lbl_8035E5AC
/* 8035E59C 0035B4FC  7F E3 FB 78 */	mr r3, r31
/* 8035E5A0 0035B500  4B FE 28 6D */	bl GetObj__6CTokenFv
/* 8035E5A4 0035B504  80 03 00 04 */	lwz r0, 4(r3)
/* 8035E5A8 0035B508  90 1F 00 08 */	stw r0, 8(r31)
lbl_8035E5AC:
/* 8035E5AC 0035B50C  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 8035E5B0 0035B510  28 00 00 00 */	cmplwi r0, 0
/* 8035E5B4 0035B514  41 82 00 24 */	beq lbl_8035E5D8
/* 8035E5B8 0035B518  3B FE 00 50 */	addi r31, r30, 0x50
/* 8035E5BC 0035B51C  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 8035E5C0 0035B520  28 00 00 00 */	cmplwi r0, 0
/* 8035E5C4 0035B524  40 82 00 14 */	bne lbl_8035E5D8
/* 8035E5C8 0035B528  7F E3 FB 78 */	mr r3, r31
/* 8035E5CC 0035B52C  4B FE 28 41 */	bl GetObj__6CTokenFv
/* 8035E5D0 0035B530  80 03 00 04 */	lwz r0, 4(r3)
/* 8035E5D4 0035B534  90 1F 00 08 */	stw r0, 8(r31)
lbl_8035E5D8:
/* 8035E5D8 0035B538  88 1E 00 6C */	lbz r0, 0x6c(r30)
/* 8035E5DC 0035B53C  28 00 00 00 */	cmplwi r0, 0
/* 8035E5E0 0035B540  41 82 00 24 */	beq lbl_8035E604
/* 8035E5E4 0035B544  3B FE 00 60 */	addi r31, r30, 0x60
/* 8035E5E8 0035B548  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 8035E5EC 0035B54C  28 00 00 00 */	cmplwi r0, 0
/* 8035E5F0 0035B550  40 82 00 14 */	bne lbl_8035E604
/* 8035E5F4 0035B554  7F E3 FB 78 */	mr r3, r31
/* 8035E5F8 0035B558  4B FE 28 15 */	bl GetObj__6CTokenFv
/* 8035E5FC 0035B55C  80 03 00 04 */	lwz r0, 4(r3)
/* 8035E600 0035B560  90 1F 00 08 */	stw r0, 8(r31)
lbl_8035E604:
/* 8035E604 0035B564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E608 0035B568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E60C 0035B56C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035E610 0035B570  7C 08 03 A6 */	mtlr r0
/* 8035E614 0035B574  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E618 0035B578  4E 80 00 20 */	blr

.global CreateGeneratorDescription__28CParticleElectricDataFactoryFR12CInputStreamP11CSimplePool
CreateGeneratorDescription__28CParticleElectricDataFactoryFR12CInputStreamP11CSimplePool:
/* 8035E61C 0035B57C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035E620 0035B580  7C 08 02 A6 */	mflr r0
/* 8035E624 0035B584  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035E628 0035B588  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035E62C 0035B58C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035E630 0035B590  7C 9E 23 78 */	mr r30, r4
/* 8035E634 0035B594  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035E638 0035B598  7C 7D 1B 78 */	mr r29, r3
/* 8035E63C 0035B59C  4B FC 9E 21 */	bl GetClassID__20CParticleDataFactoryFR12CInputStream
/* 8035E640 0035B5A0  3C 03 BA B4 */	addis r0, r3, 0xbab4
/* 8035E644 0035B5A4  28 00 53 4D */	cmplwi r0, 0x534d
/* 8035E648 0035B5A8  41 82 00 0C */	beq lbl_8035E654
/* 8035E64C 0035B5AC  38 60 00 00 */	li r3, 0
/* 8035E650 0035B5B0  48 00 00 44 */	b lbl_8035E694
lbl_8035E654:
/* 8035E654 0035B5B4  3C 80 80 3E */	lis r4, lbl_803D83E0@ha
/* 8035E658 0035B5B8  38 60 00 74 */	li r3, 0x74
/* 8035E65C 0035B5BC  38 84 83 E0 */	addi r4, r4, lbl_803D83E0@l
/* 8035E660 0035B5C0  38 A0 00 00 */	li r5, 0
/* 8035E664 0035B5C4  4B FB 72 09 */	bl __nw__FUlPCcPCc
/* 8035E668 0035B5C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8035E66C 0035B5CC  41 82 00 0C */	beq lbl_8035E678
/* 8035E670 0035B5D0  48 00 84 31 */	bl __ct__20CElectricDescriptionFv
/* 8035E674 0035B5D4  7C 7F 1B 78 */	mr r31, r3
lbl_8035E678:
/* 8035E678 0035B5D8  7F E3 FB 78 */	mr r3, r31
/* 8035E67C 0035B5DC  7F A4 EB 78 */	mr r4, r29
/* 8035E680 0035B5E0  7F C5 F3 78 */	mr r5, r30
/* 8035E684 0035B5E4  4B FF F8 69 */	bl CreateELSM__28CParticleElectricDataFactoryFP20CElectricDescriptionR12CInputStreamP11CSimplePool
/* 8035E688 0035B5E8  7F E3 FB 78 */	mr r3, r31
/* 8035E68C 0035B5EC  4B FF FE DD */	bl LoadELSMTokens__28CParticleElectricDataFactoryFP20CElectricDescription
/* 8035E690 0035B5F0  7F E3 FB 78 */	mr r3, r31
lbl_8035E694:
/* 8035E694 0035B5F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035E698 0035B5F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035E69C 0035B5FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035E6A0 0035B600  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035E6A4 0035B604  7C 08 03 A6 */	mtlr r0
/* 8035E6A8 0035B608  38 21 00 20 */	addi r1, r1, 0x20
/* 8035E6AC 0035B60C  4E 80 00 20 */	blr

.global GetGeneratorDesc__28CParticleElectricDataFactoryFR12CInputStreamP11CSimplePool
GetGeneratorDesc__28CParticleElectricDataFactoryFR12CInputStreamP11CSimplePool:
/* 8035E6B0 0035B610  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8035E6B4 0035B614  7C 08 02 A6 */	mflr r0
/* 8035E6B8 0035B618  90 01 00 34 */	stw r0, 0x34(r1)
/* 8035E6BC 0035B61C  38 00 00 00 */	li r0, 0
/* 8035E6C0 0035B620  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8035E6C4 0035B624  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8035E6C8 0035B628  90 01 00 20 */	stw r0, 0x20(r1)
/* 8035E6CC 0035B62C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035E6D0 0035B630  4B FF FF 4D */	bl CreateGeneratorDescription__28CParticleElectricDataFactoryFR12CInputStreamP11CSimplePool
/* 8035E6D4 0035B634  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035E6D8 0035B638  7C 7F 1B 78 */	mr r31, r3
/* 8035E6DC 0035B63C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8035E6E0 0035B640  54 00 10 3A */	slwi r0, r0, 2
/* 8035E6E4 0035B644  7C 04 02 14 */	add r0, r4, r0
/* 8035E6E8 0035B648  90 81 00 0C */	stw r4, 0xc(r1)
/* 8035E6EC 0035B64C  7C 83 23 78 */	mr r3, r4
/* 8035E6F0 0035B650  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E6F4 0035B654  90 01 00 10 */	stw r0, 0x10(r1)
/* 8035E6F8 0035B658  90 81 00 08 */	stw r4, 8(r1)
/* 8035E6FC 0035B65C  48 00 00 08 */	b lbl_8035E704
lbl_8035E700:
/* 8035E700 0035B660  38 63 00 04 */	addi r3, r3, 4
lbl_8035E704:
/* 8035E704 0035B664  7C 03 00 40 */	cmplw r3, r0
/* 8035E708 0035B668  40 82 FF F8 */	bne lbl_8035E700
/* 8035E70C 0035B66C  28 04 00 00 */	cmplwi r4, 0
/* 8035E710 0035B670  41 82 00 0C */	beq lbl_8035E71C
/* 8035E714 0035B674  7C 83 23 78 */	mr r3, r4
/* 8035E718 0035B678  4B FB 72 19 */	bl Free__7CMemoryFPCv
lbl_8035E71C:
/* 8035E71C 0035B67C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8035E720 0035B680  7F E3 FB 78 */	mr r3, r31
/* 8035E724 0035B684  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8035E728 0035B688  7C 08 03 A6 */	mtlr r0
/* 8035E72C 0035B68C  38 21 00 30 */	addi r1, r1, 0x30
/* 8035E730 0035B690  4E 80 00 20 */	blr

.global FParticleElectricDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer
FParticleElectricDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer:
/* 8035E734 0035B694  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8035E738 0035B698  7C 08 02 A6 */	mflr r0
/* 8035E73C 0035B69C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8035E740 0035B6A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8035E744 0035B6A4  7C 7F 1B 78 */	mr r31, r3
/* 8035E748 0035B6A8  7C A3 2B 78 */	mr r3, r5
/* 8035E74C 0035B6AC  80 C6 00 00 */	lwz r6, 0(r6)
/* 8035E750 0035B6B0  90 C1 00 08 */	stw r6, 8(r1)
/* 8035E754 0035B6B4  80 86 00 04 */	lwz r4, 4(r6)
/* 8035E758 0035B6B8  38 04 00 01 */	addi r0, r4, 1
/* 8035E75C 0035B6BC  90 06 00 04 */	stw r0, 4(r6)
/* 8035E760 0035B6C0  80 81 00 08 */	lwz r4, 8(r1)
/* 8035E764 0035B6C4  80 84 00 00 */	lwz r4, 0(r4)
/* 8035E768 0035B6C8  80 84 00 04 */	lwz r4, 4(r4)
/* 8035E76C 0035B6CC  4B FF FF 45 */	bl GetGeneratorDesc__28CParticleElectricDataFactoryFR12CInputStreamP11CSimplePool
/* 8035E770 0035B6D0  7C 03 00 D0 */	neg r0, r3
/* 8035E774 0035B6D4  90 61 00 10 */	stw r3, 0x10(r1)
/* 8035E778 0035B6D8  7C 00 1B 78 */	or r0, r0, r3
/* 8035E77C 0035B6DC  38 61 00 14 */	addi r3, r1, 0x14
/* 8035E780 0035B6E0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8035E784 0035B6E4  38 81 00 0C */	addi r4, r1, 0xc
/* 8035E788 0035B6E8  98 01 00 0C */	stb r0, 0xc(r1)
/* 8035E78C 0035B6EC  48 00 00 85 */	bl "GetIObjObjectFor__30TToken<20CElectricDescription>FRCQ24rstl32auto_ptr<20CElectricDescription>"
/* 8035E790 0035B6F0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8035E794 0035B6F4  38 00 00 00 */	li r0, 0
/* 8035E798 0035B6F8  98 01 00 14 */	stb r0, 0x14(r1)
/* 8035E79C 0035B6FC  7C 03 00 D0 */	neg r0, r3
/* 8035E7A0 0035B700  7C 00 1B 78 */	or r0, r0, r3
/* 8035E7A4 0035B704  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8035E7A8 0035B708  98 1F 00 00 */	stb r0, 0(r31)
/* 8035E7AC 0035B70C  90 7F 00 04 */	stw r3, 4(r31)
/* 8035E7B0 0035B710  88 01 00 14 */	lbz r0, 0x14(r1)
/* 8035E7B4 0035B714  28 00 00 00 */	cmplwi r0, 0
/* 8035E7B8 0035B718  41 82 00 24 */	beq lbl_8035E7DC
/* 8035E7BC 0035B71C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8035E7C0 0035B720  28 03 00 00 */	cmplwi r3, 0
/* 8035E7C4 0035B724  41 82 00 18 */	beq lbl_8035E7DC
/* 8035E7C8 0035B728  81 83 00 00 */	lwz r12, 0(r3)
/* 8035E7CC 0035B72C  38 80 00 01 */	li r4, 1
/* 8035E7D0 0035B730  81 8C 00 08 */	lwz r12, 8(r12)
/* 8035E7D4 0035B734  7D 89 03 A6 */	mtctr r12
/* 8035E7D8 0035B738  4E 80 04 21 */	bctrl
lbl_8035E7DC:
/* 8035E7DC 0035B73C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8035E7E0 0035B740  28 00 00 00 */	cmplwi r0, 0
/* 8035E7E4 0035B744  41 82 00 10 */	beq lbl_8035E7F4
/* 8035E7E8 0035B748  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8035E7EC 0035B74C  38 80 00 01 */	li r4, 1
/* 8035E7F0 0035B750  48 00 7F C9 */	bl __dt__20CElectricDescriptionFv
lbl_8035E7F4:
/* 8035E7F4 0035B754  38 61 00 08 */	addi r3, r1, 8
/* 8035E7F8 0035B758  4B CD 5B 0D */	bl sub_80034304
/* 8035E7FC 0035B75C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8035E800 0035B760  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8035E804 0035B764  7C 08 03 A6 */	mtlr r0
/* 8035E808 0035B768  38 21 00 30 */	addi r1, r1, 0x30
/* 8035E80C 0035B76C  4E 80 00 20 */	blr

.global "GetIObjObjectFor__30TToken<20CElectricDescription>FRCQ24rstl32auto_ptr<20CElectricDescription>"
"GetIObjObjectFor__30TToken<20CElectricDescription>FRCQ24rstl32auto_ptr<20CElectricDescription>":
/* 8035E810 0035B770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E814 0035B774  7C 08 02 A6 */	mflr r0
/* 8035E818 0035B778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E81C 0035B77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E820 0035B780  7C 7F 1B 78 */	mr r31, r3
/* 8035E824 0035B784  48 00 00 19 */	bl "GetNewDerivedObject__48TObjOwnerDerivedFromIObj<20CElectricDescription>FRCQ24rstl32auto_ptr<20CElectricDescription>"
/* 8035E828 0035B788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E82C 0035B78C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E830 0035B790  7C 08 03 A6 */	mtlr r0
/* 8035E834 0035B794  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E838 0035B798  4E 80 00 20 */	blr

.global "GetNewDerivedObject__48TObjOwnerDerivedFromIObj<20CElectricDescription>FRCQ24rstl32auto_ptr<20CElectricDescription>"
"GetNewDerivedObject__48TObjOwnerDerivedFromIObj<20CElectricDescription>FRCQ24rstl32auto_ptr<20CElectricDescription>":
/* 8035E83C 0035B79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E840 0035B7A0  7C 08 02 A6 */	mflr r0
/* 8035E844 0035B7A4  3C A0 80 3E */	lis r5, lbl_803D83E0@ha
/* 8035E848 0035B7A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E84C 0035B7AC  38 05 83 E0 */	addi r0, r5, lbl_803D83E0@l
/* 8035E850 0035B7B0  38 A0 00 00 */	li r5, 0
/* 8035E854 0035B7B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E858 0035B7B8  7C 9F 23 78 */	mr r31, r4
/* 8035E85C 0035B7BC  7C 04 03 78 */	mr r4, r0
/* 8035E860 0035B7C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8035E864 0035B7C4  7C 7E 1B 78 */	mr r30, r3
/* 8035E868 0035B7C8  38 60 00 08 */	li r3, 8
/* 8035E86C 0035B7CC  4B FB 70 01 */	bl __nw__FUlPCcPCc
/* 8035E870 0035B7D0  28 03 00 00 */	cmplwi r3, 0
/* 8035E874 0035B7D4  41 82 00 38 */	beq lbl_8035E8AC
/* 8035E878 0035B7D8  3C 80 80 3E */	lis r4, lbl_803D8D6C@ha
/* 8035E87C 0035B7DC  3C A0 80 3E */	lis r5, lbl_803D8D78@ha
/* 8035E880 0035B7E0  38 04 8D 6C */	addi r0, r4, lbl_803D8D6C@l
/* 8035E884 0035B7E4  3C 80 80 3E */	lis r4, lbl_803DACA4@ha
/* 8035E888 0035B7E8  90 03 00 00 */	stw r0, 0(r3)
/* 8035E88C 0035B7EC  38 C5 8D 78 */	addi r6, r5, lbl_803D8D78@l
/* 8035E890 0035B7F0  38 A0 00 00 */	li r5, 0
/* 8035E894 0035B7F4  38 04 AC A4 */	addi r0, r4, lbl_803DACA4@l
/* 8035E898 0035B7F8  90 C3 00 00 */	stw r6, 0(r3)
/* 8035E89C 0035B7FC  98 BF 00 00 */	stb r5, 0(r31)
/* 8035E8A0 0035B800  80 9F 00 04 */	lwz r4, 4(r31)
/* 8035E8A4 0035B804  90 83 00 04 */	stw r4, 4(r3)
/* 8035E8A8 0035B808  90 03 00 00 */	stw r0, 0(r3)
lbl_8035E8AC:
/* 8035E8AC 0035B80C  7C 03 00 D0 */	neg r0, r3
/* 8035E8B0 0035B810  7C 00 1B 78 */	or r0, r0, r3
/* 8035E8B4 0035B814  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8035E8B8 0035B818  98 1E 00 00 */	stb r0, 0(r30)
/* 8035E8BC 0035B81C  90 7E 00 04 */	stw r3, 4(r30)
/* 8035E8C0 0035B820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E8C4 0035B824  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035E8C8 0035B828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E8CC 0035B82C  7C 08 03 A6 */	mtlr r0
/* 8035E8D0 0035B830  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E8D4 0035B834  4E 80 00 20 */	blr
