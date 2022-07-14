.include "macros.inc"

.section .data, "wa"

.global lbl_803F6FB8
lbl_803F6FB8:
	# ROM: 0x3F3FB8
	.4byte 0x00F60200
	.4byte 0x000F1200
	.4byte 0x001E0900
	.4byte 0x002C0600
	.4byte 0x00340500
	.4byte 0x00410400
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x01280200
	.4byte 0x000F1500
	.4byte 0x001D0B00
	.4byte 0x002D0700
	.4byte 0x00340600
	.4byte 0x003F0500
	.4byte 0x004E0400
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x009C0200
	.asciz "SISetSamplingRate: unknown TV format. Use default."
	.balign 4
	.4byte 0
	.asciz "<< Dolphin SDK - EXI\trelease build: Sep  5 2002 05:33:04 (0x2301) >>"
	.balign 4
	.asciz "Memory Card 59"
	.balign 4
	.asciz "Memory Card 123"
	.asciz "Memory Card 251"
	.asciz "Memory Card 507"
	.asciz "USB Adapter"
	.asciz "Net Card"
	.balign 4
	.asciz "Artist Ether"
	.balign 4
	.asciz "Stream Hanger"
	.balign 4
	.asciz "IS Viewer"
	.balign 4
	.4byte 0


.section .text, "ax"

.global SISetSamplingRate
SISetSamplingRate:
/* 803BFF0C 003BCE6C  7C 08 02 A6 */	mflr r0
/* 803BFF10 003BCE70  90 01 00 04 */	stw r0, 4(r1)
/* 803BFF14 003BCE74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BFF18 003BCE78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BFF1C 003BCE7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BFF20 003BCE80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803BFF24 003BCE84  3B A3 00 00 */	addi r29, r3, 0
/* 803BFF28 003BCE88  28 1D 00 0B */	cmplwi r29, 0xb
/* 803BFF2C 003BCE8C  3C 60 80 3F */	lis r3, lbl_803F6FB8@ha
/* 803BFF30 003BCE90  3B E3 6F B8 */	addi r31, r3, lbl_803F6FB8@l
/* 803BFF34 003BCE94  40 81 00 08 */	ble lbl_803BFF3C
/* 803BFF38 003BCE98  3B A0 00 0B */	li r29, 0xb
lbl_803BFF3C:
/* 803BFF3C 003BCE9C  4B FC 17 25 */	bl OSDisableInterrupts
/* 803BFF40 003BCEA0  93 AD B0 20 */	stw r29, lbl_805A9BE0@sda21(r13)
/* 803BFF44 003BCEA4  7C 7E 1B 78 */	mr r30, r3
/* 803BFF48 003BCEA8  4B FC 95 91 */	bl VIGetTvFormat
/* 803BFF4C 003BCEAC  2C 03 00 02 */	cmpwi r3, 2
/* 803BFF50 003BCEB0  41 82 00 24 */	beq lbl_803BFF74
/* 803BFF54 003BCEB4  40 80 00 14 */	bge lbl_803BFF68
/* 803BFF58 003BCEB8  2C 03 00 00 */	cmpwi r3, 0
/* 803BFF5C 003BCEBC  41 82 00 18 */	beq lbl_803BFF74
/* 803BFF60 003BCEC0  40 80 00 1C */	bge lbl_803BFF7C
/* 803BFF64 003BCEC4  48 00 00 20 */	b lbl_803BFF84
lbl_803BFF68:
/* 803BFF68 003BCEC8  2C 03 00 05 */	cmpwi r3, 5
/* 803BFF6C 003BCECC  41 82 00 08 */	beq lbl_803BFF74
/* 803BFF70 003BCED0  48 00 00 14 */	b lbl_803BFF84
lbl_803BFF74:
/* 803BFF74 003BCED4  7F E4 FB 78 */	mr r4, r31
/* 803BFF78 003BCED8  48 00 00 20 */	b lbl_803BFF98
lbl_803BFF7C:
/* 803BFF7C 003BCEDC  38 9F 00 30 */	addi r4, r31, 0x30
/* 803BFF80 003BCEE0  48 00 00 18 */	b lbl_803BFF98
lbl_803BFF84:
/* 803BFF84 003BCEE4  38 7F 00 60 */	addi r3, r31, 0x60
/* 803BFF88 003BCEE8  4C C6 31 82 */	crclr 6
/* 803BFF8C 003BCEEC  4B FB FA 21 */	bl OSReport
/* 803BFF90 003BCEF0  3B A0 00 00 */	li r29, 0
/* 803BFF94 003BCEF4  38 9F 00 00 */	addi r4, r31, 0
lbl_803BFF98:
/* 803BFF98 003BCEF8  3C 60 CC 00 */	lis r3, 0xCC00206C@ha
/* 803BFF9C 003BCEFC  A0 03 20 6C */	lhz r0, 0xCC00206C@l(r3)
/* 803BFFA0 003BCF00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803BFFA4 003BCF04  41 82 00 0C */	beq lbl_803BFFB0
/* 803BFFA8 003BCF08  38 A0 00 02 */	li r5, 2
/* 803BFFAC 003BCF0C  48 00 00 08 */	b lbl_803BFFB4
lbl_803BFFB0:
/* 803BFFB0 003BCF10  38 A0 00 01 */	li r5, 1
lbl_803BFFB4:
/* 803BFFB4 003BCF14  57 A3 10 3A */	slwi r3, r29, 2
/* 803BFFB8 003BCF18  7C 04 1A 2E */	lhzx r0, r4, r3
/* 803BFFBC 003BCF1C  7C 64 1A 14 */	add r3, r4, r3
/* 803BFFC0 003BCF20  88 83 00 02 */	lbz r4, 2(r3)
/* 803BFFC4 003BCF24  7C 65 01 D6 */	mullw r3, r5, r0
/* 803BFFC8 003BCF28  4B FF F3 39 */	bl SISetXY
/* 803BFFCC 003BCF2C  7F C3 F3 78 */	mr r3, r30
/* 803BFFD0 003BCF30  4B FC 16 B9 */	bl OSRestoreInterrupts
/* 803BFFD4 003BCF34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BFFD8 003BCF38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BFFDC 003BCF3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BFFE0 003BCF40  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803BFFE4 003BCF44  38 21 00 20 */	addi r1, r1, 0x20
/* 803BFFE8 003BCF48  7C 08 03 A6 */	mtlr r0
/* 803BFFEC 003BCF4C  4E 80 00 20 */	blr

.global SIRefreshSamplingRate
SIRefreshSamplingRate:
/* 803BFFF0 003BCF50  7C 08 02 A6 */	mflr r0
/* 803BFFF4 003BCF54  90 01 00 04 */	stw r0, 4(r1)
/* 803BFFF8 003BCF58  94 21 FF F8 */	stwu r1, -8(r1)
/* 803BFFFC 003BCF5C  80 6D B0 20 */	lwz r3, lbl_805A9BE0@sda21(r13)
/* 803C0000 003BCF60  4B FF FF 0D */	bl SISetSamplingRate
/* 803C0004 003BCF64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803C0008 003BCF68  38 21 00 08 */	addi r1, r1, 8
/* 803C000C 003BCF6C  7C 08 03 A6 */	mtlr r0
/* 803C0010 003BCF70  4E 80 00 20 */	blr
