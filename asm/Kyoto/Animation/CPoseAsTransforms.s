.include "macros.inc"

.section .sdata

.global lbl_805A8A58
lbl_805A8A58:
	# ROM: 0x3F63F8
	.byte 0xFF

.global lbl_805A8A59
lbl_805A8A59:
	# ROM: 0x3F63F9
	.byte 0xFF

.global lbl_805A8A5A
lbl_805A8A5A:
	# ROM: 0x3F63FA
	.byte 0xFF

.global lbl_805A8A5B
lbl_805A8A5B:
	# ROM: 0x3F63FB
	.byte 0xFF

.global lbl_805A8A5C
lbl_805A8A5C:
	# ROM: 0x3F63FC
	.byte 0xFF

.global lbl_805A8A5D
lbl_805A8A5D:
	# ROM: 0x3F63FD
	.byte 0xFF, 0x00, 0x00

.section .text, "ax"

.global Clear__17CPoseAsTransformsFv
Clear__17CPoseAsTransformsFv:
/* 80368EA4 00365E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80368EA8 00365E08  7C 08 02 A6 */	mflr r0
/* 80368EAC 00365E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80368EB0 00365E10  48 00 03 5D */	bl "Clear__58TSegIdMapVariableSize<Q217CPoseAsTransforms12CElementType>Fv"
/* 80368EB4 00365E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80368EB8 00365E18  7C 08 03 A6 */	mtlr r0
/* 80368EBC 00365E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80368EC0 00365E20  4E 80 00 20 */	blr

.global ContainsDataFor__17CPoseAsTransformsCFRC6CSegId
ContainsDataFor__17CPoseAsTransformsCFRC6CSegId:
/* 80368EC4 00365E24  88 A4 00 00 */	lbz r5, 0(r4)
/* 80368EC8 00365E28  38 80 00 00 */	li r4, 0
/* 80368ECC 00365E2C  88 0D 9E 9A */	lbz r0, lbl_805A8A5A@sda21(r13)
/* 80368ED0 00365E30  54 A5 08 3C */	slwi r5, r5, 1
/* 80368ED4 00365E34  88 CD 9E 9B */	lbz r6, lbl_805A8A5B@sda21(r13)
/* 80368ED8 00365E38  7C A3 2A 14 */	add r5, r3, r5
/* 80368EDC 00365E3C  7C 00 07 74 */	extsb r0, r0
/* 80368EE0 00365E40  88 65 00 08 */	lbz r3, 8(r5)
/* 80368EE4 00365E44  7C C6 07 74 */	extsb r6, r6
/* 80368EE8 00365E48  7C 63 07 74 */	extsb r3, r3
/* 80368EEC 00365E4C  7C 03 00 00 */	cmpw r3, r0
/* 80368EF0 00365E50  40 82 00 14 */	bne lbl_80368F04
/* 80368EF4 00365E54  88 05 00 09 */	lbz r0, 9(r5)
/* 80368EF8 00365E58  7C 00 07 74 */	extsb r0, r0
/* 80368EFC 00365E5C  7C 00 30 00 */	cmpw r0, r6
/* 80368F00 00365E60  41 82 00 08 */	beq lbl_80368F08
lbl_80368F04:
/* 80368F04 00365E64  38 80 00 01 */	li r4, 1
lbl_80368F08:
/* 80368F08 00365E68  7C 83 23 78 */	mr r3, r4
/* 80368F0C 00365E6C  4E 80 00 20 */	blr

.global AccumulateScaledTransform__17CPoseAsTransformsCFRC6CSegIdR9CMatrix3ff
AccumulateScaledTransform__17CPoseAsTransformsCFRC6CSegIdR9CMatrix3ff:
/* 80368F10 00365E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80368F14 00365E74  7C 08 02 A6 */	mflr r0
/* 80368F18 00365E78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80368F1C 00365E7C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80368F20 00365E80  FF E0 08 90 */	fmr f31, f1
/* 80368F24 00365E84  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80368F28 00365E88  7C BF 2B 78 */	mr r31, r5
/* 80368F2C 00365E8C  48 00 00 71 */	bl GetRotation__17CPoseAsTransformsCFRC6CSegId
/* 80368F30 00365E90  FC 20 F8 90 */	fmr f1, f31
/* 80368F34 00365E94  7C 64 1B 78 */	mr r4, r3
/* 80368F38 00365E98  7F E3 FB 78 */	mr r3, r31
/* 80368F3C 00365E9C  4B FA 71 15 */	bl AddScaledMatrix__9CMatrix3fFRC9CMatrix3ff
/* 80368F40 00365EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80368F44 00365EA4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80368F48 00365EA8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80368F4C 00365EAC  7C 08 03 A6 */	mtlr r0
/* 80368F50 00365EB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80368F54 00365EB4  4E 80 00 20 */	blr

.global GetOffset__17CPoseAsTransformsCFRC6CSegId
GetOffset__17CPoseAsTransformsCFRC6CSegId:
/* 80368F58 00365EB8  88 04 00 00 */	lbz r0, 0(r4)
/* 80368F5C 00365EBC  80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 80368F60 00365EC0  54 00 08 3C */	slwi r0, r0, 1
/* 80368F64 00365EC4  7C 63 02 14 */	add r3, r3, r0
/* 80368F68 00365EC8  88 03 00 09 */	lbz r0, 9(r3)
/* 80368F6C 00365ECC  1C 60 00 30 */	mulli r3, r0, 0x30
/* 80368F70 00365ED0  38 63 00 24 */	addi r3, r3, 0x24
/* 80368F74 00365ED4  7C 64 1A 14 */	add r3, r4, r3
/* 80368F78 00365ED8  4E 80 00 20 */	blr

.global GetTransformMinusOffset__17CPoseAsTransformsCFRC6CSegId
GetTransformMinusOffset__17CPoseAsTransformsCFRC6CSegId:
/* 80368F7C 00365EDC  88 04 00 00 */	lbz r0, 0(r4)
/* 80368F80 00365EE0  80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 80368F84 00365EE4  54 00 08 3C */	slwi r0, r0, 1
/* 80368F88 00365EE8  7C 63 02 14 */	add r3, r3, r0
/* 80368F8C 00365EEC  88 03 00 09 */	lbz r0, 9(r3)
/* 80368F90 00365EF0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80368F94 00365EF4  7C 64 02 14 */	add r3, r4, r0
/* 80368F98 00365EF8  4E 80 00 20 */	blr

.global GetRotation__17CPoseAsTransformsCFRC6CSegId
GetRotation__17CPoseAsTransformsCFRC6CSegId:
/* 80368F9C 00365EFC  88 04 00 00 */	lbz r0, 0(r4)
/* 80368FA0 00365F00  80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 80368FA4 00365F04  54 00 08 3C */	slwi r0, r0, 1
/* 80368FA8 00365F08  7C 63 02 14 */	add r3, r3, r0
/* 80368FAC 00365F0C  88 03 00 09 */	lbz r0, 9(r3)
/* 80368FB0 00365F10  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80368FB4 00365F14  7C 64 02 14 */	add r3, r4, r0
/* 80368FB8 00365F18  4E 80 00 20 */	blr

.global Insert__17CPoseAsTransformsFRC6CSegIdRC9CMatrix3fRC9CVector3f
Insert__17CPoseAsTransformsFRC6CSegIdRC9CMatrix3fRC9CVector3f:
/* 80368FBC 00365F1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80368FC0 00365F20  7C 08 02 A6 */	mflr r0
/* 80368FC4 00365F24  90 01 00 54 */	stw r0, 0x54(r1)
/* 80368FC8 00365F28  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80368FCC 00365F2C  7C DF 33 78 */	mr r31, r6
/* 80368FD0 00365F30  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80368FD4 00365F34  7C 9E 23 78 */	mr r30, r4
/* 80368FD8 00365F38  7C A4 2B 78 */	mr r4, r5
/* 80368FDC 00365F3C  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80368FE0 00365F40  7C 7D 1B 78 */	mr r29, r3
/* 80368FE4 00365F44  38 61 00 08 */	addi r3, r1, 8
/* 80368FE8 00365F48  4B FA 70 3D */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 80368FEC 00365F4C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80368FF0 00365F50  7F A3 EB 78 */	mr r3, r29
/* 80368FF4 00365F54  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80368FF8 00365F58  7F C4 F3 78 */	mr r4, r30
/* 80368FFC 00365F5C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80369000 00365F60  38 A1 00 08 */	addi r5, r1, 8
/* 80369004 00365F64  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80369008 00365F68  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8036900C 00365F6C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80369010 00365F70  48 00 01 51 */	bl "Insert__58TSegIdMapVariableSize<Q217CPoseAsTransforms12CElementType>FRC6CSegIdRCQ217CPoseAsTransforms12CElementType"
/* 80369014 00365F74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80369018 00365F78  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8036901C 00365F7C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80369020 00365F80  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80369024 00365F84  7C 08 03 A6 */	mtlr r0
/* 80369028 00365F88  38 21 00 50 */	addi r1, r1, 0x50
/* 8036902C 00365F8C  4E 80 00 20 */	blr

.global __ct__17CPoseAsTransformsFUc
__ct__17CPoseAsTransformsFUc:
/* 80369030 00365F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80369034 00365F94  7C 08 02 A6 */	mflr r0
/* 80369038 00365F98  38 E0 00 00 */	li r7, 0
/* 8036903C 00365F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80369040 00365FA0  38 00 00 0A */	li r0, 0xa
/* 80369044 00365FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80369048 00365FA8  7C 7F 1B 78 */	mr r31, r3
/* 8036904C 00365FAC  39 1F 00 08 */	addi r8, r31, 8
/* 80369050 00365FB0  98 E3 00 00 */	stb r7, 0(r3)
/* 80369054 00365FB4  38 60 00 64 */	li r3, 0x64
/* 80369058 00365FB8  98 9F 00 01 */	stb r4, 1(r31)
/* 8036905C 00365FBC  88 CD 9E 98 */	lbz r6, lbl_805A8A58@sda21(r13)
/* 80369060 00365FC0  88 AD 9E 99 */	lbz r5, lbl_805A8A59@sda21(r13)
/* 80369064 00365FC4  7C C6 07 74 */	extsb r6, r6
/* 80369068 00365FC8  90 7F 00 04 */	stw r3, 4(r31)
/* 8036906C 00365FCC  7C A3 07 74 */	extsb r3, r5
/* 80369070 00365FD0  7C 09 03 A6 */	mtctr r0
lbl_80369074:
/* 80369074 00365FD4  28 08 00 00 */	cmplwi r8, 0
/* 80369078 00365FD8  41 82 00 0C */	beq lbl_80369084
/* 8036907C 00365FDC  98 C8 00 00 */	stb r6, 0(r8)
/* 80369080 00365FE0  98 68 00 01 */	stb r3, 1(r8)
lbl_80369084:
/* 80369084 00365FE4  35 08 00 02 */	addic. r8, r8, 2
/* 80369088 00365FE8  41 82 00 0C */	beq lbl_80369094
/* 8036908C 00365FEC  98 C8 00 00 */	stb r6, 0(r8)
/* 80369090 00365FF0  98 68 00 01 */	stb r3, 1(r8)
lbl_80369094:
/* 80369094 00365FF4  35 08 00 02 */	addic. r8, r8, 2
/* 80369098 00365FF8  41 82 00 0C */	beq lbl_803690A4
/* 8036909C 00365FFC  98 C8 00 00 */	stb r6, 0(r8)
/* 803690A0 00366000  98 68 00 01 */	stb r3, 1(r8)
lbl_803690A4:
/* 803690A4 00366004  35 08 00 02 */	addic. r8, r8, 2
/* 803690A8 00366008  41 82 00 0C */	beq lbl_803690B4
/* 803690AC 0036600C  98 C8 00 00 */	stb r6, 0(r8)
/* 803690B0 00366010  98 68 00 01 */	stb r3, 1(r8)
lbl_803690B4:
/* 803690B4 00366014  35 08 00 02 */	addic. r8, r8, 2
/* 803690B8 00366018  41 82 00 0C */	beq lbl_803690C4
/* 803690BC 0036601C  98 C8 00 00 */	stb r6, 0(r8)
/* 803690C0 00366020  98 68 00 01 */	stb r3, 1(r8)
lbl_803690C4:
/* 803690C4 00366024  35 08 00 02 */	addic. r8, r8, 2
/* 803690C8 00366028  41 82 00 0C */	beq lbl_803690D4
/* 803690CC 0036602C  98 C8 00 00 */	stb r6, 0(r8)
/* 803690D0 00366030  98 68 00 01 */	stb r3, 1(r8)
lbl_803690D4:
/* 803690D4 00366034  35 08 00 02 */	addic. r8, r8, 2
/* 803690D8 00366038  41 82 00 0C */	beq lbl_803690E4
/* 803690DC 0036603C  98 C8 00 00 */	stb r6, 0(r8)
/* 803690E0 00366040  98 68 00 01 */	stb r3, 1(r8)
lbl_803690E4:
/* 803690E4 00366044  35 08 00 02 */	addic. r8, r8, 2
/* 803690E8 00366048  41 82 00 0C */	beq lbl_803690F4
/* 803690EC 0036604C  98 C8 00 00 */	stb r6, 0(r8)
/* 803690F0 00366050  98 68 00 01 */	stb r3, 1(r8)
lbl_803690F4:
/* 803690F4 00366054  35 08 00 02 */	addic. r8, r8, 2
/* 803690F8 00366058  41 82 00 0C */	beq lbl_80369104
/* 803690FC 0036605C  98 C8 00 00 */	stb r6, 0(r8)
/* 80369100 00366060  98 68 00 01 */	stb r3, 1(r8)
lbl_80369104:
/* 80369104 00366064  35 08 00 02 */	addic. r8, r8, 2
/* 80369108 00366068  41 82 00 0C */	beq lbl_80369114
/* 8036910C 0036606C  98 C8 00 00 */	stb r6, 0(r8)
/* 80369110 00366070  98 68 00 01 */	stb r3, 1(r8)
lbl_80369114:
/* 80369114 00366074  38 E7 00 09 */	addi r7, r7, 9
/* 80369118 00366078  39 08 00 02 */	addi r8, r8, 2
/* 8036911C 0036607C  42 00 FF 58 */	bdnz lbl_80369074
/* 80369120 00366080  38 C0 00 00 */	li r6, 0
/* 80369124 00366084  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80369128 00366088  90 DF 00 D0 */	stw r6, 0xd0(r31)
/* 8036912C 0036608C  3C 80 80 3E */	lis r4, lbl_803D8538@ha
/* 80369130 00366090  1C 60 00 30 */	mulli r3, r0, 0x30
/* 80369134 00366094  38 A0 00 00 */	li r5, 0
/* 80369138 00366098  98 DF 00 D4 */	stb r6, 0xd4(r31)
/* 8036913C 0036609C  38 84 85 38 */	addi r4, r4, lbl_803D8538@l
/* 80369140 003660A0  4B FA C6 D9 */	bl __nwa__FUlPCcPCc
/* 80369144 003660A4  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 80369148 003660A8  7F E3 FB 78 */	mr r3, r31
/* 8036914C 003660AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80369150 003660B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80369154 003660B4  7C 08 03 A6 */	mtlr r0
/* 80369158 003660B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8036915C 003660BC  4E 80 00 20 */	blr

.global "Insert__58TSegIdMapVariableSize<Q217CPoseAsTransforms12CElementType>FRC6CSegIdRCQ217CPoseAsTransforms12CElementType"
"Insert__58TSegIdMapVariableSize<Q217CPoseAsTransforms12CElementType>FRC6CSegIdRCQ217CPoseAsTransforms12CElementType":
/* 80369160 003660C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80369164 003660C4  7C 08 02 A6 */	mflr r0
/* 80369168 003660C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036916C 003660CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80369170 003660D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80369174 003660D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80369178 003660D8  7C BD 2B 78 */	mr r29, r5
/* 8036917C 003660DC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80369180 003660E0  7C 7C 1B 78 */	mr r28, r3
/* 80369184 003660E4  88 03 00 00 */	lbz r0, 0(r3)
/* 80369188 003660E8  80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 8036918C 003660EC  7C 00 07 74 */	extsb r0, r0
/* 80369190 003660F0  8B E4 00 00 */	lbz r31, 0(r4)
/* 80369194 003660F4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80369198 003660F8  7F C3 02 15 */	add. r30, r3, r0
/* 8036919C 003660FC  41 82 00 28 */	beq lbl_803691C4
/* 803691A0 00366100  7F C3 F3 78 */	mr r3, r30
/* 803691A4 00366104  7F A4 EB 78 */	mr r4, r29
/* 803691A8 00366108  4B FA 6E 7D */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 803691AC 0036610C  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 803691B0 00366110  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 803691B4 00366114  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 803691B8 00366118  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 803691BC 0036611C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 803691C0 00366120  D0 1E 00 2C */	stfs f0, 0x2c(r30)
lbl_803691C4:
/* 803691C4 00366124  57 E3 0D FC */	rlwinm r3, r31, 1, 0x17, 0x1e
/* 803691C8 00366128  88 9C 00 00 */	lbz r4, 0(r28)
/* 803691CC 0036612C  88 1C 00 D4 */	lbz r0, 0xd4(r28)
/* 803691D0 00366130  7C 7C 1A 14 */	add r3, r28, r3
/* 803691D4 00366134  98 03 00 08 */	stb r0, 8(r3)
/* 803691D8 00366138  98 83 00 09 */	stb r4, 9(r3)
/* 803691DC 0036613C  9B FC 00 D4 */	stb r31, 0xd4(r28)
/* 803691E0 00366140  88 7C 00 00 */	lbz r3, 0(r28)
/* 803691E4 00366144  38 03 00 01 */	addi r0, r3, 1
/* 803691E8 00366148  98 1C 00 00 */	stb r0, 0(r28)
/* 803691EC 0036614C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803691F0 00366150  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803691F4 00366154  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803691F8 00366158  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803691FC 0036615C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80369200 00366160  7C 08 03 A6 */	mtlr r0
/* 80369204 00366164  38 21 00 20 */	addi r1, r1, 0x20
/* 80369208 00366168  4E 80 00 20 */	blr

.global "Clear__58TSegIdMapVariableSize<Q217CPoseAsTransforms12CElementType>Fv"
"Clear__58TSegIdMapVariableSize<Q217CPoseAsTransforms12CElementType>Fv":
/* 8036920C 0036616C  88 A3 00 D4 */	lbz r5, 0xd4(r3)
/* 80369210 00366170  38 C3 00 08 */	addi r6, r3, 8
/* 80369214 00366174  48 00 00 24 */	b lbl_80369238
lbl_80369218:
/* 80369218 00366178  54 A4 0D FC */	rlwinm r4, r5, 1, 0x17, 0x1e
/* 8036921C 0036617C  7C 80 23 78 */	mr r0, r4
/* 80369220 00366180  7C A6 20 AE */	lbzx r5, r6, r4
/* 80369224 00366184  7C E6 02 14 */	add r7, r6, r0
/* 80369228 00366188  88 8D 9E 9D */	lbz r4, lbl_805A8A5D@sda21(r13)
/* 8036922C 0036618C  88 0D 9E 9C */	lbz r0, lbl_805A8A5C@sda21(r13)
/* 80369230 00366190  98 07 00 00 */	stb r0, 0(r7)
/* 80369234 00366194  98 87 00 01 */	stb r4, 1(r7)
lbl_80369238:
/* 80369238 00366198  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8036923C 0036619C  40 82 FF DC */	bne lbl_80369218
/* 80369240 003661A0  38 00 00 00 */	li r0, 0
/* 80369244 003661A4  98 03 00 D4 */	stb r0, 0xd4(r3)
/* 80369248 003661A8  98 03 00 00 */	stb r0, 0(r3)
/* 8036924C 003661AC  4E 80 00 20 */	blr
