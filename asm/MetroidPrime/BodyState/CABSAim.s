.include "macros.inc"

.section .data

.global lbl_803E5CA0
lbl_803E5CA0:
	# ROM: 0x3E2CA0
	.4byte 0
	.4byte 0
	.4byte __dt__7CABSAimFv
	.4byte ApplyHeadTracking__18CAdditiveBodyStateCFv
	.4byte CanShoot__18CAdditiveBodyStateCFv
	.4byte Start__7CABSAimFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__7CABSAimFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__7CABSAimFR15CBodyController

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__7CABSAimFv
__dt__7CABSAimFv:
/* 801D9D18 001D6C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9D1C 001D6C7C  7C 08 02 A6 */	mflr r0
/* 801D9D20 001D6C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9D24 001D6C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9D28 001D6C88  7C 7F 1B 79 */	or. r31, r3, r3
/* 801D9D2C 001D6C8C  41 82 00 30 */	beq lbl_801D9D5C
/* 801D9D30 001D6C90  3C 60 80 3E */	lis r3, lbl_803E5CA0@ha
/* 801D9D34 001D6C94  38 03 5C A0 */	addi r0, r3, lbl_803E5CA0@l
/* 801D9D38 001D6C98  90 1F 00 00 */	stw r0, 0(r31)
/* 801D9D3C 001D6C9C  41 82 00 10 */	beq lbl_801D9D4C
/* 801D9D40 001D6CA0  3C 60 80 3E */	lis r3, lbl_803E1350@ha
/* 801D9D44 001D6CA4  38 03 13 50 */	addi r0, r3, lbl_803E1350@l
/* 801D9D48 001D6CA8  90 1F 00 00 */	stw r0, 0(r31)
lbl_801D9D4C:
/* 801D9D4C 001D6CAC  7C 80 07 35 */	extsh. r0, r4
/* 801D9D50 001D6CB0  40 81 00 0C */	ble lbl_801D9D5C
/* 801D9D54 001D6CB4  7F E3 FB 78 */	mr r3, r31
/* 801D9D58 001D6CB8  48 13 BB D9 */	bl Free__7CMemoryFPCv
lbl_801D9D5C:
/* 801D9D5C 001D6CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9D60 001D6CC0  7F E3 FB 78 */	mr r3, r31
/* 801D9D64 001D6CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9D68 001D6CC8  7C 08 03 A6 */	mtlr r0
/* 801D9D6C 001D6CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9D70 001D6CD0  4E 80 00 20 */	blr 

.global GetBodyStateTransition__7CABSAimFfR15CBodyController
GetBodyStateTransition__7CABSAimFfR15CBodyController:
/* 801D9D74 001D6CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9D78 001D6CD8  7C 08 02 A6 */	mflr r0
/* 801D9D7C 001D6CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9D80 001D6CE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9D84 001D6CE4  3B E4 00 04 */	addi r31, r4, 4
/* 801D9D88 001D6CE8  38 80 00 1A */	li r4, 0x1a
/* 801D9D8C 001D6CEC  93 C1 00 08 */	stw r30, 8(r1)
/* 801D9D90 001D6CF0  7C 7E 1B 78 */	mr r30, r3
/* 801D9D94 001D6CF4  7F E3 FB 78 */	mr r3, r31
/* 801D9D98 001D6CF8  4B F5 76 B9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801D9D9C 001D6CFC  28 03 00 00 */	cmplwi r3, 0
/* 801D9DA0 001D6D00  41 82 00 0C */	beq lbl_801D9DAC
/* 801D9DA4 001D6D04  38 60 00 18 */	li r3, 0x18
/* 801D9DA8 001D6D08  48 00 00 4C */	b lbl_801D9DF4
lbl_801D9DAC:
/* 801D9DAC 001D6D0C  7F E3 FB 78 */	mr r3, r31
/* 801D9DB0 001D6D10  38 80 00 19 */	li r4, 0x19
/* 801D9DB4 001D6D14  4B F5 76 9D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801D9DB8 001D6D18  28 03 00 00 */	cmplwi r3, 0
/* 801D9DBC 001D6D1C  41 82 00 0C */	beq lbl_801D9DC8
/* 801D9DC0 001D6D20  38 60 00 17 */	li r3, 0x17
/* 801D9DC4 001D6D24  48 00 00 30 */	b lbl_801D9DF4
lbl_801D9DC8:
/* 801D9DC8 001D6D28  7F E3 FB 78 */	mr r3, r31
/* 801D9DCC 001D6D2C  38 80 00 17 */	li r4, 0x17
/* 801D9DD0 001D6D30  4B F5 76 81 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801D9DD4 001D6D34  28 03 00 00 */	cmplwi r3, 0
/* 801D9DD8 001D6D38  40 82 00 10 */	bne lbl_801D9DE8
/* 801D9DDC 001D6D3C  88 1E 00 04 */	lbz r0, 4(r30)
/* 801D9DE0 001D6D40  28 00 00 00 */	cmplwi r0, 0
/* 801D9DE4 001D6D44  41 82 00 0C */	beq lbl_801D9DF0
lbl_801D9DE8:
/* 801D9DE8 001D6D48  38 60 00 15 */	li r3, 0x15
/* 801D9DEC 001D6D4C  48 00 00 08 */	b lbl_801D9DF4
lbl_801D9DF0:
/* 801D9DF0 001D6D50  38 60 FF FF */	li r3, -1
lbl_801D9DF4:
/* 801D9DF4 001D6D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9DF8 001D6D58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9DFC 001D6D5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D9E00 001D6D60  7C 08 03 A6 */	mtlr r0
/* 801D9E04 001D6D64  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9E08 001D6D68  4E 80 00 20 */	blr 

.global Shutdown__7CABSAimFR15CBodyController
Shutdown__7CABSAimFR15CBodyController:
/* 801D9E0C 001D6D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9E10 001D6D70  7C 08 02 A6 */	mflr r0
/* 801D9E14 001D6D74  C0 02 AC B0 */	lfs f0, lbl_805AC9D0@sda21(r2)
/* 801D9E18 001D6D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9E1C 001D6D7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9E20 001D6D80  93 C1 00 08 */	stw r30, 8(r1)
/* 801D9E24 001D6D84  7C 7E 1B 78 */	mr r30, r3
/* 801D9E28 001D6D88  80 64 00 00 */	lwz r3, 0(r4)
/* 801D9E2C 001D6D8C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 801D9E30 001D6D90  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801D9E34 001D6D94  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D9E38 001D6D98  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 801D9E3C 001D6D9C  41 82 00 2C */	beq lbl_801D9E68
/* 801D9E40 001D6DA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D9E44 001D6DA4  7F E3 FB 78 */	mr r3, r31
/* 801D9E48 001D6DA8  40 80 00 0C */	bge lbl_801D9E54
/* 801D9E4C 001D6DAC  38 00 00 00 */	li r0, 0
/* 801D9E50 001D6DB0  48 00 00 08 */	b lbl_801D9E58
lbl_801D9E54:
/* 801D9E54 001D6DB4  38 00 00 01 */	li r0, 1
lbl_801D9E58:
/* 801D9E58 001D6DB8  54 00 10 3A */	slwi r0, r0, 2
/* 801D9E5C 001D6DBC  7C 9E 02 14 */	add r4, r30, r0
/* 801D9E60 001D6DC0  80 84 00 08 */	lwz r4, 8(r4)
/* 801D9E64 001D6DC4  4B E5 02 F5 */	bl DelAdditiveAnimation__9CAnimDataFUi
lbl_801D9E68:
/* 801D9E68 001D6DC8  C0 02 AC B0 */	lfs f0, lbl_805AC9D0@sda21(r2)
/* 801D9E6C 001D6DCC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 801D9E70 001D6DD0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D9E74 001D6DD4  41 82 00 2C */	beq lbl_801D9EA0
/* 801D9E78 001D6DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D9E7C 001D6DDC  7F E3 FB 78 */	mr r3, r31
/* 801D9E80 001D6DE0  40 81 00 0C */	ble lbl_801D9E8C
/* 801D9E84 001D6DE4  38 00 00 02 */	li r0, 2
/* 801D9E88 001D6DE8  48 00 00 08 */	b lbl_801D9E90
lbl_801D9E8C:
/* 801D9E8C 001D6DEC  38 00 00 03 */	li r0, 3
lbl_801D9E90:
/* 801D9E90 001D6DF0  54 00 10 3A */	slwi r0, r0, 2
/* 801D9E94 001D6DF4  7C 9E 02 14 */	add r4, r30, r0
/* 801D9E98 001D6DF8  80 84 00 08 */	lwz r4, 8(r4)
/* 801D9E9C 001D6DFC  4B E5 02 BD */	bl DelAdditiveAnimation__9CAnimDataFUi
lbl_801D9EA0:
/* 801D9EA0 001D6E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9EA4 001D6E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9EA8 001D6E08  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D9EAC 001D6E0C  7C 08 03 A6 */	mtlr r0
/* 801D9EB0 001D6E10  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9EB4 001D6E14  4E 80 00 20 */	blr 

.global UpdateBody__7CABSAimFfR15CBodyControllerR13CStateManager
UpdateBody__7CABSAimFfR15CBodyControllerR13CStateManager:
/* 801D9EB8 001D6E18  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801D9EBC 001D6E1C  7C 08 02 A6 */	mflr r0
/* 801D9EC0 001D6E20  90 01 00 74 */	stw r0, 0x74(r1)
/* 801D9EC4 001D6E24  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801D9EC8 001D6E28  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801D9ECC 001D6E2C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801D9ED0 001D6E30  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 801D9ED4 001D6E34  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 801D9ED8 001D6E38  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 801D9EDC 001D6E3C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801D9EE0 001D6E40  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801D9EE4 001D6E44  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801D9EE8 001D6E48  FF C0 08 90 */	fmr f30, f1
/* 801D9EEC 001D6E4C  7C 7E 1B 78 */	mr r30, r3
/* 801D9EF0 001D6E50  7C 9D 23 78 */	mr r29, r4
/* 801D9EF4 001D6E54  4B FF FE 81 */	bl GetBodyStateTransition__7CABSAimFfR15CBodyController
/* 801D9EF8 001D6E58  7C 7F 1B 78 */	mr r31, r3
/* 801D9EFC 001D6E5C  2C 1F FF FF */	cmpwi r31, -1
/* 801D9F00 001D6E60  40 82 02 F4 */	bne lbl_801DA1F4
/* 801D9F04 001D6E64  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 801D9F08 001D6E68  38 61 00 20 */	addi r3, r1, 0x20
/* 801D9F0C 001D6E6C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801D9F10 001D6E70  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 801D9F14 001D6E74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801D9F18 001D6E78  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 801D9F1C 001D6E7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801D9F20 001D6E80  48 13 A7 D9 */	bl CanBeNormalized__9CVector3fCFv
/* 801D9F24 001D6E84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9F28 001D6E88  41 82 02 CC */	beq lbl_801DA1F4
/* 801D9F2C 001D6E8C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801D9F30 001D6E90  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801D9F34 001D6E94  48 1B AD 39 */	bl atan2
/* 801D9F38 001D6E98  FC 00 08 18 */	frsp f0, f1
/* 801D9F3C 001D6E9C  38 61 00 0C */	addi r3, r1, 0xc
/* 801D9F40 001D6EA0  38 81 00 1C */	addi r4, r1, 0x1c
/* 801D9F44 001D6EA4  38 BE 00 1C */	addi r5, r30, 0x1c
/* 801D9F48 001D6EA8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801D9F4C 001D6EAC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 801D9F50 001D6EB0  FC 00 00 50 */	fneg f0, f0
/* 801D9F54 001D6EB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801D9F58 001D6EB8  4B E3 23 5D */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801D9F5C 001D6EBC  C0 23 00 00 */	lfs f1, 0(r3)
/* 801D9F60 001D6EC0  38 81 00 18 */	addi r4, r1, 0x18
/* 801D9F64 001D6EC4  C0 02 AC BC */	lfs f0, lbl_805AC9DC@sda21(r2)
/* 801D9F68 001D6EC8  38 6D 91 D8 */	addi r3, r13, lbl_805A7D98@sda21
/* 801D9F6C 001D6ECC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801D9F70 001D6ED0  38 A2 AC B4 */	addi r5, r2, lbl_805AC9D4@sda21
/* 801D9F74 001D6ED4  EC 40 00 72 */	fmuls f2, f0, f1
/* 801D9F78 001D6ED8  C0 22 AC C0 */	lfs f1, lbl_805AC9E0@sda21(r2)
/* 801D9F7C 001D6EDC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801D9F80 001D6EE0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 801D9F84 001D6EE4  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D9F88 001D6EE8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D9F8C 001D6EEC  EC 00 F0 24 */	fdivs f0, f0, f30
/* 801D9F90 001D6EF0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801D9F94 001D6EF4  4B E3 23 21 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801D9F98 001D6EF8  C0 23 00 00 */	lfs f1, 0(r3)
/* 801D9F9C 001D6EFC  38 81 00 14 */	addi r4, r1, 0x14
/* 801D9FA0 001D6F00  38 6D 91 DC */	addi r3, r13, lbl_805A7D9C@sda21
/* 801D9FA4 001D6F04  38 A2 AC B8 */	addi r5, r2, lbl_805AC9D8@sda21
/* 801D9FA8 001D6F08  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801D9FAC 001D6F0C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 801D9FB0 001D6F10  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D9FB4 001D6F14  EC 00 F0 24 */	fdivs f0, f0, f30
/* 801D9FB8 001D6F18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801D9FBC 001D6F1C  4B E3 22 F9 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801D9FC0 001D6F20  C0 23 00 00 */	lfs f1, 0(r3)
/* 801D9FC4 001D6F24  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 801D9FC8 001D6F28  EC 1E 00 7A */	fmadds f0, f30, f1, f0
/* 801D9FCC 001D6F2C  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 801D9FD0 001D6F30  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801D9FD4 001D6F34  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801D9FD8 001D6F38  EC 21 00 72 */	fmuls f1, f1, f1
/* 801D9FDC 001D6F3C  EC 00 00 32 */	fmuls f0, f0, f0
/* 801D9FE0 001D6F40  EC 21 00 2A */	fadds f1, f1, f0
/* 801D9FE4 001D6F44  48 13 B5 1D */	bl SqrtF__5CMathFf
/* 801D9FE8 001D6F48  FC 40 08 90 */	fmr f2, f1
/* 801D9FEC 001D6F4C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801D9FF0 001D6F50  48 1B AC 7D */	bl atan2
/* 801D9FF4 001D6F54  FC 00 08 18 */	frsp f0, f1
/* 801D9FF8 001D6F58  38 61 00 08 */	addi r3, r1, 8
/* 801D9FFC 001D6F5C  38 81 00 10 */	addi r4, r1, 0x10
/* 801DA000 001D6F60  38 BE 00 20 */	addi r5, r30, 0x20
/* 801DA004 001D6F64  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801DA008 001D6F68  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 801DA00C 001D6F6C  FC 00 00 50 */	fneg f0, f0
/* 801DA010 001D6F70  D0 01 00 08 */	stfs f0, 8(r1)
/* 801DA014 001D6F74  4B E3 22 A1 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801DA018 001D6F78  C0 23 00 00 */	lfs f1, 0(r3)
/* 801DA01C 001D6F7C  38 81 00 18 */	addi r4, r1, 0x18
/* 801DA020 001D6F80  C0 02 AC BC */	lfs f0, lbl_805AC9DC@sda21(r2)
/* 801DA024 001D6F84  38 6D 91 E0 */	addi r3, r13, lbl_805A7DA0@sda21
/* 801DA028 001D6F88  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801DA02C 001D6F8C  38 A2 AC B4 */	addi r5, r2, lbl_805AC9D4@sda21
/* 801DA030 001D6F90  EC 40 00 72 */	fmuls f2, f0, f1
/* 801DA034 001D6F94  C0 22 AC C0 */	lfs f1, lbl_805AC9E0@sda21(r2)
/* 801DA038 001D6F98  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801DA03C 001D6F9C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 801DA040 001D6FA0  EC 02 00 28 */	fsubs f0, f2, f0
/* 801DA044 001D6FA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801DA048 001D6FA8  EC 00 F0 24 */	fdivs f0, f0, f30
/* 801DA04C 001D6FAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801DA050 001D6FB0  4B E3 22 65 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801DA054 001D6FB4  C0 23 00 00 */	lfs f1, 0(r3)
/* 801DA058 001D6FB8  38 81 00 14 */	addi r4, r1, 0x14
/* 801DA05C 001D6FBC  38 6D 91 E4 */	addi r3, r13, lbl_805A7DA4@sda21
/* 801DA060 001D6FC0  38 A2 AC B8 */	addi r5, r2, lbl_805AC9D8@sda21
/* 801DA064 001D6FC4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801DA068 001D6FC8  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 801DA06C 001D6FCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DA070 001D6FD0  EC 00 F0 24 */	fdivs f0, f0, f30
/* 801DA074 001D6FD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801DA078 001D6FD8  4B E3 22 3D */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801DA07C 001D6FDC  C0 23 00 00 */	lfs f1, 0(r3)
/* 801DA080 001D6FE0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 801DA084 001D6FE4  EC 1E 00 7A */	fmadds f0, f30, f1, f0
/* 801DA088 001D6FE8  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 801DA08C 001D6FEC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 801DA090 001D6FF0  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 801DA094 001D6FF4  80 7D 00 00 */	lwz r3, 0(r29)
/* 801DA098 001D6FF8  EF FE 18 3A */	fmadds f31, f30, f0, f3
/* 801DA09C 001D6FFC  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 801DA0A0 001D7000  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 801DA0A4 001D7004  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801DA0A8 001D7008  FC 1F 18 00 */	fcmpu cr0, f31, f3
/* 801DA0AC 001D700C  EF BE 00 7A */	fmadds f29, f30, f1, f0
/* 801DA0B0 001D7010  83 A3 00 10 */	lwz r29, 0x10(r3)
/* 801DA0B4 001D7014  41 82 00 98 */	beq lbl_801DA14C
/* 801DA0B8 001D7018  FC 00 1A 10 */	fabs f0, f3
/* 801DA0BC 001D701C  C0 22 AC B0 */	lfs f1, lbl_805AC9D0@sda21(r2)
/* 801DA0C0 001D7020  FC 40 FA 10 */	fabs f2, f31
/* 801DA0C4 001D7024  FC 00 00 18 */	frsp f0, f0
/* 801DA0C8 001D7028  FF C0 10 18 */	frsp f30, f2
/* 801DA0CC 001D702C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DA0D0 001D7030  40 81 00 3C */	ble lbl_801DA10C
/* 801DA0D4 001D7034  EC 03 07 F2 */	fmuls f0, f3, f31
/* 801DA0D8 001D7038  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DA0DC 001D703C  4C 40 13 82 */	cror 2, 0, 2
/* 801DA0E0 001D7040  40 82 00 2C */	bne lbl_801DA10C
/* 801DA0E4 001D7044  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 801DA0E8 001D7048  7F A3 EB 78 */	mr r3, r29
/* 801DA0EC 001D704C  40 80 00 0C */	bge lbl_801DA0F8
/* 801DA0F0 001D7050  38 00 00 00 */	li r0, 0
/* 801DA0F4 001D7054  48 00 00 08 */	b lbl_801DA0FC
lbl_801DA0F8:
/* 801DA0F8 001D7058  38 00 00 01 */	li r0, 1
lbl_801DA0FC:
/* 801DA0FC 001D705C  54 00 10 3A */	slwi r0, r0, 2
/* 801DA100 001D7060  7C 9E 02 14 */	add r4, r30, r0
/* 801DA104 001D7064  80 84 00 08 */	lwz r4, 8(r4)
/* 801DA108 001D7068  4B E5 00 51 */	bl DelAdditiveAnimation__9CAnimDataFUi
lbl_801DA10C:
/* 801DA10C 001D706C  C0 02 AC B0 */	lfs f0, lbl_805AC9D0@sda21(r2)
/* 801DA110 001D7070  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801DA114 001D7074  40 81 00 38 */	ble lbl_801DA14C
/* 801DA118 001D7078  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801DA11C 001D707C  7F A3 EB 78 */	mr r3, r29
/* 801DA120 001D7080  40 80 00 0C */	bge lbl_801DA12C
/* 801DA124 001D7084  38 00 00 00 */	li r0, 0
/* 801DA128 001D7088  48 00 00 08 */	b lbl_801DA130
lbl_801DA12C:
/* 801DA12C 001D708C  38 00 00 01 */	li r0, 1
lbl_801DA130:
/* 801DA130 001D7090  54 00 10 3A */	slwi r0, r0, 2
/* 801DA134 001D7094  FC 20 F0 90 */	fmr f1, f30
/* 801DA138 001D7098  7C 9E 02 14 */	add r4, r30, r0
/* 801DA13C 001D709C  38 A0 00 00 */	li r5, 0
/* 801DA140 001D70A0  80 84 00 08 */	lwz r4, 8(r4)
/* 801DA144 001D70A4  38 C0 00 00 */	li r6, 0
/* 801DA148 001D70A8  4B E5 00 89 */	bl AddAdditiveAnimation__9CAnimDataFUifbb
lbl_801DA14C:
/* 801DA14C 001D70AC  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 801DA150 001D70B0  FC 1D 10 00 */	fcmpu cr0, f29, f2
/* 801DA154 001D70B4  41 82 00 98 */	beq lbl_801DA1EC
/* 801DA158 001D70B8  FC 00 12 10 */	fabs f0, f2
/* 801DA15C 001D70BC  C0 22 AC B0 */	lfs f1, lbl_805AC9D0@sda21(r2)
/* 801DA160 001D70C0  FC 60 EA 10 */	fabs f3, f29
/* 801DA164 001D70C4  FC 00 00 18 */	frsp f0, f0
/* 801DA168 001D70C8  FF C0 18 18 */	frsp f30, f3
/* 801DA16C 001D70CC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DA170 001D70D0  40 81 00 3C */	ble lbl_801DA1AC
/* 801DA174 001D70D4  EC 02 07 72 */	fmuls f0, f2, f29
/* 801DA178 001D70D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DA17C 001D70DC  4C 40 13 82 */	cror 2, 0, 2
/* 801DA180 001D70E0  40 82 00 2C */	bne lbl_801DA1AC
/* 801DA184 001D70E4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801DA188 001D70E8  7F A3 EB 78 */	mr r3, r29
/* 801DA18C 001D70EC  40 81 00 0C */	ble lbl_801DA198
/* 801DA190 001D70F0  38 00 00 02 */	li r0, 2
/* 801DA194 001D70F4  48 00 00 08 */	b lbl_801DA19C
lbl_801DA198:
/* 801DA198 001D70F8  38 00 00 03 */	li r0, 3
lbl_801DA19C:
/* 801DA19C 001D70FC  54 00 10 3A */	slwi r0, r0, 2
/* 801DA1A0 001D7100  7C 9E 02 14 */	add r4, r30, r0
/* 801DA1A4 001D7104  80 84 00 08 */	lwz r4, 8(r4)
/* 801DA1A8 001D7108  4B E4 FF B1 */	bl DelAdditiveAnimation__9CAnimDataFUi
lbl_801DA1AC:
/* 801DA1AC 001D710C  C0 02 AC B0 */	lfs f0, lbl_805AC9D0@sda21(r2)
/* 801DA1B0 001D7110  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801DA1B4 001D7114  40 81 00 38 */	ble lbl_801DA1EC
/* 801DA1B8 001D7118  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 801DA1BC 001D711C  7F A3 EB 78 */	mr r3, r29
/* 801DA1C0 001D7120  40 81 00 0C */	ble lbl_801DA1CC
/* 801DA1C4 001D7124  38 00 00 02 */	li r0, 2
/* 801DA1C8 001D7128  48 00 00 08 */	b lbl_801DA1D0
lbl_801DA1CC:
/* 801DA1CC 001D712C  38 00 00 03 */	li r0, 3
lbl_801DA1D0:
/* 801DA1D0 001D7130  54 00 10 3A */	slwi r0, r0, 2
/* 801DA1D4 001D7134  FC 20 F0 90 */	fmr f1, f30
/* 801DA1D8 001D7138  7C 9E 02 14 */	add r4, r30, r0
/* 801DA1DC 001D713C  38 A0 00 00 */	li r5, 0
/* 801DA1E0 001D7140  80 84 00 08 */	lwz r4, 8(r4)
/* 801DA1E4 001D7144  38 C0 00 00 */	li r6, 0
/* 801DA1E8 001D7148  4B E4 FF E9 */	bl AddAdditiveAnimation__9CAnimDataFUifbb
lbl_801DA1EC:
/* 801DA1EC 001D714C  D3 FE 00 28 */	stfs f31, 0x28(r30)
/* 801DA1F0 001D7150  D3 BE 00 30 */	stfs f29, 0x30(r30)
lbl_801DA1F4:
/* 801DA1F4 001D7154  7F E3 FB 78 */	mr r3, r31
/* 801DA1F8 001D7158  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801DA1FC 001D715C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801DA200 001D7160  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 801DA204 001D7164  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801DA208 001D7168  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 801DA20C 001D716C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 801DA210 001D7170  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801DA214 001D7174  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801DA218 001D7178  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801DA21C 001D717C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801DA220 001D7180  7C 08 03 A6 */	mtlr r0
/* 801DA224 001D7184  38 21 00 70 */	addi r1, r1, 0x70
/* 801DA228 001D7188  4E 80 00 20 */	blr 

.global Start__7CABSAimFR15CBodyControllerR13CStateManager
Start__7CABSAimFR15CBodyControllerR13CStateManager:
/* 801DA22C 001D718C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 801DA230 001D7190  7C 08 02 A6 */	mflr r0
/* 801DA234 001D7194  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 801DA238 001D7198  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 801DA23C 001D719C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 801DA240 001D71A0  BE E1 00 BC */	stmw r23, 0xbc(r1)
/* 801DA244 001D71A4  7C 9A 23 78 */	mr r26, r4
/* 801DA248 001D71A8  7C 79 1B 78 */	mr r25, r3
/* 801DA24C 001D71AC  7C BB 2B 78 */	mr r27, r5
/* 801DA250 001D71B0  38 80 00 18 */	li r4, 0x18
/* 801DA254 001D71B4  38 7A 00 04 */	addi r3, r26, 4
/* 801DA258 001D71B8  4B F5 71 F9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DA25C 001D71BC  7F 43 D3 78 */	mr r3, r26
/* 801DA260 001D71C0  4B F6 01 F5 */	bl GetPASDatabase__15CBodyControllerCFv
/* 801DA264 001D71C4  38 80 00 16 */	li r4, 0x16
/* 801DA268 001D71C8  48 10 AC 5D */	bl GetAnimState__12CPASDatabaseCFi
/* 801DA26C 001D71CC  C3 E2 AC C4 */	lfs f31, lbl_805AC9E4@sda21(r2)
/* 801DA270 001D71D0  7C 7D 1B 78 */	mr r29, r3
/* 801DA274 001D71D4  7F 3F CB 78 */	mr r31, r25
/* 801DA278 001D71D8  3B C1 00 6C */	addi r30, r1, 0x6c
/* 801DA27C 001D71DC  3A E1 00 28 */	addi r23, r1, 0x28
/* 801DA280 001D71E0  3B 01 00 20 */	addi r24, r1, 0x20
/* 801DA284 001D71E4  3B 80 00 00 */	li r28, 0
lbl_801DA288:
/* 801DA288 001D71E8  38 61 00 20 */	addi r3, r1, 0x20
/* 801DA28C 001D71EC  48 10 8D F1 */	bl NoParameter__12CPASAnimParmFv
/* 801DA290 001D71F0  38 61 00 28 */	addi r3, r1, 0x28
/* 801DA294 001D71F4  48 10 8D E9 */	bl NoParameter__12CPASAnimParmFv
/* 801DA298 001D71F8  38 61 00 30 */	addi r3, r1, 0x30
/* 801DA29C 001D71FC  48 10 8D E1 */	bl NoParameter__12CPASAnimParmFv
/* 801DA2A0 001D7200  38 61 00 38 */	addi r3, r1, 0x38
/* 801DA2A4 001D7204  48 10 8D D9 */	bl NoParameter__12CPASAnimParmFv
/* 801DA2A8 001D7208  38 61 00 40 */	addi r3, r1, 0x40
/* 801DA2AC 001D720C  48 10 8D D1 */	bl NoParameter__12CPASAnimParmFv
/* 801DA2B0 001D7210  38 61 00 48 */	addi r3, r1, 0x48
/* 801DA2B4 001D7214  48 10 8D C9 */	bl NoParameter__12CPASAnimParmFv
/* 801DA2B8 001D7218  38 61 00 50 */	addi r3, r1, 0x50
/* 801DA2BC 001D721C  48 10 8D C1 */	bl NoParameter__12CPASAnimParmFv
/* 801DA2C0 001D7220  7F 84 E3 78 */	mr r4, r28
/* 801DA2C4 001D7224  38 61 00 58 */	addi r3, r1, 0x58
/* 801DA2C8 001D7228  48 10 8C BD */	bl FromEnum__12CPASAnimParmFi
/* 801DA2CC 001D722C  92 E1 00 08 */	stw r23, 8(r1)
/* 801DA2D0 001D7230  38 61 00 68 */	addi r3, r1, 0x68
/* 801DA2D4 001D7234  38 A1 00 58 */	addi r5, r1, 0x58
/* 801DA2D8 001D7238  38 C1 00 50 */	addi r6, r1, 0x50
/* 801DA2DC 001D723C  93 01 00 0C */	stw r24, 0xc(r1)
/* 801DA2E0 001D7240  38 E1 00 48 */	addi r7, r1, 0x48
/* 801DA2E4 001D7244  39 01 00 40 */	addi r8, r1, 0x40
/* 801DA2E8 001D7248  39 21 00 38 */	addi r9, r1, 0x38
/* 801DA2EC 001D724C  39 41 00 30 */	addi r10, r1, 0x30
/* 801DA2F0 001D7250  38 80 00 16 */	li r4, 0x16
/* 801DA2F4 001D7254  4B EA 2F D1 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801DA2F8 001D7258  7F 43 D3 78 */	mr r3, r26
/* 801DA2FC 001D725C  4B F6 01 59 */	bl GetPASDatabase__15CBodyControllerCFv
/* 801DA300 001D7260  80 DB 09 00 */	lwz r6, 0x900(r27)
/* 801DA304 001D7264  7C 64 1B 78 */	mr r4, r3
/* 801DA308 001D7268  38 61 00 18 */	addi r3, r1, 0x18
/* 801DA30C 001D726C  38 A1 00 68 */	addi r5, r1, 0x68
/* 801DA310 001D7270  38 E0 FF FF */	li r7, -1
/* 801DA314 001D7274  48 10 AD 4D */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 801DA318 001D7278  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801DA31C 001D727C  7F A4 EB 78 */	mr r4, r29
/* 801DA320 001D7280  38 61 00 10 */	addi r3, r1, 0x10
/* 801DA324 001D7284  38 C0 00 01 */	li r6, 1
/* 801DA328 001D7288  90 1F 00 08 */	stw r0, 8(r31)
/* 801DA32C 001D728C  80 BF 00 08 */	lwz r5, 8(r31)
/* 801DA330 001D7290  48 10 9C C5 */	bl GetAnimParmData__13CPASAnimStateCFiUi
/* 801DA334 001D7294  80 81 00 10 */	lwz r4, 0x10(r1)
/* 801DA338 001D7298  38 61 00 60 */	addi r3, r1, 0x60
/* 801DA33C 001D729C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DA340 001D72A0  90 81 00 60 */	stw r4, 0x60(r1)
/* 801DA344 001D72A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 801DA348 001D72A8  48 10 8C 25 */	bl GetReal32Value__12CPASAnimParmCFv
/* 801DA34C 001D72AC  EC 1F 00 72 */	fmuls f0, f31, f1
/* 801DA350 001D72B0  28 1E 00 00 */	cmplwi r30, 0
/* 801DA354 001D72B4  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 801DA358 001D72B8  41 82 00 5C */	beq lbl_801DA3B4
/* 801DA35C 001D72BC  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 801DA360 001D72C0  38 60 00 00 */	li r3, 0
/* 801DA364 001D72C4  2C 05 00 00 */	cmpwi r5, 0
/* 801DA368 001D72C8  40 81 00 44 */	ble lbl_801DA3AC
/* 801DA36C 001D72CC  2C 05 00 08 */	cmpwi r5, 8
/* 801DA370 001D72D0  38 85 FF F8 */	addi r4, r5, -8
/* 801DA374 001D72D4  40 81 00 20 */	ble lbl_801DA394
/* 801DA378 001D72D8  38 04 00 07 */	addi r0, r4, 7
/* 801DA37C 001D72DC  54 00 E8 FE */	srwi r0, r0, 3
/* 801DA380 001D72E0  7C 09 03 A6 */	mtctr r0
/* 801DA384 001D72E4  2C 04 00 00 */	cmpwi r4, 0
/* 801DA388 001D72E8  40 81 00 0C */	ble lbl_801DA394
lbl_801DA38C:
/* 801DA38C 001D72EC  38 63 00 08 */	addi r3, r3, 8
/* 801DA390 001D72F0  42 00 FF FC */	bdnz lbl_801DA38C
lbl_801DA394:
/* 801DA394 001D72F4  7C 03 28 50 */	subf r0, r3, r5
/* 801DA398 001D72F8  7C 09 03 A6 */	mtctr r0
/* 801DA39C 001D72FC  7C 03 28 00 */	cmpw r3, r5
/* 801DA3A0 001D7300  40 80 00 0C */	bge lbl_801DA3AC
lbl_801DA3A4:
/* 801DA3A4 001D7304  38 63 00 01 */	addi r3, r3, 1
/* 801DA3A8 001D7308  42 00 FF FC */	bdnz lbl_801DA3A4
lbl_801DA3AC:
/* 801DA3AC 001D730C  38 00 00 00 */	li r0, 0
/* 801DA3B0 001D7310  90 01 00 6C */	stw r0, 0x6c(r1)
lbl_801DA3B4:
/* 801DA3B4 001D7314  3B 9C 00 01 */	addi r28, r28, 1
/* 801DA3B8 001D7318  3B FF 00 04 */	addi r31, r31, 4
/* 801DA3BC 001D731C  2C 1C 00 04 */	cmpwi r28, 4
/* 801DA3C0 001D7320  41 80 FE C8 */	blt lbl_801DA288
/* 801DA3C4 001D7324  80 7A 00 00 */	lwz r3, 0(r26)
/* 801DA3C8 001D7328  80 99 00 08 */	lwz r4, 8(r25)
/* 801DA3CC 001D732C  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801DA3D0 001D7330  82 E3 00 10 */	lwz r23, 0x10(r3)
/* 801DA3D4 001D7334  7E E3 BB 78 */	mr r3, r23
/* 801DA3D8 001D7338  4B E4 FD 39 */	bl GetAdditiveAnimationWeight__9CAnimDataFUi
/* 801DA3DC 001D733C  FC 00 08 50 */	fneg f0, f1
/* 801DA3E0 001D7340  7E E3 BB 78 */	mr r3, r23
/* 801DA3E4 001D7344  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 801DA3E8 001D7348  80 99 00 0C */	lwz r4, 0xc(r25)
/* 801DA3EC 001D734C  4B E4 FD 25 */	bl GetAdditiveAnimationWeight__9CAnimDataFUi
/* 801DA3F0 001D7350  C0 19 00 28 */	lfs f0, 0x28(r25)
/* 801DA3F4 001D7354  7E E3 BB 78 */	mr r3, r23
/* 801DA3F8 001D7358  EC 00 08 2A */	fadds f0, f0, f1
/* 801DA3FC 001D735C  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 801DA400 001D7360  80 99 00 14 */	lwz r4, 0x14(r25)
/* 801DA404 001D7364  4B E4 FD 0D */	bl GetAdditiveAnimationWeight__9CAnimDataFUi
/* 801DA408 001D7368  FC 00 08 50 */	fneg f0, f1
/* 801DA40C 001D736C  7E E3 BB 78 */	mr r3, r23
/* 801DA410 001D7370  D0 19 00 30 */	stfs f0, 0x30(r25)
/* 801DA414 001D7374  80 99 00 10 */	lwz r4, 0x10(r25)
/* 801DA418 001D7378  4B E4 FC F9 */	bl GetAdditiveAnimationWeight__9CAnimDataFUi
/* 801DA41C 001D737C  C0 19 00 30 */	lfs f0, 0x30(r25)
/* 801DA420 001D7380  38 00 00 00 */	li r0, 0
/* 801DA424 001D7384  38 7A 00 04 */	addi r3, r26, 4
/* 801DA428 001D7388  38 80 00 17 */	li r4, 0x17
/* 801DA42C 001D738C  EC 00 08 2A */	fadds f0, f0, f1
/* 801DA430 001D7390  D0 19 00 30 */	stfs f0, 0x30(r25)
/* 801DA434 001D7394  98 19 00 04 */	stb r0, 4(r25)
/* 801DA438 001D7398  4B F5 70 19 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DA43C 001D739C  28 03 00 00 */	cmplwi r3, 0
/* 801DA440 001D73A0  41 82 00 0C */	beq lbl_801DA44C
/* 801DA444 001D73A4  38 00 00 01 */	li r0, 1
/* 801DA448 001D73A8  98 19 00 04 */	stb r0, 4(r25)
lbl_801DA44C:
/* 801DA44C 001D73AC  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 801DA450 001D73B0  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 801DA454 001D73B4  BA E1 00 BC */	lmw r23, 0xbc(r1)
/* 801DA458 001D73B8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 801DA45C 001D73BC  7C 08 03 A6 */	mtlr r0
/* 801DA460 001D73C0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 801DA464 001D73C4  4E 80 00 20 */	blr 

.global __ct__7CABSAimFv
__ct__7CABSAimFv:
/* 801DA468 001D73C8  3C A0 80 3E */	lis r5, lbl_803E1350@ha
/* 801DA46C 001D73CC  3C 80 80 3E */	lis r4, lbl_803E5CA0@ha
/* 801DA470 001D73D0  38 A5 13 50 */	addi r5, r5, lbl_803E1350@l
/* 801DA474 001D73D4  38 00 00 00 */	li r0, 0
/* 801DA478 001D73D8  90 A3 00 00 */	stw r5, 0(r3)
/* 801DA47C 001D73DC  38 84 5C A0 */	addi r4, r4, lbl_803E5CA0@l
/* 801DA480 001D73E0  C0 02 AC B0 */	lfs f0, lbl_805AC9D0@sda21(r2)
/* 801DA484 001D73E4  90 83 00 00 */	stw r4, 0(r3)
/* 801DA488 001D73E8  98 03 00 04 */	stb r0, 4(r3)
/* 801DA48C 001D73EC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 801DA490 001D73F0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801DA494 001D73F4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 801DA498 001D73F8  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 801DA49C 001D73FC  4E 80 00 20 */	blr