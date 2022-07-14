.include "macros.inc"

.section .text, "ax"

.global sndAuxCallbackReverbHI
sndAuxCallbackReverbHI:
/* 803B5B00 003B2A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5B04 003B2A64  7C 08 02 A6 */	mflr r0
/* 803B5B08 003B2A68  7C 87 23 78 */	mr r7, r4
/* 803B5B0C 003B2A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5B10 003B2A70  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803B5B14 003B2A74  2C 00 00 01 */	cmpwi r0, 1
/* 803B5B18 003B2A78  41 82 00 34 */	beq lbl_803B5B4C
/* 803B5B1C 003B2A7C  40 80 00 30 */	bge lbl_803B5B4C
/* 803B5B20 003B2A80  2C 00 00 00 */	cmpwi r0, 0
/* 803B5B24 003B2A84  40 80 00 08 */	bge lbl_803B5B2C
/* 803B5B28 003B2A88  48 00 00 24 */	b lbl_803B5B4C
lbl_803B5B2C:
/* 803B5B2C 003B2A8C  88 05 01 C4 */	lbz r0, 0x1c4(r5)
/* 803B5B30 003B2A90  28 00 00 00 */	cmplwi r0, 0
/* 803B5B34 003B2A94  40 82 00 18 */	bne lbl_803B5B4C
/* 803B5B38 003B2A98  80 67 00 00 */	lwz r3, 0(r7)
/* 803B5B3C 003B2A9C  7C A6 2B 78 */	mr r6, r5
/* 803B5B40 003B2AA0  80 87 00 04 */	lwz r4, 4(r7)
/* 803B5B44 003B2AA4  80 A7 00 08 */	lwz r5, 8(r7)
/* 803B5B48 003B2AA8  48 00 0C 21 */	bl ReverbHICallback
lbl_803B5B4C:
/* 803B5B4C 003B2AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5B50 003B2AB0  7C 08 03 A6 */	mtlr r0
/* 803B5B54 003B2AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5B58 003B2AB8  4E 80 00 20 */	blr

.global sndAuxCallbackPrepareReverbHI
sndAuxCallbackPrepareReverbHI:
/* 803B5B5C 003B2ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5B60 003B2AC0  7C 08 02 A6 */	mflr r0
/* 803B5B64 003B2AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5B68 003B2AC8  38 00 00 00 */	li r0, 0
/* 803B5B6C 003B2ACC  98 03 01 C4 */	stb r0, 0x1c4(r3)
/* 803B5B70 003B2AD0  C0 23 01 C8 */	lfs f1, 0x1c8(r3)
/* 803B5B74 003B2AD4  C0 43 01 D0 */	lfs f2, 0x1d0(r3)
/* 803B5B78 003B2AD8  C0 63 01 CC */	lfs f3, 0x1cc(r3)
/* 803B5B7C 003B2ADC  C0 83 01 D4 */	lfs f4, 0x1d4(r3)
/* 803B5B80 003B2AE0  C0 A3 01 D8 */	lfs f5, 0x1d8(r3)
/* 803B5B84 003B2AE4  C0 C3 01 DC */	lfs f6, 0x1dc(r3)
/* 803B5B88 003B2AE8  48 00 00 39 */	bl ReverbHICreate
/* 803B5B8C 003B2AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5B90 003B2AF0  7C 08 03 A6 */	mtlr r0
/* 803B5B94 003B2AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5B98 003B2AF8  4E 80 00 20 */	blr

.global sndAuxCallbackShutdownReverbHI
sndAuxCallbackShutdownReverbHI:
/* 803B5B9C 003B2AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5BA0 003B2B00  7C 08 02 A6 */	mflr r0
/* 803B5BA4 003B2B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5BA8 003B2B08  48 00 0C A1 */	bl ReverbHIFree
/* 803B5BAC 003B2B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5BB0 003B2B10  38 60 00 01 */	li r3, 1
/* 803B5BB4 003B2B14  7C 08 03 A6 */	mtlr r0
/* 803B5BB8 003B2B18  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5BBC 003B2B1C  4E 80 00 20 */	blr
