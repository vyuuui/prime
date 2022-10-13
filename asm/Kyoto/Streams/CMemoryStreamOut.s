.include "macros.inc"

.section .data
.balign 8

.global __vt__16CMemoryStreamOut
__vt__16CMemoryStreamOut:
	# ROM: 0x3EB3A8
	.4byte 0
	.4byte 0
	.4byte __dt__16CMemoryStreamOutFv
	.4byte Write__16CMemoryStreamOutFPCvUl

.section .text, "ax"

.global Write__16CMemoryStreamOutFPCvUl
Write__16CMemoryStreamOutFPCvUl:
/* 8033F250 0033C1B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F254 0033C1B4  7C 08 02 A6 */	mflr r0
/* 8033F258 0033C1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F25C 0033C1BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F260 0033C1C0  7C BF 2B 78 */	mr r31, r5
/* 8033F264 0033C1C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8033F268 0033C1C8  7C 7E 1B 78 */	mr r30, r3
/* 8033F26C 0033C1CC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8033F270 0033C1D0  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 8033F274 0033C1D4  7C 03 00 50 */	subf r0, r3, r0
/* 8033F278 0033C1D8  7C 00 28 40 */	cmplw r0, r5
/* 8033F27C 0033C1DC  40 80 00 08 */	bge lbl_8033F284
/* 8033F280 0033C1E0  7C 1F 03 78 */	mr r31, r0
lbl_8033F284:
/* 8033F284 0033C1E4  28 1F 00 00 */	cmplwi r31, 0
/* 8033F288 0033C1E8  41 82 00 20 */	beq lbl_8033F2A8
/* 8033F28C 0033C1EC  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8033F290 0033C1F0  7F E5 FB 78 */	mr r5, r31
/* 8033F294 0033C1F4  7C 60 1A 14 */	add r3, r0, r3
/* 8033F298 0033C1F8  4B CC 41 F9 */	bl memcpy
/* 8033F29C 0033C1FC  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 8033F2A0 0033C200  7C 00 FA 14 */	add r0, r0, r31
/* 8033F2A4 0033C204  90 1E 00 84 */	stw r0, 0x84(r30)
lbl_8033F2A8:
/* 8033F2A8 0033C208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F2AC 0033C20C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F2B0 0033C210  83 C1 00 08 */	lwz r30, 8(r1)
/* 8033F2B4 0033C214  7C 08 03 A6 */	mtlr r0
/* 8033F2B8 0033C218  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F2BC 0033C21C  4E 80 00 20 */	blr

.global __dt__16CMemoryStreamOutFv
__dt__16CMemoryStreamOutFv:
/* 8033F2C0 0033C220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F2C4 0033C224  7C 08 02 A6 */	mflr r0
/* 8033F2C8 0033C228  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F2CC 0033C22C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F2D0 0033C230  7C 9F 23 78 */	mr r31, r4
/* 8033F2D4 0033C234  93 C1 00 08 */	stw r30, 8(r1)
/* 8033F2D8 0033C238  7C 7E 1B 79 */	or. r30, r3, r3
/* 8033F2DC 0033C23C  41 82 00 44 */	beq lbl_8033F320
/* 8033F2E0 0033C240  3C 80 80 3F */	lis r4, __vt__16CMemoryStreamOut@ha
/* 8033F2E4 0033C244  38 04 E3 A8 */	addi r0, r4, __vt__16CMemoryStreamOut@l
/* 8033F2E8 0033C248  90 1E 00 00 */	stw r0, 0(r30)
/* 8033F2EC 0033C24C  48 00 02 89 */	bl Flush__13COutputStreamFv
/* 8033F2F0 0033C250  88 1E 00 88 */	lbz r0, 0x88(r30)
/* 8033F2F4 0033C254  28 00 00 00 */	cmplwi r0, 0
/* 8033F2F8 0033C258  41 82 00 0C */	beq lbl_8033F304
/* 8033F2FC 0033C25C  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8033F300 0033C260  4B FD 66 31 */	bl Free__7CMemoryFPCv
lbl_8033F304:
/* 8033F304 0033C264  7F C3 F3 78 */	mr r3, r30
/* 8033F308 0033C268  38 80 00 00 */	li r4, 0
/* 8033F30C 0033C26C  48 00 03 85 */	bl __dt__13COutputStreamFv
/* 8033F310 0033C270  7F E0 07 35 */	extsh. r0, r31
/* 8033F314 0033C274  40 81 00 0C */	ble lbl_8033F320
/* 8033F318 0033C278  7F C3 F3 78 */	mr r3, r30
/* 8033F31C 0033C27C  4B FD 66 15 */	bl Free__7CMemoryFPCv
lbl_8033F320:
/* 8033F320 0033C280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F324 0033C284  7F C3 F3 78 */	mr r3, r30
/* 8033F328 0033C288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F32C 0033C28C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8033F330 0033C290  7C 08 03 A6 */	mtlr r0
/* 8033F334 0033C294  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F338 0033C298  4E 80 00 20 */	blr

.global __ct__16CMemoryStreamOutFPvUlQ216CMemoryStreamOut10EOwnerShipi
__ct__16CMemoryStreamOutFPvUlQ216CMemoryStreamOut10EOwnerShipi:
/* 8033F33C 0033C29C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F340 0033C2A0  7C 08 02 A6 */	mflr r0
/* 8033F344 0033C2A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033F348 0033C2A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033F34C 0033C2AC  7C DF 33 78 */	mr r31, r6
/* 8033F350 0033C2B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033F354 0033C2B4  7C BE 2B 78 */	mr r30, r5
/* 8033F358 0033C2B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033F35C 0033C2BC  7C 9D 23 78 */	mr r29, r4
/* 8033F360 0033C2C0  7C E4 3B 78 */	mr r4, r7
/* 8033F364 0033C2C4  93 81 00 10 */	stw r28, 0x10(r1)
/* 8033F368 0033C2C8  7C 7C 1B 78 */	mr r28, r3
/* 8033F36C 0033C2CC  48 00 03 91 */	bl __ct__13COutputStreamFi
/* 8033F370 0033C2D0  3C 60 80 3F */	lis r3, __vt__16CMemoryStreamOut@ha
/* 8033F374 0033C2D4  7F E0 00 34 */	cntlzw r0, r31
/* 8033F378 0033C2D8  38 63 E3 A8 */	addi r3, r3, __vt__16CMemoryStreamOut@l
/* 8033F37C 0033C2DC  38 80 00 00 */	li r4, 0
/* 8033F380 0033C2E0  90 7C 00 00 */	stw r3, 0(r28)
/* 8033F384 0033C2E4  54 00 D9 7E */	srwi r0, r0, 5
/* 8033F388 0033C2E8  7F 83 E3 78 */	mr r3, r28
/* 8033F38C 0033C2EC  93 BC 00 7C */	stw r29, 0x7c(r28)
/* 8033F390 0033C2F0  93 DC 00 80 */	stw r30, 0x80(r28)
/* 8033F394 0033C2F4  90 9C 00 84 */	stw r4, 0x84(r28)
/* 8033F398 0033C2F8  98 1C 00 88 */	stb r0, 0x88(r28)
/* 8033F39C 0033C2FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033F3A0 0033C300  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033F3A4 0033C304  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033F3A8 0033C308  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8033F3AC 0033C30C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F3B0 0033C310  7C 08 03 A6 */	mtlr r0
/* 8033F3B4 0033C314  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F3B8 0033C318  4E 80 00 20 */	blr
