.include "macros.inc"

.section .data
.balign 8

.global __vt__12CPreFrontEnd
__vt__12CPreFrontEnd:
	# ROM: 0x3E9010
	.4byte 0
	.4byte 0
	.4byte __dt__12CPreFrontEndFv
	.4byte OnMessage__12CPreFrontEndFRC20CArchitectureMessageR18CArchitectureQueue
	.4byte GetIsContinueDraw__6CIOWinCFv
	.4byte Draw__12CPreFrontEndCFv
	.4byte PreDraw__6CIOWinCFv
	.4byte 0

.section .text, "ax"

.global __dt__12CPreFrontEndFv
__dt__12CPreFrontEndFv:
/* 8029E4A4 0029B404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E4A8 0029B408  7C 08 02 A6 */	mflr r0
/* 8029E4AC 0029B40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E4B0 0029B410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029E4B4 0029B414  7C 9F 23 78 */	mr r31, r4
/* 8029E4B8 0029B418  93 C1 00 08 */	stw r30, 8(r1)
/* 8029E4BC 0029B41C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8029E4C0 0029B420  41 82 00 28 */	beq lbl_8029E4E8
/* 8029E4C4 0029B424  3C A0 80 3F */	lis r5, __vt__12CPreFrontEnd@ha
/* 8029E4C8 0029B428  38 80 00 00 */	li r4, 0
/* 8029E4CC 0029B42C  38 05 C0 10 */	addi r0, r5, __vt__12CPreFrontEnd@l
/* 8029E4D0 0029B430  90 1E 00 00 */	stw r0, 0(r30)
/* 8029E4D4 0029B434  4B DB 46 D1 */	bl __dt__6CIOWinFv
/* 8029E4D8 0029B438  7F E0 07 35 */	extsh. r0, r31
/* 8029E4DC 0029B43C  40 81 00 0C */	ble lbl_8029E4E8
/* 8029E4E0 0029B440  7F C3 F3 78 */	mr r3, r30
/* 8029E4E4 0029B444  48 07 74 4D */	bl Free__7CMemoryFPCv
lbl_8029E4E8:
/* 8029E4E8 0029B448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E4EC 0029B44C  7F C3 F3 78 */	mr r3, r30
/* 8029E4F0 0029B450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029E4F4 0029B454  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029E4F8 0029B458  7C 08 03 A6 */	mtlr r0
/* 8029E4FC 0029B45C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E500 0029B460  4E 80 00 20 */	blr

.global Draw__12CPreFrontEndCFv
Draw__12CPreFrontEndCFv:
/* 8029E504 0029B464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E508 0029B468  7C 08 02 A6 */	mflr r0
/* 8029E50C 0029B46C  38 60 00 01 */	li r3, 1
/* 8029E510 0029B470  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E514 0029B474  48 06 AF 95 */	bl SetIsBeginSceneClearFb__9CGraphicsFb
/* 8029E518 0029B478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E51C 0029B47C  7C 08 03 A6 */	mtlr r0
/* 8029E520 0029B480  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E524 0029B484  4E 80 00 20 */	blr

.global OnMessage__12CPreFrontEndFRC20CArchitectureMessageR18CArchitectureQueue
OnMessage__12CPreFrontEndFRC20CArchitectureMessageR18CArchitectureQueue:
/* 8029E528 0029B488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E52C 0029B48C  7C 08 02 A6 */	mflr r0
/* 8029E530 0029B490  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E534 0029B494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029E538 0029B498  7C 7F 1B 78 */	mr r31, r3
/* 8029E53C 0029B49C  80 04 00 04 */	lwz r0, 4(r4)
/* 8029E540 0029B4A0  2C 00 00 04 */	cmpwi r0, 4
/* 8029E544 0029B4A4  40 82 00 84 */	bne lbl_8029E5C8
/* 8029E548 0029B4A8  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 8029E54C 0029B4AC  38 63 00 04 */	addi r3, r3, 4
/* 8029E550 0029B4B0  48 09 D8 61 */	bl AreAllPaksLoaded__10CResLoaderCFv
/* 8029E554 0029B4B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029E558 0029B4B8  40 82 00 0C */	bne lbl_8029E564
/* 8029E55C 0029B4BC  38 60 00 01 */	li r3, 1
/* 8029E560 0029B4C0  48 00 00 6C */	b lbl_8029E5CC
lbl_8029E564:
/* 8029E564 0029B4C4  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 8029E568 0029B4C8  28 00 00 00 */	cmplwi r0, 0
/* 8029E56C 0029B4CC  40 82 00 14 */	bne lbl_8029E580
/* 8029E570 0029B4D0  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 8029E574 0029B4D4  4B D6 51 09 */	bl RegisterResourceTweaks__5CMainFv
/* 8029E578 0029B4D8  38 00 00 01 */	li r0, 1
/* 8029E57C 0029B4DC  98 1F 00 14 */	stb r0, 0x14(r31)
lbl_8029E580:
/* 8029E580 0029B4E0  3C 80 00 0F */	lis r4, 0x000F4240@ha
/* 8029E584 0029B4E4  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 8029E588 0029B4E8  38 84 42 40 */	addi r4, r4, 0x000F4240@l
/* 8029E58C 0029B4EC  48 09 B6 45 */	bl AsyncIdle__11CResFactoryFUi
/* 8029E590 0029B4F0  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 8029E594 0029B4F4  4B D6 80 A9 */	bl MemoryCardInitializePump__5CMainFv
/* 8029E598 0029B4F8  80 0D A0 84 */	lwz r0, gpMemoryCard@sda21(r13)
/* 8029E59C 0029B4FC  28 00 00 00 */	cmplwi r0, 0
/* 8029E5A0 0029B500  40 82 00 0C */	bne lbl_8029E5AC
/* 8029E5A4 0029B504  38 60 00 01 */	li r3, 1
/* 8029E5A8 0029B508  48 00 00 24 */	b lbl_8029E5CC
lbl_8029E5AC:
/* 8029E5AC 0029B50C  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 8029E5B0 0029B510  4B D6 83 51 */	bl LoadAudio__5CMainFv
/* 8029E5B4 0029B514  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029E5B8 0029B518  38 60 00 01 */	li r3, 1
/* 8029E5BC 0029B51C  41 82 00 10 */	beq lbl_8029E5CC
/* 8029E5C0 0029B520  38 60 00 02 */	li r3, 2
/* 8029E5C4 0029B524  48 00 00 08 */	b lbl_8029E5CC
lbl_8029E5C8:
/* 8029E5C8 0029B528  38 60 00 00 */	li r3, 0
lbl_8029E5CC:
/* 8029E5CC 0029B52C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E5D0 0029B530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029E5D4 0029B534  7C 08 03 A6 */	mtlr r0
/* 8029E5D8 0029B538  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E5DC 0029B53C  4E 80 00 20 */	blr

.global __ct__12CPreFrontEndFv
__ct__12CPreFrontEndFv:
/* 8029E5E0 0029B540  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E5E4 0029B544  7C 08 02 A6 */	mflr r0
/* 8029E5E8 0029B548  3C 80 80 3D */	lis r4, lbl_803D5E80@ha
/* 8029E5EC 0029B54C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E5F0 0029B550  38 84 5E 80 */	addi r4, r4, lbl_803D5E80@l
/* 8029E5F4 0029B554  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029E5F8 0029B558  7C 7F 1B 78 */	mr r31, r3
/* 8029E5FC 0029B55C  38 61 00 08 */	addi r3, r1, 8
/* 8029E600 0029B560  4B D6 66 B9 */	bl string_l__4rstlFPCc
/* 8029E604 0029B564  7F E3 FB 78 */	mr r3, r31
/* 8029E608 0029B568  38 81 00 08 */	addi r4, r1, 8
/* 8029E60C 0029B56C  4B DB 46 01 */	bl "__ct__6CIOWinFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8029E610 0029B570  38 61 00 08 */	addi r3, r1, 8
/* 8029E614 0029B574  48 09 F4 CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8029E618 0029B578  3C 60 80 3F */	lis r3, __vt__12CPreFrontEnd@ha
/* 8029E61C 0029B57C  38 00 00 00 */	li r0, 0
/* 8029E620 0029B580  38 83 C0 10 */	addi r4, r3, __vt__12CPreFrontEnd@l
/* 8029E624 0029B584  7F E3 FB 78 */	mr r3, r31
/* 8029E628 0029B588  90 9F 00 00 */	stw r4, 0(r31)
/* 8029E62C 0029B58C  98 1F 00 14 */	stb r0, 0x14(r31)
/* 8029E630 0029B590  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029E634 0029B594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E638 0029B598  7C 08 03 A6 */	mtlr r0
/* 8029E63C 0029B59C  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E640 0029B5A0  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D5E80
lbl_803D5E80:
	# ROM: 0x3D2E80
	.asciz "Pre front-end window"
	.balign 4
