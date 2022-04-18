.include "macros.inc"

.section .data

.global lbl_803E1370
lbl_803E1370:
	# ROM: 0x3DE370
	.4byte 0
	.4byte 0
	.4byte __dt__9CBSAttackFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__10CBodyStateCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__9CBSAttackCFv
	.4byte Start__9CBSAttackFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__9CBSAttackFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__9CBSAttackFR15CBodyController

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__9CBSAttackFv
__dt__9CBSAttackFv:
/* 80134DD4 00131D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134DD8 00131D38  7C 08 02 A6 */	mflr r0
/* 80134DDC 00131D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134DE0 00131D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80134DE4 00131D44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80134DE8 00131D48  41 82 00 5C */	beq lbl_80134E44
/* 80134DEC 00131D4C  3C 60 80 3E */	lis r3, lbl_803E1370@ha
/* 80134DF0 00131D50  34 1F 00 08 */	addic. r0, r31, 8
/* 80134DF4 00131D54  38 03 13 70 */	addi r0, r3, lbl_803E1370@l
/* 80134DF8 00131D58  90 1F 00 00 */	stw r0, 0(r31)
/* 80134DFC 00131D5C  41 82 00 24 */	beq lbl_80134E20
/* 80134E00 00131D60  3C 60 80 3E */	lis r3, lbl_803DAA08@ha
/* 80134E04 00131D64  34 1F 00 08 */	addic. r0, r31, 8
/* 80134E08 00131D68  38 03 AA 08 */	addi r0, r3, lbl_803DAA08@l
/* 80134E0C 00131D6C  90 1F 00 08 */	stw r0, 8(r31)
/* 80134E10 00131D70  41 82 00 10 */	beq lbl_80134E20
/* 80134E14 00131D74  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80134E18 00131D78  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80134E1C 00131D7C  90 1F 00 08 */	stw r0, 8(r31)
lbl_80134E20:
/* 80134E20 00131D80  28 1F 00 00 */	cmplwi r31, 0
/* 80134E24 00131D84  41 82 00 10 */	beq lbl_80134E34
/* 80134E28 00131D88  3C 60 80 3E */	lis r3, lbl_803E1318@ha
/* 80134E2C 00131D8C  38 03 13 18 */	addi r0, r3, lbl_803E1318@l
/* 80134E30 00131D90  90 1F 00 00 */	stw r0, 0(r31)
lbl_80134E34:
/* 80134E34 00131D94  7C 80 07 35 */	extsh. r0, r4
/* 80134E38 00131D98  40 81 00 0C */	ble lbl_80134E44
/* 80134E3C 00131D9C  7F E3 FB 78 */	mr r3, r31
/* 80134E40 00131DA0  48 1E 0A F1 */	bl Free__7CMemoryFPCv
lbl_80134E44:
/* 80134E44 00131DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134E48 00131DA8  7F E3 FB 78 */	mr r3, r31
/* 80134E4C 00131DAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80134E50 00131DB0  7C 08 03 A6 */	mtlr r0
/* 80134E54 00131DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80134E58 00131DB8  4E 80 00 20 */	blr 

.global CanShoot__9CBSAttackCFv
CanShoot__9CBSAttackCFv:
/* 80134E5C 00131DBC  38 60 00 00 */	li r3, 0
/* 80134E60 00131DC0  4E 80 00 20 */	blr 

.global UpdatePhysicsActor__9CBSAttackFR15CBodyControllerf
UpdatePhysicsActor__9CBSAttackFR15CBodyControllerf:
/* 80134E64 00131DC4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80134E68 00131DC8  7C 08 02 A6 */	mflr r0
/* 80134E6C 00131DCC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80134E70 00131DD0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80134E74 00131DD4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80134E78 00131DD8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80134E7C 00131DDC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80134E80 00131DE0  C0 42 99 A0 */	lfs f2, lbl_805AB6C0@sda21(r2)
/* 80134E84 00131DE4  FF E0 08 90 */	fmr f31, f1
/* 80134E88 00131DE8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80134E8C 00131DEC  7C 7E 1B 78 */	mr r30, r3
/* 80134E90 00131DF0  38 00 00 00 */	li r0, 0
/* 80134E94 00131DF4  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80134E98 00131DF8  40 82 00 1C */	bne lbl_80134EB4
/* 80134E9C 00131DFC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80134EA0 00131E00  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80134EA4 00131E04  40 82 00 10 */	bne lbl_80134EB4
/* 80134EA8 00131E08  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80134EAC 00131E0C  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80134EB0 00131E10  41 82 00 08 */	beq lbl_80134EB8
lbl_80134EB4:
/* 80134EB4 00131E14  38 00 00 01 */	li r0, 1
lbl_80134EB8:
/* 80134EB8 00131E18  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80134EBC 00131E1C  41 82 01 18 */	beq lbl_80134FD4
/* 80134EC0 00131E20  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80134EC4 00131E24  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80134EC8 00131E28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80134ECC 00131E2C  4C 41 13 82 */	cror 2, 1, 2
/* 80134ED0 00131E30  40 82 01 04 */	bne lbl_80134FD4
/* 80134ED4 00131E34  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80134ED8 00131E38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80134EDC 00131E3C  4C 40 13 82 */	cror 2, 0, 2
/* 80134EE0 00131E40  40 82 00 F4 */	bne lbl_80134FD4
/* 80134EE4 00131E44  80 84 00 00 */	lwz r4, 0(r4)
/* 80134EE8 00131E48  38 61 00 08 */	addi r3, r1, 8
/* 80134EEC 00131E4C  4B F7 77 F9 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 80134EF0 00131E50  83 E3 00 04 */	lwz r31, 4(r3)
/* 80134EF4 00131E54  28 1F 00 00 */	cmplwi r31, 0
/* 80134EF8 00131E58  41 82 00 DC */	beq lbl_80134FD4
/* 80134EFC 00131E5C  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80134F00 00131E60  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80134F04 00131E64  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 80134F08 00131E68  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80134F0C 00131E6C  EC A2 08 28 */	fsubs f5, f2, f1
/* 80134F10 00131E70  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80134F14 00131E74  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80134F18 00131E78  EC 83 00 28 */	fsubs f4, f3, f0
/* 80134F1C 00131E7C  C0 02 99 A0 */	lfs f0, lbl_805AB6C0@sda21(r2)
/* 80134F20 00131E80  EC 62 08 28 */	fsubs f3, f2, f1
/* 80134F24 00131E84  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 80134F28 00131E88  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80134F2C 00131E8C  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80134F30 00131E90  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80134F34 00131E94  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80134F38 00131E98  EC 22 08 28 */	fsubs f1, f2, f1
/* 80134F3C 00131E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80134F40 00131EA0  40 81 00 28 */	ble lbl_80134F68
/* 80134F44 00131EA4  EC 1F 08 24 */	fdivs f0, f31, f1
/* 80134F48 00131EA8  38 C1 00 28 */	addi r6, r1, 0x28
/* 80134F4C 00131EAC  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80134F50 00131EB0  EC 20 01 72 */	fmuls f1, f0, f5
/* 80134F54 00131EB4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80134F58 00131EB8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80134F5C 00131EBC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80134F60 00131EC0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80134F64 00131EC4  48 00 00 08 */	b lbl_80134F6C
lbl_80134F68:
/* 80134F68 00131EC8  38 C1 00 4C */	addi r6, r1, 0x4c
lbl_80134F6C:
/* 80134F6C 00131ECC  C0 06 00 00 */	lfs f0, 0(r6)
/* 80134F70 00131ED0  38 61 00 10 */	addi r3, r1, 0x10
/* 80134F74 00131ED4  38 9F 00 34 */	addi r4, r31, 0x34
/* 80134F78 00131ED8  38 A1 00 40 */	addi r5, r1, 0x40
/* 80134F7C 00131EDC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80134F80 00131EE0  C0 06 00 04 */	lfs f0, 4(r6)
/* 80134F84 00131EE4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80134F88 00131EE8  C0 06 00 08 */	lfs f0, 8(r6)
/* 80134F8C 00131EEC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80134F90 00131EF0  48 1D DA 95 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80134F94 00131EF4  FC 20 F8 90 */	fmr f1, f31
/* 80134F98 00131EF8  7F E4 FB 78 */	mr r4, r31
/* 80134F9C 00131EFC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80134FA0 00131F00  38 A1 00 10 */	addi r5, r1, 0x10
/* 80134FA4 00131F04  4B FE 60 65 */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 80134FA8 00131F08  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80134FAC 00131F0C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80134FB0 00131F10  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80134FB4 00131F14  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80134FB8 00131F18  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80134FBC 00131F1C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80134FC0 00131F20  4B EE 65 75 */	bl Identity__10CAxisAngleFv
/* 80134FC4 00131F24  7C 65 1B 78 */	mr r5, r3
/* 80134FC8 00131F28  7F E3 FB 78 */	mr r3, r31
/* 80134FCC 00131F2C  38 81 00 34 */	addi r4, r1, 0x34
/* 80134FD0 00131F30  4B FE 73 C9 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_80134FD4:
/* 80134FD4 00131F34  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80134FD8 00131F38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80134FDC 00131F3C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80134FE0 00131F40  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80134FE4 00131F44  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80134FE8 00131F48  7C 08 03 A6 */	mtlr r0
/* 80134FEC 00131F4C  38 21 00 70 */	addi r1, r1, 0x70
/* 80134FF0 00131F50  4E 80 00 20 */	blr 

.global GetBodyStateTransition__9CBSAttackFfR15CBodyController
GetBodyStateTransition__9CBSAttackFfR15CBodyController:
/* 80134FF4 00131F54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80134FF8 00131F58  7C 08 02 A6 */	mflr r0
/* 80134FFC 00131F5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80135000 00131F60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80135004 00131F64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80135008 00131F68  7C 9E 23 78 */	mr r30, r4
/* 8013500C 00131F6C  3B FE 00 04 */	addi r31, r30, 4
/* 80135010 00131F70  38 80 00 0F */	li r4, 0xf
/* 80135014 00131F74  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80135018 00131F78  7C 7D 1B 78 */	mr r29, r3
/* 8013501C 00131F7C  7F E3 FB 78 */	mr r3, r31
/* 80135020 00131F80  4B FF C4 31 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80135024 00131F84  28 03 00 00 */	cmplwi r3, 0
/* 80135028 00131F88  41 82 00 0C */	beq lbl_80135034
/* 8013502C 00131F8C  38 60 00 0E */	li r3, 0xe
/* 80135030 00131F90  48 00 01 5C */	b lbl_8013518C
lbl_80135034:
/* 80135034 00131F94  7F E3 FB 78 */	mr r3, r31
/* 80135038 00131F98  38 80 00 03 */	li r4, 3
/* 8013503C 00131F9C  4B FF C4 15 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80135040 00131FA0  28 03 00 00 */	cmplwi r3, 0
/* 80135044 00131FA4  41 82 00 0C */	beq lbl_80135050
/* 80135048 00131FA8  38 60 00 00 */	li r3, 0
/* 8013504C 00131FAC  48 00 01 40 */	b lbl_8013518C
lbl_80135050:
/* 80135050 00131FB0  7F E3 FB 78 */	mr r3, r31
/* 80135054 00131FB4  38 80 00 09 */	li r4, 9
/* 80135058 00131FB8  4B FF C3 F9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013505C 00131FBC  28 03 00 00 */	cmplwi r3, 0
/* 80135060 00131FC0  41 82 00 0C */	beq lbl_8013506C
/* 80135064 00131FC4  38 60 00 0A */	li r3, 0xa
/* 80135068 00131FC8  48 00 01 24 */	b lbl_8013518C
lbl_8013506C:
/* 8013506C 00131FCC  7F E3 FB 78 */	mr r3, r31
/* 80135070 00131FD0  38 80 00 04 */	li r4, 4
/* 80135074 00131FD4  4B FF C3 DD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80135078 00131FD8  28 03 00 00 */	cmplwi r3, 0
/* 8013507C 00131FDC  41 82 00 0C */	beq lbl_80135088
/* 80135080 00131FE0  38 60 00 06 */	li r3, 6
/* 80135084 00131FE4  48 00 01 08 */	b lbl_8013518C
lbl_80135088:
/* 80135088 00131FE8  7F E3 FB 78 */	mr r3, r31
/* 8013508C 00131FEC  38 80 00 16 */	li r4, 0x16
/* 80135090 00131FF0  4B FF C3 C1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80135094 00131FF4  28 03 00 00 */	cmplwi r3, 0
/* 80135098 00131FF8  41 82 00 0C */	beq lbl_801350A4
/* 8013509C 00131FFC  38 60 00 05 */	li r3, 5
/* 801350A0 00132000  48 00 00 EC */	b lbl_8013518C
lbl_801350A4:
/* 801350A4 00132004  7F E3 FB 78 */	mr r3, r31
/* 801350A8 00132008  38 80 00 11 */	li r4, 0x11
/* 801350AC 0013200C  4B FF C3 A5 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801350B0 00132010  28 03 00 00 */	cmplwi r3, 0
/* 801350B4 00132014  41 82 00 34 */	beq lbl_801350E8
/* 801350B8 00132018  80 83 00 04 */	lwz r4, 4(r3)
/* 801350BC 0013201C  38 00 00 0F */	li r0, 0xf
/* 801350C0 00132020  90 9D 00 0C */	stw r4, 0xc(r29)
/* 801350C4 00132024  80 83 00 08 */	lwz r4, 8(r3)
/* 801350C8 00132028  90 9D 00 10 */	stw r4, 0x10(r29)
/* 801350CC 0013202C  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 801350D0 00132030  80 83 00 10 */	lwz r4, 0x10(r3)
/* 801350D4 00132034  90 BD 00 14 */	stw r5, 0x14(r29)
/* 801350D8 00132038  90 9D 00 18 */	stw r4, 0x18(r29)
/* 801350DC 0013203C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801350E0 00132040  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 801350E4 00132044  90 1D 00 04 */	stw r0, 4(r29)
lbl_801350E8:
/* 801350E8 00132048  7F E3 FB 78 */	mr r3, r31
/* 801350EC 0013204C  38 80 00 0E */	li r4, 0xe
/* 801350F0 00132050  4B FF C3 61 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801350F4 00132054  28 03 00 00 */	cmplwi r3, 0
/* 801350F8 00132058  41 82 00 0C */	beq lbl_80135104
/* 801350FC 0013205C  38 60 00 0C */	li r3, 0xc
/* 80135100 00132060  48 00 00 8C */	b lbl_8013518C
lbl_80135104:
/* 80135104 00132064  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 80135108 00132068  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013510C 0013206C  41 82 00 60 */	beq lbl_8013516C
/* 80135110 00132070  7F E3 FB 78 */	mr r3, r31
/* 80135114 00132074  38 80 00 05 */	li r4, 5
/* 80135118 00132078  4B FF C3 39 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013511C 0013207C  28 03 00 00 */	cmplwi r3, 0
/* 80135120 00132080  41 82 00 0C */	beq lbl_8013512C
/* 80135124 00132084  38 60 00 07 */	li r3, 7
/* 80135128 00132088  48 00 00 64 */	b lbl_8013518C
lbl_8013512C:
/* 8013512C 0013208C  7F E3 FB 78 */	mr r3, r31
/* 80135130 00132090  38 80 00 06 */	li r4, 6
/* 80135134 00132094  4B FF C3 1D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80135138 00132098  28 03 00 00 */	cmplwi r3, 0
/* 8013513C 0013209C  41 82 00 0C */	beq lbl_80135148
/* 80135140 001320A0  38 60 00 12 */	li r3, 0x12
/* 80135144 001320A4  48 00 00 48 */	b lbl_8013518C
lbl_80135148:
/* 80135148 001320A8  7F E3 FB 78 */	mr r3, r31
/* 8013514C 001320AC  38 80 00 07 */	li r4, 7
/* 80135150 001320B0  4B FF C3 01 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80135154 001320B4  28 03 00 00 */	cmplwi r3, 0
/* 80135158 001320B8  41 82 00 0C */	beq lbl_80135164
/* 8013515C 001320BC  38 60 00 09 */	li r3, 9
/* 80135160 001320C0  48 00 00 2C */	b lbl_8013518C
lbl_80135164:
/* 80135164 001320C4  80 7D 00 04 */	lwz r3, 4(r29)
/* 80135168 001320C8  48 00 00 24 */	b lbl_8013518C
lbl_8013516C:
/* 8013516C 001320CC  7F E3 FB 78 */	mr r3, r31
/* 80135170 001320D0  38 80 00 0C */	li r4, 0xc
/* 80135174 001320D4  4B FF C2 DD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80135178 001320D8  28 03 00 00 */	cmplwi r3, 0
/* 8013517C 001320DC  41 82 00 0C */	beq lbl_80135188
/* 80135180 001320E0  80 7D 00 04 */	lwz r3, 4(r29)
/* 80135184 001320E4  48 00 00 08 */	b lbl_8013518C
lbl_80135188:
/* 80135188 001320E8  38 60 FF FF */	li r3, -1
lbl_8013518C:
/* 8013518C 001320EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80135190 001320F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80135194 001320F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80135198 001320F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8013519C 001320FC  7C 08 03 A6 */	mtlr r0
/* 801351A0 00132100  38 21 00 20 */	addi r1, r1, 0x20
/* 801351A4 00132104  4E 80 00 20 */	blr 

.global Shutdown__9CBSAttackFR15CBodyController
Shutdown__9CBSAttackFR15CBodyController:
/* 801351A8 00132108  4E 80 00 20 */	blr 

.global UpdateBody__9CBSAttackFfR15CBodyControllerR13CStateManager
UpdateBody__9CBSAttackFfR15CBodyControllerR13CStateManager:
/* 801351AC 0013210C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801351B0 00132110  7C 08 02 A6 */	mflr r0
/* 801351B4 00132114  90 01 00 34 */	stw r0, 0x34(r1)
/* 801351B8 00132118  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801351BC 0013211C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801351C0 00132120  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801351C4 00132124  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801351C8 00132128  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801351CC 0013212C  93 81 00 10 */	stw r28, 0x10(r1)
/* 801351D0 00132130  7C 7C 1B 78 */	mr r28, r3
/* 801351D4 00132134  FF E0 08 90 */	fmr f31, f1
/* 801351D8 00132138  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 801351DC 0013213C  7C 9D 23 78 */	mr r29, r4
/* 801351E0 00132140  EC 00 F8 2A */	fadds f0, f0, f31
/* 801351E4 00132144  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 801351E8 00132148  4B FF FE 0D */	bl GetBodyStateTransition__9CBSAttackFfR15CBodyController
/* 801351EC 0013214C  7C 7E 1B 78 */	mr r30, r3
/* 801351F0 00132150  3B FD 00 04 */	addi r31, r29, 4
/* 801351F4 00132154  2C 1E FF FF */	cmpwi r30, -1
/* 801351F8 00132158  40 82 00 60 */	bne lbl_80135258
/* 801351FC 0013215C  C0 22 99 A0 */	lfs f1, lbl_805AB6C0@sda21(r2)
/* 80135200 00132160  38 00 00 00 */	li r0, 0
/* 80135204 00132164  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80135208 00132168  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013520C 0013216C  40 82 00 1C */	bne lbl_80135228
/* 80135210 00132170  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80135214 00132174  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80135218 00132178  40 82 00 10 */	bne lbl_80135228
/* 8013521C 0013217C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80135220 00132180  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80135224 00132184  41 82 00 08 */	beq lbl_8013522C
lbl_80135228:
/* 80135228 00132188  38 00 00 01 */	li r0, 1
lbl_8013522C:
/* 8013522C 0013218C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80135230 00132190  41 82 00 14 */	beq lbl_80135244
/* 80135234 00132194  FC 20 F8 90 */	fmr f1, f31
/* 80135238 00132198  7F A3 EB 78 */	mr r3, r29
/* 8013523C 0013219C  38 9F 00 18 */	addi r4, r31, 0x18
/* 80135240 001321A0  48 00 54 65 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
lbl_80135244:
/* 80135244 001321A4  FC 20 F8 90 */	fmr f1, f31
/* 80135248 001321A8  7F 83 E3 78 */	mr r3, r28
/* 8013524C 001321AC  7F A4 EB 78 */	mr r4, r29
/* 80135250 001321B0  4B FF FC 15 */	bl UpdatePhysicsActor__9CBSAttackFR15CBodyControllerf
/* 80135254 001321B4  48 00 00 40 */	b lbl_80135294
lbl_80135258:
/* 80135258 001321B8  2C 1E 00 0F */	cmpwi r30, 0xf
/* 8013525C 001321BC  40 82 00 38 */	bne lbl_80135294
/* 80135260 001321C0  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 80135264 001321C4  7F E3 FB 78 */	mr r3, r31
/* 80135268 001321C8  4B FF C1 D1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013526C 001321CC  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80135270 001321D0  90 1F 01 FC */	stw r0, 0x1fc(r31)
/* 80135274 001321D4  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80135278 001321D8  90 1F 02 00 */	stw r0, 0x200(r31)
/* 8013527C 001321DC  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 80135280 001321E0  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 80135284 001321E4  90 7F 02 04 */	stw r3, 0x204(r31)
/* 80135288 001321E8  90 1F 02 08 */	stw r0, 0x208(r31)
/* 8013528C 001321EC  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 80135290 001321F0  90 1F 02 0C */	stw r0, 0x20c(r31)
lbl_80135294:
/* 80135294 001321F4  7F C3 F3 78 */	mr r3, r30
/* 80135298 001321F8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8013529C 001321FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801352A0 00132200  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801352A4 00132204  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801352A8 00132208  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801352AC 0013220C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801352B0 00132210  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801352B4 00132214  7C 08 03 A6 */	mtlr r0
/* 801352B8 00132218  38 21 00 30 */	addi r1, r1, 0x30
/* 801352BC 0013221C  4E 80 00 20 */	blr 

.global Start__9CBSAttackFR15CBodyControllerR13CStateManager
Start__9CBSAttackFR15CBodyControllerR13CStateManager:
/* 801352C0 00132220  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 801352C4 00132224  7C 08 02 A6 */	mflr r0
/* 801352C8 00132228  90 01 01 34 */	stw r0, 0x134(r1)
/* 801352CC 0013222C  BF 21 01 14 */	stmw r25, 0x114(r1)
/* 801352D0 00132230  7C 9F 23 78 */	mr r31, r4
/* 801352D4 00132234  7C 7E 1B 78 */	mr r30, r3
/* 801352D8 00132238  7C B9 2B 78 */	mr r25, r5
/* 801352DC 0013223C  38 80 00 05 */	li r4, 5
/* 801352E0 00132240  38 7F 00 04 */	addi r3, r31, 4
/* 801352E4 00132244  4B FF C1 6D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801352E8 00132248  7C 7D 1B 78 */	mr r29, r3
/* 801352EC 0013224C  7F E3 FB 78 */	mr r3, r31
/* 801352F0 00132250  48 00 51 65 */	bl GetPASDatabase__15CBodyControllerCFv
/* 801352F4 00132254  83 9F 02 EC */	lwz r28, 0x2ec(r31)
/* 801352F8 00132258  7C 7A 1B 78 */	mr r26, r3
/* 801352FC 0013225C  83 7D 00 08 */	lwz r27, 8(r29)
/* 80135300 00132260  38 61 00 48 */	addi r3, r1, 0x48
/* 80135304 00132264  48 1A DD 79 */	bl NoParameter__12CPASAnimParmFv
/* 80135308 00132268  38 61 00 50 */	addi r3, r1, 0x50
/* 8013530C 0013226C  48 1A DD 71 */	bl NoParameter__12CPASAnimParmFv
/* 80135310 00132270  38 61 00 58 */	addi r3, r1, 0x58
/* 80135314 00132274  48 1A DD 69 */	bl NoParameter__12CPASAnimParmFv
/* 80135318 00132278  38 61 00 60 */	addi r3, r1, 0x60
/* 8013531C 0013227C  48 1A DD 61 */	bl NoParameter__12CPASAnimParmFv
/* 80135320 00132280  38 61 00 68 */	addi r3, r1, 0x68
/* 80135324 00132284  48 1A DD 59 */	bl NoParameter__12CPASAnimParmFv
/* 80135328 00132288  38 61 00 70 */	addi r3, r1, 0x70
/* 8013532C 0013228C  48 1A DD 51 */	bl NoParameter__12CPASAnimParmFv
/* 80135330 00132290  7F 84 E3 78 */	mr r4, r28
/* 80135334 00132294  38 61 00 78 */	addi r3, r1, 0x78
/* 80135338 00132298  48 1A DC 4D */	bl FromEnum__12CPASAnimParmFi
/* 8013533C 0013229C  7F 64 DB 78 */	mr r4, r27
/* 80135340 001322A0  38 61 00 80 */	addi r3, r1, 0x80
/* 80135344 001322A4  48 1A DC 41 */	bl FromEnum__12CPASAnimParmFi
/* 80135348 001322A8  38 61 00 50 */	addi r3, r1, 0x50
/* 8013534C 001322AC  38 01 00 48 */	addi r0, r1, 0x48
/* 80135350 001322B0  90 61 00 08 */	stw r3, 8(r1)
/* 80135354 001322B4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80135358 001322B8  38 A1 00 80 */	addi r5, r1, 0x80
/* 8013535C 001322BC  38 C1 00 78 */	addi r6, r1, 0x78
/* 80135360 001322C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80135364 001322C4  38 E1 00 70 */	addi r7, r1, 0x70
/* 80135368 001322C8  39 01 00 68 */	addi r8, r1, 0x68
/* 8013536C 001322CC  39 21 00 60 */	addi r9, r1, 0x60
/* 80135370 001322D0  39 41 00 58 */	addi r10, r1, 0x58
/* 80135374 001322D4  38 80 00 07 */	li r4, 7
/* 80135378 001322D8  4B F4 7F 4D */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013537C 001322DC  80 D9 09 00 */	lwz r6, 0x900(r25)
/* 80135380 001322E0  7F 44 D3 78 */	mr r4, r26
/* 80135384 001322E4  38 61 00 40 */	addi r3, r1, 0x40
/* 80135388 001322E8  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 8013538C 001322EC  38 E0 FF FF */	li r7, -1
/* 80135390 001322F0  48 1A FC D1 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 80135394 001322F4  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80135398 001322F8  38 00 00 00 */	li r0, 0
/* 8013539C 001322FC  C0 02 99 A4 */	lfs f0, lbl_805AB6C4@sda21(r2)
/* 801353A0 00132300  38 A0 FF FF */	li r5, -1
/* 801353A4 00132304  38 E0 00 01 */	li r7, 1
/* 801353A8 00132308  90 61 00 98 */	stw r3, 0x98(r1)
/* 801353AC 0013230C  7F E3 FB 78 */	mr r3, r31
/* 801353B0 00132310  38 81 00 98 */	addi r4, r1, 0x98
/* 801353B4 00132314  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 801353B8 00132318  38 A0 00 00 */	li r5, 0
/* 801353BC 0013231C  38 C0 00 00 */	li r6, 0
/* 801353C0 00132320  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801353C4 00132324  98 E1 00 A4 */	stb r7, 0xa4(r1)
/* 801353C8 00132328  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 801353CC 0013232C  90 01 00 AC */	stw r0, 0xac(r1)
/* 801353D0 00132330  98 01 00 B0 */	stb r0, 0xb0(r1)
/* 801353D4 00132334  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801353D8 00132338  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 801353DC 0013233C  90 01 00 BC */	stw r0, 0xbc(r1)
/* 801353E0 00132340  48 00 55 3D */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 801353E4 00132344  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 801353E8 00132348  28 00 00 00 */	cmplwi r0, 0
/* 801353EC 0013234C  41 82 01 04 */	beq lbl_801354F0
/* 801353F0 00132350  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 801353F4 00132354  38 61 00 38 */	addi r3, r1, 0x38
/* 801353F8 00132358  38 C1 00 30 */	addi r6, r1, 0x30
/* 801353FC 0013235C  38 A0 00 0A */	li r5, 0xa
/* 80135400 00132360  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80135404 00132364  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80135408 00132368  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 8013540C 0013236C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80135410 00132370  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80135414 00132374  C0 0D 8B 54 */	lfs f0, lbl_805A7714@sda21(r13)
/* 80135418 00132378  80 0D 8B 50 */	lwz r0, lbl_805A7710@sda21(r13)
/* 8013541C 0013237C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80135420 00132380  90 01 00 34 */	stw r0, 0x34(r1)
/* 80135424 00132384  80 9F 00 00 */	lwz r4, 0(r31)
/* 80135428 00132388  80 84 00 64 */	lwz r4, 0x64(r4)
/* 8013542C 0013238C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80135430 00132390  4B EF 5B A9 */	bl GetTimeOfUserEvent__9CAnimDataCF14EUserEventTypeRC13CCharAnimTime
/* 80135434 00132394  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80135438 00132398  38 61 00 90 */	addi r3, r1, 0x90
/* 8013543C 0013239C  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 80135440 001323A0  38 81 00 28 */	addi r4, r1, 0x28
/* 80135444 001323A4  C0 0D 8B 54 */	lfs f0, lbl_805A7714@sda21(r13)
/* 80135448 001323A8  80 0D 8B 50 */	lwz r0, lbl_805A7710@sda21(r13)
/* 8013544C 001323AC  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80135450 001323B0  90 A1 00 94 */	stw r5, 0x94(r1)
/* 80135454 001323B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80135458 001323B8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8013545C 001323BC  48 21 36 79 */	bl __ne__13CCharAnimTimeCFRC13CCharAnimTime
/* 80135460 001323C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80135464 001323C4  41 82 00 0C */	beq lbl_80135470
/* 80135468 001323C8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8013546C 001323CC  48 00 00 08 */	b lbl_80135474
lbl_80135470:
/* 80135470 001323D0  C0 02 99 A0 */	lfs f0, lbl_805AB6C0@sda21(r2)
lbl_80135474:
/* 80135474 001323D4  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 80135478 001323D8  38 61 00 20 */	addi r3, r1, 0x20
/* 8013547C 001323DC  38 C1 00 18 */	addi r6, r1, 0x18
/* 80135480 001323E0  38 A0 00 03 */	li r5, 3
/* 80135484 001323E4  C0 0D 8B 54 */	lfs f0, lbl_805A7714@sda21(r13)
/* 80135488 001323E8  80 0D 8B 50 */	lwz r0, lbl_805A7710@sda21(r13)
/* 8013548C 001323EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80135490 001323F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80135494 001323F4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80135498 001323F8  80 84 00 64 */	lwz r4, 0x64(r4)
/* 8013549C 001323FC  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801354A0 00132400  4B EF 5B 39 */	bl GetTimeOfUserEvent__9CAnimDataCF14EUserEventTypeRC13CCharAnimTime
/* 801354A4 00132404  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801354A8 00132408  38 61 00 88 */	addi r3, r1, 0x88
/* 801354AC 0013240C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801354B0 00132410  38 81 00 10 */	addi r4, r1, 0x10
/* 801354B4 00132414  C0 0D 8B 54 */	lfs f0, lbl_805A7714@sda21(r13)
/* 801354B8 00132418  80 0D 8B 50 */	lwz r0, lbl_805A7710@sda21(r13)
/* 801354BC 0013241C  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 801354C0 00132420  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 801354C4 00132424  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801354C8 00132428  90 01 00 14 */	stw r0, 0x14(r1)
/* 801354CC 0013242C  48 21 36 09 */	bl __ne__13CCharAnimTimeCFRC13CCharAnimTime
/* 801354D0 00132430  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801354D4 00132434  41 82 00 0C */	beq lbl_801354E0
/* 801354D8 00132438  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 801354DC 0013243C  48 00 00 0C */	b lbl_801354E8
lbl_801354E0:
/* 801354E0 00132440  7F E3 FB 78 */	mr r3, r31
/* 801354E4 00132444  48 00 53 D5 */	bl GetAnimTimeRemaining__15CBodyControllerCFv
lbl_801354E8:
/* 801354E8 00132448  D0 3E 00 30 */	stfs f1, 0x30(r30)
/* 801354EC 0013244C  48 00 00 2C */	b lbl_80135518
lbl_801354F0:
/* 801354F0 00132450  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801354F4 00132454  C4 23 66 A0 */	lfsu f1, skZero3f@l(r3)
/* 801354F8 00132458  C0 02 99 A8 */	lfs f0, lbl_805AB6C8@sda21(r2)
/* 801354FC 0013245C  D0 3E 00 20 */	stfs f1, 0x20(r30)
/* 80135500 00132460  C0 23 00 04 */	lfs f1, 4(r3)
/* 80135504 00132464  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 80135508 00132468  C0 23 00 08 */	lfs f1, 8(r3)
/* 8013550C 0013246C  D0 3E 00 28 */	stfs f1, 0x28(r30)
/* 80135510 00132470  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80135514 00132474  D0 1E 00 2C */	stfs f0, 0x2c(r30)
lbl_80135518:
/* 80135518 00132478  38 00 00 05 */	li r0, 5
/* 8013551C 0013247C  C0 02 99 A0 */	lfs f0, lbl_805AB6C0@sda21(r2)
/* 80135520 00132480  90 1E 00 04 */	stw r0, 4(r30)
/* 80135524 00132484  34 A1 00 C4 */	addic. r5, r1, 0xc4
/* 80135528 00132488  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 8013552C 0013248C  41 82 00 58 */	beq lbl_80135584
/* 80135530 00132490  80 C5 00 00 */	lwz r6, 0(r5)
/* 80135534 00132494  38 60 00 00 */	li r3, 0
/* 80135538 00132498  2C 06 00 00 */	cmpwi r6, 0
/* 8013553C 0013249C  40 81 00 40 */	ble lbl_8013557C
/* 80135540 001324A0  2C 06 00 08 */	cmpwi r6, 8
/* 80135544 001324A4  38 86 FF F8 */	addi r4, r6, -8
/* 80135548 001324A8  40 81 00 20 */	ble lbl_80135568
/* 8013554C 001324AC  38 04 00 07 */	addi r0, r4, 7
/* 80135550 001324B0  54 00 E8 FE */	srwi r0, r0, 3
/* 80135554 001324B4  7C 09 03 A6 */	mtctr r0
/* 80135558 001324B8  2C 04 00 00 */	cmpwi r4, 0
/* 8013555C 001324BC  40 81 00 0C */	ble lbl_80135568
lbl_80135560:
/* 80135560 001324C0  38 63 00 08 */	addi r3, r3, 8
/* 80135564 001324C4  42 00 FF FC */	bdnz lbl_80135560
lbl_80135568:
/* 80135568 001324C8  7C 03 30 50 */	subf r0, r3, r6
/* 8013556C 001324CC  7C 09 03 A6 */	mtctr r0
/* 80135570 001324D0  7C 03 30 00 */	cmpw r3, r6
/* 80135574 001324D4  40 80 00 08 */	bge lbl_8013557C
lbl_80135578:
/* 80135578 001324D8  42 00 00 00 */	bdnz lbl_80135578
lbl_8013557C:
/* 8013557C 001324DC  38 00 00 00 */	li r0, 0
/* 80135580 001324E0  90 05 00 00 */	stw r0, 0(r5)
lbl_80135584:
/* 80135584 001324E4  BB 21 01 14 */	lmw r25, 0x114(r1)
/* 80135588 001324E8  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8013558C 001324EC  7C 08 03 A6 */	mtlr r0
/* 80135590 001324F0  38 21 01 30 */	addi r1, r1, 0x130
/* 80135594 001324F4  4E 80 00 20 */	blr 

.global __ct__9CBSAttackFv
__ct__9CBSAttackFv:
/* 80135598 001324F8  3C A0 80 3E */	lis r5, lbl_803E1318@ha
/* 8013559C 001324FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801355A0 00132500  38 05 13 18 */	addi r0, r5, lbl_803E1318@l
/* 801355A4 00132504  3C C0 80 5A */	lis r6, skZero3f@ha
/* 801355A8 00132508  3C 80 80 3E */	lis r4, lbl_803E1370@ha
/* 801355AC 0013250C  90 03 00 00 */	stw r0, 0(r3)
/* 801355B0 00132510  38 04 13 70 */	addi r0, r4, lbl_803E1370@l
/* 801355B4 00132514  39 40 FF FF */	li r10, -1
/* 801355B8 00132518  90 03 00 00 */	stw r0, 0(r3)
/* 801355BC 0013251C  3C 80 80 3E */	lis r4, lbl_803DAA08@ha
/* 801355C0 00132520  39 26 66 A0 */	addi r9, r6, skZero3f@l
/* 801355C4 00132524  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801355C8 00132528  91 43 00 04 */	stw r10, 4(r3)
/* 801355CC 0013252C  38 04 AA 08 */	addi r0, r4, lbl_803DAA08@l
/* 801355D0 00132530  38 C5 AA 68 */	addi r6, r5, lbl_803DAA68@l
/* 801355D4 00132534  38 A0 00 11 */	li r5, 0x11
/* 801355D8 00132538  81 09 00 00 */	lwz r8, 0(r9)
/* 801355DC 0013253C  80 E9 00 04 */	lwz r7, 4(r9)
/* 801355E0 00132540  80 89 00 08 */	lwz r4, 8(r9)
/* 801355E4 00132544  91 01 00 08 */	stw r8, 8(r1)
/* 801355E8 00132548  C0 22 99 A8 */	lfs f1, lbl_805AB6C8@sda21(r2)
/* 801355EC 0013254C  90 C3 00 08 */	stw r6, 8(r3)
/* 801355F0 00132550  C0 41 00 08 */	lfs f2, 8(r1)
/* 801355F4 00132554  90 A3 00 0C */	stw r5, 0xc(r3)
/* 801355F8 00132558  C0 02 99 A0 */	lfs f0, lbl_805AB6C0@sda21(r2)
/* 801355FC 0013255C  90 03 00 08 */	stw r0, 8(r3)
/* 80135600 00132560  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80135604 00132564  91 43 00 10 */	stw r10, 0x10(r3)
/* 80135608 00132568  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8013560C 0013256C  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 80135610 00132570  90 81 00 10 */	stw r4, 0x10(r1)
/* 80135614 00132574  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80135618 00132578  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 8013561C 0013257C  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 80135620 00132580  C0 49 00 00 */	lfs f2, 0(r9)
/* 80135624 00132584  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 80135628 00132588  C0 49 00 04 */	lfs f2, 4(r9)
/* 8013562C 0013258C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80135630 00132590  C0 49 00 08 */	lfs f2, 8(r9)
/* 80135634 00132594  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 80135638 00132598  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8013563C 0013259C  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80135640 001325A0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80135644 001325A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80135648 001325A8  4E 80 00 20 */	blr