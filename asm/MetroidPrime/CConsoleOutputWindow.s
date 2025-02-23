.include "macros.inc"

.section .rodata
.balign 8
.global lbl_803CEE00
lbl_803CEE00:
	# ROM: 0x3CBE00
	.asciz "ConsoleOutputWindow"
	.4byte 0x003F3F28
	.4byte 0x3F3F2900
	.4byte 0


.section .data
.balign 8

.global lbl_803DFE50
lbl_803DFE50:
	# ROM: 0x3DCE50
	.4byte 0
	.4byte 0
	.4byte __dt__20CConsoleOutputWindowFv
	.4byte OnMessage__20CConsoleOutputWindowFRC20CArchitectureMessageR18CArchitectureQueue
	.4byte GetIsContinueDraw__6CIOWinCFv
	.4byte Draw__20CConsoleOutputWindowCFv
	.4byte PreDraw__6CIOWinCFv
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A7540
lbl_805A7540:
	# ROM: 0x3F4EE0
	.4byte 0

.global lbl_805A7544
lbl_805A7544:
	# ROM: 0x3F4EE4
	.4byte 0

.section .sbss
.balign 8

# CConsoleOutputWindow
.global mInstance__20CConsoleOutputWindow
mInstance__20CConsoleOutputWindow:
	.skip 0x8

.section .sdata2, "a"
.balign 8

.global lbl_805AB0C8
lbl_805AB0C8:
	# ROM: 0x3F7968
	.4byte 0x441E0000
	.4byte 0

.global lbl_805AB0D0
lbl_805AB0D0:
	# ROM: 0x3F7970
	.double 4.503601774854144E15

.section .text, "ax"

.global Draw__20CConsoleOutputWindowCFv
Draw__20CConsoleOutputWindowCFv:
/* 800FE884 000FB7E4  4E 80 00 20 */	blr

.global Update__20CConsoleOutputWindowFf
Update__20CConsoleOutputWindowFf:
/* 800FE888 000FB7E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FE88C 000FB7EC  38 C0 00 00 */	li r6, 0
/* 800FE890 000FB7F0  38 A0 00 00 */	li r5, 0
/* 800FE894 000FB7F4  48 00 00 40 */	b lbl_800FE8D4
lbl_800FE898:
/* 800FE898 000FB7F8  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 800FE89C 000FB7FC  C0 0D 89 84 */	lfs f0, lbl_805A7544@sda21(r13)
/* 800FE8A0 000FB800  7C 44 2C 2E */	lfsx f2, r4, r5
/* 800FE8A4 000FB804  EC 42 08 28 */	fsubs f2, f2, f1
/* 800FE8A8 000FB808  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800FE8AC 000FB80C  D0 41 00 08 */	stfs f2, 8(r1)
/* 800FE8B0 000FB810  40 80 00 0C */	bge lbl_800FE8BC
/* 800FE8B4 000FB814  38 81 00 08 */	addi r4, r1, 8
/* 800FE8B8 000FB818  48 00 00 08 */	b lbl_800FE8C0
lbl_800FE8BC:
/* 800FE8BC 000FB81C  38 8D 89 84 */	addi r4, r13, lbl_805A7544@sda21
lbl_800FE8C0:
/* 800FE8C0 000FB820  C0 04 00 00 */	lfs f0, 0(r4)
/* 800FE8C4 000FB824  38 C6 00 01 */	addi r6, r6, 1
/* 800FE8C8 000FB828  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 800FE8CC 000FB82C  7C 04 2D 2E */	stfsx f0, r4, r5
/* 800FE8D0 000FB830  38 A5 00 04 */	addi r5, r5, 4
lbl_800FE8D4:
/* 800FE8D4 000FB834  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800FE8D8 000FB838  7C 06 00 00 */	cmpw r6, r0
/* 800FE8DC 000FB83C  41 80 FF BC */	blt lbl_800FE898
/* 800FE8E0 000FB840  38 21 00 10 */	addi r1, r1, 0x10
/* 800FE8E4 000FB844  4E 80 00 20 */	blr

.global OnMessage__20CConsoleOutputWindowFRC20CArchitectureMessageR18CArchitectureQueue
OnMessage__20CConsoleOutputWindowFRC20CArchitectureMessageR18CArchitectureQueue:
/* 800FE8E8 000FB848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FE8EC 000FB84C  7C 08 02 A6 */	mflr r0
/* 800FE8F0 000FB850  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FE8F4 000FB854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FE8F8 000FB858  7C 7F 1B 78 */	mr r31, r3
/* 800FE8FC 000FB85C  80 04 00 04 */	lwz r0, 4(r4)
/* 800FE900 000FB860  2C 00 00 05 */	cmpwi r0, 5
/* 800FE904 000FB864  41 82 00 14 */	beq lbl_800FE918
/* 800FE908 000FB868  40 80 00 38 */	bge lbl_800FE940
/* 800FE90C 000FB86C  2C 00 00 04 */	cmpwi r0, 4
/* 800FE910 000FB870  40 80 00 10 */	bge lbl_800FE920
/* 800FE914 000FB874  48 00 00 2C */	b lbl_800FE940
lbl_800FE918:
/* 800FE918 000FB878  38 60 00 00 */	li r3, 0
/* 800FE91C 000FB87C  48 00 00 28 */	b lbl_800FE944
lbl_800FE920:
/* 800FE920 000FB880  7C 83 23 78 */	mr r3, r4
/* 800FE924 000FB884  4B F5 32 99 */	bl GetParmTimerTick__7MakeMsgFRC20CArchitectureMessage
/* 800FE928 000FB888  7C 64 1B 78 */	mr r4, r3
/* 800FE92C 000FB88C  7F E3 FB 78 */	mr r3, r31
/* 800FE930 000FB890  C0 24 00 04 */	lfs f1, 4(r4)
/* 800FE934 000FB894  4B FF FF 55 */	bl Update__20CConsoleOutputWindowFf
/* 800FE938 000FB898  38 60 00 00 */	li r3, 0
/* 800FE93C 000FB89C  48 00 00 08 */	b lbl_800FE944
lbl_800FE940:
/* 800FE940 000FB8A0  38 60 00 00 */	li r3, 0
lbl_800FE944:
/* 800FE944 000FB8A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FE948 000FB8A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FE94C 000FB8AC  7C 08 03 A6 */	mtlr r0
/* 800FE950 000FB8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800FE954 000FB8B4  4E 80 00 20 */	blr

.global __dt__20CConsoleOutputWindowFv
__dt__20CConsoleOutputWindowFv:
/* 800FE958 000FB8B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800FE95C 000FB8BC  7C 08 02 A6 */	mflr r0
/* 800FE960 000FB8C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800FE964 000FB8C4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800FE968 000FB8C8  7C 9F 23 78 */	mr r31, r4
/* 800FE96C 000FB8CC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800FE970 000FB8D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800FE974 000FB8D4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 800FE978 000FB8D8  93 81 00 30 */	stw r28, 0x30(r1)
/* 800FE97C 000FB8DC  41 82 00 E0 */	beq lbl_800FEA5C
/* 800FE980 000FB8E0  3C 60 80 3E */	lis r3, lbl_803DFE50@ha
/* 800FE984 000FB8E4  34 1E 00 30 */	addic. r0, r30, 0x30
/* 800FE988 000FB8E8  38 63 FE 50 */	addi r3, r3, lbl_803DFE50@l
/* 800FE98C 000FB8EC  38 00 00 00 */	li r0, 0
/* 800FE990 000FB8F0  90 7E 00 00 */	stw r3, 0(r30)
/* 800FE994 000FB8F4  90 0D A3 40 */	stw r0, mInstance__20CConsoleOutputWindow@sda21(r13)
/* 800FE998 000FB8F8  41 82 00 44 */	beq lbl_800FE9DC
/* 800FE99C 000FB8FC  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 800FE9A0 000FB900  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 800FE9A4 000FB904  54 00 10 3A */	slwi r0, r0, 2
/* 800FE9A8 000FB908  7C 03 02 14 */	add r0, r3, r0
/* 800FE9AC 000FB90C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800FE9B0 000FB910  7C 64 1B 78 */	mr r4, r3
/* 800FE9B4 000FB914  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FE9B8 000FB918  90 01 00 20 */	stw r0, 0x20(r1)
/* 800FE9BC 000FB91C  90 61 00 18 */	stw r3, 0x18(r1)
/* 800FE9C0 000FB920  48 00 00 08 */	b lbl_800FE9C8
lbl_800FE9C4:
/* 800FE9C4 000FB924  38 84 00 04 */	addi r4, r4, 4
lbl_800FE9C8:
/* 800FE9C8 000FB928  7C 04 00 40 */	cmplw r4, r0
/* 800FE9CC 000FB92C  40 82 FF F8 */	bne lbl_800FE9C4
/* 800FE9D0 000FB930  28 03 00 00 */	cmplwi r3, 0
/* 800FE9D4 000FB934  41 82 00 08 */	beq lbl_800FE9DC
/* 800FE9D8 000FB938  48 21 6F 59 */	bl Free__7CMemoryFPCv
lbl_800FE9DC:
/* 800FE9DC 000FB93C  34 1E 00 20 */	addic. r0, r30, 0x20
/* 800FE9E0 000FB940  41 82 00 54 */	beq lbl_800FEA34
/* 800FE9E4 000FB944  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 800FE9E8 000FB948  83 9E 00 2C */	lwz r28, 0x2c(r30)
/* 800FE9EC 000FB94C  54 00 20 36 */	slwi r0, r0, 4
/* 800FE9F0 000FB950  7F BC 02 14 */	add r29, r28, r0
/* 800FE9F4 000FB954  93 81 00 0C */	stw r28, 0xc(r1)
/* 800FE9F8 000FB958  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FE9FC 000FB95C  93 A1 00 10 */	stw r29, 0x10(r1)
/* 800FEA00 000FB960  93 81 00 08 */	stw r28, 8(r1)
/* 800FEA04 000FB964  48 00 00 18 */	b lbl_800FEA1C
lbl_800FEA08:
/* 800FEA08 000FB968  28 1C 00 00 */	cmplwi r28, 0
/* 800FEA0C 000FB96C  41 82 00 0C */	beq lbl_800FEA18
/* 800FEA10 000FB970  7F 83 E3 78 */	mr r3, r28
/* 800FEA14 000FB974  48 23 F0 CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_800FEA18:
/* 800FEA18 000FB978  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_800FEA1C:
/* 800FEA1C 000FB97C  7C 1C E8 40 */	cmplw r28, r29
/* 800FEA20 000FB980  40 82 FF E8 */	bne lbl_800FEA08
/* 800FEA24 000FB984  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 800FEA28 000FB988  28 03 00 00 */	cmplwi r3, 0
/* 800FEA2C 000FB98C  41 82 00 08 */	beq lbl_800FEA34
/* 800FEA30 000FB990  48 21 6F 01 */	bl Free__7CMemoryFPCv
lbl_800FEA34:
/* 800FEA34 000FB994  38 7E 00 14 */	addi r3, r30, 0x14
/* 800FEA38 000FB998  38 80 FF FF */	li r4, -1
/* 800FEA3C 000FB99C  48 20 75 85 */	bl __dt__5CFontFv
/* 800FEA40 000FB9A0  7F C3 F3 78 */	mr r3, r30
/* 800FEA44 000FB9A4  38 80 00 00 */	li r4, 0
/* 800FEA48 000FB9A8  4B F5 41 5D */	bl __dt__6CIOWinFv
/* 800FEA4C 000FB9AC  7F E0 07 35 */	extsh. r0, r31
/* 800FEA50 000FB9B0  40 81 00 0C */	ble lbl_800FEA5C
/* 800FEA54 000FB9B4  7F C3 F3 78 */	mr r3, r30
/* 800FEA58 000FB9B8  48 21 6E D9 */	bl Free__7CMemoryFPCv
lbl_800FEA5C:
/* 800FEA5C 000FB9BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800FEA60 000FB9C0  7F C3 F3 78 */	mr r3, r30
/* 800FEA64 000FB9C4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800FEA68 000FB9C8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800FEA6C 000FB9CC  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 800FEA70 000FB9D0  83 81 00 30 */	lwz r28, 0x30(r1)
/* 800FEA74 000FB9D4  7C 08 03 A6 */	mtlr r0
/* 800FEA78 000FB9D8  38 21 00 40 */	addi r1, r1, 0x40
/* 800FEA7C 000FB9DC  4E 80 00 20 */	blr

.global __ct__20CConsoleOutputWindowFiff
__ct__20CConsoleOutputWindowFiff:
/* 800FEA80 000FB9E0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800FEA84 000FB9E4  7C 08 02 A6 */	mflr r0
/* 800FEA88 000FB9E8  90 01 00 74 */	stw r0, 0x74(r1)
/* 800FEA8C 000FB9EC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800FEA90 000FB9F0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 800FEA94 000FB9F4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 800FEA98 000FB9F8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 800FEA9C 000FB9FC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800FEAA0 000FBA00  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800FEAA4 000FBA04  93 A1 00 44 */	stw r29, 0x44(r1)
/* 800FEAA8 000FBA08  93 81 00 40 */	stw r28, 0x40(r1)
/* 800FEAAC 000FBA0C  3C A0 80 3D */	lis r5, lbl_803CEE00@ha
/* 800FEAB0 000FBA10  FF C0 08 90 */	fmr f30, f1
/* 800FEAB4 000FBA14  FF E0 10 90 */	fmr f31, f2
/* 800FEAB8 000FBA18  38 05 EE 00 */	addi r0, r5, lbl_803CEE00@l
/* 800FEABC 000FBA1C  7C 7C 1B 78 */	mr r28, r3
/* 800FEAC0 000FBA20  7C 9D 23 78 */	mr r29, r4
/* 800FEAC4 000FBA24  7C 04 03 78 */	mr r4, r0
/* 800FEAC8 000FBA28  38 61 00 1C */	addi r3, r1, 0x1c
/* 800FEACC 000FBA2C  4B F0 61 ED */	bl string_l__4rstlFPCc
/* 800FEAD0 000FBA30  7F 83 E3 78 */	mr r3, r28
/* 800FEAD4 000FBA34  38 81 00 1C */	addi r4, r1, 0x1c
/* 800FEAD8 000FBA38  4B F5 41 35 */	bl "__ct__6CIOWinFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800FEADC 000FBA3C  38 61 00 1C */	addi r3, r1, 0x1c
/* 800FEAE0 000FBA40  48 23 F0 01 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800FEAE4 000FBA44  3C 60 80 3E */	lis r3, lbl_803DFE50@ha
/* 800FEAE8 000FBA48  FC 20 F8 90 */	fmr f1, f31
/* 800FEAEC 000FBA4C  38 03 FE 50 */	addi r0, r3, lbl_803DFE50@l
/* 800FEAF0 000FBA50  38 7C 00 14 */	addi r3, r28, 0x14
/* 800FEAF4 000FBA54  90 1C 00 00 */	stw r0, 0(r28)
/* 800FEAF8 000FBA58  48 20 75 05 */	bl __ct__5CFontFf
/* 800FEAFC 000FBA5C  D3 DC 00 1C */	stfs f30, 0x1c(r28)
/* 800FEB00 000FBA60  38 00 00 00 */	li r0, 0
/* 800FEB04 000FBA64  38 7C 00 14 */	addi r3, r28, 0x14
/* 800FEB08 000FBA68  38 80 00 30 */	li r4, 0x30
/* 800FEB0C 000FBA6C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 800FEB10 000FBA70  90 1C 00 28 */	stw r0, 0x28(r28)
/* 800FEB14 000FBA74  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 800FEB18 000FBA78  90 1C 00 34 */	stw r0, 0x34(r28)
/* 800FEB1C 000FBA7C  90 1C 00 38 */	stw r0, 0x38(r28)
/* 800FEB20 000FBA80  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 800FEB24 000FBA84  48 20 74 79 */	bl CharWidth__5CFontCFc
/* 800FEB28 000FBA88  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FEB2C 000FBA8C  3C 60 43 30 */	lis r3, 0x4330
/* 800FEB30 000FBA90  90 01 00 34 */	stw r0, 0x34(r1)
/* 800FEB34 000FBA94  38 00 00 00 */	li r0, 0
/* 800FEB38 000FBA98  C8 42 93 B0 */	lfd f2, lbl_805AB0D0@sda21(r2)
/* 800FEB3C 000FBA9C  7F A4 EB 78 */	mr r4, r29
/* 800FEB40 000FBAA0  90 61 00 30 */	stw r3, 0x30(r1)
/* 800FEB44 000FBAA4  38 7C 00 20 */	addi r3, r28, 0x20
/* 800FEB48 000FBAA8  C0 02 93 A8 */	lfs f0, lbl_805AB0C8@sda21(r2)
/* 800FEB4C 000FBAAC  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 800FEB50 000FBAB0  EC 21 10 28 */	fsubs f1, f1, f2
/* 800FEB54 000FBAB4  EC 00 08 24 */	fdivs f0, f0, f1
/* 800FEB58 000FBAB8  FC 00 00 1E */	fctiwz f0, f0
/* 800FEB5C 000FBABC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 800FEB60 000FBAC0  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 800FEB64 000FBAC4  90 BC 00 40 */	stw r5, 0x40(r28)
/* 800FEB68 000FBAC8  90 1C 00 44 */	stw r0, 0x44(r28)
/* 800FEB6C 000FBACC  90 1C 00 48 */	stw r0, 0x48(r28)
/* 800FEB70 000FBAD0  4B F5 B0 45 */	bl "reserve__Q24rstl110vector<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Fi"
/* 800FEB74 000FBAD4  7F A4 EB 78 */	mr r4, r29
/* 800FEB78 000FBAD8  38 7C 00 30 */	addi r3, r28, 0x30
/* 800FEB7C 000FBADC  4B F5 F2 7D */	bl "reserve__Q24rstl36vector<f,Q24rstl17rmemory_allocator>Fi"
/* 800FEB80 000FBAE0  3C 60 80 3D */	lis r3, lbl_803CEE00@ha
/* 800FEB84 000FBAE4  3B C0 00 00 */	li r30, 0
/* 800FEB88 000FBAE8  3B E3 EE 00 */	addi r31, r3, lbl_803CEE00@l
/* 800FEB8C 000FBAEC  48 00 00 C8 */	b lbl_800FEC54
lbl_800FEB90:
/* 800FEB90 000FBAF0  80 BC 00 40 */	lwz r5, 0x40(r28)
/* 800FEB94 000FBAF4  38 61 00 0C */	addi r3, r1, 0xc
/* 800FEB98 000FBAF8  38 9F 00 14 */	addi r4, r31, 0x14
/* 800FEB9C 000FBAFC  38 C1 00 08 */	addi r6, r1, 8
/* 800FEBA0 000FBB00  38 A5 00 01 */	addi r5, r5, 1
/* 800FEBA4 000FBB04  48 23 F5 F1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 800FEBA8 000FBB08  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 800FEBAC 000FBB0C  80 BC 00 28 */	lwz r5, 0x28(r28)
/* 800FEBB0 000FBB10  7C 00 28 00 */	cmpw r0, r5
/* 800FEBB4 000FBB14  41 80 00 1C */	blt lbl_800FEBD0
/* 800FEBB8 000FBB18  2C 05 00 00 */	cmpwi r5, 0
/* 800FEBBC 000FBB1C  38 7C 00 20 */	addi r3, r28, 0x20
/* 800FEBC0 000FBB20  38 80 00 04 */	li r4, 4
/* 800FEBC4 000FBB24  41 82 00 08 */	beq lbl_800FEBCC
/* 800FEBC8 000FBB28  54 A4 08 3C */	slwi r4, r5, 1
lbl_800FEBCC:
/* 800FEBCC 000FBB2C  4B F5 AF E9 */	bl "reserve__Q24rstl110vector<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Fi"
lbl_800FEBD0:
/* 800FEBD0 000FBB30  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 800FEBD4 000FBB34  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 800FEBD8 000FBB38  54 00 20 36 */	slwi r0, r0, 4
/* 800FEBDC 000FBB3C  7C 63 02 15 */	add. r3, r3, r0
/* 800FEBE0 000FBB40  41 82 00 0C */	beq lbl_800FEBEC
/* 800FEBE4 000FBB44  38 81 00 0C */	addi r4, r1, 0xc
/* 800FEBE8 000FBB48  48 23 F5 79 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_800FEBEC:
/* 800FEBEC 000FBB4C  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 800FEBF0 000FBB50  38 61 00 0C */	addi r3, r1, 0xc
/* 800FEBF4 000FBB54  38 04 00 01 */	addi r0, r4, 1
/* 800FEBF8 000FBB58  90 1C 00 24 */	stw r0, 0x24(r28)
/* 800FEBFC 000FBB5C  48 23 EE E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800FEC00 000FBB60  80 1C 00 34 */	lwz r0, 0x34(r28)
/* 800FEC04 000FBB64  80 BC 00 38 */	lwz r5, 0x38(r28)
/* 800FEC08 000FBB68  7C 00 28 00 */	cmpw r0, r5
/* 800FEC0C 000FBB6C  41 80 00 1C */	blt lbl_800FEC28
/* 800FEC10 000FBB70  2C 05 00 00 */	cmpwi r5, 0
/* 800FEC14 000FBB74  38 7C 00 30 */	addi r3, r28, 0x30
/* 800FEC18 000FBB78  38 80 00 04 */	li r4, 4
/* 800FEC1C 000FBB7C  41 82 00 08 */	beq lbl_800FEC24
/* 800FEC20 000FBB80  54 A4 08 3C */	slwi r4, r5, 1
lbl_800FEC24:
/* 800FEC24 000FBB84  4B F5 F1 D5 */	bl "reserve__Q24rstl36vector<f,Q24rstl17rmemory_allocator>Fi"
lbl_800FEC28:
/* 800FEC28 000FBB88  80 1C 00 34 */	lwz r0, 0x34(r28)
/* 800FEC2C 000FBB8C  80 7C 00 3C */	lwz r3, 0x3c(r28)
/* 800FEC30 000FBB90  54 00 10 3A */	slwi r0, r0, 2
/* 800FEC34 000FBB94  7C 63 02 15 */	add. r3, r3, r0
/* 800FEC38 000FBB98  41 82 00 0C */	beq lbl_800FEC44
/* 800FEC3C 000FBB9C  C0 0D 89 80 */	lfs f0, lbl_805A7540@sda21(r13)
/* 800FEC40 000FBBA0  D0 03 00 00 */	stfs f0, 0(r3)
lbl_800FEC44:
/* 800FEC44 000FBBA4  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 800FEC48 000FBBA8  3B DE 00 01 */	addi r30, r30, 1
/* 800FEC4C 000FBBAC  38 03 00 01 */	addi r0, r3, 1
/* 800FEC50 000FBBB0  90 1C 00 34 */	stw r0, 0x34(r28)
lbl_800FEC54:
/* 800FEC54 000FBBB4  7C 1E E8 00 */	cmpw r30, r29
/* 800FEC58 000FBBB8  41 80 FF 38 */	blt lbl_800FEB90
/* 800FEC5C 000FBBBC  93 8D A3 40 */	stw r28, mInstance__20CConsoleOutputWindow@sda21(r13)
/* 800FEC60 000FBBC0  7F 83 E3 78 */	mr r3, r28
/* 800FEC64 000FBBC4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 800FEC68 000FBBC8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800FEC6C 000FBBCC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 800FEC70 000FBBD0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 800FEC74 000FBBD4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800FEC78 000FBBD8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800FEC7C 000FBBDC  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 800FEC80 000FBBE0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800FEC84 000FBBE4  83 81 00 40 */	lwz r28, 0x40(r1)
/* 800FEC88 000FBBE8  7C 08 03 A6 */	mtlr r0
/* 800FEC8C 000FBBEC  38 21 00 70 */	addi r1, r1, 0x70
/* 800FEC90 000FBBF0  4E 80 00 20 */	blr
