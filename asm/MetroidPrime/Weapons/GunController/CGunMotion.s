.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global LoadAnimations__10CGunMotionFv
LoadAnimations__10CGunMotionFv:
/* 801D8F74 001D5ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8F78 001D5ED8  7C 08 02 A6 */	mflr r0
/* 801D8F7C 001D5EDC  7C 65 1B 78 */	mr r5, r3
/* 801D8F80 001D5EE0  38 80 00 00 */	li r4, 0
/* 801D8F84 001D5EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8F88 001D5EE8  38 C5 00 A8 */	addi r6, r5, 0xa8
/* 801D8F8C 001D5EEC  38 A0 00 0E */	li r5, 0xe
/* 801D8F90 001D5EF0  38 E0 00 01 */	li r7, 1
/* 801D8F94 001D5EF4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801D8F98 001D5EF8  48 0B 22 D5 */	bl "get_token_vector__12NWeaponTypesFR9CAnimDataiiRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>b"
/* 801D8F9C 001D5EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8FA0 001D5F00  7C 08 03 A6 */	mtlr r0
/* 801D8FA4 001D5F04  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8FA8 001D5F08  4E 80 00 20 */	blr 

.global EnterFidget__10CGunMotionFR13CStateManagerQ28SamusGun11EFidgetTypei
EnterFidget__10CGunMotionFR13CStateManagerQ28SamusGun11EFidgetTypei:
/* 801D8FAC 001D5F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8FB0 001D5F10  7C 08 02 A6 */	mflr r0
/* 801D8FB4 001D5F14  38 E0 00 01 */	li r7, 1
/* 801D8FB8 001D5F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8FBC 001D5F1C  88 03 00 B8 */	lbz r0, 0xb8(r3)
/* 801D8FC0 001D5F20  50 E0 3E 30 */	rlwimi r0, r7, 7, 0x18, 0x18
/* 801D8FC4 001D5F24  7C C7 33 78 */	mr r7, r6
/* 801D8FC8 001D5F28  38 C0 00 00 */	li r6, 0
/* 801D8FCC 001D5F2C  98 03 00 B8 */	stb r0, 0xb8(r3)
/* 801D8FD0 001D5F30  38 63 00 4C */	addi r3, r3, 0x4c
/* 801D8FD4 001D5F34  4B FF 3B 2D */	bl EnterFidget__14CGunControllerFR13CStateManageriii
/* 801D8FD8 001D5F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8FDC 001D5F3C  7C 08 03 A6 */	mtlr r0
/* 801D8FE0 001D5F40  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8FE4 001D5F44  4E 80 00 20 */	blr 

.global BasePosition__10CGunMotionFb
BasePosition__10CGunMotionFb:
/* 801D8FE8 001D5F48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D8FEC 001D5F4C  7C 08 02 A6 */	mflr r0
/* 801D8FF0 001D5F50  39 00 00 00 */	li r8, 0
/* 801D8FF4 001D5F54  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D8FF8 001D5F58  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801D8FFC 001D5F5C  38 80 00 01 */	li r4, 1
/* 801D9000 001D5F60  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801D9004 001D5F64  88 A3 02 20 */	lbz r5, 0x220(r3)
/* 801D9008 001D5F68  51 05 36 72 */	rlwimi r5, r8, 6, 0x19, 0x19
/* 801D900C 001D5F6C  98 A3 02 20 */	stb r5, 0x220(r3)
/* 801D9010 001D5F70  88 03 02 20 */	lbz r0, 0x220(r3)
/* 801D9014 001D5F74  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801D9018 001D5F78  98 03 02 20 */	stb r0, 0x220(r3)
/* 801D901C 001D5F7C  41 82 00 08 */	beq lbl_801D9024
/* 801D9020 001D5F80  39 00 00 06 */	li r8, 6
lbl_801D9024:
/* 801D9024 001D5F84  C0 02 AC 98 */	lfs f0, lbl_805AC9B8@sda21(r2)
/* 801D9028 001D5F88  38 00 00 00 */	li r0, 0
/* 801D902C 001D5F8C  38 E0 FF FF */	li r7, -1
/* 801D9030 001D5F90  38 C0 00 01 */	li r6, 1
/* 801D9034 001D5F94  91 01 00 08 */	stw r8, 8(r1)
/* 801D9038 001D5F98  38 81 00 08 */	addi r4, r1, 8
/* 801D903C 001D5F9C  38 A0 00 00 */	li r5, 0
/* 801D9040 001D5FA0  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801D9044 001D5FA4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801D9048 001D5FA8  98 C1 00 14 */	stb r6, 0x14(r1)
/* 801D904C 001D5FAC  90 01 00 18 */	stw r0, 0x18(r1)
/* 801D9050 001D5FB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801D9054 001D5FB4  98 01 00 20 */	stb r0, 0x20(r1)
/* 801D9058 001D5FB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D905C 001D5FBC  90 01 00 28 */	stw r0, 0x28(r1)
/* 801D9060 001D5FC0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801D9064 001D5FC4  4B E5 3D 19 */	bl SetAnimation__9CAnimDataFRC18CAnimPlaybackParmsb
/* 801D9068 001D5FC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D906C 001D5FCC  7C 08 03 A6 */	mtlr r0
/* 801D9070 001D5FD0  38 21 00 30 */	addi r1, r1, 0x30
/* 801D9074 001D5FD4  4E 80 00 20 */	blr 

.global GetFreeLookSetId__10CGunMotionCFv
GetFreeLookSetId__10CGunMotionCFv:
/* 801D9078 001D5FD8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801D907C 001D5FDC  4E 80 00 20 */	blr 

.global ReturnToDefault__10CGunMotionFR13CStateManager
ReturnToDefault__10CGunMotionFR13CStateManager:
/* 801D9080 001D5FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9084 001D5FE4  7C 08 02 A6 */	mflr r0
/* 801D9088 001D5FE8  C0 22 AC 9C */	lfs f1, lbl_805AC9BC@sda21(r2)
/* 801D908C 001D5FEC  38 63 00 4C */	addi r3, r3, 0x4c
/* 801D9090 001D5FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9094 001D5FF4  4B FF 32 65 */	bl ReturnToDefault__14CGunControllerFR13CStateManagerf
/* 801D9098 001D5FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D909C 001D5FFC  7C 08 03 A6 */	mtlr r0
/* 801D90A0 001D6000  38 21 00 10 */	addi r1, r1, 0x10
/* 801D90A4 001D6004  4E 80 00 20 */	blr 

.global Draw__10CGunMotionCFRC13CStateManagerRC12CTransform4f
Draw__10CGunMotionCFRC13CStateManagerRC12CTransform4f:
/* 801D90A8 001D6008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D90AC 001D600C  7C 08 02 A6 */	mflr r0
/* 801D90B0 001D6010  C0 22 AC 98 */	lfs f1, lbl_805AC9B8@sda21(r2)
/* 801D90B4 001D6014  38 C0 00 00 */	li r6, 0
/* 801D90B8 001D6018  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D90BC 001D601C  38 00 00 03 */	li r0, 3
/* 801D90C0 001D6020  FC 40 08 90 */	fmr f2, f1
/* 801D90C4 001D6024  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D90C8 001D6028  FC 60 08 90 */	fmr f3, f1
/* 801D90CC 001D602C  FC 80 08 90 */	fmr f4, f1
/* 801D90D0 001D6030  7C BF 2B 78 */	mr r31, r5
/* 801D90D4 001D6034  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D90D8 001D6038  7C 9E 23 78 */	mr r30, r4
/* 801D90DC 001D603C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D90E0 001D6040  7C 7D 1B 78 */	mr r29, r3
/* 801D90E4 001D6044  38 61 00 0C */	addi r3, r1, 0xc
/* 801D90E8 001D6048  98 C1 00 08 */	stb r6, 8(r1)
/* 801D90EC 001D604C  98 C1 00 09 */	stb r6, 9(r1)
/* 801D90F0 001D6050  B0 01 00 0A */	sth r0, 0xa(r1)
/* 801D90F4 001D6054  48 18 A2 F9 */	bl __ct__6CColorFffff
/* 801D90F8 001D6058  7F A3 EB 78 */	mr r3, r29
/* 801D90FC 001D605C  7F C4 F3 78 */	mr r4, r30
/* 801D9100 001D6060  7F E5 FB 78 */	mr r5, r31
/* 801D9104 001D6064  38 E1 00 08 */	addi r7, r1, 8
/* 801D9108 001D6068  38 C0 00 00 */	li r6, 0
/* 801D910C 001D606C  4B F3 BC B1 */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
/* 801D9110 001D6070  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D9114 001D6074  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D9118 001D6078  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D911C 001D607C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D9120 001D6080  7C 08 03 A6 */	mtlr r0
/* 801D9124 001D6084  38 21 00 20 */	addi r1, r1, 0x20
/* 801D9128 001D6088  4E 80 00 20 */	blr 

.global Update__10CGunMotionFfR13CStateManager
Update__10CGunMotionFfR13CStateManager:
/* 801D912C 001D608C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D9130 001D6090  7C 08 02 A6 */	mflr r0
/* 801D9134 001D6094  38 E0 00 01 */	li r7, 1
/* 801D9138 001D6098  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D913C 001D609C  38 C1 00 08 */	addi r6, r1, 8
/* 801D9140 001D60A0  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 801D9144 001D60A4  FF E0 08 90 */	fmr f31, f1
/* 801D9148 001D60A8  93 E1 00 34 */	stw r31, 0x34(r1)
/* 801D914C 001D60AC  7C 9F 23 78 */	mr r31, r4
/* 801D9150 001D60B0  7F E5 FB 78 */	mr r5, r31
/* 801D9154 001D60B4  93 C1 00 30 */	stw r30, 0x30(r1)
/* 801D9158 001D60B8  7C 7E 1B 78 */	mr r30, r3
/* 801D915C 001D60BC  7F C4 F3 78 */	mr r4, r30
/* 801D9160 001D60C0  38 61 00 0C */	addi r3, r1, 0xc
/* 801D9164 001D60C4  80 0D A3 90 */	lwz r0, lbl_805A8F50@sda21(r13)
/* 801D9168 001D60C8  90 01 00 08 */	stw r0, 8(r1)
/* 801D916C 001D60CC  4B F3 C9 C9 */	bl AdvanceAnimation__10CModelDataFfR13CStateManager7TAreaIdb
/* 801D9170 001D60D0  FC 20 F8 90 */	fmr f1, f31
/* 801D9174 001D60D4  7F E4 FB 78 */	mr r4, r31
/* 801D9178 001D60D8  38 7E 00 4C */	addi r3, r30, 0x4c
/* 801D917C 001D60DC  4B FF 34 C5 */	bl Update__14CGunControllerFfR13CStateManager
/* 801D9180 001D60E0  2C 03 00 01 */	cmpwi r3, 1
/* 801D9184 001D60E4  41 82 00 08 */	beq lbl_801D918C
/* 801D9188 001D60E8  48 00 00 14 */	b lbl_801D919C
lbl_801D918C:
/* 801D918C 001D60EC  88 1E 00 B8 */	lbz r0, 0xb8(r30)
/* 801D9190 001D60F0  38 60 00 00 */	li r3, 0
/* 801D9194 001D60F4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801D9198 001D60F8  98 1E 00 B8 */	stb r0, 0xb8(r30)
lbl_801D919C:
/* 801D919C 001D60FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D91A0 001D6100  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 801D91A4 001D6104  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 801D91A8 001D6108  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 801D91AC 001D610C  7C 08 03 A6 */	mtlr r0
/* 801D91B0 001D6110  38 21 00 40 */	addi r1, r1, 0x40
/* 801D91B4 001D6114  4E 80 00 20 */	blr 

.global PlayPasAnim__10CGunMotionFQ28SamusGun15EAnimationStateR13CStateManagerfb
PlayPasAnim__10CGunMotionFQ28SamusGun15EAnimationStateR13CStateManagerfb:
/* 801D91B8 001D6118  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 801D91BC 001D611C  7C 08 02 A6 */	mflr r0
/* 801D91C0 001D6120  90 01 02 24 */	stw r0, 0x224(r1)
/* 801D91C4 001D6124  DB E1 02 10 */	stfd f31, 0x210(r1)
/* 801D91C8 001D6128  F3 E1 02 18 */	psq_st f31, 536(r1), 0, qr0
/* 801D91CC 001D612C  BF 21 01 F4 */	stmw r25, 0x1f4(r1)
/* 801D91D0 001D6130  7C 7E 1B 78 */	mr r30, r3
/* 801D91D4 001D6134  7C 99 23 78 */	mr r25, r4
/* 801D91D8 001D6138  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801D91DC 001D613C  FF E0 08 90 */	fmr f31, f1
/* 801D91E0 001D6140  2C 19 00 03 */	cmpwi r25, 3
/* 801D91E4 001D6144  7C BA 2B 78 */	mr r26, r5
/* 801D91E8 001D6148  7C DB 33 78 */	mr r27, r6
/* 801D91EC 001D614C  3B A3 00 3C */	addi r29, r3, 0x3c
/* 801D91F0 001D6150  3B E0 00 01 */	li r31, 1
/* 801D91F4 001D6154  3B 80 FF FF */	li r28, -1
/* 801D91F8 001D6158  41 82 03 24 */	beq lbl_801D951C
/* 801D91FC 001D615C  40 80 00 1C */	bge lbl_801D9218
/* 801D9200 001D6160  2C 19 00 01 */	cmpwi r25, 1
/* 801D9204 001D6164  41 82 03 40 */	beq lbl_801D9544
/* 801D9208 001D6168  40 80 02 0C */	bge lbl_801D9414
/* 801D920C 001D616C  2C 19 00 00 */	cmpwi r25, 0
/* 801D9210 001D6170  40 80 00 18 */	bge lbl_801D9228
/* 801D9214 001D6174  48 00 03 30 */	b lbl_801D9544
lbl_801D9218:
/* 801D9218 001D6178  2C 19 00 05 */	cmpwi r25, 5
/* 801D921C 001D617C  41 82 01 00 */	beq lbl_801D931C
/* 801D9220 001D6180  40 80 03 24 */	bge lbl_801D9544
/* 801D9224 001D6184  48 00 03 10 */	b lbl_801D9534
lbl_801D9228:
/* 801D9228 001D6188  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801D922C 001D618C  48 10 9E 51 */	bl NoParameter__12CPASAnimParmFv
/* 801D9230 001D6190  38 61 00 A8 */	addi r3, r1, 0xa8
/* 801D9234 001D6194  48 10 9E 49 */	bl NoParameter__12CPASAnimParmFv
/* 801D9238 001D6198  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801D923C 001D619C  48 10 9E 41 */	bl NoParameter__12CPASAnimParmFv
/* 801D9240 001D61A0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 801D9244 001D61A4  48 10 9E 39 */	bl NoParameter__12CPASAnimParmFv
/* 801D9248 001D61A8  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801D924C 001D61AC  48 10 9E 31 */	bl NoParameter__12CPASAnimParmFv
/* 801D9250 001D61B0  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801D9254 001D61B4  48 10 9E 29 */	bl NoParameter__12CPASAnimParmFv
/* 801D9258 001D61B8  38 61 00 D0 */	addi r3, r1, 0xd0
/* 801D925C 001D61BC  48 10 9E 21 */	bl NoParameter__12CPASAnimParmFv
/* 801D9260 001D61C0  38 61 00 D8 */	addi r3, r1, 0xd8
/* 801D9264 001D61C4  48 10 9E 19 */	bl NoParameter__12CPASAnimParmFv
/* 801D9268 001D61C8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 801D926C 001D61CC  38 01 00 A0 */	addi r0, r1, 0xa0
/* 801D9270 001D61D0  90 61 00 08 */	stw r3, 8(r1)
/* 801D9274 001D61D4  7F 24 CB 78 */	mr r4, r25
/* 801D9278 001D61D8  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 801D927C 001D61DC  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 801D9280 001D61E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D9284 001D61E4  38 C1 00 D0 */	addi r6, r1, 0xd0
/* 801D9288 001D61E8  38 E1 00 C8 */	addi r7, r1, 0xc8
/* 801D928C 001D61EC  39 01 00 C0 */	addi r8, r1, 0xc0
/* 801D9290 001D61F0  39 21 00 B8 */	addi r9, r1, 0xb8
/* 801D9294 001D61F4  39 41 00 B0 */	addi r10, r1, 0xb0
/* 801D9298 001D61F8  4B EA 40 2D */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801D929C 001D61FC  80 DA 09 00 */	lwz r6, 0x900(r26)
/* 801D92A0 001D6200  7F A4 EB 78 */	mr r4, r29
/* 801D92A4 001D6204  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801D92A8 001D6208  38 A1 01 A0 */	addi r5, r1, 0x1a0
/* 801D92AC 001D620C  38 E0 FF FF */	li r7, -1
/* 801D92B0 001D6210  48 10 BD B1 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 801D92B4 001D6214  34 C1 01 A4 */	addic. r6, r1, 0x1a4
/* 801D92B8 001D6218  80 81 00 E4 */	lwz r4, 0xe4(r1)
/* 801D92BC 001D621C  41 82 00 58 */	beq lbl_801D9314
/* 801D92C0 001D6220  80 E6 00 00 */	lwz r7, 0(r6)
/* 801D92C4 001D6224  38 60 00 00 */	li r3, 0
/* 801D92C8 001D6228  2C 07 00 00 */	cmpwi r7, 0
/* 801D92CC 001D622C  40 81 00 40 */	ble lbl_801D930C
/* 801D92D0 001D6230  2C 07 00 08 */	cmpwi r7, 8
/* 801D92D4 001D6234  38 A7 FF F8 */	addi r5, r7, -8
/* 801D92D8 001D6238  40 81 00 20 */	ble lbl_801D92F8
/* 801D92DC 001D623C  38 05 00 07 */	addi r0, r5, 7
/* 801D92E0 001D6240  54 00 E8 FE */	srwi r0, r0, 3
/* 801D92E4 001D6244  7C 09 03 A6 */	mtctr r0
/* 801D92E8 001D6248  2C 05 00 00 */	cmpwi r5, 0
/* 801D92EC 001D624C  40 81 00 0C */	ble lbl_801D92F8
lbl_801D92F0:
/* 801D92F0 001D6250  38 63 00 08 */	addi r3, r3, 8
/* 801D92F4 001D6254  42 00 FF FC */	bdnz lbl_801D92F0
lbl_801D92F8:
/* 801D92F8 001D6258  7C 03 38 50 */	subf r0, r3, r7
/* 801D92FC 001D625C  7C 09 03 A6 */	mtctr r0
/* 801D9300 001D6260  7C 03 38 00 */	cmpw r3, r7
/* 801D9304 001D6264  40 80 00 08 */	bge lbl_801D930C
lbl_801D9308:
/* 801D9308 001D6268  42 00 00 00 */	bdnz lbl_801D9308
lbl_801D930C:
/* 801D930C 001D626C  38 00 00 00 */	li r0, 0
/* 801D9310 001D6270  90 06 00 00 */	stw r0, 0(r6)
lbl_801D9314:
/* 801D9314 001D6274  7C 9C 23 78 */	mr r28, r4
/* 801D9318 001D6278  48 00 02 2C */	b lbl_801D9544
lbl_801D931C:
/* 801D931C 001D627C  38 61 00 58 */	addi r3, r1, 0x58
/* 801D9320 001D6280  48 10 9D 5D */	bl NoParameter__12CPASAnimParmFv
/* 801D9324 001D6284  38 61 00 60 */	addi r3, r1, 0x60
/* 801D9328 001D6288  48 10 9D 55 */	bl NoParameter__12CPASAnimParmFv
/* 801D932C 001D628C  38 61 00 68 */	addi r3, r1, 0x68
/* 801D9330 001D6290  48 10 9D 4D */	bl NoParameter__12CPASAnimParmFv
/* 801D9334 001D6294  38 61 00 70 */	addi r3, r1, 0x70
/* 801D9338 001D6298  48 10 9D 45 */	bl NoParameter__12CPASAnimParmFv
/* 801D933C 001D629C  38 61 00 78 */	addi r3, r1, 0x78
/* 801D9340 001D62A0  48 10 9D 3D */	bl NoParameter__12CPASAnimParmFv
/* 801D9344 001D62A4  38 61 00 80 */	addi r3, r1, 0x80
/* 801D9348 001D62A8  48 10 9D 35 */	bl NoParameter__12CPASAnimParmFv
/* 801D934C 001D62AC  38 61 00 88 */	addi r3, r1, 0x88
/* 801D9350 001D62B0  48 10 9D 2D */	bl NoParameter__12CPASAnimParmFv
/* 801D9354 001D62B4  38 61 00 90 */	addi r3, r1, 0x90
/* 801D9358 001D62B8  38 80 00 00 */	li r4, 0
/* 801D935C 001D62BC  48 10 9C 29 */	bl FromEnum__12CPASAnimParmFi
/* 801D9360 001D62C0  38 61 00 60 */	addi r3, r1, 0x60
/* 801D9364 001D62C4  38 01 00 58 */	addi r0, r1, 0x58
/* 801D9368 001D62C8  90 61 00 08 */	stw r3, 8(r1)
/* 801D936C 001D62CC  7F 24 CB 78 */	mr r4, r25
/* 801D9370 001D62D0  38 61 01 58 */	addi r3, r1, 0x158
/* 801D9374 001D62D4  38 A1 00 90 */	addi r5, r1, 0x90
/* 801D9378 001D62D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D937C 001D62DC  38 C1 00 88 */	addi r6, r1, 0x88
/* 801D9380 001D62E0  38 E1 00 80 */	addi r7, r1, 0x80
/* 801D9384 001D62E4  39 01 00 78 */	addi r8, r1, 0x78
/* 801D9388 001D62E8  39 21 00 70 */	addi r9, r1, 0x70
/* 801D938C 001D62EC  39 41 00 68 */	addi r10, r1, 0x68
/* 801D9390 001D62F0  4B EA 3F 35 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801D9394 001D62F4  80 DA 09 00 */	lwz r6, 0x900(r26)
/* 801D9398 001D62F8  7F A4 EB 78 */	mr r4, r29
/* 801D939C 001D62FC  38 61 00 98 */	addi r3, r1, 0x98
/* 801D93A0 001D6300  38 A1 01 58 */	addi r5, r1, 0x158
/* 801D93A4 001D6304  38 E0 FF FF */	li r7, -1
/* 801D93A8 001D6308  48 10 BC B9 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 801D93AC 001D630C  34 C1 01 5C */	addic. r6, r1, 0x15c
/* 801D93B0 001D6310  80 81 00 9C */	lwz r4, 0x9c(r1)
/* 801D93B4 001D6314  41 82 00 58 */	beq lbl_801D940C
/* 801D93B8 001D6318  80 E6 00 00 */	lwz r7, 0(r6)
/* 801D93BC 001D631C  38 60 00 00 */	li r3, 0
/* 801D93C0 001D6320  2C 07 00 00 */	cmpwi r7, 0
/* 801D93C4 001D6324  40 81 00 40 */	ble lbl_801D9404
/* 801D93C8 001D6328  2C 07 00 08 */	cmpwi r7, 8
/* 801D93CC 001D632C  38 A7 FF F8 */	addi r5, r7, -8
/* 801D93D0 001D6330  40 81 00 20 */	ble lbl_801D93F0
/* 801D93D4 001D6334  38 05 00 07 */	addi r0, r5, 7
/* 801D93D8 001D6338  54 00 E8 FE */	srwi r0, r0, 3
/* 801D93DC 001D633C  7C 09 03 A6 */	mtctr r0
/* 801D93E0 001D6340  2C 05 00 00 */	cmpwi r5, 0
/* 801D93E4 001D6344  40 81 00 0C */	ble lbl_801D93F0
lbl_801D93E8:
/* 801D93E8 001D6348  38 63 00 08 */	addi r3, r3, 8
/* 801D93EC 001D634C  42 00 FF FC */	bdnz lbl_801D93E8
lbl_801D93F0:
/* 801D93F0 001D6350  7C 03 38 50 */	subf r0, r3, r7
/* 801D93F4 001D6354  7C 09 03 A6 */	mtctr r0
/* 801D93F8 001D6358  7C 03 38 00 */	cmpw r3, r7
/* 801D93FC 001D635C  40 80 00 08 */	bge lbl_801D9404
lbl_801D9400:
/* 801D9400 001D6360  42 00 00 00 */	bdnz lbl_801D9400
lbl_801D9404:
/* 801D9404 001D6364  38 00 00 00 */	li r0, 0
/* 801D9408 001D6368  90 06 00 00 */	stw r0, 0(r6)
lbl_801D940C:
/* 801D940C 001D636C  7C 9C 23 78 */	mr r28, r4
/* 801D9410 001D6370  48 00 01 34 */	b lbl_801D9544
lbl_801D9414:
/* 801D9414 001D6374  38 61 00 10 */	addi r3, r1, 0x10
/* 801D9418 001D6378  48 10 9C 65 */	bl NoParameter__12CPASAnimParmFv
/* 801D941C 001D637C  38 61 00 18 */	addi r3, r1, 0x18
/* 801D9420 001D6380  48 10 9C 5D */	bl NoParameter__12CPASAnimParmFv
/* 801D9424 001D6384  38 61 00 20 */	addi r3, r1, 0x20
/* 801D9428 001D6388  48 10 9C 55 */	bl NoParameter__12CPASAnimParmFv
/* 801D942C 001D638C  38 61 00 28 */	addi r3, r1, 0x28
/* 801D9430 001D6390  48 10 9C 4D */	bl NoParameter__12CPASAnimParmFv
/* 801D9434 001D6394  38 61 00 30 */	addi r3, r1, 0x30
/* 801D9438 001D6398  38 80 00 00 */	li r4, 0
/* 801D943C 001D639C  48 10 9B 79 */	bl FromBool__12CPASAnimParmFb
/* 801D9440 001D63A0  38 61 00 38 */	addi r3, r1, 0x38
/* 801D9444 001D63A4  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 801D9448 001D63A8  48 10 9B 6D */	bl FromBool__12CPASAnimParmFb
/* 801D944C 001D63AC  FC 20 F8 90 */	fmr f1, f31
/* 801D9450 001D63B0  38 61 00 40 */	addi r3, r1, 0x40
/* 801D9454 001D63B4  48 10 9B 95 */	bl FromReal32__12CPASAnimParmFf
/* 801D9458 001D63B8  38 61 00 48 */	addi r3, r1, 0x48
/* 801D945C 001D63BC  38 80 00 00 */	li r4, 0
/* 801D9460 001D63C0  48 10 9B ED */	bl FromInt32__12CPASAnimParmFi
/* 801D9464 001D63C4  38 61 00 18 */	addi r3, r1, 0x18
/* 801D9468 001D63C8  38 01 00 10 */	addi r0, r1, 0x10
/* 801D946C 001D63CC  90 61 00 08 */	stw r3, 8(r1)
/* 801D9470 001D63D0  7F 24 CB 78 */	mr r4, r25
/* 801D9474 001D63D4  38 61 01 10 */	addi r3, r1, 0x110
/* 801D9478 001D63D8  38 A1 00 48 */	addi r5, r1, 0x48
/* 801D947C 001D63DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D9480 001D63E0  38 C1 00 40 */	addi r6, r1, 0x40
/* 801D9484 001D63E4  38 E1 00 38 */	addi r7, r1, 0x38
/* 801D9488 001D63E8  39 01 00 30 */	addi r8, r1, 0x30
/* 801D948C 001D63EC  39 21 00 28 */	addi r9, r1, 0x28
/* 801D9490 001D63F0  39 41 00 20 */	addi r10, r1, 0x20
/* 801D9494 001D63F4  4B EA 3E 31 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801D9498 001D63F8  80 DA 09 00 */	lwz r6, 0x900(r26)
/* 801D949C 001D63FC  7F A4 EB 78 */	mr r4, r29
/* 801D94A0 001D6400  38 61 00 50 */	addi r3, r1, 0x50
/* 801D94A4 001D6404  38 A1 01 10 */	addi r5, r1, 0x110
/* 801D94A8 001D6408  38 E0 FF FF */	li r7, -1
/* 801D94AC 001D640C  48 10 BB B5 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 801D94B0 001D6410  34 C1 01 14 */	addic. r6, r1, 0x114
/* 801D94B4 001D6414  80 81 00 54 */	lwz r4, 0x54(r1)
/* 801D94B8 001D6418  41 82 00 58 */	beq lbl_801D9510
/* 801D94BC 001D641C  80 E6 00 00 */	lwz r7, 0(r6)
/* 801D94C0 001D6420  38 60 00 00 */	li r3, 0
/* 801D94C4 001D6424  2C 07 00 00 */	cmpwi r7, 0
/* 801D94C8 001D6428  40 81 00 40 */	ble lbl_801D9508
/* 801D94CC 001D642C  2C 07 00 08 */	cmpwi r7, 8
/* 801D94D0 001D6430  38 A7 FF F8 */	addi r5, r7, -8
/* 801D94D4 001D6434  40 81 00 20 */	ble lbl_801D94F4
/* 801D94D8 001D6438  38 05 00 07 */	addi r0, r5, 7
/* 801D94DC 001D643C  54 00 E8 FE */	srwi r0, r0, 3
/* 801D94E0 001D6440  7C 09 03 A6 */	mtctr r0
/* 801D94E4 001D6444  2C 05 00 00 */	cmpwi r5, 0
/* 801D94E8 001D6448  40 81 00 0C */	ble lbl_801D94F4
lbl_801D94EC:
/* 801D94EC 001D644C  38 63 00 08 */	addi r3, r3, 8
/* 801D94F0 001D6450  42 00 FF FC */	bdnz lbl_801D94EC
lbl_801D94F4:
/* 801D94F4 001D6454  7C 03 38 50 */	subf r0, r3, r7
/* 801D94F8 001D6458  7C 09 03 A6 */	mtctr r0
/* 801D94FC 001D645C  7C 03 38 00 */	cmpw r3, r7
/* 801D9500 001D6460  40 80 00 08 */	bge lbl_801D9508
lbl_801D9504:
/* 801D9504 001D6464  42 00 00 00 */	bdnz lbl_801D9504
lbl_801D9508:
/* 801D9508 001D6468  38 00 00 00 */	li r0, 0
/* 801D950C 001D646C  90 06 00 00 */	stw r0, 0(r6)
lbl_801D9510:
/* 801D9510 001D6470  7C 9C 23 78 */	mr r28, r4
/* 801D9514 001D6474  3B E0 00 00 */	li r31, 0
/* 801D9518 001D6478  48 00 00 2C */	b lbl_801D9544
lbl_801D951C:
/* 801D951C 001D647C  7F 44 D3 78 */	mr r4, r26
/* 801D9520 001D6480  38 7E 00 4C */	addi r3, r30, 0x4c
/* 801D9524 001D6484  38 A0 00 00 */	li r5, 0
/* 801D9528 001D6488  38 C0 FF FF */	li r6, -1
/* 801D952C 001D648C  4B FF 36 95 */	bl EnterFreeLook__14CGunControllerFR13CStateManagerii
/* 801D9530 001D6490  48 00 00 14 */	b lbl_801D9544
lbl_801D9534:
/* 801D9534 001D6494  7F 44 D3 78 */	mr r4, r26
/* 801D9538 001D6498  38 7E 00 4C */	addi r3, r30, 0x4c
/* 801D953C 001D649C  38 A0 00 00 */	li r5, 0
/* 801D9540 001D64A0  4B FF 36 09 */	bl EnterComboFire__14CGunControllerFR13CStateManageri
lbl_801D9544:
/* 801D9544 001D64A4  2C 1C FF FF */	cmpwi r28, -1
/* 801D9548 001D64A8  41 82 00 70 */	beq lbl_801D95B8
/* 801D954C 001D64AC  88 1E 00 B8 */	lbz r0, 0xb8(r30)
/* 801D9550 001D64B0  39 20 00 01 */	li r9, 1
/* 801D9554 001D64B4  51 20 3E 30 */	rlwimi r0, r9, 7, 0x18, 0x18
/* 801D9558 001D64B8  C0 02 AC 98 */	lfs f0, lbl_805AC9B8@sda21(r2)
/* 801D955C 001D64BC  98 1E 00 B8 */	stb r0, 0xb8(r30)
/* 801D9560 001D64C0  38 C0 FF FF */	li r6, -1
/* 801D9564 001D64C4  38 00 00 00 */	li r0, 0
/* 801D9568 001D64C8  38 81 00 E8 */	addi r4, r1, 0xe8
/* 801D956C 001D64CC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801D9570 001D64D0  38 A0 00 00 */	li r5, 0
/* 801D9574 001D64D4  88 E3 02 20 */	lbz r7, 0x220(r3)
/* 801D9578 001D64D8  53 E7 36 72 */	rlwimi r7, r31, 6, 0x19, 0x19
/* 801D957C 001D64DC  98 E3 02 20 */	stb r7, 0x220(r3)
/* 801D9580 001D64E0  88 E3 02 20 */	lbz r7, 0x220(r3)
/* 801D9584 001D64E4  51 27 3E 30 */	rlwimi r7, r9, 7, 0x18, 0x18
/* 801D9588 001D64E8  98 E3 02 20 */	stb r7, 0x220(r3)
/* 801D958C 001D64EC  93 81 00 E8 */	stw r28, 0xe8(r1)
/* 801D9590 001D64F0  90 C1 00 EC */	stw r6, 0xec(r1)
/* 801D9594 001D64F4  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 801D9598 001D64F8  99 21 00 F4 */	stb r9, 0xf4(r1)
/* 801D959C 001D64FC  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 801D95A0 001D6500  90 01 00 FC */	stw r0, 0xfc(r1)
/* 801D95A4 001D6504  98 01 01 00 */	stb r0, 0x100(r1)
/* 801D95A8 001D6508  90 01 01 04 */	stw r0, 0x104(r1)
/* 801D95AC 001D650C  90 01 01 08 */	stw r0, 0x108(r1)
/* 801D95B0 001D6510  90 01 01 0C */	stw r0, 0x10c(r1)
/* 801D95B4 001D6514  4B E5 37 C9 */	bl SetAnimation__9CAnimDataFRC18CAnimPlaybackParmsb
lbl_801D95B8:
/* 801D95B8 001D6518  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 801D95BC 001D651C  E3 E1 02 18 */	psq_l f31, 536(r1), 0, qr0
/* 801D95C0 001D6520  CB E1 02 10 */	lfd f31, 0x210(r1)
/* 801D95C4 001D6524  BB 21 01 F4 */	lmw r25, 0x1f4(r1)
/* 801D95C8 001D6528  80 01 02 24 */	lwz r0, 0x224(r1)
/* 801D95CC 001D652C  7C 08 03 A6 */	mtlr r0
/* 801D95D0 001D6530  38 21 02 20 */	addi r1, r1, 0x220
/* 801D95D4 001D6534  4E 80 00 20 */	blr 

.global __dt__10CGunMotionFv
__dt__10CGunMotionFv:
/* 801D95D8 001D6538  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D95DC 001D653C  7C 08 02 A6 */	mflr r0
/* 801D95E0 001D6540  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D95E4 001D6544  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801D95E8 001D6548  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801D95EC 001D654C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801D95F0 001D6550  7C 9D 23 78 */	mr r29, r4
/* 801D95F4 001D6554  93 81 00 20 */	stw r28, 0x20(r1)
/* 801D95F8 001D6558  7C 7C 1B 79 */	or. r28, r3, r3
/* 801D95FC 001D655C  41 82 00 80 */	beq lbl_801D967C
/* 801D9600 001D6560  34 1C 00 A8 */	addic. r0, r28, 0xa8
/* 801D9604 001D6564  41 82 00 50 */	beq lbl_801D9654
/* 801D9608 001D6568  80 1C 00 AC */	lwz r0, 0xac(r28)
/* 801D960C 001D656C  83 DC 00 B4 */	lwz r30, 0xb4(r28)
/* 801D9610 001D6570  54 00 18 38 */	slwi r0, r0, 3
/* 801D9614 001D6574  7F FE 02 14 */	add r31, r30, r0
/* 801D9618 001D6578  93 C1 00 0C */	stw r30, 0xc(r1)
/* 801D961C 001D657C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801D9620 001D6580  93 E1 00 10 */	stw r31, 0x10(r1)
/* 801D9624 001D6584  93 C1 00 08 */	stw r30, 8(r1)
/* 801D9628 001D6588  48 00 00 14 */	b lbl_801D963C
lbl_801D962C:
/* 801D962C 001D658C  7F C3 F3 78 */	mr r3, r30
/* 801D9630 001D6590  38 80 FF FF */	li r4, -1
/* 801D9634 001D6594  48 16 78 0D */	bl __dt__6CTokenFv
/* 801D9638 001D6598  3B DE 00 08 */	addi r30, r30, 8
lbl_801D963C:
/* 801D963C 001D659C  7C 1E F8 40 */	cmplw r30, r31
/* 801D9640 001D65A0  40 82 FF EC */	bne lbl_801D962C
/* 801D9644 001D65A4  80 7C 00 B4 */	lwz r3, 0xb4(r28)
/* 801D9648 001D65A8  28 03 00 00 */	cmplwi r3, 0
/* 801D964C 001D65AC  41 82 00 08 */	beq lbl_801D9654
/* 801D9650 001D65B0  48 13 C2 E1 */	bl Free__7CMemoryFPCv
lbl_801D9654:
/* 801D9654 001D65B4  38 7C 00 4C */	addi r3, r28, 0x4c
/* 801D9658 001D65B8  38 80 FF FF */	li r4, -1
/* 801D965C 001D65BC  4B F4 44 C1 */	bl __dt__14CGunControllerFv
/* 801D9660 001D65C0  7F 83 E3 78 */	mr r3, r28
/* 801D9664 001D65C4  38 80 FF FF */	li r4, -1
/* 801D9668 001D65C8  4B F3 D3 E5 */	bl __dt__10CModelDataFv
/* 801D966C 001D65CC  7F A0 07 35 */	extsh. r0, r29
/* 801D9670 001D65D0  40 81 00 0C */	ble lbl_801D967C
/* 801D9674 001D65D4  7F 83 E3 78 */	mr r3, r28
/* 801D9678 001D65D8  48 13 C2 B9 */	bl Free__7CMemoryFPCv
lbl_801D967C:
/* 801D967C 001D65DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D9680 001D65E0  7F 83 E3 78 */	mr r3, r28
/* 801D9684 001D65E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801D9688 001D65E8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801D968C 001D65EC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801D9690 001D65F0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801D9694 001D65F4  7C 08 03 A6 */	mtlr r0
/* 801D9698 001D65F8  38 21 00 30 */	addi r1, r1, 0x30
/* 801D969C 001D65FC  4E 80 00 20 */	blr 

.global __ct__10CGunMotionFUiRC9CVector3f
__ct__10CGunMotionFUiRC9CVector3f:
/* 801D96A0 001D6600  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D96A4 001D6604  7C 08 02 A6 */	mflr r0
/* 801D96A8 001D6608  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D96AC 001D660C  38 00 00 00 */	li r0, 0
/* 801D96B0 001D6610  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801D96B4 001D6614  7C 7F 1B 78 */	mr r31, r3
/* 801D96B8 001D6618  C0 45 00 00 */	lfs f2, 0(r5)
/* 801D96BC 001D661C  C0 25 00 04 */	lfs f1, 4(r5)
/* 801D96C0 001D6620  C0 05 00 08 */	lfs f0, 8(r5)
/* 801D96C4 001D6624  90 81 00 08 */	stw r4, 8(r1)
/* 801D96C8 001D6628  38 81 00 08 */	addi r4, r1, 8
/* 801D96CC 001D662C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D96D0 001D6630  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801D96D4 001D6634  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801D96D8 001D6638  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801D96DC 001D663C  98 01 00 1C */	stb r0, 0x1c(r1)
/* 801D96E0 001D6640  90 01 00 20 */	stw r0, 0x20(r1)
/* 801D96E4 001D6644  4B F3 D4 71 */	bl __ct__10CModelDataFRC8CAnimRes
/* 801D96E8 001D6648  7F E4 FB 78 */	mr r4, r31
/* 801D96EC 001D664C  38 7F 00 4C */	addi r3, r31, 0x4c
/* 801D96F0 001D6650  4B FF 35 45 */	bl __ct__14CGunControllerFR10CModelData
/* 801D96F4 001D6654  38 80 00 00 */	li r4, 0
/* 801D96F8 001D6658  7F E3 FB 78 */	mr r3, r31
/* 801D96FC 001D665C  90 9F 00 AC */	stw r4, 0xac(r31)
/* 801D9700 001D6660  90 9F 00 B0 */	stw r4, 0xb0(r31)
/* 801D9704 001D6664  90 9F 00 B4 */	stw r4, 0xb4(r31)
/* 801D9708 001D6668  88 1F 00 B8 */	lbz r0, 0xb8(r31)
/* 801D970C 001D666C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801D9710 001D6670  98 1F 00 B8 */	stb r0, 0xb8(r31)
/* 801D9714 001D6674  4B FF F8 61 */	bl LoadAnimations__10CGunMotionFv
/* 801D9718 001D6678  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D971C 001D667C  7F E3 FB 78 */	mr r3, r31
/* 801D9720 001D6680  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801D9724 001D6684  7C 08 03 A6 */	mtlr r0
/* 801D9728 001D6688  38 21 00 30 */	addi r1, r1, 0x30
/* 801D972C 001D668C  4E 80 00 20 */	blr